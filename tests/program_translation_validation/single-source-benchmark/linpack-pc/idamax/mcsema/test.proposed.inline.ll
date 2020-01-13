; ModuleID = 'mcsema/test.proposed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400370__init_type = type <{ [23 x i8] }>
%seg_400390__text_type = type <{ [354 x i8] }>
%seg_4004f4__fini_type = type <{ [9 x i8] }>
%seg_400500__rodata_type = type <{ [4 x i8] }>
%seg_400504__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400538__eh_frame_type = type <{ [208 x i8] }>
%seg_601018__data_type = type <{ [16 x i8] }>
%__bss_start_type = type <{ [8 x i8] }>
%G_0x1ec__rip__4205876__type = type <{ [16 x i8] }>
%G_0x221__rip__4205823__type = type <{ [16 x i8] }>
%G_0x259__rip__4205767__type = type <{ [16 x i8] }>
%G_0x29c__rip__4205700__type = type <{ [16 x i8] }>
%G_0x2d1__rip__4205647__type = type <{ [16 x i8] }>
%G_0x312__rip__4205582__type = type <{ [16 x i8] }>
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
@seg_400370__init = internal constant %seg_400370__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05}\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400390__text = internal constant %seg_400390__text_type <{ [354 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\F0\04@\00H\C7\C1\80\04@\00H\C7\C7x\04@\00\FF\156\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\E1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\CF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90U\C3f\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\BE\09 \00UH\8D-\BE\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\BF\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4004f4__fini = internal constant %seg_4004f4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400500__rodata = internal constant %seg_400500__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400504__eh_frame_hdr = internal constant %seg_400504__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400538__eh_frame = internal constant %seg_400538__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601018__data = internal global %seg_601018__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@G_0x1ec__rip__4205876_ = global %G_0x1ec__rip__4205876__type zeroinitializer
@G_0x221__rip__4205823_ = global %G_0x221__rip__4205823__type zeroinitializer
@G_0x259__rip__4205767_ = global %G_0x259__rip__4205767__type zeroinitializer
@G_0x29c__rip__4205700_ = global %G_0x29c__rip__4205700__type zeroinitializer
@G_0x2d1__rip__4205647_ = global %G_0x2d1__rip__4205647__type zeroinitializer
@G_0x312__rip__4205582_ = global %G_0x312__rip__4205582__type zeroinitializer

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
define %struct.Memory* @idamax(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_402bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_402bb0, %struct.Memory** %MEMORY
  %loadMem_402bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i50
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i50
  store i64 %26, i64* %RBP.i51, align 8
  store %struct.Memory* %loadMem_402bb1, %struct.Memory** %MEMORY
  %loadMem_402bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %34 to i32*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i162
  %39 = sub i64 %38, 8
  %40 = load i32, i32* %EDI.i
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC.i161
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC.i161
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  store %struct.Memory* %loadMem_402bb4, %struct.Memory** %MEMORY
  %loadMem_402bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 33
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %50 to i64*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %53 to i64*
  %54 = load i64, i64* %RBP.i244
  %55 = sub i64 %54, 16
  %56 = load i64, i64* %RSI.i
  %57 = load i64, i64* %PC.i243
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC.i243
  %59 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %59
  store %struct.Memory* %loadMem_402bb7, %struct.Memory** %MEMORY
  %loadMem_402bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 33
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %62 to i64*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %65 to i32*
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.GPR, %struct.GPR* %66, i32 0, i32 15
  %68 = getelementptr inbounds %struct.Reg, %struct.Reg* %67, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %68 to i64*
  %69 = load i64, i64* %RBP.i242
  %70 = sub i64 %69, 20
  %71 = load i32, i32* %EDX.i
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %PC.i241
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC.i241
  %75 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %75
  store %struct.Memory* %loadMem_402bbb, %struct.Memory** %MEMORY
  %loadMem_402bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 33
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 15
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %81 to i64*
  %82 = load i64, i64* %RBP.i240
  %83 = sub i64 %82, 8
  %84 = load i64, i64* %PC.i239
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC.i239
  %86 = inttoptr i64 %83 to i32*
  %87 = load i32, i32* %86
  %88 = sub i32 %87, 1
  %89 = icmp ult i32 %87, 1
  %90 = zext i1 %89 to i8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %90, i8* %91, align 1
  %92 = and i32 %88, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92)
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %96, i8* %97, align 1
  %98 = xor i32 %87, 1
  %99 = xor i32 %98, %88
  %100 = lshr i32 %99, 4
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %102, i8* %103, align 1
  %104 = icmp eq i32 %88, 0
  %105 = zext i1 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %105, i8* %106, align 1
  %107 = lshr i32 %88, 31
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %108, i8* %109, align 1
  %110 = lshr i32 %87, 31
  %111 = xor i32 %107, %110
  %112 = add i32 %111, %110
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %114, i8* %115, align 1
  store %struct.Memory* %loadMem_402bbe, %struct.Memory** %MEMORY
  %loadMem_402bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %118 to i64*
  %119 = load i64, i64* %PC.i238
  %120 = add i64 %119, 18
  %121 = load i64, i64* %PC.i238
  %122 = add i64 %121, 6
  %123 = load i64, i64* %PC.i238
  %124 = add i64 %123, 6
  store i64 %124, i64* %PC.i238
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  %131 = xor i1 %127, %130
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %BRANCH_TAKEN, align 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %135 = select i1 %131, i64 %122, i64 %120
  store i64 %135, i64* %134, align 8
  store %struct.Memory* %loadMem_402bc2, %struct.Memory** %MEMORY
  %loadBr_402bc2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402bc2 = icmp eq i8 %loadBr_402bc2, 1
  br i1 %cmpBr_402bc2, label %block_.L_402bd4, label %block_402bc8

block_402bc8:                                     ; preds = %entry
  %loadMem_402bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 33
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 15
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %141 to i64*
  %142 = load i64, i64* %RBP.i237
  %143 = sub i64 %142, 4
  %144 = load i64, i64* %PC.i236
  %145 = add i64 %144, 7
  store i64 %145, i64* %PC.i236
  %146 = inttoptr i64 %143 to i32*
  store i32 -1, i32* %146
  store %struct.Memory* %loadMem_402bc8, %struct.Memory** %MEMORY
  %loadMem_402bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 33
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %149 to i64*
  %150 = load i64, i64* %PC.i235
  %151 = add i64 %150, 400
  %152 = load i64, i64* %PC.i235
  %153 = add i64 %152, 5
  store i64 %153, i64* %PC.i235
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %151, i64* %154, align 8
  store %struct.Memory* %loadMem_402bcf, %struct.Memory** %MEMORY
  br label %block_.L_402d5f

block_.L_402bd4:                                  ; preds = %entry
  %loadMem_402bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 15
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %160 to i64*
  %161 = load i64, i64* %RBP.i234
  %162 = sub i64 %161, 8
  %163 = load i64, i64* %PC.i233
  %164 = add i64 %163, 4
  store i64 %164, i64* %PC.i233
  %165 = inttoptr i64 %162 to i32*
  %166 = load i32, i32* %165
  %167 = sub i32 %166, 1
  %168 = icmp ult i32 %166, 1
  %169 = zext i1 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %169, i8* %170, align 1
  %171 = and i32 %167, 255
  %172 = call i32 @llvm.ctpop.i32(i32 %171)
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %175, i8* %176, align 1
  %177 = xor i32 %166, 1
  %178 = xor i32 %177, %167
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %181, i8* %182, align 1
  %183 = icmp eq i32 %167, 0
  %184 = zext i1 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %184, i8* %185, align 1
  %186 = lshr i32 %167, 31
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %187, i8* %188, align 1
  %189 = lshr i32 %166, 31
  %190 = xor i32 %186, %189
  %191 = add i32 %190, %189
  %192 = icmp eq i32 %191, 2
  %193 = zext i1 %192 to i8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %193, i8* %194, align 1
  store %struct.Memory* %loadMem_402bd4, %struct.Memory** %MEMORY
  %loadMem_402bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 33
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %197 to i64*
  %198 = load i64, i64* %PC.i232
  %199 = add i64 %198, 18
  %200 = load i64, i64* %PC.i232
  %201 = add i64 %200, 6
  %202 = load i64, i64* %PC.i232
  %203 = add i64 %202, 6
  store i64 %203, i64* %PC.i232
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %205 = load i8, i8* %204, align 1
  %206 = icmp eq i8 %205, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %BRANCH_TAKEN, align 1
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %209 = select i1 %206, i64 %199, i64 %201
  store i64 %209, i64* %208, align 8
  store %struct.Memory* %loadMem_402bd8, %struct.Memory** %MEMORY
  %loadBr_402bd8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402bd8 = icmp eq i8 %loadBr_402bd8, 1
  br i1 %cmpBr_402bd8, label %block_.L_402bea, label %block_402bde

block_402bde:                                     ; preds = %block_.L_402bd4
  %loadMem_402bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 15
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %215 to i64*
  %216 = load i64, i64* %RBP.i231
  %217 = sub i64 %216, 4
  %218 = load i64, i64* %PC.i230
  %219 = add i64 %218, 7
  store i64 %219, i64* %PC.i230
  %220 = inttoptr i64 %217 to i32*
  store i32 0, i32* %220
  store %struct.Memory* %loadMem_402bde, %struct.Memory** %MEMORY
  %loadMem_402be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %PC.i229
  %225 = add i64 %224, 378
  %226 = load i64, i64* %PC.i229
  %227 = add i64 %226, 5
  store i64 %227, i64* %PC.i229
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %225, i64* %228, align 8
  store %struct.Memory* %loadMem_402be5, %struct.Memory** %MEMORY
  br label %block_.L_402d5f

block_.L_402bea:                                  ; preds = %block_.L_402bd4
  %loadMem_402bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 33
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 15
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %234 to i64*
  %235 = load i64, i64* %RBP.i228
  %236 = sub i64 %235, 20
  %237 = load i64, i64* %PC.i227
  %238 = add i64 %237, 4
  store i64 %238, i64* %PC.i227
  %239 = inttoptr i64 %236 to i32*
  %240 = load i32, i32* %239
  %241 = sub i32 %240, 1
  %242 = icmp ult i32 %240, 1
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %243, i8* %244, align 1
  %245 = and i32 %241, 255
  %246 = call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %249, i8* %250, align 1
  %251 = xor i32 %240, 1
  %252 = xor i32 %251, %241
  %253 = lshr i32 %252, 4
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %255, i8* %256, align 1
  %257 = icmp eq i32 %241, 0
  %258 = zext i1 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %258, i8* %259, align 1
  %260 = lshr i32 %241, 31
  %261 = trunc i32 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %261, i8* %262, align 1
  %263 = lshr i32 %240, 31
  %264 = xor i32 %260, %263
  %265 = add i32 %264, %263
  %266 = icmp eq i32 %265, 2
  %267 = zext i1 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %267, i8* %268, align 1
  store %struct.Memory* %loadMem_402bea, %struct.Memory** %MEMORY
  %loadMem_402bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %PC.i226
  %273 = add i64 %272, 191
  %274 = load i64, i64* %PC.i226
  %275 = add i64 %274, 6
  %276 = load i64, i64* %PC.i226
  %277 = add i64 %276, 6
  store i64 %277, i64* %PC.i226
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %279 = load i8, i8* %278, align 1
  store i8 %279, i8* %BRANCH_TAKEN, align 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %281 = icmp ne i8 %279, 0
  %282 = select i1 %281, i64 %273, i64 %275
  store i64 %282, i64* %280, align 8
  store %struct.Memory* %loadMem_402bee, %struct.Memory** %MEMORY
  %loadBr_402bee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402bee = icmp eq i8 %loadBr_402bee, 1
  br i1 %cmpBr_402bee, label %block_.L_402cad, label %block_402bf4

block_402bf4:                                     ; preds = %block_.L_402bea
  %loadMem_402bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 15
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %RBP.i225
  %290 = sub i64 %289, 32
  %291 = load i64, i64* %PC.i224
  %292 = add i64 %291, 7
  store i64 %292, i64* %PC.i224
  %293 = inttoptr i64 %290 to i32*
  store i32 1, i32* %293
  store %struct.Memory* %loadMem_402bf4, %struct.Memory** %MEMORY
  %loadMem_402bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 15
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %302 to i64*
  %303 = load i64, i64* %RBP.i223
  %304 = sub i64 %303, 16
  %305 = load i64, i64* %PC.i221
  %306 = add i64 %305, 4
  store i64 %306, i64* %PC.i221
  %307 = inttoptr i64 %304 to i64*
  %308 = load i64, i64* %307
  store i64 %308, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_402bfb, %struct.Memory** %MEMORY
  %loadMem_402bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %315, i64 0, i64 0
  %YMM0.i220 = bitcast %union.VectorReg* %316 to %"class.std::bitset"*
  %317 = bitcast %"class.std::bitset"* %YMM0.i220 to i8*
  %318 = load i64, i64* %RAX.i219
  %319 = load i64, i64* %PC.i218
  %320 = add i64 %319, 4
  store i64 %320, i64* %PC.i218
  %321 = inttoptr i64 %318 to float*
  %322 = load float, float* %321
  %323 = bitcast i8* %317 to float*
  store float %322, float* %323, align 1
  %324 = getelementptr inbounds i8, i8* %317, i64 4
  %325 = bitcast i8* %324 to float*
  store float 0.000000e+00, float* %325, align 1
  %326 = getelementptr inbounds i8, i8* %317, i64 8
  %327 = bitcast i8* %326 to float*
  store float 0.000000e+00, float* %327, align 1
  %328 = getelementptr inbounds i8, i8* %317, i64 12
  %329 = bitcast i8* %328 to float*
  store float 0.000000e+00, float* %329, align 1
  store %struct.Memory* %loadMem_402bff, %struct.Memory** %MEMORY
  %loadMem_402c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %332 to i64*
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %334 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %333, i64 0, i64 0
  %YMM0.i216 = bitcast %union.VectorReg* %334 to %"class.std::bitset"*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %336 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %335, i64 0, i64 0
  %XMM0.i217 = bitcast %union.VectorReg* %336 to %union.vec128_t*
  %337 = bitcast %"class.std::bitset"* %YMM0.i216 to i8*
  %338 = bitcast %union.vec128_t* %XMM0.i217 to i8*
  %339 = load i64, i64* %PC.i215
  %340 = add i64 %339, 4
  store i64 %340, i64* %PC.i215
  %341 = bitcast i8* %338 to <2 x float>*
  %342 = load <2 x float>, <2 x float>* %341, align 1
  %343 = extractelement <2 x float> %342, i32 0
  %344 = fpext float %343 to double
  %345 = bitcast i8* %337 to double*
  store double %344, double* %345, align 1
  store %struct.Memory* %loadMem_402c03, %struct.Memory** %MEMORY
  %loadMem_402c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %350 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %349, i64 0, i64 1
  %YMM1.i214 = bitcast %union.VectorReg* %350 to %"class.std::bitset"*
  %351 = bitcast %"class.std::bitset"* %YMM1.i214 to i8*
  %352 = load i64, i64* %PC.i213
  %353 = load i64, i64* %PC.i213
  %354 = add i64 %353, 7
  store i64 %354, i64* %PC.i213
  %355 = load float, float* bitcast (%G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to float*)
  %356 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to i64), i64 4) to float*)
  %357 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to i64), i64 8) to float*)
  %358 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to i64), i64 12) to float*)
  %359 = bitcast i8* %351 to float*
  store float %355, float* %359, align 1
  %360 = getelementptr inbounds i8, i8* %351, i64 4
  %361 = bitcast i8* %360 to float*
  store float %356, float* %361, align 1
  %362 = getelementptr inbounds i8, i8* %351, i64 8
  %363 = bitcast i8* %362 to float*
  store float %357, float* %363, align 1
  %364 = getelementptr inbounds i8, i8* %351, i64 12
  %365 = bitcast i8* %364 to float*
  store float %358, float* %365, align 1
  store %struct.Memory* %loadMem_402c07, %struct.Memory** %MEMORY
  %loadMem_402c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 33
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %368 to i64*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %370 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %369, i64 0, i64 0
  %YMM0.i211 = bitcast %union.VectorReg* %370 to %"class.std::bitset"*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %372 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %371, i64 0, i64 1
  %XMM1.i212 = bitcast %union.VectorReg* %372 to %union.vec128_t*
  %373 = bitcast %"class.std::bitset"* %YMM0.i211 to i8*
  %374 = bitcast %"class.std::bitset"* %YMM0.i211 to i8*
  %375 = bitcast %union.vec128_t* %XMM1.i212 to i8*
  %376 = load i64, i64* %PC.i210
  %377 = add i64 %376, 4
  store i64 %377, i64* %PC.i210
  %378 = bitcast i8* %374 to i64*
  %379 = load i64, i64* %378, align 1
  %380 = getelementptr inbounds i8, i8* %374, i64 8
  %381 = bitcast i8* %380 to i64*
  %382 = load i64, i64* %381, align 1
  %383 = bitcast i8* %375 to i64*
  %384 = load i64, i64* %383, align 1
  %385 = getelementptr inbounds i8, i8* %375, i64 8
  %386 = bitcast i8* %385 to i64*
  %387 = load i64, i64* %386, align 1
  %388 = and i64 %384, %379
  %389 = and i64 %387, %382
  %390 = trunc i64 %388 to i32
  %391 = lshr i64 %388, 32
  %392 = trunc i64 %391 to i32
  %393 = bitcast i8* %373 to i32*
  store i32 %390, i32* %393, align 1
  %394 = getelementptr inbounds i8, i8* %373, i64 4
  %395 = bitcast i8* %394 to i32*
  store i32 %392, i32* %395, align 1
  %396 = trunc i64 %389 to i32
  %397 = getelementptr inbounds i8, i8* %373, i64 8
  %398 = bitcast i8* %397 to i32*
  store i32 %396, i32* %398, align 1
  %399 = lshr i64 %389, 32
  %400 = trunc i64 %399 to i32
  %401 = getelementptr inbounds i8, i8* %373, i64 12
  %402 = bitcast i8* %401 to i32*
  store i32 %400, i32* %402, align 1
  store %struct.Memory* %loadMem_402c0e, %struct.Memory** %MEMORY
  %loadMem_402c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %407 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %406, i64 0, i64 0
  %YMM0.i208 = bitcast %union.VectorReg* %407 to %"class.std::bitset"*
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %409 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %408, i64 0, i64 0
  %XMM0.i209 = bitcast %union.VectorReg* %409 to %union.vec128_t*
  %410 = bitcast %"class.std::bitset"* %YMM0.i208 to i8*
  %411 = bitcast %union.vec128_t* %XMM0.i209 to i8*
  %412 = load i64, i64* %PC.i207
  %413 = add i64 %412, 4
  store i64 %413, i64* %PC.i207
  %414 = bitcast i8* %410 to <2 x i32>*
  %415 = load <2 x i32>, <2 x i32>* %414, align 1
  %416 = getelementptr inbounds i8, i8* %410, i64 8
  %417 = bitcast i8* %416 to <2 x i32>*
  %418 = load <2 x i32>, <2 x i32>* %417, align 1
  %419 = bitcast i8* %411 to double*
  %420 = load double, double* %419, align 1
  %421 = fptrunc double %420 to float
  %422 = bitcast i8* %410 to float*
  store float %421, float* %422, align 1
  %423 = extractelement <2 x i32> %415, i32 1
  %424 = getelementptr inbounds i8, i8* %410, i64 4
  %425 = bitcast i8* %424 to i32*
  store i32 %423, i32* %425, align 1
  %426 = extractelement <2 x i32> %418, i32 0
  %427 = bitcast i8* %416 to i32*
  store i32 %426, i32* %427, align 1
  %428 = extractelement <2 x i32> %418, i32 1
  %429 = getelementptr inbounds i8, i8* %410, i64 12
  %430 = bitcast i8* %429 to i32*
  store i32 %428, i32* %430, align 1
  store %struct.Memory* %loadMem_402c12, %struct.Memory** %MEMORY
  %loadMem_402c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 33
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 15
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %438 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %437, i64 0, i64 0
  %XMM0.i206 = bitcast %union.VectorReg* %438 to %union.vec128_t*
  %439 = load i64, i64* %RBP.i205
  %440 = sub i64 %439, 24
  %441 = bitcast %union.vec128_t* %XMM0.i206 to i8*
  %442 = load i64, i64* %PC.i204
  %443 = add i64 %442, 5
  store i64 %443, i64* %PC.i204
  %444 = bitcast i8* %441 to <2 x float>*
  %445 = load <2 x float>, <2 x float>* %444, align 1
  %446 = extractelement <2 x float> %445, i32 0
  %447 = inttoptr i64 %440 to float*
  store float %446, float* %447
  store %struct.Memory* %loadMem_402c16, %struct.Memory** %MEMORY
  %loadMem_402c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 5
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 15
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %RBP.i203
  %458 = sub i64 %457, 32
  %459 = load i64, i64* %PC.i201
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC.i201
  %461 = inttoptr i64 %458 to i32*
  %462 = load i32, i32* %461
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RCX.i202, align 8
  store %struct.Memory* %loadMem_402c1b, %struct.Memory** %MEMORY
  %loadMem_402c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 5
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 15
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %472 to i64*
  %473 = load i64, i64* %RCX.i199
  %474 = load i64, i64* %RBP.i200
  %475 = sub i64 %474, 20
  %476 = load i64, i64* %PC.i198
  %477 = add i64 %476, 3
  store i64 %477, i64* %PC.i198
  %478 = trunc i64 %473 to i32
  %479 = inttoptr i64 %475 to i32*
  %480 = load i32, i32* %479
  %481 = add i32 %480, %478
  %482 = zext i32 %481 to i64
  store i64 %482, i64* %RCX.i199, align 8
  %483 = icmp ult i32 %481, %478
  %484 = icmp ult i32 %481, %480
  %485 = or i1 %483, %484
  %486 = zext i1 %485 to i8
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %486, i8* %487, align 1
  %488 = and i32 %481, 255
  %489 = call i32 @llvm.ctpop.i32(i32 %488)
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %492, i8* %493, align 1
  %494 = xor i32 %480, %478
  %495 = xor i32 %494, %481
  %496 = lshr i32 %495, 4
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %498, i8* %499, align 1
  %500 = icmp eq i32 %481, 0
  %501 = zext i1 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %501, i8* %502, align 1
  %503 = lshr i32 %481, 31
  %504 = trunc i32 %503 to i8
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %504, i8* %505, align 1
  %506 = lshr i32 %478, 31
  %507 = lshr i32 %480, 31
  %508 = xor i32 %503, %506
  %509 = xor i32 %503, %507
  %510 = add i32 %508, %509
  %511 = icmp eq i32 %510, 2
  %512 = zext i1 %511 to i8
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %512, i8* %513, align 1
  store %struct.Memory* %loadMem_402c1e, %struct.Memory** %MEMORY
  %loadMem_402c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 33
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %516 to i64*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 5
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %519 to i32*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 15
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %RBP.i197
  %524 = sub i64 %523, 32
  %525 = load i32, i32* %ECX.i
  %526 = zext i32 %525 to i64
  %527 = load i64, i64* %PC.i196
  %528 = add i64 %527, 3
  store i64 %528, i64* %PC.i196
  %529 = inttoptr i64 %524 to i32*
  store i32 %525, i32* %529
  store %struct.Memory* %loadMem_402c21, %struct.Memory** %MEMORY
  %loadMem_402c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 15
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %535 to i64*
  %536 = load i64, i64* %RBP.i195
  %537 = sub i64 %536, 28
  %538 = load i64, i64* %PC.i194
  %539 = add i64 %538, 7
  store i64 %539, i64* %PC.i194
  %540 = inttoptr i64 %537 to i32*
  store i32 1, i32* %540
  store %struct.Memory* %loadMem_402c24, %struct.Memory** %MEMORY
  br label %block_.L_402c2b

