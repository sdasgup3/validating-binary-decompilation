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
%G_0x37d__rip__type = type <{ [8 x i8] }>
%G_0x3cf__rip__type = type <{ [8 x i8] }>
%G_0x43c__rip__type = type <{ [8 x i8] }>
%G_0x497__rip__type = type <{ [8 x i8] }>
%G_0x531__rip__type = type <{ [8 x i8] }>
%G_0x58a__rip__type = type <{ [8 x i8] }>
%G_0x5dc__rip__type = type <{ [8 x i8] }>
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
@G_0x37d__rip_ = global %G_0x37d__rip__type zeroinitializer
@G_0x3cf__rip_ = global %G_0x3cf__rip__type zeroinitializer
@G_0x43c__rip_ = global %G_0x43c__rip__type zeroinitializer
@G_0x497__rip_ = global %G_0x497__rip__type zeroinitializer
@G_0x531__rip_ = global %G_0x531__rip__type zeroinitializer
@G_0x58a__rip_ = global %G_0x58a__rip__type zeroinitializer
@G_0x5dc__rip_ = global %G_0x5dc__rip__type zeroinitializer

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

declare %struct.Memory* @sub_400bb0.fade(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400c00.grad(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400d50.lerp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @noise(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4006f0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006f0, %struct.Memory** %MEMORY
  %loadMem_4006f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i556 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i556
  %27 = load i64, i64* %PC.i555
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i555
  store i64 %26, i64* %RBP.i557, align 8
  store %struct.Memory* %loadMem_4006f1, %struct.Memory** %MEMORY
  %loadMem_4006f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i572 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i572
  %36 = load i64, i64* %PC.i571
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i571
  %38 = sub i64 %35, 272
  store i64 %38, i64* %RSP.i572, align 8
  %39 = icmp ult i64 %35, 272
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
  %49 = xor i64 272, %35
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
  store %struct.Memory* %loadMem_4006f4, %struct.Memory** %MEMORY
  %loadMem_4006fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %74 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %73, i64 0, i64 0
  %XMM0.i588 = bitcast %union.VectorReg* %74 to %union.vec128_t*
  %75 = load i64, i64* %RBP.i587
  %76 = sub i64 %75, 8
  %77 = bitcast %union.vec128_t* %XMM0.i588 to i8*
  %78 = load i64, i64* %PC.i586
  %79 = add i64 %78, 5
  store i64 %79, i64* %PC.i586
  %80 = bitcast i8* %77 to double*
  %81 = load double, double* %80, align 1
  %82 = inttoptr i64 %76 to double*
  store double %81, double* %82
  store %struct.Memory* %loadMem_4006fb, %struct.Memory** %MEMORY
  %loadMem_400700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %90 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %89, i64 0, i64 1
  %XMM1.i603 = bitcast %union.VectorReg* %90 to %union.vec128_t*
  %91 = load i64, i64* %RBP.i602
  %92 = sub i64 %91, 16
  %93 = bitcast %union.vec128_t* %XMM1.i603 to i8*
  %94 = load i64, i64* %PC.i601
  %95 = add i64 %94, 5
  store i64 %95, i64* %PC.i601
  %96 = bitcast i8* %93 to double*
  %97 = load double, double* %96, align 1
  %98 = inttoptr i64 %92 to double*
  store double %97, double* %98
  store %struct.Memory* %loadMem_400700, %struct.Memory** %MEMORY
  %loadMem_400705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 15
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %105, i64 0, i64 2
  %XMM2.i618 = bitcast %union.VectorReg* %106 to %union.vec128_t*
  %107 = load i64, i64* %RBP.i617
  %108 = sub i64 %107, 24
  %109 = bitcast %union.vec128_t* %XMM2.i618 to i8*
  %110 = load i64, i64* %PC.i616
  %111 = add i64 %110, 5
  store i64 %111, i64* %PC.i616
  %112 = bitcast i8* %109 to double*
  %113 = load double, double* %112, align 1
  %114 = inttoptr i64 %108 to double*
  store double %113, double* %114
  store %struct.Memory* %loadMem_400705, %struct.Memory** %MEMORY
  %loadMem_40070a = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 15
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %121, i64 0, i64 0
  %YMM0.i633 = bitcast %union.VectorReg* %122 to %"class.std::bitset"*
  %123 = bitcast %"class.std::bitset"* %YMM0.i633 to i8*
  %124 = load i64, i64* %RBP.i632
  %125 = sub i64 %124, 8
  %126 = load i64, i64* %PC.i631
  %127 = add i64 %126, 5
  store i64 %127, i64* %PC.i631
  %128 = inttoptr i64 %125 to double*
  %129 = load double, double* %128
  %130 = bitcast i8* %123 to double*
  store double %129, double* %130, align 1
  %131 = getelementptr inbounds i8, i8* %123, i64 8
  %132 = bitcast i8* %131 to double*
  store double 0.000000e+00, double* %132, align 1
  store %struct.Memory* %loadMem_40070a, %struct.Memory** %MEMORY
  %loadMem1_40070f = load %struct.Memory*, %struct.Memory** %MEMORY
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 33
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %135 to i64*
  %136 = load i64, i64* %PC.i634
  %137 = add i64 %136, -655
  %138 = load i64, i64* %PC.i634
  %139 = add i64 %138, 5
  %140 = load i64, i64* %PC.i634
  %141 = add i64 %140, 5
  store i64 %141, i64* %PC.i634
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, -8
  %145 = inttoptr i64 %144 to i64*
  store i64 %139, i64* %145
  store i64 %144, i64* %142, align 8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %137, i64* %146, align 8
  store %struct.Memory* %loadMem1_40070f, %struct.Memory** %MEMORY
  %loadMem2_40070f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40070f = load i64, i64* %3
  %147 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_40070f)
  store %struct.Memory* %147, %struct.Memory** %MEMORY
  %loadMem_400714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RAX.i629 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %155 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %154, i64 0, i64 0
  %XMM0.i630 = bitcast %union.VectorReg* %155 to %union.vec128_t*
  %156 = bitcast %union.vec128_t* %XMM0.i630 to i8*
  %157 = load i64, i64* %PC.i628
  %158 = add i64 %157, 4
  store i64 %158, i64* %PC.i628
  %159 = bitcast i8* %156 to double*
  %160 = load double, double* %159, align 1
  %161 = call double @llvm.trunc.f64(double %160)
  %162 = call double @llvm.fabs.f64(double %161)
  %163 = fcmp ogt double %162, 0x41DFFFFFFFC00000
  %164 = fptosi double %161 to i32
  %165 = zext i32 %164 to i64
  %166 = select i1 %163, i64 2147483648, i64 %165
  store i64 %166, i64* %RAX.i629, align 8
  store %struct.Memory* %loadMem_400714, %struct.Memory** %MEMORY
  %loadMem_400718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 33
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %172 to i64*
  %173 = load i64, i64* %RAX.i627
  %174 = load i64, i64* %PC.i626
  %175 = add i64 %174, 5
  store i64 %175, i64* %PC.i626
  %176 = and i64 255, %173
  %177 = trunc i64 %176 to i32
  store i64 %176, i64* %RAX.i627, align 8
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %178, align 1
  %179 = and i32 %177, 255
  %180 = call i32 @llvm.ctpop.i32(i32 %179)
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %183, i8* %184, align 1
  %185 = icmp eq i32 %177, 0
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %186, i8* %187, align 1
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %188, align 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %189, align 1
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %190, align 1
  store %struct.Memory* %loadMem_400718, %struct.Memory** %MEMORY
  %loadMem_40071d = load %struct.Memory*, %struct.Memory** %MEMORY
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 33
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %EAX.i624 = bitcast %union.anon* %196 to i32*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 15
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %199 to i64*
  %200 = load i64, i64* %RBP.i625
  %201 = sub i64 %200, 28
  %202 = load i32, i32* %EAX.i624
  %203 = zext i32 %202 to i64
  %204 = load i64, i64* %PC.i623
  %205 = add i64 %204, 3
  store i64 %205, i64* %PC.i623
  %206 = inttoptr i64 %201 to i32*
  store i32 %202, i32* %206
  store %struct.Memory* %loadMem_40071d, %struct.Memory** %MEMORY
  %loadMem_400720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 33
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %213, i64 0, i64 0
  %YMM0.i622 = bitcast %union.VectorReg* %214 to %"class.std::bitset"*
  %215 = bitcast %"class.std::bitset"* %YMM0.i622 to i8*
  %216 = load i64, i64* %RBP.i621
  %217 = sub i64 %216, 16
  %218 = load i64, i64* %PC.i620
  %219 = add i64 %218, 5
  store i64 %219, i64* %PC.i620
  %220 = inttoptr i64 %217 to double*
  %221 = load double, double* %220
  %222 = bitcast i8* %215 to double*
  store double %221, double* %222, align 1
  %223 = getelementptr inbounds i8, i8* %215, i64 8
  %224 = bitcast i8* %223 to double*
  store double 0.000000e+00, double* %224, align 1
  store %struct.Memory* %loadMem_400720, %struct.Memory** %MEMORY
  %loadMem1_400725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 33
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %227 to i64*
  %228 = load i64, i64* %PC.i619
  %229 = add i64 %228, -677
  %230 = load i64, i64* %PC.i619
  %231 = add i64 %230, 5
  %232 = load i64, i64* %PC.i619
  %233 = add i64 %232, 5
  store i64 %233, i64* %PC.i619
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = add i64 %235, -8
  %237 = inttoptr i64 %236 to i64*
  store i64 %231, i64* %237
  store i64 %236, i64* %234, align 8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %229, i64* %238, align 8
  store %struct.Memory* %loadMem1_400725, %struct.Memory** %MEMORY
  %loadMem2_400725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400725 = load i64, i64* %3
  %239 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_400725)
  store %struct.Memory* %239, %struct.Memory** %MEMORY
  %loadMem_40072a = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %247 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %246, i64 0, i64 0
  %XMM0.i615 = bitcast %union.VectorReg* %247 to %union.vec128_t*
  %248 = bitcast %union.vec128_t* %XMM0.i615 to i8*
  %249 = load i64, i64* %PC.i613
  %250 = add i64 %249, 4
  store i64 %250, i64* %PC.i613
  %251 = bitcast i8* %248 to double*
  %252 = load double, double* %251, align 1
  %253 = call double @llvm.trunc.f64(double %252)
  %254 = call double @llvm.fabs.f64(double %253)
  %255 = fcmp ogt double %254, 0x41DFFFFFFFC00000
  %256 = fptosi double %253 to i32
  %257 = zext i32 %256 to i64
  %258 = select i1 %255, i64 2147483648, i64 %257
  store i64 %258, i64* %RAX.i614, align 8
  store %struct.Memory* %loadMem_40072a, %struct.Memory** %MEMORY
  %loadMem_40072e = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RAX.i612 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %RAX.i612
  %266 = load i64, i64* %PC.i611
  %267 = add i64 %266, 5
  store i64 %267, i64* %PC.i611
  %268 = and i64 255, %265
  %269 = trunc i64 %268 to i32
  store i64 %268, i64* %RAX.i612, align 8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %270, align 1
  %271 = and i32 %269, 255
  %272 = call i32 @llvm.ctpop.i32(i32 %271)
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %275, i8* %276, align 1
  %277 = icmp eq i32 %269, 0
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %278, i8* %279, align 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %280, align 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %281, align 1
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %282, align 1
  store %struct.Memory* %loadMem_40072e, %struct.Memory** %MEMORY
  %loadMem_400733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %EAX.i609 = bitcast %union.anon* %288 to i32*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 15
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %291 to i64*
  %292 = load i64, i64* %RBP.i610
  %293 = sub i64 %292, 32
  %294 = load i32, i32* %EAX.i609
  %295 = zext i32 %294 to i64
  %296 = load i64, i64* %PC.i608
  %297 = add i64 %296, 3
  store i64 %297, i64* %PC.i608
  %298 = inttoptr i64 %293 to i32*
  store i32 %294, i32* %298
  store %struct.Memory* %loadMem_400733, %struct.Memory** %MEMORY
  %loadMem_400736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 33
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %301 to i64*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 15
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %306 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %305, i64 0, i64 0
  %YMM0.i607 = bitcast %union.VectorReg* %306 to %"class.std::bitset"*
  %307 = bitcast %"class.std::bitset"* %YMM0.i607 to i8*
  %308 = load i64, i64* %RBP.i606
  %309 = sub i64 %308, 24
  %310 = load i64, i64* %PC.i605
  %311 = add i64 %310, 5
  store i64 %311, i64* %PC.i605
  %312 = inttoptr i64 %309 to double*
  %313 = load double, double* %312
  %314 = bitcast i8* %307 to double*
  store double %313, double* %314, align 1
  %315 = getelementptr inbounds i8, i8* %307, i64 8
  %316 = bitcast i8* %315 to double*
  store double 0.000000e+00, double* %316, align 1
  store %struct.Memory* %loadMem_400736, %struct.Memory** %MEMORY
  %loadMem1_40073b = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %PC.i604
  %321 = add i64 %320, -699
  %322 = load i64, i64* %PC.i604
  %323 = add i64 %322, 5
  %324 = load i64, i64* %PC.i604
  %325 = add i64 %324, 5
  store i64 %325, i64* %PC.i604
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = add i64 %327, -8
  %329 = inttoptr i64 %328 to i64*
  store i64 %323, i64* %329
  store i64 %328, i64* %326, align 8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %321, i64* %330, align 8
  store %struct.Memory* %loadMem1_40073b, %struct.Memory** %MEMORY
  %loadMem2_40073b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40073b = load i64, i64* %3
  %331 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_40073b)
  store %struct.Memory* %331, %struct.Memory** %MEMORY
  %loadMem_400740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %338, i64 0, i64 0
  %XMM0.i600 = bitcast %union.VectorReg* %339 to %union.vec128_t*
  %340 = bitcast %union.vec128_t* %XMM0.i600 to i8*
  %341 = load i64, i64* %PC.i598
  %342 = add i64 %341, 4
  store i64 %342, i64* %PC.i598
  %343 = bitcast i8* %340 to double*
  %344 = load double, double* %343, align 1
  %345 = call double @llvm.trunc.f64(double %344)
  %346 = call double @llvm.fabs.f64(double %345)
  %347 = fcmp ogt double %346, 0x41DFFFFFFFC00000
  %348 = fptosi double %345 to i32
  %349 = zext i32 %348 to i64
  %350 = select i1 %347, i64 2147483648, i64 %349
  store i64 %350, i64* %RAX.i599, align 8
  store %struct.Memory* %loadMem_400740, %struct.Memory** %MEMORY
  %loadMem_400744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %356 to i64*
  %357 = load i64, i64* %RAX.i597
  %358 = load i64, i64* %PC.i596
  %359 = add i64 %358, 5
  store i64 %359, i64* %PC.i596
  %360 = and i64 255, %357
  %361 = trunc i64 %360 to i32
  store i64 %360, i64* %RAX.i597, align 8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %362, align 1
  %363 = and i32 %361, 255
  %364 = call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %367, i8* %368, align 1
  %369 = icmp eq i32 %361, 0
  %370 = zext i1 %369 to i8
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %370, i8* %371, align 1
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %372, align 1
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %373, align 1
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %374, align 1
  store %struct.Memory* %loadMem_400744, %struct.Memory** %MEMORY
  %loadMem_400749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 33
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %EAX.i594 = bitcast %union.anon* %380 to i32*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 15
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %383 to i64*
  %384 = load i64, i64* %RBP.i595
  %385 = sub i64 %384, 36
  %386 = load i32, i32* %EAX.i594
  %387 = zext i32 %386 to i64
  %388 = load i64, i64* %PC.i593
  %389 = add i64 %388, 3
  store i64 %389, i64* %PC.i593
  %390 = inttoptr i64 %385 to i32*
  store i32 %386, i32* %390
  store %struct.Memory* %loadMem_400749, %struct.Memory** %MEMORY
  %loadMem_40074c = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 15
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %398 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %397, i64 0, i64 0
  %YMM0.i592 = bitcast %union.VectorReg* %398 to %"class.std::bitset"*
  %399 = bitcast %"class.std::bitset"* %YMM0.i592 to i8*
  %400 = load i64, i64* %RBP.i591
  %401 = sub i64 %400, 8
  %402 = load i64, i64* %PC.i590
  %403 = add i64 %402, 5
  store i64 %403, i64* %PC.i590
  %404 = inttoptr i64 %401 to double*
  %405 = load double, double* %404
  %406 = bitcast i8* %399 to double*
  store double %405, double* %406, align 1
  %407 = getelementptr inbounds i8, i8* %399, i64 8
  %408 = bitcast i8* %407 to double*
  store double 0.000000e+00, double* %408, align 1
  store %struct.Memory* %loadMem_40074c, %struct.Memory** %MEMORY
  %loadMem1_400751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %PC.i589
  %413 = add i64 %412, -721
  %414 = load i64, i64* %PC.i589
  %415 = add i64 %414, 5
  %416 = load i64, i64* %PC.i589
  %417 = add i64 %416, 5
  store i64 %417, i64* %PC.i589
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = add i64 %419, -8
  %421 = inttoptr i64 %420 to i64*
  store i64 %415, i64* %421
  store i64 %420, i64* %418, align 8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %413, i64* %422, align 8
  store %struct.Memory* %loadMem1_400751, %struct.Memory** %MEMORY
  %loadMem2_400751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400751 = load i64, i64* %3
  %423 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_400751)
  store %struct.Memory* %423, %struct.Memory** %MEMORY
  %loadMem_400756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 15
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %431 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %430, i64 0, i64 1
  %YMM1.i585 = bitcast %union.VectorReg* %431 to %"class.std::bitset"*
  %432 = bitcast %"class.std::bitset"* %YMM1.i585 to i8*
  %433 = load i64, i64* %RBP.i584
  %434 = sub i64 %433, 8
  %435 = load i64, i64* %PC.i583
  %436 = add i64 %435, 5
  store i64 %436, i64* %PC.i583
  %437 = inttoptr i64 %434 to double*
  %438 = load double, double* %437
  %439 = bitcast i8* %432 to double*
  store double %438, double* %439, align 1
  %440 = getelementptr inbounds i8, i8* %432, i64 8
  %441 = bitcast i8* %440 to double*
  store double 0.000000e+00, double* %441, align 1
  store %struct.Memory* %loadMem_400756, %struct.Memory** %MEMORY
  %loadMem_40075b = load %struct.Memory*, %struct.Memory** %MEMORY
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 33
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %444 to i64*
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %446 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %445, i64 0, i64 1
  %YMM1.i581 = bitcast %union.VectorReg* %446 to %"class.std::bitset"*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %448 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %447, i64 0, i64 0
  %XMM0.i582 = bitcast %union.VectorReg* %448 to %union.vec128_t*
  %449 = bitcast %"class.std::bitset"* %YMM1.i581 to i8*
  %450 = bitcast %"class.std::bitset"* %YMM1.i581 to i8*
  %451 = bitcast %union.vec128_t* %XMM0.i582 to i8*
  %452 = load i64, i64* %PC.i580
  %453 = add i64 %452, 4
  store i64 %453, i64* %PC.i580
  %454 = bitcast i8* %450 to double*
  %455 = load double, double* %454, align 1
  %456 = getelementptr inbounds i8, i8* %450, i64 8
  %457 = bitcast i8* %456 to i64*
  %458 = load i64, i64* %457, align 1
  %459 = bitcast i8* %451 to double*
  %460 = load double, double* %459, align 1
  %461 = fsub double %455, %460
  %462 = bitcast i8* %449 to double*
  store double %461, double* %462, align 1
  %463 = getelementptr inbounds i8, i8* %449, i64 8
  %464 = bitcast i8* %463 to i64*
  store i64 %458, i64* %464, align 1
  store %struct.Memory* %loadMem_40075b, %struct.Memory** %MEMORY
  %loadMem_40075f = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 15
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %472 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %471, i64 0, i64 1
  %XMM1.i579 = bitcast %union.VectorReg* %472 to %union.vec128_t*
  %473 = load i64, i64* %RBP.i578
  %474 = sub i64 %473, 8
  %475 = bitcast %union.vec128_t* %XMM1.i579 to i8*
  %476 = load i64, i64* %PC.i577
  %477 = add i64 %476, 5
  store i64 %477, i64* %PC.i577
  %478 = bitcast i8* %475 to double*
  %479 = load double, double* %478, align 1
  %480 = inttoptr i64 %474 to double*
  store double %479, double* %480
  store %struct.Memory* %loadMem_40075f, %struct.Memory** %MEMORY
  %loadMem_400764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 33
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %483 to i64*
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 15
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %486 to i64*
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %488 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %487, i64 0, i64 0
  %YMM0.i576 = bitcast %union.VectorReg* %488 to %"class.std::bitset"*
  %489 = bitcast %"class.std::bitset"* %YMM0.i576 to i8*
  %490 = load i64, i64* %RBP.i575
  %491 = sub i64 %490, 16
  %492 = load i64, i64* %PC.i574
  %493 = add i64 %492, 5
  store i64 %493, i64* %PC.i574
  %494 = inttoptr i64 %491 to double*
  %495 = load double, double* %494
  %496 = bitcast i8* %489 to double*
  store double %495, double* %496, align 1
  %497 = getelementptr inbounds i8, i8* %489, i64 8
  %498 = bitcast i8* %497 to double*
  store double 0.000000e+00, double* %498, align 1
  store %struct.Memory* %loadMem_400764, %struct.Memory** %MEMORY
  %loadMem1_400769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %501 to i64*
  %502 = load i64, i64* %PC.i573
  %503 = add i64 %502, -745
  %504 = load i64, i64* %PC.i573
  %505 = add i64 %504, 5
  %506 = load i64, i64* %PC.i573
  %507 = add i64 %506, 5
  store i64 %507, i64* %PC.i573
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %509 = load i64, i64* %508, align 8
  %510 = add i64 %509, -8
  %511 = inttoptr i64 %510 to i64*
  store i64 %505, i64* %511
  store i64 %510, i64* %508, align 8
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %503, i64* %512, align 8
  store %struct.Memory* %loadMem1_400769, %struct.Memory** %MEMORY
  %loadMem2_400769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400769 = load i64, i64* %3
  %513 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_400769)
  store %struct.Memory* %513, %struct.Memory** %MEMORY
  %loadMem_40076e = load %struct.Memory*, %struct.Memory** %MEMORY
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 33
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %516 to i64*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 15
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %521 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %520, i64 0, i64 1
  %YMM1.i570 = bitcast %union.VectorReg* %521 to %"class.std::bitset"*
  %522 = bitcast %"class.std::bitset"* %YMM1.i570 to i8*
  %523 = load i64, i64* %RBP.i569
  %524 = sub i64 %523, 16
  %525 = load i64, i64* %PC.i568
  %526 = add i64 %525, 5
  store i64 %526, i64* %PC.i568
  %527 = inttoptr i64 %524 to double*
  %528 = load double, double* %527
  %529 = bitcast i8* %522 to double*
  store double %528, double* %529, align 1
  %530 = getelementptr inbounds i8, i8* %522, i64 8
  %531 = bitcast i8* %530 to double*
  store double 0.000000e+00, double* %531, align 1
  store %struct.Memory* %loadMem_40076e, %struct.Memory** %MEMORY
  %loadMem_400773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 33
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %536 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %535, i64 0, i64 1
  %YMM1.i566 = bitcast %union.VectorReg* %536 to %"class.std::bitset"*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %538 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %537, i64 0, i64 0
  %XMM0.i567 = bitcast %union.VectorReg* %538 to %union.vec128_t*
  %539 = bitcast %"class.std::bitset"* %YMM1.i566 to i8*
  %540 = bitcast %"class.std::bitset"* %YMM1.i566 to i8*
  %541 = bitcast %union.vec128_t* %XMM0.i567 to i8*
  %542 = load i64, i64* %PC.i565
  %543 = add i64 %542, 4
  store i64 %543, i64* %PC.i565
  %544 = bitcast i8* %540 to double*
  %545 = load double, double* %544, align 1
  %546 = getelementptr inbounds i8, i8* %540, i64 8
  %547 = bitcast i8* %546 to i64*
  %548 = load i64, i64* %547, align 1
  %549 = bitcast i8* %541 to double*
  %550 = load double, double* %549, align 1
  %551 = fsub double %545, %550
  %552 = bitcast i8* %539 to double*
  store double %551, double* %552, align 1
  %553 = getelementptr inbounds i8, i8* %539, i64 8
  %554 = bitcast i8* %553 to i64*
  store i64 %548, i64* %554, align 1
  store %struct.Memory* %loadMem_400773, %struct.Memory** %MEMORY
  %loadMem_400777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 15
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %562 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %561, i64 0, i64 1
  %XMM1.i564 = bitcast %union.VectorReg* %562 to %union.vec128_t*
  %563 = load i64, i64* %RBP.i563
  %564 = sub i64 %563, 16
  %565 = bitcast %union.vec128_t* %XMM1.i564 to i8*
  %566 = load i64, i64* %PC.i562
  %567 = add i64 %566, 5
  store i64 %567, i64* %PC.i562
  %568 = bitcast i8* %565 to double*
  %569 = load double, double* %568, align 1
  %570 = inttoptr i64 %564 to double*
  store double %569, double* %570
  store %struct.Memory* %loadMem_400777, %struct.Memory** %MEMORY
  %loadMem_40077c = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 15
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %577, i64 0, i64 0
  %YMM0.i561 = bitcast %union.VectorReg* %578 to %"class.std::bitset"*
  %579 = bitcast %"class.std::bitset"* %YMM0.i561 to i8*
  %580 = load i64, i64* %RBP.i560
  %581 = sub i64 %580, 24
  %582 = load i64, i64* %PC.i559
  %583 = add i64 %582, 5
  store i64 %583, i64* %PC.i559
  %584 = inttoptr i64 %581 to double*
  %585 = load double, double* %584
  %586 = bitcast i8* %579 to double*
  store double %585, double* %586, align 1
  %587 = getelementptr inbounds i8, i8* %579, i64 8
  %588 = bitcast i8* %587 to double*
  store double 0.000000e+00, double* %588, align 1
  store %struct.Memory* %loadMem_40077c, %struct.Memory** %MEMORY
  %loadMem1_400781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %591 to i64*
  %592 = load i64, i64* %PC.i558
  %593 = add i64 %592, -769
  %594 = load i64, i64* %PC.i558
  %595 = add i64 %594, 5
  %596 = load i64, i64* %PC.i558
  %597 = add i64 %596, 5
  store i64 %597, i64* %PC.i558
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %599 = load i64, i64* %598, align 8
  %600 = add i64 %599, -8
  %601 = inttoptr i64 %600 to i64*
  store i64 %595, i64* %601
  store i64 %600, i64* %598, align 8
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %593, i64* %602, align 8
  store %struct.Memory* %loadMem1_400781, %struct.Memory** %MEMORY
  %loadMem2_400781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400781 = load i64, i64* %3
  %603 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_400781)
  store %struct.Memory* %603, %struct.Memory** %MEMORY
  %loadMem_400786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 15
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %611 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %610, i64 0, i64 1
  %YMM1.i554 = bitcast %union.VectorReg* %611 to %"class.std::bitset"*
  %612 = bitcast %"class.std::bitset"* %YMM1.i554 to i8*
  %613 = load i64, i64* %RBP.i553
  %614 = sub i64 %613, 24
  %615 = load i64, i64* %PC.i552
  %616 = add i64 %615, 5
  store i64 %616, i64* %PC.i552
  %617 = inttoptr i64 %614 to double*
  %618 = load double, double* %617
  %619 = bitcast i8* %612 to double*
  store double %618, double* %619, align 1
  %620 = getelementptr inbounds i8, i8* %612, i64 8
  %621 = bitcast i8* %620 to double*
  store double 0.000000e+00, double* %621, align 1
  store %struct.Memory* %loadMem_400786, %struct.Memory** %MEMORY
  %loadMem_40078b = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %625, i64 0, i64 1
  %YMM1.i550 = bitcast %union.VectorReg* %626 to %"class.std::bitset"*
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %628 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %627, i64 0, i64 0
  %XMM0.i551 = bitcast %union.VectorReg* %628 to %union.vec128_t*
  %629 = bitcast %"class.std::bitset"* %YMM1.i550 to i8*
  %630 = bitcast %"class.std::bitset"* %YMM1.i550 to i8*
  %631 = bitcast %union.vec128_t* %XMM0.i551 to i8*
  %632 = load i64, i64* %PC.i549
  %633 = add i64 %632, 4
  store i64 %633, i64* %PC.i549
  %634 = bitcast i8* %630 to double*
  %635 = load double, double* %634, align 1
  %636 = getelementptr inbounds i8, i8* %630, i64 8
  %637 = bitcast i8* %636 to i64*
  %638 = load i64, i64* %637, align 1
  %639 = bitcast i8* %631 to double*
  %640 = load double, double* %639, align 1
  %641 = fsub double %635, %640
  %642 = bitcast i8* %629 to double*
  store double %641, double* %642, align 1
  %643 = getelementptr inbounds i8, i8* %629, i64 8
  %644 = bitcast i8* %643 to i64*
  store i64 %638, i64* %644, align 1
  store %struct.Memory* %loadMem_40078b, %struct.Memory** %MEMORY
  %loadMem_40078f = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 15
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %651, i64 0, i64 1
  %XMM1.i548 = bitcast %union.VectorReg* %652 to %union.vec128_t*
  %653 = load i64, i64* %RBP.i547
  %654 = sub i64 %653, 24
  %655 = bitcast %union.vec128_t* %XMM1.i548 to i8*
  %656 = load i64, i64* %PC.i546
  %657 = add i64 %656, 5
  store i64 %657, i64* %PC.i546
  %658 = bitcast i8* %655 to double*
  %659 = load double, double* %658, align 1
  %660 = inttoptr i64 %654 to double*
  store double %659, double* %660
  store %struct.Memory* %loadMem_40078f, %struct.Memory** %MEMORY
  %loadMem_400794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 15
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %666 to i64*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %668 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %667, i64 0, i64 0
  %YMM0.i545 = bitcast %union.VectorReg* %668 to %"class.std::bitset"*
  %669 = bitcast %"class.std::bitset"* %YMM0.i545 to i8*
  %670 = load i64, i64* %RBP.i544
  %671 = sub i64 %670, 8
  %672 = load i64, i64* %PC.i543
  %673 = add i64 %672, 5
  store i64 %673, i64* %PC.i543
  %674 = inttoptr i64 %671 to double*
  %675 = load double, double* %674
  %676 = bitcast i8* %669 to double*
  store double %675, double* %676, align 1
  %677 = getelementptr inbounds i8, i8* %669, i64 8
  %678 = bitcast i8* %677 to double*
  store double 0.000000e+00, double* %678, align 1
  store %struct.Memory* %loadMem_400794, %struct.Memory** %MEMORY
  %loadMem1_400799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %681 to i64*
  %682 = load i64, i64* %PC.i542
  %683 = add i64 %682, 1047
  %684 = load i64, i64* %PC.i542
  %685 = add i64 %684, 5
  %686 = load i64, i64* %PC.i542
  %687 = add i64 %686, 5
  store i64 %687, i64* %PC.i542
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %689 = load i64, i64* %688, align 8
  %690 = add i64 %689, -8
  %691 = inttoptr i64 %690 to i64*
  store i64 %685, i64* %691
  store i64 %690, i64* %688, align 8
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %683, i64* %692, align 8
  store %struct.Memory* %loadMem1_400799, %struct.Memory** %MEMORY
  %loadMem2_400799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400799 = load i64, i64* %3
  %call2_400799 = call %struct.Memory* @sub_400bb0.fade(%struct.State* %0, i64 %loadPC_400799, %struct.Memory* %loadMem2_400799)
  store %struct.Memory* %call2_400799, %struct.Memory** %MEMORY
  %loadMem_40079e = load %struct.Memory*, %struct.Memory** %MEMORY
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 33
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 15
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %700 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %699, i64 0, i64 0
  %XMM0.i541 = bitcast %union.VectorReg* %700 to %union.vec128_t*
  %701 = load i64, i64* %RBP.i540
  %702 = sub i64 %701, 48
  %703 = bitcast %union.vec128_t* %XMM0.i541 to i8*
  %704 = load i64, i64* %PC.i539
  %705 = add i64 %704, 5
  store i64 %705, i64* %PC.i539
  %706 = bitcast i8* %703 to double*
  %707 = load double, double* %706, align 1
  %708 = inttoptr i64 %702 to double*
  store double %707, double* %708
  store %struct.Memory* %loadMem_40079e, %struct.Memory** %MEMORY
  %loadMem_4007a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 15
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %716 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %715, i64 0, i64 0
  %YMM0.i538 = bitcast %union.VectorReg* %716 to %"class.std::bitset"*
  %717 = bitcast %"class.std::bitset"* %YMM0.i538 to i8*
  %718 = load i64, i64* %RBP.i537
  %719 = sub i64 %718, 16
  %720 = load i64, i64* %PC.i536
  %721 = add i64 %720, 5
  store i64 %721, i64* %PC.i536
  %722 = inttoptr i64 %719 to double*
  %723 = load double, double* %722
  %724 = bitcast i8* %717 to double*
  store double %723, double* %724, align 1
  %725 = getelementptr inbounds i8, i8* %717, i64 8
  %726 = bitcast i8* %725 to double*
  store double 0.000000e+00, double* %726, align 1
  store %struct.Memory* %loadMem_4007a3, %struct.Memory** %MEMORY
  %loadMem1_4007a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 33
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %PC.i535
  %731 = add i64 %730, 1032
  %732 = load i64, i64* %PC.i535
  %733 = add i64 %732, 5
  %734 = load i64, i64* %PC.i535
  %735 = add i64 %734, 5
  store i64 %735, i64* %PC.i535
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %737 = load i64, i64* %736, align 8
  %738 = add i64 %737, -8
  %739 = inttoptr i64 %738 to i64*
  store i64 %733, i64* %739
  store i64 %738, i64* %736, align 8
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %731, i64* %740, align 8
  store %struct.Memory* %loadMem1_4007a8, %struct.Memory** %MEMORY
  %loadMem2_4007a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4007a8 = load i64, i64* %3
  %call2_4007a8 = call %struct.Memory* @sub_400bb0.fade(%struct.State* %0, i64 %loadPC_4007a8, %struct.Memory* %loadMem2_4007a8)
  store %struct.Memory* %call2_4007a8, %struct.Memory** %MEMORY
  %loadMem_4007ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 15
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %748 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %747, i64 0, i64 0
  %XMM0.i534 = bitcast %union.VectorReg* %748 to %union.vec128_t*
  %749 = load i64, i64* %RBP.i533
  %750 = sub i64 %749, 56
  %751 = bitcast %union.vec128_t* %XMM0.i534 to i8*
  %752 = load i64, i64* %PC.i532
  %753 = add i64 %752, 5
  store i64 %753, i64* %PC.i532
  %754 = bitcast i8* %751 to double*
  %755 = load double, double* %754, align 1
  %756 = inttoptr i64 %750 to double*
  store double %755, double* %756
  store %struct.Memory* %loadMem_4007ad, %struct.Memory** %MEMORY
  %loadMem_4007b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 33
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %759 to i64*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 15
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %762 to i64*
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %764 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %763, i64 0, i64 0
  %YMM0.i531 = bitcast %union.VectorReg* %764 to %"class.std::bitset"*
  %765 = bitcast %"class.std::bitset"* %YMM0.i531 to i8*
  %766 = load i64, i64* %RBP.i530
  %767 = sub i64 %766, 24
  %768 = load i64, i64* %PC.i529
  %769 = add i64 %768, 5
  store i64 %769, i64* %PC.i529
  %770 = inttoptr i64 %767 to double*
  %771 = load double, double* %770
  %772 = bitcast i8* %765 to double*
  store double %771, double* %772, align 1
  %773 = getelementptr inbounds i8, i8* %765, i64 8
  %774 = bitcast i8* %773 to double*
  store double 0.000000e+00, double* %774, align 1
  store %struct.Memory* %loadMem_4007b2, %struct.Memory** %MEMORY
  %loadMem1_4007b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 33
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %777 to i64*
  %778 = load i64, i64* %PC.i528
  %779 = add i64 %778, 1017
  %780 = load i64, i64* %PC.i528
  %781 = add i64 %780, 5
  %782 = load i64, i64* %PC.i528
  %783 = add i64 %782, 5
  store i64 %783, i64* %PC.i528
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %785 = load i64, i64* %784, align 8
  %786 = add i64 %785, -8
  %787 = inttoptr i64 %786 to i64*
  store i64 %781, i64* %787
  store i64 %786, i64* %784, align 8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %779, i64* %788, align 8
  store %struct.Memory* %loadMem1_4007b7, %struct.Memory** %MEMORY
  %loadMem2_4007b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4007b7 = load i64, i64* %3
  %call2_4007b7 = call %struct.Memory* @sub_400bb0.fade(%struct.State* %0, i64 %loadPC_4007b7, %struct.Memory* %loadMem2_4007b7)
  store %struct.Memory* %call2_4007b7, %struct.Memory** %MEMORY
  %loadMem_4007bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 33
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 15
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %796 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %795, i64 0, i64 0
  %XMM0.i527 = bitcast %union.VectorReg* %796 to %union.vec128_t*
  %797 = load i64, i64* %RBP.i526
  %798 = sub i64 %797, 64
  %799 = bitcast %union.vec128_t* %XMM0.i527 to i8*
  %800 = load i64, i64* %PC.i525
  %801 = add i64 %800, 5
  store i64 %801, i64* %PC.i525
  %802 = bitcast i8* %799 to double*
  %803 = load double, double* %802, align 1
  %804 = inttoptr i64 %798 to double*
  store double %803, double* %804
  store %struct.Memory* %loadMem_4007bc, %struct.Memory** %MEMORY
  %loadMem_4007c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 33
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 5
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RCX.i523 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 15
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %813 to i64*
  %814 = load i64, i64* %RBP.i524
  %815 = sub i64 %814, 28
  %816 = load i64, i64* %PC.i522
  %817 = add i64 %816, 4
  store i64 %817, i64* %PC.i522
  %818 = inttoptr i64 %815 to i32*
  %819 = load i32, i32* %818
  %820 = sext i32 %819 to i64
  store i64 %820, i64* %RCX.i523, align 8
  store %struct.Memory* %loadMem_4007c1, %struct.Memory** %MEMORY
  %loadMem_4007c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 33
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %823 to i64*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 1
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 5
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %829 to i64*
  %830 = load i64, i64* %RCX.i521
  %831 = mul i64 %830, 4
  %832 = add i64 %831, 6300752
  %833 = load i64, i64* %PC.i519
  %834 = add i64 %833, 7
  store i64 %834, i64* %PC.i519
  %835 = inttoptr i64 %832 to i32*
  %836 = load i32, i32* %835
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RAX.i520, align 8
  store %struct.Memory* %loadMem_4007c5, %struct.Memory** %MEMORY
  %loadMem_4007cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 33
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 1
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 15
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %846 to i64*
  %847 = load i64, i64* %RAX.i517
  %848 = load i64, i64* %RBP.i518
  %849 = sub i64 %848, 32
  %850 = load i64, i64* %PC.i516
  %851 = add i64 %850, 3
  store i64 %851, i64* %PC.i516
  %852 = trunc i64 %847 to i32
  %853 = inttoptr i64 %849 to i32*
  %854 = load i32, i32* %853
  %855 = add i32 %854, %852
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RAX.i517, align 8
  %857 = icmp ult i32 %855, %852
  %858 = icmp ult i32 %855, %854
  %859 = or i1 %857, %858
  %860 = zext i1 %859 to i8
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %860, i8* %861, align 1
  %862 = and i32 %855, 255
  %863 = call i32 @llvm.ctpop.i32(i32 %862)
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %866, i8* %867, align 1
  %868 = xor i32 %854, %852
  %869 = xor i32 %868, %855
  %870 = lshr i32 %869, 4
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %872, i8* %873, align 1
  %874 = icmp eq i32 %855, 0
  %875 = zext i1 %874 to i8
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %875, i8* %876, align 1
  %877 = lshr i32 %855, 31
  %878 = trunc i32 %877 to i8
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %878, i8* %879, align 1
  %880 = lshr i32 %852, 31
  %881 = lshr i32 %854, 31
  %882 = xor i32 %877, %880
  %883 = xor i32 %877, %881
  %884 = add i32 %882, %883
  %885 = icmp eq i32 %884, 2
  %886 = zext i1 %885 to i8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %886, i8* %887, align 1
  store %struct.Memory* %loadMem_4007cc, %struct.Memory** %MEMORY
  %loadMem_4007cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %EAX.i514 = bitcast %union.anon* %893 to i32*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 15
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %896 to i64*
  %897 = load i64, i64* %RBP.i515
  %898 = sub i64 %897, 68
  %899 = load i32, i32* %EAX.i514
  %900 = zext i32 %899 to i64
  %901 = load i64, i64* %PC.i513
  %902 = add i64 %901, 3
  store i64 %902, i64* %PC.i513
  %903 = inttoptr i64 %898 to i32*
  store i32 %899, i32* %903
  store %struct.Memory* %loadMem_4007cf, %struct.Memory** %MEMORY
  %loadMem_4007d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 5
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RCX.i511 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 15
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %912 to i64*
  %913 = load i64, i64* %RBP.i512
  %914 = sub i64 %913, 68
  %915 = load i64, i64* %PC.i510
  %916 = add i64 %915, 4
  store i64 %916, i64* %PC.i510
  %917 = inttoptr i64 %914 to i32*
  %918 = load i32, i32* %917
  %919 = sext i32 %918 to i64
  store i64 %919, i64* %RCX.i511, align 8
  store %struct.Memory* %loadMem_4007d2, %struct.Memory** %MEMORY
  %loadMem_4007d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 1
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 5
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %928 to i64*
  %929 = load i64, i64* %RCX.i509
  %930 = mul i64 %929, 4
  %931 = add i64 %930, 6300752
  %932 = load i64, i64* %PC.i507
  %933 = add i64 %932, 7
  store i64 %933, i64* %PC.i507
  %934 = inttoptr i64 %931 to i32*
  %935 = load i32, i32* %934
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_4007d6, %struct.Memory** %MEMORY
  %loadMem_4007dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 33
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 1
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 15
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %RAX.i505
  %947 = load i64, i64* %RBP.i506
  %948 = sub i64 %947, 36
  %949 = load i64, i64* %PC.i504
  %950 = add i64 %949, 3
  store i64 %950, i64* %PC.i504
  %951 = trunc i64 %946 to i32
  %952 = inttoptr i64 %948 to i32*
  %953 = load i32, i32* %952
  %954 = add i32 %953, %951
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %RAX.i505, align 8
  %956 = icmp ult i32 %954, %951
  %957 = icmp ult i32 %954, %953
  %958 = or i1 %956, %957
  %959 = zext i1 %958 to i8
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %959, i8* %960, align 1
  %961 = and i32 %954, 255
  %962 = call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %965, i8* %966, align 1
  %967 = xor i32 %953, %951
  %968 = xor i32 %967, %954
  %969 = lshr i32 %968, 4
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %971, i8* %972, align 1
  %973 = icmp eq i32 %954, 0
  %974 = zext i1 %973 to i8
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %974, i8* %975, align 1
  %976 = lshr i32 %954, 31
  %977 = trunc i32 %976 to i8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %977, i8* %978, align 1
  %979 = lshr i32 %951, 31
  %980 = lshr i32 %953, 31
  %981 = xor i32 %976, %979
  %982 = xor i32 %976, %980
  %983 = add i32 %981, %982
  %984 = icmp eq i32 %983, 2
  %985 = zext i1 %984 to i8
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %985, i8* %986, align 1
  store %struct.Memory* %loadMem_4007dd, %struct.Memory** %MEMORY
  %loadMem_4007e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 1
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %EAX.i502 = bitcast %union.anon* %992 to i32*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 15
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %995 to i64*
  %996 = load i64, i64* %RBP.i503
  %997 = sub i64 %996, 72
  %998 = load i32, i32* %EAX.i502
  %999 = zext i32 %998 to i64
  %1000 = load i64, i64* %PC.i501
  %1001 = add i64 %1000, 3
  store i64 %1001, i64* %PC.i501
  %1002 = inttoptr i64 %997 to i32*
  store i32 %998, i32* %1002
  store %struct.Memory* %loadMem_4007e0, %struct.Memory** %MEMORY
  %loadMem_4007e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 1
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %1008 to i64*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 15
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %1011 to i64*
  %1012 = load i64, i64* %RBP.i500
  %1013 = sub i64 %1012, 68
  %1014 = load i64, i64* %PC.i498
  %1015 = add i64 %1014, 3
  store i64 %1015, i64* %PC.i498
  %1016 = inttoptr i64 %1013 to i32*
  %1017 = load i32, i32* %1016
  %1018 = zext i32 %1017 to i64
  store i64 %1018, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_4007e3, %struct.Memory** %MEMORY
  %loadMem_4007e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 33
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 1
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %1024 to i64*
  %1025 = load i64, i64* %RAX.i497
  %1026 = load i64, i64* %PC.i496
  %1027 = add i64 %1026, 3
  store i64 %1027, i64* %PC.i496
  %1028 = trunc i64 %1025 to i32
  %1029 = add i32 1, %1028
  %1030 = zext i32 %1029 to i64
  store i64 %1030, i64* %RAX.i497, align 8
  %1031 = icmp ult i32 %1029, %1028
  %1032 = icmp ult i32 %1029, 1
  %1033 = or i1 %1031, %1032
  %1034 = zext i1 %1033 to i8
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1034, i8* %1035, align 1
  %1036 = and i32 %1029, 255
  %1037 = call i32 @llvm.ctpop.i32(i32 %1036)
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = xor i8 %1039, 1
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1040, i8* %1041, align 1
  %1042 = xor i64 1, %1025
  %1043 = trunc i64 %1042 to i32
  %1044 = xor i32 %1043, %1029
  %1045 = lshr i32 %1044, 4
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1047, i8* %1048, align 1
  %1049 = icmp eq i32 %1029, 0
  %1050 = zext i1 %1049 to i8
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1050, i8* %1051, align 1
  %1052 = lshr i32 %1029, 31
  %1053 = trunc i32 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1053, i8* %1054, align 1
  %1055 = lshr i32 %1028, 31
  %1056 = xor i32 %1052, %1055
  %1057 = add i32 %1056, %1052
  %1058 = icmp eq i32 %1057, 2
  %1059 = zext i1 %1058 to i8
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1059, i8* %1060, align 1
  store %struct.Memory* %loadMem_4007e6, %struct.Memory** %MEMORY
  %loadMem_4007e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 1
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %EAX.i494 = bitcast %union.anon* %1066 to i32*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 5
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %1069 to i64*
  %1070 = load i32, i32* %EAX.i494
  %1071 = zext i32 %1070 to i64
  %1072 = load i64, i64* %PC.i493
  %1073 = add i64 %1072, 3
  store i64 %1073, i64* %PC.i493
  %1074 = shl i64 %1071, 32
  %1075 = ashr exact i64 %1074, 32
  store i64 %1075, i64* %RCX.i495, align 8
  store %struct.Memory* %loadMem_4007e9, %struct.Memory** %MEMORY
  %loadMem_4007ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 1
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 5
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %1084 to i64*
  %1085 = load i64, i64* %RCX.i492
  %1086 = mul i64 %1085, 4
  %1087 = add i64 %1086, 6300752
  %1088 = load i64, i64* %PC.i490
  %1089 = add i64 %1088, 7
  store i64 %1089, i64* %PC.i490
  %1090 = inttoptr i64 %1087 to i32*
  %1091 = load i32, i32* %1090
  %1092 = zext i32 %1091 to i64
  store i64 %1092, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_4007ec, %struct.Memory** %MEMORY
  %loadMem_4007f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 1
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 15
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %1101 to i64*
  %1102 = load i64, i64* %RAX.i488
  %1103 = load i64, i64* %RBP.i489
  %1104 = sub i64 %1103, 36
  %1105 = load i64, i64* %PC.i487
  %1106 = add i64 %1105, 3
  store i64 %1106, i64* %PC.i487
  %1107 = trunc i64 %1102 to i32
  %1108 = inttoptr i64 %1104 to i32*
  %1109 = load i32, i32* %1108
  %1110 = add i32 %1109, %1107
  %1111 = zext i32 %1110 to i64
  store i64 %1111, i64* %RAX.i488, align 8
  %1112 = icmp ult i32 %1110, %1107
  %1113 = icmp ult i32 %1110, %1109
  %1114 = or i1 %1112, %1113
  %1115 = zext i1 %1114 to i8
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1115, i8* %1116, align 1
  %1117 = and i32 %1110, 255
  %1118 = call i32 @llvm.ctpop.i32(i32 %1117)
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1121, i8* %1122, align 1
  %1123 = xor i32 %1109, %1107
  %1124 = xor i32 %1123, %1110
  %1125 = lshr i32 %1124, 4
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1127, i8* %1128, align 1
  %1129 = icmp eq i32 %1110, 0
  %1130 = zext i1 %1129 to i8
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1130, i8* %1131, align 1
  %1132 = lshr i32 %1110, 31
  %1133 = trunc i32 %1132 to i8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1133, i8* %1134, align 1
  %1135 = lshr i32 %1107, 31
  %1136 = lshr i32 %1109, 31
  %1137 = xor i32 %1132, %1135
  %1138 = xor i32 %1132, %1136
  %1139 = add i32 %1137, %1138
  %1140 = icmp eq i32 %1139, 2
  %1141 = zext i1 %1140 to i8
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1141, i8* %1142, align 1
  store %struct.Memory* %loadMem_4007f3, %struct.Memory** %MEMORY
  %loadMem_4007f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 33
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 1
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %EAX.i485 = bitcast %union.anon* %1148 to i32*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 15
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %1151 to i64*
  %1152 = load i64, i64* %RBP.i486
  %1153 = sub i64 %1152, 76
  %1154 = load i32, i32* %EAX.i485
  %1155 = zext i32 %1154 to i64
  %1156 = load i64, i64* %PC.i484
  %1157 = add i64 %1156, 3
  store i64 %1157, i64* %PC.i484
  %1158 = inttoptr i64 %1153 to i32*
  store i32 %1154, i32* %1158
  store %struct.Memory* %loadMem_4007f6, %struct.Memory** %MEMORY
  %loadMem_4007f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 1
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %1164 to i64*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 15
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %1167 to i64*
  %1168 = load i64, i64* %RBP.i483
  %1169 = sub i64 %1168, 28
  %1170 = load i64, i64* %PC.i481
  %1171 = add i64 %1170, 3
  store i64 %1171, i64* %PC.i481
  %1172 = inttoptr i64 %1169 to i32*
  %1173 = load i32, i32* %1172
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RAX.i482, align 8
  store %struct.Memory* %loadMem_4007f9, %struct.Memory** %MEMORY
  %loadMem_4007fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 1
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %1180 to i64*
  %1181 = load i64, i64* %RAX.i480
  %1182 = load i64, i64* %PC.i479
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %PC.i479
  %1184 = trunc i64 %1181 to i32
  %1185 = add i32 1, %1184
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RAX.i480, align 8
  %1187 = icmp ult i32 %1185, %1184
  %1188 = icmp ult i32 %1185, 1
  %1189 = or i1 %1187, %1188
  %1190 = zext i1 %1189 to i8
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1190, i8* %1191, align 1
  %1192 = and i32 %1185, 255
  %1193 = call i32 @llvm.ctpop.i32(i32 %1192)
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  %1196 = xor i8 %1195, 1
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1196, i8* %1197, align 1
  %1198 = xor i64 1, %1181
  %1199 = trunc i64 %1198 to i32
  %1200 = xor i32 %1199, %1185
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1203, i8* %1204, align 1
  %1205 = icmp eq i32 %1185, 0
  %1206 = zext i1 %1205 to i8
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1206, i8* %1207, align 1
  %1208 = lshr i32 %1185, 31
  %1209 = trunc i32 %1208 to i8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1209, i8* %1210, align 1
  %1211 = lshr i32 %1184, 31
  %1212 = xor i32 %1208, %1211
  %1213 = add i32 %1212, %1208
  %1214 = icmp eq i32 %1213, 2
  %1215 = zext i1 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1215, i8* %1216, align 1
  store %struct.Memory* %loadMem_4007fc, %struct.Memory** %MEMORY
  %loadMem_4007ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 33
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 1
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %EAX.i477 = bitcast %union.anon* %1222 to i32*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 5
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %RCX.i478 = bitcast %union.anon* %1225 to i64*
  %1226 = load i32, i32* %EAX.i477
  %1227 = zext i32 %1226 to i64
  %1228 = load i64, i64* %PC.i476
  %1229 = add i64 %1228, 3
  store i64 %1229, i64* %PC.i476
  %1230 = shl i64 %1227, 32
  %1231 = ashr exact i64 %1230, 32
  store i64 %1231, i64* %RCX.i478, align 8
  store %struct.Memory* %loadMem_4007ff, %struct.Memory** %MEMORY
  %loadMem_400802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 1
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 5
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %1240 to i64*
  %1241 = load i64, i64* %RCX.i475
  %1242 = mul i64 %1241, 4
  %1243 = add i64 %1242, 6300752
  %1244 = load i64, i64* %PC.i473
  %1245 = add i64 %1244, 7
  store i64 %1245, i64* %PC.i473
  %1246 = inttoptr i64 %1243 to i32*
  %1247 = load i32, i32* %1246
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_400802, %struct.Memory** %MEMORY
  %loadMem_400809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 1
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %1254 to i64*
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 15
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %1257 to i64*
  %1258 = load i64, i64* %RAX.i471
  %1259 = load i64, i64* %RBP.i472
  %1260 = sub i64 %1259, 32
  %1261 = load i64, i64* %PC.i470
  %1262 = add i64 %1261, 3
  store i64 %1262, i64* %PC.i470
  %1263 = trunc i64 %1258 to i32
  %1264 = inttoptr i64 %1260 to i32*
  %1265 = load i32, i32* %1264
  %1266 = add i32 %1265, %1263
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RAX.i471, align 8
  %1268 = icmp ult i32 %1266, %1263
  %1269 = icmp ult i32 %1266, %1265
  %1270 = or i1 %1268, %1269
  %1271 = zext i1 %1270 to i8
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1271, i8* %1272, align 1
  %1273 = and i32 %1266, 255
  %1274 = call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1277, i8* %1278, align 1
  %1279 = xor i32 %1265, %1263
  %1280 = xor i32 %1279, %1266
  %1281 = lshr i32 %1280, 4
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1283, i8* %1284, align 1
  %1285 = icmp eq i32 %1266, 0
  %1286 = zext i1 %1285 to i8
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1286, i8* %1287, align 1
  %1288 = lshr i32 %1266, 31
  %1289 = trunc i32 %1288 to i8
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1289, i8* %1290, align 1
  %1291 = lshr i32 %1263, 31
  %1292 = lshr i32 %1265, 31
  %1293 = xor i32 %1288, %1291
  %1294 = xor i32 %1288, %1292
  %1295 = add i32 %1293, %1294
  %1296 = icmp eq i32 %1295, 2
  %1297 = zext i1 %1296 to i8
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1297, i8* %1298, align 1
  store %struct.Memory* %loadMem_400809, %struct.Memory** %MEMORY
  %loadMem_40080c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 1
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %EAX.i468 = bitcast %union.anon* %1304 to i32*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 15
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %1307 to i64*
  %1308 = load i64, i64* %RBP.i469
  %1309 = sub i64 %1308, 80
  %1310 = load i32, i32* %EAX.i468
  %1311 = zext i32 %1310 to i64
  %1312 = load i64, i64* %PC.i467
  %1313 = add i64 %1312, 3
  store i64 %1313, i64* %PC.i467
  %1314 = inttoptr i64 %1309 to i32*
  store i32 %1310, i32* %1314
  store %struct.Memory* %loadMem_40080c, %struct.Memory** %MEMORY
  %loadMem_40080f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 5
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 15
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %1323 to i64*
  %1324 = load i64, i64* %RBP.i466
  %1325 = sub i64 %1324, 80
  %1326 = load i64, i64* %PC.i464
  %1327 = add i64 %1326, 4
  store i64 %1327, i64* %PC.i464
  %1328 = inttoptr i64 %1325 to i32*
  %1329 = load i32, i32* %1328
  %1330 = sext i32 %1329 to i64
  store i64 %1330, i64* %RCX.i465, align 8
  store %struct.Memory* %loadMem_40080f, %struct.Memory** %MEMORY
  %loadMem_400813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 33
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1333 to i64*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 1
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %1336 to i64*
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 5
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %1339 to i64*
  %1340 = load i64, i64* %RCX.i463
  %1341 = mul i64 %1340, 4
  %1342 = add i64 %1341, 6300752
  %1343 = load i64, i64* %PC.i461
  %1344 = add i64 %1343, 7
  store i64 %1344, i64* %PC.i461
  %1345 = inttoptr i64 %1342 to i32*
  %1346 = load i32, i32* %1345
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_400813, %struct.Memory** %MEMORY
  %loadMem_40081a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 33
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 1
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 15
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %1356 to i64*
  %1357 = load i64, i64* %RAX.i459
  %1358 = load i64, i64* %RBP.i460
  %1359 = sub i64 %1358, 36
  %1360 = load i64, i64* %PC.i458
  %1361 = add i64 %1360, 3
  store i64 %1361, i64* %PC.i458
  %1362 = trunc i64 %1357 to i32
  %1363 = inttoptr i64 %1359 to i32*
  %1364 = load i32, i32* %1363
  %1365 = add i32 %1364, %1362
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RAX.i459, align 8
  %1367 = icmp ult i32 %1365, %1362
  %1368 = icmp ult i32 %1365, %1364
  %1369 = or i1 %1367, %1368
  %1370 = zext i1 %1369 to i8
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1370, i8* %1371, align 1
  %1372 = and i32 %1365, 255
  %1373 = call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1376, i8* %1377, align 1
  %1378 = xor i32 %1364, %1362
  %1379 = xor i32 %1378, %1365
  %1380 = lshr i32 %1379, 4
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1382, i8* %1383, align 1
  %1384 = icmp eq i32 %1365, 0
  %1385 = zext i1 %1384 to i8
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1385, i8* %1386, align 1
  %1387 = lshr i32 %1365, 31
  %1388 = trunc i32 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1388, i8* %1389, align 1
  %1390 = lshr i32 %1362, 31
  %1391 = lshr i32 %1364, 31
  %1392 = xor i32 %1387, %1390
  %1393 = xor i32 %1387, %1391
  %1394 = add i32 %1392, %1393
  %1395 = icmp eq i32 %1394, 2
  %1396 = zext i1 %1395 to i8
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1396, i8* %1397, align 1
  store %struct.Memory* %loadMem_40081a, %struct.Memory** %MEMORY
  %loadMem_40081d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 33
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1400 to i64*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 1
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %EAX.i456 = bitcast %union.anon* %1403 to i32*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 15
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %1406 to i64*
  %1407 = load i64, i64* %RBP.i457
  %1408 = sub i64 %1407, 84
  %1409 = load i32, i32* %EAX.i456
  %1410 = zext i32 %1409 to i64
  %1411 = load i64, i64* %PC.i455
  %1412 = add i64 %1411, 3
  store i64 %1412, i64* %PC.i455
  %1413 = inttoptr i64 %1408 to i32*
  store i32 %1409, i32* %1413
  store %struct.Memory* %loadMem_40081d, %struct.Memory** %MEMORY
  %loadMem_400820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 1
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 15
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %1422 to i64*
  %1423 = load i64, i64* %RBP.i454
  %1424 = sub i64 %1423, 80
  %1425 = load i64, i64* %PC.i452
  %1426 = add i64 %1425, 3
  store i64 %1426, i64* %PC.i452
  %1427 = inttoptr i64 %1424 to i32*
  %1428 = load i32, i32* %1427
  %1429 = zext i32 %1428 to i64
  store i64 %1429, i64* %RAX.i453, align 8
  store %struct.Memory* %loadMem_400820, %struct.Memory** %MEMORY
  %loadMem_400823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 33
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 1
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %1435 to i64*
  %1436 = load i64, i64* %RAX.i451
  %1437 = load i64, i64* %PC.i450
  %1438 = add i64 %1437, 3
  store i64 %1438, i64* %PC.i450
  %1439 = trunc i64 %1436 to i32
  %1440 = add i32 1, %1439
  %1441 = zext i32 %1440 to i64
  store i64 %1441, i64* %RAX.i451, align 8
  %1442 = icmp ult i32 %1440, %1439
  %1443 = icmp ult i32 %1440, 1
  %1444 = or i1 %1442, %1443
  %1445 = zext i1 %1444 to i8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1445, i8* %1446, align 1
  %1447 = and i32 %1440, 255
  %1448 = call i32 @llvm.ctpop.i32(i32 %1447)
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  %1451 = xor i8 %1450, 1
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1451, i8* %1452, align 1
  %1453 = xor i64 1, %1436
  %1454 = trunc i64 %1453 to i32
  %1455 = xor i32 %1454, %1440
  %1456 = lshr i32 %1455, 4
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1458, i8* %1459, align 1
  %1460 = icmp eq i32 %1440, 0
  %1461 = zext i1 %1460 to i8
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1461, i8* %1462, align 1
  %1463 = lshr i32 %1440, 31
  %1464 = trunc i32 %1463 to i8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1464, i8* %1465, align 1
  %1466 = lshr i32 %1439, 31
  %1467 = xor i32 %1463, %1466
  %1468 = add i32 %1467, %1463
  %1469 = icmp eq i32 %1468, 2
  %1470 = zext i1 %1469 to i8
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1470, i8* %1471, align 1
  store %struct.Memory* %loadMem_400823, %struct.Memory** %MEMORY
  %loadMem_400826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 33
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1474 to i64*
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 1
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %EAX.i448 = bitcast %union.anon* %1477 to i32*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 5
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %1480 to i64*
  %1481 = load i32, i32* %EAX.i448
  %1482 = zext i32 %1481 to i64
  %1483 = load i64, i64* %PC.i447
  %1484 = add i64 %1483, 3
  store i64 %1484, i64* %PC.i447
  %1485 = shl i64 %1482, 32
  %1486 = ashr exact i64 %1485, 32
  store i64 %1486, i64* %RCX.i449, align 8
  store %struct.Memory* %loadMem_400826, %struct.Memory** %MEMORY
  %loadMem_400829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 33
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 1
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 5
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %1495 to i64*
  %1496 = load i64, i64* %RCX.i446
  %1497 = mul i64 %1496, 4
  %1498 = add i64 %1497, 6300752
  %1499 = load i64, i64* %PC.i444
  %1500 = add i64 %1499, 7
  store i64 %1500, i64* %PC.i444
  %1501 = inttoptr i64 %1498 to i32*
  %1502 = load i32, i32* %1501
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RAX.i445, align 8
  store %struct.Memory* %loadMem_400829, %struct.Memory** %MEMORY
  %loadMem_400830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 33
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 1
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 15
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %1512 to i64*
  %1513 = load i64, i64* %RAX.i442
  %1514 = load i64, i64* %RBP.i443
  %1515 = sub i64 %1514, 36
  %1516 = load i64, i64* %PC.i441
  %1517 = add i64 %1516, 3
  store i64 %1517, i64* %PC.i441
  %1518 = trunc i64 %1513 to i32
  %1519 = inttoptr i64 %1515 to i32*
  %1520 = load i32, i32* %1519
  %1521 = add i32 %1520, %1518
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RAX.i442, align 8
  %1523 = icmp ult i32 %1521, %1518
  %1524 = icmp ult i32 %1521, %1520
  %1525 = or i1 %1523, %1524
  %1526 = zext i1 %1525 to i8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1526, i8* %1527, align 1
  %1528 = and i32 %1521, 255
  %1529 = call i32 @llvm.ctpop.i32(i32 %1528)
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = xor i8 %1531, 1
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1532, i8* %1533, align 1
  %1534 = xor i32 %1520, %1518
  %1535 = xor i32 %1534, %1521
  %1536 = lshr i32 %1535, 4
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1538, i8* %1539, align 1
  %1540 = icmp eq i32 %1521, 0
  %1541 = zext i1 %1540 to i8
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1541, i8* %1542, align 1
  %1543 = lshr i32 %1521, 31
  %1544 = trunc i32 %1543 to i8
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1544, i8* %1545, align 1
  %1546 = lshr i32 %1518, 31
  %1547 = lshr i32 %1520, 31
  %1548 = xor i32 %1543, %1546
  %1549 = xor i32 %1543, %1547
  %1550 = add i32 %1548, %1549
  %1551 = icmp eq i32 %1550, 2
  %1552 = zext i1 %1551 to i8
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1552, i8* %1553, align 1
  store %struct.Memory* %loadMem_400830, %struct.Memory** %MEMORY
  %loadMem_400833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 33
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %1556 to i64*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 1
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %EAX.i439 = bitcast %union.anon* %1559 to i32*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 15
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %1562 to i64*
  %1563 = load i64, i64* %RBP.i440
  %1564 = sub i64 %1563, 88
  %1565 = load i32, i32* %EAX.i439
  %1566 = zext i32 %1565 to i64
  %1567 = load i64, i64* %PC.i438
  %1568 = add i64 %1567, 3
  store i64 %1568, i64* %PC.i438
  %1569 = inttoptr i64 %1564 to i32*
  store i32 %1565, i32* %1569
  store %struct.Memory* %loadMem_400833, %struct.Memory** %MEMORY
  %loadMem_400836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 33
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 15
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1577 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1576, i64 0, i64 0
  %YMM0.i437 = bitcast %union.VectorReg* %1577 to %"class.std::bitset"*
  %1578 = bitcast %"class.std::bitset"* %YMM0.i437 to i8*
  %1579 = load i64, i64* %RBP.i436
  %1580 = sub i64 %1579, 64
  %1581 = load i64, i64* %PC.i435
  %1582 = add i64 %1581, 5
  store i64 %1582, i64* %PC.i435
  %1583 = inttoptr i64 %1580 to double*
  %1584 = load double, double* %1583
  %1585 = bitcast i8* %1578 to double*
  store double %1584, double* %1585, align 1
  %1586 = getelementptr inbounds i8, i8* %1578, i64 8
  %1587 = bitcast i8* %1586 to double*
  store double 0.000000e+00, double* %1587, align 1
  store %struct.Memory* %loadMem_400836, %struct.Memory** %MEMORY
  %loadMem_40083b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 15
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1594, i64 0, i64 1
  %YMM1.i434 = bitcast %union.VectorReg* %1595 to %"class.std::bitset"*
  %1596 = bitcast %"class.std::bitset"* %YMM1.i434 to i8*
  %1597 = load i64, i64* %RBP.i433
  %1598 = sub i64 %1597, 56
  %1599 = load i64, i64* %PC.i432
  %1600 = add i64 %1599, 5
  store i64 %1600, i64* %PC.i432
  %1601 = inttoptr i64 %1598 to double*
  %1602 = load double, double* %1601
  %1603 = bitcast i8* %1596 to double*
  store double %1602, double* %1603, align 1
  %1604 = getelementptr inbounds i8, i8* %1596, i64 8
  %1605 = bitcast i8* %1604 to double*
  store double 0.000000e+00, double* %1605, align 1
  store %struct.Memory* %loadMem_40083b, %struct.Memory** %MEMORY
  %loadMem_400840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 15
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1613 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1612, i64 0, i64 2
  %YMM2.i431 = bitcast %union.VectorReg* %1613 to %"class.std::bitset"*
  %1614 = bitcast %"class.std::bitset"* %YMM2.i431 to i8*
  %1615 = load i64, i64* %RBP.i430
  %1616 = sub i64 %1615, 48
  %1617 = load i64, i64* %PC.i429
  %1618 = add i64 %1617, 5
  store i64 %1618, i64* %PC.i429
  %1619 = inttoptr i64 %1616 to double*
  %1620 = load double, double* %1619
  %1621 = bitcast i8* %1614 to double*
  store double %1620, double* %1621, align 1
  %1622 = getelementptr inbounds i8, i8* %1614, i64 8
  %1623 = bitcast i8* %1622 to double*
  store double 0.000000e+00, double* %1623, align 1
  store %struct.Memory* %loadMem_400840, %struct.Memory** %MEMORY
  %loadMem_400845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 5
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 15
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %RBP.i428
  %1634 = sub i64 %1633, 72
  %1635 = load i64, i64* %PC.i426
  %1636 = add i64 %1635, 4
  store i64 %1636, i64* %PC.i426
  %1637 = inttoptr i64 %1634 to i32*
  %1638 = load i32, i32* %1637
  %1639 = sext i32 %1638 to i64
  store i64 %1639, i64* %RCX.i427, align 8
  store %struct.Memory* %loadMem_400845, %struct.Memory** %MEMORY
  %loadMem_400849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 5
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 11
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %RDI.i425 = bitcast %union.anon* %1648 to i64*
  %1649 = load i64, i64* %RCX.i424
  %1650 = mul i64 %1649, 4
  %1651 = add i64 %1650, 6300752
  %1652 = load i64, i64* %PC.i423
  %1653 = add i64 %1652, 7
  store i64 %1653, i64* %PC.i423
  %1654 = inttoptr i64 %1651 to i32*
  %1655 = load i32, i32* %1654
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RDI.i425, align 8
  store %struct.Memory* %loadMem_400849, %struct.Memory** %MEMORY
  %loadMem_400850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 15
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1664 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1663, i64 0, i64 3
  %YMM3.i422 = bitcast %union.VectorReg* %1664 to %"class.std::bitset"*
  %1665 = bitcast %"class.std::bitset"* %YMM3.i422 to i8*
  %1666 = load i64, i64* %RBP.i421
  %1667 = sub i64 %1666, 8
  %1668 = load i64, i64* %PC.i420
  %1669 = add i64 %1668, 5
  store i64 %1669, i64* %PC.i420
  %1670 = inttoptr i64 %1667 to double*
  %1671 = load double, double* %1670
  %1672 = bitcast i8* %1665 to double*
  store double %1671, double* %1672, align 1
  %1673 = getelementptr inbounds i8, i8* %1665, i64 8
  %1674 = bitcast i8* %1673 to double*
  store double 0.000000e+00, double* %1674, align 1
  store %struct.Memory* %loadMem_400850, %struct.Memory** %MEMORY
  %loadMem_400855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 33
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 15
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1682 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1681, i64 0, i64 4
  %YMM4.i419 = bitcast %union.VectorReg* %1682 to %"class.std::bitset"*
  %1683 = bitcast %"class.std::bitset"* %YMM4.i419 to i8*
  %1684 = load i64, i64* %RBP.i418
  %1685 = sub i64 %1684, 16
  %1686 = load i64, i64* %PC.i417
  %1687 = add i64 %1686, 5
  store i64 %1687, i64* %PC.i417
  %1688 = inttoptr i64 %1685 to double*
  %1689 = load double, double* %1688
  %1690 = bitcast i8* %1683 to double*
  store double %1689, double* %1690, align 1
  %1691 = getelementptr inbounds i8, i8* %1683, i64 8
  %1692 = bitcast i8* %1691 to double*
  store double 0.000000e+00, double* %1692, align 1
  store %struct.Memory* %loadMem_400855, %struct.Memory** %MEMORY
  %loadMem_40085a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 33
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 15
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1700 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1699, i64 0, i64 5
  %YMM5.i416 = bitcast %union.VectorReg* %1700 to %"class.std::bitset"*
  %1701 = bitcast %"class.std::bitset"* %YMM5.i416 to i8*
  %1702 = load i64, i64* %RBP.i415
  %1703 = sub i64 %1702, 24
  %1704 = load i64, i64* %PC.i414
  %1705 = add i64 %1704, 5
  store i64 %1705, i64* %PC.i414
  %1706 = inttoptr i64 %1703 to double*
  %1707 = load double, double* %1706
  %1708 = bitcast i8* %1701 to double*
  store double %1707, double* %1708, align 1
  %1709 = getelementptr inbounds i8, i8* %1701, i64 8
  %1710 = bitcast i8* %1709 to double*
  store double 0.000000e+00, double* %1710, align 1
  store %struct.Memory* %loadMem_40085a, %struct.Memory** %MEMORY
  %loadMem_40085f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 33
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1713 to i64*
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 15
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1718 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1717, i64 0, i64 0
  %XMM0.i413 = bitcast %union.VectorReg* %1718 to %union.vec128_t*
  %1719 = load i64, i64* %RBP.i412
  %1720 = sub i64 %1719, 96
  %1721 = bitcast %union.vec128_t* %XMM0.i413 to i8*
  %1722 = load i64, i64* %PC.i411
  %1723 = add i64 %1722, 5
  store i64 %1723, i64* %PC.i411
  %1724 = bitcast i8* %1721 to double*
  %1725 = load double, double* %1724, align 1
  %1726 = inttoptr i64 %1720 to double*
  store double %1725, double* %1726
  store %struct.Memory* %loadMem_40085f, %struct.Memory** %MEMORY
  %loadMem_400864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 33
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1731 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1730, i64 0, i64 0
  %YMM0.i409 = bitcast %union.VectorReg* %1731 to %"class.std::bitset"*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1733 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1732, i64 0, i64 3
  %XMM3.i410 = bitcast %union.VectorReg* %1733 to %union.vec128_t*
  %1734 = bitcast %"class.std::bitset"* %YMM0.i409 to i8*
  %1735 = bitcast %union.vec128_t* %XMM3.i410 to i8*
  %1736 = load i64, i64* %PC.i408
  %1737 = add i64 %1736, 3
  store i64 %1737, i64* %PC.i408
  %1738 = bitcast i8* %1735 to <2 x i32>*
  %1739 = load <2 x i32>, <2 x i32>* %1738, align 1
  %1740 = getelementptr inbounds i8, i8* %1735, i64 8
  %1741 = bitcast i8* %1740 to <2 x i32>*
  %1742 = load <2 x i32>, <2 x i32>* %1741, align 1
  %1743 = extractelement <2 x i32> %1739, i32 0
  %1744 = bitcast i8* %1734 to i32*
  store i32 %1743, i32* %1744, align 1
  %1745 = extractelement <2 x i32> %1739, i32 1
  %1746 = getelementptr inbounds i8, i8* %1734, i64 4
  %1747 = bitcast i8* %1746 to i32*
  store i32 %1745, i32* %1747, align 1
  %1748 = extractelement <2 x i32> %1742, i32 0
  %1749 = getelementptr inbounds i8, i8* %1734, i64 8
  %1750 = bitcast i8* %1749 to i32*
  store i32 %1748, i32* %1750, align 1
  %1751 = extractelement <2 x i32> %1742, i32 1
  %1752 = getelementptr inbounds i8, i8* %1734, i64 12
  %1753 = bitcast i8* %1752 to i32*
  store i32 %1751, i32* %1753, align 1
  store %struct.Memory* %loadMem_400864, %struct.Memory** %MEMORY
  %loadMem_400867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 15
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1761 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1760, i64 0, i64 1
  %XMM1.i407 = bitcast %union.VectorReg* %1761 to %union.vec128_t*
  %1762 = load i64, i64* %RBP.i406
  %1763 = sub i64 %1762, 104
  %1764 = bitcast %union.vec128_t* %XMM1.i407 to i8*
  %1765 = load i64, i64* %PC.i405
  %1766 = add i64 %1765, 5
  store i64 %1766, i64* %PC.i405
  %1767 = bitcast i8* %1764 to double*
  %1768 = load double, double* %1767, align 1
  %1769 = inttoptr i64 %1763 to double*
  store double %1768, double* %1769
  store %struct.Memory* %loadMem_400867, %struct.Memory** %MEMORY
  %loadMem_40086c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1774 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1773, i64 0, i64 1
  %YMM1.i403 = bitcast %union.VectorReg* %1774 to %"class.std::bitset"*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1776 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1775, i64 0, i64 4
  %XMM4.i404 = bitcast %union.VectorReg* %1776 to %union.vec128_t*
  %1777 = bitcast %"class.std::bitset"* %YMM1.i403 to i8*
  %1778 = bitcast %union.vec128_t* %XMM4.i404 to i8*
  %1779 = load i64, i64* %PC.i402
  %1780 = add i64 %1779, 3
  store i64 %1780, i64* %PC.i402
  %1781 = bitcast i8* %1778 to <2 x i32>*
  %1782 = load <2 x i32>, <2 x i32>* %1781, align 1
  %1783 = getelementptr inbounds i8, i8* %1778, i64 8
  %1784 = bitcast i8* %1783 to <2 x i32>*
  %1785 = load <2 x i32>, <2 x i32>* %1784, align 1
  %1786 = extractelement <2 x i32> %1782, i32 0
  %1787 = bitcast i8* %1777 to i32*
  store i32 %1786, i32* %1787, align 1
  %1788 = extractelement <2 x i32> %1782, i32 1
  %1789 = getelementptr inbounds i8, i8* %1777, i64 4
  %1790 = bitcast i8* %1789 to i32*
  store i32 %1788, i32* %1790, align 1
  %1791 = extractelement <2 x i32> %1785, i32 0
  %1792 = getelementptr inbounds i8, i8* %1777, i64 8
  %1793 = bitcast i8* %1792 to i32*
  store i32 %1791, i32* %1793, align 1
  %1794 = extractelement <2 x i32> %1785, i32 1
  %1795 = getelementptr inbounds i8, i8* %1777, i64 12
  %1796 = bitcast i8* %1795 to i32*
  store i32 %1794, i32* %1796, align 1
  store %struct.Memory* %loadMem_40086c, %struct.Memory** %MEMORY
  %loadMem_40086f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 15
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1804 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1803, i64 0, i64 2
  %XMM2.i401 = bitcast %union.VectorReg* %1804 to %union.vec128_t*
  %1805 = load i64, i64* %RBP.i400
  %1806 = sub i64 %1805, 112
  %1807 = bitcast %union.vec128_t* %XMM2.i401 to i8*
  %1808 = load i64, i64* %PC.i399
  %1809 = add i64 %1808, 5
  store i64 %1809, i64* %PC.i399
  %1810 = bitcast i8* %1807 to double*
  %1811 = load double, double* %1810, align 1
  %1812 = inttoptr i64 %1806 to double*
  store double %1811, double* %1812
  store %struct.Memory* %loadMem_40086f, %struct.Memory** %MEMORY
  %loadMem_400874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1817 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1816, i64 0, i64 2
  %YMM2.i397 = bitcast %union.VectorReg* %1817 to %"class.std::bitset"*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1819 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1818, i64 0, i64 5
  %XMM5.i398 = bitcast %union.VectorReg* %1819 to %union.vec128_t*
  %1820 = bitcast %"class.std::bitset"* %YMM2.i397 to i8*
  %1821 = bitcast %union.vec128_t* %XMM5.i398 to i8*
  %1822 = load i64, i64* %PC.i396
  %1823 = add i64 %1822, 3
  store i64 %1823, i64* %PC.i396
  %1824 = bitcast i8* %1821 to <2 x i32>*
  %1825 = load <2 x i32>, <2 x i32>* %1824, align 1
  %1826 = getelementptr inbounds i8, i8* %1821, i64 8
  %1827 = bitcast i8* %1826 to <2 x i32>*
  %1828 = load <2 x i32>, <2 x i32>* %1827, align 1
  %1829 = extractelement <2 x i32> %1825, i32 0
  %1830 = bitcast i8* %1820 to i32*
  store i32 %1829, i32* %1830, align 1
  %1831 = extractelement <2 x i32> %1825, i32 1
  %1832 = getelementptr inbounds i8, i8* %1820, i64 4
  %1833 = bitcast i8* %1832 to i32*
  store i32 %1831, i32* %1833, align 1
  %1834 = extractelement <2 x i32> %1828, i32 0
  %1835 = getelementptr inbounds i8, i8* %1820, i64 8
  %1836 = bitcast i8* %1835 to i32*
  store i32 %1834, i32* %1836, align 1
  %1837 = extractelement <2 x i32> %1828, i32 1
  %1838 = getelementptr inbounds i8, i8* %1820, i64 12
  %1839 = bitcast i8* %1838 to i32*
  store i32 %1837, i32* %1839, align 1
  store %struct.Memory* %loadMem_400874, %struct.Memory** %MEMORY
  %loadMem1_400877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 33
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %1842 to i64*
  %1843 = load i64, i64* %PC.i395
  %1844 = add i64 %1843, 905
  %1845 = load i64, i64* %PC.i395
  %1846 = add i64 %1845, 5
  %1847 = load i64, i64* %PC.i395
  %1848 = add i64 %1847, 5
  store i64 %1848, i64* %PC.i395
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1850 = load i64, i64* %1849, align 8
  %1851 = add i64 %1850, -8
  %1852 = inttoptr i64 %1851 to i64*
  store i64 %1846, i64* %1852
  store i64 %1851, i64* %1849, align 8
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1844, i64* %1853, align 8
  store %struct.Memory* %loadMem1_400877, %struct.Memory** %MEMORY
  %loadMem2_400877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400877 = load i64, i64* %3
  %call2_400877 = call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %loadPC_400877, %struct.Memory* %loadMem2_400877)
  store %struct.Memory* %call2_400877, %struct.Memory** %MEMORY
  %loadMem_40087c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1858 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1857, i64 0, i64 1
  %YMM1.i394 = bitcast %union.VectorReg* %1858 to %"class.std::bitset"*
  %1859 = bitcast %"class.std::bitset"* %YMM1.i394 to i8*
  %1860 = load i64, i64* %PC.i393
  %1861 = add i64 %1860, ptrtoint (%G_0x5dc__rip__type* @G_0x5dc__rip_ to i64)
  %1862 = load i64, i64* %PC.i393
  %1863 = add i64 %1862, 8
  store i64 %1863, i64* %PC.i393
  %1864 = inttoptr i64 %1861 to double*
  %1865 = load double, double* %1864
  %1866 = bitcast i8* %1859 to double*
  store double %1865, double* %1866, align 1
  %1867 = getelementptr inbounds i8, i8* %1859, i64 8
  %1868 = bitcast i8* %1867 to double*
  store double 0.000000e+00, double* %1868, align 1
  store %struct.Memory* %loadMem_40087c, %struct.Memory** %MEMORY
  %loadMem_400884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 5
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %1874 to i64*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 15
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %1877 to i64*
  %1878 = load i64, i64* %RBP.i392
  %1879 = sub i64 %1878, 84
  %1880 = load i64, i64* %PC.i390
  %1881 = add i64 %1880, 4
  store i64 %1881, i64* %PC.i390
  %1882 = inttoptr i64 %1879 to i32*
  %1883 = load i32, i32* %1882
  %1884 = sext i32 %1883 to i64
  store i64 %1884, i64* %RCX.i391, align 8
  store %struct.Memory* %loadMem_400884, %struct.Memory** %MEMORY
  %loadMem_400888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 33
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1887 to i64*
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 5
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %1890 to i64*
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 11
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %RDI.i389 = bitcast %union.anon* %1893 to i64*
  %1894 = load i64, i64* %RCX.i388
  %1895 = mul i64 %1894, 4
  %1896 = add i64 %1895, 6300752
  %1897 = load i64, i64* %PC.i387
  %1898 = add i64 %1897, 7
  store i64 %1898, i64* %PC.i387
  %1899 = inttoptr i64 %1896 to i32*
  %1900 = load i32, i32* %1899
  %1901 = zext i32 %1900 to i64
  store i64 %1901, i64* %RDI.i389, align 8
  store %struct.Memory* %loadMem_400888, %struct.Memory** %MEMORY
  %loadMem_40088f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 33
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1904 to i64*
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 15
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %1907 to i64*
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1909 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1908, i64 0, i64 2
  %YMM2.i386 = bitcast %union.VectorReg* %1909 to %"class.std::bitset"*
  %1910 = bitcast %"class.std::bitset"* %YMM2.i386 to i8*
  %1911 = load i64, i64* %RBP.i385
  %1912 = sub i64 %1911, 8
  %1913 = load i64, i64* %PC.i384
  %1914 = add i64 %1913, 5
  store i64 %1914, i64* %PC.i384
  %1915 = inttoptr i64 %1912 to double*
  %1916 = load double, double* %1915
  %1917 = bitcast i8* %1910 to double*
  store double %1916, double* %1917, align 1
  %1918 = getelementptr inbounds i8, i8* %1910, i64 8
  %1919 = bitcast i8* %1918 to double*
  store double 0.000000e+00, double* %1919, align 1
  store %struct.Memory* %loadMem_40088f, %struct.Memory** %MEMORY
  %loadMem_400894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 33
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1924 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1923, i64 0, i64 2
  %YMM2.i382 = bitcast %union.VectorReg* %1924 to %"class.std::bitset"*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1926 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1925, i64 0, i64 1
  %XMM1.i383 = bitcast %union.VectorReg* %1926 to %union.vec128_t*
  %1927 = bitcast %"class.std::bitset"* %YMM2.i382 to i8*
  %1928 = bitcast %"class.std::bitset"* %YMM2.i382 to i8*
  %1929 = bitcast %union.vec128_t* %XMM1.i383 to i8*
  %1930 = load i64, i64* %PC.i381
  %1931 = add i64 %1930, 4
  store i64 %1931, i64* %PC.i381
  %1932 = bitcast i8* %1928 to double*
  %1933 = load double, double* %1932, align 1
  %1934 = getelementptr inbounds i8, i8* %1928, i64 8
  %1935 = bitcast i8* %1934 to i64*
  %1936 = load i64, i64* %1935, align 1
  %1937 = bitcast i8* %1929 to double*
  %1938 = load double, double* %1937, align 1
  %1939 = fsub double %1933, %1938
  %1940 = bitcast i8* %1927 to double*
  store double %1939, double* %1940, align 1
  %1941 = getelementptr inbounds i8, i8* %1927, i64 8
  %1942 = bitcast i8* %1941 to i64*
  store i64 %1936, i64* %1942, align 1
  store %struct.Memory* %loadMem_400894, %struct.Memory** %MEMORY
  %loadMem_400898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 33
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1945 to i64*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 15
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1949, i64 0, i64 1
  %YMM1.i380 = bitcast %union.VectorReg* %1950 to %"class.std::bitset"*
  %1951 = bitcast %"class.std::bitset"* %YMM1.i380 to i8*
  %1952 = load i64, i64* %RBP.i379
  %1953 = sub i64 %1952, 16
  %1954 = load i64, i64* %PC.i378
  %1955 = add i64 %1954, 5
  store i64 %1955, i64* %PC.i378
  %1956 = inttoptr i64 %1953 to double*
  %1957 = load double, double* %1956
  %1958 = bitcast i8* %1951 to double*
  store double %1957, double* %1958, align 1
  %1959 = getelementptr inbounds i8, i8* %1951, i64 8
  %1960 = bitcast i8* %1959 to double*
  store double 0.000000e+00, double* %1960, align 1
  store %struct.Memory* %loadMem_400898, %struct.Memory** %MEMORY
  %loadMem_40089d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 15
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1968 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1967, i64 0, i64 3
  %YMM3.i377 = bitcast %union.VectorReg* %1968 to %"class.std::bitset"*
  %1969 = bitcast %"class.std::bitset"* %YMM3.i377 to i8*
  %1970 = load i64, i64* %RBP.i376
  %1971 = sub i64 %1970, 24
  %1972 = load i64, i64* %PC.i375
  %1973 = add i64 %1972, 5
  store i64 %1973, i64* %PC.i375
  %1974 = inttoptr i64 %1971 to double*
  %1975 = load double, double* %1974
  %1976 = bitcast i8* %1969 to double*
  store double %1975, double* %1976, align 1
  %1977 = getelementptr inbounds i8, i8* %1969, i64 8
  %1978 = bitcast i8* %1977 to double*
  store double 0.000000e+00, double* %1978, align 1
  store %struct.Memory* %loadMem_40089d, %struct.Memory** %MEMORY
  %loadMem_4008a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 15
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1986 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1985, i64 0, i64 0
  %XMM0.i374 = bitcast %union.VectorReg* %1986 to %union.vec128_t*
  %1987 = load i64, i64* %RBP.i373
  %1988 = sub i64 %1987, 120
  %1989 = bitcast %union.vec128_t* %XMM0.i374 to i8*
  %1990 = load i64, i64* %PC.i372
  %1991 = add i64 %1990, 5
  store i64 %1991, i64* %PC.i372
  %1992 = bitcast i8* %1989 to double*
  %1993 = load double, double* %1992, align 1
  %1994 = inttoptr i64 %1988 to double*
  store double %1993, double* %1994
  store %struct.Memory* %loadMem_4008a2, %struct.Memory** %MEMORY
  %loadMem_4008a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1998, i64 0, i64 0
  %YMM0.i370 = bitcast %union.VectorReg* %1999 to %"class.std::bitset"*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2001 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2000, i64 0, i64 2
  %XMM2.i371 = bitcast %union.VectorReg* %2001 to %union.vec128_t*
  %2002 = bitcast %"class.std::bitset"* %YMM0.i370 to i8*
  %2003 = bitcast %union.vec128_t* %XMM2.i371 to i8*
  %2004 = load i64, i64* %PC.i369
  %2005 = add i64 %2004, 3
  store i64 %2005, i64* %PC.i369
  %2006 = bitcast i8* %2003 to <2 x i32>*
  %2007 = load <2 x i32>, <2 x i32>* %2006, align 1
  %2008 = getelementptr inbounds i8, i8* %2003, i64 8
  %2009 = bitcast i8* %2008 to <2 x i32>*
  %2010 = load <2 x i32>, <2 x i32>* %2009, align 1
  %2011 = extractelement <2 x i32> %2007, i32 0
  %2012 = bitcast i8* %2002 to i32*
  store i32 %2011, i32* %2012, align 1
  %2013 = extractelement <2 x i32> %2007, i32 1
  %2014 = getelementptr inbounds i8, i8* %2002, i64 4
  %2015 = bitcast i8* %2014 to i32*
  store i32 %2013, i32* %2015, align 1
  %2016 = extractelement <2 x i32> %2010, i32 0
  %2017 = getelementptr inbounds i8, i8* %2002, i64 8
  %2018 = bitcast i8* %2017 to i32*
  store i32 %2016, i32* %2018, align 1
  %2019 = extractelement <2 x i32> %2010, i32 1
  %2020 = getelementptr inbounds i8, i8* %2002, i64 12
  %2021 = bitcast i8* %2020 to i32*
  store i32 %2019, i32* %2021, align 1
  store %struct.Memory* %loadMem_4008a7, %struct.Memory** %MEMORY
  %loadMem_4008aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 33
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2026 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2025, i64 0, i64 2
  %YMM2.i367 = bitcast %union.VectorReg* %2026 to %"class.std::bitset"*
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2028 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2027, i64 0, i64 3
  %XMM3.i368 = bitcast %union.VectorReg* %2028 to %union.vec128_t*
  %2029 = bitcast %"class.std::bitset"* %YMM2.i367 to i8*
  %2030 = bitcast %union.vec128_t* %XMM3.i368 to i8*
  %2031 = load i64, i64* %PC.i366
  %2032 = add i64 %2031, 3
  store i64 %2032, i64* %PC.i366
  %2033 = bitcast i8* %2030 to <2 x i32>*
  %2034 = load <2 x i32>, <2 x i32>* %2033, align 1
  %2035 = getelementptr inbounds i8, i8* %2030, i64 8
  %2036 = bitcast i8* %2035 to <2 x i32>*
  %2037 = load <2 x i32>, <2 x i32>* %2036, align 1
  %2038 = extractelement <2 x i32> %2034, i32 0
  %2039 = bitcast i8* %2029 to i32*
  store i32 %2038, i32* %2039, align 1
  %2040 = extractelement <2 x i32> %2034, i32 1
  %2041 = getelementptr inbounds i8, i8* %2029, i64 4
  %2042 = bitcast i8* %2041 to i32*
  store i32 %2040, i32* %2042, align 1
  %2043 = extractelement <2 x i32> %2037, i32 0
  %2044 = getelementptr inbounds i8, i8* %2029, i64 8
  %2045 = bitcast i8* %2044 to i32*
  store i32 %2043, i32* %2045, align 1
  %2046 = extractelement <2 x i32> %2037, i32 1
  %2047 = getelementptr inbounds i8, i8* %2029, i64 12
  %2048 = bitcast i8* %2047 to i32*
  store i32 %2046, i32* %2048, align 1
  store %struct.Memory* %loadMem_4008aa, %struct.Memory** %MEMORY
  %loadMem1_4008ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 33
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2051 to i64*
  %2052 = load i64, i64* %PC.i365
  %2053 = add i64 %2052, 851
  %2054 = load i64, i64* %PC.i365
  %2055 = add i64 %2054, 5
  %2056 = load i64, i64* %PC.i365
  %2057 = add i64 %2056, 5
  store i64 %2057, i64* %PC.i365
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2059 = load i64, i64* %2058, align 8
  %2060 = add i64 %2059, -8
  %2061 = inttoptr i64 %2060 to i64*
  store i64 %2055, i64* %2061
  store i64 %2060, i64* %2058, align 8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2053, i64* %2062, align 8
  store %struct.Memory* %loadMem1_4008ad, %struct.Memory** %MEMORY
  %loadMem2_4008ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008ad = load i64, i64* %3
  %call2_4008ad = call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %loadPC_4008ad, %struct.Memory* %loadMem2_4008ad)
  store %struct.Memory* %call2_4008ad, %struct.Memory** %MEMORY
  %loadMem_4008b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 33
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 15
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %2068 to i64*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2070 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2069, i64 0, i64 1
  %YMM1.i364 = bitcast %union.VectorReg* %2070 to %"class.std::bitset"*
  %2071 = bitcast %"class.std::bitset"* %YMM1.i364 to i8*
  %2072 = load i64, i64* %RBP.i363
  %2073 = sub i64 %2072, 112
  %2074 = load i64, i64* %PC.i362
  %2075 = add i64 %2074, 5
  store i64 %2075, i64* %PC.i362
  %2076 = inttoptr i64 %2073 to double*
  %2077 = load double, double* %2076
  %2078 = bitcast i8* %2071 to double*
  store double %2077, double* %2078, align 1
  %2079 = getelementptr inbounds i8, i8* %2071, i64 8
  %2080 = bitcast i8* %2079 to double*
  store double 0.000000e+00, double* %2080, align 1
  store %struct.Memory* %loadMem_4008b2, %struct.Memory** %MEMORY
  %loadMem_4008b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 33
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2083 to i64*
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 15
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %2086 to i64*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2088 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2087, i64 0, i64 0
  %XMM0.i361 = bitcast %union.VectorReg* %2088 to %union.vec128_t*
  %2089 = load i64, i64* %RBP.i360
  %2090 = sub i64 %2089, 128
  %2091 = bitcast %union.vec128_t* %XMM0.i361 to i8*
  %2092 = load i64, i64* %PC.i359
  %2093 = add i64 %2092, 5
  store i64 %2093, i64* %PC.i359
  %2094 = bitcast i8* %2091 to double*
  %2095 = load double, double* %2094, align 1
  %2096 = inttoptr i64 %2090 to double*
  store double %2095, double* %2096
  store %struct.Memory* %loadMem_4008b7, %struct.Memory** %MEMORY
  %loadMem_4008bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 33
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2100, i64 0, i64 0
  %YMM0.i357 = bitcast %union.VectorReg* %2101 to %"class.std::bitset"*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2103 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2102, i64 0, i64 1
  %XMM1.i358 = bitcast %union.VectorReg* %2103 to %union.vec128_t*
  %2104 = bitcast %"class.std::bitset"* %YMM0.i357 to i8*
  %2105 = bitcast %union.vec128_t* %XMM1.i358 to i8*
  %2106 = load i64, i64* %PC.i356
  %2107 = add i64 %2106, 3
  store i64 %2107, i64* %PC.i356
  %2108 = bitcast i8* %2105 to <2 x i32>*
  %2109 = load <2 x i32>, <2 x i32>* %2108, align 1
  %2110 = getelementptr inbounds i8, i8* %2105, i64 8
  %2111 = bitcast i8* %2110 to <2 x i32>*
  %2112 = load <2 x i32>, <2 x i32>* %2111, align 1
  %2113 = extractelement <2 x i32> %2109, i32 0
  %2114 = bitcast i8* %2104 to i32*
  store i32 %2113, i32* %2114, align 1
  %2115 = extractelement <2 x i32> %2109, i32 1
  %2116 = getelementptr inbounds i8, i8* %2104, i64 4
  %2117 = bitcast i8* %2116 to i32*
  store i32 %2115, i32* %2117, align 1
  %2118 = extractelement <2 x i32> %2112, i32 0
  %2119 = getelementptr inbounds i8, i8* %2104, i64 8
  %2120 = bitcast i8* %2119 to i32*
  store i32 %2118, i32* %2120, align 1
  %2121 = extractelement <2 x i32> %2112, i32 1
  %2122 = getelementptr inbounds i8, i8* %2104, i64 12
  %2123 = bitcast i8* %2122 to i32*
  store i32 %2121, i32* %2123, align 1
  store %struct.Memory* %loadMem_4008bc, %struct.Memory** %MEMORY
  %loadMem_4008bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 15
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2131 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2130, i64 0, i64 1
  %YMM1.i355 = bitcast %union.VectorReg* %2131 to %"class.std::bitset"*
  %2132 = bitcast %"class.std::bitset"* %YMM1.i355 to i8*
  %2133 = load i64, i64* %RBP.i354
  %2134 = sub i64 %2133, 120
  %2135 = load i64, i64* %PC.i353
  %2136 = add i64 %2135, 5
  store i64 %2136, i64* %PC.i353
  %2137 = inttoptr i64 %2134 to double*
  %2138 = load double, double* %2137
  %2139 = bitcast i8* %2132 to double*
  store double %2138, double* %2139, align 1
  %2140 = getelementptr inbounds i8, i8* %2132, i64 8
  %2141 = bitcast i8* %2140 to double*
  store double 0.000000e+00, double* %2141, align 1
  store %struct.Memory* %loadMem_4008bf, %struct.Memory** %MEMORY
  %loadMem_4008c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 33
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 15
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2149 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2148, i64 0, i64 2
  %YMM2.i352 = bitcast %union.VectorReg* %2149 to %"class.std::bitset"*
  %2150 = bitcast %"class.std::bitset"* %YMM2.i352 to i8*
  %2151 = load i64, i64* %RBP.i351
  %2152 = sub i64 %2151, 128
  %2153 = load i64, i64* %PC.i350
  %2154 = add i64 %2153, 5
  store i64 %2154, i64* %PC.i350
  %2155 = inttoptr i64 %2152 to double*
  %2156 = load double, double* %2155
  %2157 = bitcast i8* %2150 to double*
  store double %2156, double* %2157, align 1
  %2158 = getelementptr inbounds i8, i8* %2150, i64 8
  %2159 = bitcast i8* %2158 to double*
  store double 0.000000e+00, double* %2159, align 1
  store %struct.Memory* %loadMem_4008c4, %struct.Memory** %MEMORY
  %loadMem1_4008c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 33
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2162 to i64*
  %2163 = load i64, i64* %PC.i349
  %2164 = add i64 %2163, 1159
  %2165 = load i64, i64* %PC.i349
  %2166 = add i64 %2165, 5
  %2167 = load i64, i64* %PC.i349
  %2168 = add i64 %2167, 5
  store i64 %2168, i64* %PC.i349
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2170 = load i64, i64* %2169, align 8
  %2171 = add i64 %2170, -8
  %2172 = inttoptr i64 %2171 to i64*
  store i64 %2166, i64* %2172
  store i64 %2171, i64* %2169, align 8
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2164, i64* %2173, align 8
  store %struct.Memory* %loadMem1_4008c9, %struct.Memory** %MEMORY
  %loadMem2_4008c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008c9 = load i64, i64* %3
  %call2_4008c9 = call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %loadPC_4008c9, %struct.Memory* %loadMem2_4008c9)
  store %struct.Memory* %call2_4008c9, %struct.Memory** %MEMORY
  %loadMem_4008ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 33
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2176 to i64*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2178 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2177, i64 0, i64 1
  %YMM1.i348 = bitcast %union.VectorReg* %2178 to %"class.std::bitset"*
  %2179 = bitcast %"class.std::bitset"* %YMM1.i348 to i8*
  %2180 = load i64, i64* %PC.i347
  %2181 = add i64 %2180, ptrtoint (%G_0x58a__rip__type* @G_0x58a__rip_ to i64)
  %2182 = load i64, i64* %PC.i347
  %2183 = add i64 %2182, 8
  store i64 %2183, i64* %PC.i347
  %2184 = inttoptr i64 %2181 to double*
  %2185 = load double, double* %2184
  %2186 = bitcast i8* %2179 to double*
  store double %2185, double* %2186, align 1
  %2187 = getelementptr inbounds i8, i8* %2179, i64 8
  %2188 = bitcast i8* %2187 to double*
  store double 0.000000e+00, double* %2188, align 1
  store %struct.Memory* %loadMem_4008ce, %struct.Memory** %MEMORY
  %loadMem_4008d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 15
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2196 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2195, i64 0, i64 2
  %YMM2.i346 = bitcast %union.VectorReg* %2196 to %"class.std::bitset"*
  %2197 = bitcast %"class.std::bitset"* %YMM2.i346 to i8*
  %2198 = load i64, i64* %RBP.i345
  %2199 = sub i64 %2198, 48
  %2200 = load i64, i64* %PC.i344
  %2201 = add i64 %2200, 5
  store i64 %2201, i64* %PC.i344
  %2202 = inttoptr i64 %2199 to double*
  %2203 = load double, double* %2202
  %2204 = bitcast i8* %2197 to double*
  store double %2203, double* %2204, align 1
  %2205 = getelementptr inbounds i8, i8* %2197, i64 8
  %2206 = bitcast i8* %2205 to double*
  store double 0.000000e+00, double* %2206, align 1
  store %struct.Memory* %loadMem_4008d6, %struct.Memory** %MEMORY
  %loadMem_4008db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 5
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 15
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %2215 to i64*
  %2216 = load i64, i64* %RBP.i343
  %2217 = sub i64 %2216, 76
  %2218 = load i64, i64* %PC.i341
  %2219 = add i64 %2218, 4
  store i64 %2219, i64* %PC.i341
  %2220 = inttoptr i64 %2217 to i32*
  %2221 = load i32, i32* %2220
  %2222 = sext i32 %2221 to i64
  store i64 %2222, i64* %RCX.i342, align 8
  store %struct.Memory* %loadMem_4008db, %struct.Memory** %MEMORY
  %loadMem_4008df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 5
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %2228 to i64*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 11
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %RDI.i340 = bitcast %union.anon* %2231 to i64*
  %2232 = load i64, i64* %RCX.i339
  %2233 = mul i64 %2232, 4
  %2234 = add i64 %2233, 6300752
  %2235 = load i64, i64* %PC.i338
  %2236 = add i64 %2235, 7
  store i64 %2236, i64* %PC.i338
  %2237 = inttoptr i64 %2234 to i32*
  %2238 = load i32, i32* %2237
  %2239 = zext i32 %2238 to i64
  store i64 %2239, i64* %RDI.i340, align 8
  store %struct.Memory* %loadMem_4008df, %struct.Memory** %MEMORY
  %loadMem_4008e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 33
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2242 to i64*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 15
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2247 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2246, i64 0, i64 3
  %YMM3.i337 = bitcast %union.VectorReg* %2247 to %"class.std::bitset"*
  %2248 = bitcast %"class.std::bitset"* %YMM3.i337 to i8*
  %2249 = load i64, i64* %RBP.i336
  %2250 = sub i64 %2249, 8
  %2251 = load i64, i64* %PC.i335
  %2252 = add i64 %2251, 5
  store i64 %2252, i64* %PC.i335
  %2253 = inttoptr i64 %2250 to double*
  %2254 = load double, double* %2253
  %2255 = bitcast i8* %2248 to double*
  store double %2254, double* %2255, align 1
  %2256 = getelementptr inbounds i8, i8* %2248, i64 8
  %2257 = bitcast i8* %2256 to double*
  store double 0.000000e+00, double* %2257, align 1
  store %struct.Memory* %loadMem_4008e6, %struct.Memory** %MEMORY
  %loadMem_4008eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 33
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 15
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %2263 to i64*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2264, i64 0, i64 4
  %YMM4.i334 = bitcast %union.VectorReg* %2265 to %"class.std::bitset"*
  %2266 = bitcast %"class.std::bitset"* %YMM4.i334 to i8*
  %2267 = load i64, i64* %RBP.i333
  %2268 = sub i64 %2267, 16
  %2269 = load i64, i64* %PC.i332
  %2270 = add i64 %2269, 5
  store i64 %2270, i64* %PC.i332
  %2271 = inttoptr i64 %2268 to double*
  %2272 = load double, double* %2271
  %2273 = bitcast i8* %2266 to double*
  store double %2272, double* %2273, align 1
  %2274 = getelementptr inbounds i8, i8* %2266, i64 8
  %2275 = bitcast i8* %2274 to double*
  store double 0.000000e+00, double* %2275, align 1
  store %struct.Memory* %loadMem_4008eb, %struct.Memory** %MEMORY
  %loadMem_4008f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 33
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2278 to i64*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2280 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2279, i64 0, i64 4
  %YMM4.i330 = bitcast %union.VectorReg* %2280 to %"class.std::bitset"*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2282 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2281, i64 0, i64 1
  %XMM1.i331 = bitcast %union.VectorReg* %2282 to %union.vec128_t*
  %2283 = bitcast %"class.std::bitset"* %YMM4.i330 to i8*
  %2284 = bitcast %"class.std::bitset"* %YMM4.i330 to i8*
  %2285 = bitcast %union.vec128_t* %XMM1.i331 to i8*
  %2286 = load i64, i64* %PC.i329
  %2287 = add i64 %2286, 4
  store i64 %2287, i64* %PC.i329
  %2288 = bitcast i8* %2284 to double*
  %2289 = load double, double* %2288, align 1
  %2290 = getelementptr inbounds i8, i8* %2284, i64 8
  %2291 = bitcast i8* %2290 to i64*
  %2292 = load i64, i64* %2291, align 1
  %2293 = bitcast i8* %2285 to double*
  %2294 = load double, double* %2293, align 1
  %2295 = fsub double %2289, %2294
  %2296 = bitcast i8* %2283 to double*
  store double %2295, double* %2296, align 1
  %2297 = getelementptr inbounds i8, i8* %2283, i64 8
  %2298 = bitcast i8* %2297 to i64*
  store i64 %2292, i64* %2298, align 1
  store %struct.Memory* %loadMem_4008f0, %struct.Memory** %MEMORY
  %loadMem_4008f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 33
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 15
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2306 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2305, i64 0, i64 1
  %YMM1.i328 = bitcast %union.VectorReg* %2306 to %"class.std::bitset"*
  %2307 = bitcast %"class.std::bitset"* %YMM1.i328 to i8*
  %2308 = load i64, i64* %RBP.i327
  %2309 = sub i64 %2308, 24
  %2310 = load i64, i64* %PC.i326
  %2311 = add i64 %2310, 5
  store i64 %2311, i64* %PC.i326
  %2312 = inttoptr i64 %2309 to double*
  %2313 = load double, double* %2312
  %2314 = bitcast i8* %2307 to double*
  store double %2313, double* %2314, align 1
  %2315 = getelementptr inbounds i8, i8* %2307, i64 8
  %2316 = bitcast i8* %2315 to double*
  store double 0.000000e+00, double* %2316, align 1
  store %struct.Memory* %loadMem_4008f4, %struct.Memory** %MEMORY
  %loadMem_4008f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 33
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 15
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2324 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2323, i64 0, i64 0
  %XMM0.i325 = bitcast %union.VectorReg* %2324 to %union.vec128_t*
  %2325 = load i64, i64* %RBP.i324
  %2326 = sub i64 %2325, 136
  %2327 = bitcast %union.vec128_t* %XMM0.i325 to i8*
  %2328 = load i64, i64* %PC.i323
  %2329 = add i64 %2328, 8
  store i64 %2329, i64* %PC.i323
  %2330 = bitcast i8* %2327 to double*
  %2331 = load double, double* %2330, align 1
  %2332 = inttoptr i64 %2326 to double*
  store double %2331, double* %2332
  store %struct.Memory* %loadMem_4008f9, %struct.Memory** %MEMORY
  %loadMem_400901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 33
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2337 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2336, i64 0, i64 0
  %YMM0.i321 = bitcast %union.VectorReg* %2337 to %"class.std::bitset"*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2338, i64 0, i64 3
  %XMM3.i322 = bitcast %union.VectorReg* %2339 to %union.vec128_t*
  %2340 = bitcast %"class.std::bitset"* %YMM0.i321 to i8*
  %2341 = bitcast %union.vec128_t* %XMM3.i322 to i8*
  %2342 = load i64, i64* %PC.i320
  %2343 = add i64 %2342, 3
  store i64 %2343, i64* %PC.i320
  %2344 = bitcast i8* %2341 to <2 x i32>*
  %2345 = load <2 x i32>, <2 x i32>* %2344, align 1
  %2346 = getelementptr inbounds i8, i8* %2341, i64 8
  %2347 = bitcast i8* %2346 to <2 x i32>*
  %2348 = load <2 x i32>, <2 x i32>* %2347, align 1
  %2349 = extractelement <2 x i32> %2345, i32 0
  %2350 = bitcast i8* %2340 to i32*
  store i32 %2349, i32* %2350, align 1
  %2351 = extractelement <2 x i32> %2345, i32 1
  %2352 = getelementptr inbounds i8, i8* %2340, i64 4
  %2353 = bitcast i8* %2352 to i32*
  store i32 %2351, i32* %2353, align 1
  %2354 = extractelement <2 x i32> %2348, i32 0
  %2355 = getelementptr inbounds i8, i8* %2340, i64 8
  %2356 = bitcast i8* %2355 to i32*
  store i32 %2354, i32* %2356, align 1
  %2357 = extractelement <2 x i32> %2348, i32 1
  %2358 = getelementptr inbounds i8, i8* %2340, i64 12
  %2359 = bitcast i8* %2358 to i32*
  store i32 %2357, i32* %2359, align 1
  store %struct.Memory* %loadMem_400901, %struct.Memory** %MEMORY
  %loadMem_400904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 33
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 15
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %2365 to i64*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2367 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2366, i64 0, i64 1
  %XMM1.i319 = bitcast %union.VectorReg* %2367 to %union.vec128_t*
  %2368 = load i64, i64* %RBP.i318
  %2369 = sub i64 %2368, 144
  %2370 = bitcast %union.vec128_t* %XMM1.i319 to i8*
  %2371 = load i64, i64* %PC.i317
  %2372 = add i64 %2371, 8
  store i64 %2372, i64* %PC.i317
  %2373 = bitcast i8* %2370 to double*
  %2374 = load double, double* %2373, align 1
  %2375 = inttoptr i64 %2369 to double*
  store double %2374, double* %2375
  store %struct.Memory* %loadMem_400904, %struct.Memory** %MEMORY
  %loadMem_40090c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 33
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %2378 to i64*
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2380 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2379, i64 0, i64 1
  %YMM1.i315 = bitcast %union.VectorReg* %2380 to %"class.std::bitset"*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2382 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2381, i64 0, i64 4
  %XMM4.i316 = bitcast %union.VectorReg* %2382 to %union.vec128_t*
  %2383 = bitcast %"class.std::bitset"* %YMM1.i315 to i8*
  %2384 = bitcast %union.vec128_t* %XMM4.i316 to i8*
  %2385 = load i64, i64* %PC.i314
  %2386 = add i64 %2385, 3
  store i64 %2386, i64* %PC.i314
  %2387 = bitcast i8* %2384 to <2 x i32>*
  %2388 = load <2 x i32>, <2 x i32>* %2387, align 1
  %2389 = getelementptr inbounds i8, i8* %2384, i64 8
  %2390 = bitcast i8* %2389 to <2 x i32>*
  %2391 = load <2 x i32>, <2 x i32>* %2390, align 1
  %2392 = extractelement <2 x i32> %2388, i32 0
  %2393 = bitcast i8* %2383 to i32*
  store i32 %2392, i32* %2393, align 1
  %2394 = extractelement <2 x i32> %2388, i32 1
  %2395 = getelementptr inbounds i8, i8* %2383, i64 4
  %2396 = bitcast i8* %2395 to i32*
  store i32 %2394, i32* %2396, align 1
  %2397 = extractelement <2 x i32> %2391, i32 0
  %2398 = getelementptr inbounds i8, i8* %2383, i64 8
  %2399 = bitcast i8* %2398 to i32*
  store i32 %2397, i32* %2399, align 1
  %2400 = extractelement <2 x i32> %2391, i32 1
  %2401 = getelementptr inbounds i8, i8* %2383, i64 12
  %2402 = bitcast i8* %2401 to i32*
  store i32 %2400, i32* %2402, align 1
  store %struct.Memory* %loadMem_40090c, %struct.Memory** %MEMORY
  %loadMem_40090f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 33
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 15
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %2408 to i64*
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2409, i64 0, i64 3
  %YMM3.i313 = bitcast %union.VectorReg* %2410 to %"class.std::bitset"*
  %2411 = bitcast %"class.std::bitset"* %YMM3.i313 to i8*
  %2412 = load i64, i64* %RBP.i312
  %2413 = sub i64 %2412, 144
  %2414 = load i64, i64* %PC.i311
  %2415 = add i64 %2414, 8
  store i64 %2415, i64* %PC.i311
  %2416 = inttoptr i64 %2413 to double*
  %2417 = load double, double* %2416
  %2418 = bitcast i8* %2411 to double*
  store double %2417, double* %2418, align 1
  %2419 = getelementptr inbounds i8, i8* %2411, i64 8
  %2420 = bitcast i8* %2419 to double*
  store double 0.000000e+00, double* %2420, align 1
  store %struct.Memory* %loadMem_40090f, %struct.Memory** %MEMORY
  %loadMem_400917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 33
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2423 to i64*
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 15
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2428 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2427, i64 0, i64 2
  %XMM2.i310 = bitcast %union.VectorReg* %2428 to %union.vec128_t*
  %2429 = load i64, i64* %RBP.i309
  %2430 = sub i64 %2429, 152
  %2431 = bitcast %union.vec128_t* %XMM2.i310 to i8*
  %2432 = load i64, i64* %PC.i308
  %2433 = add i64 %2432, 8
  store i64 %2433, i64* %PC.i308
  %2434 = bitcast i8* %2431 to double*
  %2435 = load double, double* %2434, align 1
  %2436 = inttoptr i64 %2430 to double*
  store double %2435, double* %2436
  store %struct.Memory* %loadMem_400917, %struct.Memory** %MEMORY
  %loadMem_40091f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 33
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2441 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2440, i64 0, i64 2
  %YMM2.i306 = bitcast %union.VectorReg* %2441 to %"class.std::bitset"*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2443 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2442, i64 0, i64 3
  %XMM3.i307 = bitcast %union.VectorReg* %2443 to %union.vec128_t*
  %2444 = bitcast %"class.std::bitset"* %YMM2.i306 to i8*
  %2445 = bitcast %union.vec128_t* %XMM3.i307 to i8*
  %2446 = load i64, i64* %PC.i305
  %2447 = add i64 %2446, 3
  store i64 %2447, i64* %PC.i305
  %2448 = bitcast i8* %2445 to <2 x i32>*
  %2449 = load <2 x i32>, <2 x i32>* %2448, align 1
  %2450 = getelementptr inbounds i8, i8* %2445, i64 8
  %2451 = bitcast i8* %2450 to <2 x i32>*
  %2452 = load <2 x i32>, <2 x i32>* %2451, align 1
  %2453 = extractelement <2 x i32> %2449, i32 0
  %2454 = bitcast i8* %2444 to i32*
  store i32 %2453, i32* %2454, align 1
  %2455 = extractelement <2 x i32> %2449, i32 1
  %2456 = getelementptr inbounds i8, i8* %2444, i64 4
  %2457 = bitcast i8* %2456 to i32*
  store i32 %2455, i32* %2457, align 1
  %2458 = extractelement <2 x i32> %2452, i32 0
  %2459 = getelementptr inbounds i8, i8* %2444, i64 8
  %2460 = bitcast i8* %2459 to i32*
  store i32 %2458, i32* %2460, align 1
  %2461 = extractelement <2 x i32> %2452, i32 1
  %2462 = getelementptr inbounds i8, i8* %2444, i64 12
  %2463 = bitcast i8* %2462 to i32*
  store i32 %2461, i32* %2463, align 1
  store %struct.Memory* %loadMem_40091f, %struct.Memory** %MEMORY
  %loadMem1_400922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 33
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2466 to i64*
  %2467 = load i64, i64* %PC.i304
  %2468 = add i64 %2467, 734
  %2469 = load i64, i64* %PC.i304
  %2470 = add i64 %2469, 5
  %2471 = load i64, i64* %PC.i304
  %2472 = add i64 %2471, 5
  store i64 %2472, i64* %PC.i304
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2474 = load i64, i64* %2473, align 8
  %2475 = add i64 %2474, -8
  %2476 = inttoptr i64 %2475 to i64*
  store i64 %2470, i64* %2476
  store i64 %2475, i64* %2473, align 8
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2468, i64* %2477, align 8
  store %struct.Memory* %loadMem1_400922, %struct.Memory** %MEMORY
  %loadMem2_400922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400922 = load i64, i64* %3
  %call2_400922 = call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %loadPC_400922, %struct.Memory* %loadMem2_400922)
  store %struct.Memory* %call2_400922, %struct.Memory** %MEMORY
  %loadMem_400927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2482 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2481, i64 0, i64 1
  %YMM1.i303 = bitcast %union.VectorReg* %2482 to %"class.std::bitset"*
  %2483 = bitcast %"class.std::bitset"* %YMM1.i303 to i8*
  %2484 = load i64, i64* %PC.i302
  %2485 = add i64 %2484, ptrtoint (%G_0x531__rip__type* @G_0x531__rip_ to i64)
  %2486 = load i64, i64* %PC.i302
  %2487 = add i64 %2486, 8
  store i64 %2487, i64* %PC.i302
  %2488 = inttoptr i64 %2485 to double*
  %2489 = load double, double* %2488
  %2490 = bitcast i8* %2483 to double*
  store double %2489, double* %2490, align 1
  %2491 = getelementptr inbounds i8, i8* %2483, i64 8
  %2492 = bitcast i8* %2491 to double*
  store double 0.000000e+00, double* %2492, align 1
  store %struct.Memory* %loadMem_400927, %struct.Memory** %MEMORY
  %loadMem_40092f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2495 to i64*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 5
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 15
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2501 to i64*
  %2502 = load i64, i64* %RBP.i301
  %2503 = sub i64 %2502, 88
  %2504 = load i64, i64* %PC.i299
  %2505 = add i64 %2504, 4
  store i64 %2505, i64* %PC.i299
  %2506 = inttoptr i64 %2503 to i32*
  %2507 = load i32, i32* %2506
  %2508 = sext i32 %2507 to i64
  store i64 %2508, i64* %RCX.i300, align 8
  store %struct.Memory* %loadMem_40092f, %struct.Memory** %MEMORY
  %loadMem_400933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 33
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 5
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 11
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %RDI.i298 = bitcast %union.anon* %2517 to i64*
  %2518 = load i64, i64* %RCX.i297
  %2519 = mul i64 %2518, 4
  %2520 = add i64 %2519, 6300752
  %2521 = load i64, i64* %PC.i296
  %2522 = add i64 %2521, 7
  store i64 %2522, i64* %PC.i296
  %2523 = inttoptr i64 %2520 to i32*
  %2524 = load i32, i32* %2523
  %2525 = zext i32 %2524 to i64
  store i64 %2525, i64* %RDI.i298, align 8
  store %struct.Memory* %loadMem_400933, %struct.Memory** %MEMORY
  %loadMem_40093a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 15
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2532, i64 0, i64 2
  %YMM2.i295 = bitcast %union.VectorReg* %2533 to %"class.std::bitset"*
  %2534 = bitcast %"class.std::bitset"* %YMM2.i295 to i8*
  %2535 = load i64, i64* %RBP.i294
  %2536 = sub i64 %2535, 8
  %2537 = load i64, i64* %PC.i293
  %2538 = add i64 %2537, 5
  store i64 %2538, i64* %PC.i293
  %2539 = inttoptr i64 %2536 to double*
  %2540 = load double, double* %2539
  %2541 = bitcast i8* %2534 to double*
  store double %2540, double* %2541, align 1
  %2542 = getelementptr inbounds i8, i8* %2534, i64 8
  %2543 = bitcast i8* %2542 to double*
  store double 0.000000e+00, double* %2543, align 1
  store %struct.Memory* %loadMem_40093a, %struct.Memory** %MEMORY
  %loadMem_40093f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 33
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2546 to i64*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2548 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2547, i64 0, i64 2
  %YMM2.i291 = bitcast %union.VectorReg* %2548 to %"class.std::bitset"*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2550 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2549, i64 0, i64 1
  %XMM1.i292 = bitcast %union.VectorReg* %2550 to %union.vec128_t*
  %2551 = bitcast %"class.std::bitset"* %YMM2.i291 to i8*
  %2552 = bitcast %"class.std::bitset"* %YMM2.i291 to i8*
  %2553 = bitcast %union.vec128_t* %XMM1.i292 to i8*
  %2554 = load i64, i64* %PC.i290
  %2555 = add i64 %2554, 4
  store i64 %2555, i64* %PC.i290
  %2556 = bitcast i8* %2552 to double*
  %2557 = load double, double* %2556, align 1
  %2558 = getelementptr inbounds i8, i8* %2552, i64 8
  %2559 = bitcast i8* %2558 to i64*
  %2560 = load i64, i64* %2559, align 1
  %2561 = bitcast i8* %2553 to double*
  %2562 = load double, double* %2561, align 1
  %2563 = fsub double %2557, %2562
  %2564 = bitcast i8* %2551 to double*
  store double %2563, double* %2564, align 1
  %2565 = getelementptr inbounds i8, i8* %2551, i64 8
  %2566 = bitcast i8* %2565 to i64*
  store i64 %2560, i64* %2566, align 1
  store %struct.Memory* %loadMem_40093f, %struct.Memory** %MEMORY
  %loadMem_400943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 33
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 15
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %2572 to i64*
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2574 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2573, i64 0, i64 3
  %YMM3.i289 = bitcast %union.VectorReg* %2574 to %"class.std::bitset"*
  %2575 = bitcast %"class.std::bitset"* %YMM3.i289 to i8*
  %2576 = load i64, i64* %RBP.i288
  %2577 = sub i64 %2576, 16
  %2578 = load i64, i64* %PC.i287
  %2579 = add i64 %2578, 5
  store i64 %2579, i64* %PC.i287
  %2580 = inttoptr i64 %2577 to double*
  %2581 = load double, double* %2580
  %2582 = bitcast i8* %2575 to double*
  store double %2581, double* %2582, align 1
  %2583 = getelementptr inbounds i8, i8* %2575, i64 8
  %2584 = bitcast i8* %2583 to double*
  store double 0.000000e+00, double* %2584, align 1
  store %struct.Memory* %loadMem_400943, %struct.Memory** %MEMORY
  %loadMem_400948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2589 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2588, i64 0, i64 3
  %YMM3.i285 = bitcast %union.VectorReg* %2589 to %"class.std::bitset"*
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2591 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2590, i64 0, i64 1
  %XMM1.i286 = bitcast %union.VectorReg* %2591 to %union.vec128_t*
  %2592 = bitcast %"class.std::bitset"* %YMM3.i285 to i8*
  %2593 = bitcast %"class.std::bitset"* %YMM3.i285 to i8*
  %2594 = bitcast %union.vec128_t* %XMM1.i286 to i8*
  %2595 = load i64, i64* %PC.i284
  %2596 = add i64 %2595, 4
  store i64 %2596, i64* %PC.i284
  %2597 = bitcast i8* %2593 to double*
  %2598 = load double, double* %2597, align 1
  %2599 = getelementptr inbounds i8, i8* %2593, i64 8
  %2600 = bitcast i8* %2599 to i64*
  %2601 = load i64, i64* %2600, align 1
  %2602 = bitcast i8* %2594 to double*
  %2603 = load double, double* %2602, align 1
  %2604 = fsub double %2598, %2603
  %2605 = bitcast i8* %2592 to double*
  store double %2604, double* %2605, align 1
  %2606 = getelementptr inbounds i8, i8* %2592, i64 8
  %2607 = bitcast i8* %2606 to i64*
  store i64 %2601, i64* %2607, align 1
  store %struct.Memory* %loadMem_400948, %struct.Memory** %MEMORY
  %loadMem_40094c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 15
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %2613 to i64*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2615 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2614, i64 0, i64 1
  %YMM1.i283 = bitcast %union.VectorReg* %2615 to %"class.std::bitset"*
  %2616 = bitcast %"class.std::bitset"* %YMM1.i283 to i8*
  %2617 = load i64, i64* %RBP.i282
  %2618 = sub i64 %2617, 24
  %2619 = load i64, i64* %PC.i281
  %2620 = add i64 %2619, 5
  store i64 %2620, i64* %PC.i281
  %2621 = inttoptr i64 %2618 to double*
  %2622 = load double, double* %2621
  %2623 = bitcast i8* %2616 to double*
  store double %2622, double* %2623, align 1
  %2624 = getelementptr inbounds i8, i8* %2616, i64 8
  %2625 = bitcast i8* %2624 to double*
  store double 0.000000e+00, double* %2625, align 1
  store %struct.Memory* %loadMem_40094c, %struct.Memory** %MEMORY
  %loadMem_400951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 33
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 15
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %2631 to i64*
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2633 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2632, i64 0, i64 0
  %XMM0.i280 = bitcast %union.VectorReg* %2633 to %union.vec128_t*
  %2634 = load i64, i64* %RBP.i279
  %2635 = sub i64 %2634, 160
  %2636 = bitcast %union.vec128_t* %XMM0.i280 to i8*
  %2637 = load i64, i64* %PC.i278
  %2638 = add i64 %2637, 8
  store i64 %2638, i64* %PC.i278
  %2639 = bitcast i8* %2636 to double*
  %2640 = load double, double* %2639, align 1
  %2641 = inttoptr i64 %2635 to double*
  store double %2640, double* %2641
  store %struct.Memory* %loadMem_400951, %struct.Memory** %MEMORY
  %loadMem_400959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 33
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %2644 to i64*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2646 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2645, i64 0, i64 0
  %YMM0.i276 = bitcast %union.VectorReg* %2646 to %"class.std::bitset"*
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2648 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2647, i64 0, i64 2
  %XMM2.i277 = bitcast %union.VectorReg* %2648 to %union.vec128_t*
  %2649 = bitcast %"class.std::bitset"* %YMM0.i276 to i8*
  %2650 = bitcast %union.vec128_t* %XMM2.i277 to i8*
  %2651 = load i64, i64* %PC.i275
  %2652 = add i64 %2651, 3
  store i64 %2652, i64* %PC.i275
  %2653 = bitcast i8* %2650 to <2 x i32>*
  %2654 = load <2 x i32>, <2 x i32>* %2653, align 1
  %2655 = getelementptr inbounds i8, i8* %2650, i64 8
  %2656 = bitcast i8* %2655 to <2 x i32>*
  %2657 = load <2 x i32>, <2 x i32>* %2656, align 1
  %2658 = extractelement <2 x i32> %2654, i32 0
  %2659 = bitcast i8* %2649 to i32*
  store i32 %2658, i32* %2659, align 1
  %2660 = extractelement <2 x i32> %2654, i32 1
  %2661 = getelementptr inbounds i8, i8* %2649, i64 4
  %2662 = bitcast i8* %2661 to i32*
  store i32 %2660, i32* %2662, align 1
  %2663 = extractelement <2 x i32> %2657, i32 0
  %2664 = getelementptr inbounds i8, i8* %2649, i64 8
  %2665 = bitcast i8* %2664 to i32*
  store i32 %2663, i32* %2665, align 1
  %2666 = extractelement <2 x i32> %2657, i32 1
  %2667 = getelementptr inbounds i8, i8* %2649, i64 12
  %2668 = bitcast i8* %2667 to i32*
  store i32 %2666, i32* %2668, align 1
  store %struct.Memory* %loadMem_400959, %struct.Memory** %MEMORY
  %loadMem_40095c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 33
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2671 to i64*
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 15
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2676 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2675, i64 0, i64 1
  %XMM1.i274 = bitcast %union.VectorReg* %2676 to %union.vec128_t*
  %2677 = load i64, i64* %RBP.i273
  %2678 = sub i64 %2677, 168
  %2679 = bitcast %union.vec128_t* %XMM1.i274 to i8*
  %2680 = load i64, i64* %PC.i272
  %2681 = add i64 %2680, 8
  store i64 %2681, i64* %PC.i272
  %2682 = bitcast i8* %2679 to double*
  %2683 = load double, double* %2682, align 1
  %2684 = inttoptr i64 %2678 to double*
  store double %2683, double* %2684
  store %struct.Memory* %loadMem_40095c, %struct.Memory** %MEMORY
  %loadMem_400964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 33
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2687 to i64*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2689 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2688, i64 0, i64 1
  %YMM1.i270 = bitcast %union.VectorReg* %2689 to %"class.std::bitset"*
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2691 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2690, i64 0, i64 3
  %XMM3.i271 = bitcast %union.VectorReg* %2691 to %union.vec128_t*
  %2692 = bitcast %"class.std::bitset"* %YMM1.i270 to i8*
  %2693 = bitcast %union.vec128_t* %XMM3.i271 to i8*
  %2694 = load i64, i64* %PC.i269
  %2695 = add i64 %2694, 3
  store i64 %2695, i64* %PC.i269
  %2696 = bitcast i8* %2693 to <2 x i32>*
  %2697 = load <2 x i32>, <2 x i32>* %2696, align 1
  %2698 = getelementptr inbounds i8, i8* %2693, i64 8
  %2699 = bitcast i8* %2698 to <2 x i32>*
  %2700 = load <2 x i32>, <2 x i32>* %2699, align 1
  %2701 = extractelement <2 x i32> %2697, i32 0
  %2702 = bitcast i8* %2692 to i32*
  store i32 %2701, i32* %2702, align 1
  %2703 = extractelement <2 x i32> %2697, i32 1
  %2704 = getelementptr inbounds i8, i8* %2692, i64 4
  %2705 = bitcast i8* %2704 to i32*
  store i32 %2703, i32* %2705, align 1
  %2706 = extractelement <2 x i32> %2700, i32 0
  %2707 = getelementptr inbounds i8, i8* %2692, i64 8
  %2708 = bitcast i8* %2707 to i32*
  store i32 %2706, i32* %2708, align 1
  %2709 = extractelement <2 x i32> %2700, i32 1
  %2710 = getelementptr inbounds i8, i8* %2692, i64 12
  %2711 = bitcast i8* %2710 to i32*
  store i32 %2709, i32* %2711, align 1
  store %struct.Memory* %loadMem_400964, %struct.Memory** %MEMORY
  %loadMem_400967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 33
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 15
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2718, i64 0, i64 2
  %YMM2.i268 = bitcast %union.VectorReg* %2719 to %"class.std::bitset"*
  %2720 = bitcast %"class.std::bitset"* %YMM2.i268 to i8*
  %2721 = load i64, i64* %RBP.i267
  %2722 = sub i64 %2721, 168
  %2723 = load i64, i64* %PC.i266
  %2724 = add i64 %2723, 8
  store i64 %2724, i64* %PC.i266
  %2725 = inttoptr i64 %2722 to double*
  %2726 = load double, double* %2725
  %2727 = bitcast i8* %2720 to double*
  store double %2726, double* %2727, align 1
  %2728 = getelementptr inbounds i8, i8* %2720, i64 8
  %2729 = bitcast i8* %2728 to double*
  store double 0.000000e+00, double* %2729, align 1
  store %struct.Memory* %loadMem_400967, %struct.Memory** %MEMORY
  %loadMem1_40096f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 33
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %2732 to i64*
  %2733 = load i64, i64* %PC.i265
  %2734 = add i64 %2733, 657
  %2735 = load i64, i64* %PC.i265
  %2736 = add i64 %2735, 5
  %2737 = load i64, i64* %PC.i265
  %2738 = add i64 %2737, 5
  store i64 %2738, i64* %PC.i265
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2740 = load i64, i64* %2739, align 8
  %2741 = add i64 %2740, -8
  %2742 = inttoptr i64 %2741 to i64*
  store i64 %2736, i64* %2742
  store i64 %2741, i64* %2739, align 8
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2734, i64* %2743, align 8
  store %struct.Memory* %loadMem1_40096f, %struct.Memory** %MEMORY
  %loadMem2_40096f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40096f = load i64, i64* %3
  %call2_40096f = call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %loadPC_40096f, %struct.Memory* %loadMem2_40096f)
  store %struct.Memory* %call2_40096f, %struct.Memory** %MEMORY
  %loadMem_400974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 33
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 15
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %2749 to i64*
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2751 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2750, i64 0, i64 1
  %YMM1.i264 = bitcast %union.VectorReg* %2751 to %"class.std::bitset"*
  %2752 = bitcast %"class.std::bitset"* %YMM1.i264 to i8*
  %2753 = load i64, i64* %RBP.i263
  %2754 = sub i64 %2753, 152
  %2755 = load i64, i64* %PC.i262
  %2756 = add i64 %2755, 8
  store i64 %2756, i64* %PC.i262
  %2757 = inttoptr i64 %2754 to double*
  %2758 = load double, double* %2757
  %2759 = bitcast i8* %2752 to double*
  store double %2758, double* %2759, align 1
  %2760 = getelementptr inbounds i8, i8* %2752, i64 8
  %2761 = bitcast i8* %2760 to double*
  store double 0.000000e+00, double* %2761, align 1
  store %struct.Memory* %loadMem_400974, %struct.Memory** %MEMORY
  %loadMem_40097c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 33
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 15
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %2767 to i64*
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2769 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2768, i64 0, i64 0
  %XMM0.i261 = bitcast %union.VectorReg* %2769 to %union.vec128_t*
  %2770 = load i64, i64* %RBP.i260
  %2771 = sub i64 %2770, 176
  %2772 = bitcast %union.vec128_t* %XMM0.i261 to i8*
  %2773 = load i64, i64* %PC.i259
  %2774 = add i64 %2773, 8
  store i64 %2774, i64* %PC.i259
  %2775 = bitcast i8* %2772 to double*
  %2776 = load double, double* %2775, align 1
  %2777 = inttoptr i64 %2771 to double*
  store double %2776, double* %2777
  store %struct.Memory* %loadMem_40097c, %struct.Memory** %MEMORY
  %loadMem_400984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 33
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2780 to i64*
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2782 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2781, i64 0, i64 0
  %YMM0.i257 = bitcast %union.VectorReg* %2782 to %"class.std::bitset"*
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2784 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2783, i64 0, i64 1
  %XMM1.i258 = bitcast %union.VectorReg* %2784 to %union.vec128_t*
  %2785 = bitcast %"class.std::bitset"* %YMM0.i257 to i8*
  %2786 = bitcast %union.vec128_t* %XMM1.i258 to i8*
  %2787 = load i64, i64* %PC.i256
  %2788 = add i64 %2787, 3
  store i64 %2788, i64* %PC.i256
  %2789 = bitcast i8* %2786 to <2 x i32>*
  %2790 = load <2 x i32>, <2 x i32>* %2789, align 1
  %2791 = getelementptr inbounds i8, i8* %2786, i64 8
  %2792 = bitcast i8* %2791 to <2 x i32>*
  %2793 = load <2 x i32>, <2 x i32>* %2792, align 1
  %2794 = extractelement <2 x i32> %2790, i32 0
  %2795 = bitcast i8* %2785 to i32*
  store i32 %2794, i32* %2795, align 1
  %2796 = extractelement <2 x i32> %2790, i32 1
  %2797 = getelementptr inbounds i8, i8* %2785, i64 4
  %2798 = bitcast i8* %2797 to i32*
  store i32 %2796, i32* %2798, align 1
  %2799 = extractelement <2 x i32> %2793, i32 0
  %2800 = getelementptr inbounds i8, i8* %2785, i64 8
  %2801 = bitcast i8* %2800 to i32*
  store i32 %2799, i32* %2801, align 1
  %2802 = extractelement <2 x i32> %2793, i32 1
  %2803 = getelementptr inbounds i8, i8* %2785, i64 12
  %2804 = bitcast i8* %2803 to i32*
  store i32 %2802, i32* %2804, align 1
  store %struct.Memory* %loadMem_400984, %struct.Memory** %MEMORY
  %loadMem_400987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 33
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 15
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2812 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2811, i64 0, i64 1
  %YMM1.i255 = bitcast %union.VectorReg* %2812 to %"class.std::bitset"*
  %2813 = bitcast %"class.std::bitset"* %YMM1.i255 to i8*
  %2814 = load i64, i64* %RBP.i254
  %2815 = sub i64 %2814, 160
  %2816 = load i64, i64* %PC.i253
  %2817 = add i64 %2816, 8
  store i64 %2817, i64* %PC.i253
  %2818 = inttoptr i64 %2815 to double*
  %2819 = load double, double* %2818
  %2820 = bitcast i8* %2813 to double*
  store double %2819, double* %2820, align 1
  %2821 = getelementptr inbounds i8, i8* %2813, i64 8
  %2822 = bitcast i8* %2821 to double*
  store double 0.000000e+00, double* %2822, align 1
  store %struct.Memory* %loadMem_400987, %struct.Memory** %MEMORY
  %loadMem_40098f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 15
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2830 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2829, i64 0, i64 2
  %YMM2.i252 = bitcast %union.VectorReg* %2830 to %"class.std::bitset"*
  %2831 = bitcast %"class.std::bitset"* %YMM2.i252 to i8*
  %2832 = load i64, i64* %RBP.i251
  %2833 = sub i64 %2832, 176
  %2834 = load i64, i64* %PC.i250
  %2835 = add i64 %2834, 8
  store i64 %2835, i64* %PC.i250
  %2836 = inttoptr i64 %2833 to double*
  %2837 = load double, double* %2836
  %2838 = bitcast i8* %2831 to double*
  store double %2837, double* %2838, align 1
  %2839 = getelementptr inbounds i8, i8* %2831, i64 8
  %2840 = bitcast i8* %2839 to double*
  store double 0.000000e+00, double* %2840, align 1
  store %struct.Memory* %loadMem_40098f, %struct.Memory** %MEMORY
  %loadMem1_400997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 33
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2843 to i64*
  %2844 = load i64, i64* %PC.i249
  %2845 = add i64 %2844, 953
  %2846 = load i64, i64* %PC.i249
  %2847 = add i64 %2846, 5
  %2848 = load i64, i64* %PC.i249
  %2849 = add i64 %2848, 5
  store i64 %2849, i64* %PC.i249
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2851 = load i64, i64* %2850, align 8
  %2852 = add i64 %2851, -8
  %2853 = inttoptr i64 %2852 to i64*
  store i64 %2847, i64* %2853
  store i64 %2852, i64* %2850, align 8
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2845, i64* %2854, align 8
  store %struct.Memory* %loadMem1_400997, %struct.Memory** %MEMORY
  %loadMem2_400997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400997 = load i64, i64* %3
  %call2_400997 = call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %loadPC_400997, %struct.Memory* %loadMem2_400997)
  store %struct.Memory* %call2_400997, %struct.Memory** %MEMORY
  %loadMem_40099c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 15
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2862 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2861, i64 0, i64 1
  %YMM1.i248 = bitcast %union.VectorReg* %2862 to %"class.std::bitset"*
  %2863 = bitcast %"class.std::bitset"* %YMM1.i248 to i8*
  %2864 = load i64, i64* %RBP.i247
  %2865 = sub i64 %2864, 104
  %2866 = load i64, i64* %PC.i246
  %2867 = add i64 %2866, 5
  store i64 %2867, i64* %PC.i246
  %2868 = inttoptr i64 %2865 to double*
  %2869 = load double, double* %2868
  %2870 = bitcast i8* %2863 to double*
  store double %2869, double* %2870, align 1
  %2871 = getelementptr inbounds i8, i8* %2863, i64 8
  %2872 = bitcast i8* %2871 to double*
  store double 0.000000e+00, double* %2872, align 1
  store %struct.Memory* %loadMem_40099c, %struct.Memory** %MEMORY
  %loadMem_4009a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 33
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 15
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %2878 to i64*
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2880 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2879, i64 0, i64 0
  %XMM0.i245 = bitcast %union.VectorReg* %2880 to %union.vec128_t*
  %2881 = load i64, i64* %RBP.i244
  %2882 = sub i64 %2881, 184
  %2883 = bitcast %union.vec128_t* %XMM0.i245 to i8*
  %2884 = load i64, i64* %PC.i243
  %2885 = add i64 %2884, 8
  store i64 %2885, i64* %PC.i243
  %2886 = bitcast i8* %2883 to double*
  %2887 = load double, double* %2886, align 1
  %2888 = inttoptr i64 %2882 to double*
  store double %2887, double* %2888
  store %struct.Memory* %loadMem_4009a1, %struct.Memory** %MEMORY
  %loadMem_4009a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 33
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2891 to i64*
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2893 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2892, i64 0, i64 0
  %YMM0.i241 = bitcast %union.VectorReg* %2893 to %"class.std::bitset"*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2895 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2894, i64 0, i64 1
  %XMM1.i242 = bitcast %union.VectorReg* %2895 to %union.vec128_t*
  %2896 = bitcast %"class.std::bitset"* %YMM0.i241 to i8*
  %2897 = bitcast %union.vec128_t* %XMM1.i242 to i8*
  %2898 = load i64, i64* %PC.i240
  %2899 = add i64 %2898, 3
  store i64 %2899, i64* %PC.i240
  %2900 = bitcast i8* %2897 to <2 x i32>*
  %2901 = load <2 x i32>, <2 x i32>* %2900, align 1
  %2902 = getelementptr inbounds i8, i8* %2897, i64 8
  %2903 = bitcast i8* %2902 to <2 x i32>*
  %2904 = load <2 x i32>, <2 x i32>* %2903, align 1
  %2905 = extractelement <2 x i32> %2901, i32 0
  %2906 = bitcast i8* %2896 to i32*
  store i32 %2905, i32* %2906, align 1
  %2907 = extractelement <2 x i32> %2901, i32 1
  %2908 = getelementptr inbounds i8, i8* %2896, i64 4
  %2909 = bitcast i8* %2908 to i32*
  store i32 %2907, i32* %2909, align 1
  %2910 = extractelement <2 x i32> %2904, i32 0
  %2911 = getelementptr inbounds i8, i8* %2896, i64 8
  %2912 = bitcast i8* %2911 to i32*
  store i32 %2910, i32* %2912, align 1
  %2913 = extractelement <2 x i32> %2904, i32 1
  %2914 = getelementptr inbounds i8, i8* %2896, i64 12
  %2915 = bitcast i8* %2914 to i32*
  store i32 %2913, i32* %2915, align 1
  store %struct.Memory* %loadMem_4009a9, %struct.Memory** %MEMORY
  %loadMem_4009ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 15
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %2921 to i64*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2922, i64 0, i64 1
  %YMM1.i239 = bitcast %union.VectorReg* %2923 to %"class.std::bitset"*
  %2924 = bitcast %"class.std::bitset"* %YMM1.i239 to i8*
  %2925 = load i64, i64* %RBP.i238
  %2926 = sub i64 %2925, 136
  %2927 = load i64, i64* %PC.i237
  %2928 = add i64 %2927, 8
  store i64 %2928, i64* %PC.i237
  %2929 = inttoptr i64 %2926 to double*
  %2930 = load double, double* %2929
  %2931 = bitcast i8* %2924 to double*
  store double %2930, double* %2931, align 1
  %2932 = getelementptr inbounds i8, i8* %2924, i64 8
  %2933 = bitcast i8* %2932 to double*
  store double 0.000000e+00, double* %2933, align 1
  store %struct.Memory* %loadMem_4009ac, %struct.Memory** %MEMORY
  %loadMem_4009b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 33
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2936 to i64*
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 15
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %2939 to i64*
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2941 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2940, i64 0, i64 2
  %YMM2.i236 = bitcast %union.VectorReg* %2941 to %"class.std::bitset"*
  %2942 = bitcast %"class.std::bitset"* %YMM2.i236 to i8*
  %2943 = load i64, i64* %RBP.i235
  %2944 = sub i64 %2943, 184
  %2945 = load i64, i64* %PC.i234
  %2946 = add i64 %2945, 8
  store i64 %2946, i64* %PC.i234
  %2947 = inttoptr i64 %2944 to double*
  %2948 = load double, double* %2947
  %2949 = bitcast i8* %2942 to double*
  store double %2948, double* %2949, align 1
  %2950 = getelementptr inbounds i8, i8* %2942, i64 8
  %2951 = bitcast i8* %2950 to double*
  store double 0.000000e+00, double* %2951, align 1
  store %struct.Memory* %loadMem_4009b4, %struct.Memory** %MEMORY
  %loadMem1_4009bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2954 to i64*
  %2955 = load i64, i64* %PC.i233
  %2956 = add i64 %2955, 916
  %2957 = load i64, i64* %PC.i233
  %2958 = add i64 %2957, 5
  %2959 = load i64, i64* %PC.i233
  %2960 = add i64 %2959, 5
  store i64 %2960, i64* %PC.i233
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2962 = load i64, i64* %2961, align 8
  %2963 = add i64 %2962, -8
  %2964 = inttoptr i64 %2963 to i64*
  store i64 %2958, i64* %2964
  store i64 %2963, i64* %2961, align 8
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2956, i64* %2965, align 8
  store %struct.Memory* %loadMem1_4009bc, %struct.Memory** %MEMORY
  %loadMem2_4009bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009bc = load i64, i64* %3
  %call2_4009bc = call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %loadPC_4009bc, %struct.Memory* %loadMem2_4009bc)
  store %struct.Memory* %call2_4009bc, %struct.Memory** %MEMORY
  %loadMem_4009c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 33
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2968 to i64*
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2970 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2969, i64 0, i64 1
  %YMM1.i232 = bitcast %union.VectorReg* %2970 to %"class.std::bitset"*
  %2971 = bitcast %"class.std::bitset"* %YMM1.i232 to i8*
  %2972 = load i64, i64* %PC.i231
  %2973 = add i64 %2972, ptrtoint (%G_0x497__rip__type* @G_0x497__rip_ to i64)
  %2974 = load i64, i64* %PC.i231
  %2975 = add i64 %2974, 8
  store i64 %2975, i64* %PC.i231
  %2976 = inttoptr i64 %2973 to double*
  %2977 = load double, double* %2976
  %2978 = bitcast i8* %2971 to double*
  store double %2977, double* %2978, align 1
  %2979 = getelementptr inbounds i8, i8* %2971, i64 8
  %2980 = bitcast i8* %2979 to double*
  store double 0.000000e+00, double* %2980, align 1
  store %struct.Memory* %loadMem_4009c1, %struct.Memory** %MEMORY
  %loadMem_4009c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 33
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 15
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2986 to i64*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2988 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2987, i64 0, i64 2
  %YMM2.i230 = bitcast %union.VectorReg* %2988 to %"class.std::bitset"*
  %2989 = bitcast %"class.std::bitset"* %YMM2.i230 to i8*
  %2990 = load i64, i64* %RBP.i229
  %2991 = sub i64 %2990, 56
  %2992 = load i64, i64* %PC.i228
  %2993 = add i64 %2992, 5
  store i64 %2993, i64* %PC.i228
  %2994 = inttoptr i64 %2991 to double*
  %2995 = load double, double* %2994
  %2996 = bitcast i8* %2989 to double*
  store double %2995, double* %2996, align 1
  %2997 = getelementptr inbounds i8, i8* %2989, i64 8
  %2998 = bitcast i8* %2997 to double*
  store double 0.000000e+00, double* %2998, align 1
  store %struct.Memory* %loadMem_4009c9, %struct.Memory** %MEMORY
  %loadMem_4009ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 15
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3006 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3005, i64 0, i64 3
  %YMM3.i227 = bitcast %union.VectorReg* %3006 to %"class.std::bitset"*
  %3007 = bitcast %"class.std::bitset"* %YMM3.i227 to i8*
  %3008 = load i64, i64* %RBP.i226
  %3009 = sub i64 %3008, 48
  %3010 = load i64, i64* %PC.i225
  %3011 = add i64 %3010, 5
  store i64 %3011, i64* %PC.i225
  %3012 = inttoptr i64 %3009 to double*
  %3013 = load double, double* %3012
  %3014 = bitcast i8* %3007 to double*
  store double %3013, double* %3014, align 1
  %3015 = getelementptr inbounds i8, i8* %3007, i64 8
  %3016 = bitcast i8* %3015 to double*
  store double 0.000000e+00, double* %3016, align 1
  store %struct.Memory* %loadMem_4009ce, %struct.Memory** %MEMORY
  %loadMem_4009d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 33
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3019 to i64*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 1
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 15
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %3025 to i64*
  %3026 = load i64, i64* %RBP.i224
  %3027 = sub i64 %3026, 72
  %3028 = load i64, i64* %PC.i222
  %3029 = add i64 %3028, 3
  store i64 %3029, i64* %PC.i222
  %3030 = inttoptr i64 %3027 to i32*
  %3031 = load i32, i32* %3030
  %3032 = zext i32 %3031 to i64
  store i64 %3032, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_4009d3, %struct.Memory** %MEMORY
  %loadMem_4009d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 33
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3035 to i64*
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 1
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %3038 to i64*
  %3039 = load i64, i64* %RAX.i221
  %3040 = load i64, i64* %PC.i220
  %3041 = add i64 %3040, 3
  store i64 %3041, i64* %PC.i220
  %3042 = trunc i64 %3039 to i32
  %3043 = add i32 1, %3042
  %3044 = zext i32 %3043 to i64
  store i64 %3044, i64* %RAX.i221, align 8
  %3045 = icmp ult i32 %3043, %3042
  %3046 = icmp ult i32 %3043, 1
  %3047 = or i1 %3045, %3046
  %3048 = zext i1 %3047 to i8
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3048, i8* %3049, align 1
  %3050 = and i32 %3043, 255
  %3051 = call i32 @llvm.ctpop.i32(i32 %3050)
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  %3054 = xor i8 %3053, 1
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3054, i8* %3055, align 1
  %3056 = xor i64 1, %3039
  %3057 = trunc i64 %3056 to i32
  %3058 = xor i32 %3057, %3043
  %3059 = lshr i32 %3058, 4
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3061, i8* %3062, align 1
  %3063 = icmp eq i32 %3043, 0
  %3064 = zext i1 %3063 to i8
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3064, i8* %3065, align 1
  %3066 = lshr i32 %3043, 31
  %3067 = trunc i32 %3066 to i8
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3067, i8* %3068, align 1
  %3069 = lshr i32 %3042, 31
  %3070 = xor i32 %3066, %3069
  %3071 = add i32 %3070, %3066
  %3072 = icmp eq i32 %3071, 2
  %3073 = zext i1 %3072 to i8
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3073, i8* %3074, align 1
  store %struct.Memory* %loadMem_4009d6, %struct.Memory** %MEMORY
  %loadMem_4009d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 33
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3077 to i64*
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 1
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %EAX.i218 = bitcast %union.anon* %3080 to i32*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 5
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %3083 to i64*
  %3084 = load i32, i32* %EAX.i218
  %3085 = zext i32 %3084 to i64
  %3086 = load i64, i64* %PC.i217
  %3087 = add i64 %3086, 3
  store i64 %3087, i64* %PC.i217
  %3088 = shl i64 %3085, 32
  %3089 = ashr exact i64 %3088, 32
  store i64 %3089, i64* %RCX.i219, align 8
  store %struct.Memory* %loadMem_4009d9, %struct.Memory** %MEMORY
  %loadMem_4009dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 5
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 11
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RDI.i216 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RCX.i215
  %3100 = mul i64 %3099, 4
  %3101 = add i64 %3100, 6300752
  %3102 = load i64, i64* %PC.i214
  %3103 = add i64 %3102, 7
  store i64 %3103, i64* %PC.i214
  %3104 = inttoptr i64 %3101 to i32*
  %3105 = load i32, i32* %3104
  %3106 = zext i32 %3105 to i64
  store i64 %3106, i64* %RDI.i216, align 8
  store %struct.Memory* %loadMem_4009dc, %struct.Memory** %MEMORY
  %loadMem_4009e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 33
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 15
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3114 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3113, i64 0, i64 4
  %YMM4.i213 = bitcast %union.VectorReg* %3114 to %"class.std::bitset"*
  %3115 = bitcast %"class.std::bitset"* %YMM4.i213 to i8*
  %3116 = load i64, i64* %RBP.i212
  %3117 = sub i64 %3116, 8
  %3118 = load i64, i64* %PC.i211
  %3119 = add i64 %3118, 5
  store i64 %3119, i64* %PC.i211
  %3120 = inttoptr i64 %3117 to double*
  %3121 = load double, double* %3120
  %3122 = bitcast i8* %3115 to double*
  store double %3121, double* %3122, align 1
  %3123 = getelementptr inbounds i8, i8* %3115, i64 8
  %3124 = bitcast i8* %3123 to double*
  store double 0.000000e+00, double* %3124, align 1
  store %struct.Memory* %loadMem_4009e3, %struct.Memory** %MEMORY
  %loadMem_4009e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 33
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3127 to i64*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 15
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %3130 to i64*
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3132 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3131, i64 0, i64 5
  %YMM5.i210 = bitcast %union.VectorReg* %3132 to %"class.std::bitset"*
  %3133 = bitcast %"class.std::bitset"* %YMM5.i210 to i8*
  %3134 = load i64, i64* %RBP.i209
  %3135 = sub i64 %3134, 16
  %3136 = load i64, i64* %PC.i208
  %3137 = add i64 %3136, 5
  store i64 %3137, i64* %PC.i208
  %3138 = inttoptr i64 %3135 to double*
  %3139 = load double, double* %3138
  %3140 = bitcast i8* %3133 to double*
  store double %3139, double* %3140, align 1
  %3141 = getelementptr inbounds i8, i8* %3133, i64 8
  %3142 = bitcast i8* %3141 to double*
  store double 0.000000e+00, double* %3142, align 1
  store %struct.Memory* %loadMem_4009e8, %struct.Memory** %MEMORY
  %loadMem_4009ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 33
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 15
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3150 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3149, i64 0, i64 6
  %YMM6.i207 = bitcast %union.VectorReg* %3150 to %"class.std::bitset"*
  %3151 = bitcast %"class.std::bitset"* %YMM6.i207 to i8*
  %3152 = load i64, i64* %RBP.i206
  %3153 = sub i64 %3152, 24
  %3154 = load i64, i64* %PC.i205
  %3155 = add i64 %3154, 5
  store i64 %3155, i64* %PC.i205
  %3156 = inttoptr i64 %3153 to double*
  %3157 = load double, double* %3156
  %3158 = bitcast i8* %3151 to double*
  store double %3157, double* %3158, align 1
  %3159 = getelementptr inbounds i8, i8* %3151, i64 8
  %3160 = bitcast i8* %3159 to double*
  store double 0.000000e+00, double* %3160, align 1
  store %struct.Memory* %loadMem_4009ed, %struct.Memory** %MEMORY
  %loadMem_4009f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 33
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3165 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3164, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %3165 to %"class.std::bitset"*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3167 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3166, i64 0, i64 1
  %XMM1.i204 = bitcast %union.VectorReg* %3167 to %union.vec128_t*
  %3168 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %3169 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %3170 = bitcast %union.vec128_t* %XMM1.i204 to i8*
  %3171 = load i64, i64* %PC.i203
  %3172 = add i64 %3171, 4
  store i64 %3172, i64* %PC.i203
  %3173 = bitcast i8* %3169 to double*
  %3174 = load double, double* %3173, align 1
  %3175 = getelementptr inbounds i8, i8* %3169, i64 8
  %3176 = bitcast i8* %3175 to i64*
  %3177 = load i64, i64* %3176, align 1
  %3178 = bitcast i8* %3170 to double*
  %3179 = load double, double* %3178, align 1
  %3180 = fsub double %3174, %3179
  %3181 = bitcast i8* %3168 to double*
  store double %3180, double* %3181, align 1
  %3182 = getelementptr inbounds i8, i8* %3168, i64 8
  %3183 = bitcast i8* %3182 to i64*
  store i64 %3177, i64* %3183, align 1
  store %struct.Memory* %loadMem_4009f2, %struct.Memory** %MEMORY
  %loadMem_4009f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 33
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3186 to i64*
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 15
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %3189 to i64*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3191 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3190, i64 0, i64 0
  %XMM0.i202 = bitcast %union.VectorReg* %3191 to %union.vec128_t*
  %3192 = load i64, i64* %RBP.i201
  %3193 = sub i64 %3192, 192
  %3194 = bitcast %union.vec128_t* %XMM0.i202 to i8*
  %3195 = load i64, i64* %PC.i200
  %3196 = add i64 %3195, 8
  store i64 %3196, i64* %PC.i200
  %3197 = bitcast i8* %3194 to double*
  %3198 = load double, double* %3197, align 1
  %3199 = inttoptr i64 %3193 to double*
  store double %3198, double* %3199
  store %struct.Memory* %loadMem_4009f6, %struct.Memory** %MEMORY
  %loadMem_4009fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3204 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3203, i64 0, i64 0
  %YMM0.i198 = bitcast %union.VectorReg* %3204 to %"class.std::bitset"*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3206 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3205, i64 0, i64 4
  %XMM4.i199 = bitcast %union.VectorReg* %3206 to %union.vec128_t*
  %3207 = bitcast %"class.std::bitset"* %YMM0.i198 to i8*
  %3208 = bitcast %union.vec128_t* %XMM4.i199 to i8*
  %3209 = load i64, i64* %PC.i197
  %3210 = add i64 %3209, 3
  store i64 %3210, i64* %PC.i197
  %3211 = bitcast i8* %3208 to <2 x i32>*
  %3212 = load <2 x i32>, <2 x i32>* %3211, align 1
  %3213 = getelementptr inbounds i8, i8* %3208, i64 8
  %3214 = bitcast i8* %3213 to <2 x i32>*
  %3215 = load <2 x i32>, <2 x i32>* %3214, align 1
  %3216 = extractelement <2 x i32> %3212, i32 0
  %3217 = bitcast i8* %3207 to i32*
  store i32 %3216, i32* %3217, align 1
  %3218 = extractelement <2 x i32> %3212, i32 1
  %3219 = getelementptr inbounds i8, i8* %3207, i64 4
  %3220 = bitcast i8* %3219 to i32*
  store i32 %3218, i32* %3220, align 1
  %3221 = extractelement <2 x i32> %3215, i32 0
  %3222 = getelementptr inbounds i8, i8* %3207, i64 8
  %3223 = bitcast i8* %3222 to i32*
  store i32 %3221, i32* %3223, align 1
  %3224 = extractelement <2 x i32> %3215, i32 1
  %3225 = getelementptr inbounds i8, i8* %3207, i64 12
  %3226 = bitcast i8* %3225 to i32*
  store i32 %3224, i32* %3226, align 1
  store %struct.Memory* %loadMem_4009fe, %struct.Memory** %MEMORY
  %loadMem_400a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 33
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3229 to i64*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3231 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3230, i64 0, i64 1
  %YMM1.i195 = bitcast %union.VectorReg* %3231 to %"class.std::bitset"*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3233 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3232, i64 0, i64 5
  %XMM5.i196 = bitcast %union.VectorReg* %3233 to %union.vec128_t*
  %3234 = bitcast %"class.std::bitset"* %YMM1.i195 to i8*
  %3235 = bitcast %union.vec128_t* %XMM5.i196 to i8*
  %3236 = load i64, i64* %PC.i194
  %3237 = add i64 %3236, 3
  store i64 %3237, i64* %PC.i194
  %3238 = bitcast i8* %3235 to <2 x i32>*
  %3239 = load <2 x i32>, <2 x i32>* %3238, align 1
  %3240 = getelementptr inbounds i8, i8* %3235, i64 8
  %3241 = bitcast i8* %3240 to <2 x i32>*
  %3242 = load <2 x i32>, <2 x i32>* %3241, align 1
  %3243 = extractelement <2 x i32> %3239, i32 0
  %3244 = bitcast i8* %3234 to i32*
  store i32 %3243, i32* %3244, align 1
  %3245 = extractelement <2 x i32> %3239, i32 1
  %3246 = getelementptr inbounds i8, i8* %3234, i64 4
  %3247 = bitcast i8* %3246 to i32*
  store i32 %3245, i32* %3247, align 1
  %3248 = extractelement <2 x i32> %3242, i32 0
  %3249 = getelementptr inbounds i8, i8* %3234, i64 8
  %3250 = bitcast i8* %3249 to i32*
  store i32 %3248, i32* %3250, align 1
  %3251 = extractelement <2 x i32> %3242, i32 1
  %3252 = getelementptr inbounds i8, i8* %3234, i64 12
  %3253 = bitcast i8* %3252 to i32*
  store i32 %3251, i32* %3253, align 1
  store %struct.Memory* %loadMem_400a01, %struct.Memory** %MEMORY
  %loadMem_400a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 33
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3256 to i64*
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 15
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3260, i64 0, i64 2
  %XMM2.i193 = bitcast %union.VectorReg* %3261 to %union.vec128_t*
  %3262 = load i64, i64* %RBP.i192
  %3263 = sub i64 %3262, 200
  %3264 = bitcast %union.vec128_t* %XMM2.i193 to i8*
  %3265 = load i64, i64* %PC.i191
  %3266 = add i64 %3265, 8
  store i64 %3266, i64* %PC.i191
  %3267 = bitcast i8* %3264 to double*
  %3268 = load double, double* %3267, align 1
  %3269 = inttoptr i64 %3263 to double*
  store double %3268, double* %3269
  store %struct.Memory* %loadMem_400a04, %struct.Memory** %MEMORY
  %loadMem_400a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 33
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3274 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3273, i64 0, i64 2
  %YMM2.i190 = bitcast %union.VectorReg* %3274 to %"class.std::bitset"*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3276 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3275, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %3276 to %union.vec128_t*
  %3277 = bitcast %"class.std::bitset"* %YMM2.i190 to i8*
  %3278 = bitcast %union.vec128_t* %XMM6.i to i8*
  %3279 = load i64, i64* %PC.i189
  %3280 = add i64 %3279, 3
  store i64 %3280, i64* %PC.i189
  %3281 = bitcast i8* %3278 to <2 x i32>*
  %3282 = load <2 x i32>, <2 x i32>* %3281, align 1
  %3283 = getelementptr inbounds i8, i8* %3278, i64 8
  %3284 = bitcast i8* %3283 to <2 x i32>*
  %3285 = load <2 x i32>, <2 x i32>* %3284, align 1
  %3286 = extractelement <2 x i32> %3282, i32 0
  %3287 = bitcast i8* %3277 to i32*
  store i32 %3286, i32* %3287, align 1
  %3288 = extractelement <2 x i32> %3282, i32 1
  %3289 = getelementptr inbounds i8, i8* %3277, i64 4
  %3290 = bitcast i8* %3289 to i32*
  store i32 %3288, i32* %3290, align 1
  %3291 = extractelement <2 x i32> %3285, i32 0
  %3292 = getelementptr inbounds i8, i8* %3277, i64 8
  %3293 = bitcast i8* %3292 to i32*
  store i32 %3291, i32* %3293, align 1
  %3294 = extractelement <2 x i32> %3285, i32 1
  %3295 = getelementptr inbounds i8, i8* %3277, i64 12
  %3296 = bitcast i8* %3295 to i32*
  store i32 %3294, i32* %3296, align 1
  store %struct.Memory* %loadMem_400a0c, %struct.Memory** %MEMORY
  %loadMem_400a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 33
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 15
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %3302 to i64*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3304 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3303, i64 0, i64 3
  %XMM3.i188 = bitcast %union.VectorReg* %3304 to %union.vec128_t*
  %3305 = load i64, i64* %RBP.i187
  %3306 = sub i64 %3305, 208
  %3307 = bitcast %union.vec128_t* %XMM3.i188 to i8*
  %3308 = load i64, i64* %PC.i186
  %3309 = add i64 %3308, 8
  store i64 %3309, i64* %PC.i186
  %3310 = bitcast i8* %3307 to double*
  %3311 = load double, double* %3310, align 1
  %3312 = inttoptr i64 %3306 to double*
  store double %3311, double* %3312
  store %struct.Memory* %loadMem_400a0f, %struct.Memory** %MEMORY
  %loadMem1_400a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 33
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3315 to i64*
  %3316 = load i64, i64* %PC.i185
  %3317 = add i64 %3316, 489
  %3318 = load i64, i64* %PC.i185
  %3319 = add i64 %3318, 5
  %3320 = load i64, i64* %PC.i185
  %3321 = add i64 %3320, 5
  store i64 %3321, i64* %PC.i185
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3323 = load i64, i64* %3322, align 8
  %3324 = add i64 %3323, -8
  %3325 = inttoptr i64 %3324 to i64*
  store i64 %3319, i64* %3325
  store i64 %3324, i64* %3322, align 8
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3317, i64* %3326, align 8
  store %struct.Memory* %loadMem1_400a17, %struct.Memory** %MEMORY
  %loadMem2_400a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a17 = load i64, i64* %3
  %call2_400a17 = call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %loadPC_400a17, %struct.Memory* %loadMem2_400a17)
  store %struct.Memory* %call2_400a17, %struct.Memory** %MEMORY
  %loadMem_400a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 33
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3331 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3330, i64 0, i64 1
  %YMM1.i184 = bitcast %union.VectorReg* %3331 to %"class.std::bitset"*
  %3332 = bitcast %"class.std::bitset"* %YMM1.i184 to i8*
  %3333 = load i64, i64* %PC.i183
  %3334 = add i64 %3333, ptrtoint (%G_0x43c__rip__type* @G_0x43c__rip_ to i64)
  %3335 = load i64, i64* %PC.i183
  %3336 = add i64 %3335, 8
  store i64 %3336, i64* %PC.i183
  %3337 = inttoptr i64 %3334 to double*
  %3338 = load double, double* %3337
  %3339 = bitcast i8* %3332 to double*
  store double %3338, double* %3339, align 1
  %3340 = getelementptr inbounds i8, i8* %3332, i64 8
  %3341 = bitcast i8* %3340 to double*
  store double 0.000000e+00, double* %3341, align 1
  store %struct.Memory* %loadMem_400a1c, %struct.Memory** %MEMORY
  %loadMem_400a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 33
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3344 to i64*
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 1
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %3347 to i64*
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 15
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %3350 to i64*
  %3351 = load i64, i64* %RBP.i182
  %3352 = sub i64 %3351, 84
  %3353 = load i64, i64* %PC.i180
  %3354 = add i64 %3353, 3
  store i64 %3354, i64* %PC.i180
  %3355 = inttoptr i64 %3352 to i32*
  %3356 = load i32, i32* %3355
  %3357 = zext i32 %3356 to i64
  store i64 %3357, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_400a24, %struct.Memory** %MEMORY
  %loadMem_400a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 33
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3360 to i64*
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 1
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %3363 to i64*
  %3364 = load i64, i64* %RAX.i179
  %3365 = load i64, i64* %PC.i178
  %3366 = add i64 %3365, 3
  store i64 %3366, i64* %PC.i178
  %3367 = trunc i64 %3364 to i32
  %3368 = add i32 1, %3367
  %3369 = zext i32 %3368 to i64
  store i64 %3369, i64* %RAX.i179, align 8
  %3370 = icmp ult i32 %3368, %3367
  %3371 = icmp ult i32 %3368, 1
  %3372 = or i1 %3370, %3371
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3373, i8* %3374, align 1
  %3375 = and i32 %3368, 255
  %3376 = call i32 @llvm.ctpop.i32(i32 %3375)
  %3377 = trunc i32 %3376 to i8
  %3378 = and i8 %3377, 1
  %3379 = xor i8 %3378, 1
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3379, i8* %3380, align 1
  %3381 = xor i64 1, %3364
  %3382 = trunc i64 %3381 to i32
  %3383 = xor i32 %3382, %3368
  %3384 = lshr i32 %3383, 4
  %3385 = trunc i32 %3384 to i8
  %3386 = and i8 %3385, 1
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3386, i8* %3387, align 1
  %3388 = icmp eq i32 %3368, 0
  %3389 = zext i1 %3388 to i8
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3389, i8* %3390, align 1
  %3391 = lshr i32 %3368, 31
  %3392 = trunc i32 %3391 to i8
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3392, i8* %3393, align 1
  %3394 = lshr i32 %3367, 31
  %3395 = xor i32 %3391, %3394
  %3396 = add i32 %3395, %3391
  %3397 = icmp eq i32 %3396, 2
  %3398 = zext i1 %3397 to i8
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3398, i8* %3399, align 1
  store %struct.Memory* %loadMem_400a27, %struct.Memory** %MEMORY
  %loadMem_400a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 33
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 1
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %EAX.i176 = bitcast %union.anon* %3405 to i32*
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 5
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %3408 to i64*
  %3409 = load i32, i32* %EAX.i176
  %3410 = zext i32 %3409 to i64
  %3411 = load i64, i64* %PC.i175
  %3412 = add i64 %3411, 3
  store i64 %3412, i64* %PC.i175
  %3413 = shl i64 %3410, 32
  %3414 = ashr exact i64 %3413, 32
  store i64 %3414, i64* %RCX.i177, align 8
  store %struct.Memory* %loadMem_400a2a, %struct.Memory** %MEMORY
  %loadMem_400a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 33
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3417 to i64*
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 5
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 11
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RDI.i174 = bitcast %union.anon* %3423 to i64*
  %3424 = load i64, i64* %RCX.i173
  %3425 = mul i64 %3424, 4
  %3426 = add i64 %3425, 6300752
  %3427 = load i64, i64* %PC.i172
  %3428 = add i64 %3427, 7
  store i64 %3428, i64* %PC.i172
  %3429 = inttoptr i64 %3426 to i32*
  %3430 = load i32, i32* %3429
  %3431 = zext i32 %3430 to i64
  store i64 %3431, i64* %RDI.i174, align 8
  store %struct.Memory* %loadMem_400a2d, %struct.Memory** %MEMORY
  %loadMem_400a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 33
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3434 to i64*
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 15
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %3437 to i64*
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3438, i64 0, i64 2
  %YMM2.i171 = bitcast %union.VectorReg* %3439 to %"class.std::bitset"*
  %3440 = bitcast %"class.std::bitset"* %YMM2.i171 to i8*
  %3441 = load i64, i64* %RBP.i170
  %3442 = sub i64 %3441, 8
  %3443 = load i64, i64* %PC.i169
  %3444 = add i64 %3443, 5
  store i64 %3444, i64* %PC.i169
  %3445 = inttoptr i64 %3442 to double*
  %3446 = load double, double* %3445
  %3447 = bitcast i8* %3440 to double*
  store double %3446, double* %3447, align 1
  %3448 = getelementptr inbounds i8, i8* %3440, i64 8
  %3449 = bitcast i8* %3448 to double*
  store double 0.000000e+00, double* %3449, align 1
  store %struct.Memory* %loadMem_400a34, %struct.Memory** %MEMORY
  %loadMem_400a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 33
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3452 to i64*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3454 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3453, i64 0, i64 2
  %YMM2.i167 = bitcast %union.VectorReg* %3454 to %"class.std::bitset"*
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3456 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3455, i64 0, i64 1
  %XMM1.i168 = bitcast %union.VectorReg* %3456 to %union.vec128_t*
  %3457 = bitcast %"class.std::bitset"* %YMM2.i167 to i8*
  %3458 = bitcast %"class.std::bitset"* %YMM2.i167 to i8*
  %3459 = bitcast %union.vec128_t* %XMM1.i168 to i8*
  %3460 = load i64, i64* %PC.i166
  %3461 = add i64 %3460, 4
  store i64 %3461, i64* %PC.i166
  %3462 = bitcast i8* %3458 to double*
  %3463 = load double, double* %3462, align 1
  %3464 = getelementptr inbounds i8, i8* %3458, i64 8
  %3465 = bitcast i8* %3464 to i64*
  %3466 = load i64, i64* %3465, align 1
  %3467 = bitcast i8* %3459 to double*
  %3468 = load double, double* %3467, align 1
  %3469 = fsub double %3463, %3468
  %3470 = bitcast i8* %3457 to double*
  store double %3469, double* %3470, align 1
  %3471 = getelementptr inbounds i8, i8* %3457, i64 8
  %3472 = bitcast i8* %3471 to i64*
  store i64 %3466, i64* %3472, align 1
  store %struct.Memory* %loadMem_400a39, %struct.Memory** %MEMORY
  %loadMem_400a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 33
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3475 to i64*
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 15
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %3478 to i64*
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3480 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3479, i64 0, i64 3
  %YMM3.i165 = bitcast %union.VectorReg* %3480 to %"class.std::bitset"*
  %3481 = bitcast %"class.std::bitset"* %YMM3.i165 to i8*
  %3482 = load i64, i64* %RBP.i164
  %3483 = sub i64 %3482, 16
  %3484 = load i64, i64* %PC.i163
  %3485 = add i64 %3484, 5
  store i64 %3485, i64* %PC.i163
  %3486 = inttoptr i64 %3483 to double*
  %3487 = load double, double* %3486
  %3488 = bitcast i8* %3481 to double*
  store double %3487, double* %3488, align 1
  %3489 = getelementptr inbounds i8, i8* %3481, i64 8
  %3490 = bitcast i8* %3489 to double*
  store double 0.000000e+00, double* %3490, align 1
  store %struct.Memory* %loadMem_400a3d, %struct.Memory** %MEMORY
  %loadMem_400a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3493 to i64*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 15
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3497, i64 0, i64 4
  %YMM4.i162 = bitcast %union.VectorReg* %3498 to %"class.std::bitset"*
  %3499 = bitcast %"class.std::bitset"* %YMM4.i162 to i8*
  %3500 = load i64, i64* %RBP.i161
  %3501 = sub i64 %3500, 24
  %3502 = load i64, i64* %PC.i160
  %3503 = add i64 %3502, 5
  store i64 %3503, i64* %PC.i160
  %3504 = inttoptr i64 %3501 to double*
  %3505 = load double, double* %3504
  %3506 = bitcast i8* %3499 to double*
  store double %3505, double* %3506, align 1
  %3507 = getelementptr inbounds i8, i8* %3499, i64 8
  %3508 = bitcast i8* %3507 to double*
  store double 0.000000e+00, double* %3508, align 1
  store %struct.Memory* %loadMem_400a42, %struct.Memory** %MEMORY
  %loadMem_400a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 33
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3513 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3512, i64 0, i64 4
  %YMM4.i158 = bitcast %union.VectorReg* %3513 to %"class.std::bitset"*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3515 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3514, i64 0, i64 1
  %XMM1.i159 = bitcast %union.VectorReg* %3515 to %union.vec128_t*
  %3516 = bitcast %"class.std::bitset"* %YMM4.i158 to i8*
  %3517 = bitcast %"class.std::bitset"* %YMM4.i158 to i8*
  %3518 = bitcast %union.vec128_t* %XMM1.i159 to i8*
  %3519 = load i64, i64* %PC.i157
  %3520 = add i64 %3519, 4
  store i64 %3520, i64* %PC.i157
  %3521 = bitcast i8* %3517 to double*
  %3522 = load double, double* %3521, align 1
  %3523 = getelementptr inbounds i8, i8* %3517, i64 8
  %3524 = bitcast i8* %3523 to i64*
  %3525 = load i64, i64* %3524, align 1
  %3526 = bitcast i8* %3518 to double*
  %3527 = load double, double* %3526, align 1
  %3528 = fsub double %3522, %3527
  %3529 = bitcast i8* %3516 to double*
  store double %3528, double* %3529, align 1
  %3530 = getelementptr inbounds i8, i8* %3516, i64 8
  %3531 = bitcast i8* %3530 to i64*
  store i64 %3525, i64* %3531, align 1
  store %struct.Memory* %loadMem_400a47, %struct.Memory** %MEMORY
  %loadMem_400a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 33
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3534 to i64*
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 15
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3539 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3538, i64 0, i64 0
  %XMM0.i156 = bitcast %union.VectorReg* %3539 to %union.vec128_t*
  %3540 = load i64, i64* %RBP.i155
  %3541 = sub i64 %3540, 216
  %3542 = bitcast %union.vec128_t* %XMM0.i156 to i8*
  %3543 = load i64, i64* %PC.i154
  %3544 = add i64 %3543, 8
  store i64 %3544, i64* %PC.i154
  %3545 = bitcast i8* %3542 to double*
  %3546 = load double, double* %3545, align 1
  %3547 = inttoptr i64 %3541 to double*
  store double %3546, double* %3547
  store %struct.Memory* %loadMem_400a4b, %struct.Memory** %MEMORY
  %loadMem_400a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3552 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3551, i64 0, i64 0
  %YMM0.i152 = bitcast %union.VectorReg* %3552 to %"class.std::bitset"*
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3554 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3553, i64 0, i64 2
  %XMM2.i153 = bitcast %union.VectorReg* %3554 to %union.vec128_t*
  %3555 = bitcast %"class.std::bitset"* %YMM0.i152 to i8*
  %3556 = bitcast %union.vec128_t* %XMM2.i153 to i8*
  %3557 = load i64, i64* %PC.i151
  %3558 = add i64 %3557, 3
  store i64 %3558, i64* %PC.i151
  %3559 = bitcast i8* %3556 to <2 x i32>*
  %3560 = load <2 x i32>, <2 x i32>* %3559, align 1
  %3561 = getelementptr inbounds i8, i8* %3556, i64 8
  %3562 = bitcast i8* %3561 to <2 x i32>*
  %3563 = load <2 x i32>, <2 x i32>* %3562, align 1
  %3564 = extractelement <2 x i32> %3560, i32 0
  %3565 = bitcast i8* %3555 to i32*
  store i32 %3564, i32* %3565, align 1
  %3566 = extractelement <2 x i32> %3560, i32 1
  %3567 = getelementptr inbounds i8, i8* %3555, i64 4
  %3568 = bitcast i8* %3567 to i32*
  store i32 %3566, i32* %3568, align 1
  %3569 = extractelement <2 x i32> %3563, i32 0
  %3570 = getelementptr inbounds i8, i8* %3555, i64 8
  %3571 = bitcast i8* %3570 to i32*
  store i32 %3569, i32* %3571, align 1
  %3572 = extractelement <2 x i32> %3563, i32 1
  %3573 = getelementptr inbounds i8, i8* %3555, i64 12
  %3574 = bitcast i8* %3573 to i32*
  store i32 %3572, i32* %3574, align 1
  store %struct.Memory* %loadMem_400a53, %struct.Memory** %MEMORY
  %loadMem_400a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 33
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3577 to i64*
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3579 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3578, i64 0, i64 1
  %YMM1.i149 = bitcast %union.VectorReg* %3579 to %"class.std::bitset"*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3581 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3580, i64 0, i64 3
  %XMM3.i150 = bitcast %union.VectorReg* %3581 to %union.vec128_t*
  %3582 = bitcast %"class.std::bitset"* %YMM1.i149 to i8*
  %3583 = bitcast %union.vec128_t* %XMM3.i150 to i8*
  %3584 = load i64, i64* %PC.i148
  %3585 = add i64 %3584, 3
  store i64 %3585, i64* %PC.i148
  %3586 = bitcast i8* %3583 to <2 x i32>*
  %3587 = load <2 x i32>, <2 x i32>* %3586, align 1
  %3588 = getelementptr inbounds i8, i8* %3583, i64 8
  %3589 = bitcast i8* %3588 to <2 x i32>*
  %3590 = load <2 x i32>, <2 x i32>* %3589, align 1
  %3591 = extractelement <2 x i32> %3587, i32 0
  %3592 = bitcast i8* %3582 to i32*
  store i32 %3591, i32* %3592, align 1
  %3593 = extractelement <2 x i32> %3587, i32 1
  %3594 = getelementptr inbounds i8, i8* %3582, i64 4
  %3595 = bitcast i8* %3594 to i32*
  store i32 %3593, i32* %3595, align 1
  %3596 = extractelement <2 x i32> %3590, i32 0
  %3597 = getelementptr inbounds i8, i8* %3582, i64 8
  %3598 = bitcast i8* %3597 to i32*
  store i32 %3596, i32* %3598, align 1
  %3599 = extractelement <2 x i32> %3590, i32 1
  %3600 = getelementptr inbounds i8, i8* %3582, i64 12
  %3601 = bitcast i8* %3600 to i32*
  store i32 %3599, i32* %3601, align 1
  store %struct.Memory* %loadMem_400a56, %struct.Memory** %MEMORY
  %loadMem_400a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 33
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3604 to i64*
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3606 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3605, i64 0, i64 2
  %YMM2.i146 = bitcast %union.VectorReg* %3606 to %"class.std::bitset"*
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3608 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3607, i64 0, i64 4
  %XMM4.i147 = bitcast %union.VectorReg* %3608 to %union.vec128_t*
  %3609 = bitcast %"class.std::bitset"* %YMM2.i146 to i8*
  %3610 = bitcast %union.vec128_t* %XMM4.i147 to i8*
  %3611 = load i64, i64* %PC.i145
  %3612 = add i64 %3611, 3
  store i64 %3612, i64* %PC.i145
  %3613 = bitcast i8* %3610 to <2 x i32>*
  %3614 = load <2 x i32>, <2 x i32>* %3613, align 1
  %3615 = getelementptr inbounds i8, i8* %3610, i64 8
  %3616 = bitcast i8* %3615 to <2 x i32>*
  %3617 = load <2 x i32>, <2 x i32>* %3616, align 1
  %3618 = extractelement <2 x i32> %3614, i32 0
  %3619 = bitcast i8* %3609 to i32*
  store i32 %3618, i32* %3619, align 1
  %3620 = extractelement <2 x i32> %3614, i32 1
  %3621 = getelementptr inbounds i8, i8* %3609, i64 4
  %3622 = bitcast i8* %3621 to i32*
  store i32 %3620, i32* %3622, align 1
  %3623 = extractelement <2 x i32> %3617, i32 0
  %3624 = getelementptr inbounds i8, i8* %3609, i64 8
  %3625 = bitcast i8* %3624 to i32*
  store i32 %3623, i32* %3625, align 1
  %3626 = extractelement <2 x i32> %3617, i32 1
  %3627 = getelementptr inbounds i8, i8* %3609, i64 12
  %3628 = bitcast i8* %3627 to i32*
  store i32 %3626, i32* %3628, align 1
  store %struct.Memory* %loadMem_400a59, %struct.Memory** %MEMORY
  %loadMem1_400a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 33
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3631 to i64*
  %3632 = load i64, i64* %PC.i144
  %3633 = add i64 %3632, 420
  %3634 = load i64, i64* %PC.i144
  %3635 = add i64 %3634, 5
  %3636 = load i64, i64* %PC.i144
  %3637 = add i64 %3636, 5
  store i64 %3637, i64* %PC.i144
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3639 = load i64, i64* %3638, align 8
  %3640 = add i64 %3639, -8
  %3641 = inttoptr i64 %3640 to i64*
  store i64 %3635, i64* %3641
  store i64 %3640, i64* %3638, align 8
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3633, i64* %3642, align 8
  store %struct.Memory* %loadMem1_400a5c, %struct.Memory** %MEMORY
  %loadMem2_400a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a5c = load i64, i64* %3
  %call2_400a5c = call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %loadPC_400a5c, %struct.Memory* %loadMem2_400a5c)
  store %struct.Memory* %call2_400a5c, %struct.Memory** %MEMORY
  %loadMem_400a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 33
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3645 to i64*
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 15
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %3648 to i64*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3650 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3649, i64 0, i64 1
  %YMM1.i143 = bitcast %union.VectorReg* %3650 to %"class.std::bitset"*
  %3651 = bitcast %"class.std::bitset"* %YMM1.i143 to i8*
  %3652 = load i64, i64* %RBP.i142
  %3653 = sub i64 %3652, 208
  %3654 = load i64, i64* %PC.i141
  %3655 = add i64 %3654, 8
  store i64 %3655, i64* %PC.i141
  %3656 = inttoptr i64 %3653 to double*
  %3657 = load double, double* %3656
  %3658 = bitcast i8* %3651 to double*
  store double %3657, double* %3658, align 1
  %3659 = getelementptr inbounds i8, i8* %3651, i64 8
  %3660 = bitcast i8* %3659 to double*
  store double 0.000000e+00, double* %3660, align 1
  store %struct.Memory* %loadMem_400a61, %struct.Memory** %MEMORY
  %loadMem_400a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 33
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3663 to i64*
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 15
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %3666 to i64*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3668 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3667, i64 0, i64 0
  %XMM0.i140 = bitcast %union.VectorReg* %3668 to %union.vec128_t*
  %3669 = load i64, i64* %RBP.i139
  %3670 = sub i64 %3669, 224
  %3671 = bitcast %union.vec128_t* %XMM0.i140 to i8*
  %3672 = load i64, i64* %PC.i138
  %3673 = add i64 %3672, 8
  store i64 %3673, i64* %PC.i138
  %3674 = bitcast i8* %3671 to double*
  %3675 = load double, double* %3674, align 1
  %3676 = inttoptr i64 %3670 to double*
  store double %3675, double* %3676
  store %struct.Memory* %loadMem_400a69, %struct.Memory** %MEMORY
  %loadMem_400a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 33
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3679 to i64*
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3681 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3680, i64 0, i64 0
  %YMM0.i136 = bitcast %union.VectorReg* %3681 to %"class.std::bitset"*
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3683 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3682, i64 0, i64 1
  %XMM1.i137 = bitcast %union.VectorReg* %3683 to %union.vec128_t*
  %3684 = bitcast %"class.std::bitset"* %YMM0.i136 to i8*
  %3685 = bitcast %union.vec128_t* %XMM1.i137 to i8*
  %3686 = load i64, i64* %PC.i135
  %3687 = add i64 %3686, 3
  store i64 %3687, i64* %PC.i135
  %3688 = bitcast i8* %3685 to <2 x i32>*
  %3689 = load <2 x i32>, <2 x i32>* %3688, align 1
  %3690 = getelementptr inbounds i8, i8* %3685, i64 8
  %3691 = bitcast i8* %3690 to <2 x i32>*
  %3692 = load <2 x i32>, <2 x i32>* %3691, align 1
  %3693 = extractelement <2 x i32> %3689, i32 0
  %3694 = bitcast i8* %3684 to i32*
  store i32 %3693, i32* %3694, align 1
  %3695 = extractelement <2 x i32> %3689, i32 1
  %3696 = getelementptr inbounds i8, i8* %3684, i64 4
  %3697 = bitcast i8* %3696 to i32*
  store i32 %3695, i32* %3697, align 1
  %3698 = extractelement <2 x i32> %3692, i32 0
  %3699 = getelementptr inbounds i8, i8* %3684, i64 8
  %3700 = bitcast i8* %3699 to i32*
  store i32 %3698, i32* %3700, align 1
  %3701 = extractelement <2 x i32> %3692, i32 1
  %3702 = getelementptr inbounds i8, i8* %3684, i64 12
  %3703 = bitcast i8* %3702 to i32*
  store i32 %3701, i32* %3703, align 1
  store %struct.Memory* %loadMem_400a71, %struct.Memory** %MEMORY
  %loadMem_400a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3705 = getelementptr inbounds %struct.GPR, %struct.GPR* %3704, i32 0, i32 33
  %3706 = getelementptr inbounds %struct.Reg, %struct.Reg* %3705, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3706 to i64*
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 15
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3711 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3710, i64 0, i64 1
  %YMM1.i134 = bitcast %union.VectorReg* %3711 to %"class.std::bitset"*
  %3712 = bitcast %"class.std::bitset"* %YMM1.i134 to i8*
  %3713 = load i64, i64* %RBP.i133
  %3714 = sub i64 %3713, 216
  %3715 = load i64, i64* %PC.i132
  %3716 = add i64 %3715, 8
  store i64 %3716, i64* %PC.i132
  %3717 = inttoptr i64 %3714 to double*
  %3718 = load double, double* %3717
  %3719 = bitcast i8* %3712 to double*
  store double %3718, double* %3719, align 1
  %3720 = getelementptr inbounds i8, i8* %3712, i64 8
  %3721 = bitcast i8* %3720 to double*
  store double 0.000000e+00, double* %3721, align 1
  store %struct.Memory* %loadMem_400a74, %struct.Memory** %MEMORY
  %loadMem_400a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3724 to i64*
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 15
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %3727 to i64*
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3728, i64 0, i64 2
  %YMM2.i131 = bitcast %union.VectorReg* %3729 to %"class.std::bitset"*
  %3730 = bitcast %"class.std::bitset"* %YMM2.i131 to i8*
  %3731 = load i64, i64* %RBP.i130
  %3732 = sub i64 %3731, 224
  %3733 = load i64, i64* %PC.i129
  %3734 = add i64 %3733, 8
  store i64 %3734, i64* %PC.i129
  %3735 = inttoptr i64 %3732 to double*
  %3736 = load double, double* %3735
  %3737 = bitcast i8* %3730 to double*
  store double %3736, double* %3737, align 1
  %3738 = getelementptr inbounds i8, i8* %3730, i64 8
  %3739 = bitcast i8* %3738 to double*
  store double 0.000000e+00, double* %3739, align 1
  store %struct.Memory* %loadMem_400a7c, %struct.Memory** %MEMORY
  %loadMem1_400a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 33
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3742 to i64*
  %3743 = load i64, i64* %PC.i128
  %3744 = add i64 %3743, 716
  %3745 = load i64, i64* %PC.i128
  %3746 = add i64 %3745, 5
  %3747 = load i64, i64* %PC.i128
  %3748 = add i64 %3747, 5
  store i64 %3748, i64* %PC.i128
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3750 = load i64, i64* %3749, align 8
  %3751 = add i64 %3750, -8
  %3752 = inttoptr i64 %3751 to i64*
  store i64 %3746, i64* %3752
  store i64 %3751, i64* %3749, align 8
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3744, i64* %3753, align 8
  store %struct.Memory* %loadMem1_400a84, %struct.Memory** %MEMORY
  %loadMem2_400a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a84 = load i64, i64* %3
  %call2_400a84 = call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %loadPC_400a84, %struct.Memory* %loadMem2_400a84)
  store %struct.Memory* %call2_400a84, %struct.Memory** %MEMORY
  %loadMem_400a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 33
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3758 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3757, i64 0, i64 1
  %YMM1.i127 = bitcast %union.VectorReg* %3758 to %"class.std::bitset"*
  %3759 = bitcast %"class.std::bitset"* %YMM1.i127 to i8*
  %3760 = load i64, i64* %PC.i126
  %3761 = add i64 %3760, ptrtoint (%G_0x3cf__rip__type* @G_0x3cf__rip_ to i64)
  %3762 = load i64, i64* %PC.i126
  %3763 = add i64 %3762, 8
  store i64 %3763, i64* %PC.i126
  %3764 = inttoptr i64 %3761 to double*
  %3765 = load double, double* %3764
  %3766 = bitcast i8* %3759 to double*
  store double %3765, double* %3766, align 1
  %3767 = getelementptr inbounds i8, i8* %3759, i64 8
  %3768 = bitcast i8* %3767 to double*
  store double 0.000000e+00, double* %3768, align 1
  store %struct.Memory* %loadMem_400a89, %struct.Memory** %MEMORY
  %loadMem_400a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 33
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3771 to i64*
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 15
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %3774 to i64*
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3776 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3775, i64 0, i64 2
  %YMM2.i125 = bitcast %union.VectorReg* %3776 to %"class.std::bitset"*
  %3777 = bitcast %"class.std::bitset"* %YMM2.i125 to i8*
  %3778 = load i64, i64* %RBP.i124
  %3779 = sub i64 %3778, 48
  %3780 = load i64, i64* %PC.i123
  %3781 = add i64 %3780, 5
  store i64 %3781, i64* %PC.i123
  %3782 = inttoptr i64 %3779 to double*
  %3783 = load double, double* %3782
  %3784 = bitcast i8* %3777 to double*
  store double %3783, double* %3784, align 1
  %3785 = getelementptr inbounds i8, i8* %3777, i64 8
  %3786 = bitcast i8* %3785 to double*
  store double 0.000000e+00, double* %3786, align 1
  store %struct.Memory* %loadMem_400a91, %struct.Memory** %MEMORY
  %loadMem_400a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 33
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 1
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %3792 to i64*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 15
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %3795 to i64*
  %3796 = load i64, i64* %RBP.i122
  %3797 = sub i64 %3796, 76
  %3798 = load i64, i64* %PC.i120
  %3799 = add i64 %3798, 3
  store i64 %3799, i64* %PC.i120
  %3800 = inttoptr i64 %3797 to i32*
  %3801 = load i32, i32* %3800
  %3802 = zext i32 %3801 to i64
  store i64 %3802, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_400a96, %struct.Memory** %MEMORY
  %loadMem_400a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 1
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %3808 to i64*
  %3809 = load i64, i64* %RAX.i119
  %3810 = load i64, i64* %PC.i118
  %3811 = add i64 %3810, 3
  store i64 %3811, i64* %PC.i118
  %3812 = trunc i64 %3809 to i32
  %3813 = add i32 1, %3812
  %3814 = zext i32 %3813 to i64
  store i64 %3814, i64* %RAX.i119, align 8
  %3815 = icmp ult i32 %3813, %3812
  %3816 = icmp ult i32 %3813, 1
  %3817 = or i1 %3815, %3816
  %3818 = zext i1 %3817 to i8
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3818, i8* %3819, align 1
  %3820 = and i32 %3813, 255
  %3821 = call i32 @llvm.ctpop.i32(i32 %3820)
  %3822 = trunc i32 %3821 to i8
  %3823 = and i8 %3822, 1
  %3824 = xor i8 %3823, 1
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3824, i8* %3825, align 1
  %3826 = xor i64 1, %3809
  %3827 = trunc i64 %3826 to i32
  %3828 = xor i32 %3827, %3813
  %3829 = lshr i32 %3828, 4
  %3830 = trunc i32 %3829 to i8
  %3831 = and i8 %3830, 1
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3831, i8* %3832, align 1
  %3833 = icmp eq i32 %3813, 0
  %3834 = zext i1 %3833 to i8
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3834, i8* %3835, align 1
  %3836 = lshr i32 %3813, 31
  %3837 = trunc i32 %3836 to i8
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3837, i8* %3838, align 1
  %3839 = lshr i32 %3812, 31
  %3840 = xor i32 %3836, %3839
  %3841 = add i32 %3840, %3836
  %3842 = icmp eq i32 %3841, 2
  %3843 = zext i1 %3842 to i8
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3843, i8* %3844, align 1
  store %struct.Memory* %loadMem_400a99, %struct.Memory** %MEMORY
  %loadMem_400a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 33
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %3847 to i64*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 1
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %3850 to i32*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 5
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %3853 to i64*
  %3854 = load i32, i32* %EAX.i116
  %3855 = zext i32 %3854 to i64
  %3856 = load i64, i64* %PC.i115
  %3857 = add i64 %3856, 3
  store i64 %3857, i64* %PC.i115
  %3858 = shl i64 %3855, 32
  %3859 = ashr exact i64 %3858, 32
  store i64 %3859, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_400a9c, %struct.Memory** %MEMORY
  %loadMem_400a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %3862 to i64*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 5
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %3865 to i64*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 11
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %RDI.i114 = bitcast %union.anon* %3868 to i64*
  %3869 = load i64, i64* %RCX.i113
  %3870 = mul i64 %3869, 4
  %3871 = add i64 %3870, 6300752
  %3872 = load i64, i64* %PC.i112
  %3873 = add i64 %3872, 7
  store i64 %3873, i64* %PC.i112
  %3874 = inttoptr i64 %3871 to i32*
  %3875 = load i32, i32* %3874
  %3876 = zext i32 %3875 to i64
  store i64 %3876, i64* %RDI.i114, align 8
  store %struct.Memory* %loadMem_400a9f, %struct.Memory** %MEMORY
  %loadMem_400aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 33
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3879 to i64*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 15
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3884 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3883, i64 0, i64 3
  %YMM3.i111 = bitcast %union.VectorReg* %3884 to %"class.std::bitset"*
  %3885 = bitcast %"class.std::bitset"* %YMM3.i111 to i8*
  %3886 = load i64, i64* %RBP.i110
  %3887 = sub i64 %3886, 8
  %3888 = load i64, i64* %PC.i109
  %3889 = add i64 %3888, 5
  store i64 %3889, i64* %PC.i109
  %3890 = inttoptr i64 %3887 to double*
  %3891 = load double, double* %3890
  %3892 = bitcast i8* %3885 to double*
  store double %3891, double* %3892, align 1
  %3893 = getelementptr inbounds i8, i8* %3885, i64 8
  %3894 = bitcast i8* %3893 to double*
  store double 0.000000e+00, double* %3894, align 1
  store %struct.Memory* %loadMem_400aa6, %struct.Memory** %MEMORY
  %loadMem_400aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 33
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 15
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %3900 to i64*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3902 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3901, i64 0, i64 4
  %YMM4.i108 = bitcast %union.VectorReg* %3902 to %"class.std::bitset"*
  %3903 = bitcast %"class.std::bitset"* %YMM4.i108 to i8*
  %3904 = load i64, i64* %RBP.i107
  %3905 = sub i64 %3904, 16
  %3906 = load i64, i64* %PC.i106
  %3907 = add i64 %3906, 5
  store i64 %3907, i64* %PC.i106
  %3908 = inttoptr i64 %3905 to double*
  %3909 = load double, double* %3908
  %3910 = bitcast i8* %3903 to double*
  store double %3909, double* %3910, align 1
  %3911 = getelementptr inbounds i8, i8* %3903, i64 8
  %3912 = bitcast i8* %3911 to double*
  store double 0.000000e+00, double* %3912, align 1
  store %struct.Memory* %loadMem_400aab, %struct.Memory** %MEMORY
  %loadMem_400ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 33
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3915 to i64*
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3917 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3916, i64 0, i64 4
  %YMM4.i104 = bitcast %union.VectorReg* %3917 to %"class.std::bitset"*
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3919 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3918, i64 0, i64 1
  %XMM1.i105 = bitcast %union.VectorReg* %3919 to %union.vec128_t*
  %3920 = bitcast %"class.std::bitset"* %YMM4.i104 to i8*
  %3921 = bitcast %"class.std::bitset"* %YMM4.i104 to i8*
  %3922 = bitcast %union.vec128_t* %XMM1.i105 to i8*
  %3923 = load i64, i64* %PC.i103
  %3924 = add i64 %3923, 4
  store i64 %3924, i64* %PC.i103
  %3925 = bitcast i8* %3921 to double*
  %3926 = load double, double* %3925, align 1
  %3927 = getelementptr inbounds i8, i8* %3921, i64 8
  %3928 = bitcast i8* %3927 to i64*
  %3929 = load i64, i64* %3928, align 1
  %3930 = bitcast i8* %3922 to double*
  %3931 = load double, double* %3930, align 1
  %3932 = fsub double %3926, %3931
  %3933 = bitcast i8* %3920 to double*
  store double %3932, double* %3933, align 1
  %3934 = getelementptr inbounds i8, i8* %3920, i64 8
  %3935 = bitcast i8* %3934 to i64*
  store i64 %3929, i64* %3935, align 1
  store %struct.Memory* %loadMem_400ab0, %struct.Memory** %MEMORY
  %loadMem_400ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 33
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3938 to i64*
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 15
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3943 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3942, i64 0, i64 5
  %YMM5.i102 = bitcast %union.VectorReg* %3943 to %"class.std::bitset"*
  %3944 = bitcast %"class.std::bitset"* %YMM5.i102 to i8*
  %3945 = load i64, i64* %RBP.i101
  %3946 = sub i64 %3945, 24
  %3947 = load i64, i64* %PC.i100
  %3948 = add i64 %3947, 5
  store i64 %3948, i64* %PC.i100
  %3949 = inttoptr i64 %3946 to double*
  %3950 = load double, double* %3949
  %3951 = bitcast i8* %3944 to double*
  store double %3950, double* %3951, align 1
  %3952 = getelementptr inbounds i8, i8* %3944, i64 8
  %3953 = bitcast i8* %3952 to double*
  store double 0.000000e+00, double* %3953, align 1
  store %struct.Memory* %loadMem_400ab4, %struct.Memory** %MEMORY
  %loadMem_400ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 33
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3956 to i64*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3958 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3957, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %3958 to %"class.std::bitset"*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3960 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3959, i64 0, i64 1
  %XMM1.i99 = bitcast %union.VectorReg* %3960 to %union.vec128_t*
  %3961 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %3962 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %3963 = bitcast %union.vec128_t* %XMM1.i99 to i8*
  %3964 = load i64, i64* %PC.i98
  %3965 = add i64 %3964, 4
  store i64 %3965, i64* %PC.i98
  %3966 = bitcast i8* %3962 to double*
  %3967 = load double, double* %3966, align 1
  %3968 = getelementptr inbounds i8, i8* %3962, i64 8
  %3969 = bitcast i8* %3968 to i64*
  %3970 = load i64, i64* %3969, align 1
  %3971 = bitcast i8* %3963 to double*
  %3972 = load double, double* %3971, align 1
  %3973 = fsub double %3967, %3972
  %3974 = bitcast i8* %3961 to double*
  store double %3973, double* %3974, align 1
  %3975 = getelementptr inbounds i8, i8* %3961, i64 8
  %3976 = bitcast i8* %3975 to i64*
  store i64 %3970, i64* %3976, align 1
  store %struct.Memory* %loadMem_400ab9, %struct.Memory** %MEMORY
  %loadMem_400abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 33
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 15
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %3982 to i64*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3984 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3983, i64 0, i64 0
  %XMM0.i97 = bitcast %union.VectorReg* %3984 to %union.vec128_t*
  %3985 = load i64, i64* %RBP.i96
  %3986 = sub i64 %3985, 232
  %3987 = bitcast %union.vec128_t* %XMM0.i97 to i8*
  %3988 = load i64, i64* %PC.i95
  %3989 = add i64 %3988, 8
  store i64 %3989, i64* %PC.i95
  %3990 = bitcast i8* %3987 to double*
  %3991 = load double, double* %3990, align 1
  %3992 = inttoptr i64 %3986 to double*
  store double %3991, double* %3992
  store %struct.Memory* %loadMem_400abd, %struct.Memory** %MEMORY
  %loadMem_400ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 33
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3997 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3996, i64 0, i64 0
  %YMM0.i93 = bitcast %union.VectorReg* %3997 to %"class.std::bitset"*
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3998, i64 0, i64 3
  %XMM3.i94 = bitcast %union.VectorReg* %3999 to %union.vec128_t*
  %4000 = bitcast %"class.std::bitset"* %YMM0.i93 to i8*
  %4001 = bitcast %union.vec128_t* %XMM3.i94 to i8*
  %4002 = load i64, i64* %PC.i92
  %4003 = add i64 %4002, 3
  store i64 %4003, i64* %PC.i92
  %4004 = bitcast i8* %4001 to <2 x i32>*
  %4005 = load <2 x i32>, <2 x i32>* %4004, align 1
  %4006 = getelementptr inbounds i8, i8* %4001, i64 8
  %4007 = bitcast i8* %4006 to <2 x i32>*
  %4008 = load <2 x i32>, <2 x i32>* %4007, align 1
  %4009 = extractelement <2 x i32> %4005, i32 0
  %4010 = bitcast i8* %4000 to i32*
  store i32 %4009, i32* %4010, align 1
  %4011 = extractelement <2 x i32> %4005, i32 1
  %4012 = getelementptr inbounds i8, i8* %4000, i64 4
  %4013 = bitcast i8* %4012 to i32*
  store i32 %4011, i32* %4013, align 1
  %4014 = extractelement <2 x i32> %4008, i32 0
  %4015 = getelementptr inbounds i8, i8* %4000, i64 8
  %4016 = bitcast i8* %4015 to i32*
  store i32 %4014, i32* %4016, align 1
  %4017 = extractelement <2 x i32> %4008, i32 1
  %4018 = getelementptr inbounds i8, i8* %4000, i64 12
  %4019 = bitcast i8* %4018 to i32*
  store i32 %4017, i32* %4019, align 1
  store %struct.Memory* %loadMem_400ac5, %struct.Memory** %MEMORY
  %loadMem_400ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 33
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4022 to i64*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4023, i64 0, i64 1
  %YMM1.i90 = bitcast %union.VectorReg* %4024 to %"class.std::bitset"*
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4026 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4025, i64 0, i64 4
  %XMM4.i91 = bitcast %union.VectorReg* %4026 to %union.vec128_t*
  %4027 = bitcast %"class.std::bitset"* %YMM1.i90 to i8*
  %4028 = bitcast %union.vec128_t* %XMM4.i91 to i8*
  %4029 = load i64, i64* %PC.i89
  %4030 = add i64 %4029, 3
  store i64 %4030, i64* %PC.i89
  %4031 = bitcast i8* %4028 to <2 x i32>*
  %4032 = load <2 x i32>, <2 x i32>* %4031, align 1
  %4033 = getelementptr inbounds i8, i8* %4028, i64 8
  %4034 = bitcast i8* %4033 to <2 x i32>*
  %4035 = load <2 x i32>, <2 x i32>* %4034, align 1
  %4036 = extractelement <2 x i32> %4032, i32 0
  %4037 = bitcast i8* %4027 to i32*
  store i32 %4036, i32* %4037, align 1
  %4038 = extractelement <2 x i32> %4032, i32 1
  %4039 = getelementptr inbounds i8, i8* %4027, i64 4
  %4040 = bitcast i8* %4039 to i32*
  store i32 %4038, i32* %4040, align 1
  %4041 = extractelement <2 x i32> %4035, i32 0
  %4042 = getelementptr inbounds i8, i8* %4027, i64 8
  %4043 = bitcast i8* %4042 to i32*
  store i32 %4041, i32* %4043, align 1
  %4044 = extractelement <2 x i32> %4035, i32 1
  %4045 = getelementptr inbounds i8, i8* %4027, i64 12
  %4046 = bitcast i8* %4045 to i32*
  store i32 %4044, i32* %4046, align 1
  store %struct.Memory* %loadMem_400ac8, %struct.Memory** %MEMORY
  %loadMem_400acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 33
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4049 to i64*
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 15
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %4052 to i64*
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4054 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4053, i64 0, i64 2
  %XMM2.i88 = bitcast %union.VectorReg* %4054 to %union.vec128_t*
  %4055 = load i64, i64* %RBP.i87
  %4056 = sub i64 %4055, 240
  %4057 = bitcast %union.vec128_t* %XMM2.i88 to i8*
  %4058 = load i64, i64* %PC.i86
  %4059 = add i64 %4058, 8
  store i64 %4059, i64* %PC.i86
  %4060 = bitcast i8* %4057 to double*
  %4061 = load double, double* %4060, align 1
  %4062 = inttoptr i64 %4056 to double*
  store double %4061, double* %4062
  store %struct.Memory* %loadMem_400acb, %struct.Memory** %MEMORY
  %loadMem_400ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 33
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4065 to i64*
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4067 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4066, i64 0, i64 2
  %YMM2.i85 = bitcast %union.VectorReg* %4067 to %"class.std::bitset"*
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4069 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4068, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %4069 to %union.vec128_t*
  %4070 = bitcast %"class.std::bitset"* %YMM2.i85 to i8*
  %4071 = bitcast %union.vec128_t* %XMM5.i to i8*
  %4072 = load i64, i64* %PC.i84
  %4073 = add i64 %4072, 3
  store i64 %4073, i64* %PC.i84
  %4074 = bitcast i8* %4071 to <2 x i32>*
  %4075 = load <2 x i32>, <2 x i32>* %4074, align 1
  %4076 = getelementptr inbounds i8, i8* %4071, i64 8
  %4077 = bitcast i8* %4076 to <2 x i32>*
  %4078 = load <2 x i32>, <2 x i32>* %4077, align 1
  %4079 = extractelement <2 x i32> %4075, i32 0
  %4080 = bitcast i8* %4070 to i32*
  store i32 %4079, i32* %4080, align 1
  %4081 = extractelement <2 x i32> %4075, i32 1
  %4082 = getelementptr inbounds i8, i8* %4070, i64 4
  %4083 = bitcast i8* %4082 to i32*
  store i32 %4081, i32* %4083, align 1
  %4084 = extractelement <2 x i32> %4078, i32 0
  %4085 = getelementptr inbounds i8, i8* %4070, i64 8
  %4086 = bitcast i8* %4085 to i32*
  store i32 %4084, i32* %4086, align 1
  %4087 = extractelement <2 x i32> %4078, i32 1
  %4088 = getelementptr inbounds i8, i8* %4070, i64 12
  %4089 = bitcast i8* %4088 to i32*
  store i32 %4087, i32* %4089, align 1
  store %struct.Memory* %loadMem_400ad3, %struct.Memory** %MEMORY
  %loadMem1_400ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 33
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4092 to i64*
  %4093 = load i64, i64* %PC.i83
  %4094 = add i64 %4093, 298
  %4095 = load i64, i64* %PC.i83
  %4096 = add i64 %4095, 5
  %4097 = load i64, i64* %PC.i83
  %4098 = add i64 %4097, 5
  store i64 %4098, i64* %PC.i83
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4100 = load i64, i64* %4099, align 8
  %4101 = add i64 %4100, -8
  %4102 = inttoptr i64 %4101 to i64*
  store i64 %4096, i64* %4102
  store i64 %4101, i64* %4099, align 8
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4094, i64* %4103, align 8
  store %struct.Memory* %loadMem1_400ad6, %struct.Memory** %MEMORY
  %loadMem2_400ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ad6 = load i64, i64* %3
  %call2_400ad6 = call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %loadPC_400ad6, %struct.Memory* %loadMem2_400ad6)
  store %struct.Memory* %call2_400ad6, %struct.Memory** %MEMORY
  %loadMem_400adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 33
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4107, i64 0, i64 1
  %YMM1.i82 = bitcast %union.VectorReg* %4108 to %"class.std::bitset"*
  %4109 = bitcast %"class.std::bitset"* %YMM1.i82 to i8*
  %4110 = load i64, i64* %PC.i81
  %4111 = add i64 %4110, ptrtoint (%G_0x37d__rip__type* @G_0x37d__rip_ to i64)
  %4112 = load i64, i64* %PC.i81
  %4113 = add i64 %4112, 8
  store i64 %4113, i64* %PC.i81
  %4114 = inttoptr i64 %4111 to double*
  %4115 = load double, double* %4114
  %4116 = bitcast i8* %4109 to double*
  store double %4115, double* %4116, align 1
  %4117 = getelementptr inbounds i8, i8* %4109, i64 8
  %4118 = bitcast i8* %4117 to double*
  store double 0.000000e+00, double* %4118, align 1
  store %struct.Memory* %loadMem_400adb, %struct.Memory** %MEMORY
  %loadMem_400ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 33
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4121 to i64*
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 1
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %4124 to i64*
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 15
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %4127 to i64*
  %4128 = load i64, i64* %RBP.i80
  %4129 = sub i64 %4128, 88
  %4130 = load i64, i64* %PC.i78
  %4131 = add i64 %4130, 3
  store i64 %4131, i64* %PC.i78
  %4132 = inttoptr i64 %4129 to i32*
  %4133 = load i32, i32* %4132
  %4134 = zext i32 %4133 to i64
  store i64 %4134, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_400ae3, %struct.Memory** %MEMORY
  %loadMem_400ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 33
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4137 to i64*
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 1
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4140 to i64*
  %4141 = load i64, i64* %RAX.i
  %4142 = load i64, i64* %PC.i77
  %4143 = add i64 %4142, 3
  store i64 %4143, i64* %PC.i77
  %4144 = trunc i64 %4141 to i32
  %4145 = add i32 1, %4144
  %4146 = zext i32 %4145 to i64
  store i64 %4146, i64* %RAX.i, align 8
  %4147 = icmp ult i32 %4145, %4144
  %4148 = icmp ult i32 %4145, 1
  %4149 = or i1 %4147, %4148
  %4150 = zext i1 %4149 to i8
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4150, i8* %4151, align 1
  %4152 = and i32 %4145, 255
  %4153 = call i32 @llvm.ctpop.i32(i32 %4152)
  %4154 = trunc i32 %4153 to i8
  %4155 = and i8 %4154, 1
  %4156 = xor i8 %4155, 1
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4156, i8* %4157, align 1
  %4158 = xor i64 1, %4141
  %4159 = trunc i64 %4158 to i32
  %4160 = xor i32 %4159, %4145
  %4161 = lshr i32 %4160, 4
  %4162 = trunc i32 %4161 to i8
  %4163 = and i8 %4162, 1
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4163, i8* %4164, align 1
  %4165 = icmp eq i32 %4145, 0
  %4166 = zext i1 %4165 to i8
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4166, i8* %4167, align 1
  %4168 = lshr i32 %4145, 31
  %4169 = trunc i32 %4168 to i8
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4169, i8* %4170, align 1
  %4171 = lshr i32 %4144, 31
  %4172 = xor i32 %4168, %4171
  %4173 = add i32 %4172, %4168
  %4174 = icmp eq i32 %4173, 2
  %4175 = zext i1 %4174 to i8
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4175, i8* %4176, align 1
  store %struct.Memory* %loadMem_400ae6, %struct.Memory** %MEMORY
  %loadMem_400ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 33
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4179 to i64*
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 1
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4182 to i32*
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 5
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %4185 to i64*
  %4186 = load i32, i32* %EAX.i
  %4187 = zext i32 %4186 to i64
  %4188 = load i64, i64* %PC.i75
  %4189 = add i64 %4188, 3
  store i64 %4189, i64* %PC.i75
  %4190 = shl i64 %4187, 32
  %4191 = ashr exact i64 %4190, 32
  store i64 %4191, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_400ae9, %struct.Memory** %MEMORY
  %loadMem_400aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 33
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4194 to i64*
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 5
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4197 to i64*
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 11
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4200 to i64*
  %4201 = load i64, i64* %RCX.i
  %4202 = mul i64 %4201, 4
  %4203 = add i64 %4202, 6300752
  %4204 = load i64, i64* %PC.i74
  %4205 = add i64 %4204, 7
  store i64 %4205, i64* %PC.i74
  %4206 = inttoptr i64 %4203 to i32*
  %4207 = load i32, i32* %4206
  %4208 = zext i32 %4207 to i64
  store i64 %4208, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400aec, %struct.Memory** %MEMORY
  %loadMem_400af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 33
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4211 to i64*
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 15
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %4214 to i64*
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4216 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4215, i64 0, i64 2
  %YMM2.i73 = bitcast %union.VectorReg* %4216 to %"class.std::bitset"*
  %4217 = bitcast %"class.std::bitset"* %YMM2.i73 to i8*
  %4218 = load i64, i64* %RBP.i72
  %4219 = sub i64 %4218, 8
  %4220 = load i64, i64* %PC.i71
  %4221 = add i64 %4220, 5
  store i64 %4221, i64* %PC.i71
  %4222 = inttoptr i64 %4219 to double*
  %4223 = load double, double* %4222
  %4224 = bitcast i8* %4217 to double*
  store double %4223, double* %4224, align 1
  %4225 = getelementptr inbounds i8, i8* %4217, i64 8
  %4226 = bitcast i8* %4225 to double*
  store double 0.000000e+00, double* %4226, align 1
  store %struct.Memory* %loadMem_400af3, %struct.Memory** %MEMORY
  %loadMem_400af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4231 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4230, i64 0, i64 2
  %YMM2.i69 = bitcast %union.VectorReg* %4231 to %"class.std::bitset"*
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4233 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4232, i64 0, i64 1
  %XMM1.i70 = bitcast %union.VectorReg* %4233 to %union.vec128_t*
  %4234 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %4235 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %4236 = bitcast %union.vec128_t* %XMM1.i70 to i8*
  %4237 = load i64, i64* %PC.i68
  %4238 = add i64 %4237, 4
  store i64 %4238, i64* %PC.i68
  %4239 = bitcast i8* %4235 to double*
  %4240 = load double, double* %4239, align 1
  %4241 = getelementptr inbounds i8, i8* %4235, i64 8
  %4242 = bitcast i8* %4241 to i64*
  %4243 = load i64, i64* %4242, align 1
  %4244 = bitcast i8* %4236 to double*
  %4245 = load double, double* %4244, align 1
  %4246 = fsub double %4240, %4245
  %4247 = bitcast i8* %4234 to double*
  store double %4246, double* %4247, align 1
  %4248 = getelementptr inbounds i8, i8* %4234, i64 8
  %4249 = bitcast i8* %4248 to i64*
  store i64 %4243, i64* %4249, align 1
  store %struct.Memory* %loadMem_400af8, %struct.Memory** %MEMORY
  %loadMem_400afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 33
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4252 to i64*
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 15
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %4255 to i64*
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4257 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4256, i64 0, i64 3
  %YMM3.i67 = bitcast %union.VectorReg* %4257 to %"class.std::bitset"*
  %4258 = bitcast %"class.std::bitset"* %YMM3.i67 to i8*
  %4259 = load i64, i64* %RBP.i66
  %4260 = sub i64 %4259, 16
  %4261 = load i64, i64* %PC.i65
  %4262 = add i64 %4261, 5
  store i64 %4262, i64* %PC.i65
  %4263 = inttoptr i64 %4260 to double*
  %4264 = load double, double* %4263
  %4265 = bitcast i8* %4258 to double*
  store double %4264, double* %4265, align 1
  %4266 = getelementptr inbounds i8, i8* %4258, i64 8
  %4267 = bitcast i8* %4266 to double*
  store double 0.000000e+00, double* %4267, align 1
  store %struct.Memory* %loadMem_400afc, %struct.Memory** %MEMORY
  %loadMem_400b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4269 = getelementptr inbounds %struct.GPR, %struct.GPR* %4268, i32 0, i32 33
  %4270 = getelementptr inbounds %struct.Reg, %struct.Reg* %4269, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4270 to i64*
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4272 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4271, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %4272 to %"class.std::bitset"*
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4274 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4273, i64 0, i64 1
  %XMM1.i64 = bitcast %union.VectorReg* %4274 to %union.vec128_t*
  %4275 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %4276 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %4277 = bitcast %union.vec128_t* %XMM1.i64 to i8*
  %4278 = load i64, i64* %PC.i63
  %4279 = add i64 %4278, 4
  store i64 %4279, i64* %PC.i63
  %4280 = bitcast i8* %4276 to double*
  %4281 = load double, double* %4280, align 1
  %4282 = getelementptr inbounds i8, i8* %4276, i64 8
  %4283 = bitcast i8* %4282 to i64*
  %4284 = load i64, i64* %4283, align 1
  %4285 = bitcast i8* %4277 to double*
  %4286 = load double, double* %4285, align 1
  %4287 = fsub double %4281, %4286
  %4288 = bitcast i8* %4275 to double*
  store double %4287, double* %4288, align 1
  %4289 = getelementptr inbounds i8, i8* %4275, i64 8
  %4290 = bitcast i8* %4289 to i64*
  store i64 %4284, i64* %4290, align 1
  store %struct.Memory* %loadMem_400b01, %struct.Memory** %MEMORY
  %loadMem_400b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 33
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4293 to i64*
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 15
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %4296 to i64*
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4298 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4297, i64 0, i64 4
  %YMM4.i62 = bitcast %union.VectorReg* %4298 to %"class.std::bitset"*
  %4299 = bitcast %"class.std::bitset"* %YMM4.i62 to i8*
  %4300 = load i64, i64* %RBP.i61
  %4301 = sub i64 %4300, 24
  %4302 = load i64, i64* %PC.i60
  %4303 = add i64 %4302, 5
  store i64 %4303, i64* %PC.i60
  %4304 = inttoptr i64 %4301 to double*
  %4305 = load double, double* %4304
  %4306 = bitcast i8* %4299 to double*
  store double %4305, double* %4306, align 1
  %4307 = getelementptr inbounds i8, i8* %4299, i64 8
  %4308 = bitcast i8* %4307 to double*
  store double 0.000000e+00, double* %4308, align 1
  store %struct.Memory* %loadMem_400b05, %struct.Memory** %MEMORY
  %loadMem_400b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 33
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4311 to i64*
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4312, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %4313 to %"class.std::bitset"*
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4314, i64 0, i64 1
  %XMM1.i59 = bitcast %union.VectorReg* %4315 to %union.vec128_t*
  %4316 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %4317 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %4318 = bitcast %union.vec128_t* %XMM1.i59 to i8*
  %4319 = load i64, i64* %PC.i58
  %4320 = add i64 %4319, 4
  store i64 %4320, i64* %PC.i58
  %4321 = bitcast i8* %4317 to double*
  %4322 = load double, double* %4321, align 1
  %4323 = getelementptr inbounds i8, i8* %4317, i64 8
  %4324 = bitcast i8* %4323 to i64*
  %4325 = load i64, i64* %4324, align 1
  %4326 = bitcast i8* %4318 to double*
  %4327 = load double, double* %4326, align 1
  %4328 = fsub double %4322, %4327
  %4329 = bitcast i8* %4316 to double*
  store double %4328, double* %4329, align 1
  %4330 = getelementptr inbounds i8, i8* %4316, i64 8
  %4331 = bitcast i8* %4330 to i64*
  store i64 %4325, i64* %4331, align 1
  store %struct.Memory* %loadMem_400b0a, %struct.Memory** %MEMORY
  %loadMem_400b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 33
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %4334 to i64*
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 15
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %4337 to i64*
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4338, i64 0, i64 0
  %XMM0.i57 = bitcast %union.VectorReg* %4339 to %union.vec128_t*
  %4340 = load i64, i64* %RBP.i56
  %4341 = sub i64 %4340, 248
  %4342 = bitcast %union.vec128_t* %XMM0.i57 to i8*
  %4343 = load i64, i64* %PC.i55
  %4344 = add i64 %4343, 8
  store i64 %4344, i64* %PC.i55
  %4345 = bitcast i8* %4342 to double*
  %4346 = load double, double* %4345, align 1
  %4347 = inttoptr i64 %4341 to double*
  store double %4346, double* %4347
  store %struct.Memory* %loadMem_400b0e, %struct.Memory** %MEMORY
  %loadMem_400b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 33
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4351, i64 0, i64 0
  %YMM0.i54 = bitcast %union.VectorReg* %4352 to %"class.std::bitset"*
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4354 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4353, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %4354 to %union.vec128_t*
  %4355 = bitcast %"class.std::bitset"* %YMM0.i54 to i8*
  %4356 = bitcast %union.vec128_t* %XMM2.i to i8*
  %4357 = load i64, i64* %PC.i53
  %4358 = add i64 %4357, 3
  store i64 %4358, i64* %PC.i53
  %4359 = bitcast i8* %4356 to <2 x i32>*
  %4360 = load <2 x i32>, <2 x i32>* %4359, align 1
  %4361 = getelementptr inbounds i8, i8* %4356, i64 8
  %4362 = bitcast i8* %4361 to <2 x i32>*
  %4363 = load <2 x i32>, <2 x i32>* %4362, align 1
  %4364 = extractelement <2 x i32> %4360, i32 0
  %4365 = bitcast i8* %4355 to i32*
  store i32 %4364, i32* %4365, align 1
  %4366 = extractelement <2 x i32> %4360, i32 1
  %4367 = getelementptr inbounds i8, i8* %4355, i64 4
  %4368 = bitcast i8* %4367 to i32*
  store i32 %4366, i32* %4368, align 1
  %4369 = extractelement <2 x i32> %4363, i32 0
  %4370 = getelementptr inbounds i8, i8* %4355, i64 8
  %4371 = bitcast i8* %4370 to i32*
  store i32 %4369, i32* %4371, align 1
  %4372 = extractelement <2 x i32> %4363, i32 1
  %4373 = getelementptr inbounds i8, i8* %4355, i64 12
  %4374 = bitcast i8* %4373 to i32*
  store i32 %4372, i32* %4374, align 1
  store %struct.Memory* %loadMem_400b16, %struct.Memory** %MEMORY
  %loadMem_400b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 33
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4377 to i64*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4379 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4378, i64 0, i64 1
  %YMM1.i52 = bitcast %union.VectorReg* %4379 to %"class.std::bitset"*
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4381 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4380, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %4381 to %union.vec128_t*
  %4382 = bitcast %"class.std::bitset"* %YMM1.i52 to i8*
  %4383 = bitcast %union.vec128_t* %XMM3.i to i8*
  %4384 = load i64, i64* %PC.i51
  %4385 = add i64 %4384, 3
  store i64 %4385, i64* %PC.i51
  %4386 = bitcast i8* %4383 to <2 x i32>*
  %4387 = load <2 x i32>, <2 x i32>* %4386, align 1
  %4388 = getelementptr inbounds i8, i8* %4383, i64 8
  %4389 = bitcast i8* %4388 to <2 x i32>*
  %4390 = load <2 x i32>, <2 x i32>* %4389, align 1
  %4391 = extractelement <2 x i32> %4387, i32 0
  %4392 = bitcast i8* %4382 to i32*
  store i32 %4391, i32* %4392, align 1
  %4393 = extractelement <2 x i32> %4387, i32 1
  %4394 = getelementptr inbounds i8, i8* %4382, i64 4
  %4395 = bitcast i8* %4394 to i32*
  store i32 %4393, i32* %4395, align 1
  %4396 = extractelement <2 x i32> %4390, i32 0
  %4397 = getelementptr inbounds i8, i8* %4382, i64 8
  %4398 = bitcast i8* %4397 to i32*
  store i32 %4396, i32* %4398, align 1
  %4399 = extractelement <2 x i32> %4390, i32 1
  %4400 = getelementptr inbounds i8, i8* %4382, i64 12
  %4401 = bitcast i8* %4400 to i32*
  store i32 %4399, i32* %4401, align 1
  store %struct.Memory* %loadMem_400b19, %struct.Memory** %MEMORY
  %loadMem_400b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 33
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4404 to i64*
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4406 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4405, i64 0, i64 2
  %YMM2.i50 = bitcast %union.VectorReg* %4406 to %"class.std::bitset"*
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4408 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4407, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %4408 to %union.vec128_t*
  %4409 = bitcast %"class.std::bitset"* %YMM2.i50 to i8*
  %4410 = bitcast %union.vec128_t* %XMM4.i to i8*
  %4411 = load i64, i64* %PC.i49
  %4412 = add i64 %4411, 3
  store i64 %4412, i64* %PC.i49
  %4413 = bitcast i8* %4410 to <2 x i32>*
  %4414 = load <2 x i32>, <2 x i32>* %4413, align 1
  %4415 = getelementptr inbounds i8, i8* %4410, i64 8
  %4416 = bitcast i8* %4415 to <2 x i32>*
  %4417 = load <2 x i32>, <2 x i32>* %4416, align 1
  %4418 = extractelement <2 x i32> %4414, i32 0
  %4419 = bitcast i8* %4409 to i32*
  store i32 %4418, i32* %4419, align 1
  %4420 = extractelement <2 x i32> %4414, i32 1
  %4421 = getelementptr inbounds i8, i8* %4409, i64 4
  %4422 = bitcast i8* %4421 to i32*
  store i32 %4420, i32* %4422, align 1
  %4423 = extractelement <2 x i32> %4417, i32 0
  %4424 = getelementptr inbounds i8, i8* %4409, i64 8
  %4425 = bitcast i8* %4424 to i32*
  store i32 %4423, i32* %4425, align 1
  %4426 = extractelement <2 x i32> %4417, i32 1
  %4427 = getelementptr inbounds i8, i8* %4409, i64 12
  %4428 = bitcast i8* %4427 to i32*
  store i32 %4426, i32* %4428, align 1
  store %struct.Memory* %loadMem_400b1c, %struct.Memory** %MEMORY
  %loadMem1_400b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 33
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4431 to i64*
  %4432 = load i64, i64* %PC.i48
  %4433 = add i64 %4432, 225
  %4434 = load i64, i64* %PC.i48
  %4435 = add i64 %4434, 5
  %4436 = load i64, i64* %PC.i48
  %4437 = add i64 %4436, 5
  store i64 %4437, i64* %PC.i48
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4439 = load i64, i64* %4438, align 8
  %4440 = add i64 %4439, -8
  %4441 = inttoptr i64 %4440 to i64*
  store i64 %4435, i64* %4441
  store i64 %4440, i64* %4438, align 8
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4433, i64* %4442, align 8
  store %struct.Memory* %loadMem1_400b1f, %struct.Memory** %MEMORY
  %loadMem2_400b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b1f = load i64, i64* %3
  %call2_400b1f = call %struct.Memory* @sub_400c00.grad(%struct.State* %0, i64 %loadPC_400b1f, %struct.Memory* %loadMem2_400b1f)
  store %struct.Memory* %call2_400b1f, %struct.Memory** %MEMORY
  %loadMem_400b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4444 = getelementptr inbounds %struct.GPR, %struct.GPR* %4443, i32 0, i32 33
  %4445 = getelementptr inbounds %struct.Reg, %struct.Reg* %4444, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4445 to i64*
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4447 = getelementptr inbounds %struct.GPR, %struct.GPR* %4446, i32 0, i32 15
  %4448 = getelementptr inbounds %struct.Reg, %struct.Reg* %4447, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %4448 to i64*
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4449, i64 0, i64 1
  %YMM1.i47 = bitcast %union.VectorReg* %4450 to %"class.std::bitset"*
  %4451 = bitcast %"class.std::bitset"* %YMM1.i47 to i8*
  %4452 = load i64, i64* %RBP.i46
  %4453 = sub i64 %4452, 240
  %4454 = load i64, i64* %PC.i45
  %4455 = add i64 %4454, 8
  store i64 %4455, i64* %PC.i45
  %4456 = inttoptr i64 %4453 to double*
  %4457 = load double, double* %4456
  %4458 = bitcast i8* %4451 to double*
  store double %4457, double* %4458, align 1
  %4459 = getelementptr inbounds i8, i8* %4451, i64 8
  %4460 = bitcast i8* %4459 to double*
  store double 0.000000e+00, double* %4460, align 1
  store %struct.Memory* %loadMem_400b24, %struct.Memory** %MEMORY
  %loadMem_400b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 33
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 15
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4468 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4467, i64 0, i64 0
  %XMM0.i44 = bitcast %union.VectorReg* %4468 to %union.vec128_t*
  %4469 = load i64, i64* %RBP.i43
  %4470 = sub i64 %4469, 256
  %4471 = bitcast %union.vec128_t* %XMM0.i44 to i8*
  %4472 = load i64, i64* %PC.i42
  %4473 = add i64 %4472, 8
  store i64 %4473, i64* %PC.i42
  %4474 = bitcast i8* %4471 to double*
  %4475 = load double, double* %4474, align 1
  %4476 = inttoptr i64 %4470 to double*
  store double %4475, double* %4476
  store %struct.Memory* %loadMem_400b2c, %struct.Memory** %MEMORY
  %loadMem_400b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 33
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4479 to i64*
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4481 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4480, i64 0, i64 0
  %YMM0.i40 = bitcast %union.VectorReg* %4481 to %"class.std::bitset"*
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4483 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4482, i64 0, i64 1
  %XMM1.i41 = bitcast %union.VectorReg* %4483 to %union.vec128_t*
  %4484 = bitcast %"class.std::bitset"* %YMM0.i40 to i8*
  %4485 = bitcast %union.vec128_t* %XMM1.i41 to i8*
  %4486 = load i64, i64* %PC.i39
  %4487 = add i64 %4486, 3
  store i64 %4487, i64* %PC.i39
  %4488 = bitcast i8* %4485 to <2 x i32>*
  %4489 = load <2 x i32>, <2 x i32>* %4488, align 1
  %4490 = getelementptr inbounds i8, i8* %4485, i64 8
  %4491 = bitcast i8* %4490 to <2 x i32>*
  %4492 = load <2 x i32>, <2 x i32>* %4491, align 1
  %4493 = extractelement <2 x i32> %4489, i32 0
  %4494 = bitcast i8* %4484 to i32*
  store i32 %4493, i32* %4494, align 1
  %4495 = extractelement <2 x i32> %4489, i32 1
  %4496 = getelementptr inbounds i8, i8* %4484, i64 4
  %4497 = bitcast i8* %4496 to i32*
  store i32 %4495, i32* %4497, align 1
  %4498 = extractelement <2 x i32> %4492, i32 0
  %4499 = getelementptr inbounds i8, i8* %4484, i64 8
  %4500 = bitcast i8* %4499 to i32*
  store i32 %4498, i32* %4500, align 1
  %4501 = extractelement <2 x i32> %4492, i32 1
  %4502 = getelementptr inbounds i8, i8* %4484, i64 12
  %4503 = bitcast i8* %4502 to i32*
  store i32 %4501, i32* %4503, align 1
  store %struct.Memory* %loadMem_400b34, %struct.Memory** %MEMORY
  %loadMem_400b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4505 = getelementptr inbounds %struct.GPR, %struct.GPR* %4504, i32 0, i32 33
  %4506 = getelementptr inbounds %struct.Reg, %struct.Reg* %4505, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4506 to i64*
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 15
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %4509 to i64*
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4511 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4510, i64 0, i64 1
  %YMM1.i38 = bitcast %union.VectorReg* %4511 to %"class.std::bitset"*
  %4512 = bitcast %"class.std::bitset"* %YMM1.i38 to i8*
  %4513 = load i64, i64* %RBP.i37
  %4514 = sub i64 %4513, 248
  %4515 = load i64, i64* %PC.i36
  %4516 = add i64 %4515, 8
  store i64 %4516, i64* %PC.i36
  %4517 = inttoptr i64 %4514 to double*
  %4518 = load double, double* %4517
  %4519 = bitcast i8* %4512 to double*
  store double %4518, double* %4519, align 1
  %4520 = getelementptr inbounds i8, i8* %4512, i64 8
  %4521 = bitcast i8* %4520 to double*
  store double 0.000000e+00, double* %4521, align 1
  store %struct.Memory* %loadMem_400b37, %struct.Memory** %MEMORY
  %loadMem_400b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 33
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4524 to i64*
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 15
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %4527 to i64*
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4529 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4528, i64 0, i64 2
  %YMM2.i35 = bitcast %union.VectorReg* %4529 to %"class.std::bitset"*
  %4530 = bitcast %"class.std::bitset"* %YMM2.i35 to i8*
  %4531 = load i64, i64* %RBP.i34
  %4532 = sub i64 %4531, 256
  %4533 = load i64, i64* %PC.i33
  %4534 = add i64 %4533, 8
  store i64 %4534, i64* %PC.i33
  %4535 = inttoptr i64 %4532 to double*
  %4536 = load double, double* %4535
  %4537 = bitcast i8* %4530 to double*
  store double %4536, double* %4537, align 1
  %4538 = getelementptr inbounds i8, i8* %4530, i64 8
  %4539 = bitcast i8* %4538 to double*
  store double 0.000000e+00, double* %4539, align 1
  store %struct.Memory* %loadMem_400b3f, %struct.Memory** %MEMORY
  %loadMem1_400b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 33
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4542 to i64*
  %4543 = load i64, i64* %PC.i32
  %4544 = add i64 %4543, 521
  %4545 = load i64, i64* %PC.i32
  %4546 = add i64 %4545, 5
  %4547 = load i64, i64* %PC.i32
  %4548 = add i64 %4547, 5
  store i64 %4548, i64* %PC.i32
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4550 = load i64, i64* %4549, align 8
  %4551 = add i64 %4550, -8
  %4552 = inttoptr i64 %4551 to i64*
  store i64 %4546, i64* %4552
  store i64 %4551, i64* %4549, align 8
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4544, i64* %4553, align 8
  store %struct.Memory* %loadMem1_400b47, %struct.Memory** %MEMORY
  %loadMem2_400b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b47 = load i64, i64* %3
  %call2_400b47 = call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %loadPC_400b47, %struct.Memory* %loadMem2_400b47)
  store %struct.Memory* %call2_400b47, %struct.Memory** %MEMORY
  %loadMem_400b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 33
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4556 to i64*
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 15
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %4559 to i64*
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4561 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4560, i64 0, i64 1
  %YMM1.i31 = bitcast %union.VectorReg* %4561 to %"class.std::bitset"*
  %4562 = bitcast %"class.std::bitset"* %YMM1.i31 to i8*
  %4563 = load i64, i64* %RBP.i30
  %4564 = sub i64 %4563, 200
  %4565 = load i64, i64* %PC.i29
  %4566 = add i64 %4565, 8
  store i64 %4566, i64* %PC.i29
  %4567 = inttoptr i64 %4564 to double*
  %4568 = load double, double* %4567
  %4569 = bitcast i8* %4562 to double*
  store double %4568, double* %4569, align 1
  %4570 = getelementptr inbounds i8, i8* %4562, i64 8
  %4571 = bitcast i8* %4570 to double*
  store double 0.000000e+00, double* %4571, align 1
  store %struct.Memory* %loadMem_400b4c, %struct.Memory** %MEMORY
  %loadMem_400b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 33
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4574 to i64*
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 15
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %4577 to i64*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4579 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4578, i64 0, i64 0
  %XMM0.i28 = bitcast %union.VectorReg* %4579 to %union.vec128_t*
  %4580 = load i64, i64* %RBP.i27
  %4581 = sub i64 %4580, 264
  %4582 = bitcast %union.vec128_t* %XMM0.i28 to i8*
  %4583 = load i64, i64* %PC.i26
  %4584 = add i64 %4583, 8
  store i64 %4584, i64* %PC.i26
  %4585 = bitcast i8* %4582 to double*
  %4586 = load double, double* %4585, align 1
  %4587 = inttoptr i64 %4581 to double*
  store double %4586, double* %4587
  store %struct.Memory* %loadMem_400b54, %struct.Memory** %MEMORY
  %loadMem_400b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 33
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4590 to i64*
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4592 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4591, i64 0, i64 0
  %YMM0.i24 = bitcast %union.VectorReg* %4592 to %"class.std::bitset"*
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4594 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4593, i64 0, i64 1
  %XMM1.i25 = bitcast %union.VectorReg* %4594 to %union.vec128_t*
  %4595 = bitcast %"class.std::bitset"* %YMM0.i24 to i8*
  %4596 = bitcast %union.vec128_t* %XMM1.i25 to i8*
  %4597 = load i64, i64* %PC.i23
  %4598 = add i64 %4597, 3
  store i64 %4598, i64* %PC.i23
  %4599 = bitcast i8* %4596 to <2 x i32>*
  %4600 = load <2 x i32>, <2 x i32>* %4599, align 1
  %4601 = getelementptr inbounds i8, i8* %4596, i64 8
  %4602 = bitcast i8* %4601 to <2 x i32>*
  %4603 = load <2 x i32>, <2 x i32>* %4602, align 1
  %4604 = extractelement <2 x i32> %4600, i32 0
  %4605 = bitcast i8* %4595 to i32*
  store i32 %4604, i32* %4605, align 1
  %4606 = extractelement <2 x i32> %4600, i32 1
  %4607 = getelementptr inbounds i8, i8* %4595, i64 4
  %4608 = bitcast i8* %4607 to i32*
  store i32 %4606, i32* %4608, align 1
  %4609 = extractelement <2 x i32> %4603, i32 0
  %4610 = getelementptr inbounds i8, i8* %4595, i64 8
  %4611 = bitcast i8* %4610 to i32*
  store i32 %4609, i32* %4611, align 1
  %4612 = extractelement <2 x i32> %4603, i32 1
  %4613 = getelementptr inbounds i8, i8* %4595, i64 12
  %4614 = bitcast i8* %4613 to i32*
  store i32 %4612, i32* %4614, align 1
  store %struct.Memory* %loadMem_400b5c, %struct.Memory** %MEMORY
  %loadMem_400b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 33
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4617 to i64*
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 15
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4620 to i64*
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4622 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4621, i64 0, i64 1
  %YMM1.i22 = bitcast %union.VectorReg* %4622 to %"class.std::bitset"*
  %4623 = bitcast %"class.std::bitset"* %YMM1.i22 to i8*
  %4624 = load i64, i64* %RBP.i21
  %4625 = sub i64 %4624, 232
  %4626 = load i64, i64* %PC.i20
  %4627 = add i64 %4626, 8
  store i64 %4627, i64* %PC.i20
  %4628 = inttoptr i64 %4625 to double*
  %4629 = load double, double* %4628
  %4630 = bitcast i8* %4623 to double*
  store double %4629, double* %4630, align 1
  %4631 = getelementptr inbounds i8, i8* %4623, i64 8
  %4632 = bitcast i8* %4631 to double*
  store double 0.000000e+00, double* %4632, align 1
  store %struct.Memory* %loadMem_400b5f, %struct.Memory** %MEMORY
  %loadMem_400b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 33
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4635 to i64*
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 15
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %4638 to i64*
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4639, i64 0, i64 2
  %YMM2.i19 = bitcast %union.VectorReg* %4640 to %"class.std::bitset"*
  %4641 = bitcast %"class.std::bitset"* %YMM2.i19 to i8*
  %4642 = load i64, i64* %RBP.i18
  %4643 = sub i64 %4642, 264
  %4644 = load i64, i64* %PC.i17
  %4645 = add i64 %4644, 8
  store i64 %4645, i64* %PC.i17
  %4646 = inttoptr i64 %4643 to double*
  %4647 = load double, double* %4646
  %4648 = bitcast i8* %4641 to double*
  store double %4647, double* %4648, align 1
  %4649 = getelementptr inbounds i8, i8* %4641, i64 8
  %4650 = bitcast i8* %4649 to double*
  store double 0.000000e+00, double* %4650, align 1
  store %struct.Memory* %loadMem_400b67, %struct.Memory** %MEMORY
  %loadMem1_400b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 33
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4653 to i64*
  %4654 = load i64, i64* %PC.i16
  %4655 = add i64 %4654, 481
  %4656 = load i64, i64* %PC.i16
  %4657 = add i64 %4656, 5
  %4658 = load i64, i64* %PC.i16
  %4659 = add i64 %4658, 5
  store i64 %4659, i64* %PC.i16
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4661 = load i64, i64* %4660, align 8
  %4662 = add i64 %4661, -8
  %4663 = inttoptr i64 %4662 to i64*
  store i64 %4657, i64* %4663
  store i64 %4662, i64* %4660, align 8
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4655, i64* %4664, align 8
  store %struct.Memory* %loadMem1_400b6f, %struct.Memory** %MEMORY
  %loadMem2_400b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b6f = load i64, i64* %3
  %call2_400b6f = call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %loadPC_400b6f, %struct.Memory* %loadMem2_400b6f)
  store %struct.Memory* %call2_400b6f, %struct.Memory** %MEMORY
  %loadMem_400b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 33
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4667 to i64*
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4669 = getelementptr inbounds %struct.GPR, %struct.GPR* %4668, i32 0, i32 15
  %4670 = getelementptr inbounds %struct.Reg, %struct.Reg* %4669, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %4670 to i64*
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4672 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4671, i64 0, i64 1
  %YMM1.i15 = bitcast %union.VectorReg* %4672 to %"class.std::bitset"*
  %4673 = bitcast %"class.std::bitset"* %YMM1.i15 to i8*
  %4674 = load i64, i64* %RBP.i14
  %4675 = sub i64 %4674, 96
  %4676 = load i64, i64* %PC.i13
  %4677 = add i64 %4676, 5
  store i64 %4677, i64* %PC.i13
  %4678 = inttoptr i64 %4675 to double*
  %4679 = load double, double* %4678
  %4680 = bitcast i8* %4673 to double*
  store double %4679, double* %4680, align 1
  %4681 = getelementptr inbounds i8, i8* %4673, i64 8
  %4682 = bitcast i8* %4681 to double*
  store double 0.000000e+00, double* %4682, align 1
  store %struct.Memory* %loadMem_400b74, %struct.Memory** %MEMORY
  %loadMem_400b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 33
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4685 to i64*
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 15
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %4688 to i64*
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4690 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4689, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4690 to %union.vec128_t*
  %4691 = load i64, i64* %RBP.i12
  %4692 = sub i64 %4691, 272
  %4693 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4694 = load i64, i64* %PC.i11
  %4695 = add i64 %4694, 8
  store i64 %4695, i64* %PC.i11
  %4696 = bitcast i8* %4693 to double*
  %4697 = load double, double* %4696, align 1
  %4698 = inttoptr i64 %4692 to double*
  store double %4697, double* %4698
  store %struct.Memory* %loadMem_400b79, %struct.Memory** %MEMORY
  %loadMem_400b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 33
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4703 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4702, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4703 to %"class.std::bitset"*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4705 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4704, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4705 to %union.vec128_t*
  %4706 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4707 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4708 = load i64, i64* %PC.i10
  %4709 = add i64 %4708, 3
  store i64 %4709, i64* %PC.i10
  %4710 = bitcast i8* %4707 to <2 x i32>*
  %4711 = load <2 x i32>, <2 x i32>* %4710, align 1
  %4712 = getelementptr inbounds i8, i8* %4707, i64 8
  %4713 = bitcast i8* %4712 to <2 x i32>*
  %4714 = load <2 x i32>, <2 x i32>* %4713, align 1
  %4715 = extractelement <2 x i32> %4711, i32 0
  %4716 = bitcast i8* %4706 to i32*
  store i32 %4715, i32* %4716, align 1
  %4717 = extractelement <2 x i32> %4711, i32 1
  %4718 = getelementptr inbounds i8, i8* %4706, i64 4
  %4719 = bitcast i8* %4718 to i32*
  store i32 %4717, i32* %4719, align 1
  %4720 = extractelement <2 x i32> %4714, i32 0
  %4721 = getelementptr inbounds i8, i8* %4706, i64 8
  %4722 = bitcast i8* %4721 to i32*
  store i32 %4720, i32* %4722, align 1
  %4723 = extractelement <2 x i32> %4714, i32 1
  %4724 = getelementptr inbounds i8, i8* %4706, i64 12
  %4725 = bitcast i8* %4724 to i32*
  store i32 %4723, i32* %4725, align 1
  store %struct.Memory* %loadMem_400b81, %struct.Memory** %MEMORY
  %loadMem_400b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 33
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4728 to i64*
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 15
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %4731 to i64*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4733 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4732, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4733 to %"class.std::bitset"*
  %4734 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4735 = load i64, i64* %RBP.i9
  %4736 = sub i64 %4735, 192
  %4737 = load i64, i64* %PC.i8
  %4738 = add i64 %4737, 8
  store i64 %4738, i64* %PC.i8
  %4739 = inttoptr i64 %4736 to double*
  %4740 = load double, double* %4739
  %4741 = bitcast i8* %4734 to double*
  store double %4740, double* %4741, align 1
  %4742 = getelementptr inbounds i8, i8* %4734, i64 8
  %4743 = bitcast i8* %4742 to double*
  store double 0.000000e+00, double* %4743, align 1
  store %struct.Memory* %loadMem_400b84, %struct.Memory** %MEMORY
  %loadMem_400b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 33
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4746 to i64*
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 15
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %4749 to i64*
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4751 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4750, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %4751 to %"class.std::bitset"*
  %4752 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4753 = load i64, i64* %RBP.i7
  %4754 = sub i64 %4753, 272
  %4755 = load i64, i64* %PC.i6
  %4756 = add i64 %4755, 8
  store i64 %4756, i64* %PC.i6
  %4757 = inttoptr i64 %4754 to double*
  %4758 = load double, double* %4757
  %4759 = bitcast i8* %4752 to double*
  store double %4758, double* %4759, align 1
  %4760 = getelementptr inbounds i8, i8* %4752, i64 8
  %4761 = bitcast i8* %4760 to double*
  store double 0.000000e+00, double* %4761, align 1
  store %struct.Memory* %loadMem_400b8c, %struct.Memory** %MEMORY
  %loadMem1_400b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 33
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4764 to i64*
  %4765 = load i64, i64* %PC.i5
  %4766 = add i64 %4765, 444
  %4767 = load i64, i64* %PC.i5
  %4768 = add i64 %4767, 5
  %4769 = load i64, i64* %PC.i5
  %4770 = add i64 %4769, 5
  store i64 %4770, i64* %PC.i5
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4772 = load i64, i64* %4771, align 8
  %4773 = add i64 %4772, -8
  %4774 = inttoptr i64 %4773 to i64*
  store i64 %4768, i64* %4774
  store i64 %4773, i64* %4771, align 8
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4766, i64* %4775, align 8
  store %struct.Memory* %loadMem1_400b94, %struct.Memory** %MEMORY
  %loadMem2_400b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b94 = load i64, i64* %3
  %call2_400b94 = call %struct.Memory* @sub_400d50.lerp(%struct.State* %0, i64 %loadPC_400b94, %struct.Memory* %loadMem2_400b94)
  store %struct.Memory* %call2_400b94, %struct.Memory** %MEMORY
  %loadMem_400b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 33
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4778 to i64*
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 13
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4781 to i64*
  %4782 = load i64, i64* %RSP.i
  %4783 = load i64, i64* %PC.i4
  %4784 = add i64 %4783, 7
  store i64 %4784, i64* %PC.i4
  %4785 = add i64 272, %4782
  store i64 %4785, i64* %RSP.i, align 8
  %4786 = icmp ult i64 %4785, %4782
  %4787 = icmp ult i64 %4785, 272
  %4788 = or i1 %4786, %4787
  %4789 = zext i1 %4788 to i8
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4789, i8* %4790, align 1
  %4791 = trunc i64 %4785 to i32
  %4792 = and i32 %4791, 255
  %4793 = call i32 @llvm.ctpop.i32(i32 %4792)
  %4794 = trunc i32 %4793 to i8
  %4795 = and i8 %4794, 1
  %4796 = xor i8 %4795, 1
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4796, i8* %4797, align 1
  %4798 = xor i64 272, %4782
  %4799 = xor i64 %4798, %4785
  %4800 = lshr i64 %4799, 4
  %4801 = trunc i64 %4800 to i8
  %4802 = and i8 %4801, 1
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4802, i8* %4803, align 1
  %4804 = icmp eq i64 %4785, 0
  %4805 = zext i1 %4804 to i8
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4805, i8* %4806, align 1
  %4807 = lshr i64 %4785, 63
  %4808 = trunc i64 %4807 to i8
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4808, i8* %4809, align 1
  %4810 = lshr i64 %4782, 63
  %4811 = xor i64 %4807, %4810
  %4812 = add i64 %4811, %4807
  %4813 = icmp eq i64 %4812, 2
  %4814 = zext i1 %4813 to i8
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4814, i8* %4815, align 1
  store %struct.Memory* %loadMem_400b99, %struct.Memory** %MEMORY
  %loadMem_400ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4817 = getelementptr inbounds %struct.GPR, %struct.GPR* %4816, i32 0, i32 33
  %4818 = getelementptr inbounds %struct.Reg, %struct.Reg* %4817, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4818 to i64*
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4820 = getelementptr inbounds %struct.GPR, %struct.GPR* %4819, i32 0, i32 15
  %4821 = getelementptr inbounds %struct.Reg, %struct.Reg* %4820, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4821 to i64*
  %4822 = load i64, i64* %PC.i2
  %4823 = add i64 %4822, 1
  store i64 %4823, i64* %PC.i2
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4825 = load i64, i64* %4824, align 8
  %4826 = add i64 %4825, 8
  %4827 = inttoptr i64 %4825 to i64*
  %4828 = load i64, i64* %4827
  store i64 %4828, i64* %RBP.i3, align 8
  store i64 %4826, i64* %4824, align 8
  store %struct.Memory* %loadMem_400ba0, %struct.Memory** %MEMORY
  %loadMem_400ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 33
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4831 to i64*
  %4832 = load i64, i64* %PC.i1
  %4833 = add i64 %4832, 1
  store i64 %4833, i64* %PC.i1
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4836 = load i64, i64* %4835, align 8
  %4837 = inttoptr i64 %4836 to i64*
  %4838 = load i64, i64* %4837
  store i64 %4838, i64* %4834, align 8
  %4839 = add i64 %4836, 8
  store i64 %4839, i64* %4835, align 8
  store %struct.Memory* %loadMem_400ba1, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400ba1
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

