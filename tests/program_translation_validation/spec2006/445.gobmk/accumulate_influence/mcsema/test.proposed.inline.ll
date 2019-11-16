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
%G_0xabf360_type = type <{ [4 x i8] }>
%G_0xabf9b0_type = type <{ [4 x i8] }>
%G_0xb9355__rip__type = type <{ [8 x i8] }>
%G_0xb9409__rip__type = type <{ [8 x i8] }>
%G_0xb969d__rip__type = type <{ [8 x i8] }>
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
@G_0xabf360 = global %G_0xabf360_type zeroinitializer
@G_0xabf9b0 = global %G_0xabf9b0_type zeroinitializer
@G_0xb9355__rip_ = global %G_0xb9355__rip__type zeroinitializer
@G_0xb9409__rip_ = global %G_0xb9409__rip__type zeroinitializer
@G_0xb969d__rip_ = global %G_0xb969d__rip__type zeroinitializer

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
define %struct.Memory* @accumulate_influence(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4296d0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4296d0, %struct.Memory** %MEMORY
  %loadMem_4296d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i47 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i47
  %27 = load i64, i64* %PC.i46
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i46
  store i64 %26, i64* %RBP.i48, align 8
  store %struct.Memory* %loadMem_4296d1, %struct.Memory** %MEMORY
  %loadMem_4296d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i151 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i151
  %36 = load i64, i64* %PC.i150
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i150
  %38 = sub i64 %35, 16
  store i64 %38, i64* %RSP.i151, align 8
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
  store %struct.Memory* %loadMem_4296d4, %struct.Memory** %MEMORY
  %loadMem_4296d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i163
  %77 = add i64 %76, 16
  %78 = load i64, i64* %PC.i161
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i161
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_4296d8, %struct.Memory** %MEMORY
  %loadMem_4296dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 21
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %87 to i32*
  %88 = bitcast i32* %R10D.i to i64*
  %89 = load i64, i64* %PC.i224
  %90 = add i64 %89, 6
  store i64 %90, i64* %PC.i224
  store i64 20, i64* %88, align 8
  store %struct.Memory* %loadMem_4296dc, %struct.Memory** %MEMORY
  %loadMem_4296e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 11
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %96 to i32*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i254
  %101 = sub i64 %100, 4
  %102 = load i32, i32* %EDI.i
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %PC.i253
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i253
  %106 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %106
  store %struct.Memory* %loadMem_4296e2, %struct.Memory** %MEMORY
  %loadMem_4296e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %ESI.i466 = bitcast %union.anon* %112 to i32*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i467
  %117 = sub i64 %116, 8
  %118 = load i32, i32* %ESI.i466
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %PC.i465
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC.i465
  %122 = inttoptr i64 %117 to i32*
  store i32 %118, i32* %122
  store %struct.Memory* %loadMem_4296e5, %struct.Memory** %MEMORY
  %loadMem_4296e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %EDX.i485 = bitcast %union.anon* %128 to i32*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RBP.i486
  %133 = sub i64 %132, 12
  %134 = load i32, i32* %EDX.i485
  %135 = zext i32 %134 to i64
  %136 = load i64, i64* %PC.i484
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC.i484
  %138 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %138
  store %struct.Memory* %loadMem_4296e8, %struct.Memory** %MEMORY
  %loadMem_4296eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %ECX.i579 = bitcast %union.anon* %144 to i32*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RBP.i580
  %149 = sub i64 %148, 16
  %150 = load i32, i32* %ECX.i579
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %PC.i578
  %153 = add i64 %152, 3
  store i64 %153, i64* %PC.i578
  %154 = inttoptr i64 %149 to i32*
  store i32 %150, i32* %154
  store %struct.Memory* %loadMem_4296eb, %struct.Memory** %MEMORY
  %loadMem_4296ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 15
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 17
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %R8.i = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RBP.i593
  %165 = sub i64 %164, 24
  %166 = load i64, i64* %R8.i
  %167 = load i64, i64* %PC.i592
  %168 = add i64 %167, 4
  store i64 %168, i64* %PC.i592
  %169 = inttoptr i64 %165 to i64*
  store i64 %166, i64* %169
  store %struct.Memory* %loadMem_4296ee, %struct.Memory** %MEMORY
  %loadMem_4296f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 15
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 19
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %R9.i = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %RBP.i658
  %180 = sub i64 %179, 32
  %181 = load i64, i64* %R9.i
  %182 = load i64, i64* %PC.i657
  %183 = add i64 %182, 4
  store i64 %183, i64* %PC.i657
  %184 = inttoptr i64 %180 to i64*
  store i64 %181, i64* %184
  store %struct.Memory* %loadMem_4296f2, %struct.Memory** %MEMORY
  %loadMem_4296f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 33
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %RAX.i767 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i768 = bitcast %union.anon* %193 to i64*
  %194 = load i64, i64* %RBP.i768
  %195 = sub i64 %194, 40
  %196 = load i64, i64* %RAX.i767
  %197 = load i64, i64* %PC.i766
  %198 = add i64 %197, 4
  store i64 %198, i64* %PC.i766
  %199 = inttoptr i64 %195 to i64*
  store i64 %196, i64* %199
  store %struct.Memory* %loadMem_4296f6, %struct.Memory** %MEMORY
  %loadMem_4296fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %RAX.i797 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 15
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %208 to i64*
  %209 = load i64, i64* %RBP.i798
  %210 = sub i64 %209, 4
  %211 = load i64, i64* %PC.i796
  %212 = add i64 %211, 3
  store i64 %212, i64* %PC.i796
  %213 = inttoptr i64 %210 to i32*
  %214 = load i32, i32* %213
  %215 = zext i32 %214 to i64
  store i64 %215, i64* %RAX.i797, align 8
  store %struct.Memory* %loadMem_4296fa, %struct.Memory** %MEMORY
  %loadMem_4296fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 33
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %218 to i64*
  %219 = load i64, i64* %PC.i853
  %220 = add i64 %219, 1
  store i64 %220, i64* %PC.i853
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %223 = bitcast %union.anon* %222 to i32*
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = lshr i64 %225, 32
  store i64 %226, i64* %221, align 8
  store %struct.Memory* %loadMem_4296fd, %struct.Memory** %MEMORY
  %loadMem_4296fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 21
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %R10D.i870 = bitcast %union.anon* %232 to i32*
  %233 = load i32, i32* %R10D.i870
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* %PC.i869
  %236 = add i64 %235, 3
  store i64 %236, i64* %PC.i869
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %238 = bitcast %union.anon* %237 to i32*
  %239 = load i32, i32* %238, align 8
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %242 = bitcast %union.anon* %241 to i32*
  %243 = load i32, i32* %242, align 8
  %244 = zext i32 %243 to i64
  %245 = shl i64 %234, 32
  %246 = ashr exact i64 %245, 32
  %247 = shl i64 %244, 32
  %248 = or i64 %247, %240
  %249 = sdiv i64 %248, %246
  %250 = shl i64 %249, 32
  %251 = ashr exact i64 %250, 32
  %252 = icmp eq i64 %249, %251
  br i1 %252, label %257, label %253

; <label>:253:                                    ; preds = %entry
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %255, %struct.Memory* %loadMem_4296fe)
  br label %routine_idivl__r10d.exit

; <label>:257:                                    ; preds = %entry
  %258 = srem i64 %248, %246
  %259 = getelementptr inbounds %union.anon, %union.anon* %237, i64 0, i32 0
  %260 = and i64 %249, 4294967295
  store i64 %260, i64* %259, align 8
  %261 = getelementptr inbounds %union.anon, %union.anon* %241, i64 0, i32 0
  %262 = and i64 %258, 4294967295
  store i64 %262, i64* %261, align 8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %263, align 1
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %264, align 1
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %265, align 1
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %266, align 1
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %267, align 1
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %268, align 1
  br label %routine_idivl__r10d.exit

routine_idivl__r10d.exit:                         ; preds = %253, %257
  %269 = phi %struct.Memory* [ %256, %253 ], [ %loadMem_4296fe, %257 ]
  store %struct.Memory* %269, %struct.Memory** %MEMORY
  %loadMem_429701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 33
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %272 to i64*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %RAX.i872 = bitcast %union.anon* %275 to i64*
  %276 = load i64, i64* %RAX.i872
  %277 = load i64, i64* %PC.i871
  %278 = add i64 %277, 3
  store i64 %278, i64* %PC.i871
  %279 = trunc i64 %276 to i32
  %280 = sub i32 %279, 1
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RAX.i872, align 8
  %282 = icmp ult i32 %279, 1
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %283, i8* %284, align 1
  %285 = and i32 %280, 255
  %286 = call i32 @llvm.ctpop.i32(i32 %285)
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %289, i8* %290, align 1
  %291 = xor i64 1, %276
  %292 = trunc i64 %291 to i32
  %293 = xor i32 %292, %280
  %294 = lshr i32 %293, 4
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %296, i8* %297, align 1
  %298 = icmp eq i32 %280, 0
  %299 = zext i1 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %299, i8* %300, align 1
  %301 = lshr i32 %280, 31
  %302 = trunc i32 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %302, i8* %303, align 1
  %304 = lshr i32 %279, 31
  %305 = xor i32 %301, %304
  %306 = add i32 %305, %304
  %307 = icmp eq i32 %306, 2
  %308 = zext i1 %307 to i8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %308, i8* %309, align 1
  store %struct.Memory* %loadMem_429701, %struct.Memory** %MEMORY
  %loadMem_429704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %EAX.i953 = bitcast %union.anon* %315 to i32*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 15
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %RBP.i954 = bitcast %union.anon* %318 to i64*
  %319 = load i64, i64* %RBP.i954
  %320 = sub i64 %319, 48
  %321 = load i32, i32* %EAX.i953
  %322 = zext i32 %321 to i64
  %323 = load i64, i64* %PC.i952
  %324 = add i64 %323, 3
  store i64 %324, i64* %PC.i952
  %325 = inttoptr i64 %320 to i32*
  store i32 %321, i32* %325
  store %struct.Memory* %loadMem_429704, %struct.Memory** %MEMORY
  %loadMem_429707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i956 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RAX.i957 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 15
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %RBP.i958 = bitcast %union.anon* %334 to i64*
  %335 = load i64, i64* %RBP.i958
  %336 = sub i64 %335, 4
  %337 = load i64, i64* %PC.i956
  %338 = add i64 %337, 3
  store i64 %338, i64* %PC.i956
  %339 = inttoptr i64 %336 to i32*
  %340 = load i32, i32* %339
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RAX.i957, align 8
  store %struct.Memory* %loadMem_429707, %struct.Memory** %MEMORY
  %loadMem_42970a = load %struct.Memory*, %struct.Memory** %MEMORY
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 33
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %344 to i64*
  %345 = load i64, i64* %PC.i955
  %346 = add i64 %345, 1
  store i64 %346, i64* %PC.i955
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %349 = bitcast %union.anon* %348 to i32*
  %350 = load i32, i32* %349, align 8
  %351 = sext i32 %350 to i64
  %352 = lshr i64 %351, 32
  store i64 %352, i64* %347, align 8
  store %struct.Memory* %loadMem_42970a, %struct.Memory** %MEMORY
  %loadMem_42970b = load %struct.Memory*, %struct.Memory** %MEMORY
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 33
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 21
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %R10D.i950 = bitcast %union.anon* %358 to i32*
  %359 = load i32, i32* %R10D.i950
  %360 = zext i32 %359 to i64
  %361 = load i64, i64* %PC.i949
  %362 = add i64 %361, 3
  store i64 %362, i64* %PC.i949
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %364 = bitcast %union.anon* %363 to i32*
  %365 = load i32, i32* %364, align 8
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %368 = bitcast %union.anon* %367 to i32*
  %369 = load i32, i32* %368, align 8
  %370 = zext i32 %369 to i64
  %371 = shl i64 %360, 32
  %372 = ashr exact i64 %371, 32
  %373 = shl i64 %370, 32
  %374 = or i64 %373, %366
  %375 = sdiv i64 %374, %372
  %376 = shl i64 %375, 32
  %377 = ashr exact i64 %376, 32
  %378 = icmp eq i64 %375, %377
  br i1 %378, label %383, label %379

; <label>:379:                                    ; preds = %routine_idivl__r10d.exit
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %381, %struct.Memory* %loadMem_42970b)
  br label %routine_idivl__r10d.exit951

; <label>:383:                                    ; preds = %routine_idivl__r10d.exit
  %384 = srem i64 %374, %372
  %385 = getelementptr inbounds %union.anon, %union.anon* %363, i64 0, i32 0
  %386 = and i64 %375, 4294967295
  store i64 %386, i64* %385, align 8
  %387 = getelementptr inbounds %union.anon, %union.anon* %367, i64 0, i32 0
  %388 = and i64 %384, 4294967295
  store i64 %388, i64* %387, align 8
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %389, align 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %390, align 1
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %391, align 1
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %392, align 1
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %393, align 1
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %394, align 1
  br label %routine_idivl__r10d.exit951

routine_idivl__r10d.exit951:                      ; preds = %379, %383
  %395 = phi %struct.Memory* [ %382, %379 ], [ %loadMem_42970b, %383 ]
  store %struct.Memory* %395, %struct.Memory** %MEMORY
  %loadMem_42970e = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 7
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RDX.i948 = bitcast %union.anon* %401 to i64*
  %402 = load i64, i64* %RDX.i948
  %403 = load i64, i64* %PC.i947
  %404 = add i64 %403, 3
  store i64 %404, i64* %PC.i947
  %405 = trunc i64 %402 to i32
  %406 = sub i32 %405, 1
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RDX.i948, align 8
  %408 = icmp ult i32 %405, 1
  %409 = zext i1 %408 to i8
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %409, i8* %410, align 1
  %411 = and i32 %406, 255
  %412 = call i32 @llvm.ctpop.i32(i32 %411)
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %415, i8* %416, align 1
  %417 = xor i64 1, %402
  %418 = trunc i64 %417 to i32
  %419 = xor i32 %418, %406
  %420 = lshr i32 %419, 4
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %422, i8* %423, align 1
  %424 = icmp eq i32 %406, 0
  %425 = zext i1 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %425, i8* %426, align 1
  %427 = lshr i32 %406, 31
  %428 = trunc i32 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %428, i8* %429, align 1
  %430 = lshr i32 %405, 31
  %431 = xor i32 %427, %430
  %432 = add i32 %431, %430
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %434, i8* %435, align 1
  store %struct.Memory* %loadMem_42970e, %struct.Memory** %MEMORY
  %loadMem_429711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 7
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %EDX.i945 = bitcast %union.anon* %441 to i32*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 15
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %RBP.i946 = bitcast %union.anon* %444 to i64*
  %445 = load i64, i64* %RBP.i946
  %446 = sub i64 %445, 52
  %447 = load i32, i32* %EDX.i945
  %448 = zext i32 %447 to i64
  %449 = load i64, i64* %PC.i944
  %450 = add i64 %449, 3
  store i64 %450, i64* %PC.i944
  %451 = inttoptr i64 %446 to i32*
  store i32 %447, i32* %451
  store %struct.Memory* %loadMem_429711, %struct.Memory** %MEMORY
  %loadMem_429714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 15
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %RBP.i943 = bitcast %union.anon* %457 to i64*
  %458 = load i64, i64* %RBP.i943
  %459 = sub i64 %458, 68
  %460 = load i64, i64* %PC.i942
  %461 = add i64 %460, 7
  store i64 %461, i64* %PC.i942
  %462 = inttoptr i64 %459 to i32*
  store i32 0, i32* %462
  store %struct.Memory* %loadMem_429714, %struct.Memory** %MEMORY
  %loadMem_42971b = load %struct.Memory*, %struct.Memory** %MEMORY
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 33
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %465 to i64*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 15
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RBP.i941 = bitcast %union.anon* %468 to i64*
  %469 = load i64, i64* %RBP.i941
  %470 = sub i64 %469, 72
  %471 = load i64, i64* %PC.i940
  %472 = add i64 %471, 7
  store i64 %472, i64* %PC.i940
  %473 = inttoptr i64 %470 to i32*
  store i32 1, i32* %473
  store %struct.Memory* %loadMem_42971b, %struct.Memory** %MEMORY
  %loadMem_429722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %476 to i64*
  %477 = load i64, i64* %PC.i939
  %478 = add i64 %477, 8
  store i64 %478, i64* %PC.i939
  %479 = load i32, i32* bitcast (%G_0xabf360_type* @G_0xabf360 to i32*)
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %480, align 1
  %481 = and i32 %479, 255
  %482 = call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %485, i8* %486, align 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %487, align 1
  %488 = icmp eq i32 %479, 0
  %489 = zext i1 %488 to i8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %489, i8* %490, align 1
  %491 = lshr i32 %479, 31
  %492 = trunc i32 %491 to i8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %492, i8* %493, align 1
  %494 = lshr i32 %479, 31
  %495 = xor i32 %491, %494
  %496 = add i32 %495, %494
  %497 = icmp eq i32 %496, 2
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %498, i8* %499, align 1
  store %struct.Memory* %loadMem_429722, %struct.Memory** %MEMORY
  %loadMem_42972a = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %502 to i64*
  %503 = load i64, i64* %PC.i938
  %504 = add i64 %503, 66
  %505 = load i64, i64* %PC.i938
  %506 = add i64 %505, 6
  %507 = load i64, i64* %PC.i938
  %508 = add i64 %507, 6
  store i64 %508, i64* %PC.i938
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %510 = load i8, i8* %509, align 1
  %511 = icmp eq i8 %510, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %BRANCH_TAKEN, align 1
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %514 = select i1 %511, i64 %504, i64 %506
  store i64 %514, i64* %513, align 8
  store %struct.Memory* %loadMem_42972a, %struct.Memory** %MEMORY
  %loadBr_42972a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42972a = icmp eq i8 %loadBr_42972a, 1
  br i1 %cmpBr_42972a, label %block_.L_42976c, label %block_429730

block_429730:                                     ; preds = %routine_idivl__r10d.exit951
  %loadMem_429730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 15
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RBP.i937 = bitcast %union.anon* %520 to i64*
  %521 = load i64, i64* %RBP.i937
  %522 = sub i64 %521, 44
  %523 = load i64, i64* %PC.i936
  %524 = add i64 %523, 7
  store i64 %524, i64* %PC.i936
  %525 = inttoptr i64 %522 to i32*
  store i32 0, i32* %525
  store %struct.Memory* %loadMem_429730, %struct.Memory** %MEMORY
  br label %block_.L_429737

block_.L_429737:                                  ; preds = %block_429744, %block_429730
  %loadMem_429737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 33
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 15
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RBP.i935 = bitcast %union.anon* %531 to i64*
  %532 = load i64, i64* %RBP.i935
  %533 = sub i64 %532, 44
  %534 = load i64, i64* %PC.i934
  %535 = add i64 %534, 7
  store i64 %535, i64* %PC.i934
  %536 = inttoptr i64 %533 to i32*
  %537 = load i32, i32* %536
  %538 = sub i32 %537, 400
  %539 = icmp ult i32 %537, 400
  %540 = zext i1 %539 to i8
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %540, i8* %541, align 1
  %542 = and i32 %538, 255
  %543 = call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %546, i8* %547, align 1
  %548 = xor i32 %537, 400
  %549 = xor i32 %548, %538
  %550 = lshr i32 %549, 4
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %552, i8* %553, align 1
  %554 = icmp eq i32 %538, 0
  %555 = zext i1 %554 to i8
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %555, i8* %556, align 1
  %557 = lshr i32 %538, 31
  %558 = trunc i32 %557 to i8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %558, i8* %559, align 1
  %560 = lshr i32 %537, 31
  %561 = xor i32 %557, %560
  %562 = add i32 %561, %560
  %563 = icmp eq i32 %562, 2
  %564 = zext i1 %563 to i8
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %564, i8* %565, align 1
  store %struct.Memory* %loadMem_429737, %struct.Memory** %MEMORY
  %loadMem_42973e = load %struct.Memory*, %struct.Memory** %MEMORY
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 33
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %PC.i933 = bitcast %union.anon* %568 to i64*
  %569 = load i64, i64* %PC.i933
  %570 = add i64 %569, 35
  %571 = load i64, i64* %PC.i933
  %572 = add i64 %571, 6
  %573 = load i64, i64* %PC.i933
  %574 = add i64 %573, 6
  store i64 %574, i64* %PC.i933
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %576 = load i8, i8* %575, align 1
  %577 = icmp ne i8 %576, 0
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %579 = load i8, i8* %578, align 1
  %580 = icmp ne i8 %579, 0
  %581 = xor i1 %577, %580
  %582 = xor i1 %581, true
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %BRANCH_TAKEN, align 1
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %585 = select i1 %581, i64 %572, i64 %570
  store i64 %585, i64* %584, align 8
  store %struct.Memory* %loadMem_42973e, %struct.Memory** %MEMORY
  %loadBr_42973e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42973e = icmp eq i8 %loadBr_42973e, 1
  br i1 %cmpBr_42973e, label %block_.L_429761, label %block_429744

block_429744:                                     ; preds = %block_.L_429737
  %loadMem_429744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 33
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 1
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RAX.i931 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 15
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RBP.i932 = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %RBP.i932
  %596 = sub i64 %595, 44
  %597 = load i64, i64* %PC.i930
  %598 = add i64 %597, 4
  store i64 %598, i64* %PC.i930
  %599 = inttoptr i64 %596 to i32*
  %600 = load i32, i32* %599
  %601 = sext i32 %600 to i64
  store i64 %601, i64* %RAX.i931, align 8
  store %struct.Memory* %loadMem_429744, %struct.Memory** %MEMORY
  %loadMem_429748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 33
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 1
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RAX.i929 = bitcast %union.anon* %607 to i64*
  %608 = load i64, i64* %RAX.i929
  %609 = mul i64 %608, 4
  %610 = add i64 %609, 11268976
  %611 = load i64, i64* %PC.i928
  %612 = add i64 %611, 11
  store i64 %612, i64* %PC.i928
  %613 = inttoptr i64 %610 to i32*
  store i32 0, i32* %613
  store %struct.Memory* %loadMem_429748, %struct.Memory** %MEMORY
  %loadMem_429753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 33
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 1
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RAX.i926 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 15
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %RBP.i927 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %RBP.i927
  %624 = sub i64 %623, 44
  %625 = load i64, i64* %PC.i925
  %626 = add i64 %625, 3
  store i64 %626, i64* %PC.i925
  %627 = inttoptr i64 %624 to i32*
  %628 = load i32, i32* %627
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RAX.i926, align 8
  store %struct.Memory* %loadMem_429753, %struct.Memory** %MEMORY
  %loadMem_429756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 33
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %PC.i923 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 1
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RAX.i924 = bitcast %union.anon* %635 to i64*
  %636 = load i64, i64* %RAX.i924
  %637 = load i64, i64* %PC.i923
  %638 = add i64 %637, 3
  store i64 %638, i64* %PC.i923
  %639 = trunc i64 %636 to i32
  %640 = add i32 1, %639
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RAX.i924, align 8
  %642 = icmp ult i32 %640, %639
  %643 = icmp ult i32 %640, 1
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %645, i8* %646, align 1
  %647 = and i32 %640, 255
  %648 = call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %651, i8* %652, align 1
  %653 = xor i64 1, %636
  %654 = trunc i64 %653 to i32
  %655 = xor i32 %654, %640
  %656 = lshr i32 %655, 4
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %658, i8* %659, align 1
  %660 = icmp eq i32 %640, 0
  %661 = zext i1 %660 to i8
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %661, i8* %662, align 1
  %663 = lshr i32 %640, 31
  %664 = trunc i32 %663 to i8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %664, i8* %665, align 1
  %666 = lshr i32 %639, 31
  %667 = xor i32 %663, %666
  %668 = add i32 %667, %663
  %669 = icmp eq i32 %668, 2
  %670 = zext i1 %669 to i8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %670, i8* %671, align 1
  store %struct.Memory* %loadMem_429756, %struct.Memory** %MEMORY
  %loadMem_429759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i920 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 1
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %EAX.i921 = bitcast %union.anon* %677 to i32*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 15
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RBP.i922 = bitcast %union.anon* %680 to i64*
  %681 = load i64, i64* %RBP.i922
  %682 = sub i64 %681, 44
  %683 = load i32, i32* %EAX.i921
  %684 = zext i32 %683 to i64
  %685 = load i64, i64* %PC.i920
  %686 = add i64 %685, 3
  store i64 %686, i64* %PC.i920
  %687 = inttoptr i64 %682 to i32*
  store i32 %683, i32* %687
  store %struct.Memory* %loadMem_429759, %struct.Memory** %MEMORY
  %loadMem_42975c = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %690 to i64*
  %691 = load i64, i64* %PC.i919
  %692 = add i64 %691, -37
  %693 = load i64, i64* %PC.i919
  %694 = add i64 %693, 5
  store i64 %694, i64* %PC.i919
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %692, i64* %695, align 8
  store %struct.Memory* %loadMem_42975c, %struct.Memory** %MEMORY
  br label %block_.L_429737

block_.L_429761:                                  ; preds = %block_.L_429737
  %loadMem_429761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 33
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %698 to i64*
  %699 = load i64, i64* %PC.i918
  %700 = add i64 %699, 11
  store i64 %700, i64* %PC.i918
  store i32 1, i32* bitcast (%G_0xabf360_type* @G_0xabf360 to i32*)
  store %struct.Memory* %loadMem_429761, %struct.Memory** %MEMORY
  br label %block_.L_42976c

block_.L_42976c:                                  ; preds = %block_.L_429761, %routine_idivl__r10d.exit951
  %loadMem_42976c = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 1
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RAX.i916 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 15
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %RBP.i917 = bitcast %union.anon* %709 to i64*
  %710 = load i64, i64* %RBP.i917
  %711 = sub i64 %710, 4
  %712 = load i64, i64* %PC.i915
  %713 = add i64 %712, 3
  store i64 %713, i64* %PC.i915
  %714 = inttoptr i64 %711 to i32*
  %715 = load i32, i32* %714
  %716 = zext i32 %715 to i64
  store i64 %716, i64* %RAX.i916, align 8
  store %struct.Memory* %loadMem_42976c, %struct.Memory** %MEMORY
  %loadMem_42976f = load %struct.Memory*, %struct.Memory** %MEMORY
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 33
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %EAX.i914 = bitcast %union.anon* %722 to i32*
  %723 = load i32, i32* %EAX.i914
  %724 = zext i32 %723 to i64
  %725 = load i64, i64* %PC.i913
  %726 = add i64 %725, 7
  store i64 %726, i64* %PC.i913
  store i32 %723, i32* bitcast (%G_0xabf9b0_type* @G_0xabf9b0 to i32*)
  store %struct.Memory* %loadMem_42976f, %struct.Memory** %MEMORY
  %loadMem_429776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 33
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 1
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RAX.i911 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 15
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %RBP.i912 = bitcast %union.anon* %735 to i64*
  %736 = load i64, i64* %RBP.i912
  %737 = sub i64 %736, 8
  %738 = load i64, i64* %PC.i910
  %739 = add i64 %738, 3
  store i64 %739, i64* %PC.i910
  %740 = inttoptr i64 %737 to i32*
  %741 = load i32, i32* %740
  %742 = zext i32 %741 to i64
  store i64 %742, i64* %RAX.i911, align 8
  store %struct.Memory* %loadMem_429776, %struct.Memory** %MEMORY
  %loadMem_429779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 5
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RCX.i908 = bitcast %union.anon* %748 to i64*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 15
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %RBP.i909 = bitcast %union.anon* %751 to i64*
  %752 = load i64, i64* %RBP.i909
  %753 = sub i64 %752, 4
  %754 = load i64, i64* %PC.i907
  %755 = add i64 %754, 4
  store i64 %755, i64* %PC.i907
  %756 = inttoptr i64 %753 to i32*
  %757 = load i32, i32* %756
  %758 = sext i32 %757 to i64
  store i64 %758, i64* %RCX.i908, align 8
  store %struct.Memory* %loadMem_429779, %struct.Memory** %MEMORY
  %loadMem_42977d = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 1
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %EAX.i905 = bitcast %union.anon* %764 to i32*
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 5
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %RCX.i906 = bitcast %union.anon* %767 to i64*
  %768 = load i64, i64* %RCX.i906
  %769 = mul i64 %768, 4
  %770 = add i64 %769, 11268976
  %771 = load i32, i32* %EAX.i905
  %772 = zext i32 %771 to i64
  %773 = load i64, i64* %PC.i904
  %774 = add i64 %773, 7
  store i64 %774, i64* %PC.i904
  %775 = inttoptr i64 %770 to i32*
  store i32 %771, i32* %775
  store %struct.Memory* %loadMem_42977d, %struct.Memory** %MEMORY
  br label %block_.L_429784

block_.L_429784:                                  ; preds = %block_.L_429c73, %block_4297e4, %block_.L_42976c
  %loadMem_429784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 33
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %778 to i64*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 1
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %RAX.i902 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 15
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RBP.i903 = bitcast %union.anon* %784 to i64*
  %785 = load i64, i64* %RBP.i903
  %786 = sub i64 %785, 68
  %787 = load i64, i64* %PC.i901
  %788 = add i64 %787, 3
  store i64 %788, i64* %PC.i901
  %789 = inttoptr i64 %786 to i32*
  %790 = load i32, i32* %789
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RAX.i902, align 8
  store %struct.Memory* %loadMem_429784, %struct.Memory** %MEMORY
  %loadMem_429787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 1
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %EAX.i899 = bitcast %union.anon* %797 to i32*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 15
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RBP.i900 = bitcast %union.anon* %800 to i64*
  %801 = load i32, i32* %EAX.i899
  %802 = zext i32 %801 to i64
  %803 = load i64, i64* %RBP.i900
  %804 = sub i64 %803, 72
  %805 = load i64, i64* %PC.i898
  %806 = add i64 %805, 3
  store i64 %806, i64* %PC.i898
  %807 = inttoptr i64 %804 to i32*
  %808 = load i32, i32* %807
  %809 = sub i32 %801, %808
  %810 = icmp ult i32 %801, %808
  %811 = zext i1 %810 to i8
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %811, i8* %812, align 1
  %813 = and i32 %809, 255
  %814 = call i32 @llvm.ctpop.i32(i32 %813)
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %817, i8* %818, align 1
  %819 = xor i32 %808, %801
  %820 = xor i32 %819, %809
  %821 = lshr i32 %820, 4
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %823, i8* %824, align 1
  %825 = icmp eq i32 %809, 0
  %826 = zext i1 %825 to i8
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %826, i8* %827, align 1
  %828 = lshr i32 %809, 31
  %829 = trunc i32 %828 to i8
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %829, i8* %830, align 1
  %831 = lshr i32 %801, 31
  %832 = lshr i32 %808, 31
  %833 = xor i32 %832, %831
  %834 = xor i32 %828, %831
  %835 = add i32 %834, %833
  %836 = icmp eq i32 %835, 2
  %837 = zext i1 %836 to i8
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %837, i8* %838, align 1
  store %struct.Memory* %loadMem_429787, %struct.Memory** %MEMORY
  %loadMem_42978a = load %struct.Memory*, %struct.Memory** %MEMORY
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 33
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %841 to i64*
  %842 = load i64, i64* %PC.i897
  %843 = add i64 %842, 1262
  %844 = load i64, i64* %PC.i897
  %845 = add i64 %844, 6
  %846 = load i64, i64* %PC.i897
  %847 = add i64 %846, 6
  store i64 %847, i64* %PC.i897
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %849 = load i8, i8* %848, align 1
  %850 = icmp ne i8 %849, 0
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %852 = load i8, i8* %851, align 1
  %853 = icmp ne i8 %852, 0
  %854 = xor i1 %850, %853
  %855 = xor i1 %854, true
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %BRANCH_TAKEN, align 1
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %858 = select i1 %854, i64 %845, i64 %843
  store i64 %858, i64* %857, align 8
  store %struct.Memory* %loadMem_42978a, %struct.Memory** %MEMORY
  %loadBr_42978a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42978a = icmp eq i8 %loadBr_42978a, 1
  br i1 %cmpBr_42978a, label %block_.L_429c78, label %block_429790

block_429790:                                     ; preds = %block_.L_429784
  %loadMem_429790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 33
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 1
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RAX.i896 = bitcast %union.anon* %864 to i64*
  %865 = load i64, i64* %PC.i895
  %866 = add i64 %865, 5
  store i64 %866, i64* %PC.i895
  store i64 20, i64* %RAX.i896, align 8
  store %struct.Memory* %loadMem_429790, %struct.Memory** %MEMORY
  %loadMem_429795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 5
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RCX.i893 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 15
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RBP.i894 = bitcast %union.anon* %875 to i64*
  %876 = load i64, i64* %RBP.i894
  %877 = sub i64 %876, 68
  %878 = load i64, i64* %PC.i892
  %879 = add i64 %878, 4
  store i64 %879, i64* %PC.i892
  %880 = inttoptr i64 %877 to i32*
  %881 = load i32, i32* %880
  %882 = sext i32 %881 to i64
  store i64 %882, i64* %RCX.i893, align 8
  store %struct.Memory* %loadMem_429795, %struct.Memory** %MEMORY
  %loadMem_429799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 5
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %RCX.i890 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 7
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RDX.i891 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RCX.i890
  %893 = mul i64 %892, 4
  %894 = add i64 %893, 11270576
  %895 = load i64, i64* %PC.i889
  %896 = add i64 %895, 7
  store i64 %896, i64* %PC.i889
  %897 = inttoptr i64 %894 to i32*
  %898 = load i32, i32* %897
  %899 = zext i32 %898 to i64
  store i64 %899, i64* %RDX.i891, align 8
  store %struct.Memory* %loadMem_429799, %struct.Memory** %MEMORY
  %loadMem_4297a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 7
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %EDX.i887 = bitcast %union.anon* %905 to i32*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 15
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %RBP.i888 = bitcast %union.anon* %908 to i64*
  %909 = load i64, i64* %RBP.i888
  %910 = sub i64 %909, 44
  %911 = load i32, i32* %EDX.i887
  %912 = zext i32 %911 to i64
  %913 = load i64, i64* %PC.i886
  %914 = add i64 %913, 3
  store i64 %914, i64* %PC.i886
  %915 = inttoptr i64 %910 to i32*
  store i32 %911, i32* %915
  store %struct.Memory* %loadMem_4297a0, %struct.Memory** %MEMORY
  %loadMem_4297a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 7
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RDX.i884 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 15
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RBP.i885 = bitcast %union.anon* %924 to i64*
  %925 = load i64, i64* %RBP.i885
  %926 = sub i64 %925, 44
  %927 = load i64, i64* %PC.i883
  %928 = add i64 %927, 3
  store i64 %928, i64* %PC.i883
  %929 = inttoptr i64 %926 to i32*
  %930 = load i32, i32* %929
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RDX.i884, align 8
  store %struct.Memory* %loadMem_4297a3, %struct.Memory** %MEMORY
  %loadMem_4297a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 33
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %934 to i64*
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 1
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %EAX.i881 = bitcast %union.anon* %937 to i32*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 15
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %RBP.i882 = bitcast %union.anon* %940 to i64*
  %941 = load i64, i64* %RBP.i882
  %942 = sub i64 %941, 112
  %943 = load i32, i32* %EAX.i881
  %944 = zext i32 %943 to i64
  %945 = load i64, i64* %PC.i880
  %946 = add i64 %945, 3
  store i64 %946, i64* %PC.i880
  %947 = inttoptr i64 %942 to i32*
  store i32 %943, i32* %947
  store %struct.Memory* %loadMem_4297a6, %struct.Memory** %MEMORY
  %loadMem_4297a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 33
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 7
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %EDX.i878 = bitcast %union.anon* %953 to i32*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 1
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RAX.i879 = bitcast %union.anon* %956 to i64*
  %957 = load i32, i32* %EDX.i878
  %958 = zext i32 %957 to i64
  %959 = load i64, i64* %PC.i877
  %960 = add i64 %959, 2
  store i64 %960, i64* %PC.i877
  %961 = and i64 %958, 4294967295
  store i64 %961, i64* %RAX.i879, align 8
  store %struct.Memory* %loadMem_4297a9, %struct.Memory** %MEMORY
  %loadMem_4297ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 33
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %964 to i64*
  %965 = load i64, i64* %PC.i876
  %966 = add i64 %965, 1
  store i64 %966, i64* %PC.i876
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %969 = bitcast %union.anon* %968 to i32*
  %970 = load i32, i32* %969, align 8
  %971 = sext i32 %970 to i64
  %972 = lshr i64 %971, 32
  store i64 %972, i64* %967, align 8
  store %struct.Memory* %loadMem_4297ab, %struct.Memory** %MEMORY
  %loadMem_4297ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 33
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %975 to i64*
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 9
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %RSI.i874 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 15
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RBP.i875 = bitcast %union.anon* %981 to i64*
  %982 = load i64, i64* %RBP.i875
  %983 = sub i64 %982, 112
  %984 = load i64, i64* %PC.i873
  %985 = add i64 %984, 3
  store i64 %985, i64* %PC.i873
  %986 = inttoptr i64 %983 to i32*
  %987 = load i32, i32* %986
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RSI.i874, align 8
  store %struct.Memory* %loadMem_4297ac, %struct.Memory** %MEMORY
  %loadMem_4297af = load %struct.Memory*, %struct.Memory** %MEMORY
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 33
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 9
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %ESI.i867 = bitcast %union.anon* %994 to i32*
  %995 = load i32, i32* %ESI.i867
  %996 = zext i32 %995 to i64
  %997 = load i64, i64* %PC.i866
  %998 = add i64 %997, 2
  store i64 %998, i64* %PC.i866
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1000 = bitcast %union.anon* %999 to i32*
  %1001 = load i32, i32* %1000, align 8
  %1002 = zext i32 %1001 to i64
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1004 = bitcast %union.anon* %1003 to i32*
  %1005 = load i32, i32* %1004, align 8
  %1006 = zext i32 %1005 to i64
  %1007 = shl i64 %996, 32
  %1008 = ashr exact i64 %1007, 32
  %1009 = shl i64 %1006, 32
  %1010 = or i64 %1009, %1002
  %1011 = sdiv i64 %1010, %1008
  %1012 = shl i64 %1011, 32
  %1013 = ashr exact i64 %1012, 32
  %1014 = icmp eq i64 %1011, %1013
  br i1 %1014, label %1019, label %1015

; <label>:1015:                                   ; preds = %block_429790
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1017 = load i64, i64* %1016, align 8
  %1018 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1017, %struct.Memory* %loadMem_4297af)
  br label %routine_idivl__esi.exit868

; <label>:1019:                                   ; preds = %block_429790
  %1020 = srem i64 %1010, %1008
  %1021 = getelementptr inbounds %union.anon, %union.anon* %999, i64 0, i32 0
  %1022 = and i64 %1011, 4294967295
  store i64 %1022, i64* %1021, align 8
  %1023 = getelementptr inbounds %union.anon, %union.anon* %1003, i64 0, i32 0
  %1024 = and i64 %1020, 4294967295
  store i64 %1024, i64* %1023, align 8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1025, align 1
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1026, align 1
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1027, align 1
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1028, align 1
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1029, align 1
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1030, align 1
  br label %routine_idivl__esi.exit868

routine_idivl__esi.exit868:                       ; preds = %1015, %1019
  %1031 = phi %struct.Memory* [ %1018, %1015 ], [ %loadMem_4297af, %1019 ]
  store %struct.Memory* %1031, %struct.Memory** %MEMORY
  %loadMem_4297b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 33
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 1
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %RAX.i865 = bitcast %union.anon* %1037 to i64*
  %1038 = load i64, i64* %RAX.i865
  %1039 = load i64, i64* %PC.i864
  %1040 = add i64 %1039, 3
  store i64 %1040, i64* %PC.i864
  %1041 = trunc i64 %1038 to i32
  %1042 = sub i32 %1041, 1
  %1043 = zext i32 %1042 to i64
  store i64 %1043, i64* %RAX.i865, align 8
  %1044 = icmp ult i32 %1041, 1
  %1045 = zext i1 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1045, i8* %1046, align 1
  %1047 = and i32 %1042, 255
  %1048 = call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1051, i8* %1052, align 1
  %1053 = xor i64 1, %1038
  %1054 = trunc i64 %1053 to i32
  %1055 = xor i32 %1054, %1042
  %1056 = lshr i32 %1055, 4
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1058, i8* %1059, align 1
  %1060 = icmp eq i32 %1042, 0
  %1061 = zext i1 %1060 to i8
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1061, i8* %1062, align 1
  %1063 = lshr i32 %1042, 31
  %1064 = trunc i32 %1063 to i8
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1064, i8* %1065, align 1
  %1066 = lshr i32 %1041, 31
  %1067 = xor i32 %1063, %1066
  %1068 = add i32 %1067, %1066
  %1069 = icmp eq i32 %1068, 2
  %1070 = zext i1 %1069 to i8
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1070, i8* %1071, align 1
  store %struct.Memory* %loadMem_4297b1, %struct.Memory** %MEMORY
  %loadMem_4297b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 1
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 15
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RBP.i863 = bitcast %union.anon* %1080 to i64*
  %1081 = load i64, i64* %RAX.i862
  %1082 = load i64, i64* %RBP.i863
  %1083 = sub i64 %1082, 48
  %1084 = load i64, i64* %PC.i861
  %1085 = add i64 %1084, 3
  store i64 %1085, i64* %PC.i861
  %1086 = trunc i64 %1081 to i32
  %1087 = inttoptr i64 %1083 to i32*
  %1088 = load i32, i32* %1087
  %1089 = sub i32 %1086, %1088
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RAX.i862, align 8
  %1091 = icmp ult i32 %1086, %1088
  %1092 = zext i1 %1091 to i8
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1092, i8* %1093, align 1
  %1094 = and i32 %1089, 255
  %1095 = call i32 @llvm.ctpop.i32(i32 %1094)
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1098, i8* %1099, align 1
  %1100 = xor i32 %1088, %1086
  %1101 = xor i32 %1100, %1089
  %1102 = lshr i32 %1101, 4
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1104, i8* %1105, align 1
  %1106 = icmp eq i32 %1089, 0
  %1107 = zext i1 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1107, i8* %1108, align 1
  %1109 = lshr i32 %1089, 31
  %1110 = trunc i32 %1109 to i8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1110, i8* %1111, align 1
  %1112 = lshr i32 %1086, 31
  %1113 = lshr i32 %1088, 31
  %1114 = xor i32 %1113, %1112
  %1115 = xor i32 %1109, %1112
  %1116 = add i32 %1115, %1114
  %1117 = icmp eq i32 %1116, 2
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1118, i8* %1119, align 1
  store %struct.Memory* %loadMem_4297b4, %struct.Memory** %MEMORY
  %loadMem_4297b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 1
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %EAX.i859 = bitcast %union.anon* %1125 to i32*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 15
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %1128 to i64*
  %1129 = load i64, i64* %RBP.i860
  %1130 = sub i64 %1129, 80
  %1131 = load i32, i32* %EAX.i859
  %1132 = zext i32 %1131 to i64
  %1133 = load i64, i64* %PC.i858
  %1134 = add i64 %1133, 3
  store i64 %1134, i64* %PC.i858
  %1135 = inttoptr i64 %1130 to i32*
  store i32 %1131, i32* %1135
  store %struct.Memory* %loadMem_4297b7, %struct.Memory** %MEMORY
  %loadMem_4297ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 1
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RAX.i856 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 15
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %RBP.i857
  %1146 = sub i64 %1145, 44
  %1147 = load i64, i64* %PC.i855
  %1148 = add i64 %1147, 3
  store i64 %1148, i64* %PC.i855
  %1149 = inttoptr i64 %1146 to i32*
  %1150 = load i32, i32* %1149
  %1151 = zext i32 %1150 to i64
  store i64 %1151, i64* %RAX.i856, align 8
  store %struct.Memory* %loadMem_4297ba, %struct.Memory** %MEMORY
  %loadMem_4297bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %1154 to i64*
  %1155 = load i64, i64* %PC.i854
  %1156 = add i64 %1155, 1
  store i64 %1156, i64* %PC.i854
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1159 = bitcast %union.anon* %1158 to i32*
  %1160 = load i32, i32* %1159, align 8
  %1161 = sext i32 %1160 to i64
  %1162 = lshr i64 %1161, 32
  store i64 %1162, i64* %1157, align 8
  store %struct.Memory* %loadMem_4297bd, %struct.Memory** %MEMORY
  %loadMem_4297be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 9
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %ESI.i851 = bitcast %union.anon* %1168 to i32*
  %1169 = load i32, i32* %ESI.i851
  %1170 = zext i32 %1169 to i64
  %1171 = load i64, i64* %PC.i850
  %1172 = add i64 %1171, 2
  store i64 %1172, i64* %PC.i850
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1174 = bitcast %union.anon* %1173 to i32*
  %1175 = load i32, i32* %1174, align 8
  %1176 = zext i32 %1175 to i64
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1178 = bitcast %union.anon* %1177 to i32*
  %1179 = load i32, i32* %1178, align 8
  %1180 = zext i32 %1179 to i64
  %1181 = shl i64 %1170, 32
  %1182 = ashr exact i64 %1181, 32
  %1183 = shl i64 %1180, 32
  %1184 = or i64 %1183, %1176
  %1185 = sdiv i64 %1184, %1182
  %1186 = shl i64 %1185, 32
  %1187 = ashr exact i64 %1186, 32
  %1188 = icmp eq i64 %1185, %1187
  br i1 %1188, label %1193, label %1189

; <label>:1189:                                   ; preds = %routine_idivl__esi.exit868
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1191 = load i64, i64* %1190, align 8
  %1192 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1191, %struct.Memory* %loadMem_4297be)
  br label %routine_idivl__esi.exit852

; <label>:1193:                                   ; preds = %routine_idivl__esi.exit868
  %1194 = srem i64 %1184, %1182
  %1195 = getelementptr inbounds %union.anon, %union.anon* %1173, i64 0, i32 0
  %1196 = and i64 %1185, 4294967295
  store i64 %1196, i64* %1195, align 8
  %1197 = getelementptr inbounds %union.anon, %union.anon* %1177, i64 0, i32 0
  %1198 = and i64 %1194, 4294967295
  store i64 %1198, i64* %1197, align 8
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1199, align 1
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1200, align 1
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1201, align 1
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1202, align 1
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1203, align 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1204, align 1
  br label %routine_idivl__esi.exit852

routine_idivl__esi.exit852:                       ; preds = %1189, %1193
  %1205 = phi %struct.Memory* [ %1192, %1189 ], [ %loadMem_4297be, %1193 ]
  store %struct.Memory* %1205, %struct.Memory** %MEMORY
  %loadMem_4297c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 7
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %RDX.i849 = bitcast %union.anon* %1211 to i64*
  %1212 = load i64, i64* %RDX.i849
  %1213 = load i64, i64* %PC.i848
  %1214 = add i64 %1213, 3
  store i64 %1214, i64* %PC.i848
  %1215 = trunc i64 %1212 to i32
  %1216 = sub i32 %1215, 1
  %1217 = zext i32 %1216 to i64
  store i64 %1217, i64* %RDX.i849, align 8
  %1218 = icmp ult i32 %1215, 1
  %1219 = zext i1 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1219, i8* %1220, align 1
  %1221 = and i32 %1216, 255
  %1222 = call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1225, i8* %1226, align 1
  %1227 = xor i64 1, %1212
  %1228 = trunc i64 %1227 to i32
  %1229 = xor i32 %1228, %1216
  %1230 = lshr i32 %1229, 4
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1232, i8* %1233, align 1
  %1234 = icmp eq i32 %1216, 0
  %1235 = zext i1 %1234 to i8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1235, i8* %1236, align 1
  %1237 = lshr i32 %1216, 31
  %1238 = trunc i32 %1237 to i8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1238, i8* %1239, align 1
  %1240 = lshr i32 %1215, 31
  %1241 = xor i32 %1237, %1240
  %1242 = add i32 %1241, %1240
  %1243 = icmp eq i32 %1242, 2
  %1244 = zext i1 %1243 to i8
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1244, i8* %1245, align 1
  store %struct.Memory* %loadMem_4297c0, %struct.Memory** %MEMORY
  %loadMem_4297c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 7
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RDX.i846 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 15
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %RDX.i846
  %1256 = load i64, i64* %RBP.i847
  %1257 = sub i64 %1256, 52
  %1258 = load i64, i64* %PC.i845
  %1259 = add i64 %1258, 3
  store i64 %1259, i64* %PC.i845
  %1260 = trunc i64 %1255 to i32
  %1261 = inttoptr i64 %1257 to i32*
  %1262 = load i32, i32* %1261
  %1263 = sub i32 %1260, %1262
  %1264 = zext i32 %1263 to i64
  store i64 %1264, i64* %RDX.i846, align 8
  %1265 = icmp ult i32 %1260, %1262
  %1266 = zext i1 %1265 to i8
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1266, i8* %1267, align 1
  %1268 = and i32 %1263, 255
  %1269 = call i32 @llvm.ctpop.i32(i32 %1268)
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = xor i8 %1271, 1
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1272, i8* %1273, align 1
  %1274 = xor i32 %1262, %1260
  %1275 = xor i32 %1274, %1263
  %1276 = lshr i32 %1275, 4
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1278, i8* %1279, align 1
  %1280 = icmp eq i32 %1263, 0
  %1281 = zext i1 %1280 to i8
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1281, i8* %1282, align 1
  %1283 = lshr i32 %1263, 31
  %1284 = trunc i32 %1283 to i8
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1284, i8* %1285, align 1
  %1286 = lshr i32 %1260, 31
  %1287 = lshr i32 %1262, 31
  %1288 = xor i32 %1287, %1286
  %1289 = xor i32 %1283, %1286
  %1290 = add i32 %1289, %1288
  %1291 = icmp eq i32 %1290, 2
  %1292 = zext i1 %1291 to i8
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1292, i8* %1293, align 1
  store %struct.Memory* %loadMem_4297c3, %struct.Memory** %MEMORY
  %loadMem_4297c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 7
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %EDX.i843 = bitcast %union.anon* %1299 to i32*
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 15
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %RBP.i844 = bitcast %union.anon* %1302 to i64*
  %1303 = load i64, i64* %RBP.i844
  %1304 = sub i64 %1303, 84
  %1305 = load i32, i32* %EDX.i843
  %1306 = zext i32 %1305 to i64
  %1307 = load i64, i64* %PC.i842
  %1308 = add i64 %1307, 3
  store i64 %1308, i64* %PC.i842
  %1309 = inttoptr i64 %1304 to i32*
  store i32 %1305, i32* %1309
  store %struct.Memory* %loadMem_4297c6, %struct.Memory** %MEMORY
  %loadMem_4297c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 7
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %RDX.i840 = bitcast %union.anon* %1315 to i64*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 15
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %1318 to i64*
  %1319 = load i64, i64* %RBP.i841
  %1320 = sub i64 %1319, 68
  %1321 = load i64, i64* %PC.i839
  %1322 = add i64 %1321, 3
  store i64 %1322, i64* %PC.i839
  %1323 = inttoptr i64 %1320 to i32*
  %1324 = load i32, i32* %1323
  %1325 = zext i32 %1324 to i64
  store i64 %1325, i64* %RDX.i840, align 8
  store %struct.Memory* %loadMem_4297c9, %struct.Memory** %MEMORY
  %loadMem_4297cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 33
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %1328 to i64*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 7
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %RDX.i838 = bitcast %union.anon* %1331 to i64*
  %1332 = load i64, i64* %RDX.i838
  %1333 = load i64, i64* %PC.i837
  %1334 = add i64 %1333, 3
  store i64 %1334, i64* %PC.i837
  %1335 = trunc i64 %1332 to i32
  %1336 = add i32 1, %1335
  %1337 = zext i32 %1336 to i64
  store i64 %1337, i64* %RDX.i838, align 8
  %1338 = icmp ult i32 %1336, %1335
  %1339 = icmp ult i32 %1336, 1
  %1340 = or i1 %1338, %1339
  %1341 = zext i1 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1341, i8* %1342, align 1
  %1343 = and i32 %1336, 255
  %1344 = call i32 @llvm.ctpop.i32(i32 %1343)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1347, i8* %1348, align 1
  %1349 = xor i64 1, %1332
  %1350 = trunc i64 %1349 to i32
  %1351 = xor i32 %1350, %1336
  %1352 = lshr i32 %1351, 4
  %1353 = trunc i32 %1352 to i8
  %1354 = and i8 %1353, 1
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1354, i8* %1355, align 1
  %1356 = icmp eq i32 %1336, 0
  %1357 = zext i1 %1356 to i8
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1357, i8* %1358, align 1
  %1359 = lshr i32 %1336, 31
  %1360 = trunc i32 %1359 to i8
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1360, i8* %1361, align 1
  %1362 = lshr i32 %1335, 31
  %1363 = xor i32 %1359, %1362
  %1364 = add i32 %1363, %1359
  %1365 = icmp eq i32 %1364, 2
  %1366 = zext i1 %1365 to i8
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1366, i8* %1367, align 1
  store %struct.Memory* %loadMem_4297cc, %struct.Memory** %MEMORY
  %loadMem_4297cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 33
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 7
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %EDX.i835 = bitcast %union.anon* %1373 to i32*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 15
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RBP.i836 = bitcast %union.anon* %1376 to i64*
  %1377 = load i64, i64* %RBP.i836
  %1378 = sub i64 %1377, 68
  %1379 = load i32, i32* %EDX.i835
  %1380 = zext i32 %1379 to i64
  %1381 = load i64, i64* %PC.i834
  %1382 = add i64 %1381, 3
  store i64 %1382, i64* %PC.i834
  %1383 = inttoptr i64 %1378 to i32*
  store i32 %1379, i32* %1383
  store %struct.Memory* %loadMem_4297cf, %struct.Memory** %MEMORY
  %loadMem_4297d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 33
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %1386 to i64*
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 5
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %RCX.i832 = bitcast %union.anon* %1389 to i64*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 15
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %RBP.i833 = bitcast %union.anon* %1392 to i64*
  %1393 = load i64, i64* %RBP.i833
  %1394 = sub i64 %1393, 24
  %1395 = load i64, i64* %PC.i831
  %1396 = add i64 %1395, 4
  store i64 %1396, i64* %PC.i831
  %1397 = inttoptr i64 %1394 to i64*
  %1398 = load i64, i64* %1397
  store i64 %1398, i64* %RCX.i832, align 8
  store %struct.Memory* %loadMem_4297d2, %struct.Memory** %MEMORY
  %loadMem_4297d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 33
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %1401 to i64*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 11
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %RDI.i829 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 15
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RBP.i830 = bitcast %union.anon* %1407 to i64*
  %1408 = load i64, i64* %RBP.i830
  %1409 = sub i64 %1408, 44
  %1410 = load i64, i64* %PC.i828
  %1411 = add i64 %1410, 4
  store i64 %1411, i64* %PC.i828
  %1412 = inttoptr i64 %1409 to i32*
  %1413 = load i32, i32* %1412
  %1414 = sext i32 %1413 to i64
  store i64 %1414, i64* %RDI.i829, align 8
  store %struct.Memory* %loadMem_4297d6, %struct.Memory** %MEMORY
  %loadMem_4297da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 33
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1417 to i64*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 5
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %RCX.i826 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 11
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RDI.i827 = bitcast %union.anon* %1423 to i64*
  %1424 = load i64, i64* %RCX.i826
  %1425 = load i64, i64* %RDI.i827
  %1426 = mul i64 %1425, 4
  %1427 = add i64 %1426, %1424
  %1428 = load i64, i64* %PC.i825
  %1429 = add i64 %1428, 4
  store i64 %1429, i64* %PC.i825
  %1430 = inttoptr i64 %1427 to i32*
  %1431 = load i32, i32* %1430
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1432, align 1
  %1433 = and i32 %1431, 255
  %1434 = call i32 @llvm.ctpop.i32(i32 %1433)
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = xor i8 %1436, 1
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1437, i8* %1438, align 1
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1439, align 1
  %1440 = icmp eq i32 %1431, 0
  %1441 = zext i1 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1441, i8* %1442, align 1
  %1443 = lshr i32 %1431, 31
  %1444 = trunc i32 %1443 to i8
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1444, i8* %1445, align 1
  %1446 = lshr i32 %1431, 31
  %1447 = xor i32 %1443, %1446
  %1448 = add i32 %1447, %1446
  %1449 = icmp eq i32 %1448, 2
  %1450 = zext i1 %1449 to i8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1450, i8* %1451, align 1
  store %struct.Memory* %loadMem_4297da, %struct.Memory** %MEMORY
  %loadMem_4297de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %PC.i824
  %1456 = add i64 %1455, 11
  %1457 = load i64, i64* %PC.i824
  %1458 = add i64 %1457, 6
  %1459 = load i64, i64* %PC.i824
  %1460 = add i64 %1459, 6
  store i64 %1460, i64* %PC.i824
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1462 = load i8, i8* %1461, align 1
  %1463 = icmp eq i8 %1462, 0
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %BRANCH_TAKEN, align 1
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1466 = select i1 %1463, i64 %1456, i64 %1458
  store i64 %1466, i64* %1465, align 8
  store %struct.Memory* %loadMem_4297de, %struct.Memory** %MEMORY
  %loadBr_4297de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4297de = icmp eq i8 %loadBr_4297de, 1
  br i1 %cmpBr_4297de, label %block_.L_4297e9, label %block_4297e4

block_4297e4:                                     ; preds = %routine_idivl__esi.exit852
  %loadMem_4297e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1469 to i64*
  %1470 = load i64, i64* %PC.i823
  %1471 = add i64 %1470, -96
  %1472 = load i64, i64* %PC.i823
  %1473 = add i64 %1472, 5
  store i64 %1473, i64* %PC.i823
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1471, i64* %1474, align 8
  store %struct.Memory* %loadMem_4297e4, %struct.Memory** %MEMORY
  br label %block_.L_429784

block_.L_4297e9:                                  ; preds = %routine_idivl__esi.exit852
  %loadMem_4297e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 33
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %1477 to i64*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 15
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %1480 to i64*
  %1481 = load i64, i64* %RBP.i822
  %1482 = sub i64 %1481, 68
  %1483 = load i64, i64* %PC.i821
  %1484 = add i64 %1483, 4
  store i64 %1484, i64* %PC.i821
  %1485 = inttoptr i64 %1482 to i32*
  %1486 = load i32, i32* %1485
  %1487 = sub i32 %1486, 1
  %1488 = icmp ult i32 %1486, 1
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
  %1497 = xor i32 %1486, 1
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
  %1509 = lshr i32 %1486, 31
  %1510 = xor i32 %1506, %1509
  %1511 = add i32 %1510, %1509
  %1512 = icmp eq i32 %1511, 2
  %1513 = zext i1 %1512 to i8
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1513, i8* %1514, align 1
  store %struct.Memory* %loadMem_4297e9, %struct.Memory** %MEMORY
  %loadMem_4297ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 33
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1517 to i64*
  %1518 = load i64, i64* %PC.i820
  %1519 = add i64 %1518, 18
  %1520 = load i64, i64* %PC.i820
  %1521 = add i64 %1520, 6
  %1522 = load i64, i64* %PC.i820
  %1523 = add i64 %1522, 6
  store i64 %1523, i64* %PC.i820
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1525 = load i8, i8* %1524, align 1
  %1526 = icmp eq i8 %1525, 0
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %BRANCH_TAKEN, align 1
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1529 = select i1 %1526, i64 %1519, i64 %1521
  store i64 %1529, i64* %1528, align 8
  store %struct.Memory* %loadMem_4297ed, %struct.Memory** %MEMORY
  %loadBr_4297ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4297ed = icmp eq i8 %loadBr_4297ed, 1
  br i1 %cmpBr_4297ed, label %block_.L_4297ff, label %block_4297f3

block_4297f3:                                     ; preds = %block_.L_4297e9
  %loadMem_4297f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 33
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 15
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %RBP.i819 = bitcast %union.anon* %1535 to i64*
  %1536 = load i64, i64* %RBP.i819
  %1537 = sub i64 %1536, 64
  %1538 = load i64, i64* %PC.i818
  %1539 = add i64 %1538, 7
  store i64 %1539, i64* %PC.i818
  %1540 = inttoptr i64 %1537 to i32*
  store i32 4096, i32* %1540
  store %struct.Memory* %loadMem_4297f3, %struct.Memory** %MEMORY
  %loadMem_4297fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1543 to i64*
  %1544 = load i64, i64* %PC.i817
  %1545 = add i64 %1544, 32
  %1546 = load i64, i64* %PC.i817
  %1547 = add i64 %1546, 5
  store i64 %1547, i64* %PC.i817
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1545, i64* %1548, align 8
  store %struct.Memory* %loadMem_4297fa, %struct.Memory** %MEMORY
  br label %block_.L_42981a

block_.L_4297ff:                                  ; preds = %block_.L_4297e9
  %loadMem_4297ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 33
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1551 to i64*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 1
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %RAX.i816 = bitcast %union.anon* %1554 to i64*
  %1555 = load i64, i64* %PC.i815
  %1556 = add i64 %1555, 5
  store i64 %1556, i64* %PC.i815
  store i64 4096, i64* %RAX.i816, align 8
  store %struct.Memory* %loadMem_4297ff, %struct.Memory** %MEMORY
  %loadMem_429804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 5
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %RCX.i813 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 15
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %1565 to i64*
  %1566 = load i64, i64* %RBP.i814
  %1567 = sub i64 %1566, 80
  %1568 = load i64, i64* %PC.i812
  %1569 = add i64 %1568, 3
  store i64 %1569, i64* %PC.i812
  %1570 = inttoptr i64 %1567 to i32*
  %1571 = load i32, i32* %1570
  %1572 = zext i32 %1571 to i64
  store i64 %1572, i64* %RCX.i813, align 8
  store %struct.Memory* %loadMem_429804, %struct.Memory** %MEMORY
  %loadMem_429807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 33
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 5
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %RCX.i810 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 15
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %1581 to i64*
  %1582 = load i64, i64* %RCX.i810
  %1583 = load i64, i64* %RBP.i811
  %1584 = sub i64 %1583, 80
  %1585 = load i64, i64* %PC.i809
  %1586 = add i64 %1585, 4
  store i64 %1586, i64* %PC.i809
  %1587 = inttoptr i64 %1584 to i32*
  %1588 = load i32, i32* %1587
  %1589 = shl i64 %1582, 32
  %1590 = ashr exact i64 %1589, 32
  %1591 = sext i32 %1588 to i64
  %1592 = mul i64 %1591, %1590
  %1593 = trunc i64 %1592 to i32
  %1594 = and i64 %1592, 4294967295
  store i64 %1594, i64* %RCX.i810, align 8
  %1595 = shl i64 %1592, 32
  %1596 = ashr exact i64 %1595, 32
  %1597 = icmp ne i64 %1596, %1592
  %1598 = zext i1 %1597 to i8
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1598, i8* %1599, align 1
  %1600 = and i32 %1593, 255
  %1601 = call i32 @llvm.ctpop.i32(i32 %1600)
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = xor i8 %1603, 1
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1604, i8* %1605, align 1
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1606, align 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1607, align 1
  %1608 = lshr i32 %1593, 31
  %1609 = trunc i32 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1609, i8* %1610, align 1
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1598, i8* %1611, align 1
  store %struct.Memory* %loadMem_429807, %struct.Memory** %MEMORY
  %loadMem_42980b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 33
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 7
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %RDX.i807 = bitcast %union.anon* %1617 to i64*
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 15
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %RBP.i808 = bitcast %union.anon* %1620 to i64*
  %1621 = load i64, i64* %RBP.i808
  %1622 = sub i64 %1621, 84
  %1623 = load i64, i64* %PC.i806
  %1624 = add i64 %1623, 3
  store i64 %1624, i64* %PC.i806
  %1625 = inttoptr i64 %1622 to i32*
  %1626 = load i32, i32* %1625
  %1627 = zext i32 %1626 to i64
  store i64 %1627, i64* %RDX.i807, align 8
  store %struct.Memory* %loadMem_42980b, %struct.Memory** %MEMORY
  %loadMem_42980e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 7
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RDX.i804 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 15
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RBP.i805 = bitcast %union.anon* %1636 to i64*
  %1637 = load i64, i64* %RDX.i804
  %1638 = load i64, i64* %RBP.i805
  %1639 = sub i64 %1638, 84
  %1640 = load i64, i64* %PC.i803
  %1641 = add i64 %1640, 4
  store i64 %1641, i64* %PC.i803
  %1642 = inttoptr i64 %1639 to i32*
  %1643 = load i32, i32* %1642
  %1644 = shl i64 %1637, 32
  %1645 = ashr exact i64 %1644, 32
  %1646 = sext i32 %1643 to i64
  %1647 = mul i64 %1646, %1645
  %1648 = trunc i64 %1647 to i32
  %1649 = and i64 %1647, 4294967295
  store i64 %1649, i64* %RDX.i804, align 8
  %1650 = shl i64 %1647, 32
  %1651 = ashr exact i64 %1650, 32
  %1652 = icmp ne i64 %1651, %1647
  %1653 = zext i1 %1652 to i8
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1653, i8* %1654, align 1
  %1655 = and i32 %1648, 255
  %1656 = call i32 @llvm.ctpop.i32(i32 %1655)
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  %1659 = xor i8 %1658, 1
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1659, i8* %1660, align 1
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1661, align 1
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1662, align 1
  %1663 = lshr i32 %1648, 31
  %1664 = trunc i32 %1663 to i8
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1664, i8* %1665, align 1
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1653, i8* %1666, align 1
  store %struct.Memory* %loadMem_42980e, %struct.Memory** %MEMORY
  %loadMem_429812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 33
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 7
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %EDX.i801 = bitcast %union.anon* %1672 to i32*
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 5
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %RCX.i802 = bitcast %union.anon* %1675 to i64*
  %1676 = load i64, i64* %RCX.i802
  %1677 = load i32, i32* %EDX.i801
  %1678 = zext i32 %1677 to i64
  %1679 = load i64, i64* %PC.i800
  %1680 = add i64 %1679, 2
  store i64 %1680, i64* %PC.i800
  %1681 = trunc i64 %1676 to i32
  %1682 = add i32 %1677, %1681
  %1683 = zext i32 %1682 to i64
  store i64 %1683, i64* %RCX.i802, align 8
  %1684 = icmp ult i32 %1682, %1681
  %1685 = icmp ult i32 %1682, %1677
  %1686 = or i1 %1684, %1685
  %1687 = zext i1 %1686 to i8
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1687, i8* %1688, align 1
  %1689 = and i32 %1682, 255
  %1690 = call i32 @llvm.ctpop.i32(i32 %1689)
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = xor i8 %1692, 1
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1693, i8* %1694, align 1
  %1695 = xor i64 %1678, %1676
  %1696 = trunc i64 %1695 to i32
  %1697 = xor i32 %1696, %1682
  %1698 = lshr i32 %1697, 4
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1700, i8* %1701, align 1
  %1702 = icmp eq i32 %1682, 0
  %1703 = zext i1 %1702 to i8
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1703, i8* %1704, align 1
  %1705 = lshr i32 %1682, 31
  %1706 = trunc i32 %1705 to i8
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1706, i8* %1707, align 1
  %1708 = lshr i32 %1681, 31
  %1709 = lshr i32 %1677, 31
  %1710 = xor i32 %1705, %1708
  %1711 = xor i32 %1705, %1709
  %1712 = add i32 %1710, %1711
  %1713 = icmp eq i32 %1712, 2
  %1714 = zext i1 %1713 to i8
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1714, i8* %1715, align 1
  store %struct.Memory* %loadMem_429812, %struct.Memory** %MEMORY
  %loadMem_429814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 33
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1718 to i64*
  %1719 = load i64, i64* %PC.i799
  %1720 = add i64 %1719, 1
  store i64 %1720, i64* %PC.i799
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1723 = bitcast %union.anon* %1722 to i32*
  %1724 = load i32, i32* %1723, align 8
  %1725 = sext i32 %1724 to i64
  %1726 = lshr i64 %1725, 32
  store i64 %1726, i64* %1721, align 8
  store %struct.Memory* %loadMem_429814, %struct.Memory** %MEMORY
  %loadMem_429815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 33
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 5
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %ECX.i794 = bitcast %union.anon* %1732 to i32*
  %1733 = load i32, i32* %ECX.i794
  %1734 = zext i32 %1733 to i64
  %1735 = load i64, i64* %PC.i793
  %1736 = add i64 %1735, 2
  store i64 %1736, i64* %PC.i793
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1738 = bitcast %union.anon* %1737 to i32*
  %1739 = load i32, i32* %1738, align 8
  %1740 = zext i32 %1739 to i64
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1742 = bitcast %union.anon* %1741 to i32*
  %1743 = load i32, i32* %1742, align 8
  %1744 = zext i32 %1743 to i64
  %1745 = shl i64 %1734, 32
  %1746 = ashr exact i64 %1745, 32
  %1747 = shl i64 %1744, 32
  %1748 = or i64 %1747, %1740
  %1749 = sdiv i64 %1748, %1746
  %1750 = shl i64 %1749, 32
  %1751 = ashr exact i64 %1750, 32
  %1752 = icmp eq i64 %1749, %1751
  br i1 %1752, label %1757, label %1753

; <label>:1753:                                   ; preds = %block_.L_4297ff
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1755 = load i64, i64* %1754, align 8
  %1756 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1755, %struct.Memory* %loadMem_429815)
  br label %routine_idivl__ecx.exit795

; <label>:1757:                                   ; preds = %block_.L_4297ff
  %1758 = srem i64 %1748, %1746
  %1759 = getelementptr inbounds %union.anon, %union.anon* %1737, i64 0, i32 0
  %1760 = and i64 %1749, 4294967295
  store i64 %1760, i64* %1759, align 8
  %1761 = getelementptr inbounds %union.anon, %union.anon* %1741, i64 0, i32 0
  %1762 = and i64 %1758, 4294967295
  store i64 %1762, i64* %1761, align 8
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1763, align 1
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1764, align 1
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1765, align 1
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1766, align 1
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1767, align 1
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1768, align 1
  br label %routine_idivl__ecx.exit795

routine_idivl__ecx.exit795:                       ; preds = %1753, %1757
  %1769 = phi %struct.Memory* [ %1756, %1753 ], [ %loadMem_429815, %1757 ]
  store %struct.Memory* %1769, %struct.Memory** %MEMORY
  %loadMem_429817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 1
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %EAX.i791 = bitcast %union.anon* %1775 to i32*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 15
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RBP.i792 = bitcast %union.anon* %1778 to i64*
  %1779 = load i64, i64* %RBP.i792
  %1780 = sub i64 %1779, 64
  %1781 = load i32, i32* %EAX.i791
  %1782 = zext i32 %1781 to i64
  %1783 = load i64, i64* %PC.i790
  %1784 = add i64 %1783, 3
  store i64 %1784, i64* %PC.i790
  %1785 = inttoptr i64 %1780 to i32*
  store i32 %1781, i32* %1785
  store %struct.Memory* %loadMem_429817, %struct.Memory** %MEMORY
  br label %block_.L_42981a

block_.L_42981a:                                  ; preds = %routine_idivl__ecx.exit795, %block_4297f3
  %loadMem_42981a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 33
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 1
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %RAX.i789 = bitcast %union.anon* %1791 to i64*
  %1792 = load i64, i64* %PC.i788
  %1793 = add i64 %1792, 5
  store i64 %1793, i64* %PC.i788
  store i64 4096, i64* %RAX.i789, align 8
  store %struct.Memory* %loadMem_42981a, %struct.Memory** %MEMORY
  %loadMem_42981f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 33
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 5
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %RCX.i786 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 15
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %1802 to i64*
  %1803 = load i64, i64* %RBP.i787
  %1804 = sub i64 %1803, 44
  %1805 = load i64, i64* %PC.i785
  %1806 = add i64 %1805, 4
  store i64 %1806, i64* %PC.i785
  %1807 = inttoptr i64 %1804 to i32*
  %1808 = load i32, i32* %1807
  %1809 = sext i32 %1808 to i64
  store i64 %1809, i64* %RCX.i786, align 8
  store %struct.Memory* %loadMem_42981f, %struct.Memory** %MEMORY
  %loadMem_429823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 33
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 5
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RCX.i783 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 7
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %RDX.i784 = bitcast %union.anon* %1818 to i64*
  %1819 = load i64, i64* %RCX.i783
  %1820 = mul i64 %1819, 4
  %1821 = add i64 %1820, 11268976
  %1822 = load i64, i64* %PC.i782
  %1823 = add i64 %1822, 7
  store i64 %1823, i64* %PC.i782
  %1824 = inttoptr i64 %1821 to i32*
  %1825 = load i32, i32* %1824
  %1826 = zext i32 %1825 to i64
  store i64 %1826, i64* %RDX.i784, align 8
  store %struct.Memory* %loadMem_429823, %struct.Memory** %MEMORY
  %loadMem_42982a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 33
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 7
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RDX.i780 = bitcast %union.anon* %1832 to i64*
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 15
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %RBP.i781 = bitcast %union.anon* %1835 to i64*
  %1836 = load i64, i64* %RDX.i780
  %1837 = load i64, i64* %RBP.i781
  %1838 = sub i64 %1837, 12
  %1839 = load i64, i64* %PC.i779
  %1840 = add i64 %1839, 4
  store i64 %1840, i64* %PC.i779
  %1841 = inttoptr i64 %1838 to i32*
  %1842 = load i32, i32* %1841
  %1843 = shl i64 %1836, 32
  %1844 = ashr exact i64 %1843, 32
  %1845 = sext i32 %1842 to i64
  %1846 = mul i64 %1845, %1844
  %1847 = trunc i64 %1846 to i32
  %1848 = and i64 %1846, 4294967295
  store i64 %1848, i64* %RDX.i780, align 8
  %1849 = shl i64 %1846, 32
  %1850 = ashr exact i64 %1849, 32
  %1851 = icmp ne i64 %1850, %1846
  %1852 = zext i1 %1851 to i8
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1852, i8* %1853, align 1
  %1854 = and i32 %1847, 255
  %1855 = call i32 @llvm.ctpop.i32(i32 %1854)
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  %1858 = xor i8 %1857, 1
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1858, i8* %1859, align 1
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1860, align 1
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1861, align 1
  %1862 = lshr i32 %1847, 31
  %1863 = trunc i32 %1862 to i8
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1863, i8* %1864, align 1
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1852, i8* %1865, align 1
  store %struct.Memory* %loadMem_42982a, %struct.Memory** %MEMORY
  %loadMem_42982e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 1
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %EAX.i777 = bitcast %union.anon* %1871 to i32*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 15
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RBP.i778 = bitcast %union.anon* %1874 to i64*
  %1875 = load i64, i64* %RBP.i778
  %1876 = sub i64 %1875, 116
  %1877 = load i32, i32* %EAX.i777
  %1878 = zext i32 %1877 to i64
  %1879 = load i64, i64* %PC.i776
  %1880 = add i64 %1879, 3
  store i64 %1880, i64* %PC.i776
  %1881 = inttoptr i64 %1876 to i32*
  store i32 %1877, i32* %1881
  store %struct.Memory* %loadMem_42982e, %struct.Memory** %MEMORY
  %loadMem_429831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 33
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %1884 to i64*
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 7
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %EDX.i774 = bitcast %union.anon* %1887 to i32*
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 1
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %RAX.i775 = bitcast %union.anon* %1890 to i64*
  %1891 = load i32, i32* %EDX.i774
  %1892 = zext i32 %1891 to i64
  %1893 = load i64, i64* %PC.i773
  %1894 = add i64 %1893, 2
  store i64 %1894, i64* %PC.i773
  %1895 = and i64 %1892, 4294967295
  store i64 %1895, i64* %RAX.i775, align 8
  store %struct.Memory* %loadMem_429831, %struct.Memory** %MEMORY
  %loadMem_429833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1898 to i64*
  %1899 = load i64, i64* %PC.i772
  %1900 = add i64 %1899, 1
  store i64 %1900, i64* %PC.i772
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1903 = bitcast %union.anon* %1902 to i32*
  %1904 = load i32, i32* %1903, align 8
  %1905 = sext i32 %1904 to i64
  %1906 = lshr i64 %1905, 32
  store i64 %1906, i64* %1901, align 8
  store %struct.Memory* %loadMem_429833, %struct.Memory** %MEMORY
  %loadMem_429834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 9
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %RSI.i770 = bitcast %union.anon* %1912 to i64*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 15
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %1915 to i64*
  %1916 = load i64, i64* %RBP.i771
  %1917 = sub i64 %1916, 116
  %1918 = load i64, i64* %PC.i769
  %1919 = add i64 %1918, 3
  store i64 %1919, i64* %PC.i769
  %1920 = inttoptr i64 %1917 to i32*
  %1921 = load i32, i32* %1920
  %1922 = zext i32 %1921 to i64
  store i64 %1922, i64* %RSI.i770, align 8
  store %struct.Memory* %loadMem_429834, %struct.Memory** %MEMORY
  %loadMem_429837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 33
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 9
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %ESI.i764 = bitcast %union.anon* %1928 to i32*
  %1929 = load i32, i32* %ESI.i764
  %1930 = zext i32 %1929 to i64
  %1931 = load i64, i64* %PC.i763
  %1932 = add i64 %1931, 2
  store i64 %1932, i64* %PC.i763
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1934 = bitcast %union.anon* %1933 to i32*
  %1935 = load i32, i32* %1934, align 8
  %1936 = zext i32 %1935 to i64
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1938 = bitcast %union.anon* %1937 to i32*
  %1939 = load i32, i32* %1938, align 8
  %1940 = zext i32 %1939 to i64
  %1941 = shl i64 %1930, 32
  %1942 = ashr exact i64 %1941, 32
  %1943 = shl i64 %1940, 32
  %1944 = or i64 %1943, %1936
  %1945 = sdiv i64 %1944, %1942
  %1946 = shl i64 %1945, 32
  %1947 = ashr exact i64 %1946, 32
  %1948 = icmp eq i64 %1945, %1947
  br i1 %1948, label %1953, label %1949

; <label>:1949:                                   ; preds = %block_.L_42981a
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1951 = load i64, i64* %1950, align 8
  %1952 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1951, %struct.Memory* %loadMem_429837)
  br label %routine_idivl__esi.exit765

; <label>:1953:                                   ; preds = %block_.L_42981a
  %1954 = srem i64 %1944, %1942
  %1955 = getelementptr inbounds %union.anon, %union.anon* %1933, i64 0, i32 0
  %1956 = and i64 %1945, 4294967295
  store i64 %1956, i64* %1955, align 8
  %1957 = getelementptr inbounds %union.anon, %union.anon* %1937, i64 0, i32 0
  %1958 = and i64 %1954, 4294967295
  store i64 %1958, i64* %1957, align 8
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1959, align 1
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1960, align 1
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1961, align 1
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1962, align 1
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1963, align 1
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1964, align 1
  br label %routine_idivl__esi.exit765

routine_idivl__esi.exit765:                       ; preds = %1949, %1953
  %1965 = phi %struct.Memory* [ %1952, %1949 ], [ %loadMem_429837, %1953 ]
  store %struct.Memory* %1965, %struct.Memory** %MEMORY
  %loadMem_429839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 33
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 1
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %EAX.i761 = bitcast %union.anon* %1971 to i32*
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 15
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %1974 to i64*
  %1975 = load i64, i64* %RBP.i762
  %1976 = sub i64 %1975, 76
  %1977 = load i32, i32* %EAX.i761
  %1978 = zext i32 %1977 to i64
  %1979 = load i64, i64* %PC.i760
  %1980 = add i64 %1979, 3
  store i64 %1980, i64* %PC.i760
  %1981 = inttoptr i64 %1976 to i32*
  store i32 %1977, i32* %1981
  store %struct.Memory* %loadMem_429839, %struct.Memory** %MEMORY
  %loadMem_42983c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 33
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 15
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %RBP.i759
  %1989 = sub i64 %1988, 60
  %1990 = load i64, i64* %PC.i758
  %1991 = add i64 %1990, 7
  store i64 %1991, i64* %PC.i758
  %1992 = inttoptr i64 %1989 to i32*
  store i32 0, i32* %1992
  store %struct.Memory* %loadMem_42983c, %struct.Memory** %MEMORY
  br label %block_.L_429843

block_.L_429843:                                  ; preds = %block_.L_4299d1, %routine_idivl__esi.exit765
  %loadMem_429843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 33
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 15
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %RBP.i757 = bitcast %union.anon* %1998 to i64*
  %1999 = load i64, i64* %RBP.i757
  %2000 = sub i64 %1999, 60
  %2001 = load i64, i64* %PC.i756
  %2002 = add i64 %2001, 4
  store i64 %2002, i64* %PC.i756
  %2003 = inttoptr i64 %2000 to i32*
  %2004 = load i32, i32* %2003
  %2005 = sub i32 %2004, 4
  %2006 = icmp ult i32 %2004, 4
  %2007 = zext i1 %2006 to i8
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2007, i8* %2008, align 1
  %2009 = and i32 %2005, 255
  %2010 = call i32 @llvm.ctpop.i32(i32 %2009)
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  %2013 = xor i8 %2012, 1
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2013, i8* %2014, align 1
  %2015 = xor i32 %2004, 4
  %2016 = xor i32 %2015, %2005
  %2017 = lshr i32 %2016, 4
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2019, i8* %2020, align 1
  %2021 = icmp eq i32 %2005, 0
  %2022 = zext i1 %2021 to i8
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2022, i8* %2023, align 1
  %2024 = lshr i32 %2005, 31
  %2025 = trunc i32 %2024 to i8
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2025, i8* %2026, align 1
  %2027 = lshr i32 %2004, 31
  %2028 = xor i32 %2024, %2027
  %2029 = add i32 %2028, %2027
  %2030 = icmp eq i32 %2029, 2
  %2031 = zext i1 %2030 to i8
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2031, i8* %2032, align 1
  store %struct.Memory* %loadMem_429843, %struct.Memory** %MEMORY
  %loadMem_429847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 33
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %2035 to i64*
  %2036 = load i64, i64* %PC.i755
  %2037 = add i64 %2036, 408
  %2038 = load i64, i64* %PC.i755
  %2039 = add i64 %2038, 6
  %2040 = load i64, i64* %PC.i755
  %2041 = add i64 %2040, 6
  store i64 %2041, i64* %PC.i755
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2043 = load i8, i8* %2042, align 1
  %2044 = icmp ne i8 %2043, 0
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2046 = load i8, i8* %2045, align 1
  %2047 = icmp ne i8 %2046, 0
  %2048 = xor i1 %2044, %2047
  %2049 = xor i1 %2048, true
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %BRANCH_TAKEN, align 1
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2052 = select i1 %2048, i64 %2039, i64 %2037
  store i64 %2052, i64* %2051, align 8
  store %struct.Memory* %loadMem_429847, %struct.Memory** %MEMORY
  %loadBr_429847 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429847 = icmp eq i8 %loadBr_429847, 1
  br i1 %cmpBr_429847, label %block_.L_4299df, label %block_42984d

block_42984d:                                     ; preds = %block_.L_429843
  %loadMem_42984d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 1
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RAX.i753 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 15
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %RBP.i754 = bitcast %union.anon* %2061 to i64*
  %2062 = load i64, i64* %RBP.i754
  %2063 = sub i64 %2062, 44
  %2064 = load i64, i64* %PC.i752
  %2065 = add i64 %2064, 3
  store i64 %2065, i64* %PC.i752
  %2066 = inttoptr i64 %2063 to i32*
  %2067 = load i32, i32* %2066
  %2068 = zext i32 %2067 to i64
  store i64 %2068, i64* %RAX.i753, align 8
  store %struct.Memory* %loadMem_42984d, %struct.Memory** %MEMORY
  %loadMem_429850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 5
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RCX.i750 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 15
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %2077 to i64*
  %2078 = load i64, i64* %RBP.i751
  %2079 = sub i64 %2078, 60
  %2080 = load i64, i64* %PC.i749
  %2081 = add i64 %2080, 4
  store i64 %2081, i64* %PC.i749
  %2082 = inttoptr i64 %2079 to i32*
  %2083 = load i32, i32* %2082
  %2084 = sext i32 %2083 to i64
  store i64 %2084, i64* %RCX.i750, align 8
  store %struct.Memory* %loadMem_429850, %struct.Memory** %MEMORY
  %loadMem_429854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 33
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 1
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RAX.i747 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 5
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %RCX.i748 = bitcast %union.anon* %2093 to i64*
  %2094 = load i64, i64* %RAX.i747
  %2095 = load i64, i64* %RCX.i748
  %2096 = mul i64 %2095, 4
  %2097 = add i64 %2096, 8053168
  %2098 = load i64, i64* %PC.i746
  %2099 = add i64 %2098, 7
  store i64 %2099, i64* %PC.i746
  %2100 = trunc i64 %2094 to i32
  %2101 = inttoptr i64 %2097 to i32*
  %2102 = load i32, i32* %2101
  %2103 = add i32 %2102, %2100
  %2104 = zext i32 %2103 to i64
  store i64 %2104, i64* %RAX.i747, align 8
  %2105 = icmp ult i32 %2103, %2100
  %2106 = icmp ult i32 %2103, %2102
  %2107 = or i1 %2105, %2106
  %2108 = zext i1 %2107 to i8
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2108, i8* %2109, align 1
  %2110 = and i32 %2103, 255
  %2111 = call i32 @llvm.ctpop.i32(i32 %2110)
  %2112 = trunc i32 %2111 to i8
  %2113 = and i8 %2112, 1
  %2114 = xor i8 %2113, 1
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2114, i8* %2115, align 1
  %2116 = xor i32 %2102, %2100
  %2117 = xor i32 %2116, %2103
  %2118 = lshr i32 %2117, 4
  %2119 = trunc i32 %2118 to i8
  %2120 = and i8 %2119, 1
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2120, i8* %2121, align 1
  %2122 = icmp eq i32 %2103, 0
  %2123 = zext i1 %2122 to i8
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2123, i8* %2124, align 1
  %2125 = lshr i32 %2103, 31
  %2126 = trunc i32 %2125 to i8
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2126, i8* %2127, align 1
  %2128 = lshr i32 %2100, 31
  %2129 = lshr i32 %2102, 31
  %2130 = xor i32 %2125, %2128
  %2131 = xor i32 %2125, %2129
  %2132 = add i32 %2130, %2131
  %2133 = icmp eq i32 %2132, 2
  %2134 = zext i1 %2133 to i8
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2134, i8* %2135, align 1
  store %struct.Memory* %loadMem_429854, %struct.Memory** %MEMORY
  %loadMem_42985b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 1
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %EAX.i744 = bitcast %union.anon* %2141 to i32*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 5
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RCX.i745 = bitcast %union.anon* %2144 to i64*
  %2145 = load i32, i32* %EAX.i744
  %2146 = zext i32 %2145 to i64
  %2147 = load i64, i64* %PC.i743
  %2148 = add i64 %2147, 3
  store i64 %2148, i64* %PC.i743
  %2149 = shl i64 %2146, 32
  %2150 = ashr exact i64 %2149, 32
  store i64 %2150, i64* %RCX.i745, align 8
  store %struct.Memory* %loadMem_42985b, %struct.Memory** %MEMORY
  %loadMem_42985e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 33
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 1
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %RAX.i741 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 5
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %RCX.i742 = bitcast %union.anon* %2159 to i64*
  %2160 = load i64, i64* %RCX.i742
  %2161 = add i64 %2160, 12099168
  %2162 = load i64, i64* %PC.i740
  %2163 = add i64 %2162, 8
  store i64 %2163, i64* %PC.i740
  %2164 = inttoptr i64 %2161 to i8*
  %2165 = load i8, i8* %2164
  %2166 = zext i8 %2165 to i64
  store i64 %2166, i64* %RAX.i741, align 8
  store %struct.Memory* %loadMem_42985e, %struct.Memory** %MEMORY
  %loadMem_429866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 33
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 1
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %EAX.i739 = bitcast %union.anon* %2172 to i32*
  %2173 = load i32, i32* %EAX.i739
  %2174 = zext i32 %2173 to i64
  %2175 = load i64, i64* %PC.i738
  %2176 = add i64 %2175, 3
  store i64 %2176, i64* %PC.i738
  %2177 = sub i32 %2173, 3
  %2178 = icmp ult i32 %2173, 3
  %2179 = zext i1 %2178 to i8
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2179, i8* %2180, align 1
  %2181 = and i32 %2177, 255
  %2182 = call i32 @llvm.ctpop.i32(i32 %2181)
  %2183 = trunc i32 %2182 to i8
  %2184 = and i8 %2183, 1
  %2185 = xor i8 %2184, 1
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2185, i8* %2186, align 1
  %2187 = xor i64 3, %2174
  %2188 = trunc i64 %2187 to i32
  %2189 = xor i32 %2188, %2177
  %2190 = lshr i32 %2189, 4
  %2191 = trunc i32 %2190 to i8
  %2192 = and i8 %2191, 1
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2192, i8* %2193, align 1
  %2194 = icmp eq i32 %2177, 0
  %2195 = zext i1 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2195, i8* %2196, align 1
  %2197 = lshr i32 %2177, 31
  %2198 = trunc i32 %2197 to i8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2198, i8* %2199, align 1
  %2200 = lshr i32 %2173, 31
  %2201 = xor i32 %2197, %2200
  %2202 = add i32 %2201, %2200
  %2203 = icmp eq i32 %2202, 2
  %2204 = zext i1 %2203 to i8
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2204, i8* %2205, align 1
  store %struct.Memory* %loadMem_429866, %struct.Memory** %MEMORY
  %loadMem_429869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 33
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %2208 to i64*
  %2209 = load i64, i64* %PC.i737
  %2210 = add i64 %2209, 355
  %2211 = load i64, i64* %PC.i737
  %2212 = add i64 %2211, 6
  %2213 = load i64, i64* %PC.i737
  %2214 = add i64 %2213, 6
  store i64 %2214, i64* %PC.i737
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2216 = load i8, i8* %2215, align 1
  store i8 %2216, i8* %BRANCH_TAKEN, align 1
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2218 = icmp ne i8 %2216, 0
  %2219 = select i1 %2218, i64 %2210, i64 %2212
  store i64 %2219, i64* %2217, align 8
  store %struct.Memory* %loadMem_429869, %struct.Memory** %MEMORY
  %loadBr_429869 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429869 = icmp eq i8 %loadBr_429869, 1
  br i1 %cmpBr_429869, label %block_.L_4299cc, label %block_42986f

block_42986f:                                     ; preds = %block_42984d
  %loadMem_42986f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %2222 to i64*
  %2223 = load i64, i64* %PC.i736
  %2224 = add i64 %2223, 5
  %2225 = load i64, i64* %PC.i736
  %2226 = add i64 %2225, 5
  store i64 %2226, i64* %PC.i736
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2224, i64* %2227, align 8
  store %struct.Memory* %loadMem_42986f, %struct.Memory** %MEMORY
  br label %block_.L_429874

block_.L_429874:                                  ; preds = %block_42986f
  %loadMem_429874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 1
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RAX.i734 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 15
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %2236 to i64*
  %2237 = load i64, i64* %RBP.i735
  %2238 = sub i64 %2237, 32
  %2239 = load i64, i64* %PC.i733
  %2240 = add i64 %2239, 4
  store i64 %2240, i64* %PC.i733
  %2241 = inttoptr i64 %2238 to i64*
  %2242 = load i64, i64* %2241
  store i64 %2242, i64* %RAX.i734, align 8
  store %struct.Memory* %loadMem_429874, %struct.Memory** %MEMORY
  %loadMem_429878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 33
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 5
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %RCX.i731 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 15
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %2251 to i64*
  %2252 = load i64, i64* %RBP.i732
  %2253 = sub i64 %2252, 44
  %2254 = load i64, i64* %PC.i730
  %2255 = add i64 %2254, 3
  store i64 %2255, i64* %PC.i730
  %2256 = inttoptr i64 %2253 to i32*
  %2257 = load i32, i32* %2256
  %2258 = zext i32 %2257 to i64
  store i64 %2258, i64* %RCX.i731, align 8
  store %struct.Memory* %loadMem_429878, %struct.Memory** %MEMORY
  %loadMem_42987b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 33
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 7
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %RDX.i728 = bitcast %union.anon* %2264 to i64*
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 15
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %2267 to i64*
  %2268 = load i64, i64* %RBP.i729
  %2269 = sub i64 %2268, 60
  %2270 = load i64, i64* %PC.i727
  %2271 = add i64 %2270, 4
  store i64 %2271, i64* %PC.i727
  %2272 = inttoptr i64 %2269 to i32*
  %2273 = load i32, i32* %2272
  %2274 = sext i32 %2273 to i64
  store i64 %2274, i64* %RDX.i728, align 8
  store %struct.Memory* %loadMem_42987b, %struct.Memory** %MEMORY
  %loadMem_42987f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 33
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %2277 to i64*
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 5
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %RCX.i725 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 7
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RDX.i726 = bitcast %union.anon* %2283 to i64*
  %2284 = load i64, i64* %RCX.i725
  %2285 = load i64, i64* %RDX.i726
  %2286 = mul i64 %2285, 4
  %2287 = add i64 %2286, 8053168
  %2288 = load i64, i64* %PC.i724
  %2289 = add i64 %2288, 7
  store i64 %2289, i64* %PC.i724
  %2290 = trunc i64 %2284 to i32
  %2291 = inttoptr i64 %2287 to i32*
  %2292 = load i32, i32* %2291
  %2293 = add i32 %2292, %2290
  %2294 = zext i32 %2293 to i64
  store i64 %2294, i64* %RCX.i725, align 8
  %2295 = icmp ult i32 %2293, %2290
  %2296 = icmp ult i32 %2293, %2292
  %2297 = or i1 %2295, %2296
  %2298 = zext i1 %2297 to i8
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2298, i8* %2299, align 1
  %2300 = and i32 %2293, 255
  %2301 = call i32 @llvm.ctpop.i32(i32 %2300)
  %2302 = trunc i32 %2301 to i8
  %2303 = and i8 %2302, 1
  %2304 = xor i8 %2303, 1
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2304, i8* %2305, align 1
  %2306 = xor i32 %2292, %2290
  %2307 = xor i32 %2306, %2293
  %2308 = lshr i32 %2307, 4
  %2309 = trunc i32 %2308 to i8
  %2310 = and i8 %2309, 1
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2310, i8* %2311, align 1
  %2312 = icmp eq i32 %2293, 0
  %2313 = zext i1 %2312 to i8
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2313, i8* %2314, align 1
  %2315 = lshr i32 %2293, 31
  %2316 = trunc i32 %2315 to i8
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2316, i8* %2317, align 1
  %2318 = lshr i32 %2290, 31
  %2319 = lshr i32 %2292, 31
  %2320 = xor i32 %2315, %2318
  %2321 = xor i32 %2315, %2319
  %2322 = add i32 %2320, %2321
  %2323 = icmp eq i32 %2322, 2
  %2324 = zext i1 %2323 to i8
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2324, i8* %2325, align 1
  store %struct.Memory* %loadMem_42987f, %struct.Memory** %MEMORY
  %loadMem_429886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 33
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 5
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %ECX.i722 = bitcast %union.anon* %2331 to i32*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 7
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RDX.i723 = bitcast %union.anon* %2334 to i64*
  %2335 = load i32, i32* %ECX.i722
  %2336 = zext i32 %2335 to i64
  %2337 = load i64, i64* %PC.i721
  %2338 = add i64 %2337, 3
  store i64 %2338, i64* %PC.i721
  %2339 = shl i64 %2336, 32
  %2340 = ashr exact i64 %2339, 32
  store i64 %2340, i64* %RDX.i723, align 8
  store %struct.Memory* %loadMem_429886, %struct.Memory** %MEMORY
  %loadMem_429889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 33
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 1
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %RAX.i719 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 7
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %RDX.i720 = bitcast %union.anon* %2349 to i64*
  %2350 = load i64, i64* %RAX.i719
  %2351 = load i64, i64* %RDX.i720
  %2352 = add i64 %2351, %2350
  %2353 = load i64, i64* %PC.i718
  %2354 = add i64 %2353, 4
  store i64 %2354, i64* %PC.i718
  %2355 = inttoptr i64 %2352 to i8*
  %2356 = load i8, i8* %2355
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2357, align 1
  %2358 = zext i8 %2356 to i32
  %2359 = call i32 @llvm.ctpop.i32(i32 %2358)
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  %2362 = xor i8 %2361, 1
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2362, i8* %2363, align 1
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2364, align 1
  %2365 = icmp eq i8 %2356, 0
  %2366 = zext i1 %2365 to i8
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2366, i8* %2367, align 1
  %2368 = lshr i8 %2356, 7
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2368, i8* %2369, align 1
  %2370 = lshr i8 %2356, 7
  %2371 = xor i8 %2368, %2370
  %2372 = add i8 %2371, %2370
  %2373 = icmp eq i8 %2372, 2
  %2374 = zext i1 %2373 to i8
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2374, i8* %2375, align 1
  store %struct.Memory* %loadMem_429889, %struct.Memory** %MEMORY
  %loadMem_42988d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 33
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2378 to i64*
  %2379 = load i64, i64* %PC.i717
  %2380 = add i64 %2379, 309
  %2381 = load i64, i64* %PC.i717
  %2382 = add i64 %2381, 6
  %2383 = load i64, i64* %PC.i717
  %2384 = add i64 %2383, 6
  store i64 %2384, i64* %PC.i717
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2386 = load i8, i8* %2385, align 1
  %2387 = icmp eq i8 %2386, 0
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %BRANCH_TAKEN, align 1
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2390 = select i1 %2387, i64 %2380, i64 %2382
  store i64 %2390, i64* %2389, align 8
  store %struct.Memory* %loadMem_42988d, %struct.Memory** %MEMORY
  %loadBr_42988d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42988d = icmp eq i8 %loadBr_42988d, 1
  br i1 %cmpBr_42988d, label %block_.L_4299c2, label %block_429893

block_429893:                                     ; preds = %block_.L_429874
  %loadMem_429893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 33
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 1
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 15
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %2399 to i64*
  %2400 = load i64, i64* %RBP.i716
  %2401 = sub i64 %2400, 60
  %2402 = load i64, i64* %PC.i714
  %2403 = add i64 %2402, 4
  store i64 %2403, i64* %PC.i714
  %2404 = inttoptr i64 %2401 to i32*
  %2405 = load i32, i32* %2404
  %2406 = sext i32 %2405 to i64
  store i64 %2406, i64* %RAX.i715, align 8
  store %struct.Memory* %loadMem_429893, %struct.Memory** %MEMORY
  %loadMem_429897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 33
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 1
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RAX.i712 = bitcast %union.anon* %2412 to i64*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 5
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %RCX.i713 = bitcast %union.anon* %2415 to i64*
  %2416 = load i64, i64* %RAX.i712
  %2417 = mul i64 %2416, 4
  %2418 = add i64 %2417, 8053104
  %2419 = load i64, i64* %PC.i711
  %2420 = add i64 %2419, 7
  store i64 %2420, i64* %PC.i711
  %2421 = inttoptr i64 %2418 to i32*
  %2422 = load i32, i32* %2421
  %2423 = zext i32 %2422 to i64
  store i64 %2423, i64* %RCX.i713, align 8
  store %struct.Memory* %loadMem_429897, %struct.Memory** %MEMORY
  %loadMem_42989e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 33
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 5
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %RCX.i709 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 15
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %2432 to i64*
  %2433 = load i64, i64* %RCX.i709
  %2434 = load i64, i64* %RBP.i710
  %2435 = sub i64 %2434, 80
  %2436 = load i64, i64* %PC.i708
  %2437 = add i64 %2436, 4
  store i64 %2437, i64* %PC.i708
  %2438 = inttoptr i64 %2435 to i32*
  %2439 = load i32, i32* %2438
  %2440 = shl i64 %2433, 32
  %2441 = ashr exact i64 %2440, 32
  %2442 = sext i32 %2439 to i64
  %2443 = mul i64 %2442, %2441
  %2444 = trunc i64 %2443 to i32
  %2445 = and i64 %2443, 4294967295
  store i64 %2445, i64* %RCX.i709, align 8
  %2446 = shl i64 %2443, 32
  %2447 = ashr exact i64 %2446, 32
  %2448 = icmp ne i64 %2447, %2443
  %2449 = zext i1 %2448 to i8
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2449, i8* %2450, align 1
  %2451 = and i32 %2444, 255
  %2452 = call i32 @llvm.ctpop.i32(i32 %2451)
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = xor i8 %2454, 1
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2455, i8* %2456, align 1
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2457, align 1
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2458, align 1
  %2459 = lshr i32 %2444, 31
  %2460 = trunc i32 %2459 to i8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2460, i8* %2461, align 1
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2449, i8* %2462, align 1
  store %struct.Memory* %loadMem_42989e, %struct.Memory** %MEMORY
  %loadMem_4298a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 1
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %RAX.i706 = bitcast %union.anon* %2468 to i64*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 15
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %RBP.i707 = bitcast %union.anon* %2471 to i64*
  %2472 = load i64, i64* %RBP.i707
  %2473 = sub i64 %2472, 60
  %2474 = load i64, i64* %PC.i705
  %2475 = add i64 %2474, 4
  store i64 %2475, i64* %PC.i705
  %2476 = inttoptr i64 %2473 to i32*
  %2477 = load i32, i32* %2476
  %2478 = sext i32 %2477 to i64
  store i64 %2478, i64* %RAX.i706, align 8
  store %struct.Memory* %loadMem_4298a2, %struct.Memory** %MEMORY
  %loadMem_4298a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 33
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2481 to i64*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 1
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %RAX.i703 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 7
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RDX.i704 = bitcast %union.anon* %2487 to i64*
  %2488 = load i64, i64* %RAX.i703
  %2489 = mul i64 %2488, 4
  %2490 = add i64 %2489, 8053136
  %2491 = load i64, i64* %PC.i702
  %2492 = add i64 %2491, 7
  store i64 %2492, i64* %PC.i702
  %2493 = inttoptr i64 %2490 to i32*
  %2494 = load i32, i32* %2493
  %2495 = zext i32 %2494 to i64
  store i64 %2495, i64* %RDX.i704, align 8
  store %struct.Memory* %loadMem_4298a6, %struct.Memory** %MEMORY
  %loadMem_4298ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 7
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RDX.i700 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 15
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %2504 to i64*
  %2505 = load i64, i64* %RDX.i700
  %2506 = load i64, i64* %RBP.i701
  %2507 = sub i64 %2506, 84
  %2508 = load i64, i64* %PC.i699
  %2509 = add i64 %2508, 4
  store i64 %2509, i64* %PC.i699
  %2510 = inttoptr i64 %2507 to i32*
  %2511 = load i32, i32* %2510
  %2512 = shl i64 %2505, 32
  %2513 = ashr exact i64 %2512, 32
  %2514 = sext i32 %2511 to i64
  %2515 = mul i64 %2514, %2513
  %2516 = trunc i64 %2515 to i32
  %2517 = and i64 %2515, 4294967295
  store i64 %2517, i64* %RDX.i700, align 8
  %2518 = shl i64 %2515, 32
  %2519 = ashr exact i64 %2518, 32
  %2520 = icmp ne i64 %2519, %2515
  %2521 = zext i1 %2520 to i8
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2521, i8* %2522, align 1
  %2523 = and i32 %2516, 255
  %2524 = call i32 @llvm.ctpop.i32(i32 %2523)
  %2525 = trunc i32 %2524 to i8
  %2526 = and i8 %2525, 1
  %2527 = xor i8 %2526, 1
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2527, i8* %2528, align 1
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2529, align 1
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2530, align 1
  %2531 = lshr i32 %2516, 31
  %2532 = trunc i32 %2531 to i8
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2532, i8* %2533, align 1
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2521, i8* %2534, align 1
  store %struct.Memory* %loadMem_4298ad, %struct.Memory** %MEMORY
  %loadMem_4298b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 33
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2537 to i64*
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 7
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %EDX.i697 = bitcast %union.anon* %2540 to i32*
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 5
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %RCX.i698 = bitcast %union.anon* %2543 to i64*
  %2544 = load i64, i64* %RCX.i698
  %2545 = load i32, i32* %EDX.i697
  %2546 = zext i32 %2545 to i64
  %2547 = load i64, i64* %PC.i696
  %2548 = add i64 %2547, 2
  store i64 %2548, i64* %PC.i696
  %2549 = trunc i64 %2544 to i32
  %2550 = add i32 %2545, %2549
  %2551 = zext i32 %2550 to i64
  store i64 %2551, i64* %RCX.i698, align 8
  %2552 = icmp ult i32 %2550, %2549
  %2553 = icmp ult i32 %2550, %2545
  %2554 = or i1 %2552, %2553
  %2555 = zext i1 %2554 to i8
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2555, i8* %2556, align 1
  %2557 = and i32 %2550, 255
  %2558 = call i32 @llvm.ctpop.i32(i32 %2557)
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  %2561 = xor i8 %2560, 1
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2561, i8* %2562, align 1
  %2563 = xor i64 %2546, %2544
  %2564 = trunc i64 %2563 to i32
  %2565 = xor i32 %2564, %2550
  %2566 = lshr i32 %2565, 4
  %2567 = trunc i32 %2566 to i8
  %2568 = and i8 %2567, 1
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2568, i8* %2569, align 1
  %2570 = icmp eq i32 %2550, 0
  %2571 = zext i1 %2570 to i8
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2571, i8* %2572, align 1
  %2573 = lshr i32 %2550, 31
  %2574 = trunc i32 %2573 to i8
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2574, i8* %2575, align 1
  %2576 = lshr i32 %2549, 31
  %2577 = lshr i32 %2545, 31
  %2578 = xor i32 %2573, %2576
  %2579 = xor i32 %2573, %2577
  %2580 = add i32 %2578, %2579
  %2581 = icmp eq i32 %2580, 2
  %2582 = zext i1 %2581 to i8
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2582, i8* %2583, align 1
  store %struct.Memory* %loadMem_4298b1, %struct.Memory** %MEMORY
  %loadMem_4298b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 33
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2586 to i64*
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 5
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %ECX.i695 = bitcast %union.anon* %2589 to i32*
  %2590 = load i32, i32* %ECX.i695
  %2591 = zext i32 %2590 to i64
  %2592 = load i64, i64* %PC.i694
  %2593 = add i64 %2592, 3
  store i64 %2593, i64* %PC.i694
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2594, align 1
  %2595 = and i32 %2590, 255
  %2596 = call i32 @llvm.ctpop.i32(i32 %2595)
  %2597 = trunc i32 %2596 to i8
  %2598 = and i8 %2597, 1
  %2599 = xor i8 %2598, 1
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2599, i8* %2600, align 1
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2601, align 1
  %2602 = icmp eq i32 %2590, 0
  %2603 = zext i1 %2602 to i8
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2603, i8* %2604, align 1
  %2605 = lshr i32 %2590, 31
  %2606 = trunc i32 %2605 to i8
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2606, i8* %2607, align 1
  %2608 = lshr i32 %2590, 31
  %2609 = xor i32 %2605, %2608
  %2610 = add i32 %2609, %2608
  %2611 = icmp eq i32 %2610, 2
  %2612 = zext i1 %2611 to i8
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2612, i8* %2613, align 1
  store %struct.Memory* %loadMem_4298b3, %struct.Memory** %MEMORY
  %loadMem_4298b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 33
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %2616 to i64*
  %2617 = load i64, i64* %PC.i693
  %2618 = add i64 %2617, 16
  %2619 = load i64, i64* %PC.i693
  %2620 = add i64 %2619, 6
  %2621 = load i64, i64* %PC.i693
  %2622 = add i64 %2621, 6
  store i64 %2622, i64* %PC.i693
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2624 = load i8, i8* %2623, align 1
  %2625 = icmp eq i8 %2624, 0
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2627 = load i8, i8* %2626, align 1
  %2628 = icmp ne i8 %2627, 0
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2630 = load i8, i8* %2629, align 1
  %2631 = icmp ne i8 %2630, 0
  %2632 = xor i1 %2628, %2631
  %2633 = xor i1 %2632, true
  %2634 = and i1 %2625, %2633
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %BRANCH_TAKEN, align 1
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2637 = select i1 %2634, i64 %2618, i64 %2620
  store i64 %2637, i64* %2636, align 8
  store %struct.Memory* %loadMem_4298b6, %struct.Memory** %MEMORY
  %loadBr_4298b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4298b6 = icmp eq i8 %loadBr_4298b6, 1
  br i1 %cmpBr_4298b6, label %block_.L_4298c6, label %block_4298bc

block_4298bc:                                     ; preds = %block_429893
  %loadMem_4298bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 33
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 15
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %RBP.i692 = bitcast %union.anon* %2643 to i64*
  %2644 = load i64, i64* %RBP.i692
  %2645 = sub i64 %2644, 68
  %2646 = load i64, i64* %PC.i691
  %2647 = add i64 %2646, 4
  store i64 %2647, i64* %PC.i691
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
  store %struct.Memory* %loadMem_4298bc, %struct.Memory** %MEMORY
  %loadMem_4298c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2680 to i64*
  %2681 = load i64, i64* %PC.i690
  %2682 = add i64 %2681, 258
  %2683 = load i64, i64* %PC.i690
  %2684 = add i64 %2683, 6
  %2685 = load i64, i64* %PC.i690
  %2686 = add i64 %2685, 6
  store i64 %2686, i64* %PC.i690
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2688 = load i8, i8* %2687, align 1
  %2689 = icmp eq i8 %2688, 0
  %2690 = zext i1 %2689 to i8
  store i8 %2690, i8* %BRANCH_TAKEN, align 1
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2692 = select i1 %2689, i64 %2682, i64 %2684
  store i64 %2692, i64* %2691, align 8
  store %struct.Memory* %loadMem_4298c0, %struct.Memory** %MEMORY
  %loadBr_4298c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4298c0 = icmp eq i8 %loadBr_4298c0, 1
  br i1 %cmpBr_4298c0, label %block_.L_4299c2, label %block_.L_4298c6

block_.L_4298c6:                                  ; preds = %block_4298bc, %block_429893
  %loadMem_4298c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 33
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 1
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %2698 to i64*
  %2699 = load i64, i64* %PC.i688
  %2700 = add i64 %2699, 5
  store i64 %2700, i64* %PC.i688
  store i64 4096, i64* %RAX.i689, align 8
  store %struct.Memory* %loadMem_4298c6, %struct.Memory** %MEMORY
  %loadMem_4298cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 5
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RCX.i686 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 15
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %RBP.i687
  %2711 = sub i64 %2710, 24
  %2712 = load i64, i64* %PC.i685
  %2713 = add i64 %2712, 4
  store i64 %2713, i64* %PC.i685
  %2714 = inttoptr i64 %2711 to i64*
  %2715 = load i64, i64* %2714
  store i64 %2715, i64* %RCX.i686, align 8
  store %struct.Memory* %loadMem_4298cb, %struct.Memory** %MEMORY
  %loadMem_4298cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 33
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2718 to i64*
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 7
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %RDX.i683 = bitcast %union.anon* %2721 to i64*
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 15
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %2724 to i64*
  %2725 = load i64, i64* %RBP.i684
  %2726 = sub i64 %2725, 44
  %2727 = load i64, i64* %PC.i682
  %2728 = add i64 %2727, 4
  store i64 %2728, i64* %PC.i682
  %2729 = inttoptr i64 %2726 to i32*
  %2730 = load i32, i32* %2729
  %2731 = sext i32 %2730 to i64
  store i64 %2731, i64* %RDX.i683, align 8
  store %struct.Memory* %loadMem_4298cf, %struct.Memory** %MEMORY
  %loadMem_4298d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 5
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RCX.i679 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 7
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RDX.i680 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 9
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RSI.i681 = bitcast %union.anon* %2743 to i64*
  %2744 = load i64, i64* %RCX.i679
  %2745 = load i64, i64* %RDX.i680
  %2746 = mul i64 %2745, 4
  %2747 = add i64 %2746, %2744
  %2748 = load i64, i64* %PC.i678
  %2749 = add i64 %2748, 3
  store i64 %2749, i64* %PC.i678
  %2750 = inttoptr i64 %2747 to i32*
  %2751 = load i32, i32* %2750
  %2752 = zext i32 %2751 to i64
  store i64 %2752, i64* %RSI.i681, align 8
  store %struct.Memory* %loadMem_4298d3, %struct.Memory** %MEMORY
  %loadMem_4298d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2755 to i64*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 9
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %ESI.i676 = bitcast %union.anon* %2758 to i32*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 15
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %RBP.i677
  %2763 = sub i64 %2762, 92
  %2764 = load i32, i32* %ESI.i676
  %2765 = zext i32 %2764 to i64
  %2766 = load i64, i64* %PC.i675
  %2767 = add i64 %2766, 3
  store i64 %2767, i64* %PC.i675
  %2768 = inttoptr i64 %2763 to i32*
  store i32 %2764, i32* %2768
  store %struct.Memory* %loadMem_4298d6, %struct.Memory** %MEMORY
  %loadMem_4298d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 9
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RSI.i673 = bitcast %union.anon* %2774 to i64*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 15
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %2777 to i64*
  %2778 = load i64, i64* %RBP.i674
  %2779 = sub i64 %2778, 76
  %2780 = load i64, i64* %PC.i672
  %2781 = add i64 %2780, 3
  store i64 %2781, i64* %PC.i672
  %2782 = inttoptr i64 %2779 to i32*
  %2783 = load i32, i32* %2782
  %2784 = zext i32 %2783 to i64
  store i64 %2784, i64* %RSI.i673, align 8
  store %struct.Memory* %loadMem_4298d9, %struct.Memory** %MEMORY
  %loadMem_4298dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 9
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RSI.i670 = bitcast %union.anon* %2790 to i64*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 15
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %2793 to i64*
  %2794 = load i64, i64* %RSI.i670
  %2795 = load i64, i64* %RBP.i671
  %2796 = sub i64 %2795, 92
  %2797 = load i64, i64* %PC.i669
  %2798 = add i64 %2797, 4
  store i64 %2798, i64* %PC.i669
  %2799 = inttoptr i64 %2796 to i32*
  %2800 = load i32, i32* %2799
  %2801 = shl i64 %2794, 32
  %2802 = ashr exact i64 %2801, 32
  %2803 = sext i32 %2800 to i64
  %2804 = mul i64 %2803, %2802
  %2805 = trunc i64 %2804 to i32
  %2806 = and i64 %2804, 4294967295
  store i64 %2806, i64* %RSI.i670, align 8
  %2807 = shl i64 %2804, 32
  %2808 = ashr exact i64 %2807, 32
  %2809 = icmp ne i64 %2808, %2804
  %2810 = zext i1 %2809 to i8
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2810, i8* %2811, align 1
  %2812 = and i32 %2805, 255
  %2813 = call i32 @llvm.ctpop.i32(i32 %2812)
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  %2816 = xor i8 %2815, 1
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2816, i8* %2817, align 1
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2818, align 1
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2819, align 1
  %2820 = lshr i32 %2805, 31
  %2821 = trunc i32 %2820 to i8
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2821, i8* %2822, align 1
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2810, i8* %2823, align 1
  store %struct.Memory* %loadMem_4298dc, %struct.Memory** %MEMORY
  %loadMem_4298e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 1
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %EAX.i667 = bitcast %union.anon* %2829 to i32*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 15
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %2832 to i64*
  %2833 = load i64, i64* %RBP.i668
  %2834 = sub i64 %2833, 120
  %2835 = load i32, i32* %EAX.i667
  %2836 = zext i32 %2835 to i64
  %2837 = load i64, i64* %PC.i666
  %2838 = add i64 %2837, 3
  store i64 %2838, i64* %PC.i666
  %2839 = inttoptr i64 %2834 to i32*
  store i32 %2835, i32* %2839
  store %struct.Memory* %loadMem_4298e0, %struct.Memory** %MEMORY
  %loadMem_4298e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 33
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 9
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %ESI.i664 = bitcast %union.anon* %2845 to i32*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 1
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RAX.i665 = bitcast %union.anon* %2848 to i64*
  %2849 = load i32, i32* %ESI.i664
  %2850 = zext i32 %2849 to i64
  %2851 = load i64, i64* %PC.i663
  %2852 = add i64 %2851, 2
  store i64 %2852, i64* %PC.i663
  %2853 = and i64 %2850, 4294967295
  store i64 %2853, i64* %RAX.i665, align 8
  store %struct.Memory* %loadMem_4298e3, %struct.Memory** %MEMORY
  %loadMem_4298e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 33
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %2856 to i64*
  %2857 = load i64, i64* %PC.i662
  %2858 = add i64 %2857, 1
  store i64 %2858, i64* %PC.i662
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2861 = bitcast %union.anon* %2860 to i32*
  %2862 = load i32, i32* %2861, align 8
  %2863 = sext i32 %2862 to i64
  %2864 = lshr i64 %2863, 32
  store i64 %2864, i64* %2859, align 8
  store %struct.Memory* %loadMem_4298e5, %struct.Memory** %MEMORY
  %loadMem_4298e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 33
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2867 to i64*
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 9
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %RSI.i660 = bitcast %union.anon* %2870 to i64*
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 15
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %2873 to i64*
  %2874 = load i64, i64* %RBP.i661
  %2875 = sub i64 %2874, 120
  %2876 = load i64, i64* %PC.i659
  %2877 = add i64 %2876, 3
  store i64 %2877, i64* %PC.i659
  %2878 = inttoptr i64 %2875 to i32*
  %2879 = load i32, i32* %2878
  %2880 = zext i32 %2879 to i64
  store i64 %2880, i64* %RSI.i660, align 8
  store %struct.Memory* %loadMem_4298e6, %struct.Memory** %MEMORY
  %loadMem_4298e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 33
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %2883 to i64*
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 9
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %ESI.i655 = bitcast %union.anon* %2886 to i32*
  %2887 = load i32, i32* %ESI.i655
  %2888 = zext i32 %2887 to i64
  %2889 = load i64, i64* %PC.i654
  %2890 = add i64 %2889, 2
  store i64 %2890, i64* %PC.i654
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2892 = bitcast %union.anon* %2891 to i32*
  %2893 = load i32, i32* %2892, align 8
  %2894 = zext i32 %2893 to i64
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2896 = bitcast %union.anon* %2895 to i32*
  %2897 = load i32, i32* %2896, align 8
  %2898 = zext i32 %2897 to i64
  %2899 = shl i64 %2888, 32
  %2900 = ashr exact i64 %2899, 32
  %2901 = shl i64 %2898, 32
  %2902 = or i64 %2901, %2894
  %2903 = sdiv i64 %2902, %2900
  %2904 = shl i64 %2903, 32
  %2905 = ashr exact i64 %2904, 32
  %2906 = icmp eq i64 %2903, %2905
  br i1 %2906, label %2911, label %2907

; <label>:2907:                                   ; preds = %block_.L_4298c6
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2909 = load i64, i64* %2908, align 8
  %2910 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2909, %struct.Memory* %loadMem_4298e9)
  br label %routine_idivl__esi.exit656

; <label>:2911:                                   ; preds = %block_.L_4298c6
  %2912 = srem i64 %2902, %2900
  %2913 = getelementptr inbounds %union.anon, %union.anon* %2891, i64 0, i32 0
  %2914 = and i64 %2903, 4294967295
  store i64 %2914, i64* %2913, align 8
  %2915 = getelementptr inbounds %union.anon, %union.anon* %2895, i64 0, i32 0
  %2916 = and i64 %2912, 4294967295
  store i64 %2916, i64* %2915, align 8
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2917, align 1
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2918, align 1
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2919, align 1
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2920, align 1
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2921, align 1
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2922, align 1
  br label %routine_idivl__esi.exit656

routine_idivl__esi.exit656:                       ; preds = %2907, %2911
  %2923 = phi %struct.Memory* [ %2910, %2907 ], [ %loadMem_4298e9, %2911 ]
  store %struct.Memory* %2923, %struct.Memory** %MEMORY
  %loadMem_4298eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2926 to i64*
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 1
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %EAX.i652 = bitcast %union.anon* %2929 to i32*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 15
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %2932 to i64*
  %2933 = load i64, i64* %RBP.i653
  %2934 = sub i64 %2933, 88
  %2935 = load i32, i32* %EAX.i652
  %2936 = zext i32 %2935 to i64
  %2937 = load i64, i64* %PC.i651
  %2938 = add i64 %2937, 3
  store i64 %2938, i64* %PC.i651
  %2939 = inttoptr i64 %2934 to i32*
  store i32 %2935, i32* %2939
  store %struct.Memory* %loadMem_4298eb, %struct.Memory** %MEMORY
  %loadMem_4298ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 33
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2942 to i64*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 15
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %2945 to i64*
  %2946 = load i64, i64* %RBP.i650
  %2947 = sub i64 %2946, 68
  %2948 = load i64, i64* %PC.i649
  %2949 = add i64 %2948, 4
  store i64 %2949, i64* %PC.i649
  %2950 = inttoptr i64 %2947 to i32*
  %2951 = load i32, i32* %2950
  %2952 = sub i32 %2951, 1
  %2953 = icmp ult i32 %2951, 1
  %2954 = zext i1 %2953 to i8
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2954, i8* %2955, align 1
  %2956 = and i32 %2952, 255
  %2957 = call i32 @llvm.ctpop.i32(i32 %2956)
  %2958 = trunc i32 %2957 to i8
  %2959 = and i8 %2958, 1
  %2960 = xor i8 %2959, 1
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2960, i8* %2961, align 1
  %2962 = xor i32 %2951, 1
  %2963 = xor i32 %2962, %2952
  %2964 = lshr i32 %2963, 4
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2966, i8* %2967, align 1
  %2968 = icmp eq i32 %2952, 0
  %2969 = zext i1 %2968 to i8
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2969, i8* %2970, align 1
  %2971 = lshr i32 %2952, 31
  %2972 = trunc i32 %2971 to i8
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2972, i8* %2973, align 1
  %2974 = lshr i32 %2951, 31
  %2975 = xor i32 %2971, %2974
  %2976 = add i32 %2975, %2974
  %2977 = icmp eq i32 %2976, 2
  %2978 = zext i1 %2977 to i8
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2978, i8* %2979, align 1
  store %struct.Memory* %loadMem_4298ee, %struct.Memory** %MEMORY
  %loadMem_4298f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2982 to i64*
  %2983 = load i64, i64* %PC.i648
  %2984 = add i64 %2983, 81
  %2985 = load i64, i64* %PC.i648
  %2986 = add i64 %2985, 6
  %2987 = load i64, i64* %PC.i648
  %2988 = add i64 %2987, 6
  store i64 %2988, i64* %PC.i648
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2990 = load i8, i8* %2989, align 1
  store i8 %2990, i8* %BRANCH_TAKEN, align 1
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2992 = icmp ne i8 %2990, 0
  %2993 = select i1 %2992, i64 %2984, i64 %2986
  store i64 %2993, i64* %2991, align 8
  store %struct.Memory* %loadMem_4298f2, %struct.Memory** %MEMORY
  %loadBr_4298f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4298f2 = icmp eq i8 %loadBr_4298f2, 1
  br i1 %cmpBr_4298f2, label %block_.L_429943, label %block_4298f8

block_4298f8:                                     ; preds = %routine_idivl__esi.exit656
  %loadMem_4298f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 33
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 1
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %2999 to i64*
  %3000 = load i64, i64* %PC.i646
  %3001 = add i64 %3000, 5
  store i64 %3001, i64* %PC.i646
  store i64 4096, i64* %RAX.i647, align 8
  store %struct.Memory* %loadMem_4298f8, %struct.Memory** %MEMORY
  %loadMem_4298fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 33
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 5
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RCX.i644 = bitcast %union.anon* %3007 to i64*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 15
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %3010 to i64*
  %3011 = load i64, i64* %RBP.i645
  %3012 = sub i64 %3011, 60
  %3013 = load i64, i64* %PC.i643
  %3014 = add i64 %3013, 4
  store i64 %3014, i64* %PC.i643
  %3015 = inttoptr i64 %3012 to i32*
  %3016 = load i32, i32* %3015
  %3017 = sext i32 %3016 to i64
  store i64 %3017, i64* %RCX.i644, align 8
  store %struct.Memory* %loadMem_4298fd, %struct.Memory** %MEMORY
  %loadMem_429901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 33
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 5
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %RCX.i641 = bitcast %union.anon* %3023 to i64*
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 7
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %RDX.i642 = bitcast %union.anon* %3026 to i64*
  %3027 = load i64, i64* %RCX.i641
  %3028 = mul i64 %3027, 4
  %3029 = add i64 %3028, 8053104
  %3030 = load i64, i64* %PC.i640
  %3031 = add i64 %3030, 7
  store i64 %3031, i64* %PC.i640
  %3032 = inttoptr i64 %3029 to i32*
  %3033 = load i32, i32* %3032
  %3034 = zext i32 %3033 to i64
  store i64 %3034, i64* %RDX.i642, align 8
  store %struct.Memory* %loadMem_429901, %struct.Memory** %MEMORY
  %loadMem_429908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 33
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %3037 to i64*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 7
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %RDX.i638 = bitcast %union.anon* %3040 to i64*
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 15
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %RBP.i639 = bitcast %union.anon* %3043 to i64*
  %3044 = load i64, i64* %RDX.i638
  %3045 = load i64, i64* %RBP.i639
  %3046 = sub i64 %3045, 80
  %3047 = load i64, i64* %PC.i637
  %3048 = add i64 %3047, 4
  store i64 %3048, i64* %PC.i637
  %3049 = inttoptr i64 %3046 to i32*
  %3050 = load i32, i32* %3049
  %3051 = shl i64 %3044, 32
  %3052 = ashr exact i64 %3051, 32
  %3053 = sext i32 %3050 to i64
  %3054 = mul i64 %3053, %3052
  %3055 = trunc i64 %3054 to i32
  %3056 = and i64 %3054, 4294967295
  store i64 %3056, i64* %RDX.i638, align 8
  %3057 = shl i64 %3054, 32
  %3058 = ashr exact i64 %3057, 32
  %3059 = icmp ne i64 %3058, %3054
  %3060 = zext i1 %3059 to i8
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3060, i8* %3061, align 1
  %3062 = and i32 %3055, 255
  %3063 = call i32 @llvm.ctpop.i32(i32 %3062)
  %3064 = trunc i32 %3063 to i8
  %3065 = and i8 %3064, 1
  %3066 = xor i8 %3065, 1
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3066, i8* %3067, align 1
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3068, align 1
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3069, align 1
  %3070 = lshr i32 %3055, 31
  %3071 = trunc i32 %3070 to i8
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3071, i8* %3072, align 1
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3060, i8* %3073, align 1
  store %struct.Memory* %loadMem_429908, %struct.Memory** %MEMORY
  %loadMem_42990c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 33
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 5
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %RCX.i635 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 15
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %3082 to i64*
  %3083 = load i64, i64* %RBP.i636
  %3084 = sub i64 %3083, 60
  %3085 = load i64, i64* %PC.i634
  %3086 = add i64 %3085, 4
  store i64 %3086, i64* %PC.i634
  %3087 = inttoptr i64 %3084 to i32*
  %3088 = load i32, i32* %3087
  %3089 = sext i32 %3088 to i64
  store i64 %3089, i64* %RCX.i635, align 8
  store %struct.Memory* %loadMem_42990c, %struct.Memory** %MEMORY
  %loadMem_429910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 5
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RCX.i632 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 9
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RSI.i633 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RCX.i632
  %3100 = mul i64 %3099, 4
  %3101 = add i64 %3100, 8053136
  %3102 = load i64, i64* %PC.i631
  %3103 = add i64 %3102, 7
  store i64 %3103, i64* %PC.i631
  %3104 = inttoptr i64 %3101 to i32*
  %3105 = load i32, i32* %3104
  %3106 = zext i32 %3105 to i64
  store i64 %3106, i64* %RSI.i633, align 8
  store %struct.Memory* %loadMem_429910, %struct.Memory** %MEMORY
  %loadMem_429917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 33
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 9
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RSI.i629 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 15
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %3115 to i64*
  %3116 = load i64, i64* %RSI.i629
  %3117 = load i64, i64* %RBP.i630
  %3118 = sub i64 %3117, 84
  %3119 = load i64, i64* %PC.i628
  %3120 = add i64 %3119, 4
  store i64 %3120, i64* %PC.i628
  %3121 = inttoptr i64 %3118 to i32*
  %3122 = load i32, i32* %3121
  %3123 = shl i64 %3116, 32
  %3124 = ashr exact i64 %3123, 32
  %3125 = sext i32 %3122 to i64
  %3126 = mul i64 %3125, %3124
  %3127 = trunc i64 %3126 to i32
  %3128 = and i64 %3126, 4294967295
  store i64 %3128, i64* %RSI.i629, align 8
  %3129 = shl i64 %3126, 32
  %3130 = ashr exact i64 %3129, 32
  %3131 = icmp ne i64 %3130, %3126
  %3132 = zext i1 %3131 to i8
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3132, i8* %3133, align 1
  %3134 = and i32 %3127, 255
  %3135 = call i32 @llvm.ctpop.i32(i32 %3134)
  %3136 = trunc i32 %3135 to i8
  %3137 = and i8 %3136, 1
  %3138 = xor i8 %3137, 1
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3138, i8* %3139, align 1
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3140, align 1
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3141, align 1
  %3142 = lshr i32 %3127, 31
  %3143 = trunc i32 %3142 to i8
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3143, i8* %3144, align 1
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3132, i8* %3145, align 1
  store %struct.Memory* %loadMem_429917, %struct.Memory** %MEMORY
  %loadMem_42991b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 33
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 9
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %ESI.i626 = bitcast %union.anon* %3151 to i32*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 7
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %RDX.i627 = bitcast %union.anon* %3154 to i64*
  %3155 = load i64, i64* %RDX.i627
  %3156 = load i32, i32* %ESI.i626
  %3157 = zext i32 %3156 to i64
  %3158 = load i64, i64* %PC.i625
  %3159 = add i64 %3158, 2
  store i64 %3159, i64* %PC.i625
  %3160 = trunc i64 %3155 to i32
  %3161 = add i32 %3156, %3160
  %3162 = zext i32 %3161 to i64
  store i64 %3162, i64* %RDX.i627, align 8
  %3163 = icmp ult i32 %3161, %3160
  %3164 = icmp ult i32 %3161, %3156
  %3165 = or i1 %3163, %3164
  %3166 = zext i1 %3165 to i8
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3166, i8* %3167, align 1
  %3168 = and i32 %3161, 255
  %3169 = call i32 @llvm.ctpop.i32(i32 %3168)
  %3170 = trunc i32 %3169 to i8
  %3171 = and i8 %3170, 1
  %3172 = xor i8 %3171, 1
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3172, i8* %3173, align 1
  %3174 = xor i64 %3157, %3155
  %3175 = trunc i64 %3174 to i32
  %3176 = xor i32 %3175, %3161
  %3177 = lshr i32 %3176, 4
  %3178 = trunc i32 %3177 to i8
  %3179 = and i8 %3178, 1
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3179, i8* %3180, align 1
  %3181 = icmp eq i32 %3161, 0
  %3182 = zext i1 %3181 to i8
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3182, i8* %3183, align 1
  %3184 = lshr i32 %3161, 31
  %3185 = trunc i32 %3184 to i8
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3185, i8* %3186, align 1
  %3187 = lshr i32 %3160, 31
  %3188 = lshr i32 %3156, 31
  %3189 = xor i32 %3184, %3187
  %3190 = xor i32 %3184, %3188
  %3191 = add i32 %3189, %3190
  %3192 = icmp eq i32 %3191, 2
  %3193 = zext i1 %3192 to i8
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3193, i8* %3194, align 1
  store %struct.Memory* %loadMem_42991b, %struct.Memory** %MEMORY
  %loadMem_42991d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 33
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 7
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %EDX.i623 = bitcast %union.anon* %3200 to i32*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 15
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %3203 to i64*
  %3204 = load i64, i64* %RBP.i624
  %3205 = sub i64 %3204, 96
  %3206 = load i32, i32* %EDX.i623
  %3207 = zext i32 %3206 to i64
  %3208 = load i64, i64* %PC.i622
  %3209 = add i64 %3208, 3
  store i64 %3209, i64* %PC.i622
  %3210 = inttoptr i64 %3205 to i32*
  store i32 %3206, i32* %3210
  store %struct.Memory* %loadMem_42991d, %struct.Memory** %MEMORY
  %loadMem_429920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 33
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 7
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RDX.i620 = bitcast %union.anon* %3216 to i64*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 15
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %3219 to i64*
  %3220 = load i64, i64* %RBP.i621
  %3221 = sub i64 %3220, 96
  %3222 = load i64, i64* %PC.i619
  %3223 = add i64 %3222, 3
  store i64 %3223, i64* %PC.i619
  %3224 = inttoptr i64 %3221 to i32*
  %3225 = load i32, i32* %3224
  %3226 = zext i32 %3225 to i64
  store i64 %3226, i64* %RDX.i620, align 8
  store %struct.Memory* %loadMem_429920, %struct.Memory** %MEMORY
  %loadMem_429923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 33
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %3229 to i64*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 7
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %RDX.i617 = bitcast %union.anon* %3232 to i64*
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 15
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %3235 to i64*
  %3236 = load i64, i64* %RDX.i617
  %3237 = load i64, i64* %RBP.i618
  %3238 = sub i64 %3237, 96
  %3239 = load i64, i64* %PC.i616
  %3240 = add i64 %3239, 4
  store i64 %3240, i64* %PC.i616
  %3241 = inttoptr i64 %3238 to i32*
  %3242 = load i32, i32* %3241
  %3243 = shl i64 %3236, 32
  %3244 = ashr exact i64 %3243, 32
  %3245 = sext i32 %3242 to i64
  %3246 = mul i64 %3245, %3244
  %3247 = trunc i64 %3246 to i32
  %3248 = and i64 %3246, 4294967295
  store i64 %3248, i64* %RDX.i617, align 8
  %3249 = shl i64 %3246, 32
  %3250 = ashr exact i64 %3249, 32
  %3251 = icmp ne i64 %3250, %3246
  %3252 = zext i1 %3251 to i8
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3252, i8* %3253, align 1
  %3254 = and i32 %3247, 255
  %3255 = call i32 @llvm.ctpop.i32(i32 %3254)
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  %3258 = xor i8 %3257, 1
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3258, i8* %3259, align 1
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3260, align 1
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3261, align 1
  %3262 = lshr i32 %3247, 31
  %3263 = trunc i32 %3262 to i8
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3263, i8* %3264, align 1
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3252, i8* %3265, align 1
  store %struct.Memory* %loadMem_429923, %struct.Memory** %MEMORY
  %loadMem_429927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 33
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3268 to i64*
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 7
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %RDX.i614 = bitcast %union.anon* %3271 to i64*
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 15
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %3274 to i64*
  %3275 = load i64, i64* %RDX.i614
  %3276 = load i64, i64* %RBP.i615
  %3277 = sub i64 %3276, 88
  %3278 = load i64, i64* %PC.i613
  %3279 = add i64 %3278, 4
  store i64 %3279, i64* %PC.i613
  %3280 = inttoptr i64 %3277 to i32*
  %3281 = load i32, i32* %3280
  %3282 = shl i64 %3275, 32
  %3283 = ashr exact i64 %3282, 32
  %3284 = sext i32 %3281 to i64
  %3285 = mul i64 %3284, %3283
  %3286 = trunc i64 %3285 to i32
  %3287 = and i64 %3285, 4294967295
  store i64 %3287, i64* %RDX.i614, align 8
  %3288 = shl i64 %3285, 32
  %3289 = ashr exact i64 %3288, 32
  %3290 = icmp ne i64 %3289, %3285
  %3291 = zext i1 %3290 to i8
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3291, i8* %3292, align 1
  %3293 = and i32 %3286, 255
  %3294 = call i32 @llvm.ctpop.i32(i32 %3293)
  %3295 = trunc i32 %3294 to i8
  %3296 = and i8 %3295, 1
  %3297 = xor i8 %3296, 1
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3297, i8* %3298, align 1
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3299, align 1
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3300, align 1
  %3301 = lshr i32 %3286, 31
  %3302 = trunc i32 %3301 to i8
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3302, i8* %3303, align 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3291, i8* %3304, align 1
  store %struct.Memory* %loadMem_429927, %struct.Memory** %MEMORY
  %loadMem_42992b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 7
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %EDX.i611 = bitcast %union.anon* %3310 to i32*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 15
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %RBP.i612
  %3315 = sub i64 %3314, 88
  %3316 = load i32, i32* %EDX.i611
  %3317 = zext i32 %3316 to i64
  %3318 = load i64, i64* %PC.i610
  %3319 = add i64 %3318, 3
  store i64 %3319, i64* %PC.i610
  %3320 = inttoptr i64 %3315 to i32*
  store i32 %3316, i32* %3320
  store %struct.Memory* %loadMem_42992b, %struct.Memory** %MEMORY
  %loadMem_42992e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 7
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RDX.i608 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 15
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %3329 to i64*
  %3330 = load i64, i64* %RBP.i609
  %3331 = sub i64 %3330, 64
  %3332 = load i64, i64* %PC.i607
  %3333 = add i64 %3332, 3
  store i64 %3333, i64* %PC.i607
  %3334 = inttoptr i64 %3331 to i32*
  %3335 = load i32, i32* %3334
  %3336 = zext i32 %3335 to i64
  store i64 %3336, i64* %RDX.i608, align 8
  store %struct.Memory* %loadMem_42992e, %struct.Memory** %MEMORY
  %loadMem_429931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 33
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %3339 to i64*
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 7
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %RDX.i605 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 15
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %3345 to i64*
  %3346 = load i64, i64* %RDX.i605
  %3347 = load i64, i64* %RBP.i606
  %3348 = sub i64 %3347, 88
  %3349 = load i64, i64* %PC.i604
  %3350 = add i64 %3349, 4
  store i64 %3350, i64* %PC.i604
  %3351 = inttoptr i64 %3348 to i32*
  %3352 = load i32, i32* %3351
  %3353 = shl i64 %3346, 32
  %3354 = ashr exact i64 %3353, 32
  %3355 = sext i32 %3352 to i64
  %3356 = mul i64 %3355, %3354
  %3357 = trunc i64 %3356 to i32
  %3358 = and i64 %3356, 4294967295
  store i64 %3358, i64* %RDX.i605, align 8
  %3359 = shl i64 %3356, 32
  %3360 = ashr exact i64 %3359, 32
  %3361 = icmp ne i64 %3360, %3356
  %3362 = zext i1 %3361 to i8
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3362, i8* %3363, align 1
  %3364 = and i32 %3357, 255
  %3365 = call i32 @llvm.ctpop.i32(i32 %3364)
  %3366 = trunc i32 %3365 to i8
  %3367 = and i8 %3366, 1
  %3368 = xor i8 %3367, 1
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3368, i8* %3369, align 1
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3370, align 1
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3371, align 1
  %3372 = lshr i32 %3357, 31
  %3373 = trunc i32 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3373, i8* %3374, align 1
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3362, i8* %3375, align 1
  store %struct.Memory* %loadMem_429931, %struct.Memory** %MEMORY
  %loadMem_429935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 33
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %3378 to i64*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 1
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %EAX.i602 = bitcast %union.anon* %3381 to i32*
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 15
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %3384 to i64*
  %3385 = load i64, i64* %RBP.i603
  %3386 = sub i64 %3385, 124
  %3387 = load i32, i32* %EAX.i602
  %3388 = zext i32 %3387 to i64
  %3389 = load i64, i64* %PC.i601
  %3390 = add i64 %3389, 3
  store i64 %3390, i64* %PC.i601
  %3391 = inttoptr i64 %3386 to i32*
  store i32 %3387, i32* %3391
  store %struct.Memory* %loadMem_429935, %struct.Memory** %MEMORY
  %loadMem_429938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 33
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 7
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %EDX.i599 = bitcast %union.anon* %3397 to i32*
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 1
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %RAX.i600 = bitcast %union.anon* %3400 to i64*
  %3401 = load i32, i32* %EDX.i599
  %3402 = zext i32 %3401 to i64
  %3403 = load i64, i64* %PC.i598
  %3404 = add i64 %3403, 2
  store i64 %3404, i64* %PC.i598
  %3405 = and i64 %3402, 4294967295
  store i64 %3405, i64* %RAX.i600, align 8
  store %struct.Memory* %loadMem_429938, %struct.Memory** %MEMORY
  %loadMem_42993a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 33
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3408 to i64*
  %3409 = load i64, i64* %PC.i597
  %3410 = add i64 %3409, 1
  store i64 %3410, i64* %PC.i597
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3413 = bitcast %union.anon* %3412 to i32*
  %3414 = load i32, i32* %3413, align 8
  %3415 = sext i32 %3414 to i64
  %3416 = lshr i64 %3415, 32
  store i64 %3416, i64* %3411, align 8
  store %struct.Memory* %loadMem_42993a, %struct.Memory** %MEMORY
  %loadMem_42993b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 33
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3419 to i64*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 9
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %RSI.i595 = bitcast %union.anon* %3422 to i64*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 15
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %3425 to i64*
  %3426 = load i64, i64* %RBP.i596
  %3427 = sub i64 %3426, 124
  %3428 = load i64, i64* %PC.i594
  %3429 = add i64 %3428, 3
  store i64 %3429, i64* %PC.i594
  %3430 = inttoptr i64 %3427 to i32*
  %3431 = load i32, i32* %3430
  %3432 = zext i32 %3431 to i64
  store i64 %3432, i64* %RSI.i595, align 8
  store %struct.Memory* %loadMem_42993b, %struct.Memory** %MEMORY
  %loadMem_42993e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 33
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 9
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %ESI.i590 = bitcast %union.anon* %3438 to i32*
  %3439 = load i32, i32* %ESI.i590
  %3440 = zext i32 %3439 to i64
  %3441 = load i64, i64* %PC.i589
  %3442 = add i64 %3441, 2
  store i64 %3442, i64* %PC.i589
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3444 = bitcast %union.anon* %3443 to i32*
  %3445 = load i32, i32* %3444, align 8
  %3446 = zext i32 %3445 to i64
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3448 = bitcast %union.anon* %3447 to i32*
  %3449 = load i32, i32* %3448, align 8
  %3450 = zext i32 %3449 to i64
  %3451 = shl i64 %3440, 32
  %3452 = ashr exact i64 %3451, 32
  %3453 = shl i64 %3450, 32
  %3454 = or i64 %3453, %3446
  %3455 = sdiv i64 %3454, %3452
  %3456 = shl i64 %3455, 32
  %3457 = ashr exact i64 %3456, 32
  %3458 = icmp eq i64 %3455, %3457
  br i1 %3458, label %3463, label %3459

; <label>:3459:                                   ; preds = %block_4298f8
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3461 = load i64, i64* %3460, align 8
  %3462 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3461, %struct.Memory* %loadMem_42993e)
  br label %routine_idivl__esi.exit591

; <label>:3463:                                   ; preds = %block_4298f8
  %3464 = srem i64 %3454, %3452
  %3465 = getelementptr inbounds %union.anon, %union.anon* %3443, i64 0, i32 0
  %3466 = and i64 %3455, 4294967295
  store i64 %3466, i64* %3465, align 8
  %3467 = getelementptr inbounds %union.anon, %union.anon* %3447, i64 0, i32 0
  %3468 = and i64 %3464, 4294967295
  store i64 %3468, i64* %3467, align 8
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3469, align 1
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3470, align 1
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3471, align 1
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3472, align 1
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3473, align 1
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3474, align 1
  br label %routine_idivl__esi.exit591

routine_idivl__esi.exit591:                       ; preds = %3459, %3463
  %3475 = phi %struct.Memory* [ %3462, %3459 ], [ %loadMem_42993e, %3463 ]
  store %struct.Memory* %3475, %struct.Memory** %MEMORY
  %loadMem_429940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 33
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %3478 to i64*
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 1
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %EAX.i587 = bitcast %union.anon* %3481 to i32*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 15
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %3484 to i64*
  %3485 = load i64, i64* %RBP.i588
  %3486 = sub i64 %3485, 88
  %3487 = load i32, i32* %EAX.i587
  %3488 = zext i32 %3487 to i64
  %3489 = load i64, i64* %PC.i586
  %3490 = add i64 %3489, 3
  store i64 %3490, i64* %PC.i586
  %3491 = inttoptr i64 %3486 to i32*
  store i32 %3487, i32* %3491
  store %struct.Memory* %loadMem_429940, %struct.Memory** %MEMORY
  br label %block_.L_429943

block_.L_429943:                                  ; preds = %routine_idivl__esi.exit591, %routine_idivl__esi.exit656
  %loadMem_429943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3495, i64 0, i64 0
  %YMM0.i585 = bitcast %union.VectorReg* %3496 to %"class.std::bitset"*
  %3497 = bitcast %"class.std::bitset"* %YMM0.i585 to i8*
  %3498 = load i64, i64* %PC.i584
  %3499 = add i64 %3498, ptrtoint (%G_0xb969d__rip__type* @G_0xb969d__rip_ to i64)
  %3500 = load i64, i64* %PC.i584
  %3501 = add i64 %3500, 8
  store i64 %3501, i64* %PC.i584
  %3502 = inttoptr i64 %3499 to double*
  %3503 = load double, double* %3502
  %3504 = bitcast i8* %3497 to double*
  store double %3503, double* %3504, align 1
  %3505 = getelementptr inbounds i8, i8* %3497, i64 8
  %3506 = bitcast i8* %3505 to double*
  store double 0.000000e+00, double* %3506, align 1
  store %struct.Memory* %loadMem_429943, %struct.Memory** %MEMORY
  %loadMem_42994b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 33
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %3509 to i64*
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 15
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3513, i64 0, i64 1
  %YMM1.i583 = bitcast %union.VectorReg* %3514 to %"class.std::bitset"*
  %3515 = bitcast %"class.std::bitset"* %YMM1.i583 to i8*
  %3516 = load i64, i64* %RBP.i582
  %3517 = sub i64 %3516, 88
  %3518 = load i64, i64* %PC.i581
  %3519 = add i64 %3518, 5
  store i64 %3519, i64* %PC.i581
  %3520 = inttoptr i64 %3517 to i32*
  %3521 = load i32, i32* %3520
  %3522 = sitofp i32 %3521 to double
  %3523 = bitcast i8* %3515 to double*
  store double %3522, double* %3523, align 1
  store %struct.Memory* %loadMem_42994b, %struct.Memory** %MEMORY
  %loadMem_429950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 33
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %3526 to i64*
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3528 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3527, i64 0, i64 0
  %XMM0.i575 = bitcast %union.VectorReg* %3528 to %union.vec128_t*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3530 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3529, i64 0, i64 1
  %XMM1.i576 = bitcast %union.VectorReg* %3530 to %union.vec128_t*
  %3531 = bitcast %union.vec128_t* %XMM0.i575 to i8*
  %3532 = bitcast %union.vec128_t* %XMM1.i576 to i8*
  %3533 = load i64, i64* %PC.i574
  %3534 = add i64 %3533, 4
  store i64 %3534, i64* %PC.i574
  %3535 = bitcast i8* %3531 to double*
  %3536 = load double, double* %3535, align 1
  %3537 = bitcast i8* %3532 to double*
  %3538 = load double, double* %3537, align 1
  %3539 = fcmp uno double %3536, %3538
  br i1 %3539, label %3540, label %3552

; <label>:3540:                                   ; preds = %block_.L_429943
  %3541 = fadd double %3536, %3538
  %3542 = bitcast double %3541 to i64
  %3543 = and i64 %3542, 9221120237041090560
  %3544 = icmp eq i64 %3543, 9218868437227405312
  %3545 = and i64 %3542, 2251799813685247
  %3546 = icmp ne i64 %3545, 0
  %3547 = and i1 %3544, %3546
  br i1 %3547, label %3548, label %3558

; <label>:3548:                                   ; preds = %3540
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3550 = load i64, i64* %3549, align 8
  %3551 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3550, %struct.Memory* %loadMem_429950)
  br label %routine_ucomisd__xmm1___xmm0.exit577

; <label>:3552:                                   ; preds = %block_.L_429943
  %3553 = fcmp ogt double %3536, %3538
  br i1 %3553, label %3558, label %3554

; <label>:3554:                                   ; preds = %3552
  %3555 = fcmp olt double %3536, %3538
  br i1 %3555, label %3558, label %3556

; <label>:3556:                                   ; preds = %3554
  %3557 = fcmp oeq double %3536, %3538
  br i1 %3557, label %3558, label %3565

; <label>:3558:                                   ; preds = %3556, %3554, %3552, %3540
  %3559 = phi i8 [ 0, %3552 ], [ 0, %3554 ], [ 1, %3556 ], [ 1, %3540 ]
  %3560 = phi i8 [ 0, %3552 ], [ 0, %3554 ], [ 0, %3556 ], [ 1, %3540 ]
  %3561 = phi i8 [ 0, %3552 ], [ 1, %3554 ], [ 0, %3556 ], [ 1, %3540 ]
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3559, i8* %3562, align 1
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3560, i8* %3563, align 1
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3561, i8* %3564, align 1
  br label %3565

; <label>:3565:                                   ; preds = %3558, %3556
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3566, align 1
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3567, align 1
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3568, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit577

routine_ucomisd__xmm1___xmm0.exit577:             ; preds = %3548, %3565
  %3569 = phi %struct.Memory* [ %3551, %3548 ], [ %loadMem_429950, %3565 ]
  store %struct.Memory* %3569, %struct.Memory** %MEMORY
  %loadMem_429954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 33
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %3572 to i64*
  %3573 = load i64, i64* %PC.i573
  %3574 = add i64 %3573, 11
  %3575 = load i64, i64* %PC.i573
  %3576 = add i64 %3575, 6
  %3577 = load i64, i64* %PC.i573
  %3578 = add i64 %3577, 6
  store i64 %3578, i64* %PC.i573
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3580 = load i8, i8* %3579, align 1
  store i8 %3580, i8* %BRANCH_TAKEN, align 1
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3582 = icmp ne i8 %3580, 0
  %3583 = select i1 %3582, i64 %3574, i64 %3576
  store i64 %3583, i64* %3581, align 8
  store %struct.Memory* %loadMem_429954, %struct.Memory** %MEMORY
  %loadBr_429954 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429954 = icmp eq i8 %loadBr_429954, 1
  br i1 %cmpBr_429954, label %block_.L_42995f, label %block_42995a

block_42995a:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit577
  %loadMem_42995a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 33
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3586 to i64*
  %3587 = load i64, i64* %PC.i572
  %3588 = add i64 %3587, 109
  %3589 = load i64, i64* %PC.i572
  %3590 = add i64 %3589, 5
  store i64 %3590, i64* %PC.i572
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3588, i64* %3591, align 8
  store %struct.Memory* %loadMem_42995a, %struct.Memory** %MEMORY
  br label %block_.L_4299c7

block_.L_42995f:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit577
  %loadMem_42995f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 33
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 1
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %3597 to i64*
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 15
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %3600 to i64*
  %3601 = load i64, i64* %RBP.i571
  %3602 = sub i64 %3601, 44
  %3603 = load i64, i64* %PC.i569
  %3604 = add i64 %3603, 3
  store i64 %3604, i64* %PC.i569
  %3605 = inttoptr i64 %3602 to i32*
  %3606 = load i32, i32* %3605
  %3607 = zext i32 %3606 to i64
  store i64 %3607, i64* %RAX.i570, align 8
  store %struct.Memory* %loadMem_42995f, %struct.Memory** %MEMORY
  %loadMem_429962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 33
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3610 to i64*
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 5
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %RCX.i567 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 15
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %3616 to i64*
  %3617 = load i64, i64* %RBP.i568
  %3618 = sub i64 %3617, 60
  %3619 = load i64, i64* %PC.i566
  %3620 = add i64 %3619, 4
  store i64 %3620, i64* %PC.i566
  %3621 = inttoptr i64 %3618 to i32*
  %3622 = load i32, i32* %3621
  %3623 = sext i32 %3622 to i64
  store i64 %3623, i64* %RCX.i567, align 8
  store %struct.Memory* %loadMem_429962, %struct.Memory** %MEMORY
  %loadMem_429966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 33
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %3626 to i64*
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 1
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %3629 to i64*
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 5
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %RCX.i565 = bitcast %union.anon* %3632 to i64*
  %3633 = load i64, i64* %RAX.i564
  %3634 = load i64, i64* %RCX.i565
  %3635 = mul i64 %3634, 4
  %3636 = add i64 %3635, 8053168
  %3637 = load i64, i64* %PC.i563
  %3638 = add i64 %3637, 7
  store i64 %3638, i64* %PC.i563
  %3639 = trunc i64 %3633 to i32
  %3640 = inttoptr i64 %3636 to i32*
  %3641 = load i32, i32* %3640
  %3642 = add i32 %3641, %3639
  %3643 = zext i32 %3642 to i64
  store i64 %3643, i64* %RAX.i564, align 8
  %3644 = icmp ult i32 %3642, %3639
  %3645 = icmp ult i32 %3642, %3641
  %3646 = or i1 %3644, %3645
  %3647 = zext i1 %3646 to i8
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3647, i8* %3648, align 1
  %3649 = and i32 %3642, 255
  %3650 = call i32 @llvm.ctpop.i32(i32 %3649)
  %3651 = trunc i32 %3650 to i8
  %3652 = and i8 %3651, 1
  %3653 = xor i8 %3652, 1
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3653, i8* %3654, align 1
  %3655 = xor i32 %3641, %3639
  %3656 = xor i32 %3655, %3642
  %3657 = lshr i32 %3656, 4
  %3658 = trunc i32 %3657 to i8
  %3659 = and i8 %3658, 1
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3659, i8* %3660, align 1
  %3661 = icmp eq i32 %3642, 0
  %3662 = zext i1 %3661 to i8
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3662, i8* %3663, align 1
  %3664 = lshr i32 %3642, 31
  %3665 = trunc i32 %3664 to i8
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3665, i8* %3666, align 1
  %3667 = lshr i32 %3639, 31
  %3668 = lshr i32 %3641, 31
  %3669 = xor i32 %3664, %3667
  %3670 = xor i32 %3664, %3668
  %3671 = add i32 %3669, %3670
  %3672 = icmp eq i32 %3671, 2
  %3673 = zext i1 %3672 to i8
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3673, i8* %3674, align 1
  store %struct.Memory* %loadMem_429966, %struct.Memory** %MEMORY
  %loadMem_42996d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 33
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %3677 to i64*
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 1
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %EAX.i561 = bitcast %union.anon* %3680 to i32*
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 5
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %RCX.i562 = bitcast %union.anon* %3683 to i64*
  %3684 = load i32, i32* %EAX.i561
  %3685 = zext i32 %3684 to i64
  %3686 = load i64, i64* %PC.i560
  %3687 = add i64 %3686, 3
  store i64 %3687, i64* %PC.i560
  %3688 = shl i64 %3685, 32
  %3689 = ashr exact i64 %3688, 32
  store i64 %3689, i64* %RCX.i562, align 8
  store %struct.Memory* %loadMem_42996d, %struct.Memory** %MEMORY
  %loadMem_429970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 33
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3692 to i64*
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 5
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %3695 to i64*
  %3696 = load i64, i64* %RCX.i559
  %3697 = mul i64 %3696, 4
  %3698 = add i64 %3697, 11268976
  %3699 = load i64, i64* %PC.i558
  %3700 = add i64 %3699, 8
  store i64 %3700, i64* %PC.i558
  %3701 = inttoptr i64 %3698 to i32*
  %3702 = load i32, i32* %3701
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3703, align 1
  %3704 = and i32 %3702, 255
  %3705 = call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3708, i8* %3709, align 1
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3710, align 1
  %3711 = icmp eq i32 %3702, 0
  %3712 = zext i1 %3711 to i8
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3712, i8* %3713, align 1
  %3714 = lshr i32 %3702, 31
  %3715 = trunc i32 %3714 to i8
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3715, i8* %3716, align 1
  %3717 = lshr i32 %3702, 31
  %3718 = xor i32 %3714, %3717
  %3719 = add i32 %3718, %3717
  %3720 = icmp eq i32 %3719, 2
  %3721 = zext i1 %3720 to i8
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3721, i8* %3722, align 1
  store %struct.Memory* %loadMem_429970, %struct.Memory** %MEMORY
  %loadMem_429978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 33
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %3725 to i64*
  %3726 = load i64, i64* %PC.i557
  %3727 = add i64 %3726, 40
  %3728 = load i64, i64* %PC.i557
  %3729 = add i64 %3728, 6
  %3730 = load i64, i64* %PC.i557
  %3731 = add i64 %3730, 6
  store i64 %3731, i64* %PC.i557
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3733 = load i8, i8* %3732, align 1
  %3734 = icmp eq i8 %3733, 0
  %3735 = zext i1 %3734 to i8
  store i8 %3735, i8* %BRANCH_TAKEN, align 1
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3737 = select i1 %3734, i64 %3727, i64 %3729
  store i64 %3737, i64* %3736, align 8
  store %struct.Memory* %loadMem_429978, %struct.Memory** %MEMORY
  %loadBr_429978 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429978 = icmp eq i8 %loadBr_429978, 1
  br i1 %cmpBr_429978, label %block_.L_4299a0, label %block_42997e

block_42997e:                                     ; preds = %block_.L_42995f
  %loadMem_42997e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 33
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %3740 to i64*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 1
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %3743 to i64*
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 15
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %3746 to i64*
  %3747 = load i64, i64* %RBP.i556
  %3748 = sub i64 %3747, 44
  %3749 = load i64, i64* %PC.i554
  %3750 = add i64 %3749, 3
  store i64 %3750, i64* %PC.i554
  %3751 = inttoptr i64 %3748 to i32*
  %3752 = load i32, i32* %3751
  %3753 = zext i32 %3752 to i64
  store i64 %3753, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_42997e, %struct.Memory** %MEMORY
  %loadMem_429981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 33
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 5
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 15
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %3762 to i64*
  %3763 = load i64, i64* %RBP.i553
  %3764 = sub i64 %3763, 60
  %3765 = load i64, i64* %PC.i551
  %3766 = add i64 %3765, 4
  store i64 %3766, i64* %PC.i551
  %3767 = inttoptr i64 %3764 to i32*
  %3768 = load i32, i32* %3767
  %3769 = sext i32 %3768 to i64
  store i64 %3769, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_429981, %struct.Memory** %MEMORY
  %loadMem_429985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 33
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3772 to i64*
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 1
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %3775 to i64*
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 5
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %3778 to i64*
  %3779 = load i64, i64* %RAX.i549
  %3780 = load i64, i64* %RCX.i550
  %3781 = mul i64 %3780, 4
  %3782 = add i64 %3781, 8053168
  %3783 = load i64, i64* %PC.i548
  %3784 = add i64 %3783, 7
  store i64 %3784, i64* %PC.i548
  %3785 = trunc i64 %3779 to i32
  %3786 = inttoptr i64 %3782 to i32*
  %3787 = load i32, i32* %3786
  %3788 = add i32 %3787, %3785
  %3789 = zext i32 %3788 to i64
  store i64 %3789, i64* %RAX.i549, align 8
  %3790 = icmp ult i32 %3788, %3785
  %3791 = icmp ult i32 %3788, %3787
  %3792 = or i1 %3790, %3791
  %3793 = zext i1 %3792 to i8
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3793, i8* %3794, align 1
  %3795 = and i32 %3788, 255
  %3796 = call i32 @llvm.ctpop.i32(i32 %3795)
  %3797 = trunc i32 %3796 to i8
  %3798 = and i8 %3797, 1
  %3799 = xor i8 %3798, 1
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3799, i8* %3800, align 1
  %3801 = xor i32 %3787, %3785
  %3802 = xor i32 %3801, %3788
  %3803 = lshr i32 %3802, 4
  %3804 = trunc i32 %3803 to i8
  %3805 = and i8 %3804, 1
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3805, i8* %3806, align 1
  %3807 = icmp eq i32 %3788, 0
  %3808 = zext i1 %3807 to i8
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3808, i8* %3809, align 1
  %3810 = lshr i32 %3788, 31
  %3811 = trunc i32 %3810 to i8
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3811, i8* %3812, align 1
  %3813 = lshr i32 %3785, 31
  %3814 = lshr i32 %3787, 31
  %3815 = xor i32 %3810, %3813
  %3816 = xor i32 %3810, %3814
  %3817 = add i32 %3815, %3816
  %3818 = icmp eq i32 %3817, 2
  %3819 = zext i1 %3818 to i8
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3819, i8* %3820, align 1
  store %struct.Memory* %loadMem_429985, %struct.Memory** %MEMORY
  %loadMem_42998c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 33
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3823 to i64*
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 5
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %RCX.i546 = bitcast %union.anon* %3826 to i64*
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 15
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %3829 to i64*
  %3830 = load i64, i64* %RBP.i547
  %3831 = sub i64 %3830, 72
  %3832 = load i64, i64* %PC.i545
  %3833 = add i64 %3832, 4
  store i64 %3833, i64* %PC.i545
  %3834 = inttoptr i64 %3831 to i32*
  %3835 = load i32, i32* %3834
  %3836 = sext i32 %3835 to i64
  store i64 %3836, i64* %RCX.i546, align 8
  store %struct.Memory* %loadMem_42998c, %struct.Memory** %MEMORY
  %loadMem_429990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 33
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3839 to i64*
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 1
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %EAX.i543 = bitcast %union.anon* %3842 to i32*
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 5
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %3845 to i64*
  %3846 = load i64, i64* %RCX.i544
  %3847 = mul i64 %3846, 4
  %3848 = add i64 %3847, 11270576
  %3849 = load i32, i32* %EAX.i543
  %3850 = zext i32 %3849 to i64
  %3851 = load i64, i64* %PC.i542
  %3852 = add i64 %3851, 7
  store i64 %3852, i64* %PC.i542
  %3853 = inttoptr i64 %3848 to i32*
  store i32 %3849, i32* %3853
  store %struct.Memory* %loadMem_429990, %struct.Memory** %MEMORY
  %loadMem_429997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 33
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3856 to i64*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 1
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %3859 to i64*
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 15
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %3862 to i64*
  %3863 = load i64, i64* %RBP.i541
  %3864 = sub i64 %3863, 72
  %3865 = load i64, i64* %PC.i539
  %3866 = add i64 %3865, 3
  store i64 %3866, i64* %PC.i539
  %3867 = inttoptr i64 %3864 to i32*
  %3868 = load i32, i32* %3867
  %3869 = zext i32 %3868 to i64
  store i64 %3869, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_429997, %struct.Memory** %MEMORY
  %loadMem_42999a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 33
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3872 to i64*
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 1
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %3875 to i64*
  %3876 = load i64, i64* %RAX.i538
  %3877 = load i64, i64* %PC.i537
  %3878 = add i64 %3877, 3
  store i64 %3878, i64* %PC.i537
  %3879 = trunc i64 %3876 to i32
  %3880 = add i32 1, %3879
  %3881 = zext i32 %3880 to i64
  store i64 %3881, i64* %RAX.i538, align 8
  %3882 = icmp ult i32 %3880, %3879
  %3883 = icmp ult i32 %3880, 1
  %3884 = or i1 %3882, %3883
  %3885 = zext i1 %3884 to i8
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3885, i8* %3886, align 1
  %3887 = and i32 %3880, 255
  %3888 = call i32 @llvm.ctpop.i32(i32 %3887)
  %3889 = trunc i32 %3888 to i8
  %3890 = and i8 %3889, 1
  %3891 = xor i8 %3890, 1
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3891, i8* %3892, align 1
  %3893 = xor i64 1, %3876
  %3894 = trunc i64 %3893 to i32
  %3895 = xor i32 %3894, %3880
  %3896 = lshr i32 %3895, 4
  %3897 = trunc i32 %3896 to i8
  %3898 = and i8 %3897, 1
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3898, i8* %3899, align 1
  %3900 = icmp eq i32 %3880, 0
  %3901 = zext i1 %3900 to i8
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3901, i8* %3902, align 1
  %3903 = lshr i32 %3880, 31
  %3904 = trunc i32 %3903 to i8
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3904, i8* %3905, align 1
  %3906 = lshr i32 %3879, 31
  %3907 = xor i32 %3903, %3906
  %3908 = add i32 %3907, %3903
  %3909 = icmp eq i32 %3908, 2
  %3910 = zext i1 %3909 to i8
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3910, i8* %3911, align 1
  store %struct.Memory* %loadMem_42999a, %struct.Memory** %MEMORY
  %loadMem_42999d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 33
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3914 to i64*
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 1
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %EAX.i535 = bitcast %union.anon* %3917 to i32*
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 15
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %3920 to i64*
  %3921 = load i64, i64* %RBP.i536
  %3922 = sub i64 %3921, 72
  %3923 = load i32, i32* %EAX.i535
  %3924 = zext i32 %3923 to i64
  %3925 = load i64, i64* %PC.i534
  %3926 = add i64 %3925, 3
  store i64 %3926, i64* %PC.i534
  %3927 = inttoptr i64 %3922 to i32*
  store i32 %3923, i32* %3927
  store %struct.Memory* %loadMem_42999d, %struct.Memory** %MEMORY
  br label %block_.L_4299a0

block_.L_4299a0:                                  ; preds = %block_42997e, %block_.L_42995f
  %loadMem_4299a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 33
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3930 to i64*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 1
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %RAX.i532 = bitcast %union.anon* %3933 to i64*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 15
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %3936 to i64*
  %3937 = load i64, i64* %RBP.i533
  %3938 = sub i64 %3937, 88
  %3939 = load i64, i64* %PC.i531
  %3940 = add i64 %3939, 3
  store i64 %3940, i64* %PC.i531
  %3941 = inttoptr i64 %3938 to i32*
  %3942 = load i32, i32* %3941
  %3943 = zext i32 %3942 to i64
  store i64 %3943, i64* %RAX.i532, align 8
  store %struct.Memory* %loadMem_4299a0, %struct.Memory** %MEMORY
  %loadMem_4299a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 33
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3946 to i64*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3948 = getelementptr inbounds %struct.GPR, %struct.GPR* %3947, i32 0, i32 5
  %3949 = getelementptr inbounds %struct.Reg, %struct.Reg* %3948, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %3949 to i64*
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 15
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %3952 to i64*
  %3953 = load i64, i64* %RBP.i530
  %3954 = sub i64 %3953, 44
  %3955 = load i64, i64* %PC.i528
  %3956 = add i64 %3955, 3
  store i64 %3956, i64* %PC.i528
  %3957 = inttoptr i64 %3954 to i32*
  %3958 = load i32, i32* %3957
  %3959 = zext i32 %3958 to i64
  store i64 %3959, i64* %RCX.i529, align 8
  store %struct.Memory* %loadMem_4299a3, %struct.Memory** %MEMORY
  %loadMem_4299a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 33
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3962 to i64*
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 7
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %RDX.i526 = bitcast %union.anon* %3965 to i64*
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 15
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %3968 to i64*
  %3969 = load i64, i64* %RBP.i527
  %3970 = sub i64 %3969, 60
  %3971 = load i64, i64* %PC.i525
  %3972 = add i64 %3971, 4
  store i64 %3972, i64* %PC.i525
  %3973 = inttoptr i64 %3970 to i32*
  %3974 = load i32, i32* %3973
  %3975 = sext i32 %3974 to i64
  store i64 %3975, i64* %RDX.i526, align 8
  store %struct.Memory* %loadMem_4299a6, %struct.Memory** %MEMORY
  %loadMem_4299aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 33
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %3978 to i64*
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 5
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %RCX.i523 = bitcast %union.anon* %3981 to i64*
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 7
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %RDX.i524 = bitcast %union.anon* %3984 to i64*
  %3985 = load i64, i64* %RCX.i523
  %3986 = load i64, i64* %RDX.i524
  %3987 = mul i64 %3986, 4
  %3988 = add i64 %3987, 8053168
  %3989 = load i64, i64* %PC.i522
  %3990 = add i64 %3989, 7
  store i64 %3990, i64* %PC.i522
  %3991 = trunc i64 %3985 to i32
  %3992 = inttoptr i64 %3988 to i32*
  %3993 = load i32, i32* %3992
  %3994 = add i32 %3993, %3991
  %3995 = zext i32 %3994 to i64
  store i64 %3995, i64* %RCX.i523, align 8
  %3996 = icmp ult i32 %3994, %3991
  %3997 = icmp ult i32 %3994, %3993
  %3998 = or i1 %3996, %3997
  %3999 = zext i1 %3998 to i8
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3999, i8* %4000, align 1
  %4001 = and i32 %3994, 255
  %4002 = call i32 @llvm.ctpop.i32(i32 %4001)
  %4003 = trunc i32 %4002 to i8
  %4004 = and i8 %4003, 1
  %4005 = xor i8 %4004, 1
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4005, i8* %4006, align 1
  %4007 = xor i32 %3993, %3991
  %4008 = xor i32 %4007, %3994
  %4009 = lshr i32 %4008, 4
  %4010 = trunc i32 %4009 to i8
  %4011 = and i8 %4010, 1
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4011, i8* %4012, align 1
  %4013 = icmp eq i32 %3994, 0
  %4014 = zext i1 %4013 to i8
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4014, i8* %4015, align 1
  %4016 = lshr i32 %3994, 31
  %4017 = trunc i32 %4016 to i8
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4017, i8* %4018, align 1
  %4019 = lshr i32 %3991, 31
  %4020 = lshr i32 %3993, 31
  %4021 = xor i32 %4016, %4019
  %4022 = xor i32 %4016, %4020
  %4023 = add i32 %4021, %4022
  %4024 = icmp eq i32 %4023, 2
  %4025 = zext i1 %4024 to i8
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4025, i8* %4026, align 1
  store %struct.Memory* %loadMem_4299aa, %struct.Memory** %MEMORY
  %loadMem_4299b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 33
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %4029 to i64*
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 5
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %ECX.i520 = bitcast %union.anon* %4032 to i32*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 7
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %RDX.i521 = bitcast %union.anon* %4035 to i64*
  %4036 = load i32, i32* %ECX.i520
  %4037 = zext i32 %4036 to i64
  %4038 = load i64, i64* %PC.i519
  %4039 = add i64 %4038, 3
  store i64 %4039, i64* %PC.i519
  %4040 = shl i64 %4037, 32
  %4041 = ashr exact i64 %4040, 32
  store i64 %4041, i64* %RDX.i521, align 8
  store %struct.Memory* %loadMem_4299b1, %struct.Memory** %MEMORY
  %loadMem_4299b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 33
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 1
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 7
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RDX.i518 = bitcast %union.anon* %4050 to i64*
  %4051 = load i64, i64* %RAX.i517
  %4052 = load i64, i64* %RDX.i518
  %4053 = mul i64 %4052, 4
  %4054 = add i64 %4053, 11268976
  %4055 = load i64, i64* %PC.i516
  %4056 = add i64 %4055, 7
  store i64 %4056, i64* %PC.i516
  %4057 = trunc i64 %4051 to i32
  %4058 = inttoptr i64 %4054 to i32*
  %4059 = load i32, i32* %4058
  %4060 = add i32 %4059, %4057
  %4061 = zext i32 %4060 to i64
  store i64 %4061, i64* %RAX.i517, align 8
  %4062 = icmp ult i32 %4060, %4057
  %4063 = icmp ult i32 %4060, %4059
  %4064 = or i1 %4062, %4063
  %4065 = zext i1 %4064 to i8
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4065, i8* %4066, align 1
  %4067 = and i32 %4060, 255
  %4068 = call i32 @llvm.ctpop.i32(i32 %4067)
  %4069 = trunc i32 %4068 to i8
  %4070 = and i8 %4069, 1
  %4071 = xor i8 %4070, 1
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4071, i8* %4072, align 1
  %4073 = xor i32 %4059, %4057
  %4074 = xor i32 %4073, %4060
  %4075 = lshr i32 %4074, 4
  %4076 = trunc i32 %4075 to i8
  %4077 = and i8 %4076, 1
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4077, i8* %4078, align 1
  %4079 = icmp eq i32 %4060, 0
  %4080 = zext i1 %4079 to i8
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4080, i8* %4081, align 1
  %4082 = lshr i32 %4060, 31
  %4083 = trunc i32 %4082 to i8
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4083, i8* %4084, align 1
  %4085 = lshr i32 %4057, 31
  %4086 = lshr i32 %4059, 31
  %4087 = xor i32 %4082, %4085
  %4088 = xor i32 %4082, %4086
  %4089 = add i32 %4087, %4088
  %4090 = icmp eq i32 %4089, 2
  %4091 = zext i1 %4090 to i8
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4091, i8* %4092, align 1
  store %struct.Memory* %loadMem_4299b4, %struct.Memory** %MEMORY
  %loadMem_4299bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 33
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %4095 to i64*
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4097 = getelementptr inbounds %struct.GPR, %struct.GPR* %4096, i32 0, i32 1
  %4098 = getelementptr inbounds %struct.Reg, %struct.Reg* %4097, i32 0, i32 0
  %EAX.i514 = bitcast %union.anon* %4098 to i32*
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4100 = getelementptr inbounds %struct.GPR, %struct.GPR* %4099, i32 0, i32 7
  %4101 = getelementptr inbounds %struct.Reg, %struct.Reg* %4100, i32 0, i32 0
  %RDX.i515 = bitcast %union.anon* %4101 to i64*
  %4102 = load i64, i64* %RDX.i515
  %4103 = mul i64 %4102, 4
  %4104 = add i64 %4103, 11268976
  %4105 = load i32, i32* %EAX.i514
  %4106 = zext i32 %4105 to i64
  %4107 = load i64, i64* %PC.i513
  %4108 = add i64 %4107, 7
  store i64 %4108, i64* %PC.i513
  %4109 = inttoptr i64 %4104 to i32*
  store i32 %4105, i32* %4109
  store %struct.Memory* %loadMem_4299bb, %struct.Memory** %MEMORY
  br label %block_.L_4299c2

block_.L_4299c2:                                  ; preds = %block_.L_4299a0, %block_4298bc, %block_.L_429874
  %loadMem_4299c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 33
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %4112 to i64*
  %4113 = load i64, i64* %PC.i512
  %4114 = add i64 %4113, 5
  %4115 = load i64, i64* %PC.i512
  %4116 = add i64 %4115, 5
  store i64 %4116, i64* %PC.i512
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4114, i64* %4117, align 8
  store %struct.Memory* %loadMem_4299c2, %struct.Memory** %MEMORY
  br label %block_.L_4299c7

block_.L_4299c7:                                  ; preds = %block_.L_4299c2, %block_42995a
  %loadMem_4299c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 33
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %4120 to i64*
  %4121 = load i64, i64* %PC.i511
  %4122 = add i64 %4121, 5
  %4123 = load i64, i64* %PC.i511
  %4124 = add i64 %4123, 5
  store i64 %4124, i64* %PC.i511
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4122, i64* %4125, align 8
  store %struct.Memory* %loadMem_4299c7, %struct.Memory** %MEMORY
  br label %block_.L_4299cc

block_.L_4299cc:                                  ; preds = %block_.L_4299c7, %block_42984d
  %loadMem_4299cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 33
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %4128 to i64*
  %4129 = load i64, i64* %PC.i510
  %4130 = add i64 %4129, 5
  %4131 = load i64, i64* %PC.i510
  %4132 = add i64 %4131, 5
  store i64 %4132, i64* %PC.i510
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4130, i64* %4133, align 8
  store %struct.Memory* %loadMem_4299cc, %struct.Memory** %MEMORY
  br label %block_.L_4299d1

block_.L_4299d1:                                  ; preds = %block_.L_4299cc
  %loadMem_4299d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 33
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %4136 to i64*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 1
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %4139 to i64*
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 15
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %4142 to i64*
  %4143 = load i64, i64* %RBP.i509
  %4144 = sub i64 %4143, 60
  %4145 = load i64, i64* %PC.i507
  %4146 = add i64 %4145, 3
  store i64 %4146, i64* %PC.i507
  %4147 = inttoptr i64 %4144 to i32*
  %4148 = load i32, i32* %4147
  %4149 = zext i32 %4148 to i64
  store i64 %4149, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_4299d1, %struct.Memory** %MEMORY
  %loadMem_4299d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 33
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %4152 to i64*
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 1
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %RAX.i506 = bitcast %union.anon* %4155 to i64*
  %4156 = load i64, i64* %RAX.i506
  %4157 = load i64, i64* %PC.i505
  %4158 = add i64 %4157, 3
  store i64 %4158, i64* %PC.i505
  %4159 = trunc i64 %4156 to i32
  %4160 = add i32 1, %4159
  %4161 = zext i32 %4160 to i64
  store i64 %4161, i64* %RAX.i506, align 8
  %4162 = icmp ult i32 %4160, %4159
  %4163 = icmp ult i32 %4160, 1
  %4164 = or i1 %4162, %4163
  %4165 = zext i1 %4164 to i8
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4165, i8* %4166, align 1
  %4167 = and i32 %4160, 255
  %4168 = call i32 @llvm.ctpop.i32(i32 %4167)
  %4169 = trunc i32 %4168 to i8
  %4170 = and i8 %4169, 1
  %4171 = xor i8 %4170, 1
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4171, i8* %4172, align 1
  %4173 = xor i64 1, %4156
  %4174 = trunc i64 %4173 to i32
  %4175 = xor i32 %4174, %4160
  %4176 = lshr i32 %4175, 4
  %4177 = trunc i32 %4176 to i8
  %4178 = and i8 %4177, 1
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4178, i8* %4179, align 1
  %4180 = icmp eq i32 %4160, 0
  %4181 = zext i1 %4180 to i8
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4181, i8* %4182, align 1
  %4183 = lshr i32 %4160, 31
  %4184 = trunc i32 %4183 to i8
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4184, i8* %4185, align 1
  %4186 = lshr i32 %4159, 31
  %4187 = xor i32 %4183, %4186
  %4188 = add i32 %4187, %4183
  %4189 = icmp eq i32 %4188, 2
  %4190 = zext i1 %4189 to i8
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4190, i8* %4191, align 1
  store %struct.Memory* %loadMem_4299d4, %struct.Memory** %MEMORY
  %loadMem_4299d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 33
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %4194 to i64*
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 1
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %EAX.i503 = bitcast %union.anon* %4197 to i32*
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 15
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %4200 to i64*
  %4201 = load i64, i64* %RBP.i504
  %4202 = sub i64 %4201, 60
  %4203 = load i32, i32* %EAX.i503
  %4204 = zext i32 %4203 to i64
  %4205 = load i64, i64* %PC.i502
  %4206 = add i64 %4205, 3
  store i64 %4206, i64* %PC.i502
  %4207 = inttoptr i64 %4202 to i32*
  store i32 %4203, i32* %4207
  store %struct.Memory* %loadMem_4299d7, %struct.Memory** %MEMORY
  %loadMem_4299da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 33
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %4210 to i64*
  %4211 = load i64, i64* %PC.i501
  %4212 = add i64 %4211, -407
  %4213 = load i64, i64* %PC.i501
  %4214 = add i64 %4213, 5
  store i64 %4214, i64* %PC.i501
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4212, i64* %4215, align 8
  store %struct.Memory* %loadMem_4299da, %struct.Memory** %MEMORY
  br label %block_.L_429843

block_.L_4299df:                                  ; preds = %block_.L_429843
  %loadMem_4299df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 33
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %4218 to i64*
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 1
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %4221 to i64*
  %4222 = load i64, i64* %PC.i499
  %4223 = add i64 %4222, 5
  store i64 %4223, i64* %PC.i499
  store i64 4096, i64* %RAX.i500, align 8
  store %struct.Memory* %loadMem_4299df, %struct.Memory** %MEMORY
  %loadMem_4299e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4225 = getelementptr inbounds %struct.GPR, %struct.GPR* %4224, i32 0, i32 33
  %4226 = getelementptr inbounds %struct.Reg, %struct.Reg* %4225, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %4226 to i64*
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 5
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %RCX.i498 = bitcast %union.anon* %4229 to i64*
  %4230 = load i64, i64* %PC.i497
  %4231 = add i64 %4230, 5
  store i64 %4231, i64* %PC.i497
  store i64 2, i64* %RCX.i498, align 8
  store %struct.Memory* %loadMem_4299e4, %struct.Memory** %MEMORY
  %loadMem_4299e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 33
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %4234 to i64*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 7
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %RDX.i495 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 15
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %4240 to i64*
  %4241 = load i64, i64* %RBP.i496
  %4242 = sub i64 %4241, 64
  %4243 = load i64, i64* %PC.i494
  %4244 = add i64 %4243, 3
  store i64 %4244, i64* %PC.i494
  %4245 = inttoptr i64 %4242 to i32*
  %4246 = load i32, i32* %4245
  %4247 = zext i32 %4246 to i64
  store i64 %4247, i64* %RDX.i495, align 8
  store %struct.Memory* %loadMem_4299e9, %struct.Memory** %MEMORY
  %loadMem_4299ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 33
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 1
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %EAX.i492 = bitcast %union.anon* %4253 to i32*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 15
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %4256 to i64*
  %4257 = load i64, i64* %RBP.i493
  %4258 = sub i64 %4257, 128
  %4259 = load i32, i32* %EAX.i492
  %4260 = zext i32 %4259 to i64
  %4261 = load i64, i64* %PC.i491
  %4262 = add i64 %4261, 3
  store i64 %4262, i64* %PC.i491
  %4263 = inttoptr i64 %4258 to i32*
  store i32 %4259, i32* %4263
  store %struct.Memory* %loadMem_4299ec, %struct.Memory** %MEMORY
  %loadMem_4299ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 33
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 7
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %EDX.i489 = bitcast %union.anon* %4269 to i32*
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 1
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %4272 to i64*
  %4273 = load i32, i32* %EDX.i489
  %4274 = zext i32 %4273 to i64
  %4275 = load i64, i64* %PC.i488
  %4276 = add i64 %4275, 2
  store i64 %4276, i64* %PC.i488
  %4277 = and i64 %4274, 4294967295
  store i64 %4277, i64* %RAX.i490, align 8
  store %struct.Memory* %loadMem_4299ef, %struct.Memory** %MEMORY
  %loadMem_4299f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 33
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4280 to i64*
  %4281 = load i64, i64* %PC.i487
  %4282 = add i64 %4281, 1
  store i64 %4282, i64* %PC.i487
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4285 = bitcast %union.anon* %4284 to i32*
  %4286 = load i32, i32* %4285, align 8
  %4287 = sext i32 %4286 to i64
  %4288 = lshr i64 %4287, 32
  store i64 %4288, i64* %4283, align 8
  store %struct.Memory* %loadMem_4299f1, %struct.Memory** %MEMORY
  %loadMem_4299f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 33
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4291 to i64*
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 5
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %ECX.i482 = bitcast %union.anon* %4294 to i32*
  %4295 = load i32, i32* %ECX.i482
  %4296 = zext i32 %4295 to i64
  %4297 = load i64, i64* %PC.i481
  %4298 = add i64 %4297, 2
  store i64 %4298, i64* %PC.i481
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4300 = bitcast %union.anon* %4299 to i32*
  %4301 = load i32, i32* %4300, align 8
  %4302 = zext i32 %4301 to i64
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4304 = bitcast %union.anon* %4303 to i32*
  %4305 = load i32, i32* %4304, align 8
  %4306 = zext i32 %4305 to i64
  %4307 = shl i64 %4296, 32
  %4308 = ashr exact i64 %4307, 32
  %4309 = shl i64 %4306, 32
  %4310 = or i64 %4309, %4302
  %4311 = sdiv i64 %4310, %4308
  %4312 = shl i64 %4311, 32
  %4313 = ashr exact i64 %4312, 32
  %4314 = icmp eq i64 %4311, %4313
  br i1 %4314, label %4319, label %4315

; <label>:4315:                                   ; preds = %block_.L_4299df
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4317 = load i64, i64* %4316, align 8
  %4318 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4317, %struct.Memory* %loadMem_4299f2)
  br label %routine_idivl__ecx.exit483

; <label>:4319:                                   ; preds = %block_.L_4299df
  %4320 = srem i64 %4310, %4308
  %4321 = getelementptr inbounds %union.anon, %union.anon* %4299, i64 0, i32 0
  %4322 = and i64 %4311, 4294967295
  store i64 %4322, i64* %4321, align 8
  %4323 = getelementptr inbounds %union.anon, %union.anon* %4303, i64 0, i32 0
  %4324 = and i64 %4320, 4294967295
  store i64 %4324, i64* %4323, align 8
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4325, align 1
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4326, align 1
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4327, align 1
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4328, align 1
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4329, align 1
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4330, align 1
  br label %routine_idivl__ecx.exit483

routine_idivl__ecx.exit483:                       ; preds = %4315, %4319
  %4331 = phi %struct.Memory* [ %4318, %4315 ], [ %loadMem_4299f2, %4319 ]
  store %struct.Memory* %4331, %struct.Memory** %MEMORY
  %loadMem_4299f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 33
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4334 to i64*
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 1
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %EAX.i479 = bitcast %union.anon* %4337 to i32*
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 15
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %4340 to i64*
  %4341 = load i64, i64* %RBP.i480
  %4342 = sub i64 %4341, 64
  %4343 = load i32, i32* %EAX.i479
  %4344 = zext i32 %4343 to i64
  %4345 = load i64, i64* %PC.i478
  %4346 = add i64 %4345, 3
  store i64 %4346, i64* %PC.i478
  %4347 = inttoptr i64 %4342 to i32*
  store i32 %4343, i32* %4347
  store %struct.Memory* %loadMem_4299f4, %struct.Memory** %MEMORY
  %loadMem_4299f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 33
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 1
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %4353 to i64*
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 15
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %4356 to i64*
  %4357 = load i64, i64* %RBP.i477
  %4358 = sub i64 %4357, 76
  %4359 = load i64, i64* %PC.i475
  %4360 = add i64 %4359, 3
  store i64 %4360, i64* %PC.i475
  %4361 = inttoptr i64 %4358 to i32*
  %4362 = load i32, i32* %4361
  %4363 = zext i32 %4362 to i64
  store i64 %4363, i64* %RAX.i476, align 8
  store %struct.Memory* %loadMem_4299f7, %struct.Memory** %MEMORY
  %loadMem_4299fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 33
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4366 to i64*
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 1
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %4369 to i64*
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4371 = getelementptr inbounds %struct.GPR, %struct.GPR* %4370, i32 0, i32 15
  %4372 = getelementptr inbounds %struct.Reg, %struct.Reg* %4371, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %4372 to i64*
  %4373 = load i64, i64* %RAX.i473
  %4374 = load i64, i64* %RBP.i474
  %4375 = sub i64 %4374, 16
  %4376 = load i64, i64* %PC.i472
  %4377 = add i64 %4376, 4
  store i64 %4377, i64* %PC.i472
  %4378 = inttoptr i64 %4375 to i32*
  %4379 = load i32, i32* %4378
  %4380 = shl i64 %4373, 32
  %4381 = ashr exact i64 %4380, 32
  %4382 = sext i32 %4379 to i64
  %4383 = mul i64 %4382, %4381
  %4384 = trunc i64 %4383 to i32
  %4385 = and i64 %4383, 4294967295
  store i64 %4385, i64* %RAX.i473, align 8
  %4386 = shl i64 %4383, 32
  %4387 = ashr exact i64 %4386, 32
  %4388 = icmp ne i64 %4387, %4383
  %4389 = zext i1 %4388 to i8
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4389, i8* %4390, align 1
  %4391 = and i32 %4384, 255
  %4392 = call i32 @llvm.ctpop.i32(i32 %4391)
  %4393 = trunc i32 %4392 to i8
  %4394 = and i8 %4393, 1
  %4395 = xor i8 %4394, 1
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4395, i8* %4396, align 1
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4397, align 1
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4398, align 1
  %4399 = lshr i32 %4384, 31
  %4400 = trunc i32 %4399 to i8
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4400, i8* %4401, align 1
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4389, i8* %4402, align 1
  store %struct.Memory* %loadMem_4299fa, %struct.Memory** %MEMORY
  %loadMem_4299fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 33
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4405 to i64*
  %4406 = load i64, i64* %PC.i471
  %4407 = add i64 %4406, 1
  store i64 %4407, i64* %PC.i471
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4410 = bitcast %union.anon* %4409 to i32*
  %4411 = load i32, i32* %4410, align 8
  %4412 = sext i32 %4411 to i64
  %4413 = lshr i64 %4412, 32
  store i64 %4413, i64* %4408, align 8
  store %struct.Memory* %loadMem_4299fe, %struct.Memory** %MEMORY
  %loadMem_4299ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 33
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %4416 to i64*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 5
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RCX.i469 = bitcast %union.anon* %4419 to i64*
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 15
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %4422 to i64*
  %4423 = load i64, i64* %RBP.i470
  %4424 = sub i64 %4423, 128
  %4425 = load i64, i64* %PC.i468
  %4426 = add i64 %4425, 3
  store i64 %4426, i64* %PC.i468
  %4427 = inttoptr i64 %4424 to i32*
  %4428 = load i32, i32* %4427
  %4429 = zext i32 %4428 to i64
  store i64 %4429, i64* %RCX.i469, align 8
  store %struct.Memory* %loadMem_4299ff, %struct.Memory** %MEMORY
  %loadMem_429a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 33
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %4432 to i64*
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 5
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %ECX.i463 = bitcast %union.anon* %4435 to i32*
  %4436 = load i32, i32* %ECX.i463
  %4437 = zext i32 %4436 to i64
  %4438 = load i64, i64* %PC.i462
  %4439 = add i64 %4438, 2
  store i64 %4439, i64* %PC.i462
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4441 = bitcast %union.anon* %4440 to i32*
  %4442 = load i32, i32* %4441, align 8
  %4443 = zext i32 %4442 to i64
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4445 = bitcast %union.anon* %4444 to i32*
  %4446 = load i32, i32* %4445, align 8
  %4447 = zext i32 %4446 to i64
  %4448 = shl i64 %4437, 32
  %4449 = ashr exact i64 %4448, 32
  %4450 = shl i64 %4447, 32
  %4451 = or i64 %4450, %4443
  %4452 = sdiv i64 %4451, %4449
  %4453 = shl i64 %4452, 32
  %4454 = ashr exact i64 %4453, 32
  %4455 = icmp eq i64 %4452, %4454
  br i1 %4455, label %4460, label %4456

; <label>:4456:                                   ; preds = %routine_idivl__ecx.exit483
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4458 = load i64, i64* %4457, align 8
  %4459 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4458, %struct.Memory* %loadMem_429a02)
  br label %routine_idivl__ecx.exit464

; <label>:4460:                                   ; preds = %routine_idivl__ecx.exit483
  %4461 = srem i64 %4451, %4449
  %4462 = getelementptr inbounds %union.anon, %union.anon* %4440, i64 0, i32 0
  %4463 = and i64 %4452, 4294967295
  store i64 %4463, i64* %4462, align 8
  %4464 = getelementptr inbounds %union.anon, %union.anon* %4444, i64 0, i32 0
  %4465 = and i64 %4461, 4294967295
  store i64 %4465, i64* %4464, align 8
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4466, align 1
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4467, align 1
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4468, align 1
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4469, align 1
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4470, align 1
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4471, align 1
  br label %routine_idivl__ecx.exit464

routine_idivl__ecx.exit464:                       ; preds = %4456, %4460
  %4472 = phi %struct.Memory* [ %4459, %4456 ], [ %loadMem_429a02, %4460 ]
  store %struct.Memory* %4472, %struct.Memory** %MEMORY
  %loadMem_429a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 33
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 1
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %4478 to i32*
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 15
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %4481 to i64*
  %4482 = load i64, i64* %RBP.i461
  %4483 = sub i64 %4482, 76
  %4484 = load i32, i32* %EAX.i460
  %4485 = zext i32 %4484 to i64
  %4486 = load i64, i64* %PC.i459
  %4487 = add i64 %4486, 3
  store i64 %4487, i64* %PC.i459
  %4488 = inttoptr i64 %4483 to i32*
  store i32 %4484, i32* %4488
  store %struct.Memory* %loadMem_429a04, %struct.Memory** %MEMORY
  br label %block_.L_429a07

block_.L_429a07:                                  ; preds = %block_.L_429c65, %routine_idivl__ecx.exit464
  %loadMem_429a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 33
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %4491 to i64*
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4493 = getelementptr inbounds %struct.GPR, %struct.GPR* %4492, i32 0, i32 15
  %4494 = getelementptr inbounds %struct.Reg, %struct.Reg* %4493, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %4494 to i64*
  %4495 = load i64, i64* %RBP.i458
  %4496 = sub i64 %4495, 60
  %4497 = load i64, i64* %PC.i457
  %4498 = add i64 %4497, 4
  store i64 %4498, i64* %PC.i457
  %4499 = inttoptr i64 %4496 to i32*
  %4500 = load i32, i32* %4499
  %4501 = sub i32 %4500, 8
  %4502 = icmp ult i32 %4500, 8
  %4503 = zext i1 %4502 to i8
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4503, i8* %4504, align 1
  %4505 = and i32 %4501, 255
  %4506 = call i32 @llvm.ctpop.i32(i32 %4505)
  %4507 = trunc i32 %4506 to i8
  %4508 = and i8 %4507, 1
  %4509 = xor i8 %4508, 1
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4509, i8* %4510, align 1
  %4511 = xor i32 %4500, 8
  %4512 = xor i32 %4511, %4501
  %4513 = lshr i32 %4512, 4
  %4514 = trunc i32 %4513 to i8
  %4515 = and i8 %4514, 1
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4515, i8* %4516, align 1
  %4517 = icmp eq i32 %4501, 0
  %4518 = zext i1 %4517 to i8
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4518, i8* %4519, align 1
  %4520 = lshr i32 %4501, 31
  %4521 = trunc i32 %4520 to i8
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4521, i8* %4522, align 1
  %4523 = lshr i32 %4500, 31
  %4524 = xor i32 %4520, %4523
  %4525 = add i32 %4524, %4523
  %4526 = icmp eq i32 %4525, 2
  %4527 = zext i1 %4526 to i8
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4527, i8* %4528, align 1
  store %struct.Memory* %loadMem_429a07, %struct.Memory** %MEMORY
  %loadMem_429a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 33
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4531 to i64*
  %4532 = load i64, i64* %PC.i456
  %4533 = add i64 %4532, 616
  %4534 = load i64, i64* %PC.i456
  %4535 = add i64 %4534, 6
  %4536 = load i64, i64* %PC.i456
  %4537 = add i64 %4536, 6
  store i64 %4537, i64* %PC.i456
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4539 = load i8, i8* %4538, align 1
  %4540 = icmp ne i8 %4539, 0
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4542 = load i8, i8* %4541, align 1
  %4543 = icmp ne i8 %4542, 0
  %4544 = xor i1 %4540, %4543
  %4545 = xor i1 %4544, true
  %4546 = zext i1 %4545 to i8
  store i8 %4546, i8* %BRANCH_TAKEN, align 1
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4548 = select i1 %4544, i64 %4535, i64 %4533
  store i64 %4548, i64* %4547, align 8
  store %struct.Memory* %loadMem_429a0b, %struct.Memory** %MEMORY
  %loadBr_429a0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a0b = icmp eq i8 %loadBr_429a0b, 1
  br i1 %cmpBr_429a0b, label %block_.L_429c73, label %block_429a11

block_429a11:                                     ; preds = %block_.L_429a07
  %loadMem_429a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 33
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 1
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %4554 to i64*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 15
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %4557 to i64*
  %4558 = load i64, i64* %RBP.i455
  %4559 = sub i64 %4558, 44
  %4560 = load i64, i64* %PC.i453
  %4561 = add i64 %4560, 3
  store i64 %4561, i64* %PC.i453
  %4562 = inttoptr i64 %4559 to i32*
  %4563 = load i32, i32* %4562
  %4564 = zext i32 %4563 to i64
  store i64 %4564, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_429a11, %struct.Memory** %MEMORY
  %loadMem_429a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 33
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %4567 to i64*
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 5
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %4570 to i64*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 15
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %4573 to i64*
  %4574 = load i64, i64* %RBP.i452
  %4575 = sub i64 %4574, 60
  %4576 = load i64, i64* %PC.i450
  %4577 = add i64 %4576, 4
  store i64 %4577, i64* %PC.i450
  %4578 = inttoptr i64 %4575 to i32*
  %4579 = load i32, i32* %4578
  %4580 = sext i32 %4579 to i64
  store i64 %4580, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_429a14, %struct.Memory** %MEMORY
  %loadMem_429a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 33
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %4583 to i64*
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 1
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 5
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %4589 to i64*
  %4590 = load i64, i64* %RAX.i448
  %4591 = load i64, i64* %RCX.i449
  %4592 = mul i64 %4591, 4
  %4593 = add i64 %4592, 8053168
  %4594 = load i64, i64* %PC.i447
  %4595 = add i64 %4594, 7
  store i64 %4595, i64* %PC.i447
  %4596 = trunc i64 %4590 to i32
  %4597 = inttoptr i64 %4593 to i32*
  %4598 = load i32, i32* %4597
  %4599 = add i32 %4598, %4596
  %4600 = zext i32 %4599 to i64
  store i64 %4600, i64* %RAX.i448, align 8
  %4601 = icmp ult i32 %4599, %4596
  %4602 = icmp ult i32 %4599, %4598
  %4603 = or i1 %4601, %4602
  %4604 = zext i1 %4603 to i8
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4604, i8* %4605, align 1
  %4606 = and i32 %4599, 255
  %4607 = call i32 @llvm.ctpop.i32(i32 %4606)
  %4608 = trunc i32 %4607 to i8
  %4609 = and i8 %4608, 1
  %4610 = xor i8 %4609, 1
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4610, i8* %4611, align 1
  %4612 = xor i32 %4598, %4596
  %4613 = xor i32 %4612, %4599
  %4614 = lshr i32 %4613, 4
  %4615 = trunc i32 %4614 to i8
  %4616 = and i8 %4615, 1
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4616, i8* %4617, align 1
  %4618 = icmp eq i32 %4599, 0
  %4619 = zext i1 %4618 to i8
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4619, i8* %4620, align 1
  %4621 = lshr i32 %4599, 31
  %4622 = trunc i32 %4621 to i8
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4622, i8* %4623, align 1
  %4624 = lshr i32 %4596, 31
  %4625 = lshr i32 %4598, 31
  %4626 = xor i32 %4621, %4624
  %4627 = xor i32 %4621, %4625
  %4628 = add i32 %4626, %4627
  %4629 = icmp eq i32 %4628, 2
  %4630 = zext i1 %4629 to i8
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4630, i8* %4631, align 1
  store %struct.Memory* %loadMem_429a18, %struct.Memory** %MEMORY
  %loadMem_429a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 33
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %4634 to i64*
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 1
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %EAX.i445 = bitcast %union.anon* %4637 to i32*
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 5
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %4640 to i64*
  %4641 = load i32, i32* %EAX.i445
  %4642 = zext i32 %4641 to i64
  %4643 = load i64, i64* %PC.i444
  %4644 = add i64 %4643, 3
  store i64 %4644, i64* %PC.i444
  %4645 = shl i64 %4642, 32
  %4646 = ashr exact i64 %4645, 32
  store i64 %4646, i64* %RCX.i446, align 8
  store %struct.Memory* %loadMem_429a1f, %struct.Memory** %MEMORY
  %loadMem_429a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 33
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %4649 to i64*
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 1
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %4652 to i64*
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4654 = getelementptr inbounds %struct.GPR, %struct.GPR* %4653, i32 0, i32 5
  %4655 = getelementptr inbounds %struct.Reg, %struct.Reg* %4654, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %4655 to i64*
  %4656 = load i64, i64* %RCX.i443
  %4657 = add i64 %4656, 12099168
  %4658 = load i64, i64* %PC.i441
  %4659 = add i64 %4658, 8
  store i64 %4659, i64* %PC.i441
  %4660 = inttoptr i64 %4657 to i8*
  %4661 = load i8, i8* %4660
  %4662 = zext i8 %4661 to i64
  store i64 %4662, i64* %RAX.i442, align 8
  store %struct.Memory* %loadMem_429a22, %struct.Memory** %MEMORY
  %loadMem_429a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 33
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4665 to i64*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 1
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %EAX.i440 = bitcast %union.anon* %4668 to i32*
  %4669 = load i32, i32* %EAX.i440
  %4670 = zext i32 %4669 to i64
  %4671 = load i64, i64* %PC.i439
  %4672 = add i64 %4671, 3
  store i64 %4672, i64* %PC.i439
  %4673 = sub i32 %4669, 3
  %4674 = icmp ult i32 %4669, 3
  %4675 = zext i1 %4674 to i8
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4675, i8* %4676, align 1
  %4677 = and i32 %4673, 255
  %4678 = call i32 @llvm.ctpop.i32(i32 %4677)
  %4679 = trunc i32 %4678 to i8
  %4680 = and i8 %4679, 1
  %4681 = xor i8 %4680, 1
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4681, i8* %4682, align 1
  %4683 = xor i64 3, %4670
  %4684 = trunc i64 %4683 to i32
  %4685 = xor i32 %4684, %4673
  %4686 = lshr i32 %4685, 4
  %4687 = trunc i32 %4686 to i8
  %4688 = and i8 %4687, 1
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4688, i8* %4689, align 1
  %4690 = icmp eq i32 %4673, 0
  %4691 = zext i1 %4690 to i8
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4691, i8* %4692, align 1
  %4693 = lshr i32 %4673, 31
  %4694 = trunc i32 %4693 to i8
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4694, i8* %4695, align 1
  %4696 = lshr i32 %4669, 31
  %4697 = xor i32 %4693, %4696
  %4698 = add i32 %4697, %4696
  %4699 = icmp eq i32 %4698, 2
  %4700 = zext i1 %4699 to i8
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4700, i8* %4701, align 1
  store %struct.Memory* %loadMem_429a2a, %struct.Memory** %MEMORY
  %loadMem_429a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 33
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4704 to i64*
  %4705 = load i64, i64* %PC.i438
  %4706 = add i64 %4705, 563
  %4707 = load i64, i64* %PC.i438
  %4708 = add i64 %4707, 6
  %4709 = load i64, i64* %PC.i438
  %4710 = add i64 %4709, 6
  store i64 %4710, i64* %PC.i438
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4712 = load i8, i8* %4711, align 1
  store i8 %4712, i8* %BRANCH_TAKEN, align 1
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4714 = icmp ne i8 %4712, 0
  %4715 = select i1 %4714, i64 %4706, i64 %4708
  store i64 %4715, i64* %4713, align 8
  store %struct.Memory* %loadMem_429a2d, %struct.Memory** %MEMORY
  %loadBr_429a2d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a2d = icmp eq i8 %loadBr_429a2d, 1
  br i1 %cmpBr_429a2d, label %block_.L_429c60, label %block_429a33

block_429a33:                                     ; preds = %block_429a11
  %loadMem_429a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 33
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %4718 to i64*
  %4719 = load i64, i64* %PC.i437
  %4720 = add i64 %4719, 5
  %4721 = load i64, i64* %PC.i437
  %4722 = add i64 %4721, 5
  store i64 %4722, i64* %PC.i437
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4720, i64* %4723, align 8
  store %struct.Memory* %loadMem_429a33, %struct.Memory** %MEMORY
  br label %block_.L_429a38

block_.L_429a38:                                  ; preds = %block_429a33
  %loadMem_429a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 33
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4726 to i64*
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 1
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %4729 to i64*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 15
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %4732 to i64*
  %4733 = load i64, i64* %RBP.i436
  %4734 = sub i64 %4733, 32
  %4735 = load i64, i64* %PC.i434
  %4736 = add i64 %4735, 4
  store i64 %4736, i64* %PC.i434
  %4737 = inttoptr i64 %4734 to i64*
  %4738 = load i64, i64* %4737
  store i64 %4738, i64* %RAX.i435, align 8
  store %struct.Memory* %loadMem_429a38, %struct.Memory** %MEMORY
  %loadMem_429a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4740 = getelementptr inbounds %struct.GPR, %struct.GPR* %4739, i32 0, i32 33
  %4741 = getelementptr inbounds %struct.Reg, %struct.Reg* %4740, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4741 to i64*
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 5
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %RCX.i432 = bitcast %union.anon* %4744 to i64*
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 15
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %4747 to i64*
  %4748 = load i64, i64* %RBP.i433
  %4749 = sub i64 %4748, 44
  %4750 = load i64, i64* %PC.i431
  %4751 = add i64 %4750, 3
  store i64 %4751, i64* %PC.i431
  %4752 = inttoptr i64 %4749 to i32*
  %4753 = load i32, i32* %4752
  %4754 = zext i32 %4753 to i64
  store i64 %4754, i64* %RCX.i432, align 8
  store %struct.Memory* %loadMem_429a3c, %struct.Memory** %MEMORY
  %loadMem_429a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 33
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4757 to i64*
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 7
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %RDX.i429 = bitcast %union.anon* %4760 to i64*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 15
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %4763 to i64*
  %4764 = load i64, i64* %RBP.i430
  %4765 = sub i64 %4764, 60
  %4766 = load i64, i64* %PC.i428
  %4767 = add i64 %4766, 4
  store i64 %4767, i64* %PC.i428
  %4768 = inttoptr i64 %4765 to i32*
  %4769 = load i32, i32* %4768
  %4770 = sext i32 %4769 to i64
  store i64 %4770, i64* %RDX.i429, align 8
  store %struct.Memory* %loadMem_429a3f, %struct.Memory** %MEMORY
  %loadMem_429a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 33
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %4773 to i64*
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 5
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 7
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RDX.i427 = bitcast %union.anon* %4779 to i64*
  %4780 = load i64, i64* %RCX.i426
  %4781 = load i64, i64* %RDX.i427
  %4782 = mul i64 %4781, 4
  %4783 = add i64 %4782, 8053168
  %4784 = load i64, i64* %PC.i425
  %4785 = add i64 %4784, 7
  store i64 %4785, i64* %PC.i425
  %4786 = trunc i64 %4780 to i32
  %4787 = inttoptr i64 %4783 to i32*
  %4788 = load i32, i32* %4787
  %4789 = add i32 %4788, %4786
  %4790 = zext i32 %4789 to i64
  store i64 %4790, i64* %RCX.i426, align 8
  %4791 = icmp ult i32 %4789, %4786
  %4792 = icmp ult i32 %4789, %4788
  %4793 = or i1 %4791, %4792
  %4794 = zext i1 %4793 to i8
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4794, i8* %4795, align 1
  %4796 = and i32 %4789, 255
  %4797 = call i32 @llvm.ctpop.i32(i32 %4796)
  %4798 = trunc i32 %4797 to i8
  %4799 = and i8 %4798, 1
  %4800 = xor i8 %4799, 1
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4800, i8* %4801, align 1
  %4802 = xor i32 %4788, %4786
  %4803 = xor i32 %4802, %4789
  %4804 = lshr i32 %4803, 4
  %4805 = trunc i32 %4804 to i8
  %4806 = and i8 %4805, 1
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4806, i8* %4807, align 1
  %4808 = icmp eq i32 %4789, 0
  %4809 = zext i1 %4808 to i8
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4809, i8* %4810, align 1
  %4811 = lshr i32 %4789, 31
  %4812 = trunc i32 %4811 to i8
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4812, i8* %4813, align 1
  %4814 = lshr i32 %4786, 31
  %4815 = lshr i32 %4788, 31
  %4816 = xor i32 %4811, %4814
  %4817 = xor i32 %4811, %4815
  %4818 = add i32 %4816, %4817
  %4819 = icmp eq i32 %4818, 2
  %4820 = zext i1 %4819 to i8
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4820, i8* %4821, align 1
  store %struct.Memory* %loadMem_429a43, %struct.Memory** %MEMORY
  %loadMem_429a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 33
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 5
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %ECX.i423 = bitcast %union.anon* %4827 to i32*
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 7
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %RDX.i424 = bitcast %union.anon* %4830 to i64*
  %4831 = load i32, i32* %ECX.i423
  %4832 = zext i32 %4831 to i64
  %4833 = load i64, i64* %PC.i422
  %4834 = add i64 %4833, 3
  store i64 %4834, i64* %PC.i422
  %4835 = shl i64 %4832, 32
  %4836 = ashr exact i64 %4835, 32
  store i64 %4836, i64* %RDX.i424, align 8
  store %struct.Memory* %loadMem_429a4a, %struct.Memory** %MEMORY
  %loadMem_429a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4838 = getelementptr inbounds %struct.GPR, %struct.GPR* %4837, i32 0, i32 33
  %4839 = getelementptr inbounds %struct.Reg, %struct.Reg* %4838, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4839 to i64*
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4841 = getelementptr inbounds %struct.GPR, %struct.GPR* %4840, i32 0, i32 1
  %4842 = getelementptr inbounds %struct.Reg, %struct.Reg* %4841, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %4842 to i64*
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4844 = getelementptr inbounds %struct.GPR, %struct.GPR* %4843, i32 0, i32 7
  %4845 = getelementptr inbounds %struct.Reg, %struct.Reg* %4844, i32 0, i32 0
  %RDX.i421 = bitcast %union.anon* %4845 to i64*
  %4846 = load i64, i64* %RAX.i420
  %4847 = load i64, i64* %RDX.i421
  %4848 = add i64 %4847, %4846
  %4849 = load i64, i64* %PC.i419
  %4850 = add i64 %4849, 4
  store i64 %4850, i64* %PC.i419
  %4851 = inttoptr i64 %4848 to i8*
  %4852 = load i8, i8* %4851
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4853, align 1
  %4854 = zext i8 %4852 to i32
  %4855 = call i32 @llvm.ctpop.i32(i32 %4854)
  %4856 = trunc i32 %4855 to i8
  %4857 = and i8 %4856, 1
  %4858 = xor i8 %4857, 1
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4858, i8* %4859, align 1
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4860, align 1
  %4861 = icmp eq i8 %4852, 0
  %4862 = zext i1 %4861 to i8
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4862, i8* %4863, align 1
  %4864 = lshr i8 %4852, 7
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4864, i8* %4865, align 1
  %4866 = lshr i8 %4852, 7
  %4867 = xor i8 %4864, %4866
  %4868 = add i8 %4867, %4866
  %4869 = icmp eq i8 %4868, 2
  %4870 = zext i1 %4869 to i8
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4870, i8* %4871, align 1
  store %struct.Memory* %loadMem_429a4d, %struct.Memory** %MEMORY
  %loadMem_429a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 33
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %4874 to i64*
  %4875 = load i64, i64* %PC.i418
  %4876 = add i64 %4875, 517
  %4877 = load i64, i64* %PC.i418
  %4878 = add i64 %4877, 6
  %4879 = load i64, i64* %PC.i418
  %4880 = add i64 %4879, 6
  store i64 %4880, i64* %PC.i418
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4882 = load i8, i8* %4881, align 1
  %4883 = icmp eq i8 %4882, 0
  %4884 = zext i1 %4883 to i8
  store i8 %4884, i8* %BRANCH_TAKEN, align 1
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4886 = select i1 %4883, i64 %4876, i64 %4878
  store i64 %4886, i64* %4885, align 8
  store %struct.Memory* %loadMem_429a51, %struct.Memory** %MEMORY
  %loadBr_429a51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a51 = icmp eq i8 %loadBr_429a51, 1
  br i1 %cmpBr_429a51, label %block_.L_429c56, label %block_429a57

block_429a57:                                     ; preds = %block_.L_429a38
  %loadMem_429a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4888 = getelementptr inbounds %struct.GPR, %struct.GPR* %4887, i32 0, i32 33
  %4889 = getelementptr inbounds %struct.Reg, %struct.Reg* %4888, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %4889 to i64*
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 1
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %4892 to i64*
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 15
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %4895 to i64*
  %4896 = load i64, i64* %RBP.i417
  %4897 = sub i64 %4896, 60
  %4898 = load i64, i64* %PC.i415
  %4899 = add i64 %4898, 4
  store i64 %4899, i64* %PC.i415
  %4900 = inttoptr i64 %4897 to i32*
  %4901 = load i32, i32* %4900
  %4902 = sext i32 %4901 to i64
  store i64 %4902, i64* %RAX.i416, align 8
  store %struct.Memory* %loadMem_429a57, %struct.Memory** %MEMORY
  %loadMem_429a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 33
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4905 to i64*
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 1
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %4908 to i64*
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 5
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %4911 to i64*
  %4912 = load i64, i64* %RAX.i413
  %4913 = mul i64 %4912, 4
  %4914 = add i64 %4913, 8053104
  %4915 = load i64, i64* %PC.i412
  %4916 = add i64 %4915, 7
  store i64 %4916, i64* %PC.i412
  %4917 = inttoptr i64 %4914 to i32*
  %4918 = load i32, i32* %4917
  %4919 = zext i32 %4918 to i64
  store i64 %4919, i64* %RCX.i414, align 8
  store %struct.Memory* %loadMem_429a5b, %struct.Memory** %MEMORY
  %loadMem_429a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 33
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4922 to i64*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 5
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %4925 to i64*
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4927 = getelementptr inbounds %struct.GPR, %struct.GPR* %4926, i32 0, i32 15
  %4928 = getelementptr inbounds %struct.Reg, %struct.Reg* %4927, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %4928 to i64*
  %4929 = load i64, i64* %RCX.i410
  %4930 = load i64, i64* %RBP.i411
  %4931 = sub i64 %4930, 80
  %4932 = load i64, i64* %PC.i409
  %4933 = add i64 %4932, 4
  store i64 %4933, i64* %PC.i409
  %4934 = inttoptr i64 %4931 to i32*
  %4935 = load i32, i32* %4934
  %4936 = shl i64 %4929, 32
  %4937 = ashr exact i64 %4936, 32
  %4938 = sext i32 %4935 to i64
  %4939 = mul i64 %4938, %4937
  %4940 = trunc i64 %4939 to i32
  %4941 = and i64 %4939, 4294967295
  store i64 %4941, i64* %RCX.i410, align 8
  %4942 = shl i64 %4939, 32
  %4943 = ashr exact i64 %4942, 32
  %4944 = icmp ne i64 %4943, %4939
  %4945 = zext i1 %4944 to i8
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4945, i8* %4946, align 1
  %4947 = and i32 %4940, 255
  %4948 = call i32 @llvm.ctpop.i32(i32 %4947)
  %4949 = trunc i32 %4948 to i8
  %4950 = and i8 %4949, 1
  %4951 = xor i8 %4950, 1
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4951, i8* %4952, align 1
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4953, align 1
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4954, align 1
  %4955 = lshr i32 %4940, 31
  %4956 = trunc i32 %4955 to i8
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4956, i8* %4957, align 1
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4945, i8* %4958, align 1
  store %struct.Memory* %loadMem_429a62, %struct.Memory** %MEMORY
  %loadMem_429a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4960 = getelementptr inbounds %struct.GPR, %struct.GPR* %4959, i32 0, i32 33
  %4961 = getelementptr inbounds %struct.Reg, %struct.Reg* %4960, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4961 to i64*
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4963 = getelementptr inbounds %struct.GPR, %struct.GPR* %4962, i32 0, i32 1
  %4964 = getelementptr inbounds %struct.Reg, %struct.Reg* %4963, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %4964 to i64*
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 15
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %4967 to i64*
  %4968 = load i64, i64* %RBP.i408
  %4969 = sub i64 %4968, 60
  %4970 = load i64, i64* %PC.i406
  %4971 = add i64 %4970, 4
  store i64 %4971, i64* %PC.i406
  %4972 = inttoptr i64 %4969 to i32*
  %4973 = load i32, i32* %4972
  %4974 = sext i32 %4973 to i64
  store i64 %4974, i64* %RAX.i407, align 8
  store %struct.Memory* %loadMem_429a66, %struct.Memory** %MEMORY
  %loadMem_429a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 33
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %4977 to i64*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 1
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %4980 to i64*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 7
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %RDX.i405 = bitcast %union.anon* %4983 to i64*
  %4984 = load i64, i64* %RAX.i404
  %4985 = mul i64 %4984, 4
  %4986 = add i64 %4985, 8053136
  %4987 = load i64, i64* %PC.i403
  %4988 = add i64 %4987, 7
  store i64 %4988, i64* %PC.i403
  %4989 = inttoptr i64 %4986 to i32*
  %4990 = load i32, i32* %4989
  %4991 = zext i32 %4990 to i64
  store i64 %4991, i64* %RDX.i405, align 8
  store %struct.Memory* %loadMem_429a6a, %struct.Memory** %MEMORY
  %loadMem_429a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 33
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %4994 to i64*
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 7
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %RDX.i401 = bitcast %union.anon* %4997 to i64*
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 15
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %5000 to i64*
  %5001 = load i64, i64* %RDX.i401
  %5002 = load i64, i64* %RBP.i402
  %5003 = sub i64 %5002, 84
  %5004 = load i64, i64* %PC.i400
  %5005 = add i64 %5004, 4
  store i64 %5005, i64* %PC.i400
  %5006 = inttoptr i64 %5003 to i32*
  %5007 = load i32, i32* %5006
  %5008 = shl i64 %5001, 32
  %5009 = ashr exact i64 %5008, 32
  %5010 = sext i32 %5007 to i64
  %5011 = mul i64 %5010, %5009
  %5012 = trunc i64 %5011 to i32
  %5013 = and i64 %5011, 4294967295
  store i64 %5013, i64* %RDX.i401, align 8
  %5014 = shl i64 %5011, 32
  %5015 = ashr exact i64 %5014, 32
  %5016 = icmp ne i64 %5015, %5011
  %5017 = zext i1 %5016 to i8
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5017, i8* %5018, align 1
  %5019 = and i32 %5012, 255
  %5020 = call i32 @llvm.ctpop.i32(i32 %5019)
  %5021 = trunc i32 %5020 to i8
  %5022 = and i8 %5021, 1
  %5023 = xor i8 %5022, 1
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5023, i8* %5024, align 1
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5025, align 1
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5026, align 1
  %5027 = lshr i32 %5012, 31
  %5028 = trunc i32 %5027 to i8
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5028, i8* %5029, align 1
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5017, i8* %5030, align 1
  store %struct.Memory* %loadMem_429a71, %struct.Memory** %MEMORY
  %loadMem_429a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 33
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %5033 to i64*
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5035 = getelementptr inbounds %struct.GPR, %struct.GPR* %5034, i32 0, i32 7
  %5036 = getelementptr inbounds %struct.Reg, %struct.Reg* %5035, i32 0, i32 0
  %EDX.i398 = bitcast %union.anon* %5036 to i32*
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 5
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %5039 to i64*
  %5040 = load i64, i64* %RCX.i399
  %5041 = load i32, i32* %EDX.i398
  %5042 = zext i32 %5041 to i64
  %5043 = load i64, i64* %PC.i397
  %5044 = add i64 %5043, 2
  store i64 %5044, i64* %PC.i397
  %5045 = trunc i64 %5040 to i32
  %5046 = add i32 %5041, %5045
  %5047 = zext i32 %5046 to i64
  store i64 %5047, i64* %RCX.i399, align 8
  %5048 = icmp ult i32 %5046, %5045
  %5049 = icmp ult i32 %5046, %5041
  %5050 = or i1 %5048, %5049
  %5051 = zext i1 %5050 to i8
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5051, i8* %5052, align 1
  %5053 = and i32 %5046, 255
  %5054 = call i32 @llvm.ctpop.i32(i32 %5053)
  %5055 = trunc i32 %5054 to i8
  %5056 = and i8 %5055, 1
  %5057 = xor i8 %5056, 1
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5057, i8* %5058, align 1
  %5059 = xor i64 %5042, %5040
  %5060 = trunc i64 %5059 to i32
  %5061 = xor i32 %5060, %5046
  %5062 = lshr i32 %5061, 4
  %5063 = trunc i32 %5062 to i8
  %5064 = and i8 %5063, 1
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5064, i8* %5065, align 1
  %5066 = icmp eq i32 %5046, 0
  %5067 = zext i1 %5066 to i8
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5067, i8* %5068, align 1
  %5069 = lshr i32 %5046, 31
  %5070 = trunc i32 %5069 to i8
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5070, i8* %5071, align 1
  %5072 = lshr i32 %5045, 31
  %5073 = lshr i32 %5041, 31
  %5074 = xor i32 %5069, %5072
  %5075 = xor i32 %5069, %5073
  %5076 = add i32 %5074, %5075
  %5077 = icmp eq i32 %5076, 2
  %5078 = zext i1 %5077 to i8
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5078, i8* %5079, align 1
  store %struct.Memory* %loadMem_429a75, %struct.Memory** %MEMORY
  %loadMem_429a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 33
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 5
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %ECX.i396 = bitcast %union.anon* %5085 to i32*
  %5086 = load i32, i32* %ECX.i396
  %5087 = zext i32 %5086 to i64
  %5088 = load i64, i64* %PC.i395
  %5089 = add i64 %5088, 3
  store i64 %5089, i64* %PC.i395
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5090, align 1
  %5091 = and i32 %5086, 255
  %5092 = call i32 @llvm.ctpop.i32(i32 %5091)
  %5093 = trunc i32 %5092 to i8
  %5094 = and i8 %5093, 1
  %5095 = xor i8 %5094, 1
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5095, i8* %5096, align 1
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5097, align 1
  %5098 = icmp eq i32 %5086, 0
  %5099 = zext i1 %5098 to i8
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5099, i8* %5100, align 1
  %5101 = lshr i32 %5086, 31
  %5102 = trunc i32 %5101 to i8
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5102, i8* %5103, align 1
  %5104 = lshr i32 %5086, 31
  %5105 = xor i32 %5101, %5104
  %5106 = add i32 %5105, %5104
  %5107 = icmp eq i32 %5106, 2
  %5108 = zext i1 %5107 to i8
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5108, i8* %5109, align 1
  store %struct.Memory* %loadMem_429a77, %struct.Memory** %MEMORY
  %loadMem_429a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5111 = getelementptr inbounds %struct.GPR, %struct.GPR* %5110, i32 0, i32 33
  %5112 = getelementptr inbounds %struct.Reg, %struct.Reg* %5111, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %5112 to i64*
  %5113 = load i64, i64* %PC.i394
  %5114 = add i64 %5113, 16
  %5115 = load i64, i64* %PC.i394
  %5116 = add i64 %5115, 6
  %5117 = load i64, i64* %PC.i394
  %5118 = add i64 %5117, 6
  store i64 %5118, i64* %PC.i394
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5120 = load i8, i8* %5119, align 1
  %5121 = icmp eq i8 %5120, 0
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5123 = load i8, i8* %5122, align 1
  %5124 = icmp ne i8 %5123, 0
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5126 = load i8, i8* %5125, align 1
  %5127 = icmp ne i8 %5126, 0
  %5128 = xor i1 %5124, %5127
  %5129 = xor i1 %5128, true
  %5130 = and i1 %5121, %5129
  %5131 = zext i1 %5130 to i8
  store i8 %5131, i8* %BRANCH_TAKEN, align 1
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5133 = select i1 %5130, i64 %5114, i64 %5116
  store i64 %5133, i64* %5132, align 8
  store %struct.Memory* %loadMem_429a7a, %struct.Memory** %MEMORY
  %loadBr_429a7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a7a = icmp eq i8 %loadBr_429a7a, 1
  br i1 %cmpBr_429a7a, label %block_.L_429a8a, label %block_429a80

block_429a80:                                     ; preds = %block_429a57
  %loadMem_429a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 33
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %5136 to i64*
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 15
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %5139 to i64*
  %5140 = load i64, i64* %RBP.i393
  %5141 = sub i64 %5140, 68
  %5142 = load i64, i64* %PC.i392
  %5143 = add i64 %5142, 4
  store i64 %5143, i64* %PC.i392
  %5144 = inttoptr i64 %5141 to i32*
  %5145 = load i32, i32* %5144
  %5146 = sub i32 %5145, 1
  %5147 = icmp ult i32 %5145, 1
  %5148 = zext i1 %5147 to i8
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5148, i8* %5149, align 1
  %5150 = and i32 %5146, 255
  %5151 = call i32 @llvm.ctpop.i32(i32 %5150)
  %5152 = trunc i32 %5151 to i8
  %5153 = and i8 %5152, 1
  %5154 = xor i8 %5153, 1
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5154, i8* %5155, align 1
  %5156 = xor i32 %5145, 1
  %5157 = xor i32 %5156, %5146
  %5158 = lshr i32 %5157, 4
  %5159 = trunc i32 %5158 to i8
  %5160 = and i8 %5159, 1
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5160, i8* %5161, align 1
  %5162 = icmp eq i32 %5146, 0
  %5163 = zext i1 %5162 to i8
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5163, i8* %5164, align 1
  %5165 = lshr i32 %5146, 31
  %5166 = trunc i32 %5165 to i8
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5166, i8* %5167, align 1
  %5168 = lshr i32 %5145, 31
  %5169 = xor i32 %5165, %5168
  %5170 = add i32 %5169, %5168
  %5171 = icmp eq i32 %5170, 2
  %5172 = zext i1 %5171 to i8
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5172, i8* %5173, align 1
  store %struct.Memory* %loadMem_429a80, %struct.Memory** %MEMORY
  %loadMem_429a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 33
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %5176 to i64*
  %5177 = load i64, i64* %PC.i391
  %5178 = add i64 %5177, 466
  %5179 = load i64, i64* %PC.i391
  %5180 = add i64 %5179, 6
  %5181 = load i64, i64* %PC.i391
  %5182 = add i64 %5181, 6
  store i64 %5182, i64* %PC.i391
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5184 = load i8, i8* %5183, align 1
  %5185 = icmp eq i8 %5184, 0
  %5186 = zext i1 %5185 to i8
  store i8 %5186, i8* %BRANCH_TAKEN, align 1
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5188 = select i1 %5185, i64 %5178, i64 %5180
  store i64 %5188, i64* %5187, align 8
  store %struct.Memory* %loadMem_429a84, %struct.Memory** %MEMORY
  %loadBr_429a84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a84 = icmp eq i8 %loadBr_429a84, 1
  br i1 %cmpBr_429a84, label %block_.L_429c56, label %block_.L_429a8a

block_.L_429a8a:                                  ; preds = %block_429a80, %block_429a57
  %loadMem_429a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 33
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %5191 to i64*
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 1
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %5194 to i64*
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 15
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %5197 to i64*
  %5198 = load i64, i64* %RBP.i390
  %5199 = sub i64 %5198, 24
  %5200 = load i64, i64* %PC.i388
  %5201 = add i64 %5200, 4
  store i64 %5201, i64* %PC.i388
  %5202 = inttoptr i64 %5199 to i64*
  %5203 = load i64, i64* %5202
  store i64 %5203, i64* %RAX.i389, align 8
  store %struct.Memory* %loadMem_429a8a, %struct.Memory** %MEMORY
  %loadMem_429a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 33
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %5206 to i64*
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 5
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %5209 to i64*
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5211 = getelementptr inbounds %struct.GPR, %struct.GPR* %5210, i32 0, i32 15
  %5212 = getelementptr inbounds %struct.Reg, %struct.Reg* %5211, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %5212 to i64*
  %5213 = load i64, i64* %RBP.i387
  %5214 = sub i64 %5213, 44
  %5215 = load i64, i64* %PC.i385
  %5216 = add i64 %5215, 4
  store i64 %5216, i64* %PC.i385
  %5217 = inttoptr i64 %5214 to i32*
  %5218 = load i32, i32* %5217
  %5219 = sext i32 %5218 to i64
  store i64 %5219, i64* %RCX.i386, align 8
  store %struct.Memory* %loadMem_429a8e, %struct.Memory** %MEMORY
  %loadMem_429a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 33
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %5222 to i64*
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 1
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %5225 to i64*
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 5
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %5228 to i64*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 7
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %RDX.i384 = bitcast %union.anon* %5231 to i64*
  %5232 = load i64, i64* %RAX.i382
  %5233 = load i64, i64* %RCX.i383
  %5234 = mul i64 %5233, 4
  %5235 = add i64 %5234, %5232
  %5236 = load i64, i64* %PC.i381
  %5237 = add i64 %5236, 3
  store i64 %5237, i64* %PC.i381
  %5238 = inttoptr i64 %5235 to i32*
  %5239 = load i32, i32* %5238
  %5240 = zext i32 %5239 to i64
  store i64 %5240, i64* %RDX.i384, align 8
  store %struct.Memory* %loadMem_429a92, %struct.Memory** %MEMORY
  %loadMem_429a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 33
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %5243 to i64*
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 7
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %EDX.i379 = bitcast %union.anon* %5246 to i32*
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 15
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %5249 to i64*
  %5250 = load i64, i64* %RBP.i380
  %5251 = sub i64 %5250, 104
  %5252 = load i32, i32* %EDX.i379
  %5253 = zext i32 %5252 to i64
  %5254 = load i64, i64* %PC.i378
  %5255 = add i64 %5254, 3
  store i64 %5255, i64* %PC.i378
  %5256 = inttoptr i64 %5251 to i32*
  store i32 %5252, i32* %5256
  store %struct.Memory* %loadMem_429a95, %struct.Memory** %MEMORY
  %loadMem_429a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5258 = getelementptr inbounds %struct.GPR, %struct.GPR* %5257, i32 0, i32 33
  %5259 = getelementptr inbounds %struct.Reg, %struct.Reg* %5258, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %5259 to i64*
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5261 = getelementptr inbounds %struct.GPR, %struct.GPR* %5260, i32 0, i32 7
  %5262 = getelementptr inbounds %struct.Reg, %struct.Reg* %5261, i32 0, i32 0
  %RDX.i376 = bitcast %union.anon* %5262 to i64*
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5264 = getelementptr inbounds %struct.GPR, %struct.GPR* %5263, i32 0, i32 15
  %5265 = getelementptr inbounds %struct.Reg, %struct.Reg* %5264, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %5265 to i64*
  %5266 = load i64, i64* %RBP.i377
  %5267 = sub i64 %5266, 104
  %5268 = load i64, i64* %PC.i375
  %5269 = add i64 %5268, 3
  store i64 %5269, i64* %PC.i375
  %5270 = inttoptr i64 %5267 to i32*
  %5271 = load i32, i32* %5270
  %5272 = zext i32 %5271 to i64
  store i64 %5272, i64* %RDX.i376, align 8
  store %struct.Memory* %loadMem_429a98, %struct.Memory** %MEMORY
  %loadMem_429a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 33
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %5275 to i64*
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5277 = getelementptr inbounds %struct.GPR, %struct.GPR* %5276, i32 0, i32 1
  %5278 = getelementptr inbounds %struct.Reg, %struct.Reg* %5277, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %5278 to i64*
  %5279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5280 = getelementptr inbounds %struct.GPR, %struct.GPR* %5279, i32 0, i32 15
  %5281 = getelementptr inbounds %struct.Reg, %struct.Reg* %5280, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %5281 to i64*
  %5282 = load i64, i64* %RBP.i374
  %5283 = sub i64 %5282, 24
  %5284 = load i64, i64* %PC.i372
  %5285 = add i64 %5284, 4
  store i64 %5285, i64* %PC.i372
  %5286 = inttoptr i64 %5283 to i64*
  %5287 = load i64, i64* %5286
  store i64 %5287, i64* %RAX.i373, align 8
  store %struct.Memory* %loadMem_429a9b, %struct.Memory** %MEMORY
  %loadMem_429a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 33
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %5290 to i64*
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5292 = getelementptr inbounds %struct.GPR, %struct.GPR* %5291, i32 0, i32 9
  %5293 = getelementptr inbounds %struct.Reg, %struct.Reg* %5292, i32 0, i32 0
  %RSI.i370 = bitcast %union.anon* %5293 to i64*
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5295 = getelementptr inbounds %struct.GPR, %struct.GPR* %5294, i32 0, i32 15
  %5296 = getelementptr inbounds %struct.Reg, %struct.Reg* %5295, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %5296 to i64*
  %5297 = load i64, i64* %RBP.i371
  %5298 = sub i64 %5297, 44
  %5299 = load i64, i64* %PC.i369
  %5300 = add i64 %5299, 3
  store i64 %5300, i64* %PC.i369
  %5301 = inttoptr i64 %5298 to i32*
  %5302 = load i32, i32* %5301
  %5303 = zext i32 %5302 to i64
  store i64 %5303, i64* %RSI.i370, align 8
  store %struct.Memory* %loadMem_429a9f, %struct.Memory** %MEMORY
  %loadMem_429aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 33
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %5306 to i64*
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5308 = getelementptr inbounds %struct.GPR, %struct.GPR* %5307, i32 0, i32 5
  %5309 = getelementptr inbounds %struct.Reg, %struct.Reg* %5308, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %5309 to i64*
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5311 = getelementptr inbounds %struct.GPR, %struct.GPR* %5310, i32 0, i32 15
  %5312 = getelementptr inbounds %struct.Reg, %struct.Reg* %5311, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %5312 to i64*
  %5313 = load i64, i64* %RBP.i368
  %5314 = sub i64 %5313, 60
  %5315 = load i64, i64* %PC.i366
  %5316 = add i64 %5315, 4
  store i64 %5316, i64* %PC.i366
  %5317 = inttoptr i64 %5314 to i32*
  %5318 = load i32, i32* %5317
  %5319 = sext i32 %5318 to i64
  store i64 %5319, i64* %RCX.i367, align 8
  store %struct.Memory* %loadMem_429aa2, %struct.Memory** %MEMORY
  %loadMem_429aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 33
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %5322 to i64*
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 5
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %5325 to i64*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 11
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %RDI.i365 = bitcast %union.anon* %5328 to i64*
  %5329 = load i64, i64* %RCX.i364
  %5330 = mul i64 %5329, 4
  %5331 = add i64 %5330, 8053104
  %5332 = load i64, i64* %PC.i363
  %5333 = add i64 %5332, 8
  store i64 %5333, i64* %PC.i363
  %5334 = inttoptr i64 %5331 to i32*
  %5335 = load i32, i32* %5334
  %5336 = sext i32 %5335 to i64
  %5337 = mul i64 %5336, 20
  %5338 = trunc i64 %5337 to i32
  %5339 = and i64 %5337, 4294967295
  store i64 %5339, i64* %RDI.i365, align 8
  %5340 = shl i64 %5337, 32
  %5341 = ashr exact i64 %5340, 32
  %5342 = icmp ne i64 %5341, %5337
  %5343 = zext i1 %5342 to i8
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5343, i8* %5344, align 1
  %5345 = and i32 %5338, 255
  %5346 = call i32 @llvm.ctpop.i32(i32 %5345)
  %5347 = trunc i32 %5346 to i8
  %5348 = and i8 %5347, 1
  %5349 = xor i8 %5348, 1
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5349, i8* %5350, align 1
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5351, align 1
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5352, align 1
  %5353 = lshr i32 %5338, 31
  %5354 = trunc i32 %5353 to i8
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5354, i8* %5355, align 1
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5343, i8* %5356, align 1
  store %struct.Memory* %loadMem_429aa6, %struct.Memory** %MEMORY
  %loadMem_429aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5358 = getelementptr inbounds %struct.GPR, %struct.GPR* %5357, i32 0, i32 33
  %5359 = getelementptr inbounds %struct.Reg, %struct.Reg* %5358, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %5359 to i64*
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5361 = getelementptr inbounds %struct.GPR, %struct.GPR* %5360, i32 0, i32 11
  %5362 = getelementptr inbounds %struct.Reg, %struct.Reg* %5361, i32 0, i32 0
  %RDI.i362 = bitcast %union.anon* %5362 to i64*
  %5363 = load i64, i64* %RDI.i362
  %5364 = load i64, i64* %PC.i361
  %5365 = add i64 %5364, 3
  store i64 %5365, i64* %PC.i361
  %5366 = trunc i64 %5363 to i32
  %5367 = zext i32 %5366 to i64
  store i64 %5367, i64* %RDI.i362, align 8
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5368, align 1
  %5369 = and i32 %5366, 255
  %5370 = call i32 @llvm.ctpop.i32(i32 %5369)
  %5371 = trunc i32 %5370 to i8
  %5372 = and i8 %5371, 1
  %5373 = xor i8 %5372, 1
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5373, i8* %5374, align 1
  %5375 = trunc i64 %5363 to i32
  %5376 = xor i32 %5375, %5366
  %5377 = lshr i32 %5376, 4
  %5378 = trunc i32 %5377 to i8
  %5379 = and i8 %5378, 1
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5379, i8* %5380, align 1
  %5381 = icmp eq i32 %5366, 0
  %5382 = zext i1 %5381 to i8
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5382, i8* %5383, align 1
  %5384 = lshr i32 %5366, 31
  %5385 = trunc i32 %5384 to i8
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5385, i8* %5386, align 1
  %5387 = lshr i32 %5366, 31
  %5388 = xor i32 %5384, %5387
  %5389 = add i32 %5388, %5384
  %5390 = icmp eq i32 %5389, 2
  %5391 = zext i1 %5390 to i8
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5391, i8* %5392, align 1
  store %struct.Memory* %loadMem_429aae, %struct.Memory** %MEMORY
  %loadMem_429ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 33
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %5395 to i64*
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 11
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %EDI.i359 = bitcast %union.anon* %5398 to i32*
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5400 = getelementptr inbounds %struct.GPR, %struct.GPR* %5399, i32 0, i32 9
  %5401 = getelementptr inbounds %struct.Reg, %struct.Reg* %5400, i32 0, i32 0
  %RSI.i360 = bitcast %union.anon* %5401 to i64*
  %5402 = load i64, i64* %RSI.i360
  %5403 = load i32, i32* %EDI.i359
  %5404 = zext i32 %5403 to i64
  %5405 = load i64, i64* %PC.i358
  %5406 = add i64 %5405, 2
  store i64 %5406, i64* %PC.i358
  %5407 = trunc i64 %5402 to i32
  %5408 = add i32 %5403, %5407
  %5409 = zext i32 %5408 to i64
  store i64 %5409, i64* %RSI.i360, align 8
  %5410 = icmp ult i32 %5408, %5407
  %5411 = icmp ult i32 %5408, %5403
  %5412 = or i1 %5410, %5411
  %5413 = zext i1 %5412 to i8
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5413, i8* %5414, align 1
  %5415 = and i32 %5408, 255
  %5416 = call i32 @llvm.ctpop.i32(i32 %5415)
  %5417 = trunc i32 %5416 to i8
  %5418 = and i8 %5417, 1
  %5419 = xor i8 %5418, 1
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5419, i8* %5420, align 1
  %5421 = xor i64 %5404, %5402
  %5422 = trunc i64 %5421 to i32
  %5423 = xor i32 %5422, %5408
  %5424 = lshr i32 %5423, 4
  %5425 = trunc i32 %5424 to i8
  %5426 = and i8 %5425, 1
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5426, i8* %5427, align 1
  %5428 = icmp eq i32 %5408, 0
  %5429 = zext i1 %5428 to i8
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5429, i8* %5430, align 1
  %5431 = lshr i32 %5408, 31
  %5432 = trunc i32 %5431 to i8
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5432, i8* %5433, align 1
  %5434 = lshr i32 %5407, 31
  %5435 = lshr i32 %5403, 31
  %5436 = xor i32 %5431, %5434
  %5437 = xor i32 %5431, %5435
  %5438 = add i32 %5436, %5437
  %5439 = icmp eq i32 %5438, 2
  %5440 = zext i1 %5439 to i8
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5440, i8* %5441, align 1
  store %struct.Memory* %loadMem_429ab1, %struct.Memory** %MEMORY
  %loadMem_429ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 33
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %5444 to i64*
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5446 = getelementptr inbounds %struct.GPR, %struct.GPR* %5445, i32 0, i32 9
  %5447 = getelementptr inbounds %struct.Reg, %struct.Reg* %5446, i32 0, i32 0
  %ESI.i356 = bitcast %union.anon* %5447 to i32*
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5449 = getelementptr inbounds %struct.GPR, %struct.GPR* %5448, i32 0, i32 5
  %5450 = getelementptr inbounds %struct.Reg, %struct.Reg* %5449, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %5450 to i64*
  %5451 = load i32, i32* %ESI.i356
  %5452 = zext i32 %5451 to i64
  %5453 = load i64, i64* %PC.i355
  %5454 = add i64 %5453, 3
  store i64 %5454, i64* %PC.i355
  %5455 = shl i64 %5452, 32
  %5456 = ashr exact i64 %5455, 32
  store i64 %5456, i64* %RCX.i357, align 8
  store %struct.Memory* %loadMem_429ab3, %struct.Memory** %MEMORY
  %loadMem_429ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 33
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %5459 to i64*
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 1
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %5462 to i64*
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 5
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %5465 to i64*
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 9
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %RSI.i354 = bitcast %union.anon* %5468 to i64*
  %5469 = load i64, i64* %RAX.i352
  %5470 = load i64, i64* %RCX.i353
  %5471 = mul i64 %5470, 4
  %5472 = add i64 %5471, %5469
  %5473 = load i64, i64* %PC.i351
  %5474 = add i64 %5473, 3
  store i64 %5474, i64* %PC.i351
  %5475 = inttoptr i64 %5472 to i32*
  %5476 = load i32, i32* %5475
  %5477 = zext i32 %5476 to i64
  store i64 %5477, i64* %RSI.i354, align 8
  store %struct.Memory* %loadMem_429ab6, %struct.Memory** %MEMORY
  %loadMem_429ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 33
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %5480 to i64*
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 1
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %5483 to i64*
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 15
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %5486 to i64*
  %5487 = load i64, i64* %RBP.i350
  %5488 = sub i64 %5487, 24
  %5489 = load i64, i64* %PC.i348
  %5490 = add i64 %5489, 4
  store i64 %5490, i64* %PC.i348
  %5491 = inttoptr i64 %5488 to i64*
  %5492 = load i64, i64* %5491
  store i64 %5492, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_429ab9, %struct.Memory** %MEMORY
  %loadMem_429abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5494 = getelementptr inbounds %struct.GPR, %struct.GPR* %5493, i32 0, i32 33
  %5495 = getelementptr inbounds %struct.Reg, %struct.Reg* %5494, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5495 to i64*
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5497 = getelementptr inbounds %struct.GPR, %struct.GPR* %5496, i32 0, i32 11
  %5498 = getelementptr inbounds %struct.Reg, %struct.Reg* %5497, i32 0, i32 0
  %RDI.i346 = bitcast %union.anon* %5498 to i64*
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 15
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %5501 to i64*
  %5502 = load i64, i64* %RBP.i347
  %5503 = sub i64 %5502, 44
  %5504 = load i64, i64* %PC.i345
  %5505 = add i64 %5504, 3
  store i64 %5505, i64* %PC.i345
  %5506 = inttoptr i64 %5503 to i32*
  %5507 = load i32, i32* %5506
  %5508 = zext i32 %5507 to i64
  store i64 %5508, i64* %RDI.i346, align 8
  store %struct.Memory* %loadMem_429abd, %struct.Memory** %MEMORY
  %loadMem_429ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5510 = getelementptr inbounds %struct.GPR, %struct.GPR* %5509, i32 0, i32 33
  %5511 = getelementptr inbounds %struct.Reg, %struct.Reg* %5510, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %5511 to i64*
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 5
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %5514 to i64*
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5516 = getelementptr inbounds %struct.GPR, %struct.GPR* %5515, i32 0, i32 15
  %5517 = getelementptr inbounds %struct.Reg, %struct.Reg* %5516, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %5517 to i64*
  %5518 = load i64, i64* %RBP.i344
  %5519 = sub i64 %5518, 60
  %5520 = load i64, i64* %PC.i342
  %5521 = add i64 %5520, 4
  store i64 %5521, i64* %PC.i342
  %5522 = inttoptr i64 %5519 to i32*
  %5523 = load i32, i32* %5522
  %5524 = sext i32 %5523 to i64
  store i64 %5524, i64* %RCX.i343, align 8
  store %struct.Memory* %loadMem_429ac0, %struct.Memory** %MEMORY
  %loadMem_429ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 33
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5527 to i64*
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 17
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %R8D.i340 = bitcast %union.anon* %5530 to i32*
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5532 = getelementptr inbounds %struct.GPR, %struct.GPR* %5531, i32 0, i32 5
  %5533 = getelementptr inbounds %struct.Reg, %struct.Reg* %5532, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %5533 to i64*
  %5534 = bitcast i32* %R8D.i340 to i64*
  %5535 = load i64, i64* %RCX.i341
  %5536 = mul i64 %5535, 4
  %5537 = add i64 %5536, 8053136
  %5538 = load i64, i64* %PC.i339
  %5539 = add i64 %5538, 8
  store i64 %5539, i64* %PC.i339
  %5540 = inttoptr i64 %5537 to i32*
  %5541 = load i32, i32* %5540
  %5542 = zext i32 %5541 to i64
  store i64 %5542, i64* %5534, align 8
  store %struct.Memory* %loadMem_429ac4, %struct.Memory** %MEMORY
  %loadMem_429acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5544 = getelementptr inbounds %struct.GPR, %struct.GPR* %5543, i32 0, i32 33
  %5545 = getelementptr inbounds %struct.Reg, %struct.Reg* %5544, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %5545 to i64*
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 17
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %R8D.i338 = bitcast %union.anon* %5548 to i32*
  %5549 = bitcast i32* %R8D.i338 to i64*
  %5550 = load i32, i32* %R8D.i338
  %5551 = zext i32 %5550 to i64
  %5552 = load i64, i64* %PC.i337
  %5553 = add i64 %5552, 4
  store i64 %5553, i64* %PC.i337
  %5554 = zext i32 %5550 to i64
  store i64 %5554, i64* %5549, align 8
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5555, align 1
  %5556 = and i32 %5550, 255
  %5557 = call i32 @llvm.ctpop.i32(i32 %5556)
  %5558 = trunc i32 %5557 to i8
  %5559 = and i8 %5558, 1
  %5560 = xor i8 %5559, 1
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5560, i8* %5561, align 1
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5562, align 1
  %5563 = icmp eq i32 %5550, 0
  %5564 = zext i1 %5563 to i8
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5564, i8* %5565, align 1
  %5566 = lshr i32 %5550, 31
  %5567 = trunc i32 %5566 to i8
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5567, i8* %5568, align 1
  %5569 = lshr i32 %5550, 31
  %5570 = xor i32 %5566, %5569
  %5571 = add i32 %5570, %5566
  %5572 = icmp eq i32 %5571, 2
  %5573 = zext i1 %5572 to i8
  %5574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5573, i8* %5574, align 1
  store %struct.Memory* %loadMem_429acc, %struct.Memory** %MEMORY
  %loadMem_429ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5576 = getelementptr inbounds %struct.GPR, %struct.GPR* %5575, i32 0, i32 33
  %5577 = getelementptr inbounds %struct.Reg, %struct.Reg* %5576, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5577 to i64*
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 17
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %5580 to i32*
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 11
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5583 to i64*
  %5584 = load i64, i64* %RDI.i
  %5585 = load i32, i32* %R8D.i
  %5586 = zext i32 %5585 to i64
  %5587 = load i64, i64* %PC.i336
  %5588 = add i64 %5587, 3
  store i64 %5588, i64* %PC.i336
  %5589 = trunc i64 %5584 to i32
  %5590 = add i32 %5585, %5589
  %5591 = zext i32 %5590 to i64
  store i64 %5591, i64* %RDI.i, align 8
  %5592 = icmp ult i32 %5590, %5589
  %5593 = icmp ult i32 %5590, %5585
  %5594 = or i1 %5592, %5593
  %5595 = zext i1 %5594 to i8
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5595, i8* %5596, align 1
  %5597 = and i32 %5590, 255
  %5598 = call i32 @llvm.ctpop.i32(i32 %5597)
  %5599 = trunc i32 %5598 to i8
  %5600 = and i8 %5599, 1
  %5601 = xor i8 %5600, 1
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5601, i8* %5602, align 1
  %5603 = xor i64 %5586, %5584
  %5604 = trunc i64 %5603 to i32
  %5605 = xor i32 %5604, %5590
  %5606 = lshr i32 %5605, 4
  %5607 = trunc i32 %5606 to i8
  %5608 = and i8 %5607, 1
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5608, i8* %5609, align 1
  %5610 = icmp eq i32 %5590, 0
  %5611 = zext i1 %5610 to i8
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5611, i8* %5612, align 1
  %5613 = lshr i32 %5590, 31
  %5614 = trunc i32 %5613 to i8
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5614, i8* %5615, align 1
  %5616 = lshr i32 %5589, 31
  %5617 = lshr i32 %5585, 31
  %5618 = xor i32 %5613, %5616
  %5619 = xor i32 %5613, %5617
  %5620 = add i32 %5618, %5619
  %5621 = icmp eq i32 %5620, 2
  %5622 = zext i1 %5621 to i8
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5622, i8* %5623, align 1
  store %struct.Memory* %loadMem_429ad0, %struct.Memory** %MEMORY
  %loadMem_429ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 33
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %5626 to i64*
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 11
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %EDI.i334 = bitcast %union.anon* %5629 to i32*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 5
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %5632 to i64*
  %5633 = load i32, i32* %EDI.i334
  %5634 = zext i32 %5633 to i64
  %5635 = load i64, i64* %PC.i333
  %5636 = add i64 %5635, 3
  store i64 %5636, i64* %PC.i333
  %5637 = shl i64 %5634, 32
  %5638 = ashr exact i64 %5637, 32
  store i64 %5638, i64* %RCX.i335, align 8
  store %struct.Memory* %loadMem_429ad3, %struct.Memory** %MEMORY
  %loadMem_429ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 33
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5641 to i64*
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 9
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %ESI.i330 = bitcast %union.anon* %5644 to i32*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 1
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %5647 to i64*
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 5
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %5650 to i64*
  %5651 = load i32, i32* %ESI.i330
  %5652 = zext i32 %5651 to i64
  %5653 = load i64, i64* %RAX.i331
  %5654 = load i64, i64* %RCX.i332
  %5655 = mul i64 %5654, 4
  %5656 = add i64 %5655, %5653
  %5657 = load i64, i64* %PC.i329
  %5658 = add i64 %5657, 3
  store i64 %5658, i64* %PC.i329
  %5659 = inttoptr i64 %5656 to i32*
  %5660 = load i32, i32* %5659
  %5661 = sub i32 %5651, %5660
  %5662 = icmp ult i32 %5651, %5660
  %5663 = zext i1 %5662 to i8
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5663, i8* %5664, align 1
  %5665 = and i32 %5661, 255
  %5666 = call i32 @llvm.ctpop.i32(i32 %5665)
  %5667 = trunc i32 %5666 to i8
  %5668 = and i8 %5667, 1
  %5669 = xor i8 %5668, 1
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5669, i8* %5670, align 1
  %5671 = xor i32 %5660, %5651
  %5672 = xor i32 %5671, %5661
  %5673 = lshr i32 %5672, 4
  %5674 = trunc i32 %5673 to i8
  %5675 = and i8 %5674, 1
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5675, i8* %5676, align 1
  %5677 = icmp eq i32 %5661, 0
  %5678 = zext i1 %5677 to i8
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5678, i8* %5679, align 1
  %5680 = lshr i32 %5661, 31
  %5681 = trunc i32 %5680 to i8
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5681, i8* %5682, align 1
  %5683 = lshr i32 %5651, 31
  %5684 = lshr i32 %5660, 31
  %5685 = xor i32 %5684, %5683
  %5686 = xor i32 %5680, %5683
  %5687 = add i32 %5686, %5685
  %5688 = icmp eq i32 %5687, 2
  %5689 = zext i1 %5688 to i8
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5689, i8* %5690, align 1
  store %struct.Memory* %loadMem_429ad6, %struct.Memory** %MEMORY
  %loadMem_429ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 33
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5693 to i64*
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5695 = getelementptr inbounds %struct.GPR, %struct.GPR* %5694, i32 0, i32 7
  %5696 = getelementptr inbounds %struct.Reg, %struct.Reg* %5695, i32 0, i32 0
  %EDX.i327 = bitcast %union.anon* %5696 to i32*
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5698 = getelementptr inbounds %struct.GPR, %struct.GPR* %5697, i32 0, i32 15
  %5699 = getelementptr inbounds %struct.Reg, %struct.Reg* %5698, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %5699 to i64*
  %5700 = load i64, i64* %RBP.i328
  %5701 = sub i64 %5700, 132
  %5702 = load i32, i32* %EDX.i327
  %5703 = zext i32 %5702 to i64
  %5704 = load i64, i64* %PC.i326
  %5705 = add i64 %5704, 6
  store i64 %5705, i64* %PC.i326
  %5706 = inttoptr i64 %5701 to i32*
  store i32 %5702, i32* %5706
  store %struct.Memory* %loadMem_429ad9, %struct.Memory** %MEMORY
  %loadMem_429adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5708 = getelementptr inbounds %struct.GPR, %struct.GPR* %5707, i32 0, i32 33
  %5709 = getelementptr inbounds %struct.Reg, %struct.Reg* %5708, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %5709 to i64*
  %5710 = load i64, i64* %PC.i325
  %5711 = add i64 %5710, 46
  %5712 = load i64, i64* %PC.i325
  %5713 = add i64 %5712, 6
  %5714 = load i64, i64* %PC.i325
  %5715 = add i64 %5714, 6
  store i64 %5715, i64* %PC.i325
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5717 = load i8, i8* %5716, align 1
  %5718 = icmp ne i8 %5717, 0
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5720 = load i8, i8* %5719, align 1
  %5721 = icmp ne i8 %5720, 0
  %5722 = xor i1 %5718, %5721
  %5723 = xor i1 %5722, true
  %5724 = zext i1 %5723 to i8
  store i8 %5724, i8* %BRANCH_TAKEN, align 1
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5726 = select i1 %5722, i64 %5713, i64 %5711
  store i64 %5726, i64* %5725, align 8
  store %struct.Memory* %loadMem_429adf, %struct.Memory** %MEMORY
  %loadBr_429adf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429adf = icmp eq i8 %loadBr_429adf, 1
  br i1 %cmpBr_429adf, label %block_.L_429b0d, label %block_429ae5

block_429ae5:                                     ; preds = %block_.L_429a8a
  %loadMem_429ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5728 = getelementptr inbounds %struct.GPR, %struct.GPR* %5727, i32 0, i32 33
  %5729 = getelementptr inbounds %struct.Reg, %struct.Reg* %5728, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %5729 to i64*
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5731 = getelementptr inbounds %struct.GPR, %struct.GPR* %5730, i32 0, i32 1
  %5732 = getelementptr inbounds %struct.Reg, %struct.Reg* %5731, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %5732 to i64*
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5734 = getelementptr inbounds %struct.GPR, %struct.GPR* %5733, i32 0, i32 15
  %5735 = getelementptr inbounds %struct.Reg, %struct.Reg* %5734, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %5735 to i64*
  %5736 = load i64, i64* %RBP.i324
  %5737 = sub i64 %5736, 24
  %5738 = load i64, i64* %PC.i322
  %5739 = add i64 %5738, 4
  store i64 %5739, i64* %PC.i322
  %5740 = inttoptr i64 %5737 to i64*
  %5741 = load i64, i64* %5740
  store i64 %5741, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_429ae5, %struct.Memory** %MEMORY
  %loadMem_429ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5743 = getelementptr inbounds %struct.GPR, %struct.GPR* %5742, i32 0, i32 33
  %5744 = getelementptr inbounds %struct.Reg, %struct.Reg* %5743, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5744 to i64*
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5746 = getelementptr inbounds %struct.GPR, %struct.GPR* %5745, i32 0, i32 5
  %5747 = getelementptr inbounds %struct.Reg, %struct.Reg* %5746, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %5747 to i64*
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 15
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %5750 to i64*
  %5751 = load i64, i64* %RBP.i321
  %5752 = sub i64 %5751, 44
  %5753 = load i64, i64* %PC.i319
  %5754 = add i64 %5753, 3
  store i64 %5754, i64* %PC.i319
  %5755 = inttoptr i64 %5752 to i32*
  %5756 = load i32, i32* %5755
  %5757 = zext i32 %5756 to i64
  store i64 %5757, i64* %RCX.i320, align 8
  store %struct.Memory* %loadMem_429ae9, %struct.Memory** %MEMORY
  %loadMem_429aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 33
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5760 to i64*
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5762 = getelementptr inbounds %struct.GPR, %struct.GPR* %5761, i32 0, i32 7
  %5763 = getelementptr inbounds %struct.Reg, %struct.Reg* %5762, i32 0, i32 0
  %RDX.i317 = bitcast %union.anon* %5763 to i64*
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 15
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %5766 to i64*
  %5767 = load i64, i64* %RBP.i318
  %5768 = sub i64 %5767, 60
  %5769 = load i64, i64* %PC.i316
  %5770 = add i64 %5769, 4
  store i64 %5770, i64* %PC.i316
  %5771 = inttoptr i64 %5768 to i32*
  %5772 = load i32, i32* %5771
  %5773 = sext i32 %5772 to i64
  store i64 %5773, i64* %RDX.i317, align 8
  store %struct.Memory* %loadMem_429aec, %struct.Memory** %MEMORY
  %loadMem_429af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5775 = getelementptr inbounds %struct.GPR, %struct.GPR* %5774, i32 0, i32 33
  %5776 = getelementptr inbounds %struct.Reg, %struct.Reg* %5775, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %5776 to i64*
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5778 = getelementptr inbounds %struct.GPR, %struct.GPR* %5777, i32 0, i32 7
  %5779 = getelementptr inbounds %struct.Reg, %struct.Reg* %5778, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %5779 to i64*
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5781 = getelementptr inbounds %struct.GPR, %struct.GPR* %5780, i32 0, i32 9
  %5782 = getelementptr inbounds %struct.Reg, %struct.Reg* %5781, i32 0, i32 0
  %RSI.i315 = bitcast %union.anon* %5782 to i64*
  %5783 = load i64, i64* %RDX.i314
  %5784 = mul i64 %5783, 4
  %5785 = add i64 %5784, 8053136
  %5786 = load i64, i64* %PC.i313
  %5787 = add i64 %5786, 7
  store i64 %5787, i64* %PC.i313
  %5788 = inttoptr i64 %5785 to i32*
  %5789 = load i32, i32* %5788
  %5790 = zext i32 %5789 to i64
  store i64 %5790, i64* %RSI.i315, align 8
  store %struct.Memory* %loadMem_429af0, %struct.Memory** %MEMORY
  %loadMem_429af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5792 = getelementptr inbounds %struct.GPR, %struct.GPR* %5791, i32 0, i32 33
  %5793 = getelementptr inbounds %struct.Reg, %struct.Reg* %5792, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %5793 to i64*
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5795 = getelementptr inbounds %struct.GPR, %struct.GPR* %5794, i32 0, i32 9
  %5796 = getelementptr inbounds %struct.Reg, %struct.Reg* %5795, i32 0, i32 0
  %RSI.i312 = bitcast %union.anon* %5796 to i64*
  %5797 = load i64, i64* %RSI.i312
  %5798 = load i64, i64* %PC.i311
  %5799 = add i64 %5798, 3
  store i64 %5799, i64* %PC.i311
  %5800 = trunc i64 %5797 to i32
  %5801 = zext i32 %5800 to i64
  store i64 %5801, i64* %RSI.i312, align 8
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5802, align 1
  %5803 = and i32 %5800, 255
  %5804 = call i32 @llvm.ctpop.i32(i32 %5803)
  %5805 = trunc i32 %5804 to i8
  %5806 = and i8 %5805, 1
  %5807 = xor i8 %5806, 1
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5807, i8* %5808, align 1
  %5809 = trunc i64 %5797 to i32
  %5810 = xor i32 %5809, %5800
  %5811 = lshr i32 %5810, 4
  %5812 = trunc i32 %5811 to i8
  %5813 = and i8 %5812, 1
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5813, i8* %5814, align 1
  %5815 = icmp eq i32 %5800, 0
  %5816 = zext i1 %5815 to i8
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5816, i8* %5817, align 1
  %5818 = lshr i32 %5800, 31
  %5819 = trunc i32 %5818 to i8
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5819, i8* %5820, align 1
  %5821 = lshr i32 %5800, 31
  %5822 = xor i32 %5818, %5821
  %5823 = add i32 %5822, %5818
  %5824 = icmp eq i32 %5823, 2
  %5825 = zext i1 %5824 to i8
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5825, i8* %5826, align 1
  store %struct.Memory* %loadMem_429af7, %struct.Memory** %MEMORY
  %loadMem_429afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 33
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %5829 to i64*
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5831 = getelementptr inbounds %struct.GPR, %struct.GPR* %5830, i32 0, i32 9
  %5832 = getelementptr inbounds %struct.Reg, %struct.Reg* %5831, i32 0, i32 0
  %ESI.i309 = bitcast %union.anon* %5832 to i32*
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5834 = getelementptr inbounds %struct.GPR, %struct.GPR* %5833, i32 0, i32 5
  %5835 = getelementptr inbounds %struct.Reg, %struct.Reg* %5834, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %5835 to i64*
  %5836 = load i64, i64* %RCX.i310
  %5837 = load i32, i32* %ESI.i309
  %5838 = zext i32 %5837 to i64
  %5839 = load i64, i64* %PC.i308
  %5840 = add i64 %5839, 2
  store i64 %5840, i64* %PC.i308
  %5841 = trunc i64 %5836 to i32
  %5842 = add i32 %5837, %5841
  %5843 = zext i32 %5842 to i64
  store i64 %5843, i64* %RCX.i310, align 8
  %5844 = icmp ult i32 %5842, %5841
  %5845 = icmp ult i32 %5842, %5837
  %5846 = or i1 %5844, %5845
  %5847 = zext i1 %5846 to i8
  %5848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5847, i8* %5848, align 1
  %5849 = and i32 %5842, 255
  %5850 = call i32 @llvm.ctpop.i32(i32 %5849)
  %5851 = trunc i32 %5850 to i8
  %5852 = and i8 %5851, 1
  %5853 = xor i8 %5852, 1
  %5854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5853, i8* %5854, align 1
  %5855 = xor i64 %5838, %5836
  %5856 = trunc i64 %5855 to i32
  %5857 = xor i32 %5856, %5842
  %5858 = lshr i32 %5857, 4
  %5859 = trunc i32 %5858 to i8
  %5860 = and i8 %5859, 1
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5860, i8* %5861, align 1
  %5862 = icmp eq i32 %5842, 0
  %5863 = zext i1 %5862 to i8
  %5864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5863, i8* %5864, align 1
  %5865 = lshr i32 %5842, 31
  %5866 = trunc i32 %5865 to i8
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5866, i8* %5867, align 1
  %5868 = lshr i32 %5841, 31
  %5869 = lshr i32 %5837, 31
  %5870 = xor i32 %5865, %5868
  %5871 = xor i32 %5865, %5869
  %5872 = add i32 %5870, %5871
  %5873 = icmp eq i32 %5872, 2
  %5874 = zext i1 %5873 to i8
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5874, i8* %5875, align 1
  store %struct.Memory* %loadMem_429afa, %struct.Memory** %MEMORY
  %loadMem_429afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5877 = getelementptr inbounds %struct.GPR, %struct.GPR* %5876, i32 0, i32 33
  %5878 = getelementptr inbounds %struct.Reg, %struct.Reg* %5877, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5878 to i64*
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5880 = getelementptr inbounds %struct.GPR, %struct.GPR* %5879, i32 0, i32 5
  %5881 = getelementptr inbounds %struct.Reg, %struct.Reg* %5880, i32 0, i32 0
  %ECX.i306 = bitcast %union.anon* %5881 to i32*
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5883 = getelementptr inbounds %struct.GPR, %struct.GPR* %5882, i32 0, i32 7
  %5884 = getelementptr inbounds %struct.Reg, %struct.Reg* %5883, i32 0, i32 0
  %RDX.i307 = bitcast %union.anon* %5884 to i64*
  %5885 = load i32, i32* %ECX.i306
  %5886 = zext i32 %5885 to i64
  %5887 = load i64, i64* %PC.i305
  %5888 = add i64 %5887, 3
  store i64 %5888, i64* %PC.i305
  %5889 = shl i64 %5886, 32
  %5890 = ashr exact i64 %5889, 32
  store i64 %5890, i64* %RDX.i307, align 8
  store %struct.Memory* %loadMem_429afc, %struct.Memory** %MEMORY
  %loadMem_429aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5892 = getelementptr inbounds %struct.GPR, %struct.GPR* %5891, i32 0, i32 33
  %5893 = getelementptr inbounds %struct.Reg, %struct.Reg* %5892, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %5893 to i64*
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5895 = getelementptr inbounds %struct.GPR, %struct.GPR* %5894, i32 0, i32 1
  %5896 = getelementptr inbounds %struct.Reg, %struct.Reg* %5895, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %5896 to i64*
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5898 = getelementptr inbounds %struct.GPR, %struct.GPR* %5897, i32 0, i32 5
  %5899 = getelementptr inbounds %struct.Reg, %struct.Reg* %5898, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %5899 to i64*
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5901 = getelementptr inbounds %struct.GPR, %struct.GPR* %5900, i32 0, i32 7
  %5902 = getelementptr inbounds %struct.Reg, %struct.Reg* %5901, i32 0, i32 0
  %RDX.i304 = bitcast %union.anon* %5902 to i64*
  %5903 = load i64, i64* %RAX.i302
  %5904 = load i64, i64* %RDX.i304
  %5905 = mul i64 %5904, 4
  %5906 = add i64 %5905, %5903
  %5907 = load i64, i64* %PC.i301
  %5908 = add i64 %5907, 3
  store i64 %5908, i64* %PC.i301
  %5909 = inttoptr i64 %5906 to i32*
  %5910 = load i32, i32* %5909
  %5911 = zext i32 %5910 to i64
  store i64 %5911, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_429aff, %struct.Memory** %MEMORY
  %loadMem_429b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5913 = getelementptr inbounds %struct.GPR, %struct.GPR* %5912, i32 0, i32 33
  %5914 = getelementptr inbounds %struct.Reg, %struct.Reg* %5913, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5914 to i64*
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5916 = getelementptr inbounds %struct.GPR, %struct.GPR* %5915, i32 0, i32 5
  %5917 = getelementptr inbounds %struct.Reg, %struct.Reg* %5916, i32 0, i32 0
  %ECX.i299 = bitcast %union.anon* %5917 to i32*
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5919 = getelementptr inbounds %struct.GPR, %struct.GPR* %5918, i32 0, i32 15
  %5920 = getelementptr inbounds %struct.Reg, %struct.Reg* %5919, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %5920 to i64*
  %5921 = load i64, i64* %RBP.i300
  %5922 = sub i64 %5921, 136
  %5923 = load i32, i32* %ECX.i299
  %5924 = zext i32 %5923 to i64
  %5925 = load i64, i64* %PC.i298
  %5926 = add i64 %5925, 6
  store i64 %5926, i64* %PC.i298
  %5927 = inttoptr i64 %5922 to i32*
  store i32 %5923, i32* %5927
  store %struct.Memory* %loadMem_429b02, %struct.Memory** %MEMORY
  %loadMem_429b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 33
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5930 to i64*
  %5931 = load i64, i64* %PC.i297
  %5932 = add i64 %5931, 41
  %5933 = load i64, i64* %PC.i297
  %5934 = add i64 %5933, 5
  store i64 %5934, i64* %PC.i297
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5932, i64* %5935, align 8
  store %struct.Memory* %loadMem_429b08, %struct.Memory** %MEMORY
  br label %block_.L_429b31

block_.L_429b0d:                                  ; preds = %block_.L_429a8a
  %loadMem_429b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5937 = getelementptr inbounds %struct.GPR, %struct.GPR* %5936, i32 0, i32 33
  %5938 = getelementptr inbounds %struct.Reg, %struct.Reg* %5937, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5938 to i64*
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5940 = getelementptr inbounds %struct.GPR, %struct.GPR* %5939, i32 0, i32 1
  %5941 = getelementptr inbounds %struct.Reg, %struct.Reg* %5940, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %5941 to i64*
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5943 = getelementptr inbounds %struct.GPR, %struct.GPR* %5942, i32 0, i32 15
  %5944 = getelementptr inbounds %struct.Reg, %struct.Reg* %5943, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %5944 to i64*
  %5945 = load i64, i64* %RBP.i296
  %5946 = sub i64 %5945, 24
  %5947 = load i64, i64* %PC.i294
  %5948 = add i64 %5947, 4
  store i64 %5948, i64* %PC.i294
  %5949 = inttoptr i64 %5946 to i64*
  %5950 = load i64, i64* %5949
  store i64 %5950, i64* %RAX.i295, align 8
  store %struct.Memory* %loadMem_429b0d, %struct.Memory** %MEMORY
  %loadMem_429b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5952 = getelementptr inbounds %struct.GPR, %struct.GPR* %5951, i32 0, i32 33
  %5953 = getelementptr inbounds %struct.Reg, %struct.Reg* %5952, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5953 to i64*
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5955 = getelementptr inbounds %struct.GPR, %struct.GPR* %5954, i32 0, i32 5
  %5956 = getelementptr inbounds %struct.Reg, %struct.Reg* %5955, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %5956 to i64*
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5958 = getelementptr inbounds %struct.GPR, %struct.GPR* %5957, i32 0, i32 15
  %5959 = getelementptr inbounds %struct.Reg, %struct.Reg* %5958, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %5959 to i64*
  %5960 = load i64, i64* %RBP.i293
  %5961 = sub i64 %5960, 44
  %5962 = load i64, i64* %PC.i291
  %5963 = add i64 %5962, 3
  store i64 %5963, i64* %PC.i291
  %5964 = inttoptr i64 %5961 to i32*
  %5965 = load i32, i32* %5964
  %5966 = zext i32 %5965 to i64
  store i64 %5966, i64* %RCX.i292, align 8
  store %struct.Memory* %loadMem_429b11, %struct.Memory** %MEMORY
  %loadMem_429b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 33
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5969 to i64*
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5971 = getelementptr inbounds %struct.GPR, %struct.GPR* %5970, i32 0, i32 7
  %5972 = getelementptr inbounds %struct.Reg, %struct.Reg* %5971, i32 0, i32 0
  %RDX.i289 = bitcast %union.anon* %5972 to i64*
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 15
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %5975 to i64*
  %5976 = load i64, i64* %RBP.i290
  %5977 = sub i64 %5976, 60
  %5978 = load i64, i64* %PC.i288
  %5979 = add i64 %5978, 4
  store i64 %5979, i64* %PC.i288
  %5980 = inttoptr i64 %5977 to i32*
  %5981 = load i32, i32* %5980
  %5982 = sext i32 %5981 to i64
  store i64 %5982, i64* %RDX.i289, align 8
  store %struct.Memory* %loadMem_429b14, %struct.Memory** %MEMORY
  %loadMem_429b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5984 = getelementptr inbounds %struct.GPR, %struct.GPR* %5983, i32 0, i32 33
  %5985 = getelementptr inbounds %struct.Reg, %struct.Reg* %5984, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5985 to i64*
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5987 = getelementptr inbounds %struct.GPR, %struct.GPR* %5986, i32 0, i32 7
  %5988 = getelementptr inbounds %struct.Reg, %struct.Reg* %5987, i32 0, i32 0
  %RDX.i286 = bitcast %union.anon* %5988 to i64*
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5990 = getelementptr inbounds %struct.GPR, %struct.GPR* %5989, i32 0, i32 9
  %5991 = getelementptr inbounds %struct.Reg, %struct.Reg* %5990, i32 0, i32 0
  %RSI.i287 = bitcast %union.anon* %5991 to i64*
  %5992 = load i64, i64* %RDX.i286
  %5993 = mul i64 %5992, 4
  %5994 = add i64 %5993, 8053104
  %5995 = load i64, i64* %PC.i285
  %5996 = add i64 %5995, 8
  store i64 %5996, i64* %PC.i285
  %5997 = inttoptr i64 %5994 to i32*
  %5998 = load i32, i32* %5997
  %5999 = sext i32 %5998 to i64
  %6000 = mul i64 %5999, 20
  %6001 = trunc i64 %6000 to i32
  %6002 = and i64 %6000, 4294967295
  store i64 %6002, i64* %RSI.i287, align 8
  %6003 = shl i64 %6000, 32
  %6004 = ashr exact i64 %6003, 32
  %6005 = icmp ne i64 %6004, %6000
  %6006 = zext i1 %6005 to i8
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6006, i8* %6007, align 1
  %6008 = and i32 %6001, 255
  %6009 = call i32 @llvm.ctpop.i32(i32 %6008)
  %6010 = trunc i32 %6009 to i8
  %6011 = and i8 %6010, 1
  %6012 = xor i8 %6011, 1
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6012, i8* %6013, align 1
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6014, align 1
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6015, align 1
  %6016 = lshr i32 %6001, 31
  %6017 = trunc i32 %6016 to i8
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6017, i8* %6018, align 1
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6006, i8* %6019, align 1
  store %struct.Memory* %loadMem_429b18, %struct.Memory** %MEMORY
  %loadMem_429b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6021 = getelementptr inbounds %struct.GPR, %struct.GPR* %6020, i32 0, i32 33
  %6022 = getelementptr inbounds %struct.Reg, %struct.Reg* %6021, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %6022 to i64*
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6024 = getelementptr inbounds %struct.GPR, %struct.GPR* %6023, i32 0, i32 9
  %6025 = getelementptr inbounds %struct.Reg, %struct.Reg* %6024, i32 0, i32 0
  %RSI.i284 = bitcast %union.anon* %6025 to i64*
  %6026 = load i64, i64* %RSI.i284
  %6027 = load i64, i64* %PC.i283
  %6028 = add i64 %6027, 3
  store i64 %6028, i64* %PC.i283
  %6029 = trunc i64 %6026 to i32
  %6030 = zext i32 %6029 to i64
  store i64 %6030, i64* %RSI.i284, align 8
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6031, align 1
  %6032 = and i32 %6029, 255
  %6033 = call i32 @llvm.ctpop.i32(i32 %6032)
  %6034 = trunc i32 %6033 to i8
  %6035 = and i8 %6034, 1
  %6036 = xor i8 %6035, 1
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6036, i8* %6037, align 1
  %6038 = trunc i64 %6026 to i32
  %6039 = xor i32 %6038, %6029
  %6040 = lshr i32 %6039, 4
  %6041 = trunc i32 %6040 to i8
  %6042 = and i8 %6041, 1
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6042, i8* %6043, align 1
  %6044 = icmp eq i32 %6029, 0
  %6045 = zext i1 %6044 to i8
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6045, i8* %6046, align 1
  %6047 = lshr i32 %6029, 31
  %6048 = trunc i32 %6047 to i8
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6048, i8* %6049, align 1
  %6050 = lshr i32 %6029, 31
  %6051 = xor i32 %6047, %6050
  %6052 = add i32 %6051, %6047
  %6053 = icmp eq i32 %6052, 2
  %6054 = zext i1 %6053 to i8
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6054, i8* %6055, align 1
  store %struct.Memory* %loadMem_429b20, %struct.Memory** %MEMORY
  %loadMem_429b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6057 = getelementptr inbounds %struct.GPR, %struct.GPR* %6056, i32 0, i32 33
  %6058 = getelementptr inbounds %struct.Reg, %struct.Reg* %6057, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %6058 to i64*
  %6059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6060 = getelementptr inbounds %struct.GPR, %struct.GPR* %6059, i32 0, i32 9
  %6061 = getelementptr inbounds %struct.Reg, %struct.Reg* %6060, i32 0, i32 0
  %ESI.i281 = bitcast %union.anon* %6061 to i32*
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6063 = getelementptr inbounds %struct.GPR, %struct.GPR* %6062, i32 0, i32 5
  %6064 = getelementptr inbounds %struct.Reg, %struct.Reg* %6063, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %6064 to i64*
  %6065 = load i64, i64* %RCX.i282
  %6066 = load i32, i32* %ESI.i281
  %6067 = zext i32 %6066 to i64
  %6068 = load i64, i64* %PC.i280
  %6069 = add i64 %6068, 2
  store i64 %6069, i64* %PC.i280
  %6070 = trunc i64 %6065 to i32
  %6071 = add i32 %6066, %6070
  %6072 = zext i32 %6071 to i64
  store i64 %6072, i64* %RCX.i282, align 8
  %6073 = icmp ult i32 %6071, %6070
  %6074 = icmp ult i32 %6071, %6066
  %6075 = or i1 %6073, %6074
  %6076 = zext i1 %6075 to i8
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6076, i8* %6077, align 1
  %6078 = and i32 %6071, 255
  %6079 = call i32 @llvm.ctpop.i32(i32 %6078)
  %6080 = trunc i32 %6079 to i8
  %6081 = and i8 %6080, 1
  %6082 = xor i8 %6081, 1
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6082, i8* %6083, align 1
  %6084 = xor i64 %6067, %6065
  %6085 = trunc i64 %6084 to i32
  %6086 = xor i32 %6085, %6071
  %6087 = lshr i32 %6086, 4
  %6088 = trunc i32 %6087 to i8
  %6089 = and i8 %6088, 1
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6089, i8* %6090, align 1
  %6091 = icmp eq i32 %6071, 0
  %6092 = zext i1 %6091 to i8
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6092, i8* %6093, align 1
  %6094 = lshr i32 %6071, 31
  %6095 = trunc i32 %6094 to i8
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6095, i8* %6096, align 1
  %6097 = lshr i32 %6070, 31
  %6098 = lshr i32 %6066, 31
  %6099 = xor i32 %6094, %6097
  %6100 = xor i32 %6094, %6098
  %6101 = add i32 %6099, %6100
  %6102 = icmp eq i32 %6101, 2
  %6103 = zext i1 %6102 to i8
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6103, i8* %6104, align 1
  store %struct.Memory* %loadMem_429b23, %struct.Memory** %MEMORY
  %loadMem_429b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6106 = getelementptr inbounds %struct.GPR, %struct.GPR* %6105, i32 0, i32 33
  %6107 = getelementptr inbounds %struct.Reg, %struct.Reg* %6106, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %6107 to i64*
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6109 = getelementptr inbounds %struct.GPR, %struct.GPR* %6108, i32 0, i32 5
  %6110 = getelementptr inbounds %struct.Reg, %struct.Reg* %6109, i32 0, i32 0
  %ECX.i278 = bitcast %union.anon* %6110 to i32*
  %6111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6112 = getelementptr inbounds %struct.GPR, %struct.GPR* %6111, i32 0, i32 7
  %6113 = getelementptr inbounds %struct.Reg, %struct.Reg* %6112, i32 0, i32 0
  %RDX.i279 = bitcast %union.anon* %6113 to i64*
  %6114 = load i32, i32* %ECX.i278
  %6115 = zext i32 %6114 to i64
  %6116 = load i64, i64* %PC.i277
  %6117 = add i64 %6116, 3
  store i64 %6117, i64* %PC.i277
  %6118 = shl i64 %6115, 32
  %6119 = ashr exact i64 %6118, 32
  store i64 %6119, i64* %RDX.i279, align 8
  store %struct.Memory* %loadMem_429b25, %struct.Memory** %MEMORY
  %loadMem_429b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6121 = getelementptr inbounds %struct.GPR, %struct.GPR* %6120, i32 0, i32 33
  %6122 = getelementptr inbounds %struct.Reg, %struct.Reg* %6121, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %6122 to i64*
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6124 = getelementptr inbounds %struct.GPR, %struct.GPR* %6123, i32 0, i32 1
  %6125 = getelementptr inbounds %struct.Reg, %struct.Reg* %6124, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %6125 to i64*
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 5
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %6128 to i64*
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 7
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %RDX.i276 = bitcast %union.anon* %6131 to i64*
  %6132 = load i64, i64* %RAX.i274
  %6133 = load i64, i64* %RDX.i276
  %6134 = mul i64 %6133, 4
  %6135 = add i64 %6134, %6132
  %6136 = load i64, i64* %PC.i273
  %6137 = add i64 %6136, 3
  store i64 %6137, i64* %PC.i273
  %6138 = inttoptr i64 %6135 to i32*
  %6139 = load i32, i32* %6138
  %6140 = zext i32 %6139 to i64
  store i64 %6140, i64* %RCX.i275, align 8
  store %struct.Memory* %loadMem_429b28, %struct.Memory** %MEMORY
  %loadMem_429b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6142 = getelementptr inbounds %struct.GPR, %struct.GPR* %6141, i32 0, i32 33
  %6143 = getelementptr inbounds %struct.Reg, %struct.Reg* %6142, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %6143 to i64*
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6145 = getelementptr inbounds %struct.GPR, %struct.GPR* %6144, i32 0, i32 5
  %6146 = getelementptr inbounds %struct.Reg, %struct.Reg* %6145, i32 0, i32 0
  %ECX.i271 = bitcast %union.anon* %6146 to i32*
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6148 = getelementptr inbounds %struct.GPR, %struct.GPR* %6147, i32 0, i32 15
  %6149 = getelementptr inbounds %struct.Reg, %struct.Reg* %6148, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %6149 to i64*
  %6150 = load i64, i64* %RBP.i272
  %6151 = sub i64 %6150, 136
  %6152 = load i32, i32* %ECX.i271
  %6153 = zext i32 %6152 to i64
  %6154 = load i64, i64* %PC.i270
  %6155 = add i64 %6154, 6
  store i64 %6155, i64* %PC.i270
  %6156 = inttoptr i64 %6151 to i32*
  store i32 %6152, i32* %6156
  store %struct.Memory* %loadMem_429b2b, %struct.Memory** %MEMORY
  br label %block_.L_429b31

block_.L_429b31:                                  ; preds = %block_.L_429b0d, %block_429ae5
  %loadMem_429b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6158 = getelementptr inbounds %struct.GPR, %struct.GPR* %6157, i32 0, i32 33
  %6159 = getelementptr inbounds %struct.Reg, %struct.Reg* %6158, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %6159 to i64*
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6161 = getelementptr inbounds %struct.GPR, %struct.GPR* %6160, i32 0, i32 1
  %6162 = getelementptr inbounds %struct.Reg, %struct.Reg* %6161, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %6162 to i64*
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6164 = getelementptr inbounds %struct.GPR, %struct.GPR* %6163, i32 0, i32 15
  %6165 = getelementptr inbounds %struct.Reg, %struct.Reg* %6164, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %6165 to i64*
  %6166 = load i64, i64* %RBP.i269
  %6167 = sub i64 %6166, 136
  %6168 = load i64, i64* %PC.i267
  %6169 = add i64 %6168, 6
  store i64 %6169, i64* %PC.i267
  %6170 = inttoptr i64 %6167 to i32*
  %6171 = load i32, i32* %6170
  %6172 = zext i32 %6171 to i64
  store i64 %6172, i64* %RAX.i268, align 8
  store %struct.Memory* %loadMem_429b31, %struct.Memory** %MEMORY
  %loadMem_429b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 33
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %6175 to i64*
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 5
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %6178 to i64*
  %6179 = load i64, i64* %PC.i265
  %6180 = add i64 %6179, 5
  store i64 %6180, i64* %PC.i265
  store i64 4096, i64* %RCX.i266, align 8
  store %struct.Memory* %loadMem_429b37, %struct.Memory** %MEMORY
  %loadMem_429b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 33
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %6183 to i64*
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6185 = getelementptr inbounds %struct.GPR, %struct.GPR* %6184, i32 0, i32 7
  %6186 = getelementptr inbounds %struct.Reg, %struct.Reg* %6185, i32 0, i32 0
  %RDX.i263 = bitcast %union.anon* %6186 to i64*
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6188 = getelementptr inbounds %struct.GPR, %struct.GPR* %6187, i32 0, i32 15
  %6189 = getelementptr inbounds %struct.Reg, %struct.Reg* %6188, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %6189 to i64*
  %6190 = load i64, i64* %RBP.i264
  %6191 = sub i64 %6190, 132
  %6192 = load i64, i64* %PC.i262
  %6193 = add i64 %6192, 6
  store i64 %6193, i64* %PC.i262
  %6194 = inttoptr i64 %6191 to i32*
  %6195 = load i32, i32* %6194
  %6196 = zext i32 %6195 to i64
  store i64 %6196, i64* %RDX.i263, align 8
  store %struct.Memory* %loadMem_429b3c, %struct.Memory** %MEMORY
  %loadMem_429b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6198 = getelementptr inbounds %struct.GPR, %struct.GPR* %6197, i32 0, i32 33
  %6199 = getelementptr inbounds %struct.Reg, %struct.Reg* %6198, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %6199 to i64*
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6201 = getelementptr inbounds %struct.GPR, %struct.GPR* %6200, i32 0, i32 1
  %6202 = getelementptr inbounds %struct.Reg, %struct.Reg* %6201, i32 0, i32 0
  %EAX.i260 = bitcast %union.anon* %6202 to i32*
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6204 = getelementptr inbounds %struct.GPR, %struct.GPR* %6203, i32 0, i32 7
  %6205 = getelementptr inbounds %struct.Reg, %struct.Reg* %6204, i32 0, i32 0
  %RDX.i261 = bitcast %union.anon* %6205 to i64*
  %6206 = load i64, i64* %RDX.i261
  %6207 = load i32, i32* %EAX.i260
  %6208 = zext i32 %6207 to i64
  %6209 = load i64, i64* %PC.i259
  %6210 = add i64 %6209, 3
  store i64 %6210, i64* %PC.i259
  %6211 = shl i64 %6206, 32
  %6212 = ashr exact i64 %6211, 32
  %6213 = shl i64 %6208, 32
  %6214 = ashr exact i64 %6213, 32
  %6215 = mul i64 %6214, %6212
  %6216 = trunc i64 %6215 to i32
  %6217 = and i64 %6215, 4294967295
  store i64 %6217, i64* %RDX.i261, align 8
  %6218 = shl i64 %6215, 32
  %6219 = ashr exact i64 %6218, 32
  %6220 = icmp ne i64 %6219, %6215
  %6221 = zext i1 %6220 to i8
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6221, i8* %6222, align 1
  %6223 = and i32 %6216, 255
  %6224 = call i32 @llvm.ctpop.i32(i32 %6223)
  %6225 = trunc i32 %6224 to i8
  %6226 = and i8 %6225, 1
  %6227 = xor i8 %6226, 1
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6227, i8* %6228, align 1
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6229, align 1
  %6230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6230, align 1
  %6231 = lshr i32 %6216, 31
  %6232 = trunc i32 %6231 to i8
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6232, i8* %6233, align 1
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6221, i8* %6234, align 1
  store %struct.Memory* %loadMem_429b42, %struct.Memory** %MEMORY
  %loadMem_429b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6236 = getelementptr inbounds %struct.GPR, %struct.GPR* %6235, i32 0, i32 33
  %6237 = getelementptr inbounds %struct.Reg, %struct.Reg* %6236, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %6237 to i64*
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 7
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %EDX.i257 = bitcast %union.anon* %6240 to i32*
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6242 = getelementptr inbounds %struct.GPR, %struct.GPR* %6241, i32 0, i32 1
  %6243 = getelementptr inbounds %struct.Reg, %struct.Reg* %6242, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %6243 to i64*
  %6244 = load i32, i32* %EDX.i257
  %6245 = zext i32 %6244 to i64
  %6246 = load i64, i64* %PC.i256
  %6247 = add i64 %6246, 2
  store i64 %6247, i64* %PC.i256
  %6248 = and i64 %6245, 4294967295
  store i64 %6248, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_429b45, %struct.Memory** %MEMORY
  %loadMem_429b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6250 = getelementptr inbounds %struct.GPR, %struct.GPR* %6249, i32 0, i32 33
  %6251 = getelementptr inbounds %struct.Reg, %struct.Reg* %6250, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %6251 to i64*
  %6252 = load i64, i64* %PC.i255
  %6253 = add i64 %6252, 1
  store i64 %6253, i64* %PC.i255
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6256 = bitcast %union.anon* %6255 to i32*
  %6257 = load i32, i32* %6256, align 8
  %6258 = sext i32 %6257 to i64
  %6259 = lshr i64 %6258, 32
  store i64 %6259, i64* %6254, align 8
  store %struct.Memory* %loadMem_429b47, %struct.Memory** %MEMORY
  %loadMem_429b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6261 = getelementptr inbounds %struct.GPR, %struct.GPR* %6260, i32 0, i32 33
  %6262 = getelementptr inbounds %struct.Reg, %struct.Reg* %6261, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %6262 to i64*
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6264 = getelementptr inbounds %struct.GPR, %struct.GPR* %6263, i32 0, i32 5
  %6265 = getelementptr inbounds %struct.Reg, %struct.Reg* %6264, i32 0, i32 0
  %ECX.i251 = bitcast %union.anon* %6265 to i32*
  %6266 = load i32, i32* %ECX.i251
  %6267 = zext i32 %6266 to i64
  %6268 = load i64, i64* %PC.i250
  %6269 = add i64 %6268, 2
  store i64 %6269, i64* %PC.i250
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6271 = bitcast %union.anon* %6270 to i32*
  %6272 = load i32, i32* %6271, align 8
  %6273 = zext i32 %6272 to i64
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %6275 = bitcast %union.anon* %6274 to i32*
  %6276 = load i32, i32* %6275, align 8
  %6277 = zext i32 %6276 to i64
  %6278 = shl i64 %6267, 32
  %6279 = ashr exact i64 %6278, 32
  %6280 = shl i64 %6277, 32
  %6281 = or i64 %6280, %6273
  %6282 = sdiv i64 %6281, %6279
  %6283 = shl i64 %6282, 32
  %6284 = ashr exact i64 %6283, 32
  %6285 = icmp eq i64 %6282, %6284
  br i1 %6285, label %6290, label %6286

; <label>:6286:                                   ; preds = %block_.L_429b31
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6288 = load i64, i64* %6287, align 8
  %6289 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6288, %struct.Memory* %loadMem_429b48)
  br label %routine_idivl__ecx.exit252

; <label>:6290:                                   ; preds = %block_.L_429b31
  %6291 = srem i64 %6281, %6279
  %6292 = getelementptr inbounds %union.anon, %union.anon* %6270, i64 0, i32 0
  %6293 = and i64 %6282, 4294967295
  store i64 %6293, i64* %6292, align 8
  %6294 = getelementptr inbounds %union.anon, %union.anon* %6274, i64 0, i32 0
  %6295 = and i64 %6291, 4294967295
  store i64 %6295, i64* %6294, align 8
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6296, align 1
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %6297, align 1
  %6298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6298, align 1
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6299, align 1
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6300, align 1
  %6301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6301, align 1
  br label %routine_idivl__ecx.exit252

routine_idivl__ecx.exit252:                       ; preds = %6286, %6290
  %6302 = phi %struct.Memory* [ %6289, %6286 ], [ %loadMem_429b48, %6290 ]
  store %struct.Memory* %6302, %struct.Memory** %MEMORY
  %loadMem_429b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6304 = getelementptr inbounds %struct.GPR, %struct.GPR* %6303, i32 0, i32 33
  %6305 = getelementptr inbounds %struct.Reg, %struct.Reg* %6304, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %6305 to i64*
  %6306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6307 = getelementptr inbounds %struct.GPR, %struct.GPR* %6306, i32 0, i32 1
  %6308 = getelementptr inbounds %struct.Reg, %struct.Reg* %6307, i32 0, i32 0
  %EAX.i248 = bitcast %union.anon* %6308 to i32*
  %6309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6310 = getelementptr inbounds %struct.GPR, %struct.GPR* %6309, i32 0, i32 15
  %6311 = getelementptr inbounds %struct.Reg, %struct.Reg* %6310, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %6311 to i64*
  %6312 = load i64, i64* %RBP.i249
  %6313 = sub i64 %6312, 104
  %6314 = load i32, i32* %EAX.i248
  %6315 = zext i32 %6314 to i64
  %6316 = load i64, i64* %PC.i247
  %6317 = add i64 %6316, 3
  store i64 %6317, i64* %PC.i247
  %6318 = inttoptr i64 %6313 to i32*
  store i32 %6314, i32* %6318
  store %struct.Memory* %loadMem_429b4a, %struct.Memory** %MEMORY
  %loadMem_429b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6320 = getelementptr inbounds %struct.GPR, %struct.GPR* %6319, i32 0, i32 33
  %6321 = getelementptr inbounds %struct.Reg, %struct.Reg* %6320, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %6321 to i64*
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6323 = getelementptr inbounds %struct.GPR, %struct.GPR* %6322, i32 0, i32 15
  %6324 = getelementptr inbounds %struct.Reg, %struct.Reg* %6323, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %6324 to i64*
  %6325 = load i64, i64* %RBP.i246
  %6326 = sub i64 %6325, 104
  %6327 = load i64, i64* %PC.i245
  %6328 = add i64 %6327, 4
  store i64 %6328, i64* %PC.i245
  %6329 = inttoptr i64 %6326 to i32*
  %6330 = load i32, i32* %6329
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6331, align 1
  %6332 = and i32 %6330, 255
  %6333 = call i32 @llvm.ctpop.i32(i32 %6332)
  %6334 = trunc i32 %6333 to i8
  %6335 = and i8 %6334, 1
  %6336 = xor i8 %6335, 1
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6336, i8* %6337, align 1
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6338, align 1
  %6339 = icmp eq i32 %6330, 0
  %6340 = zext i1 %6339 to i8
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6340, i8* %6341, align 1
  %6342 = lshr i32 %6330, 31
  %6343 = trunc i32 %6342 to i8
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6343, i8* %6344, align 1
  %6345 = lshr i32 %6330, 31
  %6346 = xor i32 %6342, %6345
  %6347 = add i32 %6346, %6345
  %6348 = icmp eq i32 %6347, 2
  %6349 = zext i1 %6348 to i8
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6349, i8* %6350, align 1
  store %struct.Memory* %loadMem_429b4d, %struct.Memory** %MEMORY
  %loadMem_429b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6352 = getelementptr inbounds %struct.GPR, %struct.GPR* %6351, i32 0, i32 33
  %6353 = getelementptr inbounds %struct.Reg, %struct.Reg* %6352, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %6353 to i64*
  %6354 = load i64, i64* %PC.i244
  %6355 = add i64 %6354, 11
  %6356 = load i64, i64* %PC.i244
  %6357 = add i64 %6356, 6
  %6358 = load i64, i64* %PC.i244
  %6359 = add i64 %6358, 6
  store i64 %6359, i64* %PC.i244
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6361 = load i8, i8* %6360, align 1
  %6362 = icmp eq i8 %6361, 0
  %6363 = zext i1 %6362 to i8
  store i8 %6363, i8* %BRANCH_TAKEN, align 1
  %6364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6365 = select i1 %6362, i64 %6355, i64 %6357
  store i64 %6365, i64* %6364, align 8
  store %struct.Memory* %loadMem_429b51, %struct.Memory** %MEMORY
  %loadBr_429b51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429b51 = icmp eq i8 %loadBr_429b51, 1
  br i1 %cmpBr_429b51, label %block_.L_429b5c, label %block_429b57

block_429b57:                                     ; preds = %routine_idivl__ecx.exit252
  %loadMem_429b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6367 = getelementptr inbounds %struct.GPR, %struct.GPR* %6366, i32 0, i32 33
  %6368 = getelementptr inbounds %struct.Reg, %struct.Reg* %6367, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %6368 to i64*
  %6369 = load i64, i64* %PC.i243
  %6370 = add i64 %6369, 260
  %6371 = load i64, i64* %PC.i243
  %6372 = add i64 %6371, 5
  store i64 %6372, i64* %PC.i243
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6370, i64* %6373, align 8
  store %struct.Memory* %loadMem_429b57, %struct.Memory** %MEMORY
  br label %block_.L_429c5b

block_.L_429b5c:                                  ; preds = %routine_idivl__ecx.exit252
  %loadMem_429b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6375 = getelementptr inbounds %struct.GPR, %struct.GPR* %6374, i32 0, i32 33
  %6376 = getelementptr inbounds %struct.Reg, %struct.Reg* %6375, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %6376 to i64*
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 1
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %6379 to i64*
  %6380 = load i64, i64* %PC.i241
  %6381 = add i64 %6380, 5
  store i64 %6381, i64* %PC.i241
  store i64 4096, i64* %RAX.i242, align 8
  store %struct.Memory* %loadMem_429b5c, %struct.Memory** %MEMORY
  %loadMem_429b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6383 = getelementptr inbounds %struct.GPR, %struct.GPR* %6382, i32 0, i32 33
  %6384 = getelementptr inbounds %struct.Reg, %struct.Reg* %6383, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %6384 to i64*
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6386 = getelementptr inbounds %struct.GPR, %struct.GPR* %6385, i32 0, i32 5
  %6387 = getelementptr inbounds %struct.Reg, %struct.Reg* %6386, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %6387 to i64*
  %6388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6389 = getelementptr inbounds %struct.GPR, %struct.GPR* %6388, i32 0, i32 15
  %6390 = getelementptr inbounds %struct.Reg, %struct.Reg* %6389, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %6390 to i64*
  %6391 = load i64, i64* %RBP.i240
  %6392 = sub i64 %6391, 76
  %6393 = load i64, i64* %PC.i238
  %6394 = add i64 %6393, 3
  store i64 %6394, i64* %PC.i238
  %6395 = inttoptr i64 %6392 to i32*
  %6396 = load i32, i32* %6395
  %6397 = zext i32 %6396 to i64
  store i64 %6397, i64* %RCX.i239, align 8
  store %struct.Memory* %loadMem_429b61, %struct.Memory** %MEMORY
  %loadMem_429b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6399 = getelementptr inbounds %struct.GPR, %struct.GPR* %6398, i32 0, i32 33
  %6400 = getelementptr inbounds %struct.Reg, %struct.Reg* %6399, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %6400 to i64*
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6402 = getelementptr inbounds %struct.GPR, %struct.GPR* %6401, i32 0, i32 5
  %6403 = getelementptr inbounds %struct.Reg, %struct.Reg* %6402, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %6403 to i64*
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6405 = getelementptr inbounds %struct.GPR, %struct.GPR* %6404, i32 0, i32 15
  %6406 = getelementptr inbounds %struct.Reg, %struct.Reg* %6405, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %6406 to i64*
  %6407 = load i64, i64* %RCX.i236
  %6408 = load i64, i64* %RBP.i237
  %6409 = sub i64 %6408, 104
  %6410 = load i64, i64* %PC.i235
  %6411 = add i64 %6410, 4
  store i64 %6411, i64* %PC.i235
  %6412 = inttoptr i64 %6409 to i32*
  %6413 = load i32, i32* %6412
  %6414 = shl i64 %6407, 32
  %6415 = ashr exact i64 %6414, 32
  %6416 = sext i32 %6413 to i64
  %6417 = mul i64 %6416, %6415
  %6418 = trunc i64 %6417 to i32
  %6419 = and i64 %6417, 4294967295
  store i64 %6419, i64* %RCX.i236, align 8
  %6420 = shl i64 %6417, 32
  %6421 = ashr exact i64 %6420, 32
  %6422 = icmp ne i64 %6421, %6417
  %6423 = zext i1 %6422 to i8
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6423, i8* %6424, align 1
  %6425 = and i32 %6418, 255
  %6426 = call i32 @llvm.ctpop.i32(i32 %6425)
  %6427 = trunc i32 %6426 to i8
  %6428 = and i8 %6427, 1
  %6429 = xor i8 %6428, 1
  %6430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6429, i8* %6430, align 1
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6431, align 1
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6432, align 1
  %6433 = lshr i32 %6418, 31
  %6434 = trunc i32 %6433 to i8
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6434, i8* %6435, align 1
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6423, i8* %6436, align 1
  store %struct.Memory* %loadMem_429b64, %struct.Memory** %MEMORY
  %loadMem_429b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 33
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6439 to i64*
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6441 = getelementptr inbounds %struct.GPR, %struct.GPR* %6440, i32 0, i32 1
  %6442 = getelementptr inbounds %struct.Reg, %struct.Reg* %6441, i32 0, i32 0
  %EAX.i233 = bitcast %union.anon* %6442 to i32*
  %6443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6444 = getelementptr inbounds %struct.GPR, %struct.GPR* %6443, i32 0, i32 15
  %6445 = getelementptr inbounds %struct.Reg, %struct.Reg* %6444, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %6445 to i64*
  %6446 = load i64, i64* %RBP.i234
  %6447 = sub i64 %6446, 140
  %6448 = load i32, i32* %EAX.i233
  %6449 = zext i32 %6448 to i64
  %6450 = load i64, i64* %PC.i232
  %6451 = add i64 %6450, 6
  store i64 %6451, i64* %PC.i232
  %6452 = inttoptr i64 %6447 to i32*
  store i32 %6448, i32* %6452
  store %struct.Memory* %loadMem_429b68, %struct.Memory** %MEMORY
  %loadMem_429b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6454 = getelementptr inbounds %struct.GPR, %struct.GPR* %6453, i32 0, i32 33
  %6455 = getelementptr inbounds %struct.Reg, %struct.Reg* %6454, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6455 to i64*
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6457 = getelementptr inbounds %struct.GPR, %struct.GPR* %6456, i32 0, i32 5
  %6458 = getelementptr inbounds %struct.Reg, %struct.Reg* %6457, i32 0, i32 0
  %ECX.i230 = bitcast %union.anon* %6458 to i32*
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6460 = getelementptr inbounds %struct.GPR, %struct.GPR* %6459, i32 0, i32 1
  %6461 = getelementptr inbounds %struct.Reg, %struct.Reg* %6460, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %6461 to i64*
  %6462 = load i32, i32* %ECX.i230
  %6463 = zext i32 %6462 to i64
  %6464 = load i64, i64* %PC.i229
  %6465 = add i64 %6464, 2
  store i64 %6465, i64* %PC.i229
  %6466 = and i64 %6463, 4294967295
  store i64 %6466, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_429b6e, %struct.Memory** %MEMORY
  %loadMem_429b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6468 = getelementptr inbounds %struct.GPR, %struct.GPR* %6467, i32 0, i32 33
  %6469 = getelementptr inbounds %struct.Reg, %struct.Reg* %6468, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %6469 to i64*
  %6470 = load i64, i64* %PC.i228
  %6471 = add i64 %6470, 1
  store i64 %6471, i64* %PC.i228
  %6472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6474 = bitcast %union.anon* %6473 to i32*
  %6475 = load i32, i32* %6474, align 8
  %6476 = sext i32 %6475 to i64
  %6477 = lshr i64 %6476, 32
  store i64 %6477, i64* %6472, align 8
  store %struct.Memory* %loadMem_429b70, %struct.Memory** %MEMORY
  %loadMem_429b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6479 = getelementptr inbounds %struct.GPR, %struct.GPR* %6478, i32 0, i32 33
  %6480 = getelementptr inbounds %struct.Reg, %struct.Reg* %6479, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %6480 to i64*
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6482 = getelementptr inbounds %struct.GPR, %struct.GPR* %6481, i32 0, i32 5
  %6483 = getelementptr inbounds %struct.Reg, %struct.Reg* %6482, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %6483 to i64*
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6485 = getelementptr inbounds %struct.GPR, %struct.GPR* %6484, i32 0, i32 15
  %6486 = getelementptr inbounds %struct.Reg, %struct.Reg* %6485, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %6486 to i64*
  %6487 = load i64, i64* %RBP.i227
  %6488 = sub i64 %6487, 140
  %6489 = load i64, i64* %PC.i225
  %6490 = add i64 %6489, 6
  store i64 %6490, i64* %PC.i225
  %6491 = inttoptr i64 %6488 to i32*
  %6492 = load i32, i32* %6491
  %6493 = zext i32 %6492 to i64
  store i64 %6493, i64* %RCX.i226, align 8
  store %struct.Memory* %loadMem_429b71, %struct.Memory** %MEMORY
  %loadMem_429b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6495 = getelementptr inbounds %struct.GPR, %struct.GPR* %6494, i32 0, i32 33
  %6496 = getelementptr inbounds %struct.Reg, %struct.Reg* %6495, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %6496 to i64*
  %6497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6498 = getelementptr inbounds %struct.GPR, %struct.GPR* %6497, i32 0, i32 5
  %6499 = getelementptr inbounds %struct.Reg, %struct.Reg* %6498, i32 0, i32 0
  %ECX.i223 = bitcast %union.anon* %6499 to i32*
  %6500 = load i32, i32* %ECX.i223
  %6501 = zext i32 %6500 to i64
  %6502 = load i64, i64* %PC.i222
  %6503 = add i64 %6502, 2
  store i64 %6503, i64* %PC.i222
  %6504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6505 = bitcast %union.anon* %6504 to i32*
  %6506 = load i32, i32* %6505, align 8
  %6507 = zext i32 %6506 to i64
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %6509 = bitcast %union.anon* %6508 to i32*
  %6510 = load i32, i32* %6509, align 8
  %6511 = zext i32 %6510 to i64
  %6512 = shl i64 %6501, 32
  %6513 = ashr exact i64 %6512, 32
  %6514 = shl i64 %6511, 32
  %6515 = or i64 %6514, %6507
  %6516 = sdiv i64 %6515, %6513
  %6517 = shl i64 %6516, 32
  %6518 = ashr exact i64 %6517, 32
  %6519 = icmp eq i64 %6516, %6518
  br i1 %6519, label %6524, label %6520

; <label>:6520:                                   ; preds = %block_.L_429b5c
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6522 = load i64, i64* %6521, align 8
  %6523 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6522, %struct.Memory* %loadMem_429b77)
  br label %routine_idivl__ecx.exit

; <label>:6524:                                   ; preds = %block_.L_429b5c
  %6525 = srem i64 %6515, %6513
  %6526 = getelementptr inbounds %union.anon, %union.anon* %6504, i64 0, i32 0
  %6527 = and i64 %6516, 4294967295
  store i64 %6527, i64* %6526, align 8
  %6528 = getelementptr inbounds %union.anon, %union.anon* %6508, i64 0, i32 0
  %6529 = and i64 %6525, 4294967295
  store i64 %6529, i64* %6528, align 8
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6530, align 1
  %6531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %6531, align 1
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6532, align 1
  %6533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6533, align 1
  %6534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6534, align 1
  %6535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6535, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %6520, %6524
  %6536 = phi %struct.Memory* [ %6523, %6520 ], [ %loadMem_429b77, %6524 ]
  store %struct.Memory* %6536, %struct.Memory** %MEMORY
  %loadMem_429b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6538 = getelementptr inbounds %struct.GPR, %struct.GPR* %6537, i32 0, i32 33
  %6539 = getelementptr inbounds %struct.Reg, %struct.Reg* %6538, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %6539 to i64*
  %6540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6541 = getelementptr inbounds %struct.GPR, %struct.GPR* %6540, i32 0, i32 1
  %6542 = getelementptr inbounds %struct.Reg, %struct.Reg* %6541, i32 0, i32 0
  %EAX.i220 = bitcast %union.anon* %6542 to i32*
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6544 = getelementptr inbounds %struct.GPR, %struct.GPR* %6543, i32 0, i32 15
  %6545 = getelementptr inbounds %struct.Reg, %struct.Reg* %6544, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %6545 to i64*
  %6546 = load i64, i64* %RBP.i221
  %6547 = sub i64 %6546, 100
  %6548 = load i32, i32* %EAX.i220
  %6549 = zext i32 %6548 to i64
  %6550 = load i64, i64* %PC.i219
  %6551 = add i64 %6550, 3
  store i64 %6551, i64* %PC.i219
  %6552 = inttoptr i64 %6547 to i32*
  store i32 %6548, i32* %6552
  store %struct.Memory* %loadMem_429b79, %struct.Memory** %MEMORY
  %loadMem_429b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6554 = getelementptr inbounds %struct.GPR, %struct.GPR* %6553, i32 0, i32 33
  %6555 = getelementptr inbounds %struct.Reg, %struct.Reg* %6554, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %6555 to i64*
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6557 = getelementptr inbounds %struct.GPR, %struct.GPR* %6556, i32 0, i32 15
  %6558 = getelementptr inbounds %struct.Reg, %struct.Reg* %6557, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %6558 to i64*
  %6559 = load i64, i64* %RBP.i218
  %6560 = sub i64 %6559, 68
  %6561 = load i64, i64* %PC.i217
  %6562 = add i64 %6561, 4
  store i64 %6562, i64* %PC.i217
  %6563 = inttoptr i64 %6560 to i32*
  %6564 = load i32, i32* %6563
  %6565 = sub i32 %6564, 1
  %6566 = icmp ult i32 %6564, 1
  %6567 = zext i1 %6566 to i8
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6567, i8* %6568, align 1
  %6569 = and i32 %6565, 255
  %6570 = call i32 @llvm.ctpop.i32(i32 %6569)
  %6571 = trunc i32 %6570 to i8
  %6572 = and i8 %6571, 1
  %6573 = xor i8 %6572, 1
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6573, i8* %6574, align 1
  %6575 = xor i32 %6564, 1
  %6576 = xor i32 %6575, %6565
  %6577 = lshr i32 %6576, 4
  %6578 = trunc i32 %6577 to i8
  %6579 = and i8 %6578, 1
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6579, i8* %6580, align 1
  %6581 = icmp eq i32 %6565, 0
  %6582 = zext i1 %6581 to i8
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6582, i8* %6583, align 1
  %6584 = lshr i32 %6565, 31
  %6585 = trunc i32 %6584 to i8
  %6586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6585, i8* %6586, align 1
  %6587 = lshr i32 %6564, 31
  %6588 = xor i32 %6584, %6587
  %6589 = add i32 %6588, %6587
  %6590 = icmp eq i32 %6589, 2
  %6591 = zext i1 %6590 to i8
  %6592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6591, i8* %6592, align 1
  store %struct.Memory* %loadMem_429b7c, %struct.Memory** %MEMORY
  %loadMem_429b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6594 = getelementptr inbounds %struct.GPR, %struct.GPR* %6593, i32 0, i32 33
  %6595 = getelementptr inbounds %struct.Reg, %struct.Reg* %6594, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6595 to i64*
  %6596 = load i64, i64* %PC.i216
  %6597 = add i64 %6596, 87
  %6598 = load i64, i64* %PC.i216
  %6599 = add i64 %6598, 6
  %6600 = load i64, i64* %PC.i216
  %6601 = add i64 %6600, 6
  store i64 %6601, i64* %PC.i216
  %6602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6603 = load i8, i8* %6602, align 1
  store i8 %6603, i8* %BRANCH_TAKEN, align 1
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6605 = icmp ne i8 %6603, 0
  %6606 = select i1 %6605, i64 %6597, i64 %6599
  store i64 %6606, i64* %6604, align 8
  store %struct.Memory* %loadMem_429b80, %struct.Memory** %MEMORY
  %loadBr_429b80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429b80 = icmp eq i8 %loadBr_429b80, 1
  br i1 %cmpBr_429b80, label %block_.L_429bd7, label %block_429b86

block_429b86:                                     ; preds = %routine_idivl__ecx.exit
  %loadMem_429b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6608 = getelementptr inbounds %struct.GPR, %struct.GPR* %6607, i32 0, i32 33
  %6609 = getelementptr inbounds %struct.Reg, %struct.Reg* %6608, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %6609 to i64*
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6611 = getelementptr inbounds %struct.GPR, %struct.GPR* %6610, i32 0, i32 1
  %6612 = getelementptr inbounds %struct.Reg, %struct.Reg* %6611, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %6612 to i64*
  %6613 = load i64, i64* %PC.i214
  %6614 = add i64 %6613, 5
  store i64 %6614, i64* %PC.i214
  store i64 4096, i64* %RAX.i215, align 8
  store %struct.Memory* %loadMem_429b86, %struct.Memory** %MEMORY
  %loadMem_429b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6616 = getelementptr inbounds %struct.GPR, %struct.GPR* %6615, i32 0, i32 33
  %6617 = getelementptr inbounds %struct.Reg, %struct.Reg* %6616, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %6617 to i64*
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6619 = getelementptr inbounds %struct.GPR, %struct.GPR* %6618, i32 0, i32 5
  %6620 = getelementptr inbounds %struct.Reg, %struct.Reg* %6619, i32 0, i32 0
  %RCX.i212 = bitcast %union.anon* %6620 to i64*
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6622 = getelementptr inbounds %struct.GPR, %struct.GPR* %6621, i32 0, i32 15
  %6623 = getelementptr inbounds %struct.Reg, %struct.Reg* %6622, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %6623 to i64*
  %6624 = load i64, i64* %RBP.i213
  %6625 = sub i64 %6624, 60
  %6626 = load i64, i64* %PC.i211
  %6627 = add i64 %6626, 4
  store i64 %6627, i64* %PC.i211
  %6628 = inttoptr i64 %6625 to i32*
  %6629 = load i32, i32* %6628
  %6630 = sext i32 %6629 to i64
  store i64 %6630, i64* %RCX.i212, align 8
  store %struct.Memory* %loadMem_429b8b, %struct.Memory** %MEMORY
  %loadMem_429b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6632 = getelementptr inbounds %struct.GPR, %struct.GPR* %6631, i32 0, i32 33
  %6633 = getelementptr inbounds %struct.Reg, %struct.Reg* %6632, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %6633 to i64*
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6635 = getelementptr inbounds %struct.GPR, %struct.GPR* %6634, i32 0, i32 5
  %6636 = getelementptr inbounds %struct.Reg, %struct.Reg* %6635, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %6636 to i64*
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6638 = getelementptr inbounds %struct.GPR, %struct.GPR* %6637, i32 0, i32 7
  %6639 = getelementptr inbounds %struct.Reg, %struct.Reg* %6638, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %6639 to i64*
  %6640 = load i64, i64* %RCX.i209
  %6641 = mul i64 %6640, 4
  %6642 = add i64 %6641, 8053104
  %6643 = load i64, i64* %PC.i208
  %6644 = add i64 %6643, 7
  store i64 %6644, i64* %PC.i208
  %6645 = inttoptr i64 %6642 to i32*
  %6646 = load i32, i32* %6645
  %6647 = zext i32 %6646 to i64
  store i64 %6647, i64* %RDX.i210, align 8
  store %struct.Memory* %loadMem_429b8f, %struct.Memory** %MEMORY
  %loadMem_429b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6649 = getelementptr inbounds %struct.GPR, %struct.GPR* %6648, i32 0, i32 33
  %6650 = getelementptr inbounds %struct.Reg, %struct.Reg* %6649, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %6650 to i64*
  %6651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6652 = getelementptr inbounds %struct.GPR, %struct.GPR* %6651, i32 0, i32 7
  %6653 = getelementptr inbounds %struct.Reg, %struct.Reg* %6652, i32 0, i32 0
  %RDX.i206 = bitcast %union.anon* %6653 to i64*
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6655 = getelementptr inbounds %struct.GPR, %struct.GPR* %6654, i32 0, i32 15
  %6656 = getelementptr inbounds %struct.Reg, %struct.Reg* %6655, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %6656 to i64*
  %6657 = load i64, i64* %RDX.i206
  %6658 = load i64, i64* %RBP.i207
  %6659 = sub i64 %6658, 80
  %6660 = load i64, i64* %PC.i205
  %6661 = add i64 %6660, 4
  store i64 %6661, i64* %PC.i205
  %6662 = inttoptr i64 %6659 to i32*
  %6663 = load i32, i32* %6662
  %6664 = shl i64 %6657, 32
  %6665 = ashr exact i64 %6664, 32
  %6666 = sext i32 %6663 to i64
  %6667 = mul i64 %6666, %6665
  %6668 = trunc i64 %6667 to i32
  %6669 = and i64 %6667, 4294967295
  store i64 %6669, i64* %RDX.i206, align 8
  %6670 = shl i64 %6667, 32
  %6671 = ashr exact i64 %6670, 32
  %6672 = icmp ne i64 %6671, %6667
  %6673 = zext i1 %6672 to i8
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6673, i8* %6674, align 1
  %6675 = and i32 %6668, 255
  %6676 = call i32 @llvm.ctpop.i32(i32 %6675)
  %6677 = trunc i32 %6676 to i8
  %6678 = and i8 %6677, 1
  %6679 = xor i8 %6678, 1
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6679, i8* %6680, align 1
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6681, align 1
  %6682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6682, align 1
  %6683 = lshr i32 %6668, 31
  %6684 = trunc i32 %6683 to i8
  %6685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6684, i8* %6685, align 1
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6673, i8* %6686, align 1
  store %struct.Memory* %loadMem_429b96, %struct.Memory** %MEMORY
  %loadMem_429b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6688 = getelementptr inbounds %struct.GPR, %struct.GPR* %6687, i32 0, i32 33
  %6689 = getelementptr inbounds %struct.Reg, %struct.Reg* %6688, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %6689 to i64*
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6691 = getelementptr inbounds %struct.GPR, %struct.GPR* %6690, i32 0, i32 5
  %6692 = getelementptr inbounds %struct.Reg, %struct.Reg* %6691, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %6692 to i64*
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6694 = getelementptr inbounds %struct.GPR, %struct.GPR* %6693, i32 0, i32 15
  %6695 = getelementptr inbounds %struct.Reg, %struct.Reg* %6694, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %6695 to i64*
  %6696 = load i64, i64* %RBP.i204
  %6697 = sub i64 %6696, 60
  %6698 = load i64, i64* %PC.i202
  %6699 = add i64 %6698, 4
  store i64 %6699, i64* %PC.i202
  %6700 = inttoptr i64 %6697 to i32*
  %6701 = load i32, i32* %6700
  %6702 = sext i32 %6701 to i64
  store i64 %6702, i64* %RCX.i203, align 8
  store %struct.Memory* %loadMem_429b9a, %struct.Memory** %MEMORY
  %loadMem_429b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 33
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6705 to i64*
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6707 = getelementptr inbounds %struct.GPR, %struct.GPR* %6706, i32 0, i32 5
  %6708 = getelementptr inbounds %struct.Reg, %struct.Reg* %6707, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %6708 to i64*
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6710 = getelementptr inbounds %struct.GPR, %struct.GPR* %6709, i32 0, i32 9
  %6711 = getelementptr inbounds %struct.Reg, %struct.Reg* %6710, i32 0, i32 0
  %RSI.i201 = bitcast %union.anon* %6711 to i64*
  %6712 = load i64, i64* %RCX.i200
  %6713 = mul i64 %6712, 4
  %6714 = add i64 %6713, 8053136
  %6715 = load i64, i64* %PC.i199
  %6716 = add i64 %6715, 7
  store i64 %6716, i64* %PC.i199
  %6717 = inttoptr i64 %6714 to i32*
  %6718 = load i32, i32* %6717
  %6719 = zext i32 %6718 to i64
  store i64 %6719, i64* %RSI.i201, align 8
  store %struct.Memory* %loadMem_429b9e, %struct.Memory** %MEMORY
  %loadMem_429ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6721 = getelementptr inbounds %struct.GPR, %struct.GPR* %6720, i32 0, i32 33
  %6722 = getelementptr inbounds %struct.Reg, %struct.Reg* %6721, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6722 to i64*
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6724 = getelementptr inbounds %struct.GPR, %struct.GPR* %6723, i32 0, i32 9
  %6725 = getelementptr inbounds %struct.Reg, %struct.Reg* %6724, i32 0, i32 0
  %RSI.i197 = bitcast %union.anon* %6725 to i64*
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6727 = getelementptr inbounds %struct.GPR, %struct.GPR* %6726, i32 0, i32 15
  %6728 = getelementptr inbounds %struct.Reg, %struct.Reg* %6727, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %6728 to i64*
  %6729 = load i64, i64* %RSI.i197
  %6730 = load i64, i64* %RBP.i198
  %6731 = sub i64 %6730, 84
  %6732 = load i64, i64* %PC.i196
  %6733 = add i64 %6732, 4
  store i64 %6733, i64* %PC.i196
  %6734 = inttoptr i64 %6731 to i32*
  %6735 = load i32, i32* %6734
  %6736 = shl i64 %6729, 32
  %6737 = ashr exact i64 %6736, 32
  %6738 = sext i32 %6735 to i64
  %6739 = mul i64 %6738, %6737
  %6740 = trunc i64 %6739 to i32
  %6741 = and i64 %6739, 4294967295
  store i64 %6741, i64* %RSI.i197, align 8
  %6742 = shl i64 %6739, 32
  %6743 = ashr exact i64 %6742, 32
  %6744 = icmp ne i64 %6743, %6739
  %6745 = zext i1 %6744 to i8
  %6746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6745, i8* %6746, align 1
  %6747 = and i32 %6740, 255
  %6748 = call i32 @llvm.ctpop.i32(i32 %6747)
  %6749 = trunc i32 %6748 to i8
  %6750 = and i8 %6749, 1
  %6751 = xor i8 %6750, 1
  %6752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6751, i8* %6752, align 1
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6753, align 1
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6754, align 1
  %6755 = lshr i32 %6740, 31
  %6756 = trunc i32 %6755 to i8
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6756, i8* %6757, align 1
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6745, i8* %6758, align 1
  store %struct.Memory* %loadMem_429ba5, %struct.Memory** %MEMORY
  %loadMem_429ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6760 = getelementptr inbounds %struct.GPR, %struct.GPR* %6759, i32 0, i32 33
  %6761 = getelementptr inbounds %struct.Reg, %struct.Reg* %6760, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %6761 to i64*
  %6762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6763 = getelementptr inbounds %struct.GPR, %struct.GPR* %6762, i32 0, i32 9
  %6764 = getelementptr inbounds %struct.Reg, %struct.Reg* %6763, i32 0, i32 0
  %ESI.i194 = bitcast %union.anon* %6764 to i32*
  %6765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6766 = getelementptr inbounds %struct.GPR, %struct.GPR* %6765, i32 0, i32 7
  %6767 = getelementptr inbounds %struct.Reg, %struct.Reg* %6766, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %6767 to i64*
  %6768 = load i64, i64* %RDX.i195
  %6769 = load i32, i32* %ESI.i194
  %6770 = zext i32 %6769 to i64
  %6771 = load i64, i64* %PC.i193
  %6772 = add i64 %6771, 2
  store i64 %6772, i64* %PC.i193
  %6773 = trunc i64 %6768 to i32
  %6774 = add i32 %6769, %6773
  %6775 = zext i32 %6774 to i64
  store i64 %6775, i64* %RDX.i195, align 8
  %6776 = icmp ult i32 %6774, %6773
  %6777 = icmp ult i32 %6774, %6769
  %6778 = or i1 %6776, %6777
  %6779 = zext i1 %6778 to i8
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6779, i8* %6780, align 1
  %6781 = and i32 %6774, 255
  %6782 = call i32 @llvm.ctpop.i32(i32 %6781)
  %6783 = trunc i32 %6782 to i8
  %6784 = and i8 %6783, 1
  %6785 = xor i8 %6784, 1
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6785, i8* %6786, align 1
  %6787 = xor i64 %6770, %6768
  %6788 = trunc i64 %6787 to i32
  %6789 = xor i32 %6788, %6774
  %6790 = lshr i32 %6789, 4
  %6791 = trunc i32 %6790 to i8
  %6792 = and i8 %6791, 1
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6792, i8* %6793, align 1
  %6794 = icmp eq i32 %6774, 0
  %6795 = zext i1 %6794 to i8
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6795, i8* %6796, align 1
  %6797 = lshr i32 %6774, 31
  %6798 = trunc i32 %6797 to i8
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6798, i8* %6799, align 1
  %6800 = lshr i32 %6773, 31
  %6801 = lshr i32 %6769, 31
  %6802 = xor i32 %6797, %6800
  %6803 = xor i32 %6797, %6801
  %6804 = add i32 %6802, %6803
  %6805 = icmp eq i32 %6804, 2
  %6806 = zext i1 %6805 to i8
  %6807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6806, i8* %6807, align 1
  store %struct.Memory* %loadMem_429ba9, %struct.Memory** %MEMORY
  %loadMem_429bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6809 = getelementptr inbounds %struct.GPR, %struct.GPR* %6808, i32 0, i32 33
  %6810 = getelementptr inbounds %struct.Reg, %struct.Reg* %6809, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %6810 to i64*
  %6811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6812 = getelementptr inbounds %struct.GPR, %struct.GPR* %6811, i32 0, i32 7
  %6813 = getelementptr inbounds %struct.Reg, %struct.Reg* %6812, i32 0, i32 0
  %EDX.i191 = bitcast %union.anon* %6813 to i32*
  %6814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6815 = getelementptr inbounds %struct.GPR, %struct.GPR* %6814, i32 0, i32 15
  %6816 = getelementptr inbounds %struct.Reg, %struct.Reg* %6815, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %6816 to i64*
  %6817 = load i64, i64* %RBP.i192
  %6818 = sub i64 %6817, 108
  %6819 = load i32, i32* %EDX.i191
  %6820 = zext i32 %6819 to i64
  %6821 = load i64, i64* %PC.i190
  %6822 = add i64 %6821, 3
  store i64 %6822, i64* %PC.i190
  %6823 = inttoptr i64 %6818 to i32*
  store i32 %6819, i32* %6823
  store %struct.Memory* %loadMem_429bab, %struct.Memory** %MEMORY
  %loadMem_429bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %6824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6825 = getelementptr inbounds %struct.GPR, %struct.GPR* %6824, i32 0, i32 33
  %6826 = getelementptr inbounds %struct.Reg, %struct.Reg* %6825, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6826 to i64*
  %6827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6828 = getelementptr inbounds %struct.GPR, %struct.GPR* %6827, i32 0, i32 7
  %6829 = getelementptr inbounds %struct.Reg, %struct.Reg* %6828, i32 0, i32 0
  %RDX.i188 = bitcast %union.anon* %6829 to i64*
  %6830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6831 = getelementptr inbounds %struct.GPR, %struct.GPR* %6830, i32 0, i32 15
  %6832 = getelementptr inbounds %struct.Reg, %struct.Reg* %6831, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %6832 to i64*
  %6833 = load i64, i64* %RBP.i189
  %6834 = sub i64 %6833, 108
  %6835 = load i64, i64* %PC.i187
  %6836 = add i64 %6835, 3
  store i64 %6836, i64* %PC.i187
  %6837 = inttoptr i64 %6834 to i32*
  %6838 = load i32, i32* %6837
  %6839 = zext i32 %6838 to i64
  store i64 %6839, i64* %RDX.i188, align 8
  store %struct.Memory* %loadMem_429bae, %struct.Memory** %MEMORY
  %loadMem_429bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6841 = getelementptr inbounds %struct.GPR, %struct.GPR* %6840, i32 0, i32 33
  %6842 = getelementptr inbounds %struct.Reg, %struct.Reg* %6841, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %6842 to i64*
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6844 = getelementptr inbounds %struct.GPR, %struct.GPR* %6843, i32 0, i32 7
  %6845 = getelementptr inbounds %struct.Reg, %struct.Reg* %6844, i32 0, i32 0
  %RDX.i185 = bitcast %union.anon* %6845 to i64*
  %6846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6847 = getelementptr inbounds %struct.GPR, %struct.GPR* %6846, i32 0, i32 15
  %6848 = getelementptr inbounds %struct.Reg, %struct.Reg* %6847, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %6848 to i64*
  %6849 = load i64, i64* %RDX.i185
  %6850 = load i64, i64* %RBP.i186
  %6851 = sub i64 %6850, 108
  %6852 = load i64, i64* %PC.i184
  %6853 = add i64 %6852, 4
  store i64 %6853, i64* %PC.i184
  %6854 = inttoptr i64 %6851 to i32*
  %6855 = load i32, i32* %6854
  %6856 = shl i64 %6849, 32
  %6857 = ashr exact i64 %6856, 32
  %6858 = sext i32 %6855 to i64
  %6859 = mul i64 %6858, %6857
  %6860 = trunc i64 %6859 to i32
  %6861 = and i64 %6859, 4294967295
  store i64 %6861, i64* %RDX.i185, align 8
  %6862 = shl i64 %6859, 32
  %6863 = ashr exact i64 %6862, 32
  %6864 = icmp ne i64 %6863, %6859
  %6865 = zext i1 %6864 to i8
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6865, i8* %6866, align 1
  %6867 = and i32 %6860, 255
  %6868 = call i32 @llvm.ctpop.i32(i32 %6867)
  %6869 = trunc i32 %6868 to i8
  %6870 = and i8 %6869, 1
  %6871 = xor i8 %6870, 1
  %6872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6871, i8* %6872, align 1
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6873, align 1
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6874, align 1
  %6875 = lshr i32 %6860, 31
  %6876 = trunc i32 %6875 to i8
  %6877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6876, i8* %6877, align 1
  %6878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6865, i8* %6878, align 1
  store %struct.Memory* %loadMem_429bb1, %struct.Memory** %MEMORY
  %loadMem_429bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6880 = getelementptr inbounds %struct.GPR, %struct.GPR* %6879, i32 0, i32 33
  %6881 = getelementptr inbounds %struct.Reg, %struct.Reg* %6880, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6881 to i64*
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6883 = getelementptr inbounds %struct.GPR, %struct.GPR* %6882, i32 0, i32 7
  %6884 = getelementptr inbounds %struct.Reg, %struct.Reg* %6883, i32 0, i32 0
  %RDX.i182 = bitcast %union.anon* %6884 to i64*
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6886 = getelementptr inbounds %struct.GPR, %struct.GPR* %6885, i32 0, i32 15
  %6887 = getelementptr inbounds %struct.Reg, %struct.Reg* %6886, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %6887 to i64*
  %6888 = load i64, i64* %RDX.i182
  %6889 = load i64, i64* %RBP.i183
  %6890 = sub i64 %6889, 100
  %6891 = load i64, i64* %PC.i181
  %6892 = add i64 %6891, 4
  store i64 %6892, i64* %PC.i181
  %6893 = inttoptr i64 %6890 to i32*
  %6894 = load i32, i32* %6893
  %6895 = shl i64 %6888, 32
  %6896 = ashr exact i64 %6895, 32
  %6897 = sext i32 %6894 to i64
  %6898 = mul i64 %6897, %6896
  %6899 = trunc i64 %6898 to i32
  %6900 = and i64 %6898, 4294967295
  store i64 %6900, i64* %RDX.i182, align 8
  %6901 = shl i64 %6898, 32
  %6902 = ashr exact i64 %6901, 32
  %6903 = icmp ne i64 %6902, %6898
  %6904 = zext i1 %6903 to i8
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6904, i8* %6905, align 1
  %6906 = and i32 %6899, 255
  %6907 = call i32 @llvm.ctpop.i32(i32 %6906)
  %6908 = trunc i32 %6907 to i8
  %6909 = and i8 %6908, 1
  %6910 = xor i8 %6909, 1
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6910, i8* %6911, align 1
  %6912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6912, align 1
  %6913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6913, align 1
  %6914 = lshr i32 %6899, 31
  %6915 = trunc i32 %6914 to i8
  %6916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6915, i8* %6916, align 1
  %6917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6904, i8* %6917, align 1
  store %struct.Memory* %loadMem_429bb5, %struct.Memory** %MEMORY
  %loadMem_429bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6919 = getelementptr inbounds %struct.GPR, %struct.GPR* %6918, i32 0, i32 33
  %6920 = getelementptr inbounds %struct.Reg, %struct.Reg* %6919, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6920 to i64*
  %6921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6922 = getelementptr inbounds %struct.GPR, %struct.GPR* %6921, i32 0, i32 7
  %6923 = getelementptr inbounds %struct.Reg, %struct.Reg* %6922, i32 0, i32 0
  %EDX.i179 = bitcast %union.anon* %6923 to i32*
  %6924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6925 = getelementptr inbounds %struct.GPR, %struct.GPR* %6924, i32 0, i32 15
  %6926 = getelementptr inbounds %struct.Reg, %struct.Reg* %6925, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %6926 to i64*
  %6927 = load i64, i64* %RBP.i180
  %6928 = sub i64 %6927, 100
  %6929 = load i32, i32* %EDX.i179
  %6930 = zext i32 %6929 to i64
  %6931 = load i64, i64* %PC.i178
  %6932 = add i64 %6931, 3
  store i64 %6932, i64* %PC.i178
  %6933 = inttoptr i64 %6928 to i32*
  store i32 %6929, i32* %6933
  store %struct.Memory* %loadMem_429bb9, %struct.Memory** %MEMORY
  %loadMem_429bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6935 = getelementptr inbounds %struct.GPR, %struct.GPR* %6934, i32 0, i32 33
  %6936 = getelementptr inbounds %struct.Reg, %struct.Reg* %6935, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %6936 to i64*
  %6937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6938 = getelementptr inbounds %struct.GPR, %struct.GPR* %6937, i32 0, i32 7
  %6939 = getelementptr inbounds %struct.Reg, %struct.Reg* %6938, i32 0, i32 0
  %RDX.i176 = bitcast %union.anon* %6939 to i64*
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6941 = getelementptr inbounds %struct.GPR, %struct.GPR* %6940, i32 0, i32 15
  %6942 = getelementptr inbounds %struct.Reg, %struct.Reg* %6941, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %6942 to i64*
  %6943 = load i64, i64* %RBP.i177
  %6944 = sub i64 %6943, 64
  %6945 = load i64, i64* %PC.i175
  %6946 = add i64 %6945, 3
  store i64 %6946, i64* %PC.i175
  %6947 = inttoptr i64 %6944 to i32*
  %6948 = load i32, i32* %6947
  %6949 = zext i32 %6948 to i64
  store i64 %6949, i64* %RDX.i176, align 8
  store %struct.Memory* %loadMem_429bbc, %struct.Memory** %MEMORY
  %loadMem_429bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6951 = getelementptr inbounds %struct.GPR, %struct.GPR* %6950, i32 0, i32 33
  %6952 = getelementptr inbounds %struct.Reg, %struct.Reg* %6951, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %6952 to i64*
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6954 = getelementptr inbounds %struct.GPR, %struct.GPR* %6953, i32 0, i32 7
  %6955 = getelementptr inbounds %struct.Reg, %struct.Reg* %6954, i32 0, i32 0
  %RDX.i173 = bitcast %union.anon* %6955 to i64*
  %6956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6957 = getelementptr inbounds %struct.GPR, %struct.GPR* %6956, i32 0, i32 15
  %6958 = getelementptr inbounds %struct.Reg, %struct.Reg* %6957, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %6958 to i64*
  %6959 = load i64, i64* %RDX.i173
  %6960 = load i64, i64* %RBP.i174
  %6961 = sub i64 %6960, 100
  %6962 = load i64, i64* %PC.i172
  %6963 = add i64 %6962, 4
  store i64 %6963, i64* %PC.i172
  %6964 = inttoptr i64 %6961 to i32*
  %6965 = load i32, i32* %6964
  %6966 = shl i64 %6959, 32
  %6967 = ashr exact i64 %6966, 32
  %6968 = sext i32 %6965 to i64
  %6969 = mul i64 %6968, %6967
  %6970 = trunc i64 %6969 to i32
  %6971 = and i64 %6969, 4294967295
  store i64 %6971, i64* %RDX.i173, align 8
  %6972 = shl i64 %6969, 32
  %6973 = ashr exact i64 %6972, 32
  %6974 = icmp ne i64 %6973, %6969
  %6975 = zext i1 %6974 to i8
  %6976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6975, i8* %6976, align 1
  %6977 = and i32 %6970, 255
  %6978 = call i32 @llvm.ctpop.i32(i32 %6977)
  %6979 = trunc i32 %6978 to i8
  %6980 = and i8 %6979, 1
  %6981 = xor i8 %6980, 1
  %6982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6981, i8* %6982, align 1
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6983, align 1
  %6984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6984, align 1
  %6985 = lshr i32 %6970, 31
  %6986 = trunc i32 %6985 to i8
  %6987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6986, i8* %6987, align 1
  %6988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6975, i8* %6988, align 1
  store %struct.Memory* %loadMem_429bbf, %struct.Memory** %MEMORY
  %loadMem_429bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6990 = getelementptr inbounds %struct.GPR, %struct.GPR* %6989, i32 0, i32 33
  %6991 = getelementptr inbounds %struct.Reg, %struct.Reg* %6990, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6991 to i64*
  %6992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6993 = getelementptr inbounds %struct.GPR, %struct.GPR* %6992, i32 0, i32 1
  %6994 = getelementptr inbounds %struct.Reg, %struct.Reg* %6993, i32 0, i32 0
  %EAX.i170 = bitcast %union.anon* %6994 to i32*
  %6995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6996 = getelementptr inbounds %struct.GPR, %struct.GPR* %6995, i32 0, i32 15
  %6997 = getelementptr inbounds %struct.Reg, %struct.Reg* %6996, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %6997 to i64*
  %6998 = load i64, i64* %RBP.i171
  %6999 = sub i64 %6998, 144
  %7000 = load i32, i32* %EAX.i170
  %7001 = zext i32 %7000 to i64
  %7002 = load i64, i64* %PC.i169
  %7003 = add i64 %7002, 6
  store i64 %7003, i64* %PC.i169
  %7004 = inttoptr i64 %6999 to i32*
  store i32 %7000, i32* %7004
  store %struct.Memory* %loadMem_429bc3, %struct.Memory** %MEMORY
  %loadMem_429bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7006 = getelementptr inbounds %struct.GPR, %struct.GPR* %7005, i32 0, i32 33
  %7007 = getelementptr inbounds %struct.Reg, %struct.Reg* %7006, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %7007 to i64*
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7009 = getelementptr inbounds %struct.GPR, %struct.GPR* %7008, i32 0, i32 7
  %7010 = getelementptr inbounds %struct.Reg, %struct.Reg* %7009, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7010 to i32*
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7012 = getelementptr inbounds %struct.GPR, %struct.GPR* %7011, i32 0, i32 1
  %7013 = getelementptr inbounds %struct.Reg, %struct.Reg* %7012, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %7013 to i64*
  %7014 = load i32, i32* %EDX.i
  %7015 = zext i32 %7014 to i64
  %7016 = load i64, i64* %PC.i167
  %7017 = add i64 %7016, 2
  store i64 %7017, i64* %PC.i167
  %7018 = and i64 %7015, 4294967295
  store i64 %7018, i64* %RAX.i168, align 8
  store %struct.Memory* %loadMem_429bc9, %struct.Memory** %MEMORY
  %loadMem_429bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7020 = getelementptr inbounds %struct.GPR, %struct.GPR* %7019, i32 0, i32 33
  %7021 = getelementptr inbounds %struct.Reg, %struct.Reg* %7020, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %7021 to i64*
  %7022 = load i64, i64* %PC.i166
  %7023 = add i64 %7022, 1
  store i64 %7023, i64* %PC.i166
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7026 = bitcast %union.anon* %7025 to i32*
  %7027 = load i32, i32* %7026, align 8
  %7028 = sext i32 %7027 to i64
  %7029 = lshr i64 %7028, 32
  store i64 %7029, i64* %7024, align 8
  store %struct.Memory* %loadMem_429bcb, %struct.Memory** %MEMORY
  %loadMem_429bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7031 = getelementptr inbounds %struct.GPR, %struct.GPR* %7030, i32 0, i32 33
  %7032 = getelementptr inbounds %struct.Reg, %struct.Reg* %7031, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %7032 to i64*
  %7033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7034 = getelementptr inbounds %struct.GPR, %struct.GPR* %7033, i32 0, i32 9
  %7035 = getelementptr inbounds %struct.Reg, %struct.Reg* %7034, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7035 to i64*
  %7036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7037 = getelementptr inbounds %struct.GPR, %struct.GPR* %7036, i32 0, i32 15
  %7038 = getelementptr inbounds %struct.Reg, %struct.Reg* %7037, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %7038 to i64*
  %7039 = load i64, i64* %RBP.i165
  %7040 = sub i64 %7039, 144
  %7041 = load i64, i64* %PC.i164
  %7042 = add i64 %7041, 6
  store i64 %7042, i64* %PC.i164
  %7043 = inttoptr i64 %7040 to i32*
  %7044 = load i32, i32* %7043
  %7045 = zext i32 %7044 to i64
  store i64 %7045, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_429bcc, %struct.Memory** %MEMORY
  %loadMem_429bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7047 = getelementptr inbounds %struct.GPR, %struct.GPR* %7046, i32 0, i32 33
  %7048 = getelementptr inbounds %struct.Reg, %struct.Reg* %7047, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %7048 to i64*
  %7049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7050 = getelementptr inbounds %struct.GPR, %struct.GPR* %7049, i32 0, i32 9
  %7051 = getelementptr inbounds %struct.Reg, %struct.Reg* %7050, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %7051 to i32*
  %7052 = load i32, i32* %ESI.i
  %7053 = zext i32 %7052 to i64
  %7054 = load i64, i64* %PC.i160
  %7055 = add i64 %7054, 2
  store i64 %7055, i64* %PC.i160
  %7056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7057 = bitcast %union.anon* %7056 to i32*
  %7058 = load i32, i32* %7057, align 8
  %7059 = zext i32 %7058 to i64
  %7060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %7061 = bitcast %union.anon* %7060 to i32*
  %7062 = load i32, i32* %7061, align 8
  %7063 = zext i32 %7062 to i64
  %7064 = shl i64 %7053, 32
  %7065 = ashr exact i64 %7064, 32
  %7066 = shl i64 %7063, 32
  %7067 = or i64 %7066, %7059
  %7068 = sdiv i64 %7067, %7065
  %7069 = shl i64 %7068, 32
  %7070 = ashr exact i64 %7069, 32
  %7071 = icmp eq i64 %7068, %7070
  br i1 %7071, label %7076, label %7072

; <label>:7072:                                   ; preds = %block_429b86
  %7073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7074 = load i64, i64* %7073, align 8
  %7075 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7074, %struct.Memory* %loadMem_429bd2)
  br label %routine_idivl__esi.exit

; <label>:7076:                                   ; preds = %block_429b86
  %7077 = srem i64 %7067, %7065
  %7078 = getelementptr inbounds %union.anon, %union.anon* %7056, i64 0, i32 0
  %7079 = and i64 %7068, 4294967295
  store i64 %7079, i64* %7078, align 8
  %7080 = getelementptr inbounds %union.anon, %union.anon* %7060, i64 0, i32 0
  %7081 = and i64 %7077, 4294967295
  store i64 %7081, i64* %7080, align 8
  %7082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7082, align 1
  %7083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %7083, align 1
  %7084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7084, align 1
  %7085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7085, align 1
  %7086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7086, align 1
  %7087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7087, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %7072, %7076
  %7088 = phi %struct.Memory* [ %7075, %7072 ], [ %loadMem_429bd2, %7076 ]
  store %struct.Memory* %7088, %struct.Memory** %MEMORY
  %loadMem_429bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7090 = getelementptr inbounds %struct.GPR, %struct.GPR* %7089, i32 0, i32 33
  %7091 = getelementptr inbounds %struct.Reg, %struct.Reg* %7090, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %7091 to i64*
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7093 = getelementptr inbounds %struct.GPR, %struct.GPR* %7092, i32 0, i32 1
  %7094 = getelementptr inbounds %struct.Reg, %struct.Reg* %7093, i32 0, i32 0
  %EAX.i158 = bitcast %union.anon* %7094 to i32*
  %7095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7096 = getelementptr inbounds %struct.GPR, %struct.GPR* %7095, i32 0, i32 15
  %7097 = getelementptr inbounds %struct.Reg, %struct.Reg* %7096, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %7097 to i64*
  %7098 = load i64, i64* %RBP.i159
  %7099 = sub i64 %7098, 100
  %7100 = load i32, i32* %EAX.i158
  %7101 = zext i32 %7100 to i64
  %7102 = load i64, i64* %PC.i157
  %7103 = add i64 %7102, 3
  store i64 %7103, i64* %PC.i157
  %7104 = inttoptr i64 %7099 to i32*
  store i32 %7100, i32* %7104
  store %struct.Memory* %loadMem_429bd4, %struct.Memory** %MEMORY
  br label %block_.L_429bd7

block_.L_429bd7:                                  ; preds = %routine_idivl__esi.exit, %routine_idivl__ecx.exit
  %loadMem_429bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7106 = getelementptr inbounds %struct.GPR, %struct.GPR* %7105, i32 0, i32 33
  %7107 = getelementptr inbounds %struct.Reg, %struct.Reg* %7106, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %7107 to i64*
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7109 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7108, i64 0, i64 0
  %YMM0.i156 = bitcast %union.VectorReg* %7109 to %"class.std::bitset"*
  %7110 = bitcast %"class.std::bitset"* %YMM0.i156 to i8*
  %7111 = load i64, i64* %PC.i155
  %7112 = add i64 %7111, ptrtoint (%G_0xb9409__rip__type* @G_0xb9409__rip_ to i64)
  %7113 = load i64, i64* %PC.i155
  %7114 = add i64 %7113, 8
  store i64 %7114, i64* %PC.i155
  %7115 = inttoptr i64 %7112 to double*
  %7116 = load double, double* %7115
  %7117 = bitcast i8* %7110 to double*
  store double %7116, double* %7117, align 1
  %7118 = getelementptr inbounds i8, i8* %7110, i64 8
  %7119 = bitcast i8* %7118 to double*
  store double 0.000000e+00, double* %7119, align 1
  store %struct.Memory* %loadMem_429bd7, %struct.Memory** %MEMORY
  %loadMem_429bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7121 = getelementptr inbounds %struct.GPR, %struct.GPR* %7120, i32 0, i32 33
  %7122 = getelementptr inbounds %struct.Reg, %struct.Reg* %7121, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %7122 to i64*
  %7123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7124 = getelementptr inbounds %struct.GPR, %struct.GPR* %7123, i32 0, i32 15
  %7125 = getelementptr inbounds %struct.Reg, %struct.Reg* %7124, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %7125 to i64*
  %7126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7126, i64 0, i64 1
  %YMM1.i154 = bitcast %union.VectorReg* %7127 to %"class.std::bitset"*
  %7128 = bitcast %"class.std::bitset"* %YMM1.i154 to i8*
  %7129 = load i64, i64* %RBP.i153
  %7130 = sub i64 %7129, 100
  %7131 = load i64, i64* %PC.i152
  %7132 = add i64 %7131, 5
  store i64 %7132, i64* %PC.i152
  %7133 = inttoptr i64 %7130 to i32*
  %7134 = load i32, i32* %7133
  %7135 = sitofp i32 %7134 to double
  %7136 = bitcast i8* %7128 to double*
  store double %7135, double* %7136, align 1
  store %struct.Memory* %loadMem_429bdf, %struct.Memory** %MEMORY
  %loadMem_429be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7138 = getelementptr inbounds %struct.GPR, %struct.GPR* %7137, i32 0, i32 33
  %7139 = getelementptr inbounds %struct.Reg, %struct.Reg* %7138, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %7139 to i64*
  %7140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7141 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7140, i64 0, i64 0
  %XMM0.i148 = bitcast %union.VectorReg* %7141 to %union.vec128_t*
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7143 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7142, i64 0, i64 1
  %XMM1.i149 = bitcast %union.VectorReg* %7143 to %union.vec128_t*
  %7144 = bitcast %union.vec128_t* %XMM0.i148 to i8*
  %7145 = bitcast %union.vec128_t* %XMM1.i149 to i8*
  %7146 = load i64, i64* %PC.i147
  %7147 = add i64 %7146, 4
  store i64 %7147, i64* %PC.i147
  %7148 = bitcast i8* %7144 to double*
  %7149 = load double, double* %7148, align 1
  %7150 = bitcast i8* %7145 to double*
  %7151 = load double, double* %7150, align 1
  %7152 = fcmp uno double %7149, %7151
  br i1 %7152, label %7153, label %7165

; <label>:7153:                                   ; preds = %block_.L_429bd7
  %7154 = fadd double %7149, %7151
  %7155 = bitcast double %7154 to i64
  %7156 = and i64 %7155, 9221120237041090560
  %7157 = icmp eq i64 %7156, 9218868437227405312
  %7158 = and i64 %7155, 2251799813685247
  %7159 = icmp ne i64 %7158, 0
  %7160 = and i1 %7157, %7159
  br i1 %7160, label %7161, label %7171

; <label>:7161:                                   ; preds = %7153
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7163 = load i64, i64* %7162, align 8
  %7164 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7163, %struct.Memory* %loadMem_429be4)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:7165:                                   ; preds = %block_.L_429bd7
  %7166 = fcmp ogt double %7149, %7151
  br i1 %7166, label %7171, label %7167

; <label>:7167:                                   ; preds = %7165
  %7168 = fcmp olt double %7149, %7151
  br i1 %7168, label %7171, label %7169

; <label>:7169:                                   ; preds = %7167
  %7170 = fcmp oeq double %7149, %7151
  br i1 %7170, label %7171, label %7178

; <label>:7171:                                   ; preds = %7169, %7167, %7165, %7153
  %7172 = phi i8 [ 0, %7165 ], [ 0, %7167 ], [ 1, %7169 ], [ 1, %7153 ]
  %7173 = phi i8 [ 0, %7165 ], [ 0, %7167 ], [ 0, %7169 ], [ 1, %7153 ]
  %7174 = phi i8 [ 0, %7165 ], [ 1, %7167 ], [ 0, %7169 ], [ 1, %7153 ]
  %7175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7172, i8* %7175, align 1
  %7176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7173, i8* %7176, align 1
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7174, i8* %7177, align 1
  br label %7178

; <label>:7178:                                   ; preds = %7171, %7169
  %7179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7179, align 1
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7180, align 1
  %7181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7181, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %7161, %7178
  %7182 = phi %struct.Memory* [ %7164, %7161 ], [ %loadMem_429be4, %7178 ]
  store %struct.Memory* %7182, %struct.Memory** %MEMORY
  %loadMem_429be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 33
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %7185 to i64*
  %7186 = load i64, i64* %PC.i146
  %7187 = add i64 %7186, 11
  %7188 = load i64, i64* %PC.i146
  %7189 = add i64 %7188, 6
  %7190 = load i64, i64* %PC.i146
  %7191 = add i64 %7190, 6
  store i64 %7191, i64* %PC.i146
  %7192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7193 = load i8, i8* %7192, align 1
  store i8 %7193, i8* %BRANCH_TAKEN, align 1
  %7194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7195 = icmp ne i8 %7193, 0
  %7196 = select i1 %7195, i64 %7187, i64 %7189
  store i64 %7196, i64* %7194, align 8
  store %struct.Memory* %loadMem_429be8, %struct.Memory** %MEMORY
  %loadBr_429be8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429be8 = icmp eq i8 %loadBr_429be8, 1
  br i1 %cmpBr_429be8, label %block_.L_429bf3, label %block_429bee

block_429bee:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_429bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %7197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7198 = getelementptr inbounds %struct.GPR, %struct.GPR* %7197, i32 0, i32 33
  %7199 = getelementptr inbounds %struct.Reg, %struct.Reg* %7198, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %7199 to i64*
  %7200 = load i64, i64* %PC.i145
  %7201 = add i64 %7200, 109
  %7202 = load i64, i64* %PC.i145
  %7203 = add i64 %7202, 5
  store i64 %7203, i64* %PC.i145
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7201, i64* %7204, align 8
  store %struct.Memory* %loadMem_429bee, %struct.Memory** %MEMORY
  br label %block_.L_429c5b

block_.L_429bf3:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_429bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7206 = getelementptr inbounds %struct.GPR, %struct.GPR* %7205, i32 0, i32 33
  %7207 = getelementptr inbounds %struct.Reg, %struct.Reg* %7206, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %7207 to i64*
  %7208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7209 = getelementptr inbounds %struct.GPR, %struct.GPR* %7208, i32 0, i32 1
  %7210 = getelementptr inbounds %struct.Reg, %struct.Reg* %7209, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %7210 to i64*
  %7211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7212 = getelementptr inbounds %struct.GPR, %struct.GPR* %7211, i32 0, i32 15
  %7213 = getelementptr inbounds %struct.Reg, %struct.Reg* %7212, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %7213 to i64*
  %7214 = load i64, i64* %RBP.i144
  %7215 = sub i64 %7214, 44
  %7216 = load i64, i64* %PC.i142
  %7217 = add i64 %7216, 3
  store i64 %7217, i64* %PC.i142
  %7218 = inttoptr i64 %7215 to i32*
  %7219 = load i32, i32* %7218
  %7220 = zext i32 %7219 to i64
  store i64 %7220, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_429bf3, %struct.Memory** %MEMORY
  %loadMem_429bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7222 = getelementptr inbounds %struct.GPR, %struct.GPR* %7221, i32 0, i32 33
  %7223 = getelementptr inbounds %struct.Reg, %struct.Reg* %7222, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %7223 to i64*
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7225 = getelementptr inbounds %struct.GPR, %struct.GPR* %7224, i32 0, i32 5
  %7226 = getelementptr inbounds %struct.Reg, %struct.Reg* %7225, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %7226 to i64*
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7228 = getelementptr inbounds %struct.GPR, %struct.GPR* %7227, i32 0, i32 15
  %7229 = getelementptr inbounds %struct.Reg, %struct.Reg* %7228, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %7229 to i64*
  %7230 = load i64, i64* %RBP.i141
  %7231 = sub i64 %7230, 60
  %7232 = load i64, i64* %PC.i139
  %7233 = add i64 %7232, 4
  store i64 %7233, i64* %PC.i139
  %7234 = inttoptr i64 %7231 to i32*
  %7235 = load i32, i32* %7234
  %7236 = sext i32 %7235 to i64
  store i64 %7236, i64* %RCX.i140, align 8
  store %struct.Memory* %loadMem_429bf6, %struct.Memory** %MEMORY
  %loadMem_429bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7238 = getelementptr inbounds %struct.GPR, %struct.GPR* %7237, i32 0, i32 33
  %7239 = getelementptr inbounds %struct.Reg, %struct.Reg* %7238, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %7239 to i64*
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7241 = getelementptr inbounds %struct.GPR, %struct.GPR* %7240, i32 0, i32 1
  %7242 = getelementptr inbounds %struct.Reg, %struct.Reg* %7241, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %7242 to i64*
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7244 = getelementptr inbounds %struct.GPR, %struct.GPR* %7243, i32 0, i32 5
  %7245 = getelementptr inbounds %struct.Reg, %struct.Reg* %7244, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %7245 to i64*
  %7246 = load i64, i64* %RAX.i137
  %7247 = load i64, i64* %RCX.i138
  %7248 = mul i64 %7247, 4
  %7249 = add i64 %7248, 8053168
  %7250 = load i64, i64* %PC.i136
  %7251 = add i64 %7250, 7
  store i64 %7251, i64* %PC.i136
  %7252 = trunc i64 %7246 to i32
  %7253 = inttoptr i64 %7249 to i32*
  %7254 = load i32, i32* %7253
  %7255 = add i32 %7254, %7252
  %7256 = zext i32 %7255 to i64
  store i64 %7256, i64* %RAX.i137, align 8
  %7257 = icmp ult i32 %7255, %7252
  %7258 = icmp ult i32 %7255, %7254
  %7259 = or i1 %7257, %7258
  %7260 = zext i1 %7259 to i8
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7260, i8* %7261, align 1
  %7262 = and i32 %7255, 255
  %7263 = call i32 @llvm.ctpop.i32(i32 %7262)
  %7264 = trunc i32 %7263 to i8
  %7265 = and i8 %7264, 1
  %7266 = xor i8 %7265, 1
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7266, i8* %7267, align 1
  %7268 = xor i32 %7254, %7252
  %7269 = xor i32 %7268, %7255
  %7270 = lshr i32 %7269, 4
  %7271 = trunc i32 %7270 to i8
  %7272 = and i8 %7271, 1
  %7273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7272, i8* %7273, align 1
  %7274 = icmp eq i32 %7255, 0
  %7275 = zext i1 %7274 to i8
  %7276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7275, i8* %7276, align 1
  %7277 = lshr i32 %7255, 31
  %7278 = trunc i32 %7277 to i8
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7278, i8* %7279, align 1
  %7280 = lshr i32 %7252, 31
  %7281 = lshr i32 %7254, 31
  %7282 = xor i32 %7277, %7280
  %7283 = xor i32 %7277, %7281
  %7284 = add i32 %7282, %7283
  %7285 = icmp eq i32 %7284, 2
  %7286 = zext i1 %7285 to i8
  %7287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7286, i8* %7287, align 1
  store %struct.Memory* %loadMem_429bfa, %struct.Memory** %MEMORY
  %loadMem_429c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7289 = getelementptr inbounds %struct.GPR, %struct.GPR* %7288, i32 0, i32 33
  %7290 = getelementptr inbounds %struct.Reg, %struct.Reg* %7289, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %7290 to i64*
  %7291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7292 = getelementptr inbounds %struct.GPR, %struct.GPR* %7291, i32 0, i32 1
  %7293 = getelementptr inbounds %struct.Reg, %struct.Reg* %7292, i32 0, i32 0
  %EAX.i134 = bitcast %union.anon* %7293 to i32*
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7295 = getelementptr inbounds %struct.GPR, %struct.GPR* %7294, i32 0, i32 5
  %7296 = getelementptr inbounds %struct.Reg, %struct.Reg* %7295, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %7296 to i64*
  %7297 = load i32, i32* %EAX.i134
  %7298 = zext i32 %7297 to i64
  %7299 = load i64, i64* %PC.i133
  %7300 = add i64 %7299, 3
  store i64 %7300, i64* %PC.i133
  %7301 = shl i64 %7298, 32
  %7302 = ashr exact i64 %7301, 32
  store i64 %7302, i64* %RCX.i135, align 8
  store %struct.Memory* %loadMem_429c01, %struct.Memory** %MEMORY
  %loadMem_429c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7304 = getelementptr inbounds %struct.GPR, %struct.GPR* %7303, i32 0, i32 33
  %7305 = getelementptr inbounds %struct.Reg, %struct.Reg* %7304, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %7305 to i64*
  %7306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7307 = getelementptr inbounds %struct.GPR, %struct.GPR* %7306, i32 0, i32 5
  %7308 = getelementptr inbounds %struct.Reg, %struct.Reg* %7307, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %7308 to i64*
  %7309 = load i64, i64* %RCX.i132
  %7310 = mul i64 %7309, 4
  %7311 = add i64 %7310, 11268976
  %7312 = load i64, i64* %PC.i131
  %7313 = add i64 %7312, 8
  store i64 %7313, i64* %PC.i131
  %7314 = inttoptr i64 %7311 to i32*
  %7315 = load i32, i32* %7314
  %7316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7316, align 1
  %7317 = and i32 %7315, 255
  %7318 = call i32 @llvm.ctpop.i32(i32 %7317)
  %7319 = trunc i32 %7318 to i8
  %7320 = and i8 %7319, 1
  %7321 = xor i8 %7320, 1
  %7322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7321, i8* %7322, align 1
  %7323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7323, align 1
  %7324 = icmp eq i32 %7315, 0
  %7325 = zext i1 %7324 to i8
  %7326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7325, i8* %7326, align 1
  %7327 = lshr i32 %7315, 31
  %7328 = trunc i32 %7327 to i8
  %7329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7328, i8* %7329, align 1
  %7330 = lshr i32 %7315, 31
  %7331 = xor i32 %7327, %7330
  %7332 = add i32 %7331, %7330
  %7333 = icmp eq i32 %7332, 2
  %7334 = zext i1 %7333 to i8
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7334, i8* %7335, align 1
  store %struct.Memory* %loadMem_429c04, %struct.Memory** %MEMORY
  %loadMem_429c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7337 = getelementptr inbounds %struct.GPR, %struct.GPR* %7336, i32 0, i32 33
  %7338 = getelementptr inbounds %struct.Reg, %struct.Reg* %7337, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %7338 to i64*
  %7339 = load i64, i64* %PC.i130
  %7340 = add i64 %7339, 40
  %7341 = load i64, i64* %PC.i130
  %7342 = add i64 %7341, 6
  %7343 = load i64, i64* %PC.i130
  %7344 = add i64 %7343, 6
  store i64 %7344, i64* %PC.i130
  %7345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7346 = load i8, i8* %7345, align 1
  %7347 = icmp eq i8 %7346, 0
  %7348 = zext i1 %7347 to i8
  store i8 %7348, i8* %BRANCH_TAKEN, align 1
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7350 = select i1 %7347, i64 %7340, i64 %7342
  store i64 %7350, i64* %7349, align 8
  store %struct.Memory* %loadMem_429c0c, %struct.Memory** %MEMORY
  %loadBr_429c0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429c0c = icmp eq i8 %loadBr_429c0c, 1
  br i1 %cmpBr_429c0c, label %block_.L_429c34, label %block_429c12

block_429c12:                                     ; preds = %block_.L_429bf3
  %loadMem_429c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7352 = getelementptr inbounds %struct.GPR, %struct.GPR* %7351, i32 0, i32 33
  %7353 = getelementptr inbounds %struct.Reg, %struct.Reg* %7352, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %7353 to i64*
  %7354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7355 = getelementptr inbounds %struct.GPR, %struct.GPR* %7354, i32 0, i32 1
  %7356 = getelementptr inbounds %struct.Reg, %struct.Reg* %7355, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %7356 to i64*
  %7357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7358 = getelementptr inbounds %struct.GPR, %struct.GPR* %7357, i32 0, i32 15
  %7359 = getelementptr inbounds %struct.Reg, %struct.Reg* %7358, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %7359 to i64*
  %7360 = load i64, i64* %RBP.i129
  %7361 = sub i64 %7360, 44
  %7362 = load i64, i64* %PC.i127
  %7363 = add i64 %7362, 3
  store i64 %7363, i64* %PC.i127
  %7364 = inttoptr i64 %7361 to i32*
  %7365 = load i32, i32* %7364
  %7366 = zext i32 %7365 to i64
  store i64 %7366, i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_429c12, %struct.Memory** %MEMORY
  %loadMem_429c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7368 = getelementptr inbounds %struct.GPR, %struct.GPR* %7367, i32 0, i32 33
  %7369 = getelementptr inbounds %struct.Reg, %struct.Reg* %7368, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %7369 to i64*
  %7370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7371 = getelementptr inbounds %struct.GPR, %struct.GPR* %7370, i32 0, i32 5
  %7372 = getelementptr inbounds %struct.Reg, %struct.Reg* %7371, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %7372 to i64*
  %7373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7374 = getelementptr inbounds %struct.GPR, %struct.GPR* %7373, i32 0, i32 15
  %7375 = getelementptr inbounds %struct.Reg, %struct.Reg* %7374, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %7375 to i64*
  %7376 = load i64, i64* %RBP.i126
  %7377 = sub i64 %7376, 60
  %7378 = load i64, i64* %PC.i124
  %7379 = add i64 %7378, 4
  store i64 %7379, i64* %PC.i124
  %7380 = inttoptr i64 %7377 to i32*
  %7381 = load i32, i32* %7380
  %7382 = sext i32 %7381 to i64
  store i64 %7382, i64* %RCX.i125, align 8
  store %struct.Memory* %loadMem_429c15, %struct.Memory** %MEMORY
  %loadMem_429c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7384 = getelementptr inbounds %struct.GPR, %struct.GPR* %7383, i32 0, i32 33
  %7385 = getelementptr inbounds %struct.Reg, %struct.Reg* %7384, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %7385 to i64*
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7387 = getelementptr inbounds %struct.GPR, %struct.GPR* %7386, i32 0, i32 1
  %7388 = getelementptr inbounds %struct.Reg, %struct.Reg* %7387, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %7388 to i64*
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7390 = getelementptr inbounds %struct.GPR, %struct.GPR* %7389, i32 0, i32 5
  %7391 = getelementptr inbounds %struct.Reg, %struct.Reg* %7390, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %7391 to i64*
  %7392 = load i64, i64* %RAX.i122
  %7393 = load i64, i64* %RCX.i123
  %7394 = mul i64 %7393, 4
  %7395 = add i64 %7394, 8053168
  %7396 = load i64, i64* %PC.i121
  %7397 = add i64 %7396, 7
  store i64 %7397, i64* %PC.i121
  %7398 = trunc i64 %7392 to i32
  %7399 = inttoptr i64 %7395 to i32*
  %7400 = load i32, i32* %7399
  %7401 = add i32 %7400, %7398
  %7402 = zext i32 %7401 to i64
  store i64 %7402, i64* %RAX.i122, align 8
  %7403 = icmp ult i32 %7401, %7398
  %7404 = icmp ult i32 %7401, %7400
  %7405 = or i1 %7403, %7404
  %7406 = zext i1 %7405 to i8
  %7407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7406, i8* %7407, align 1
  %7408 = and i32 %7401, 255
  %7409 = call i32 @llvm.ctpop.i32(i32 %7408)
  %7410 = trunc i32 %7409 to i8
  %7411 = and i8 %7410, 1
  %7412 = xor i8 %7411, 1
  %7413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7412, i8* %7413, align 1
  %7414 = xor i32 %7400, %7398
  %7415 = xor i32 %7414, %7401
  %7416 = lshr i32 %7415, 4
  %7417 = trunc i32 %7416 to i8
  %7418 = and i8 %7417, 1
  %7419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7418, i8* %7419, align 1
  %7420 = icmp eq i32 %7401, 0
  %7421 = zext i1 %7420 to i8
  %7422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7421, i8* %7422, align 1
  %7423 = lshr i32 %7401, 31
  %7424 = trunc i32 %7423 to i8
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7424, i8* %7425, align 1
  %7426 = lshr i32 %7398, 31
  %7427 = lshr i32 %7400, 31
  %7428 = xor i32 %7423, %7426
  %7429 = xor i32 %7423, %7427
  %7430 = add i32 %7428, %7429
  %7431 = icmp eq i32 %7430, 2
  %7432 = zext i1 %7431 to i8
  %7433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7432, i8* %7433, align 1
  store %struct.Memory* %loadMem_429c19, %struct.Memory** %MEMORY
  %loadMem_429c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7435 = getelementptr inbounds %struct.GPR, %struct.GPR* %7434, i32 0, i32 33
  %7436 = getelementptr inbounds %struct.Reg, %struct.Reg* %7435, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %7436 to i64*
  %7437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7438 = getelementptr inbounds %struct.GPR, %struct.GPR* %7437, i32 0, i32 5
  %7439 = getelementptr inbounds %struct.Reg, %struct.Reg* %7438, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %7439 to i64*
  %7440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7441 = getelementptr inbounds %struct.GPR, %struct.GPR* %7440, i32 0, i32 15
  %7442 = getelementptr inbounds %struct.Reg, %struct.Reg* %7441, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %7442 to i64*
  %7443 = load i64, i64* %RBP.i120
  %7444 = sub i64 %7443, 72
  %7445 = load i64, i64* %PC.i118
  %7446 = add i64 %7445, 4
  store i64 %7446, i64* %PC.i118
  %7447 = inttoptr i64 %7444 to i32*
  %7448 = load i32, i32* %7447
  %7449 = sext i32 %7448 to i64
  store i64 %7449, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_429c20, %struct.Memory** %MEMORY
  %loadMem_429c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7451 = getelementptr inbounds %struct.GPR, %struct.GPR* %7450, i32 0, i32 33
  %7452 = getelementptr inbounds %struct.Reg, %struct.Reg* %7451, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %7452 to i64*
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7454 = getelementptr inbounds %struct.GPR, %struct.GPR* %7453, i32 0, i32 1
  %7455 = getelementptr inbounds %struct.Reg, %struct.Reg* %7454, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %7455 to i32*
  %7456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7457 = getelementptr inbounds %struct.GPR, %struct.GPR* %7456, i32 0, i32 5
  %7458 = getelementptr inbounds %struct.Reg, %struct.Reg* %7457, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %7458 to i64*
  %7459 = load i64, i64* %RCX.i117
  %7460 = mul i64 %7459, 4
  %7461 = add i64 %7460, 11270576
  %7462 = load i32, i32* %EAX.i116
  %7463 = zext i32 %7462 to i64
  %7464 = load i64, i64* %PC.i115
  %7465 = add i64 %7464, 7
  store i64 %7465, i64* %PC.i115
  %7466 = inttoptr i64 %7461 to i32*
  store i32 %7462, i32* %7466
  store %struct.Memory* %loadMem_429c24, %struct.Memory** %MEMORY
  %loadMem_429c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7468 = getelementptr inbounds %struct.GPR, %struct.GPR* %7467, i32 0, i32 33
  %7469 = getelementptr inbounds %struct.Reg, %struct.Reg* %7468, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %7469 to i64*
  %7470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7471 = getelementptr inbounds %struct.GPR, %struct.GPR* %7470, i32 0, i32 1
  %7472 = getelementptr inbounds %struct.Reg, %struct.Reg* %7471, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %7472 to i64*
  %7473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7474 = getelementptr inbounds %struct.GPR, %struct.GPR* %7473, i32 0, i32 15
  %7475 = getelementptr inbounds %struct.Reg, %struct.Reg* %7474, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %7475 to i64*
  %7476 = load i64, i64* %RBP.i114
  %7477 = sub i64 %7476, 72
  %7478 = load i64, i64* %PC.i112
  %7479 = add i64 %7478, 3
  store i64 %7479, i64* %PC.i112
  %7480 = inttoptr i64 %7477 to i32*
  %7481 = load i32, i32* %7480
  %7482 = zext i32 %7481 to i64
  store i64 %7482, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_429c2b, %struct.Memory** %MEMORY
  %loadMem_429c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7484 = getelementptr inbounds %struct.GPR, %struct.GPR* %7483, i32 0, i32 33
  %7485 = getelementptr inbounds %struct.Reg, %struct.Reg* %7484, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %7485 to i64*
  %7486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7487 = getelementptr inbounds %struct.GPR, %struct.GPR* %7486, i32 0, i32 1
  %7488 = getelementptr inbounds %struct.Reg, %struct.Reg* %7487, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %7488 to i64*
  %7489 = load i64, i64* %RAX.i111
  %7490 = load i64, i64* %PC.i110
  %7491 = add i64 %7490, 3
  store i64 %7491, i64* %PC.i110
  %7492 = trunc i64 %7489 to i32
  %7493 = add i32 1, %7492
  %7494 = zext i32 %7493 to i64
  store i64 %7494, i64* %RAX.i111, align 8
  %7495 = icmp ult i32 %7493, %7492
  %7496 = icmp ult i32 %7493, 1
  %7497 = or i1 %7495, %7496
  %7498 = zext i1 %7497 to i8
  %7499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7498, i8* %7499, align 1
  %7500 = and i32 %7493, 255
  %7501 = call i32 @llvm.ctpop.i32(i32 %7500)
  %7502 = trunc i32 %7501 to i8
  %7503 = and i8 %7502, 1
  %7504 = xor i8 %7503, 1
  %7505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7504, i8* %7505, align 1
  %7506 = xor i64 1, %7489
  %7507 = trunc i64 %7506 to i32
  %7508 = xor i32 %7507, %7493
  %7509 = lshr i32 %7508, 4
  %7510 = trunc i32 %7509 to i8
  %7511 = and i8 %7510, 1
  %7512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7511, i8* %7512, align 1
  %7513 = icmp eq i32 %7493, 0
  %7514 = zext i1 %7513 to i8
  %7515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7514, i8* %7515, align 1
  %7516 = lshr i32 %7493, 31
  %7517 = trunc i32 %7516 to i8
  %7518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7517, i8* %7518, align 1
  %7519 = lshr i32 %7492, 31
  %7520 = xor i32 %7516, %7519
  %7521 = add i32 %7520, %7516
  %7522 = icmp eq i32 %7521, 2
  %7523 = zext i1 %7522 to i8
  %7524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7523, i8* %7524, align 1
  store %struct.Memory* %loadMem_429c2e, %struct.Memory** %MEMORY
  %loadMem_429c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7526 = getelementptr inbounds %struct.GPR, %struct.GPR* %7525, i32 0, i32 33
  %7527 = getelementptr inbounds %struct.Reg, %struct.Reg* %7526, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %7527 to i64*
  %7528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7529 = getelementptr inbounds %struct.GPR, %struct.GPR* %7528, i32 0, i32 1
  %7530 = getelementptr inbounds %struct.Reg, %struct.Reg* %7529, i32 0, i32 0
  %EAX.i108 = bitcast %union.anon* %7530 to i32*
  %7531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7532 = getelementptr inbounds %struct.GPR, %struct.GPR* %7531, i32 0, i32 15
  %7533 = getelementptr inbounds %struct.Reg, %struct.Reg* %7532, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %7533 to i64*
  %7534 = load i64, i64* %RBP.i109
  %7535 = sub i64 %7534, 72
  %7536 = load i32, i32* %EAX.i108
  %7537 = zext i32 %7536 to i64
  %7538 = load i64, i64* %PC.i107
  %7539 = add i64 %7538, 3
  store i64 %7539, i64* %PC.i107
  %7540 = inttoptr i64 %7535 to i32*
  store i32 %7536, i32* %7540
  store %struct.Memory* %loadMem_429c31, %struct.Memory** %MEMORY
  br label %block_.L_429c34

block_.L_429c34:                                  ; preds = %block_429c12, %block_.L_429bf3
  %loadMem_429c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7542 = getelementptr inbounds %struct.GPR, %struct.GPR* %7541, i32 0, i32 33
  %7543 = getelementptr inbounds %struct.Reg, %struct.Reg* %7542, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %7543 to i64*
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7545 = getelementptr inbounds %struct.GPR, %struct.GPR* %7544, i32 0, i32 1
  %7546 = getelementptr inbounds %struct.Reg, %struct.Reg* %7545, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %7546 to i64*
  %7547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7548 = getelementptr inbounds %struct.GPR, %struct.GPR* %7547, i32 0, i32 15
  %7549 = getelementptr inbounds %struct.Reg, %struct.Reg* %7548, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %7549 to i64*
  %7550 = load i64, i64* %RBP.i106
  %7551 = sub i64 %7550, 100
  %7552 = load i64, i64* %PC.i104
  %7553 = add i64 %7552, 3
  store i64 %7553, i64* %PC.i104
  %7554 = inttoptr i64 %7551 to i32*
  %7555 = load i32, i32* %7554
  %7556 = zext i32 %7555 to i64
  store i64 %7556, i64* %RAX.i105, align 8
  store %struct.Memory* %loadMem_429c34, %struct.Memory** %MEMORY
  %loadMem_429c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7558 = getelementptr inbounds %struct.GPR, %struct.GPR* %7557, i32 0, i32 33
  %7559 = getelementptr inbounds %struct.Reg, %struct.Reg* %7558, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %7559 to i64*
  %7560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7561 = getelementptr inbounds %struct.GPR, %struct.GPR* %7560, i32 0, i32 5
  %7562 = getelementptr inbounds %struct.Reg, %struct.Reg* %7561, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %7562 to i64*
  %7563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7564 = getelementptr inbounds %struct.GPR, %struct.GPR* %7563, i32 0, i32 15
  %7565 = getelementptr inbounds %struct.Reg, %struct.Reg* %7564, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %7565 to i64*
  %7566 = load i64, i64* %RBP.i103
  %7567 = sub i64 %7566, 44
  %7568 = load i64, i64* %PC.i101
  %7569 = add i64 %7568, 3
  store i64 %7569, i64* %PC.i101
  %7570 = inttoptr i64 %7567 to i32*
  %7571 = load i32, i32* %7570
  %7572 = zext i32 %7571 to i64
  store i64 %7572, i64* %RCX.i102, align 8
  store %struct.Memory* %loadMem_429c37, %struct.Memory** %MEMORY
  %loadMem_429c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7574 = getelementptr inbounds %struct.GPR, %struct.GPR* %7573, i32 0, i32 33
  %7575 = getelementptr inbounds %struct.Reg, %struct.Reg* %7574, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %7575 to i64*
  %7576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7577 = getelementptr inbounds %struct.GPR, %struct.GPR* %7576, i32 0, i32 7
  %7578 = getelementptr inbounds %struct.Reg, %struct.Reg* %7577, i32 0, i32 0
  %RDX.i99 = bitcast %union.anon* %7578 to i64*
  %7579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7580 = getelementptr inbounds %struct.GPR, %struct.GPR* %7579, i32 0, i32 15
  %7581 = getelementptr inbounds %struct.Reg, %struct.Reg* %7580, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %7581 to i64*
  %7582 = load i64, i64* %RBP.i100
  %7583 = sub i64 %7582, 60
  %7584 = load i64, i64* %PC.i98
  %7585 = add i64 %7584, 4
  store i64 %7585, i64* %PC.i98
  %7586 = inttoptr i64 %7583 to i32*
  %7587 = load i32, i32* %7586
  %7588 = sext i32 %7587 to i64
  store i64 %7588, i64* %RDX.i99, align 8
  store %struct.Memory* %loadMem_429c3a, %struct.Memory** %MEMORY
  %loadMem_429c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7590 = getelementptr inbounds %struct.GPR, %struct.GPR* %7589, i32 0, i32 33
  %7591 = getelementptr inbounds %struct.Reg, %struct.Reg* %7590, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %7591 to i64*
  %7592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7593 = getelementptr inbounds %struct.GPR, %struct.GPR* %7592, i32 0, i32 5
  %7594 = getelementptr inbounds %struct.Reg, %struct.Reg* %7593, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %7594 to i64*
  %7595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7596 = getelementptr inbounds %struct.GPR, %struct.GPR* %7595, i32 0, i32 7
  %7597 = getelementptr inbounds %struct.Reg, %struct.Reg* %7596, i32 0, i32 0
  %RDX.i97 = bitcast %union.anon* %7597 to i64*
  %7598 = load i64, i64* %RCX.i96
  %7599 = load i64, i64* %RDX.i97
  %7600 = mul i64 %7599, 4
  %7601 = add i64 %7600, 8053168
  %7602 = load i64, i64* %PC.i95
  %7603 = add i64 %7602, 7
  store i64 %7603, i64* %PC.i95
  %7604 = trunc i64 %7598 to i32
  %7605 = inttoptr i64 %7601 to i32*
  %7606 = load i32, i32* %7605
  %7607 = add i32 %7606, %7604
  %7608 = zext i32 %7607 to i64
  store i64 %7608, i64* %RCX.i96, align 8
  %7609 = icmp ult i32 %7607, %7604
  %7610 = icmp ult i32 %7607, %7606
  %7611 = or i1 %7609, %7610
  %7612 = zext i1 %7611 to i8
  %7613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7612, i8* %7613, align 1
  %7614 = and i32 %7607, 255
  %7615 = call i32 @llvm.ctpop.i32(i32 %7614)
  %7616 = trunc i32 %7615 to i8
  %7617 = and i8 %7616, 1
  %7618 = xor i8 %7617, 1
  %7619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7618, i8* %7619, align 1
  %7620 = xor i32 %7606, %7604
  %7621 = xor i32 %7620, %7607
  %7622 = lshr i32 %7621, 4
  %7623 = trunc i32 %7622 to i8
  %7624 = and i8 %7623, 1
  %7625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7624, i8* %7625, align 1
  %7626 = icmp eq i32 %7607, 0
  %7627 = zext i1 %7626 to i8
  %7628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7627, i8* %7628, align 1
  %7629 = lshr i32 %7607, 31
  %7630 = trunc i32 %7629 to i8
  %7631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7630, i8* %7631, align 1
  %7632 = lshr i32 %7604, 31
  %7633 = lshr i32 %7606, 31
  %7634 = xor i32 %7629, %7632
  %7635 = xor i32 %7629, %7633
  %7636 = add i32 %7634, %7635
  %7637 = icmp eq i32 %7636, 2
  %7638 = zext i1 %7637 to i8
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7638, i8* %7639, align 1
  store %struct.Memory* %loadMem_429c3e, %struct.Memory** %MEMORY
  %loadMem_429c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7641 = getelementptr inbounds %struct.GPR, %struct.GPR* %7640, i32 0, i32 33
  %7642 = getelementptr inbounds %struct.Reg, %struct.Reg* %7641, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %7642 to i64*
  %7643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7644 = getelementptr inbounds %struct.GPR, %struct.GPR* %7643, i32 0, i32 5
  %7645 = getelementptr inbounds %struct.Reg, %struct.Reg* %7644, i32 0, i32 0
  %ECX.i93 = bitcast %union.anon* %7645 to i32*
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7647 = getelementptr inbounds %struct.GPR, %struct.GPR* %7646, i32 0, i32 7
  %7648 = getelementptr inbounds %struct.Reg, %struct.Reg* %7647, i32 0, i32 0
  %RDX.i94 = bitcast %union.anon* %7648 to i64*
  %7649 = load i32, i32* %ECX.i93
  %7650 = zext i32 %7649 to i64
  %7651 = load i64, i64* %PC.i92
  %7652 = add i64 %7651, 3
  store i64 %7652, i64* %PC.i92
  %7653 = shl i64 %7650, 32
  %7654 = ashr exact i64 %7653, 32
  store i64 %7654, i64* %RDX.i94, align 8
  store %struct.Memory* %loadMem_429c45, %struct.Memory** %MEMORY
  %loadMem_429c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7656 = getelementptr inbounds %struct.GPR, %struct.GPR* %7655, i32 0, i32 33
  %7657 = getelementptr inbounds %struct.Reg, %struct.Reg* %7656, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %7657 to i64*
  %7658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7659 = getelementptr inbounds %struct.GPR, %struct.GPR* %7658, i32 0, i32 1
  %7660 = getelementptr inbounds %struct.Reg, %struct.Reg* %7659, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %7660 to i64*
  %7661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7662 = getelementptr inbounds %struct.GPR, %struct.GPR* %7661, i32 0, i32 7
  %7663 = getelementptr inbounds %struct.Reg, %struct.Reg* %7662, i32 0, i32 0
  %RDX.i91 = bitcast %union.anon* %7663 to i64*
  %7664 = load i64, i64* %RAX.i90
  %7665 = load i64, i64* %RDX.i91
  %7666 = mul i64 %7665, 4
  %7667 = add i64 %7666, 11268976
  %7668 = load i64, i64* %PC.i89
  %7669 = add i64 %7668, 7
  store i64 %7669, i64* %PC.i89
  %7670 = trunc i64 %7664 to i32
  %7671 = inttoptr i64 %7667 to i32*
  %7672 = load i32, i32* %7671
  %7673 = add i32 %7672, %7670
  %7674 = zext i32 %7673 to i64
  store i64 %7674, i64* %RAX.i90, align 8
  %7675 = icmp ult i32 %7673, %7670
  %7676 = icmp ult i32 %7673, %7672
  %7677 = or i1 %7675, %7676
  %7678 = zext i1 %7677 to i8
  %7679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7678, i8* %7679, align 1
  %7680 = and i32 %7673, 255
  %7681 = call i32 @llvm.ctpop.i32(i32 %7680)
  %7682 = trunc i32 %7681 to i8
  %7683 = and i8 %7682, 1
  %7684 = xor i8 %7683, 1
  %7685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7684, i8* %7685, align 1
  %7686 = xor i32 %7672, %7670
  %7687 = xor i32 %7686, %7673
  %7688 = lshr i32 %7687, 4
  %7689 = trunc i32 %7688 to i8
  %7690 = and i8 %7689, 1
  %7691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7690, i8* %7691, align 1
  %7692 = icmp eq i32 %7673, 0
  %7693 = zext i1 %7692 to i8
  %7694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7693, i8* %7694, align 1
  %7695 = lshr i32 %7673, 31
  %7696 = trunc i32 %7695 to i8
  %7697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7696, i8* %7697, align 1
  %7698 = lshr i32 %7670, 31
  %7699 = lshr i32 %7672, 31
  %7700 = xor i32 %7695, %7698
  %7701 = xor i32 %7695, %7699
  %7702 = add i32 %7700, %7701
  %7703 = icmp eq i32 %7702, 2
  %7704 = zext i1 %7703 to i8
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7704, i8* %7705, align 1
  store %struct.Memory* %loadMem_429c48, %struct.Memory** %MEMORY
  %loadMem_429c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7707 = getelementptr inbounds %struct.GPR, %struct.GPR* %7706, i32 0, i32 33
  %7708 = getelementptr inbounds %struct.Reg, %struct.Reg* %7707, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %7708 to i64*
  %7709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7710 = getelementptr inbounds %struct.GPR, %struct.GPR* %7709, i32 0, i32 1
  %7711 = getelementptr inbounds %struct.Reg, %struct.Reg* %7710, i32 0, i32 0
  %EAX.i87 = bitcast %union.anon* %7711 to i32*
  %7712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7713 = getelementptr inbounds %struct.GPR, %struct.GPR* %7712, i32 0, i32 7
  %7714 = getelementptr inbounds %struct.Reg, %struct.Reg* %7713, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %7714 to i64*
  %7715 = load i64, i64* %RDX.i88
  %7716 = mul i64 %7715, 4
  %7717 = add i64 %7716, 11268976
  %7718 = load i32, i32* %EAX.i87
  %7719 = zext i32 %7718 to i64
  %7720 = load i64, i64* %PC.i86
  %7721 = add i64 %7720, 7
  store i64 %7721, i64* %PC.i86
  %7722 = inttoptr i64 %7717 to i32*
  store i32 %7718, i32* %7722
  store %struct.Memory* %loadMem_429c4f, %struct.Memory** %MEMORY
  br label %block_.L_429c56

block_.L_429c56:                                  ; preds = %block_.L_429c34, %block_429a80, %block_.L_429a38
  %loadMem_429c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7724 = getelementptr inbounds %struct.GPR, %struct.GPR* %7723, i32 0, i32 33
  %7725 = getelementptr inbounds %struct.Reg, %struct.Reg* %7724, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %7725 to i64*
  %7726 = load i64, i64* %PC.i85
  %7727 = add i64 %7726, 5
  %7728 = load i64, i64* %PC.i85
  %7729 = add i64 %7728, 5
  store i64 %7729, i64* %PC.i85
  %7730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7727, i64* %7730, align 8
  store %struct.Memory* %loadMem_429c56, %struct.Memory** %MEMORY
  br label %block_.L_429c5b

block_.L_429c5b:                                  ; preds = %block_.L_429c56, %block_429bee, %block_429b57
  %loadMem_429c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7732 = getelementptr inbounds %struct.GPR, %struct.GPR* %7731, i32 0, i32 33
  %7733 = getelementptr inbounds %struct.Reg, %struct.Reg* %7732, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7733 to i64*
  %7734 = load i64, i64* %PC.i84
  %7735 = add i64 %7734, 5
  %7736 = load i64, i64* %PC.i84
  %7737 = add i64 %7736, 5
  store i64 %7737, i64* %PC.i84
  %7738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7735, i64* %7738, align 8
  store %struct.Memory* %loadMem_429c5b, %struct.Memory** %MEMORY
  br label %block_.L_429c60

block_.L_429c60:                                  ; preds = %block_.L_429c5b, %block_429a11
  %loadMem_429c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7740 = getelementptr inbounds %struct.GPR, %struct.GPR* %7739, i32 0, i32 33
  %7741 = getelementptr inbounds %struct.Reg, %struct.Reg* %7740, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %7741 to i64*
  %7742 = load i64, i64* %PC.i83
  %7743 = add i64 %7742, 5
  %7744 = load i64, i64* %PC.i83
  %7745 = add i64 %7744, 5
  store i64 %7745, i64* %PC.i83
  %7746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7743, i64* %7746, align 8
  store %struct.Memory* %loadMem_429c60, %struct.Memory** %MEMORY
  br label %block_.L_429c65

block_.L_429c65:                                  ; preds = %block_.L_429c60
  %loadMem_429c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7748 = getelementptr inbounds %struct.GPR, %struct.GPR* %7747, i32 0, i32 33
  %7749 = getelementptr inbounds %struct.Reg, %struct.Reg* %7748, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %7749 to i64*
  %7750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7751 = getelementptr inbounds %struct.GPR, %struct.GPR* %7750, i32 0, i32 1
  %7752 = getelementptr inbounds %struct.Reg, %struct.Reg* %7751, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %7752 to i64*
  %7753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7754 = getelementptr inbounds %struct.GPR, %struct.GPR* %7753, i32 0, i32 15
  %7755 = getelementptr inbounds %struct.Reg, %struct.Reg* %7754, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %7755 to i64*
  %7756 = load i64, i64* %RBP.i82
  %7757 = sub i64 %7756, 60
  %7758 = load i64, i64* %PC.i80
  %7759 = add i64 %7758, 3
  store i64 %7759, i64* %PC.i80
  %7760 = inttoptr i64 %7757 to i32*
  %7761 = load i32, i32* %7760
  %7762 = zext i32 %7761 to i64
  store i64 %7762, i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_429c65, %struct.Memory** %MEMORY
  %loadMem_429c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7764 = getelementptr inbounds %struct.GPR, %struct.GPR* %7763, i32 0, i32 33
  %7765 = getelementptr inbounds %struct.Reg, %struct.Reg* %7764, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %7765 to i64*
  %7766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7767 = getelementptr inbounds %struct.GPR, %struct.GPR* %7766, i32 0, i32 1
  %7768 = getelementptr inbounds %struct.Reg, %struct.Reg* %7767, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %7768 to i64*
  %7769 = load i64, i64* %RAX.i79
  %7770 = load i64, i64* %PC.i78
  %7771 = add i64 %7770, 3
  store i64 %7771, i64* %PC.i78
  %7772 = trunc i64 %7769 to i32
  %7773 = add i32 1, %7772
  %7774 = zext i32 %7773 to i64
  store i64 %7774, i64* %RAX.i79, align 8
  %7775 = icmp ult i32 %7773, %7772
  %7776 = icmp ult i32 %7773, 1
  %7777 = or i1 %7775, %7776
  %7778 = zext i1 %7777 to i8
  %7779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7778, i8* %7779, align 1
  %7780 = and i32 %7773, 255
  %7781 = call i32 @llvm.ctpop.i32(i32 %7780)
  %7782 = trunc i32 %7781 to i8
  %7783 = and i8 %7782, 1
  %7784 = xor i8 %7783, 1
  %7785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7784, i8* %7785, align 1
  %7786 = xor i64 1, %7769
  %7787 = trunc i64 %7786 to i32
  %7788 = xor i32 %7787, %7773
  %7789 = lshr i32 %7788, 4
  %7790 = trunc i32 %7789 to i8
  %7791 = and i8 %7790, 1
  %7792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7791, i8* %7792, align 1
  %7793 = icmp eq i32 %7773, 0
  %7794 = zext i1 %7793 to i8
  %7795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7794, i8* %7795, align 1
  %7796 = lshr i32 %7773, 31
  %7797 = trunc i32 %7796 to i8
  %7798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7797, i8* %7798, align 1
  %7799 = lshr i32 %7772, 31
  %7800 = xor i32 %7796, %7799
  %7801 = add i32 %7800, %7796
  %7802 = icmp eq i32 %7801, 2
  %7803 = zext i1 %7802 to i8
  %7804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7803, i8* %7804, align 1
  store %struct.Memory* %loadMem_429c68, %struct.Memory** %MEMORY
  %loadMem_429c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7806 = getelementptr inbounds %struct.GPR, %struct.GPR* %7805, i32 0, i32 33
  %7807 = getelementptr inbounds %struct.Reg, %struct.Reg* %7806, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7807 to i64*
  %7808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7809 = getelementptr inbounds %struct.GPR, %struct.GPR* %7808, i32 0, i32 1
  %7810 = getelementptr inbounds %struct.Reg, %struct.Reg* %7809, i32 0, i32 0
  %EAX.i76 = bitcast %union.anon* %7810 to i32*
  %7811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7812 = getelementptr inbounds %struct.GPR, %struct.GPR* %7811, i32 0, i32 15
  %7813 = getelementptr inbounds %struct.Reg, %struct.Reg* %7812, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %7813 to i64*
  %7814 = load i64, i64* %RBP.i77
  %7815 = sub i64 %7814, 60
  %7816 = load i32, i32* %EAX.i76
  %7817 = zext i32 %7816 to i64
  %7818 = load i64, i64* %PC.i75
  %7819 = add i64 %7818, 3
  store i64 %7819, i64* %PC.i75
  %7820 = inttoptr i64 %7815 to i32*
  store i32 %7816, i32* %7820
  store %struct.Memory* %loadMem_429c6b, %struct.Memory** %MEMORY
  %loadMem_429c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7822 = getelementptr inbounds %struct.GPR, %struct.GPR* %7821, i32 0, i32 33
  %7823 = getelementptr inbounds %struct.Reg, %struct.Reg* %7822, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %7823 to i64*
  %7824 = load i64, i64* %PC.i74
  %7825 = add i64 %7824, -615
  %7826 = load i64, i64* %PC.i74
  %7827 = add i64 %7826, 5
  store i64 %7827, i64* %PC.i74
  %7828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7825, i64* %7828, align 8
  store %struct.Memory* %loadMem_429c6e, %struct.Memory** %MEMORY
  br label %block_.L_429a07

block_.L_429c73:                                  ; preds = %block_.L_429a07
  %loadMem_429c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7830 = getelementptr inbounds %struct.GPR, %struct.GPR* %7829, i32 0, i32 33
  %7831 = getelementptr inbounds %struct.Reg, %struct.Reg* %7830, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %7831 to i64*
  %7832 = load i64, i64* %PC.i73
  %7833 = add i64 %7832, -1263
  %7834 = load i64, i64* %PC.i73
  %7835 = add i64 %7834, 5
  store i64 %7835, i64* %PC.i73
  %7836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7833, i64* %7836, align 8
  store %struct.Memory* %loadMem_429c73, %struct.Memory** %MEMORY
  br label %block_.L_429784

block_.L_429c78:                                  ; preds = %block_.L_429784
  %loadMem_429c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7838 = getelementptr inbounds %struct.GPR, %struct.GPR* %7837, i32 0, i32 33
  %7839 = getelementptr inbounds %struct.Reg, %struct.Reg* %7838, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %7839 to i64*
  %7840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7841 = getelementptr inbounds %struct.GPR, %struct.GPR* %7840, i32 0, i32 15
  %7842 = getelementptr inbounds %struct.Reg, %struct.Reg* %7841, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %7842 to i64*
  %7843 = load i64, i64* %RBP.i72
  %7844 = sub i64 %7843, 56
  %7845 = load i64, i64* %PC.i71
  %7846 = add i64 %7845, 7
  store i64 %7846, i64* %PC.i71
  %7847 = inttoptr i64 %7844 to i32*
  store i32 0, i32* %7847
  store %struct.Memory* %loadMem_429c78, %struct.Memory** %MEMORY
  br label %block_.L_429c7f

block_.L_429c7f:                                  ; preds = %block_.L_429ce3, %block_.L_429c78
  %loadMem_429c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7849 = getelementptr inbounds %struct.GPR, %struct.GPR* %7848, i32 0, i32 33
  %7850 = getelementptr inbounds %struct.Reg, %struct.Reg* %7849, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %7850 to i64*
  %7851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7852 = getelementptr inbounds %struct.GPR, %struct.GPR* %7851, i32 0, i32 1
  %7853 = getelementptr inbounds %struct.Reg, %struct.Reg* %7852, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %7853 to i64*
  %7854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7855 = getelementptr inbounds %struct.GPR, %struct.GPR* %7854, i32 0, i32 15
  %7856 = getelementptr inbounds %struct.Reg, %struct.Reg* %7855, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %7856 to i64*
  %7857 = load i64, i64* %RBP.i70
  %7858 = sub i64 %7857, 56
  %7859 = load i64, i64* %PC.i68
  %7860 = add i64 %7859, 3
  store i64 %7860, i64* %PC.i68
  %7861 = inttoptr i64 %7858 to i32*
  %7862 = load i32, i32* %7861
  %7863 = zext i32 %7862 to i64
  store i64 %7863, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_429c7f, %struct.Memory** %MEMORY
  %loadMem_429c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7865 = getelementptr inbounds %struct.GPR, %struct.GPR* %7864, i32 0, i32 33
  %7866 = getelementptr inbounds %struct.Reg, %struct.Reg* %7865, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %7866 to i64*
  %7867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7868 = getelementptr inbounds %struct.GPR, %struct.GPR* %7867, i32 0, i32 1
  %7869 = getelementptr inbounds %struct.Reg, %struct.Reg* %7868, i32 0, i32 0
  %EAX.i66 = bitcast %union.anon* %7869 to i32*
  %7870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7871 = getelementptr inbounds %struct.GPR, %struct.GPR* %7870, i32 0, i32 15
  %7872 = getelementptr inbounds %struct.Reg, %struct.Reg* %7871, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %7872 to i64*
  %7873 = load i32, i32* %EAX.i66
  %7874 = zext i32 %7873 to i64
  %7875 = load i64, i64* %RBP.i67
  %7876 = sub i64 %7875, 72
  %7877 = load i64, i64* %PC.i65
  %7878 = add i64 %7877, 3
  store i64 %7878, i64* %PC.i65
  %7879 = inttoptr i64 %7876 to i32*
  %7880 = load i32, i32* %7879
  %7881 = sub i32 %7873, %7880
  %7882 = icmp ult i32 %7873, %7880
  %7883 = zext i1 %7882 to i8
  %7884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7883, i8* %7884, align 1
  %7885 = and i32 %7881, 255
  %7886 = call i32 @llvm.ctpop.i32(i32 %7885)
  %7887 = trunc i32 %7886 to i8
  %7888 = and i8 %7887, 1
  %7889 = xor i8 %7888, 1
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7889, i8* %7890, align 1
  %7891 = xor i32 %7880, %7873
  %7892 = xor i32 %7891, %7881
  %7893 = lshr i32 %7892, 4
  %7894 = trunc i32 %7893 to i8
  %7895 = and i8 %7894, 1
  %7896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7895, i8* %7896, align 1
  %7897 = icmp eq i32 %7881, 0
  %7898 = zext i1 %7897 to i8
  %7899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7898, i8* %7899, align 1
  %7900 = lshr i32 %7881, 31
  %7901 = trunc i32 %7900 to i8
  %7902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7901, i8* %7902, align 1
  %7903 = lshr i32 %7873, 31
  %7904 = lshr i32 %7880, 31
  %7905 = xor i32 %7904, %7903
  %7906 = xor i32 %7900, %7903
  %7907 = add i32 %7906, %7905
  %7908 = icmp eq i32 %7907, 2
  %7909 = zext i1 %7908 to i8
  %7910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7909, i8* %7910, align 1
  store %struct.Memory* %loadMem_429c82, %struct.Memory** %MEMORY
  %loadMem_429c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7912 = getelementptr inbounds %struct.GPR, %struct.GPR* %7911, i32 0, i32 33
  %7913 = getelementptr inbounds %struct.Reg, %struct.Reg* %7912, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %7913 to i64*
  %7914 = load i64, i64* %PC.i64
  %7915 = add i64 %7914, 123
  %7916 = load i64, i64* %PC.i64
  %7917 = add i64 %7916, 6
  %7918 = load i64, i64* %PC.i64
  %7919 = add i64 %7918, 6
  store i64 %7919, i64* %PC.i64
  %7920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7921 = load i8, i8* %7920, align 1
  %7922 = icmp ne i8 %7921, 0
  %7923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7924 = load i8, i8* %7923, align 1
  %7925 = icmp ne i8 %7924, 0
  %7926 = xor i1 %7922, %7925
  %7927 = xor i1 %7926, true
  %7928 = zext i1 %7927 to i8
  store i8 %7928, i8* %BRANCH_TAKEN, align 1
  %7929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7930 = select i1 %7926, i64 %7917, i64 %7915
  store i64 %7930, i64* %7929, align 8
  store %struct.Memory* %loadMem_429c85, %struct.Memory** %MEMORY
  %loadBr_429c85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429c85 = icmp eq i8 %loadBr_429c85, 1
  br i1 %cmpBr_429c85, label %block_.L_429d00, label %block_429c8b

block_429c8b:                                     ; preds = %block_.L_429c7f
  %loadMem_429c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7932 = getelementptr inbounds %struct.GPR, %struct.GPR* %7931, i32 0, i32 33
  %7933 = getelementptr inbounds %struct.Reg, %struct.Reg* %7932, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7933 to i64*
  %7934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7934, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %7935 to %"class.std::bitset"*
  %7936 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %7937 = load i64, i64* %PC.i63
  %7938 = add i64 %7937, ptrtoint (%G_0xb9355__rip__type* @G_0xb9355__rip_ to i64)
  %7939 = load i64, i64* %PC.i63
  %7940 = add i64 %7939, 8
  store i64 %7940, i64* %PC.i63
  %7941 = inttoptr i64 %7938 to double*
  %7942 = load double, double* %7941
  %7943 = bitcast i8* %7936 to double*
  store double %7942, double* %7943, align 1
  %7944 = getelementptr inbounds i8, i8* %7936, i64 8
  %7945 = bitcast i8* %7944 to double*
  store double 0.000000e+00, double* %7945, align 1
  store %struct.Memory* %loadMem_429c8b, %struct.Memory** %MEMORY
  %loadMem_429c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7947 = getelementptr inbounds %struct.GPR, %struct.GPR* %7946, i32 0, i32 33
  %7948 = getelementptr inbounds %struct.Reg, %struct.Reg* %7947, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7948 to i64*
  %7949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7950 = getelementptr inbounds %struct.GPR, %struct.GPR* %7949, i32 0, i32 1
  %7951 = getelementptr inbounds %struct.Reg, %struct.Reg* %7950, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %7951 to i64*
  %7952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7953 = getelementptr inbounds %struct.GPR, %struct.GPR* %7952, i32 0, i32 15
  %7954 = getelementptr inbounds %struct.Reg, %struct.Reg* %7953, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %7954 to i64*
  %7955 = load i64, i64* %RBP.i62
  %7956 = sub i64 %7955, 56
  %7957 = load i64, i64* %PC.i60
  %7958 = add i64 %7957, 4
  store i64 %7958, i64* %PC.i60
  %7959 = inttoptr i64 %7956 to i32*
  %7960 = load i32, i32* %7959
  %7961 = sext i32 %7960 to i64
  store i64 %7961, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_429c93, %struct.Memory** %MEMORY
  %loadMem_429c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7963 = getelementptr inbounds %struct.GPR, %struct.GPR* %7962, i32 0, i32 33
  %7964 = getelementptr inbounds %struct.Reg, %struct.Reg* %7963, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %7964 to i64*
  %7965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7966 = getelementptr inbounds %struct.GPR, %struct.GPR* %7965, i32 0, i32 1
  %7967 = getelementptr inbounds %struct.Reg, %struct.Reg* %7966, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %7967 to i64*
  %7968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7969 = getelementptr inbounds %struct.GPR, %struct.GPR* %7968, i32 0, i32 5
  %7970 = getelementptr inbounds %struct.Reg, %struct.Reg* %7969, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %7970 to i64*
  %7971 = load i64, i64* %RAX.i58
  %7972 = mul i64 %7971, 4
  %7973 = add i64 %7972, 11270576
  %7974 = load i64, i64* %PC.i57
  %7975 = add i64 %7974, 7
  store i64 %7975, i64* %PC.i57
  %7976 = inttoptr i64 %7973 to i32*
  %7977 = load i32, i32* %7976
  %7978 = zext i32 %7977 to i64
  store i64 %7978, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_429c97, %struct.Memory** %MEMORY
  %loadMem_429c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7980 = getelementptr inbounds %struct.GPR, %struct.GPR* %7979, i32 0, i32 33
  %7981 = getelementptr inbounds %struct.Reg, %struct.Reg* %7980, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %7981 to i64*
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7983 = getelementptr inbounds %struct.GPR, %struct.GPR* %7982, i32 0, i32 5
  %7984 = getelementptr inbounds %struct.Reg, %struct.Reg* %7983, i32 0, i32 0
  %ECX.i55 = bitcast %union.anon* %7984 to i32*
  %7985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7986 = getelementptr inbounds %struct.GPR, %struct.GPR* %7985, i32 0, i32 15
  %7987 = getelementptr inbounds %struct.Reg, %struct.Reg* %7986, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %7987 to i64*
  %7988 = load i64, i64* %RBP.i56
  %7989 = sub i64 %7988, 44
  %7990 = load i32, i32* %ECX.i55
  %7991 = zext i32 %7990 to i64
  %7992 = load i64, i64* %PC.i54
  %7993 = add i64 %7992, 3
  store i64 %7993, i64* %PC.i54
  %7994 = inttoptr i64 %7989 to i32*
  store i32 %7990, i32* %7994
  store %struct.Memory* %loadMem_429c9e, %struct.Memory** %MEMORY
  %loadMem_429ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7996 = getelementptr inbounds %struct.GPR, %struct.GPR* %7995, i32 0, i32 33
  %7997 = getelementptr inbounds %struct.Reg, %struct.Reg* %7996, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7997 to i64*
  %7998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7999 = getelementptr inbounds %struct.GPR, %struct.GPR* %7998, i32 0, i32 1
  %8000 = getelementptr inbounds %struct.Reg, %struct.Reg* %7999, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %8000 to i64*
  %8001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8002 = getelementptr inbounds %struct.GPR, %struct.GPR* %8001, i32 0, i32 15
  %8003 = getelementptr inbounds %struct.Reg, %struct.Reg* %8002, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %8003 to i64*
  %8004 = load i64, i64* %RBP.i53
  %8005 = sub i64 %8004, 44
  %8006 = load i64, i64* %PC.i51
  %8007 = add i64 %8006, 4
  store i64 %8007, i64* %PC.i51
  %8008 = inttoptr i64 %8005 to i32*
  %8009 = load i32, i32* %8008
  %8010 = sext i32 %8009 to i64
  store i64 %8010, i64* %RAX.i52, align 8
  store %struct.Memory* %loadMem_429ca1, %struct.Memory** %MEMORY
  %loadMem_429ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8012 = getelementptr inbounds %struct.GPR, %struct.GPR* %8011, i32 0, i32 33
  %8013 = getelementptr inbounds %struct.Reg, %struct.Reg* %8012, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %8013 to i64*
  %8014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8015 = getelementptr inbounds %struct.GPR, %struct.GPR* %8014, i32 0, i32 1
  %8016 = getelementptr inbounds %struct.Reg, %struct.Reg* %8015, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %8016 to i64*
  %8017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8018 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8017, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %8018 to %"class.std::bitset"*
  %8019 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %8020 = load i64, i64* %RAX.i50
  %8021 = mul i64 %8020, 4
  %8022 = add i64 %8021, 11268976
  %8023 = load i64, i64* %PC.i49
  %8024 = add i64 %8023, 9
  store i64 %8024, i64* %PC.i49
  %8025 = inttoptr i64 %8022 to i32*
  %8026 = load i32, i32* %8025
  %8027 = sitofp i32 %8026 to double
  %8028 = bitcast i8* %8019 to double*
  store double %8027, double* %8028, align 1
  store %struct.Memory* %loadMem_429ca5, %struct.Memory** %MEMORY
  %loadMem_429cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %8029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8030 = getelementptr inbounds %struct.GPR, %struct.GPR* %8029, i32 0, i32 33
  %8031 = getelementptr inbounds %struct.Reg, %struct.Reg* %8030, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %8031 to i64*
  %8032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8033 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8032, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %8033 to %union.vec128_t*
  %8034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %8035 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8034, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %8035 to %union.vec128_t*
  %8036 = bitcast %union.vec128_t* %XMM1.i to i8*
  %8037 = bitcast %union.vec128_t* %XMM0.i to i8*
  %8038 = load i64, i64* %PC.i45
  %8039 = add i64 %8038, 4
  store i64 %8039, i64* %PC.i45
  %8040 = bitcast i8* %8036 to double*
  %8041 = load double, double* %8040, align 1
  %8042 = bitcast i8* %8037 to double*
  %8043 = load double, double* %8042, align 1
  %8044 = fcmp uno double %8041, %8043
  br i1 %8044, label %8045, label %8057

; <label>:8045:                                   ; preds = %block_429c8b
  %8046 = fadd double %8041, %8043
  %8047 = bitcast double %8046 to i64
  %8048 = and i64 %8047, 9221120237041090560
  %8049 = icmp eq i64 %8048, 9218868437227405312
  %8050 = and i64 %8047, 2251799813685247
  %8051 = icmp ne i64 %8050, 0
  %8052 = and i1 %8049, %8051
  br i1 %8052, label %8053, label %8063

; <label>:8053:                                   ; preds = %8045
  %8054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8055 = load i64, i64* %8054, align 8
  %8056 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %8055, %struct.Memory* %loadMem_429cae)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:8057:                                   ; preds = %block_429c8b
  %8058 = fcmp ogt double %8041, %8043
  br i1 %8058, label %8063, label %8059

; <label>:8059:                                   ; preds = %8057
  %8060 = fcmp olt double %8041, %8043
  br i1 %8060, label %8063, label %8061

; <label>:8061:                                   ; preds = %8059
  %8062 = fcmp oeq double %8041, %8043
  br i1 %8062, label %8063, label %8070

; <label>:8063:                                   ; preds = %8061, %8059, %8057, %8045
  %8064 = phi i8 [ 0, %8057 ], [ 0, %8059 ], [ 1, %8061 ], [ 1, %8045 ]
  %8065 = phi i8 [ 0, %8057 ], [ 0, %8059 ], [ 0, %8061 ], [ 1, %8045 ]
  %8066 = phi i8 [ 0, %8057 ], [ 1, %8059 ], [ 0, %8061 ], [ 1, %8045 ]
  %8067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8064, i8* %8067, align 1
  %8068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8065, i8* %8068, align 1
  %8069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8066, i8* %8069, align 1
  br label %8070

; <label>:8070:                                   ; preds = %8063, %8061
  %8071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8071, align 1
  %8072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8072, align 1
  %8073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8073, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %8053, %8070
  %8074 = phi %struct.Memory* [ %8056, %8053 ], [ %loadMem_429cae, %8070 ]
  store %struct.Memory* %8074, %struct.Memory** %MEMORY
  %loadMem_429cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8076 = getelementptr inbounds %struct.GPR, %struct.GPR* %8075, i32 0, i32 33
  %8077 = getelementptr inbounds %struct.Reg, %struct.Reg* %8076, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %8077 to i64*
  %8078 = load i64, i64* %PC.i44
  %8079 = add i64 %8078, 24
  %8080 = load i64, i64* %PC.i44
  %8081 = add i64 %8080, 6
  %8082 = load i64, i64* %PC.i44
  %8083 = add i64 %8082, 6
  store i64 %8083, i64* %PC.i44
  %8084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8085 = load i8, i8* %8084, align 1
  %8086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8087 = load i8, i8* %8086, align 1
  %8088 = or i8 %8087, %8085
  %8089 = icmp eq i8 %8088, 0
  %8090 = zext i1 %8089 to i8
  store i8 %8090, i8* %BRANCH_TAKEN, align 1
  %8091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8092 = select i1 %8089, i64 %8079, i64 %8081
  store i64 %8092, i64* %8091, align 8
  store %struct.Memory* %loadMem_429cb2, %struct.Memory** %MEMORY
  %loadBr_429cb2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429cb2 = icmp eq i8 %loadBr_429cb2, 1
  br i1 %cmpBr_429cb2, label %block_.L_429cca, label %block_429cb8

block_429cb8:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_429cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8094 = getelementptr inbounds %struct.GPR, %struct.GPR* %8093, i32 0, i32 33
  %8095 = getelementptr inbounds %struct.Reg, %struct.Reg* %8094, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %8095 to i64*
  %8096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8097 = getelementptr inbounds %struct.GPR, %struct.GPR* %8096, i32 0, i32 1
  %8098 = getelementptr inbounds %struct.Reg, %struct.Reg* %8097, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %8098 to i64*
  %8099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8100 = getelementptr inbounds %struct.GPR, %struct.GPR* %8099, i32 0, i32 15
  %8101 = getelementptr inbounds %struct.Reg, %struct.Reg* %8100, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %8101 to i64*
  %8102 = load i64, i64* %RBP.i43
  %8103 = sub i64 %8102, 40
  %8104 = load i64, i64* %PC.i41
  %8105 = add i64 %8104, 4
  store i64 %8105, i64* %PC.i41
  %8106 = inttoptr i64 %8103 to i64*
  %8107 = load i64, i64* %8106
  store i64 %8107, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_429cb8, %struct.Memory** %MEMORY
  %loadMem_429cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %8108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8109 = getelementptr inbounds %struct.GPR, %struct.GPR* %8108, i32 0, i32 33
  %8110 = getelementptr inbounds %struct.Reg, %struct.Reg* %8109, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %8110 to i64*
  %8111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8112 = getelementptr inbounds %struct.GPR, %struct.GPR* %8111, i32 0, i32 5
  %8113 = getelementptr inbounds %struct.Reg, %struct.Reg* %8112, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %8113 to i64*
  %8114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8115 = getelementptr inbounds %struct.GPR, %struct.GPR* %8114, i32 0, i32 15
  %8116 = getelementptr inbounds %struct.Reg, %struct.Reg* %8115, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %8116 to i64*
  %8117 = load i64, i64* %RBP.i40
  %8118 = sub i64 %8117, 44
  %8119 = load i64, i64* %PC.i38
  %8120 = add i64 %8119, 4
  store i64 %8120, i64* %PC.i38
  %8121 = inttoptr i64 %8118 to i32*
  %8122 = load i32, i32* %8121
  %8123 = sext i32 %8122 to i64
  store i64 %8123, i64* %RCX.i39, align 8
  store %struct.Memory* %loadMem_429cbc, %struct.Memory** %MEMORY
  %loadMem_429cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8125 = getelementptr inbounds %struct.GPR, %struct.GPR* %8124, i32 0, i32 33
  %8126 = getelementptr inbounds %struct.Reg, %struct.Reg* %8125, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %8126 to i64*
  %8127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8128 = getelementptr inbounds %struct.GPR, %struct.GPR* %8127, i32 0, i32 1
  %8129 = getelementptr inbounds %struct.Reg, %struct.Reg* %8128, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %8129 to i64*
  %8130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8131 = getelementptr inbounds %struct.GPR, %struct.GPR* %8130, i32 0, i32 5
  %8132 = getelementptr inbounds %struct.Reg, %struct.Reg* %8131, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %8132 to i64*
  %8133 = load i64, i64* %RAX.i36
  %8134 = load i64, i64* %RCX.i37
  %8135 = mul i64 %8134, 4
  %8136 = add i64 %8135, %8133
  %8137 = load i64, i64* %PC.i35
  %8138 = add i64 %8137, 4
  store i64 %8138, i64* %PC.i35
  %8139 = inttoptr i64 %8136 to i32*
  %8140 = load i32, i32* %8139
  %8141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8141, align 1
  %8142 = and i32 %8140, 255
  %8143 = call i32 @llvm.ctpop.i32(i32 %8142)
  %8144 = trunc i32 %8143 to i8
  %8145 = and i8 %8144, 1
  %8146 = xor i8 %8145, 1
  %8147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8146, i8* %8147, align 1
  %8148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8148, align 1
  %8149 = icmp eq i32 %8140, 0
  %8150 = zext i1 %8149 to i8
  %8151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8150, i8* %8151, align 1
  %8152 = lshr i32 %8140, 31
  %8153 = trunc i32 %8152 to i8
  %8154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8153, i8* %8154, align 1
  %8155 = lshr i32 %8140, 31
  %8156 = xor i32 %8152, %8155
  %8157 = add i32 %8156, %8155
  %8158 = icmp eq i32 %8157, 2
  %8159 = zext i1 %8158 to i8
  %8160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8159, i8* %8160, align 1
  store %struct.Memory* %loadMem_429cc0, %struct.Memory** %MEMORY
  %loadMem_429cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8162 = getelementptr inbounds %struct.GPR, %struct.GPR* %8161, i32 0, i32 33
  %8163 = getelementptr inbounds %struct.Reg, %struct.Reg* %8162, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %8163 to i64*
  %8164 = load i64, i64* %PC.i34
  %8165 = add i64 %8164, 31
  %8166 = load i64, i64* %PC.i34
  %8167 = add i64 %8166, 6
  %8168 = load i64, i64* %PC.i34
  %8169 = add i64 %8168, 6
  store i64 %8169, i64* %PC.i34
  %8170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8171 = load i8, i8* %8170, align 1
  %8172 = icmp eq i8 %8171, 0
  %8173 = zext i1 %8172 to i8
  store i8 %8173, i8* %BRANCH_TAKEN, align 1
  %8174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8175 = select i1 %8172, i64 %8165, i64 %8167
  store i64 %8175, i64* %8174, align 8
  store %struct.Memory* %loadMem_429cc4, %struct.Memory** %MEMORY
  %loadBr_429cc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429cc4 = icmp eq i8 %loadBr_429cc4, 1
  br i1 %cmpBr_429cc4, label %block_.L_429ce3, label %block_.L_429cca

block_.L_429cca:                                  ; preds = %block_429cb8, %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_429cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %8176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8177 = getelementptr inbounds %struct.GPR, %struct.GPR* %8176, i32 0, i32 33
  %8178 = getelementptr inbounds %struct.Reg, %struct.Reg* %8177, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %8178 to i64*
  %8179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8180 = getelementptr inbounds %struct.GPR, %struct.GPR* %8179, i32 0, i32 1
  %8181 = getelementptr inbounds %struct.Reg, %struct.Reg* %8180, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %8181 to i64*
  %8182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8183 = getelementptr inbounds %struct.GPR, %struct.GPR* %8182, i32 0, i32 15
  %8184 = getelementptr inbounds %struct.Reg, %struct.Reg* %8183, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %8184 to i64*
  %8185 = load i64, i64* %RBP.i33
  %8186 = sub i64 %8185, 44
  %8187 = load i64, i64* %PC.i31
  %8188 = add i64 %8187, 4
  store i64 %8188, i64* %PC.i31
  %8189 = inttoptr i64 %8186 to i32*
  %8190 = load i32, i32* %8189
  %8191 = sext i32 %8190 to i64
  store i64 %8191, i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_429cca, %struct.Memory** %MEMORY
  %loadMem_429cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %8192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8193 = getelementptr inbounds %struct.GPR, %struct.GPR* %8192, i32 0, i32 33
  %8194 = getelementptr inbounds %struct.Reg, %struct.Reg* %8193, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %8194 to i64*
  %8195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8196 = getelementptr inbounds %struct.GPR, %struct.GPR* %8195, i32 0, i32 1
  %8197 = getelementptr inbounds %struct.Reg, %struct.Reg* %8196, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %8197 to i64*
  %8198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8199 = getelementptr inbounds %struct.GPR, %struct.GPR* %8198, i32 0, i32 5
  %8200 = getelementptr inbounds %struct.Reg, %struct.Reg* %8199, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %8200 to i64*
  %8201 = load i64, i64* %RAX.i29
  %8202 = mul i64 %8201, 4
  %8203 = add i64 %8202, 11268976
  %8204 = load i64, i64* %PC.i28
  %8205 = add i64 %8204, 7
  store i64 %8205, i64* %PC.i28
  %8206 = inttoptr i64 %8203 to i32*
  %8207 = load i32, i32* %8206
  %8208 = zext i32 %8207 to i64
  store i64 %8208, i64* %RCX.i30, align 8
  store %struct.Memory* %loadMem_429cce, %struct.Memory** %MEMORY
  %loadMem_429cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8210 = getelementptr inbounds %struct.GPR, %struct.GPR* %8209, i32 0, i32 33
  %8211 = getelementptr inbounds %struct.Reg, %struct.Reg* %8210, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %8211 to i64*
  %8212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8213 = getelementptr inbounds %struct.GPR, %struct.GPR* %8212, i32 0, i32 1
  %8214 = getelementptr inbounds %struct.Reg, %struct.Reg* %8213, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %8214 to i64*
  %8215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8216 = getelementptr inbounds %struct.GPR, %struct.GPR* %8215, i32 0, i32 15
  %8217 = getelementptr inbounds %struct.Reg, %struct.Reg* %8216, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %8217 to i64*
  %8218 = load i64, i64* %RBP.i27
  %8219 = sub i64 %8218, 40
  %8220 = load i64, i64* %PC.i25
  %8221 = add i64 %8220, 4
  store i64 %8221, i64* %PC.i25
  %8222 = inttoptr i64 %8219 to i64*
  %8223 = load i64, i64* %8222
  store i64 %8223, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_429cd5, %struct.Memory** %MEMORY
  %loadMem_429cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8225 = getelementptr inbounds %struct.GPR, %struct.GPR* %8224, i32 0, i32 33
  %8226 = getelementptr inbounds %struct.Reg, %struct.Reg* %8225, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8226 to i64*
  %8227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8228 = getelementptr inbounds %struct.GPR, %struct.GPR* %8227, i32 0, i32 7
  %8229 = getelementptr inbounds %struct.Reg, %struct.Reg* %8228, i32 0, i32 0
  %RDX.i23 = bitcast %union.anon* %8229 to i64*
  %8230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8231 = getelementptr inbounds %struct.GPR, %struct.GPR* %8230, i32 0, i32 15
  %8232 = getelementptr inbounds %struct.Reg, %struct.Reg* %8231, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %8232 to i64*
  %8233 = load i64, i64* %RBP.i24
  %8234 = sub i64 %8233, 44
  %8235 = load i64, i64* %PC.i22
  %8236 = add i64 %8235, 4
  store i64 %8236, i64* %PC.i22
  %8237 = inttoptr i64 %8234 to i32*
  %8238 = load i32, i32* %8237
  %8239 = sext i32 %8238 to i64
  store i64 %8239, i64* %RDX.i23, align 8
  store %struct.Memory* %loadMem_429cd9, %struct.Memory** %MEMORY
  %loadMem_429cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8241 = getelementptr inbounds %struct.GPR, %struct.GPR* %8240, i32 0, i32 33
  %8242 = getelementptr inbounds %struct.Reg, %struct.Reg* %8241, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8242 to i64*
  %8243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8244 = getelementptr inbounds %struct.GPR, %struct.GPR* %8243, i32 0, i32 1
  %8245 = getelementptr inbounds %struct.Reg, %struct.Reg* %8244, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %8245 to i64*
  %8246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8247 = getelementptr inbounds %struct.GPR, %struct.GPR* %8246, i32 0, i32 5
  %8248 = getelementptr inbounds %struct.Reg, %struct.Reg* %8247, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8248 to i64*
  %8249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8250 = getelementptr inbounds %struct.GPR, %struct.GPR* %8249, i32 0, i32 7
  %8251 = getelementptr inbounds %struct.Reg, %struct.Reg* %8250, i32 0, i32 0
  %RDX.i21 = bitcast %union.anon* %8251 to i64*
  %8252 = load i64, i64* %RCX.i
  %8253 = load i64, i64* %RAX.i20
  %8254 = load i64, i64* %RDX.i21
  %8255 = mul i64 %8254, 4
  %8256 = add i64 %8255, %8253
  %8257 = load i64, i64* %PC.i19
  %8258 = add i64 %8257, 3
  store i64 %8258, i64* %PC.i19
  %8259 = trunc i64 %8252 to i32
  %8260 = inttoptr i64 %8256 to i32*
  %8261 = load i32, i32* %8260
  %8262 = add i32 %8261, %8259
  %8263 = zext i32 %8262 to i64
  store i64 %8263, i64* %RCX.i, align 8
  %8264 = icmp ult i32 %8262, %8259
  %8265 = icmp ult i32 %8262, %8261
  %8266 = or i1 %8264, %8265
  %8267 = zext i1 %8266 to i8
  %8268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8267, i8* %8268, align 1
  %8269 = and i32 %8262, 255
  %8270 = call i32 @llvm.ctpop.i32(i32 %8269)
  %8271 = trunc i32 %8270 to i8
  %8272 = and i8 %8271, 1
  %8273 = xor i8 %8272, 1
  %8274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8273, i8* %8274, align 1
  %8275 = xor i32 %8261, %8259
  %8276 = xor i32 %8275, %8262
  %8277 = lshr i32 %8276, 4
  %8278 = trunc i32 %8277 to i8
  %8279 = and i8 %8278, 1
  %8280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8279, i8* %8280, align 1
  %8281 = icmp eq i32 %8262, 0
  %8282 = zext i1 %8281 to i8
  %8283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8282, i8* %8283, align 1
  %8284 = lshr i32 %8262, 31
  %8285 = trunc i32 %8284 to i8
  %8286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8285, i8* %8286, align 1
  %8287 = lshr i32 %8259, 31
  %8288 = lshr i32 %8261, 31
  %8289 = xor i32 %8284, %8287
  %8290 = xor i32 %8284, %8288
  %8291 = add i32 %8289, %8290
  %8292 = icmp eq i32 %8291, 2
  %8293 = zext i1 %8292 to i8
  %8294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8293, i8* %8294, align 1
  store %struct.Memory* %loadMem_429cdd, %struct.Memory** %MEMORY
  %loadMem_429ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8296 = getelementptr inbounds %struct.GPR, %struct.GPR* %8295, i32 0, i32 33
  %8297 = getelementptr inbounds %struct.Reg, %struct.Reg* %8296, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %8297 to i64*
  %8298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8299 = getelementptr inbounds %struct.GPR, %struct.GPR* %8298, i32 0, i32 5
  %8300 = getelementptr inbounds %struct.Reg, %struct.Reg* %8299, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8300 to i32*
  %8301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8302 = getelementptr inbounds %struct.GPR, %struct.GPR* %8301, i32 0, i32 1
  %8303 = getelementptr inbounds %struct.Reg, %struct.Reg* %8302, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %8303 to i64*
  %8304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8305 = getelementptr inbounds %struct.GPR, %struct.GPR* %8304, i32 0, i32 7
  %8306 = getelementptr inbounds %struct.Reg, %struct.Reg* %8305, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %8306 to i64*
  %8307 = load i64, i64* %RAX.i18
  %8308 = load i64, i64* %RDX.i
  %8309 = mul i64 %8308, 4
  %8310 = add i64 %8309, %8307
  %8311 = load i32, i32* %ECX.i
  %8312 = zext i32 %8311 to i64
  %8313 = load i64, i64* %PC.i17
  %8314 = add i64 %8313, 3
  store i64 %8314, i64* %PC.i17
  %8315 = inttoptr i64 %8310 to i32*
  store i32 %8311, i32* %8315
  store %struct.Memory* %loadMem_429ce0, %struct.Memory** %MEMORY
  br label %block_.L_429ce3

block_.L_429ce3:                                  ; preds = %block_.L_429cca, %block_429cb8
  %loadMem_429ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8317 = getelementptr inbounds %struct.GPR, %struct.GPR* %8316, i32 0, i32 33
  %8318 = getelementptr inbounds %struct.Reg, %struct.Reg* %8317, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8318 to i64*
  %8319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8320 = getelementptr inbounds %struct.GPR, %struct.GPR* %8319, i32 0, i32 1
  %8321 = getelementptr inbounds %struct.Reg, %struct.Reg* %8320, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %8321 to i64*
  %8322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8323 = getelementptr inbounds %struct.GPR, %struct.GPR* %8322, i32 0, i32 15
  %8324 = getelementptr inbounds %struct.Reg, %struct.Reg* %8323, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %8324 to i64*
  %8325 = load i64, i64* %RBP.i16
  %8326 = sub i64 %8325, 44
  %8327 = load i64, i64* %PC.i14
  %8328 = add i64 %8327, 4
  store i64 %8328, i64* %PC.i14
  %8329 = inttoptr i64 %8326 to i32*
  %8330 = load i32, i32* %8329
  %8331 = sext i32 %8330 to i64
  store i64 %8331, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_429ce3, %struct.Memory** %MEMORY
  %loadMem_429ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8333 = getelementptr inbounds %struct.GPR, %struct.GPR* %8332, i32 0, i32 33
  %8334 = getelementptr inbounds %struct.Reg, %struct.Reg* %8333, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %8334 to i64*
  %8335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8336 = getelementptr inbounds %struct.GPR, %struct.GPR* %8335, i32 0, i32 1
  %8337 = getelementptr inbounds %struct.Reg, %struct.Reg* %8336, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %8337 to i64*
  %8338 = load i64, i64* %RAX.i13
  %8339 = mul i64 %8338, 4
  %8340 = add i64 %8339, 11268976
  %8341 = load i64, i64* %PC.i12
  %8342 = add i64 %8341, 11
  store i64 %8342, i64* %PC.i12
  %8343 = inttoptr i64 %8340 to i32*
  store i32 0, i32* %8343
  store %struct.Memory* %loadMem_429ce7, %struct.Memory** %MEMORY
  %loadMem_429cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8345 = getelementptr inbounds %struct.GPR, %struct.GPR* %8344, i32 0, i32 33
  %8346 = getelementptr inbounds %struct.Reg, %struct.Reg* %8345, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8346 to i64*
  %8347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8348 = getelementptr inbounds %struct.GPR, %struct.GPR* %8347, i32 0, i32 1
  %8349 = getelementptr inbounds %struct.Reg, %struct.Reg* %8348, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %8349 to i64*
  %8350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8351 = getelementptr inbounds %struct.GPR, %struct.GPR* %8350, i32 0, i32 15
  %8352 = getelementptr inbounds %struct.Reg, %struct.Reg* %8351, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %8352 to i64*
  %8353 = load i64, i64* %RBP.i11
  %8354 = sub i64 %8353, 56
  %8355 = load i64, i64* %PC.i9
  %8356 = add i64 %8355, 3
  store i64 %8356, i64* %PC.i9
  %8357 = inttoptr i64 %8354 to i32*
  %8358 = load i32, i32* %8357
  %8359 = zext i32 %8358 to i64
  store i64 %8359, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_429cf2, %struct.Memory** %MEMORY
  %loadMem_429cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8361 = getelementptr inbounds %struct.GPR, %struct.GPR* %8360, i32 0, i32 33
  %8362 = getelementptr inbounds %struct.Reg, %struct.Reg* %8361, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8362 to i64*
  %8363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8364 = getelementptr inbounds %struct.GPR, %struct.GPR* %8363, i32 0, i32 1
  %8365 = getelementptr inbounds %struct.Reg, %struct.Reg* %8364, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8365 to i64*
  %8366 = load i64, i64* %RAX.i
  %8367 = load i64, i64* %PC.i8
  %8368 = add i64 %8367, 3
  store i64 %8368, i64* %PC.i8
  %8369 = trunc i64 %8366 to i32
  %8370 = add i32 1, %8369
  %8371 = zext i32 %8370 to i64
  store i64 %8371, i64* %RAX.i, align 8
  %8372 = icmp ult i32 %8370, %8369
  %8373 = icmp ult i32 %8370, 1
  %8374 = or i1 %8372, %8373
  %8375 = zext i1 %8374 to i8
  %8376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8375, i8* %8376, align 1
  %8377 = and i32 %8370, 255
  %8378 = call i32 @llvm.ctpop.i32(i32 %8377)
  %8379 = trunc i32 %8378 to i8
  %8380 = and i8 %8379, 1
  %8381 = xor i8 %8380, 1
  %8382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8381, i8* %8382, align 1
  %8383 = xor i64 1, %8366
  %8384 = trunc i64 %8383 to i32
  %8385 = xor i32 %8384, %8370
  %8386 = lshr i32 %8385, 4
  %8387 = trunc i32 %8386 to i8
  %8388 = and i8 %8387, 1
  %8389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8388, i8* %8389, align 1
  %8390 = icmp eq i32 %8370, 0
  %8391 = zext i1 %8390 to i8
  %8392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8391, i8* %8392, align 1
  %8393 = lshr i32 %8370, 31
  %8394 = trunc i32 %8393 to i8
  %8395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8394, i8* %8395, align 1
  %8396 = lshr i32 %8369, 31
  %8397 = xor i32 %8393, %8396
  %8398 = add i32 %8397, %8393
  %8399 = icmp eq i32 %8398, 2
  %8400 = zext i1 %8399 to i8
  %8401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8400, i8* %8401, align 1
  store %struct.Memory* %loadMem_429cf5, %struct.Memory** %MEMORY
  %loadMem_429cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8403 = getelementptr inbounds %struct.GPR, %struct.GPR* %8402, i32 0, i32 33
  %8404 = getelementptr inbounds %struct.Reg, %struct.Reg* %8403, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8404 to i64*
  %8405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8406 = getelementptr inbounds %struct.GPR, %struct.GPR* %8405, i32 0, i32 1
  %8407 = getelementptr inbounds %struct.Reg, %struct.Reg* %8406, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8407 to i32*
  %8408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8409 = getelementptr inbounds %struct.GPR, %struct.GPR* %8408, i32 0, i32 15
  %8410 = getelementptr inbounds %struct.Reg, %struct.Reg* %8409, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %8410 to i64*
  %8411 = load i64, i64* %RBP.i7
  %8412 = sub i64 %8411, 56
  %8413 = load i32, i32* %EAX.i
  %8414 = zext i32 %8413 to i64
  %8415 = load i64, i64* %PC.i6
  %8416 = add i64 %8415, 3
  store i64 %8416, i64* %PC.i6
  %8417 = inttoptr i64 %8412 to i32*
  store i32 %8413, i32* %8417
  store %struct.Memory* %loadMem_429cf8, %struct.Memory** %MEMORY
  %loadMem_429cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8419 = getelementptr inbounds %struct.GPR, %struct.GPR* %8418, i32 0, i32 33
  %8420 = getelementptr inbounds %struct.Reg, %struct.Reg* %8419, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8420 to i64*
  %8421 = load i64, i64* %PC.i5
  %8422 = add i64 %8421, -124
  %8423 = load i64, i64* %PC.i5
  %8424 = add i64 %8423, 5
  store i64 %8424, i64* %PC.i5
  %8425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8422, i64* %8425, align 8
  store %struct.Memory* %loadMem_429cfb, %struct.Memory** %MEMORY
  br label %block_.L_429c7f

block_.L_429d00:                                  ; preds = %block_.L_429c7f
  %loadMem_429d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8427 = getelementptr inbounds %struct.GPR, %struct.GPR* %8426, i32 0, i32 33
  %8428 = getelementptr inbounds %struct.Reg, %struct.Reg* %8427, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8428 to i64*
  %8429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8430 = getelementptr inbounds %struct.GPR, %struct.GPR* %8429, i32 0, i32 13
  %8431 = getelementptr inbounds %struct.Reg, %struct.Reg* %8430, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8431 to i64*
  %8432 = load i64, i64* %RSP.i
  %8433 = load i64, i64* %PC.i4
  %8434 = add i64 %8433, 4
  store i64 %8434, i64* %PC.i4
  %8435 = add i64 16, %8432
  store i64 %8435, i64* %RSP.i, align 8
  %8436 = icmp ult i64 %8435, %8432
  %8437 = icmp ult i64 %8435, 16
  %8438 = or i1 %8436, %8437
  %8439 = zext i1 %8438 to i8
  %8440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8439, i8* %8440, align 1
  %8441 = trunc i64 %8435 to i32
  %8442 = and i32 %8441, 255
  %8443 = call i32 @llvm.ctpop.i32(i32 %8442)
  %8444 = trunc i32 %8443 to i8
  %8445 = and i8 %8444, 1
  %8446 = xor i8 %8445, 1
  %8447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8446, i8* %8447, align 1
  %8448 = xor i64 16, %8432
  %8449 = xor i64 %8448, %8435
  %8450 = lshr i64 %8449, 4
  %8451 = trunc i64 %8450 to i8
  %8452 = and i8 %8451, 1
  %8453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8452, i8* %8453, align 1
  %8454 = icmp eq i64 %8435, 0
  %8455 = zext i1 %8454 to i8
  %8456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8455, i8* %8456, align 1
  %8457 = lshr i64 %8435, 63
  %8458 = trunc i64 %8457 to i8
  %8459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8458, i8* %8459, align 1
  %8460 = lshr i64 %8432, 63
  %8461 = xor i64 %8457, %8460
  %8462 = add i64 %8461, %8457
  %8463 = icmp eq i64 %8462, 2
  %8464 = zext i1 %8463 to i8
  %8465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8464, i8* %8465, align 1
  store %struct.Memory* %loadMem_429d00, %struct.Memory** %MEMORY
  %loadMem_429d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8467 = getelementptr inbounds %struct.GPR, %struct.GPR* %8466, i32 0, i32 33
  %8468 = getelementptr inbounds %struct.Reg, %struct.Reg* %8467, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8468 to i64*
  %8469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8470 = getelementptr inbounds %struct.GPR, %struct.GPR* %8469, i32 0, i32 15
  %8471 = getelementptr inbounds %struct.Reg, %struct.Reg* %8470, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8471 to i64*
  %8472 = load i64, i64* %PC.i2
  %8473 = add i64 %8472, 1
  store i64 %8473, i64* %PC.i2
  %8474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8475 = load i64, i64* %8474, align 8
  %8476 = add i64 %8475, 8
  %8477 = inttoptr i64 %8475 to i64*
  %8478 = load i64, i64* %8477
  store i64 %8478, i64* %RBP.i3, align 8
  store i64 %8476, i64* %8474, align 8
  store %struct.Memory* %loadMem_429d04, %struct.Memory** %MEMORY
  %loadMem_429d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8480 = getelementptr inbounds %struct.GPR, %struct.GPR* %8479, i32 0, i32 33
  %8481 = getelementptr inbounds %struct.Reg, %struct.Reg* %8480, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8481 to i64*
  %8482 = load i64, i64* %PC.i1
  %8483 = add i64 %8482, 1
  store i64 %8483, i64* %PC.i1
  %8484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8486 = load i64, i64* %8485, align 8
  %8487 = inttoptr i64 %8486 to i64*
  %8488 = load i64, i64* %8487
  store i64 %8488, i64* %8484, align 8
  %8489 = add i64 %8486, 8
  store i64 %8489, i64* %8485, align 8
  store %struct.Memory* %loadMem_429d05, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_429d05
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

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x14___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 20, i64* %9, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq__r8__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_idivl__r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R10D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
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

define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_cmpl__0x0__0xabf360(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xabf360_type* @G_0xabf360 to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_42976c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_429761(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xabf370___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11268976
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  store i32 0, i32* %14
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

define %struct.Memory* @routine_jmpq_.L_429737(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__0xabf360(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 1, i32* bitcast (%G_0xabf360_type* @G_0xabf360 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xabf9b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0xabf9b0_type* @G_0xabf9b0 to i32*)
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

define %struct.Memory* @routine_movl__eax__0xabf370___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11268976
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
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

define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 72
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

define %struct.Memory* @routine_jge_.L_429c78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xabf9b0___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11270576
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x70__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
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

define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0____rcx__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RDI
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

define %struct.Memory* @routine_jne_.L_4297e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_429784(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4297ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1000__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 4096, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42981a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1000___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4096, i64* %RAX, align 8
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

define %struct.Memory* @routine_imull_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RCX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x54__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 84
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
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

define %struct.Memory* @routine_movl_0xabf370___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11268976
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_jge_.L_4299df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4299cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_429874(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x7ae1b0___rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpb__0x0____rax__rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = zext i8 %18 to i32
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = icmp eq i8 %18, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i8 %18, 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i8 %18, 7
  %33 = xor i8 %30, %32
  %34 = add i8 %33, %32
  %35 = icmp eq i8 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4299c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x7ae170___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 8053104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae190___rax_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8053136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_jg_.L_4298c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x5c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 92
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RSI, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x78__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_je_.L_429943(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x7ae170___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8053104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x50__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae190___rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8053136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x54__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 84
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RSI, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
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

define %struct.Memory* @routine_movl_MINUS0x60__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x60__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x58__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xb969d__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0xb969d__rip__type* @G_0xb969d__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x58__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jb_.L_42995f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4299c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0xabf370___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 11268976
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %15, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i32 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %15, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %15, 31
  %31 = xor i32 %27, %30
  %32 = add i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4299a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xabf9b0___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11270576
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
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

define %struct.Memory* @routine_addl_0xabf370___rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 11268976
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

define %struct.Memory* @routine_movl__eax__0xabf370___rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11268976
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i32*
  store i32 %15, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4299cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4299d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_429843(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_imull_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RAX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x80__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_429c73(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_429c60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_429a38(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_429c56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jg_.L_429a8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x14__0x7ae170___rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8053104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 20
  %21 = trunc i64 %20 to i32
  %22 = and i64 %20, 4294967295
  store i64 %22, i64* %RDI, align 8
  %23 = shl i64 %20, 32
  %24 = ashr exact i64 %23, 32
  %25 = icmp ne i64 %24, %20
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
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = lshr i32 %21, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %26, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x0___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDI, align 8
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

define %struct.Memory* @routine_addl__edi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
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

define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
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
  store i64 %23, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_0x7ae190___rcx_4____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 8053136
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x0___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = zext i32 %10 to i64
  store i64 %14, i64* %9, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %10, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = icmp eq i32 %10, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %10, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = xor i32 %26, %29
  %31 = add i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__r8d___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDI, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl___rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %ESI
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RAX
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %17
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %20 to i32*
  %24 = load i32, i32* %23
  %25 = sub i32 %15, %24
  %26 = icmp ult i32 %15, %24
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %25, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = xor i32 %24, %15
  %36 = xor i32 %35, %25
  %37 = lshr i32 %36, 4
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %39, i8* %40, align 1
  %41 = icmp eq i32 %25, 0
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %25, 31
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %15, 31
  %48 = lshr i32 %24, 31
  %49 = xor i32 %48, %47
  %50 = xor i32 %44, %47
  %51 = add i32 %50, %49
  %52 = icmp eq i32 %51, 2
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %53, i8* %54, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_429b0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x7ae190___rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8053136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RSI, align 8
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

define %struct.Memory* @routine_addl__esi___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = icmp ult i32 %18, %17
  %21 = icmp ult i32 %18, %13
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %14, %12
  %32 = trunc i64 %31 to i32
  %33 = xor i32 %32, %18
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %18, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %18, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %17, 31
  %45 = lshr i32 %13, 31
  %46 = xor i32 %41, %44
  %47 = xor i32 %41, %45
  %48 = add i32 %46, %47
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
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

define %struct.Memory* @routine_movl__ecx__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_429b31(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_imull__0x14__0x7ae170___rdx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8053104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 20
  %21 = trunc i64 %20 to i32
  %22 = and i64 %20, 4294967295
  store i64 %22, i64* %RSI, align 8
  %23 = shl i64 %20, 32
  %24 = ashr exact i64 %23, 32
  %25 = icmp ne i64 %24, %20
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
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = lshr i32 %21, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %26, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1000___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 4096, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x84__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RDX, align 8
  %24 = shl i64 %21, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp ne i64 %25, %21
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %22, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %40, align 1
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 104
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

define %struct.Memory* @routine_jne_.L_429b5c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_429c5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x68__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RCX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movl_MINUS0x8c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_429bd7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x6c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 108
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x64__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 100
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RDX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x90__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xb9409__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0xb9409__rip__type* @G_0xb9409__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x64__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jb_.L_429bf3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_429c34(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_429c60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_429c65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_429a07(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_429d00(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xb9355__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0xb9355__rip__type* @G_0xb9355__rip_ to i64)
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xabf9b0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11270576
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_0xabf370___rax_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11268976
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = sitofp i32 %18 to double
  %20 = bitcast i8* %11 to double*
  store double %19, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_ja_.L_429cca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp eq i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
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

define %struct.Memory* @routine_jne_.L_429ce3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xabf370___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 11268976
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RCX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
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

define %struct.Memory* @routine_jmpq_.L_429c7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