block_.L_402c2b:                                  ; preds = %block_.L_402c91, %block_402bf4
  %loadMem_402c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 15
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %549 to i64*
  %550 = load i64, i64* %RBP.i193
  %551 = sub i64 %550, 28
  %552 = load i64, i64* %PC.i191
  %553 = add i64 %552, 3
  store i64 %553, i64* %PC.i191
  %554 = inttoptr i64 %551 to i32*
  %555 = load i32, i32* %554
  %556 = zext i32 %555 to i64
  store i64 %556, i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_402c2b, %struct.Memory** %MEMORY
  %loadMem_402c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %562 to i32*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 15
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %565 to i64*
  %566 = load i32, i32* %EAX.i189
  %567 = zext i32 %566 to i64
  %568 = load i64, i64* %RBP.i190
  %569 = sub i64 %568, 8
  %570 = load i64, i64* %PC.i188
  %571 = add i64 %570, 3
  store i64 %571, i64* %PC.i188
  %572 = inttoptr i64 %569 to i32*
  %573 = load i32, i32* %572
  %574 = sub i32 %566, %573
  %575 = icmp ult i32 %566, %573
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
  %584 = xor i32 %573, %566
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
  %596 = lshr i32 %566, 31
  %597 = lshr i32 %573, 31
  %598 = xor i32 %597, %596
  %599 = xor i32 %593, %596
  %600 = add i32 %599, %598
  %601 = icmp eq i32 %600, 2
  %602 = zext i1 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %602, i8* %603, align 1
  store %struct.Memory* %loadMem_402c2e, %struct.Memory** %MEMORY
  %loadMem_402c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %606 to i64*
  %607 = load i64, i64* %PC.i187
  %608 = add i64 %607, 119
  %609 = load i64, i64* %PC.i187
  %610 = add i64 %609, 6
  %611 = load i64, i64* %PC.i187
  %612 = add i64 %611, 6
  store i64 %612, i64* %PC.i187
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %614 = load i8, i8* %613, align 1
  %615 = icmp ne i8 %614, 0
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %617 = load i8, i8* %616, align 1
  %618 = icmp ne i8 %617, 0
  %619 = xor i1 %615, %618
  %620 = xor i1 %619, true
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %BRANCH_TAKEN, align 1
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %623 = select i1 %619, i64 %610, i64 %608
  store i64 %623, i64* %622, align 8
  store %struct.Memory* %loadMem_402c31, %struct.Memory** %MEMORY
  %loadBr_402c31 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402c31 = icmp eq i8 %loadBr_402c31, 1
  br i1 %cmpBr_402c31, label %block_.L_402ca8, label %block_402c37