define %struct.Memory* @routine_subq__0x110___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 272
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 272
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
  %23 = xor i64 272, %9
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 8
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_callq_.floor_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to double*
  %15 = load double, double* %14, align 1
  %16 = call double @llvm.trunc.f64(double %15)
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = fcmp ogt double %17, 0x41DFFFFFFFC00000
  %19 = fptosi double %16 to i32
  %20 = zext i32 %19 to i64
  %21 = select i1 %18, i64 2147483648, i64 %20
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = and i64 255, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fade(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x602450___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 6300752
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
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

define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 36
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

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_movl_0x602450___rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 6300752
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm4___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM4 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm5___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM5 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.grad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x5dc__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5dc__rip__type* @G_0x5dc__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
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

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 128
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

define %struct.Memory* @routine_callq_.lerp(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x58a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x58a__rip__type* @G_0x58a__rip_ to i64)
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

define %struct.Memory* @routine_subsd__xmm1___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 152
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x531__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x531__rip__type* @G_0x531__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_subsd__xmm1___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 168
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm3___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 176
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

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 184
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

define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_0x497__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x497__rip__type* @G_0x497__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_subsd__xmm1___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM6 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 192
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

define %struct.Memory* @routine_movaps__xmm4___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM4 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm5___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM5 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 200
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm6___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM6 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 208
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x43c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x43c__rip__type* @G_0x43c__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 216
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

define %struct.Memory* @routine_movaps__xmm4___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM4 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xd0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 224
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

define %struct.Memory* @routine_movsd_MINUS0xd8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_0x3cf__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3cf__rip__type* @G_0x3cf__rip_ to i64)
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

define %struct.Memory* @routine_subsd__xmm1___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xe8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 232
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 240
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x37d__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x37d__rip__type* @G_0x37d__rip_ to i64)
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 248
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

define %struct.Memory* @routine_movsd_MINUS0xf0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 256
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

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_MINUS0xc8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 264
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

define %struct.Memory* @routine_movsd_MINUS0xe8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 272
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

define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movsd_MINUS0x110__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_addq__0x110___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 272, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 272
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
  %25 = xor i64 272, %9
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