block_402c37:                                     ; preds = %block_.L_402c2b
  %loadMem_402c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 33
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %626 to i64*
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 1
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %629 to i64*
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 15
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %632 to i64*
  %633 = load i64, i64* %RBP.i186
  %634 = sub i64 %633, 16
  %635 = load i64, i64* %PC.i184
  %636 = add i64 %635, 4
  store i64 %636, i64* %PC.i184
  %637 = inttoptr i64 %634 to i64*
  %638 = load i64, i64* %637
  store i64 %638, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_402c37, %struct.Memory** %MEMORY
  %loadMem_402c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 33
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %641 to i64*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 5
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %RCX.i182 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 15
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %647 to i64*
  %648 = load i64, i64* %RBP.i183
  %649 = sub i64 %648, 32
  %650 = load i64, i64* %PC.i181
  %651 = add i64 %650, 4
  store i64 %651, i64* %PC.i181
  %652 = inttoptr i64 %649 to i32*
  %653 = load i32, i32* %652
  %654 = sext i32 %653 to i64
  store i64 %654, i64* %RCX.i182, align 8
  store %struct.Memory* %loadMem_402c3b, %struct.Memory** %MEMORY
  %loadMem_402c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 5
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %665 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %664, i64 0, i64 0
  %YMM0.i180 = bitcast %union.VectorReg* %665 to %"class.std::bitset"*
  %666 = bitcast %"class.std::bitset"* %YMM0.i180 to i8*
  %667 = load i64, i64* %RAX.i178
  %668 = load i64, i64* %RCX.i179
  %669 = mul i64 %668, 4
  %670 = add i64 %669, %667
  %671 = load i64, i64* %PC.i177
  %672 = add i64 %671, 5
  store i64 %672, i64* %PC.i177
  %673 = inttoptr i64 %670 to float*
  %674 = load float, float* %673
  %675 = bitcast i8* %666 to float*
  store float %674, float* %675, align 1
  %676 = getelementptr inbounds i8, i8* %666, i64 4
  %677 = bitcast i8* %676 to float*
  store float 0.000000e+00, float* %677, align 1
  %678 = getelementptr inbounds i8, i8* %666, i64 8
  %679 = bitcast i8* %678 to float*
  store float 0.000000e+00, float* %679, align 1
  %680 = getelementptr inbounds i8, i8* %666, i64 12
  %681 = bitcast i8* %680 to float*
  store float 0.000000e+00, float* %681, align 1
  store %struct.Memory* %loadMem_402c3f, %struct.Memory** %MEMORY
  %loadMem_402c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 33
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %686 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %685, i64 0, i64 0
  %YMM0.i175 = bitcast %union.VectorReg* %686 to %"class.std::bitset"*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %687, i64 0, i64 0
  %XMM0.i176 = bitcast %union.VectorReg* %688 to %union.vec128_t*
  %689 = bitcast %"class.std::bitset"* %YMM0.i175 to i8*
  %690 = bitcast %union.vec128_t* %XMM0.i176 to i8*
  %691 = load i64, i64* %PC.i174
  %692 = add i64 %691, 4
  store i64 %692, i64* %PC.i174
  %693 = bitcast i8* %690 to <2 x float>*
  %694 = load <2 x float>, <2 x float>* %693, align 1
  %695 = extractelement <2 x float> %694, i32 0
  %696 = fpext float %695 to double
  %697 = bitcast i8* %689 to double*
  store double %696, double* %697, align 1
  store %struct.Memory* %loadMem_402c44, %struct.Memory** %MEMORY
  %loadMem_402c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 33
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %702 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %701, i64 0, i64 1
  %YMM1.i173 = bitcast %union.VectorReg* %702 to %"class.std::bitset"*
  %703 = bitcast %"class.std::bitset"* %YMM1.i173 to i8*
  %704 = load i64, i64* %PC.i172
  %705 = load i64, i64* %PC.i172
  %706 = add i64 %705, 7
  store i64 %706, i64* %PC.i172
  %707 = load float, float* bitcast (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to float*)
  %708 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64), i64 4) to float*)
  %709 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64), i64 8) to float*)
  %710 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64), i64 12) to float*)
  %711 = bitcast i8* %703 to float*
  store float %707, float* %711, align 1
  %712 = getelementptr inbounds i8, i8* %703, i64 4
  %713 = bitcast i8* %712 to float*
  store float %708, float* %713, align 1
  %714 = getelementptr inbounds i8, i8* %703, i64 8
  %715 = bitcast i8* %714 to float*
  store float %709, float* %715, align 1
  %716 = getelementptr inbounds i8, i8* %703, i64 12
  %717 = bitcast i8* %716 to float*
  store float %710, float* %717, align 1
  store %struct.Memory* %loadMem_402c48, %struct.Memory** %MEMORY
  %loadMem_402c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 33
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %720 to i64*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %722 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %721, i64 0, i64 0
  %YMM0.i170 = bitcast %union.VectorReg* %722 to %"class.std::bitset"*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %724 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %723, i64 0, i64 1
  %XMM1.i171 = bitcast %union.VectorReg* %724 to %union.vec128_t*
  %725 = bitcast %"class.std::bitset"* %YMM0.i170 to i8*
  %726 = bitcast %"class.std::bitset"* %YMM0.i170 to i8*
  %727 = bitcast %union.vec128_t* %XMM1.i171 to i8*
  %728 = load i64, i64* %PC.i169
  %729 = add i64 %728, 4
  store i64 %729, i64* %PC.i169
  %730 = bitcast i8* %726 to i64*
  %731 = load i64, i64* %730, align 1
  %732 = getelementptr inbounds i8, i8* %726, i64 8
  %733 = bitcast i8* %732 to i64*
  %734 = load i64, i64* %733, align 1
  %735 = bitcast i8* %727 to i64*
  %736 = load i64, i64* %735, align 1
  %737 = getelementptr inbounds i8, i8* %727, i64 8
  %738 = bitcast i8* %737 to i64*
  %739 = load i64, i64* %738, align 1
  %740 = and i64 %736, %731
  %741 = and i64 %739, %734
  %742 = trunc i64 %740 to i32
  %743 = lshr i64 %740, 32
  %744 = trunc i64 %743 to i32
  %745 = bitcast i8* %725 to i32*
  store i32 %742, i32* %745, align 1
  %746 = getelementptr inbounds i8, i8* %725, i64 4
  %747 = bitcast i8* %746 to i32*
  store i32 %744, i32* %747, align 1
  %748 = trunc i64 %741 to i32
  %749 = getelementptr inbounds i8, i8* %725, i64 8
  %750 = bitcast i8* %749 to i32*
  store i32 %748, i32* %750, align 1
  %751 = lshr i64 %741, 32
  %752 = trunc i64 %751 to i32
  %753 = getelementptr inbounds i8, i8* %725, i64 12
  %754 = bitcast i8* %753 to i32*
  store i32 %752, i32* %754, align 1
  store %struct.Memory* %loadMem_402c4f, %struct.Memory** %MEMORY
  %loadMem_402c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 15
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %762 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %761, i64 0, i64 1
  %YMM1.i168 = bitcast %union.VectorReg* %762 to %"class.std::bitset"*
  %763 = bitcast %"class.std::bitset"* %YMM1.i168 to i8*
  %764 = load i64, i64* %RBP.i167
  %765 = sub i64 %764, 24
  %766 = load i64, i64* %PC.i166
  %767 = add i64 %766, 5
  store i64 %767, i64* %PC.i166
  %768 = inttoptr i64 %765 to float*
  %769 = load float, float* %768
  %770 = bitcast i8* %763 to float*
  store float %769, float* %770, align 1
  %771 = getelementptr inbounds i8, i8* %763, i64 4
  %772 = bitcast i8* %771 to float*
  store float 0.000000e+00, float* %772, align 1
  %773 = getelementptr inbounds i8, i8* %763, i64 8
  %774 = bitcast i8* %773 to float*
  store float 0.000000e+00, float* %774, align 1
  %775 = getelementptr inbounds i8, i8* %763, i64 12
  %776 = bitcast i8* %775 to float*
  store float 0.000000e+00, float* %776, align 1
  store %struct.Memory* %loadMem_402c53, %struct.Memory** %MEMORY
  %loadMem_402c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %780, i64 0, i64 1
  %YMM1.i164 = bitcast %union.VectorReg* %781 to %"class.std::bitset"*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %783 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %782, i64 0, i64 1
  %XMM1.i165 = bitcast %union.VectorReg* %783 to %union.vec128_t*
  %784 = bitcast %"class.std::bitset"* %YMM1.i164 to i8*
  %785 = bitcast %union.vec128_t* %XMM1.i165 to i8*
  %786 = load i64, i64* %PC.i163
  %787 = add i64 %786, 4
  store i64 %787, i64* %PC.i163
  %788 = bitcast i8* %785 to <2 x float>*
  %789 = load <2 x float>, <2 x float>* %788, align 1
  %790 = extractelement <2 x float> %789, i32 0
  %791 = fpext float %790 to double
  %792 = bitcast i8* %784 to double*
  store double %791, double* %792, align 1
  store %struct.Memory* %loadMem_402c58, %struct.Memory** %MEMORY
  %loadMem_402c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 33
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %795 to i64*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %797 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %796, i64 0, i64 0
  %XMM0.i158 = bitcast %union.VectorReg* %797 to %union.vec128_t*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %799 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %798, i64 0, i64 1
  %XMM1.i159 = bitcast %union.VectorReg* %799 to %union.vec128_t*
  %800 = bitcast %union.vec128_t* %XMM0.i158 to i8*
  %801 = bitcast %union.vec128_t* %XMM1.i159 to i8*
  %802 = load i64, i64* %PC.i157
  %803 = add i64 %802, 4
  store i64 %803, i64* %PC.i157
  %804 = bitcast i8* %800 to double*
  %805 = load double, double* %804, align 1
  %806 = bitcast i8* %801 to double*
  %807 = load double, double* %806, align 1
  %808 = fcmp uno double %805, %807
  br i1 %808, label %809, label %821

; <label>:809:                                    ; preds = %block_402c37
  %810 = fadd double %805, %807
  %811 = bitcast double %810 to i64
  %812 = and i64 %811, 9221120237041090560
  %813 = icmp eq i64 %812, 9218868437227405312
  %814 = and i64 %811, 2251799813685247
  %815 = icmp ne i64 %814, 0
  %816 = and i1 %813, %815
  br i1 %816, label %817, label %827

; <label>:817:                                    ; preds = %809
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %819 = load i64, i64* %818, align 8
  %820 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %819, %struct.Memory* %loadMem_402c5c)
  br label %routine_ucomisd__xmm1___xmm0.exit160

; <label>:821:                                    ; preds = %block_402c37
  %822 = fcmp ogt double %805, %807
  br i1 %822, label %827, label %823

; <label>:823:                                    ; preds = %821
  %824 = fcmp olt double %805, %807
  br i1 %824, label %827, label %825

; <label>:825:                                    ; preds = %823
  %826 = fcmp oeq double %805, %807
  br i1 %826, label %827, label %834

; <label>:827:                                    ; preds = %825, %823, %821, %809
  %828 = phi i8 [ 0, %821 ], [ 0, %823 ], [ 1, %825 ], [ 1, %809 ]
  %829 = phi i8 [ 0, %821 ], [ 0, %823 ], [ 0, %825 ], [ 1, %809 ]
  %830 = phi i8 [ 0, %821 ], [ 1, %823 ], [ 0, %825 ], [ 1, %809 ]
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %828, i8* %831, align 1
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %829, i8* %832, align 1
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %830, i8* %833, align 1
  br label %834

; <label>:834:                                    ; preds = %827, %825
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %835, align 1
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %836, align 1
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %837, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit160

routine_ucomisd__xmm1___xmm0.exit160:             ; preds = %817, %834
  %838 = phi %struct.Memory* [ %820, %817 ], [ %loadMem_402c5c, %834 ]
  store %struct.Memory* %838, %struct.Memory** %MEMORY
  %loadMem_402c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 33
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %841 to i64*
  %842 = load i64, i64* %PC.i156
  %843 = add i64 %842, 49
  %844 = load i64, i64* %PC.i156
  %845 = add i64 %844, 6
  %846 = load i64, i64* %PC.i156
  %847 = add i64 %846, 6
  store i64 %847, i64* %PC.i156
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %849 = load i8, i8* %848, align 1
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %851 = load i8, i8* %850, align 1
  %852 = or i8 %851, %849
  %853 = icmp ne i8 %852, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %BRANCH_TAKEN, align 1
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %856 = select i1 %853, i64 %843, i64 %845
  store i64 %856, i64* %855, align 8
  store %struct.Memory* %loadMem_402c60, %struct.Memory** %MEMORY
  %loadBr_402c60 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402c60 = icmp eq i8 %loadBr_402c60, 1
  br i1 %cmpBr_402c60, label %block_.L_402c91, label %block_402c66

block_402c66:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit160
  %loadMem_402c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 33
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 1
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 15
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %865 to i64*
  %866 = load i64, i64* %RBP.i155
  %867 = sub i64 %866, 28
  %868 = load i64, i64* %PC.i153
  %869 = add i64 %868, 3
  store i64 %869, i64* %PC.i153
  %870 = inttoptr i64 %867 to i32*
  %871 = load i32, i32* %870
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_402c66, %struct.Memory** %MEMORY
  %loadMem_402c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 33
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 1
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %EAX.i151 = bitcast %union.anon* %878 to i32*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 15
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %881 to i64*
  %882 = load i64, i64* %RBP.i152
  %883 = sub i64 %882, 36
  %884 = load i32, i32* %EAX.i151
  %885 = zext i32 %884 to i64
  %886 = load i64, i64* %PC.i150
  %887 = add i64 %886, 3
  store i64 %887, i64* %PC.i150
  %888 = inttoptr i64 %883 to i32*
  store i32 %884, i32* %888
  store %struct.Memory* %loadMem_402c69, %struct.Memory** %MEMORY
  %loadMem_402c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 33
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 5
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 15
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %897 to i64*
  %898 = load i64, i64* %RBP.i149
  %899 = sub i64 %898, 16
  %900 = load i64, i64* %PC.i147
  %901 = add i64 %900, 4
  store i64 %901, i64* %PC.i147
  %902 = inttoptr i64 %899 to i64*
  %903 = load i64, i64* %902
  store i64 %903, i64* %RCX.i148, align 8
  store %struct.Memory* %loadMem_402c6c, %struct.Memory** %MEMORY
  %loadMem_402c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 7
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RDX.i145 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 15
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %912 to i64*
  %913 = load i64, i64* %RBP.i146
  %914 = sub i64 %913, 32
  %915 = load i64, i64* %PC.i144
  %916 = add i64 %915, 4
  store i64 %916, i64* %PC.i144
  %917 = inttoptr i64 %914 to i32*
  %918 = load i32, i32* %917
  %919 = sext i32 %918 to i64
  store i64 %919, i64* %RDX.i145, align 8
  store %struct.Memory* %loadMem_402c70, %struct.Memory** %MEMORY
  %loadMem_402c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 5
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 7
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %930 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %929, i64 0, i64 0
  %YMM0.i143 = bitcast %union.VectorReg* %930 to %"class.std::bitset"*
  %931 = bitcast %"class.std::bitset"* %YMM0.i143 to i8*
  %932 = load i64, i64* %RCX.i141
  %933 = load i64, i64* %RDX.i142
  %934 = mul i64 %933, 4
  %935 = add i64 %934, %932
  %936 = load i64, i64* %PC.i140
  %937 = add i64 %936, 5
  store i64 %937, i64* %PC.i140
  %938 = inttoptr i64 %935 to float*
  %939 = load float, float* %938
  %940 = bitcast i8* %931 to float*
  store float %939, float* %940, align 1
  %941 = getelementptr inbounds i8, i8* %931, i64 4
  %942 = bitcast i8* %941 to float*
  store float 0.000000e+00, float* %942, align 1
  %943 = getelementptr inbounds i8, i8* %931, i64 8
  %944 = bitcast i8* %943 to float*
  store float 0.000000e+00, float* %944, align 1
  %945 = getelementptr inbounds i8, i8* %931, i64 12
  %946 = bitcast i8* %945 to float*
  store float 0.000000e+00, float* %946, align 1
  store %struct.Memory* %loadMem_402c74, %struct.Memory** %MEMORY
  %loadMem_402c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %951 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %950, i64 0, i64 0
  %YMM0.i138 = bitcast %union.VectorReg* %951 to %"class.std::bitset"*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %953 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %952, i64 0, i64 0
  %XMM0.i139 = bitcast %union.VectorReg* %953 to %union.vec128_t*
  %954 = bitcast %"class.std::bitset"* %YMM0.i138 to i8*
  %955 = bitcast %union.vec128_t* %XMM0.i139 to i8*
  %956 = load i64, i64* %PC.i137
  %957 = add i64 %956, 4
  store i64 %957, i64* %PC.i137
  %958 = bitcast i8* %955 to <2 x float>*
  %959 = load <2 x float>, <2 x float>* %958, align 1
  %960 = extractelement <2 x float> %959, i32 0
  %961 = fpext float %960 to double
  %962 = bitcast i8* %954 to double*
  store double %961, double* %962, align 1
  store %struct.Memory* %loadMem_402c79, %struct.Memory** %MEMORY
  %loadMem_402c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %967 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %966, i64 0, i64 1
  %YMM1.i136 = bitcast %union.VectorReg* %967 to %"class.std::bitset"*
  %968 = bitcast %"class.std::bitset"* %YMM1.i136 to i8*
  %969 = load i64, i64* %PC.i135
  %970 = load i64, i64* %PC.i135
  %971 = add i64 %970, 7
  store i64 %971, i64* %PC.i135
  %972 = load float, float* bitcast (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to float*)
  %973 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64), i64 4) to float*)
  %974 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64), i64 8) to float*)
  %975 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64), i64 12) to float*)
  %976 = bitcast i8* %968 to float*
  store float %972, float* %976, align 1
  %977 = getelementptr inbounds i8, i8* %968, i64 4
  %978 = bitcast i8* %977 to float*
  store float %973, float* %978, align 1
  %979 = getelementptr inbounds i8, i8* %968, i64 8
  %980 = bitcast i8* %979 to float*
  store float %974, float* %980, align 1
  %981 = getelementptr inbounds i8, i8* %968, i64 12
  %982 = bitcast i8* %981 to float*
  store float %975, float* %982, align 1
  store %struct.Memory* %loadMem_402c7d, %struct.Memory** %MEMORY
  %loadMem_402c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %987 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %986, i64 0, i64 0
  %YMM0.i133 = bitcast %union.VectorReg* %987 to %"class.std::bitset"*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %989 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %988, i64 0, i64 1
  %XMM1.i134 = bitcast %union.VectorReg* %989 to %union.vec128_t*
  %990 = bitcast %"class.std::bitset"* %YMM0.i133 to i8*
  %991 = bitcast %"class.std::bitset"* %YMM0.i133 to i8*
  %992 = bitcast %union.vec128_t* %XMM1.i134 to i8*
  %993 = load i64, i64* %PC.i132
  %994 = add i64 %993, 4
  store i64 %994, i64* %PC.i132
  %995 = bitcast i8* %991 to i64*
  %996 = load i64, i64* %995, align 1
  %997 = getelementptr inbounds i8, i8* %991, i64 8
  %998 = bitcast i8* %997 to i64*
  %999 = load i64, i64* %998, align 1
  %1000 = bitcast i8* %992 to i64*
  %1001 = load i64, i64* %1000, align 1
  %1002 = getelementptr inbounds i8, i8* %992, i64 8
  %1003 = bitcast i8* %1002 to i64*
  %1004 = load i64, i64* %1003, align 1
  %1005 = and i64 %1001, %996
  %1006 = and i64 %1004, %999
  %1007 = trunc i64 %1005 to i32
  %1008 = lshr i64 %1005, 32
  %1009 = trunc i64 %1008 to i32
  %1010 = bitcast i8* %990 to i32*
  store i32 %1007, i32* %1010, align 1
  %1011 = getelementptr inbounds i8, i8* %990, i64 4
  %1012 = bitcast i8* %1011 to i32*
  store i32 %1009, i32* %1012, align 1
  %1013 = trunc i64 %1006 to i32
  %1014 = getelementptr inbounds i8, i8* %990, i64 8
  %1015 = bitcast i8* %1014 to i32*
  store i32 %1013, i32* %1015, align 1
  %1016 = lshr i64 %1006, 32
  %1017 = trunc i64 %1016 to i32
  %1018 = getelementptr inbounds i8, i8* %990, i64 12
  %1019 = bitcast i8* %1018 to i32*
  store i32 %1017, i32* %1019, align 1
  store %struct.Memory* %loadMem_402c84, %struct.Memory** %MEMORY
  %loadMem_402c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 33
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1023, i64 0, i64 0
  %YMM0.i130 = bitcast %union.VectorReg* %1024 to %"class.std::bitset"*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1026 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1025, i64 0, i64 0
  %XMM0.i131 = bitcast %union.VectorReg* %1026 to %union.vec128_t*
  %1027 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %1028 = bitcast %union.vec128_t* %XMM0.i131 to i8*
  %1029 = load i64, i64* %PC.i129
  %1030 = add i64 %1029, 4
  store i64 %1030, i64* %PC.i129
  %1031 = bitcast i8* %1027 to <2 x i32>*
  %1032 = load <2 x i32>, <2 x i32>* %1031, align 1
  %1033 = getelementptr inbounds i8, i8* %1027, i64 8
  %1034 = bitcast i8* %1033 to <2 x i32>*
  %1035 = load <2 x i32>, <2 x i32>* %1034, align 1
  %1036 = bitcast i8* %1028 to double*
  %1037 = load double, double* %1036, align 1
  %1038 = fptrunc double %1037 to float
  %1039 = bitcast i8* %1027 to float*
  store float %1038, float* %1039, align 1
  %1040 = extractelement <2 x i32> %1032, i32 1
  %1041 = getelementptr inbounds i8, i8* %1027, i64 4
  %1042 = bitcast i8* %1041 to i32*
  store i32 %1040, i32* %1042, align 1
  %1043 = extractelement <2 x i32> %1035, i32 0
  %1044 = bitcast i8* %1033 to i32*
  store i32 %1043, i32* %1044, align 1
  %1045 = extractelement <2 x i32> %1035, i32 1
  %1046 = getelementptr inbounds i8, i8* %1027, i64 12
  %1047 = bitcast i8* %1046 to i32*
  store i32 %1045, i32* %1047, align 1
  store %struct.Memory* %loadMem_402c88, %struct.Memory** %MEMORY
  %loadMem_402c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 33
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 15
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %1053 to i64*
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1055 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1054, i64 0, i64 0
  %XMM0.i128 = bitcast %union.VectorReg* %1055 to %union.vec128_t*
  %1056 = load i64, i64* %RBP.i127
  %1057 = sub i64 %1056, 24
  %1058 = bitcast %union.vec128_t* %XMM0.i128 to i8*
  %1059 = load i64, i64* %PC.i126
  %1060 = add i64 %1059, 5
  store i64 %1060, i64* %PC.i126
  %1061 = bitcast i8* %1058 to <2 x float>*
  %1062 = load <2 x float>, <2 x float>* %1061, align 1
  %1063 = extractelement <2 x float> %1062, i32 0
  %1064 = inttoptr i64 %1057 to float*
  store float %1063, float* %1064
  store %struct.Memory* %loadMem_402c8c, %struct.Memory** %MEMORY
  br label %block_.L_402c91

block_.L_402c91:                                  ; preds = %block_402c66, %routine_ucomisd__xmm1___xmm0.exit160
  %loadMem_402c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 33
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %1067 to i64*
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 1
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 15
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %1073 to i64*
  %1074 = load i64, i64* %RBP.i125
  %1075 = sub i64 %1074, 32
  %1076 = load i64, i64* %PC.i123
  %1077 = add i64 %1076, 3
  store i64 %1077, i64* %PC.i123
  %1078 = inttoptr i64 %1075 to i32*
  %1079 = load i32, i32* %1078
  %1080 = zext i32 %1079 to i64
  store i64 %1080, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_402c91, %struct.Memory** %MEMORY
  %loadMem_402c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 1
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 15
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %1089 to i64*
  %1090 = load i64, i64* %RAX.i121
  %1091 = load i64, i64* %RBP.i122
  %1092 = sub i64 %1091, 20
  %1093 = load i64, i64* %PC.i120
  %1094 = add i64 %1093, 3
  store i64 %1094, i64* %PC.i120
  %1095 = trunc i64 %1090 to i32
  %1096 = inttoptr i64 %1092 to i32*
  %1097 = load i32, i32* %1096
  %1098 = add i32 %1097, %1095
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RAX.i121, align 8
  %1100 = icmp ult i32 %1098, %1095
  %1101 = icmp ult i32 %1098, %1097
  %1102 = or i1 %1100, %1101
  %1103 = zext i1 %1102 to i8
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1103, i8* %1104, align 1
  %1105 = and i32 %1098, 255
  %1106 = call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1109, i8* %1110, align 1
  %1111 = xor i32 %1097, %1095
  %1112 = xor i32 %1111, %1098
  %1113 = lshr i32 %1112, 4
  %1114 = trunc i32 %1113 to i8
  %1115 = and i8 %1114, 1
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1115, i8* %1116, align 1
  %1117 = icmp eq i32 %1098, 0
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1118, i8* %1119, align 1
  %1120 = lshr i32 %1098, 31
  %1121 = trunc i32 %1120 to i8
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1121, i8* %1122, align 1
  %1123 = lshr i32 %1095, 31
  %1124 = lshr i32 %1097, 31
  %1125 = xor i32 %1120, %1123
  %1126 = xor i32 %1120, %1124
  %1127 = add i32 %1125, %1126
  %1128 = icmp eq i32 %1127, 2
  %1129 = zext i1 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1129, i8* %1130, align 1
  store %struct.Memory* %loadMem_402c94, %struct.Memory** %MEMORY
  %loadMem_402c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 1
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %EAX.i118 = bitcast %union.anon* %1136 to i32*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 15
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %1139 to i64*
  %1140 = load i64, i64* %RBP.i119
  %1141 = sub i64 %1140, 32
  %1142 = load i32, i32* %EAX.i118
  %1143 = zext i32 %1142 to i64
  %1144 = load i64, i64* %PC.i117
  %1145 = add i64 %1144, 3
  store i64 %1145, i64* %PC.i117
  %1146 = inttoptr i64 %1141 to i32*
  store i32 %1142, i32* %1146
  store %struct.Memory* %loadMem_402c97, %struct.Memory** %MEMORY
  %loadMem_402c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 33
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 1
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 15
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %1155 to i64*
  %1156 = load i64, i64* %RBP.i116
  %1157 = sub i64 %1156, 28
  %1158 = load i64, i64* %PC.i114
  %1159 = add i64 %1158, 3
  store i64 %1159, i64* %PC.i114
  %1160 = inttoptr i64 %1157 to i32*
  %1161 = load i32, i32* %1160
  %1162 = zext i32 %1161 to i64
  store i64 %1162, i64* %RAX.i115, align 8
  store %struct.Memory* %loadMem_402c9a, %struct.Memory** %MEMORY
  %loadMem_402c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 1
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %1168 to i64*
  %1169 = load i64, i64* %RAX.i113
  %1170 = load i64, i64* %PC.i112
  %1171 = add i64 %1170, 3
  store i64 %1171, i64* %PC.i112
  %1172 = trunc i64 %1169 to i32
  %1173 = add i32 1, %1172
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RAX.i113, align 8
  %1175 = icmp ult i32 %1173, %1172
  %1176 = icmp ult i32 %1173, 1
  %1177 = or i1 %1175, %1176
  %1178 = zext i1 %1177 to i8
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1178, i8* %1179, align 1
  %1180 = and i32 %1173, 255
  %1181 = call i32 @llvm.ctpop.i32(i32 %1180)
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = xor i8 %1183, 1
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1184, i8* %1185, align 1
  %1186 = xor i64 1, %1169
  %1187 = trunc i64 %1186 to i32
  %1188 = xor i32 %1187, %1173
  %1189 = lshr i32 %1188, 4
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1191, i8* %1192, align 1
  %1193 = icmp eq i32 %1173, 0
  %1194 = zext i1 %1193 to i8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1194, i8* %1195, align 1
  %1196 = lshr i32 %1173, 31
  %1197 = trunc i32 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1197, i8* %1198, align 1
  %1199 = lshr i32 %1172, 31
  %1200 = xor i32 %1196, %1199
  %1201 = add i32 %1200, %1196
  %1202 = icmp eq i32 %1201, 2
  %1203 = zext i1 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1203, i8* %1204, align 1
  store %struct.Memory* %loadMem_402c9d, %struct.Memory** %MEMORY
  %loadMem_402ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 33
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %1207 to i64*
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 1
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %EAX.i110 = bitcast %union.anon* %1210 to i32*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 15
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %1213 to i64*
  %1214 = load i64, i64* %RBP.i111
  %1215 = sub i64 %1214, 28
  %1216 = load i32, i32* %EAX.i110
  %1217 = zext i32 %1216 to i64
  %1218 = load i64, i64* %PC.i109
  %1219 = add i64 %1218, 3
  store i64 %1219, i64* %PC.i109
  %1220 = inttoptr i64 %1215 to i32*
  store i32 %1216, i32* %1220
  store %struct.Memory* %loadMem_402ca0, %struct.Memory** %MEMORY
  %loadMem_402ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 33
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %1223 to i64*
  %1224 = load i64, i64* %PC.i108
  %1225 = add i64 %1224, -120
  %1226 = load i64, i64* %PC.i108
  %1227 = add i64 %1226, 5
  store i64 %1227, i64* %PC.i108
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1225, i64* %1228, align 8
  store %struct.Memory* %loadMem_402ca3, %struct.Memory** %MEMORY
  br label %block_.L_402c2b

block_.L_402ca8:                                  ; preds = %block_.L_402c2b
  %loadMem_402ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 33
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %1231 to i64*
  %1232 = load i64, i64* %PC.i107
  %1233 = add i64 %1232, 177
  %1234 = load i64, i64* %PC.i107
  %1235 = add i64 %1234, 5
  store i64 %1235, i64* %PC.i107
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1233, i64* %1236, align 8
  store %struct.Memory* %loadMem_402ca8, %struct.Memory** %MEMORY
  br label %block_.L_402d59

block_.L_402cad:                                  ; preds = %block_.L_402bea
  %loadMem_402cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 33
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 15
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %RBP.i106
  %1244 = sub i64 %1243, 36
  %1245 = load i64, i64* %PC.i105
  %1246 = add i64 %1245, 7
  store i64 %1246, i64* %PC.i105
  %1247 = inttoptr i64 %1244 to i32*
  store i32 0, i32* %1247
  store %struct.Memory* %loadMem_402cad, %struct.Memory** %MEMORY
  %loadMem_402cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 33
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %1250 to i64*
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 1
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %1253 to i64*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 15
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %1256 to i64*
  %1257 = load i64, i64* %RBP.i104
  %1258 = sub i64 %1257, 16
  %1259 = load i64, i64* %PC.i102
  %1260 = add i64 %1259, 4
  store i64 %1260, i64* %PC.i102
  %1261 = inttoptr i64 %1258 to i64*
  %1262 = load i64, i64* %1261
  store i64 %1262, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_402cb4, %struct.Memory** %MEMORY
  %loadMem_402cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 33
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 1
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1270 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1269, i64 0, i64 0
  %YMM0.i101 = bitcast %union.VectorReg* %1270 to %"class.std::bitset"*
  %1271 = bitcast %"class.std::bitset"* %YMM0.i101 to i8*
  %1272 = load i64, i64* %RAX.i100
  %1273 = load i64, i64* %PC.i99
  %1274 = add i64 %1273, 4
  store i64 %1274, i64* %PC.i99
  %1275 = inttoptr i64 %1272 to float*
  %1276 = load float, float* %1275
  %1277 = bitcast i8* %1271 to float*
  store float %1276, float* %1277, align 1
  %1278 = getelementptr inbounds i8, i8* %1271, i64 4
  %1279 = bitcast i8* %1278 to float*
  store float 0.000000e+00, float* %1279, align 1
  %1280 = getelementptr inbounds i8, i8* %1271, i64 8
  %1281 = bitcast i8* %1280 to float*
  store float 0.000000e+00, float* %1281, align 1
  %1282 = getelementptr inbounds i8, i8* %1271, i64 12
  %1283 = bitcast i8* %1282 to float*
  store float 0.000000e+00, float* %1283, align 1
  store %struct.Memory* %loadMem_402cb8, %struct.Memory** %MEMORY
  %loadMem_402cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 33
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1288 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1287, i64 0, i64 0
  %YMM0.i97 = bitcast %union.VectorReg* %1288 to %"class.std::bitset"*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1289, i64 0, i64 0
  %XMM0.i98 = bitcast %union.VectorReg* %1290 to %union.vec128_t*
  %1291 = bitcast %"class.std::bitset"* %YMM0.i97 to i8*
  %1292 = bitcast %union.vec128_t* %XMM0.i98 to i8*
  %1293 = load i64, i64* %PC.i96
  %1294 = add i64 %1293, 4
  store i64 %1294, i64* %PC.i96
  %1295 = bitcast i8* %1292 to <2 x float>*
  %1296 = load <2 x float>, <2 x float>* %1295, align 1
  %1297 = extractelement <2 x float> %1296, i32 0
  %1298 = fpext float %1297 to double
  %1299 = bitcast i8* %1291 to double*
  store double %1298, double* %1299, align 1
  store %struct.Memory* %loadMem_402cbc, %struct.Memory** %MEMORY
  %loadMem_402cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 33
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %1302 to i64*
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1304 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1303, i64 0, i64 1
  %YMM1.i95 = bitcast %union.VectorReg* %1304 to %"class.std::bitset"*
  %1305 = bitcast %"class.std::bitset"* %YMM1.i95 to i8*
  %1306 = load i64, i64* %PC.i94
  %1307 = load i64, i64* %PC.i94
  %1308 = add i64 %1307, 7
  store i64 %1308, i64* %PC.i94
  %1309 = load float, float* bitcast (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to float*)
  %1310 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64), i64 4) to float*)
  %1311 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64), i64 8) to float*)
  %1312 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64), i64 12) to float*)
  %1313 = bitcast i8* %1305 to float*
  store float %1309, float* %1313, align 1
  %1314 = getelementptr inbounds i8, i8* %1305, i64 4
  %1315 = bitcast i8* %1314 to float*
  store float %1310, float* %1315, align 1
  %1316 = getelementptr inbounds i8, i8* %1305, i64 8
  %1317 = bitcast i8* %1316 to float*
  store float %1311, float* %1317, align 1
  %1318 = getelementptr inbounds i8, i8* %1305, i64 12
  %1319 = bitcast i8* %1318 to float*
  store float %1312, float* %1319, align 1
  store %struct.Memory* %loadMem_402cc0, %struct.Memory** %MEMORY
  %loadMem_402cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 33
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %1322 to i64*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1324 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1323, i64 0, i64 0
  %YMM0.i92 = bitcast %union.VectorReg* %1324 to %"class.std::bitset"*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1326 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1325, i64 0, i64 1
  %XMM1.i93 = bitcast %union.VectorReg* %1326 to %union.vec128_t*
  %1327 = bitcast %"class.std::bitset"* %YMM0.i92 to i8*
  %1328 = bitcast %"class.std::bitset"* %YMM0.i92 to i8*
  %1329 = bitcast %union.vec128_t* %XMM1.i93 to i8*
  %1330 = load i64, i64* %PC.i91
  %1331 = add i64 %1330, 4
  store i64 %1331, i64* %PC.i91
  %1332 = bitcast i8* %1328 to i64*
  %1333 = load i64, i64* %1332, align 1
  %1334 = getelementptr inbounds i8, i8* %1328, i64 8
  %1335 = bitcast i8* %1334 to i64*
  %1336 = load i64, i64* %1335, align 1
  %1337 = bitcast i8* %1329 to i64*
  %1338 = load i64, i64* %1337, align 1
  %1339 = getelementptr inbounds i8, i8* %1329, i64 8
  %1340 = bitcast i8* %1339 to i64*
  %1341 = load i64, i64* %1340, align 1
  %1342 = and i64 %1338, %1333
  %1343 = and i64 %1341, %1336
  %1344 = trunc i64 %1342 to i32
  %1345 = lshr i64 %1342, 32
  %1346 = trunc i64 %1345 to i32
  %1347 = bitcast i8* %1327 to i32*
  store i32 %1344, i32* %1347, align 1
  %1348 = getelementptr inbounds i8, i8* %1327, i64 4
  %1349 = bitcast i8* %1348 to i32*
  store i32 %1346, i32* %1349, align 1
  %1350 = trunc i64 %1343 to i32
  %1351 = getelementptr inbounds i8, i8* %1327, i64 8
  %1352 = bitcast i8* %1351 to i32*
  store i32 %1350, i32* %1352, align 1
  %1353 = lshr i64 %1343, 32
  %1354 = trunc i64 %1353 to i32
  %1355 = getelementptr inbounds i8, i8* %1327, i64 12
  %1356 = bitcast i8* %1355 to i32*
  store i32 %1354, i32* %1356, align 1
  store %struct.Memory* %loadMem_402cc7, %struct.Memory** %MEMORY
  %loadMem_402ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1361 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1360, i64 0, i64 0
  %YMM0.i89 = bitcast %union.VectorReg* %1361 to %"class.std::bitset"*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1363 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1362, i64 0, i64 0
  %XMM0.i90 = bitcast %union.VectorReg* %1363 to %union.vec128_t*
  %1364 = bitcast %"class.std::bitset"* %YMM0.i89 to i8*
  %1365 = bitcast %union.vec128_t* %XMM0.i90 to i8*
  %1366 = load i64, i64* %PC.i88
  %1367 = add i64 %1366, 4
  store i64 %1367, i64* %PC.i88
  %1368 = bitcast i8* %1364 to <2 x i32>*
  %1369 = load <2 x i32>, <2 x i32>* %1368, align 1
  %1370 = getelementptr inbounds i8, i8* %1364, i64 8
  %1371 = bitcast i8* %1370 to <2 x i32>*
  %1372 = load <2 x i32>, <2 x i32>* %1371, align 1
  %1373 = bitcast i8* %1365 to double*
  %1374 = load double, double* %1373, align 1
  %1375 = fptrunc double %1374 to float
  %1376 = bitcast i8* %1364 to float*
  store float %1375, float* %1376, align 1
  %1377 = extractelement <2 x i32> %1369, i32 1
  %1378 = getelementptr inbounds i8, i8* %1364, i64 4
  %1379 = bitcast i8* %1378 to i32*
  store i32 %1377, i32* %1379, align 1
  %1380 = extractelement <2 x i32> %1372, i32 0
  %1381 = bitcast i8* %1370 to i32*
  store i32 %1380, i32* %1381, align 1
  %1382 = extractelement <2 x i32> %1372, i32 1
  %1383 = getelementptr inbounds i8, i8* %1364, i64 12
  %1384 = bitcast i8* %1383 to i32*
  store i32 %1382, i32* %1384, align 1
  store %struct.Memory* %loadMem_402ccb, %struct.Memory** %MEMORY
  %loadMem_402ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 33
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %1387 to i64*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 15
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %1390 to i64*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1392 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1391, i64 0, i64 0
  %XMM0.i87 = bitcast %union.VectorReg* %1392 to %union.vec128_t*
  %1393 = load i64, i64* %RBP.i86
  %1394 = sub i64 %1393, 24
  %1395 = bitcast %union.vec128_t* %XMM0.i87 to i8*
  %1396 = load i64, i64* %PC.i85
  %1397 = add i64 %1396, 5
  store i64 %1397, i64* %PC.i85
  %1398 = bitcast i8* %1395 to <2 x float>*
  %1399 = load <2 x float>, <2 x float>* %1398, align 1
  %1400 = extractelement <2 x float> %1399, i32 0
  %1401 = inttoptr i64 %1394 to float*
  store float %1400, float* %1401
  store %struct.Memory* %loadMem_402ccf, %struct.Memory** %MEMORY
  %loadMem_402cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 15
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %1407 to i64*
  %1408 = load i64, i64* %RBP.i84
  %1409 = sub i64 %1408, 28
  %1410 = load i64, i64* %PC.i83
  %1411 = add i64 %1410, 7
  store i64 %1411, i64* %PC.i83
  %1412 = inttoptr i64 %1409 to i32*
  store i32 1, i32* %1412
  store %struct.Memory* %loadMem_402cd4, %struct.Memory** %MEMORY
  br label %block_.L_402cdb

block_.L_402cdb:                                  ; preds = %block_.L_402d46, %block_.L_402cad
  %loadMem_402cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 33
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %1415 to i64*
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 1
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 15
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %RBP.i82
  %1423 = sub i64 %1422, 28
  %1424 = load i64, i64* %PC.i80
  %1425 = add i64 %1424, 3
  store i64 %1425, i64* %PC.i80
  %1426 = inttoptr i64 %1423 to i32*
  %1427 = load i32, i32* %1426
  %1428 = zext i32 %1427 to i64
  store i64 %1428, i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_402cdb, %struct.Memory** %MEMORY
  %loadMem_402cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 1
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %EAX.i78 = bitcast %union.anon* %1434 to i32*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 15
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %1437 to i64*
  %1438 = load i32, i32* %EAX.i78
  %1439 = zext i32 %1438 to i64
  %1440 = load i64, i64* %RBP.i79
  %1441 = sub i64 %1440, 8
  %1442 = load i64, i64* %PC.i77
  %1443 = add i64 %1442, 3
  store i64 %1443, i64* %PC.i77
  %1444 = inttoptr i64 %1441 to i32*
  %1445 = load i32, i32* %1444
  %1446 = sub i32 %1438, %1445
  %1447 = icmp ult i32 %1438, %1445
  %1448 = zext i1 %1447 to i8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1448, i8* %1449, align 1
  %1450 = and i32 %1446, 255
  %1451 = call i32 @llvm.ctpop.i32(i32 %1450)
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = xor i8 %1453, 1
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1454, i8* %1455, align 1
  %1456 = xor i32 %1445, %1438
  %1457 = xor i32 %1456, %1446
  %1458 = lshr i32 %1457, 4
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1460, i8* %1461, align 1
  %1462 = icmp eq i32 %1446, 0
  %1463 = zext i1 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1463, i8* %1464, align 1
  %1465 = lshr i32 %1446, 31
  %1466 = trunc i32 %1465 to i8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1466, i8* %1467, align 1
  %1468 = lshr i32 %1438, 31
  %1469 = lshr i32 %1445, 31
  %1470 = xor i32 %1469, %1468
  %1471 = xor i32 %1465, %1468
  %1472 = add i32 %1471, %1470
  %1473 = icmp eq i32 %1472, 2
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1474, i8* %1475, align 1
  store %struct.Memory* %loadMem_402cde, %struct.Memory** %MEMORY
  %loadMem_402ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %1478 to i64*
  %1479 = load i64, i64* %PC.i76
  %1480 = add i64 %1479, 115
  %1481 = load i64, i64* %PC.i76
  %1482 = add i64 %1481, 6
  %1483 = load i64, i64* %PC.i76
  %1484 = add i64 %1483, 6
  store i64 %1484, i64* %PC.i76
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1486 = load i8, i8* %1485, align 1
  %1487 = icmp ne i8 %1486, 0
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1489 = load i8, i8* %1488, align 1
  %1490 = icmp ne i8 %1489, 0
  %1491 = xor i1 %1487, %1490
  %1492 = xor i1 %1491, true
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %BRANCH_TAKEN, align 1
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1495 = select i1 %1491, i64 %1482, i64 %1480
  store i64 %1495, i64* %1494, align 8
  store %struct.Memory* %loadMem_402ce1, %struct.Memory** %MEMORY
  %loadBr_402ce1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402ce1 = icmp eq i8 %loadBr_402ce1, 1
  br i1 %cmpBr_402ce1, label %block_.L_402d54, label %block_402ce7

block_402ce7:                                     ; preds = %block_.L_402cdb
  %loadMem_402ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 33
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 1
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 15
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %1504 to i64*
  %1505 = load i64, i64* %RBP.i75
  %1506 = sub i64 %1505, 16
  %1507 = load i64, i64* %PC.i73
  %1508 = add i64 %1507, 4
  store i64 %1508, i64* %PC.i73
  %1509 = inttoptr i64 %1506 to i64*
  %1510 = load i64, i64* %1509
  store i64 %1510, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_402ce7, %struct.Memory** %MEMORY
  %loadMem_402ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 5
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 15
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RBP.i72
  %1521 = sub i64 %1520, 28
  %1522 = load i64, i64* %PC.i70
  %1523 = add i64 %1522, 4
  store i64 %1523, i64* %PC.i70
  %1524 = inttoptr i64 %1521 to i32*
  %1525 = load i32, i32* %1524
  %1526 = sext i32 %1525 to i64
  store i64 %1526, i64* %RCX.i71, align 8
  store %struct.Memory* %loadMem_402ceb, %struct.Memory** %MEMORY
  %loadMem_402cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 1
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 5
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %1535 to i64*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1537 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1536, i64 0, i64 0
  %YMM0.i69 = bitcast %union.VectorReg* %1537 to %"class.std::bitset"*
  %1538 = bitcast %"class.std::bitset"* %YMM0.i69 to i8*
  %1539 = load i64, i64* %RAX.i67
  %1540 = load i64, i64* %RCX.i68
  %1541 = mul i64 %1540, 4
  %1542 = add i64 %1541, %1539
  %1543 = load i64, i64* %PC.i66
  %1544 = add i64 %1543, 5
  store i64 %1544, i64* %PC.i66
  %1545 = inttoptr i64 %1542 to float*
  %1546 = load float, float* %1545
  %1547 = bitcast i8* %1538 to float*
  store float %1546, float* %1547, align 1
  %1548 = getelementptr inbounds i8, i8* %1538, i64 4
  %1549 = bitcast i8* %1548 to float*
  store float 0.000000e+00, float* %1549, align 1
  %1550 = getelementptr inbounds i8, i8* %1538, i64 8
  %1551 = bitcast i8* %1550 to float*
  store float 0.000000e+00, float* %1551, align 1
  %1552 = getelementptr inbounds i8, i8* %1538, i64 12
  %1553 = bitcast i8* %1552 to float*
  store float 0.000000e+00, float* %1553, align 1
  store %struct.Memory* %loadMem_402cef, %struct.Memory** %MEMORY
  %loadMem_402cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 33
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %1556 to i64*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1558 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1557, i64 0, i64 0
  %YMM0.i64 = bitcast %union.VectorReg* %1558 to %"class.std::bitset"*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1560 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1559, i64 0, i64 0
  %XMM0.i65 = bitcast %union.VectorReg* %1560 to %union.vec128_t*
  %1561 = bitcast %"class.std::bitset"* %YMM0.i64 to i8*
  %1562 = bitcast %union.vec128_t* %XMM0.i65 to i8*
  %1563 = load i64, i64* %PC.i63
  %1564 = add i64 %1563, 4
  store i64 %1564, i64* %PC.i63
  %1565 = bitcast i8* %1562 to <2 x float>*
  %1566 = load <2 x float>, <2 x float>* %1565, align 1
  %1567 = extractelement <2 x float> %1566, i32 0
  %1568 = fpext float %1567 to double
  %1569 = bitcast i8* %1561 to double*
  store double %1568, double* %1569, align 1
  store %struct.Memory* %loadMem_402cf4, %struct.Memory** %MEMORY
  %loadMem_402cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 33
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %1572 to i64*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1574 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1573, i64 0, i64 1
  %YMM1.i62 = bitcast %union.VectorReg* %1574 to %"class.std::bitset"*
  %1575 = bitcast %"class.std::bitset"* %YMM1.i62 to i8*
  %1576 = load i64, i64* %PC.i61
  %1577 = load i64, i64* %PC.i61
  %1578 = add i64 %1577, 7
  store i64 %1578, i64* %PC.i61
  %1579 = load float, float* bitcast (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to float*)
  %1580 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64), i64 4) to float*)
  %1581 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64), i64 8) to float*)
  %1582 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64), i64 12) to float*)
  %1583 = bitcast i8* %1575 to float*
  store float %1579, float* %1583, align 1
  %1584 = getelementptr inbounds i8, i8* %1575, i64 4
  %1585 = bitcast i8* %1584 to float*
  store float %1580, float* %1585, align 1
  %1586 = getelementptr inbounds i8, i8* %1575, i64 8
  %1587 = bitcast i8* %1586 to float*
  store float %1581, float* %1587, align 1
  %1588 = getelementptr inbounds i8, i8* %1575, i64 12
  %1589 = bitcast i8* %1588 to float*
  store float %1582, float* %1589, align 1
  store %struct.Memory* %loadMem_402cf8, %struct.Memory** %MEMORY
  %loadMem_402cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1594 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1593, i64 0, i64 0
  %YMM0.i59 = bitcast %union.VectorReg* %1594 to %"class.std::bitset"*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1596 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1595, i64 0, i64 1
  %XMM1.i60 = bitcast %union.VectorReg* %1596 to %union.vec128_t*
  %1597 = bitcast %"class.std::bitset"* %YMM0.i59 to i8*
  %1598 = bitcast %"class.std::bitset"* %YMM0.i59 to i8*
  %1599 = bitcast %union.vec128_t* %XMM1.i60 to i8*
  %1600 = load i64, i64* %PC.i58
  %1601 = add i64 %1600, 4
  store i64 %1601, i64* %PC.i58
  %1602 = bitcast i8* %1598 to i64*
  %1603 = load i64, i64* %1602, align 1
  %1604 = getelementptr inbounds i8, i8* %1598, i64 8
  %1605 = bitcast i8* %1604 to i64*
  %1606 = load i64, i64* %1605, align 1
  %1607 = bitcast i8* %1599 to i64*
  %1608 = load i64, i64* %1607, align 1
  %1609 = getelementptr inbounds i8, i8* %1599, i64 8
  %1610 = bitcast i8* %1609 to i64*
  %1611 = load i64, i64* %1610, align 1
  %1612 = and i64 %1608, %1603
  %1613 = and i64 %1611, %1606
  %1614 = trunc i64 %1612 to i32
  %1615 = lshr i64 %1612, 32
  %1616 = trunc i64 %1615 to i32
  %1617 = bitcast i8* %1597 to i32*
  store i32 %1614, i32* %1617, align 1
  %1618 = getelementptr inbounds i8, i8* %1597, i64 4
  %1619 = bitcast i8* %1618 to i32*
  store i32 %1616, i32* %1619, align 1
  %1620 = trunc i64 %1613 to i32
  %1621 = getelementptr inbounds i8, i8* %1597, i64 8
  %1622 = bitcast i8* %1621 to i32*
  store i32 %1620, i32* %1622, align 1
  %1623 = lshr i64 %1613, 32
  %1624 = trunc i64 %1623 to i32
  %1625 = getelementptr inbounds i8, i8* %1597, i64 12
  %1626 = bitcast i8* %1625 to i32*
  store i32 %1624, i32* %1626, align 1
  store %struct.Memory* %loadMem_402cff, %struct.Memory** %MEMORY
  %loadMem_402d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 33
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 15
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1633, i64 0, i64 1
  %YMM1.i57 = bitcast %union.VectorReg* %1634 to %"class.std::bitset"*
  %1635 = bitcast %"class.std::bitset"* %YMM1.i57 to i8*
  %1636 = load i64, i64* %RBP.i56
  %1637 = sub i64 %1636, 24
  %1638 = load i64, i64* %PC.i55
  %1639 = add i64 %1638, 5
  store i64 %1639, i64* %PC.i55
  %1640 = inttoptr i64 %1637 to float*
  %1641 = load float, float* %1640
  %1642 = bitcast i8* %1635 to float*
  store float %1641, float* %1642, align 1
  %1643 = getelementptr inbounds i8, i8* %1635, i64 4
  %1644 = bitcast i8* %1643 to float*
  store float 0.000000e+00, float* %1644, align 1
  %1645 = getelementptr inbounds i8, i8* %1635, i64 8
  %1646 = bitcast i8* %1645 to float*
  store float 0.000000e+00, float* %1646, align 1
  %1647 = getelementptr inbounds i8, i8* %1635, i64 12
  %1648 = bitcast i8* %1647 to float*
  store float 0.000000e+00, float* %1648, align 1
  store %struct.Memory* %loadMem_402d03, %struct.Memory** %MEMORY
  %loadMem_402d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 33
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1653 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1652, i64 0, i64 1
  %YMM1.i53 = bitcast %union.VectorReg* %1653 to %"class.std::bitset"*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1655 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1654, i64 0, i64 1
  %XMM1.i54 = bitcast %union.VectorReg* %1655 to %union.vec128_t*
  %1656 = bitcast %"class.std::bitset"* %YMM1.i53 to i8*
  %1657 = bitcast %union.vec128_t* %XMM1.i54 to i8*
  %1658 = load i64, i64* %PC.i52
  %1659 = add i64 %1658, 4
  store i64 %1659, i64* %PC.i52
  %1660 = bitcast i8* %1657 to <2 x float>*
  %1661 = load <2 x float>, <2 x float>* %1660, align 1
  %1662 = extractelement <2 x float> %1661, i32 0
  %1663 = fpext float %1662 to double
  %1664 = bitcast i8* %1656 to double*
  store double %1663, double* %1664, align 1
  store %struct.Memory* %loadMem_402d08, %struct.Memory** %MEMORY
  %loadMem_402d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1669 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1668, i64 0, i64 0
  %XMM0.i48 = bitcast %union.VectorReg* %1669 to %union.vec128_t*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1671 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1670, i64 0, i64 1
  %XMM1.i49 = bitcast %union.VectorReg* %1671 to %union.vec128_t*
  %1672 = bitcast %union.vec128_t* %XMM0.i48 to i8*
  %1673 = bitcast %union.vec128_t* %XMM1.i49 to i8*
  %1674 = load i64, i64* %PC.i47
  %1675 = add i64 %1674, 4
  store i64 %1675, i64* %PC.i47
  %1676 = bitcast i8* %1672 to double*
  %1677 = load double, double* %1676, align 1
  %1678 = bitcast i8* %1673 to double*
  %1679 = load double, double* %1678, align 1
  %1680 = fcmp uno double %1677, %1679
  br i1 %1680, label %1681, label %1693

; <label>:1681:                                   ; preds = %block_402ce7
  %1682 = fadd double %1677, %1679
  %1683 = bitcast double %1682 to i64
  %1684 = and i64 %1683, 9221120237041090560
  %1685 = icmp eq i64 %1684, 9218868437227405312
  %1686 = and i64 %1683, 2251799813685247
  %1687 = icmp ne i64 %1686, 0
  %1688 = and i1 %1685, %1687
  br i1 %1688, label %1689, label %1699

; <label>:1689:                                   ; preds = %1681
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1691 = load i64, i64* %1690, align 8
  %1692 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1691, %struct.Memory* %loadMem_402d0c)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:1693:                                   ; preds = %block_402ce7
  %1694 = fcmp ogt double %1677, %1679
  br i1 %1694, label %1699, label %1695

; <label>:1695:                                   ; preds = %1693
  %1696 = fcmp olt double %1677, %1679
  br i1 %1696, label %1699, label %1697

; <label>:1697:                                   ; preds = %1695
  %1698 = fcmp oeq double %1677, %1679
  br i1 %1698, label %1699, label %1706

; <label>:1699:                                   ; preds = %1697, %1695, %1693, %1681
  %1700 = phi i8 [ 0, %1693 ], [ 0, %1695 ], [ 1, %1697 ], [ 1, %1681 ]
  %1701 = phi i8 [ 0, %1693 ], [ 0, %1695 ], [ 0, %1697 ], [ 1, %1681 ]
  %1702 = phi i8 [ 0, %1693 ], [ 1, %1695 ], [ 0, %1697 ], [ 1, %1681 ]
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1700, i8* %1703, align 1
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1701, i8* %1704, align 1
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1702, i8* %1705, align 1
  br label %1706

; <label>:1706:                                   ; preds = %1699, %1697
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1707, align 1
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1708, align 1
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1709, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %1689, %1706
  %1710 = phi %struct.Memory* [ %1692, %1689 ], [ %loadMem_402d0c, %1706 ]
  store %struct.Memory* %1710, %struct.Memory** %MEMORY
  %loadMem_402d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 33
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %1713 to i64*
  %1714 = load i64, i64* %PC.i46
  %1715 = add i64 %1714, 49
  %1716 = load i64, i64* %PC.i46
  %1717 = add i64 %1716, 6
  %1718 = load i64, i64* %PC.i46
  %1719 = add i64 %1718, 6
  store i64 %1719, i64* %PC.i46
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1721 = load i8, i8* %1720, align 1
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1723 = load i8, i8* %1722, align 1
  %1724 = or i8 %1723, %1721
  %1725 = icmp ne i8 %1724, 0
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %BRANCH_TAKEN, align 1
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1728 = select i1 %1725, i64 %1715, i64 %1717
  store i64 %1728, i64* %1727, align 8
  store %struct.Memory* %loadMem_402d10, %struct.Memory** %MEMORY
  %loadBr_402d10 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402d10 = icmp eq i8 %loadBr_402d10, 1
  br i1 %cmpBr_402d10, label %block_.L_402d41, label %block_402d16

block_402d16:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_402d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 1
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %1734 to i64*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 15
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %1737 to i64*
  %1738 = load i64, i64* %RBP.i45
  %1739 = sub i64 %1738, 28
  %1740 = load i64, i64* %PC.i43
  %1741 = add i64 %1740, 3
  store i64 %1741, i64* %PC.i43
  %1742 = inttoptr i64 %1739 to i32*
  %1743 = load i32, i32* %1742
  %1744 = zext i32 %1743 to i64
  store i64 %1744, i64* %RAX.i44, align 8
  store %struct.Memory* %loadMem_402d16, %struct.Memory** %MEMORY
  %loadMem_402d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 33
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 1
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %EAX.i41 = bitcast %union.anon* %1750 to i32*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 15
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %1753 to i64*
  %1754 = load i64, i64* %RBP.i42
  %1755 = sub i64 %1754, 36
  %1756 = load i32, i32* %EAX.i41
  %1757 = zext i32 %1756 to i64
  %1758 = load i64, i64* %PC.i40
  %1759 = add i64 %1758, 3
  store i64 %1759, i64* %PC.i40
  %1760 = inttoptr i64 %1755 to i32*
  store i32 %1756, i32* %1760
  store %struct.Memory* %loadMem_402d19, %struct.Memory** %MEMORY
  %loadMem_402d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 33
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %1763 to i64*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 5
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 15
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %1769 to i64*
  %1770 = load i64, i64* %RBP.i39
  %1771 = sub i64 %1770, 16
  %1772 = load i64, i64* %PC.i37
  %1773 = add i64 %1772, 4
  store i64 %1773, i64* %PC.i37
  %1774 = inttoptr i64 %1771 to i64*
  %1775 = load i64, i64* %1774
  store i64 %1775, i64* %RCX.i38, align 8
  store %struct.Memory* %loadMem_402d1c, %struct.Memory** %MEMORY
  %loadMem_402d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 33
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 7
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RDX.i35 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 15
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %1784 to i64*
  %1785 = load i64, i64* %RBP.i36
  %1786 = sub i64 %1785, 28
  %1787 = load i64, i64* %PC.i34
  %1788 = add i64 %1787, 4
  store i64 %1788, i64* %PC.i34
  %1789 = inttoptr i64 %1786 to i32*
  %1790 = load i32, i32* %1789
  %1791 = sext i32 %1790 to i64
  store i64 %1791, i64* %RDX.i35, align 8
  store %struct.Memory* %loadMem_402d20, %struct.Memory** %MEMORY
  %loadMem_402d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 33
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 5
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 7
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1802 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1801, i64 0, i64 0
  %YMM0.i33 = bitcast %union.VectorReg* %1802 to %"class.std::bitset"*
  %1803 = bitcast %"class.std::bitset"* %YMM0.i33 to i8*
  %1804 = load i64, i64* %RCX.i
  %1805 = load i64, i64* %RDX.i
  %1806 = mul i64 %1805, 4
  %1807 = add i64 %1806, %1804
  %1808 = load i64, i64* %PC.i32
  %1809 = add i64 %1808, 5
  store i64 %1809, i64* %PC.i32
  %1810 = inttoptr i64 %1807 to float*
  %1811 = load float, float* %1810
  %1812 = bitcast i8* %1803 to float*
  store float %1811, float* %1812, align 1
  %1813 = getelementptr inbounds i8, i8* %1803, i64 4
  %1814 = bitcast i8* %1813 to float*
  store float 0.000000e+00, float* %1814, align 1
  %1815 = getelementptr inbounds i8, i8* %1803, i64 8
  %1816 = bitcast i8* %1815 to float*
  store float 0.000000e+00, float* %1816, align 1
  %1817 = getelementptr inbounds i8, i8* %1803, i64 12
  %1818 = bitcast i8* %1817 to float*
  store float 0.000000e+00, float* %1818, align 1
  store %struct.Memory* %loadMem_402d24, %struct.Memory** %MEMORY
  %loadMem_402d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 33
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1823 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1822, i64 0, i64 0
  %YMM0.i30 = bitcast %union.VectorReg* %1823 to %"class.std::bitset"*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1825 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1824, i64 0, i64 0
  %XMM0.i31 = bitcast %union.VectorReg* %1825 to %union.vec128_t*
  %1826 = bitcast %"class.std::bitset"* %YMM0.i30 to i8*
  %1827 = bitcast %union.vec128_t* %XMM0.i31 to i8*
  %1828 = load i64, i64* %PC.i29
  %1829 = add i64 %1828, 4
  store i64 %1829, i64* %PC.i29
  %1830 = bitcast i8* %1827 to <2 x float>*
  %1831 = load <2 x float>, <2 x float>* %1830, align 1
  %1832 = extractelement <2 x float> %1831, i32 0
  %1833 = fpext float %1832 to double
  %1834 = bitcast i8* %1826 to double*
  store double %1833, double* %1834, align 1
  store %struct.Memory* %loadMem_402d29, %struct.Memory** %MEMORY
  %loadMem_402d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1839 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1838, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1839 to %"class.std::bitset"*
  %1840 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1841 = load i64, i64* %PC.i28
  %1842 = load i64, i64* %PC.i28
  %1843 = add i64 %1842, 7
  store i64 %1843, i64* %PC.i28
  %1844 = load float, float* bitcast (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to float*)
  %1845 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64), i64 4) to float*)
  %1846 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64), i64 8) to float*)
  %1847 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64), i64 12) to float*)
  %1848 = bitcast i8* %1840 to float*
  store float %1844, float* %1848, align 1
  %1849 = getelementptr inbounds i8, i8* %1840, i64 4
  %1850 = bitcast i8* %1849 to float*
  store float %1845, float* %1850, align 1
  %1851 = getelementptr inbounds i8, i8* %1840, i64 8
  %1852 = bitcast i8* %1851 to float*
  store float %1846, float* %1852, align 1
  %1853 = getelementptr inbounds i8, i8* %1840, i64 12
  %1854 = bitcast i8* %1853 to float*
  store float %1847, float* %1854, align 1
  store %struct.Memory* %loadMem_402d2d, %struct.Memory** %MEMORY
  %loadMem_402d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 33
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1859 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1858, i64 0, i64 0
  %YMM0.i27 = bitcast %union.VectorReg* %1859 to %"class.std::bitset"*
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1861 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1860, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1861 to %union.vec128_t*
  %1862 = bitcast %"class.std::bitset"* %YMM0.i27 to i8*
  %1863 = bitcast %"class.std::bitset"* %YMM0.i27 to i8*
  %1864 = bitcast %union.vec128_t* %XMM1.i to i8*
  %1865 = load i64, i64* %PC.i26
  %1866 = add i64 %1865, 4
  store i64 %1866, i64* %PC.i26
  %1867 = bitcast i8* %1863 to i64*
  %1868 = load i64, i64* %1867, align 1
  %1869 = getelementptr inbounds i8, i8* %1863, i64 8
  %1870 = bitcast i8* %1869 to i64*
  %1871 = load i64, i64* %1870, align 1
  %1872 = bitcast i8* %1864 to i64*
  %1873 = load i64, i64* %1872, align 1
  %1874 = getelementptr inbounds i8, i8* %1864, i64 8
  %1875 = bitcast i8* %1874 to i64*
  %1876 = load i64, i64* %1875, align 1
  %1877 = and i64 %1873, %1868
  %1878 = and i64 %1876, %1871
  %1879 = trunc i64 %1877 to i32
  %1880 = lshr i64 %1877, 32
  %1881 = trunc i64 %1880 to i32
  %1882 = bitcast i8* %1862 to i32*
  store i32 %1879, i32* %1882, align 1
  %1883 = getelementptr inbounds i8, i8* %1862, i64 4
  %1884 = bitcast i8* %1883 to i32*
  store i32 %1881, i32* %1884, align 1
  %1885 = trunc i64 %1878 to i32
  %1886 = getelementptr inbounds i8, i8* %1862, i64 8
  %1887 = bitcast i8* %1886 to i32*
  store i32 %1885, i32* %1887, align 1
  %1888 = lshr i64 %1878, 32
  %1889 = trunc i64 %1888 to i32
  %1890 = getelementptr inbounds i8, i8* %1862, i64 12
  %1891 = bitcast i8* %1890 to i32*
  store i32 %1889, i32* %1891, align 1
  store %struct.Memory* %loadMem_402d34, %struct.Memory** %MEMORY
  %loadMem_402d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1896 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1895, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %1896 to %"class.std::bitset"*
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1898 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1897, i64 0, i64 0
  %XMM0.i25 = bitcast %union.VectorReg* %1898 to %union.vec128_t*
  %1899 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %1900 = bitcast %union.vec128_t* %XMM0.i25 to i8*
  %1901 = load i64, i64* %PC.i24
  %1902 = add i64 %1901, 4
  store i64 %1902, i64* %PC.i24
  %1903 = bitcast i8* %1899 to <2 x i32>*
  %1904 = load <2 x i32>, <2 x i32>* %1903, align 1
  %1905 = getelementptr inbounds i8, i8* %1899, i64 8
  %1906 = bitcast i8* %1905 to <2 x i32>*
  %1907 = load <2 x i32>, <2 x i32>* %1906, align 1
  %1908 = bitcast i8* %1900 to double*
  %1909 = load double, double* %1908, align 1
  %1910 = fptrunc double %1909 to float
  %1911 = bitcast i8* %1899 to float*
  store float %1910, float* %1911, align 1
  %1912 = extractelement <2 x i32> %1904, i32 1
  %1913 = getelementptr inbounds i8, i8* %1899, i64 4
  %1914 = bitcast i8* %1913 to i32*
  store i32 %1912, i32* %1914, align 1
  %1915 = extractelement <2 x i32> %1907, i32 0
  %1916 = bitcast i8* %1905 to i32*
  store i32 %1915, i32* %1916, align 1
  %1917 = extractelement <2 x i32> %1907, i32 1
  %1918 = getelementptr inbounds i8, i8* %1899, i64 12
  %1919 = bitcast i8* %1918 to i32*
  store i32 %1917, i32* %1919, align 1
  store %struct.Memory* %loadMem_402d38, %struct.Memory** %MEMORY
  %loadMem_402d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 33
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 15
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1927 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1926, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %1927 to %union.vec128_t*
  %1928 = load i64, i64* %RBP.i23
  %1929 = sub i64 %1928, 24
  %1930 = bitcast %union.vec128_t* %XMM0.i to i8*
  %1931 = load i64, i64* %PC.i22
  %1932 = add i64 %1931, 5
  store i64 %1932, i64* %PC.i22
  %1933 = bitcast i8* %1930 to <2 x float>*
  %1934 = load <2 x float>, <2 x float>* %1933, align 1
  %1935 = extractelement <2 x float> %1934, i32 0
  %1936 = inttoptr i64 %1929 to float*
  store float %1935, float* %1936
  store %struct.Memory* %loadMem_402d3c, %struct.Memory** %MEMORY
  br label %block_.L_402d41

block_.L_402d41:                                  ; preds = %block_402d16, %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_402d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 33
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %PC.i21
  %1941 = add i64 %1940, 5
  %1942 = load i64, i64* %PC.i21
  %1943 = add i64 %1942, 5
  store i64 %1943, i64* %PC.i21
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1941, i64* %1944, align 8
  store %struct.Memory* %loadMem_402d41, %struct.Memory** %MEMORY
  br label %block_.L_402d46

block_.L_402d46:                                  ; preds = %block_.L_402d41
  %loadMem_402d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 1
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %1950 to i64*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 15
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %1953 to i64*
  %1954 = load i64, i64* %RBP.i20
  %1955 = sub i64 %1954, 28
  %1956 = load i64, i64* %PC.i18
  %1957 = add i64 %1956, 3
  store i64 %1957, i64* %PC.i18
  %1958 = inttoptr i64 %1955 to i32*
  %1959 = load i32, i32* %1958
  %1960 = zext i32 %1959 to i64
  store i64 %1960, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_402d46, %struct.Memory** %MEMORY
  %loadMem_402d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 1
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %1966 to i64*
  %1967 = load i64, i64* %RAX.i17
  %1968 = load i64, i64* %PC.i16
  %1969 = add i64 %1968, 3
  store i64 %1969, i64* %PC.i16
  %1970 = trunc i64 %1967 to i32
  %1971 = add i32 1, %1970
  %1972 = zext i32 %1971 to i64
  store i64 %1972, i64* %RAX.i17, align 8
  %1973 = icmp ult i32 %1971, %1970
  %1974 = icmp ult i32 %1971, 1
  %1975 = or i1 %1973, %1974
  %1976 = zext i1 %1975 to i8
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1976, i8* %1977, align 1
  %1978 = and i32 %1971, 255
  %1979 = call i32 @llvm.ctpop.i32(i32 %1978)
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1982, i8* %1983, align 1
  %1984 = xor i64 1, %1967
  %1985 = trunc i64 %1984 to i32
  %1986 = xor i32 %1985, %1971
  %1987 = lshr i32 %1986, 4
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1989, i8* %1990, align 1
  %1991 = icmp eq i32 %1971, 0
  %1992 = zext i1 %1991 to i8
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1992, i8* %1993, align 1
  %1994 = lshr i32 %1971, 31
  %1995 = trunc i32 %1994 to i8
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1995, i8* %1996, align 1
  %1997 = lshr i32 %1970, 31
  %1998 = xor i32 %1994, %1997
  %1999 = add i32 %1998, %1994
  %2000 = icmp eq i32 %1999, 2
  %2001 = zext i1 %2000 to i8
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2001, i8* %2002, align 1
  store %struct.Memory* %loadMem_402d49, %struct.Memory** %MEMORY
  %loadMem_402d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 33
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 1
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %2008 to i32*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 15
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %2011 to i64*
  %2012 = load i64, i64* %RBP.i15
  %2013 = sub i64 %2012, 28
  %2014 = load i32, i32* %EAX.i14
  %2015 = zext i32 %2014 to i64
  %2016 = load i64, i64* %PC.i13
  %2017 = add i64 %2016, 3
  store i64 %2017, i64* %PC.i13
  %2018 = inttoptr i64 %2013 to i32*
  store i32 %2014, i32* %2018
  store %struct.Memory* %loadMem_402d4c, %struct.Memory** %MEMORY
  %loadMem_402d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 33
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2021 to i64*
  %2022 = load i64, i64* %PC.i12
  %2023 = add i64 %2022, -116
  %2024 = load i64, i64* %PC.i12
  %2025 = add i64 %2024, 5
  store i64 %2025, i64* %PC.i12
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2023, i64* %2026, align 8
  store %struct.Memory* %loadMem_402d4f, %struct.Memory** %MEMORY
  br label %block_.L_402cdb

block_.L_402d54:                                  ; preds = %block_.L_402cdb
  %loadMem_402d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 33
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %2029 to i64*
  %2030 = load i64, i64* %PC.i11
  %2031 = add i64 %2030, 5
  %2032 = load i64, i64* %PC.i11
  %2033 = add i64 %2032, 5
  store i64 %2033, i64* %PC.i11
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2031, i64* %2034, align 8
  store %struct.Memory* %loadMem_402d54, %struct.Memory** %MEMORY
  br label %block_.L_402d59

block_.L_402d59:                                  ; preds = %block_.L_402d54, %block_.L_402ca8
  %loadMem_402d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 33
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 1
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 15
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %2043 to i64*
  %2044 = load i64, i64* %RBP.i10
  %2045 = sub i64 %2044, 36
  %2046 = load i64, i64* %PC.i8
  %2047 = add i64 %2046, 3
  store i64 %2047, i64* %PC.i8
  %2048 = inttoptr i64 %2045 to i32*
  %2049 = load i32, i32* %2048
  %2050 = zext i32 %2049 to i64
  store i64 %2050, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_402d59, %struct.Memory** %MEMORY
  %loadMem_402d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %2053 to i64*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 1
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2056 to i32*
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 15
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %2059 to i64*
  %2060 = load i64, i64* %RBP.i7
  %2061 = sub i64 %2060, 4
  %2062 = load i32, i32* %EAX.i
  %2063 = zext i32 %2062 to i64
  %2064 = load i64, i64* %PC.i6
  %2065 = add i64 %2064, 3
  store i64 %2065, i64* %PC.i6
  %2066 = inttoptr i64 %2061 to i32*
  store i32 %2062, i32* %2066
  store %struct.Memory* %loadMem_402d5c, %struct.Memory** %MEMORY
  br label %block_.L_402d5f

block_.L_402d5f:                                  ; preds = %block_.L_402d59, %block_402bde, %block_402bc8
  %loadMem_402d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 33
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 1
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 15
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %RBP.i5 = bitcast %union.anon* %2075 to i64*
  %2076 = load i64, i64* %RBP.i5
  %2077 = sub i64 %2076, 4
  %2078 = load i64, i64* %PC.i4
  %2079 = add i64 %2078, 3
  store i64 %2079, i64* %PC.i4
  %2080 = inttoptr i64 %2077 to i32*
  %2081 = load i32, i32* %2080
  %2082 = zext i32 %2081 to i64
  store i64 %2082, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_402d5f, %struct.Memory** %MEMORY
  %loadMem_402d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 15
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2088 to i64*
  %2089 = load i64, i64* %PC.i2
  %2090 = add i64 %2089, 1
  store i64 %2090, i64* %PC.i2
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2092 = load i64, i64* %2091, align 8
  %2093 = add i64 %2092, 8
  %2094 = inttoptr i64 %2092 to i64*
  %2095 = load i64, i64* %2094
  store i64 %2095, i64* %RBP.i3, align 8
  store i64 %2093, i64* %2091, align 8
  store %struct.Memory* %loadMem_402d62, %struct.Memory** %MEMORY
  %loadMem_402d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 33
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2098 to i64*
  %2099 = load i64, i64* %PC.i1
  %2100 = add i64 %2099, 1
  store i64 %2100, i64* %PC.i1
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2103 = load i64, i64* %2102, align 8
  %2104 = inttoptr i64 %2103 to i64*
  %2105 = load i64, i64* %2104
  store i64 %2105, i64* %2101, align 8
  %2106 = add i64 %2103, 8
  store i64 %2106, i64* %2102, align 8
  store %struct.Memory* %loadMem_402d63, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_402d63
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 8
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
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_jge_.L_402bd4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402d5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_jne_.L_402bea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_je_.L_402cad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movss___rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to float*
  %16 = load float, float* %15
  %17 = bitcast i8* %11 to float*
  store float %16, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 4
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %11, i64 8
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 12
  %23 = bitcast i8* %22 to float*
  store float 0.000000e+00, float* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x312__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x312__rip__4205582__type* @G_0x312__rip__4205582_ to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %25 = and i64 %21, %16
  %26 = and i64 %24, %19
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

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 24
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %15 = sub i64 %14, 8
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

define %struct.Memory* @routine_jge_.L_402ca8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movaps_0x2d1__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x2d1__rip__4205647__type* @G_0x2d1__rip__4205647_ to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

; <label>:19:                                     ; preds = %block_400478
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

; <label>:31:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_jbe_.L_402c91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rcx__rdx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movaps_0x29c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x29c__rip__4205700__type* @G_0x29c__rip__4205700_ to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %14 = sub i64 %13, 20
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

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_402c2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_402d59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x259__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x259__rip__4205767__type* @G_0x259__rip__4205767_ to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_402d54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movaps_0x221__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x221__rip__4205823__type* @G_0x221__rip__4205823_ to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_402d41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
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
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x1ec__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x1ec__rip__4205876__type* @G_0x1ec__rip__4205876_ to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402d46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_402cdb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
block_400478:
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
