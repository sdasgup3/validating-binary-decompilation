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
%seg_400504__fini_type = type <{ [9 x i8] }>
%seg_400510__rodata_type = type <{ [4 x i8] }>
%seg_400514__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400548__eh_frame_type = type <{ [208 x i8] }>
%G_0x4d1__rip__4198791__type = type <{ [16 x i8] }>
%G_0x5ab__rip__4198581__type = type <{ [16 x i8] }>
%G_0x673__rip__4198381__type = type <{ [16 x i8] }>
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
@seg_400504__fini = internal constant %seg_400504__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400510__rodata = internal constant %seg_400510__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400514__eh_frame_hdr = internal constant %seg_400514__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400548__eh_frame = internal constant %seg_400548__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x4d1__rip__4198791_ = global %G_0x4d1__rip__4198791__type zeroinitializer
@G_0x5ab__rip__4198581_ = global %G_0x5ab__rip__4198581__type zeroinitializer
@G_0x673__rip__4198381_ = global %G_0x673__rip__4198381__type zeroinitializer

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
define %struct.Memory* @kernel_fdtd_2d_StrictFP(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400f50 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400f50, %struct.Memory** %MEMORY
  %loadMem_400f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i486
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i486
  store i64 %26, i64* %RBP.i487, align 8
  store %struct.Memory* %loadMem_400f51, %struct.Memory** %MEMORY
  %loadMem_400f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i485
  %39 = add i64 %38, 16
  %40 = load i64, i64* %PC.i483
  %41 = add i64 %40, 4
  store i64 %41, i64* %PC.i483
  %42 = inttoptr i64 %39 to i64*
  %43 = load i64, i64* %42
  store i64 %43, i64* %RAX.i484, align 8
  store %struct.Memory* %loadMem_400f54, %struct.Memory** %MEMORY
  %loadMem_400f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 11
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %49 to i32*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %52 to i64*
  %53 = load i64, i64* %RBP.i482
  %54 = sub i64 %53, 4
  %55 = load i32, i32* %EDI.i
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %PC.i481
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC.i481
  %59 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %59
  store %struct.Memory* %loadMem_400f58, %struct.Memory** %MEMORY
  %loadMem_400f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %61 = getelementptr inbounds %struct.GPR, %struct.GPR* %60, i32 0, i32 33
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %61, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %62 to i64*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %65 to i32*
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.GPR, %struct.GPR* %66, i32 0, i32 15
  %68 = getelementptr inbounds %struct.Reg, %struct.Reg* %67, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %68 to i64*
  %69 = load i64, i64* %RBP.i480
  %70 = sub i64 %69, 8
  %71 = load i32, i32* %ESI.i
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %PC.i479
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC.i479
  %75 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %75
  store %struct.Memory* %loadMem_400f5b, %struct.Memory** %MEMORY
  %loadMem_400f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 33
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %EDX.i477 = bitcast %union.anon* %81 to i32*
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 15
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %84 to i64*
  %85 = load i64, i64* %RBP.i478
  %86 = sub i64 %85, 12
  %87 = load i32, i32* %EDX.i477
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %PC.i476
  %90 = add i64 %89, 3
  store i64 %90, i64* %PC.i476
  %91 = inttoptr i64 %86 to i32*
  store i32 %87, i32* %91
  store %struct.Memory* %loadMem_400f5e, %struct.Memory** %MEMORY
  %loadMem_400f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 33
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %94 to i64*
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 15
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %100 to i64*
  %101 = load i64, i64* %RBP.i475
  %102 = sub i64 %101, 24
  %103 = load i64, i64* %RCX.i474
  %104 = load i64, i64* %PC.i473
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC.i473
  %106 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %106
  store %struct.Memory* %loadMem_400f61, %struct.Memory** %MEMORY
  %loadMem_400f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 15
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 17
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %R8.i = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i472
  %117 = sub i64 %116, 32
  %118 = load i64, i64* %R8.i
  %119 = load i64, i64* %PC.i471
  %120 = add i64 %119, 4
  store i64 %120, i64* %PC.i471
  %121 = inttoptr i64 %117 to i64*
  store i64 %118, i64* %121
  store %struct.Memory* %loadMem_400f65, %struct.Memory** %MEMORY
  %loadMem_400f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 19
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %R9.i = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RBP.i470
  %132 = sub i64 %131, 40
  %133 = load i64, i64* %R9.i
  %134 = load i64, i64* %PC.i469
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC.i469
  %136 = inttoptr i64 %132 to i64*
  store i64 %133, i64* %136
  store %struct.Memory* %loadMem_400f69, %struct.Memory** %MEMORY
  %loadMem_400f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i468
  %144 = sub i64 %143, 44
  %145 = load i64, i64* %PC.i467
  %146 = add i64 %145, 7
  store i64 %146, i64* %PC.i467
  %147 = inttoptr i64 %144 to i32*
  store i32 0, i32* %147
  store %struct.Memory* %loadMem_400f6d, %struct.Memory** %MEMORY
  %loadMem_400f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 15
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %156 to i64*
  %157 = load i64, i64* %RBP.i466
  %158 = sub i64 %157, 64
  %159 = load i64, i64* %RAX.i465
  %160 = load i64, i64* %PC.i464
  %161 = add i64 %160, 4
  store i64 %161, i64* %PC.i464
  %162 = inttoptr i64 %158 to i64*
  store i64 %159, i64* %162
  store %struct.Memory* %loadMem_400f74, %struct.Memory** %MEMORY
  br label %block_.L_400f78

block_.L_400f78:                                  ; preds = %block_.L_401261, %entry
  %loadMem_400f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 33
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 15
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %171 to i64*
  %172 = load i64, i64* %RBP.i463
  %173 = sub i64 %172, 44
  %174 = load i64, i64* %PC.i461
  %175 = add i64 %174, 3
  store i64 %175, i64* %PC.i461
  %176 = inttoptr i64 %173 to i32*
  %177 = load i32, i32* %176
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_400f78, %struct.Memory** %MEMORY
  %loadMem_400f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %EAX.i459 = bitcast %union.anon* %184 to i32*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %187 to i64*
  %188 = load i32, i32* %EAX.i459
  %189 = zext i32 %188 to i64
  %190 = load i64, i64* %RBP.i460
  %191 = sub i64 %190, 4
  %192 = load i64, i64* %PC.i458
  %193 = add i64 %192, 3
  store i64 %193, i64* %PC.i458
  %194 = inttoptr i64 %191 to i32*
  %195 = load i32, i32* %194
  %196 = sub i32 %188, %195
  %197 = icmp ult i32 %188, %195
  %198 = zext i1 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %198, i8* %199, align 1
  %200 = and i32 %196, 255
  %201 = call i32 @llvm.ctpop.i32(i32 %200)
  %202 = trunc i32 %201 to i8
  %203 = and i8 %202, 1
  %204 = xor i8 %203, 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %204, i8* %205, align 1
  %206 = xor i32 %195, %188
  %207 = xor i32 %206, %196
  %208 = lshr i32 %207, 4
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %210, i8* %211, align 1
  %212 = icmp eq i32 %196, 0
  %213 = zext i1 %212 to i8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %213, i8* %214, align 1
  %215 = lshr i32 %196, 31
  %216 = trunc i32 %215 to i8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %216, i8* %217, align 1
  %218 = lshr i32 %188, 31
  %219 = lshr i32 %195, 31
  %220 = xor i32 %219, %218
  %221 = xor i32 %215, %218
  %222 = add i32 %221, %220
  %223 = icmp eq i32 %222, 2
  %224 = zext i1 %223 to i8
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %224, i8* %225, align 1
  store %struct.Memory* %loadMem_400f7b, %struct.Memory** %MEMORY
  %loadMem_400f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 33
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %PC.i457
  %230 = add i64 %229, 753
  %231 = load i64, i64* %PC.i457
  %232 = add i64 %231, 6
  %233 = load i64, i64* %PC.i457
  %234 = add i64 %233, 6
  store i64 %234, i64* %PC.i457
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %236 = load i8, i8* %235, align 1
  %237 = icmp ne i8 %236, 0
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %239 = load i8, i8* %238, align 1
  %240 = icmp ne i8 %239, 0
  %241 = xor i1 %237, %240
  %242 = xor i1 %241, true
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %BRANCH_TAKEN, align 1
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %245 = select i1 %241, i64 %232, i64 %230
  store i64 %245, i64* %244, align 8
  store %struct.Memory* %loadMem_400f7e, %struct.Memory** %MEMORY
  %loadBr_400f7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f7e = icmp eq i8 %loadBr_400f7e, 1
  br i1 %cmpBr_400f7e, label %block_.L_40126f, label %block_400f84

block_400f84:                                     ; preds = %block_.L_400f78
  %loadMem_400f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 15
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RBP.i456
  %253 = sub i64 %252, 52
  %254 = load i64, i64* %PC.i455
  %255 = add i64 %254, 7
  store i64 %255, i64* %PC.i455
  %256 = inttoptr i64 %253 to i32*
  store i32 0, i32* %256
  store %struct.Memory* %loadMem_400f84, %struct.Memory** %MEMORY
  br label %block_.L_400f8b

block_.L_400f8b:                                  ; preds = %block_400f97, %block_400f84
  %loadMem_400f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 33
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %259 to i64*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 15
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %265 to i64*
  %266 = load i64, i64* %RBP.i454
  %267 = sub i64 %266, 52
  %268 = load i64, i64* %PC.i452
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC.i452
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RAX.i453, align 8
  store %struct.Memory* %loadMem_400f8b, %struct.Memory** %MEMORY
  %loadMem_400f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %EAX.i450 = bitcast %union.anon* %278 to i32*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 15
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %281 to i64*
  %282 = load i32, i32* %EAX.i450
  %283 = zext i32 %282 to i64
  %284 = load i64, i64* %RBP.i451
  %285 = sub i64 %284, 12
  %286 = load i64, i64* %PC.i449
  %287 = add i64 %286, 3
  store i64 %287, i64* %PC.i449
  %288 = inttoptr i64 %285 to i32*
  %289 = load i32, i32* %288
  %290 = sub i32 %282, %289
  %291 = icmp ult i32 %282, %289
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %292, i8* %293, align 1
  %294 = and i32 %290, 255
  %295 = call i32 @llvm.ctpop.i32(i32 %294)
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %298, i8* %299, align 1
  %300 = xor i32 %289, %282
  %301 = xor i32 %300, %290
  %302 = lshr i32 %301, 4
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %304, i8* %305, align 1
  %306 = icmp eq i32 %290, 0
  %307 = zext i1 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %307, i8* %308, align 1
  %309 = lshr i32 %290, 31
  %310 = trunc i32 %309 to i8
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %310, i8* %311, align 1
  %312 = lshr i32 %282, 31
  %313 = lshr i32 %289, 31
  %314 = xor i32 %313, %312
  %315 = xor i32 %309, %312
  %316 = add i32 %315, %314
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %318, i8* %319, align 1
  store %struct.Memory* %loadMem_400f8e, %struct.Memory** %MEMORY
  %loadMem_400f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %PC.i448
  %324 = add i64 %323, 46
  %325 = load i64, i64* %PC.i448
  %326 = add i64 %325, 6
  %327 = load i64, i64* %PC.i448
  %328 = add i64 %327, 6
  store i64 %328, i64* %PC.i448
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %330 = load i8, i8* %329, align 1
  %331 = icmp ne i8 %330, 0
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %333 = load i8, i8* %332, align 1
  %334 = icmp ne i8 %333, 0
  %335 = xor i1 %331, %334
  %336 = xor i1 %335, true
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %BRANCH_TAKEN, align 1
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %339 = select i1 %335, i64 %326, i64 %324
  store i64 %339, i64* %338, align 8
  store %struct.Memory* %loadMem_400f91, %struct.Memory** %MEMORY
  %loadBr_400f91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400f91 = icmp eq i8 %loadBr_400f91, 1
  br i1 %cmpBr_400f91, label %block_.L_400fbf, label %block_400f97

block_400f97:                                     ; preds = %block_.L_400f8b
  %loadMem_400f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 15
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %RBP.i447
  %350 = add i64 %349, 16
  %351 = load i64, i64* %PC.i445
  %352 = add i64 %351, 4
  store i64 %352, i64* %PC.i445
  %353 = inttoptr i64 %350 to i64*
  %354 = load i64, i64* %353
  store i64 %354, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_400f97, %struct.Memory** %MEMORY
  %loadMem_400f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 33
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %357 to i64*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 5
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 15
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %363 to i64*
  %364 = load i64, i64* %RBP.i444
  %365 = sub i64 %364, 44
  %366 = load i64, i64* %PC.i442
  %367 = add i64 %366, 4
  store i64 %367, i64* %PC.i442
  %368 = inttoptr i64 %365 to i32*
  %369 = load i32, i32* %368
  %370 = sext i32 %369 to i64
  store i64 %370, i64* %RCX.i443, align 8
  store %struct.Memory* %loadMem_400f9b, %struct.Memory** %MEMORY
  %loadMem_400f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %381 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %380, i64 0, i64 0
  %YMM0.i441 = bitcast %union.VectorReg* %381 to %"class.std::bitset"*
  %382 = bitcast %"class.std::bitset"* %YMM0.i441 to i8*
  %383 = load i64, i64* %RAX.i439
  %384 = load i64, i64* %RCX.i440
  %385 = mul i64 %384, 8
  %386 = add i64 %385, %383
  %387 = load i64, i64* %PC.i438
  %388 = add i64 %387, 5
  store i64 %388, i64* %PC.i438
  %389 = inttoptr i64 %386 to double*
  %390 = load double, double* %389
  %391 = bitcast i8* %382 to double*
  store double %390, double* %391, align 1
  %392 = getelementptr inbounds i8, i8* %382, i64 8
  %393 = bitcast i8* %392 to double*
  store double 0.000000e+00, double* %393, align 1
  store %struct.Memory* %loadMem_400f9f, %struct.Memory** %MEMORY
  %loadMem_400fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 15
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %RBP.i437
  %404 = sub i64 %403, 32
  %405 = load i64, i64* %PC.i435
  %406 = add i64 %405, 4
  store i64 %406, i64* %PC.i435
  %407 = inttoptr i64 %404 to i64*
  %408 = load i64, i64* %407
  store i64 %408, i64* %RAX.i436, align 8
  store %struct.Memory* %loadMem_400fa4, %struct.Memory** %MEMORY
  %loadMem_400fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 5
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 15
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %RBP.i434
  %419 = sub i64 %418, 52
  %420 = load i64, i64* %PC.i432
  %421 = add i64 %420, 4
  store i64 %421, i64* %PC.i432
  %422 = inttoptr i64 %419 to i32*
  %423 = load i32, i32* %422
  %424 = sext i32 %423 to i64
  store i64 %424, i64* %RCX.i433, align 8
  store %struct.Memory* %loadMem_400fa8, %struct.Memory** %MEMORY
  %loadMem_400fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 33
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 5
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %435 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %434, i64 0, i64 0
  %XMM0.i431 = bitcast %union.VectorReg* %435 to %union.vec128_t*
  %436 = load i64, i64* %RAX.i429
  %437 = load i64, i64* %RCX.i430
  %438 = mul i64 %437, 8
  %439 = add i64 %438, %436
  %440 = bitcast %union.vec128_t* %XMM0.i431 to i8*
  %441 = load i64, i64* %PC.i428
  %442 = add i64 %441, 5
  store i64 %442, i64* %PC.i428
  %443 = bitcast i8* %440 to double*
  %444 = load double, double* %443, align 1
  %445 = inttoptr i64 %439 to double*
  store double %444, double* %445
  store %struct.Memory* %loadMem_400fac, %struct.Memory** %MEMORY
  %loadMem_400fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 15
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %454 to i64*
  %455 = load i64, i64* %RBP.i427
  %456 = sub i64 %455, 52
  %457 = load i64, i64* %PC.i425
  %458 = add i64 %457, 3
  store i64 %458, i64* %PC.i425
  %459 = inttoptr i64 %456 to i32*
  %460 = load i32, i32* %459
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_400fb1, %struct.Memory** %MEMORY
  %loadMem_400fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 33
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %464 to i64*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %467 to i64*
  %468 = load i64, i64* %RAX.i424
  %469 = load i64, i64* %PC.i423
  %470 = add i64 %469, 3
  store i64 %470, i64* %PC.i423
  %471 = trunc i64 %468 to i32
  %472 = add i32 1, %471
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RAX.i424, align 8
  %474 = icmp ult i32 %472, %471
  %475 = icmp ult i32 %472, 1
  %476 = or i1 %474, %475
  %477 = zext i1 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %477, i8* %478, align 1
  %479 = and i32 %472, 255
  %480 = call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %483, i8* %484, align 1
  %485 = xor i64 1, %468
  %486 = trunc i64 %485 to i32
  %487 = xor i32 %486, %472
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %490, i8* %491, align 1
  %492 = icmp eq i32 %472, 0
  %493 = zext i1 %492 to i8
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %493, i8* %494, align 1
  %495 = lshr i32 %472, 31
  %496 = trunc i32 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %496, i8* %497, align 1
  %498 = lshr i32 %471, 31
  %499 = xor i32 %495, %498
  %500 = add i32 %499, %495
  %501 = icmp eq i32 %500, 2
  %502 = zext i1 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %502, i8* %503, align 1
  store %struct.Memory* %loadMem_400fb4, %struct.Memory** %MEMORY
  %loadMem_400fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 33
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %506 to i64*
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %EAX.i421 = bitcast %union.anon* %509 to i32*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 15
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %512 to i64*
  %513 = load i64, i64* %RBP.i422
  %514 = sub i64 %513, 52
  %515 = load i32, i32* %EAX.i421
  %516 = zext i32 %515 to i64
  %517 = load i64, i64* %PC.i420
  %518 = add i64 %517, 3
  store i64 %518, i64* %PC.i420
  %519 = inttoptr i64 %514 to i32*
  store i32 %515, i32* %519
  store %struct.Memory* %loadMem_400fb7, %struct.Memory** %MEMORY
  %loadMem_400fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 33
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %PC.i419
  %524 = add i64 %523, -47
  %525 = load i64, i64* %PC.i419
  %526 = add i64 %525, 5
  store i64 %526, i64* %PC.i419
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %524, i64* %527, align 8
  store %struct.Memory* %loadMem_400fba, %struct.Memory** %MEMORY
  br label %block_.L_400f8b

block_.L_400fbf:                                  ; preds = %block_.L_400f8b
  %loadMem_400fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 33
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 15
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %RBP.i418
  %535 = sub i64 %534, 48
  %536 = load i64, i64* %PC.i417
  %537 = add i64 %536, 7
  store i64 %537, i64* %PC.i417
  %538 = inttoptr i64 %535 to i32*
  store i32 1, i32* %538
  store %struct.Memory* %loadMem_400fbf, %struct.Memory** %MEMORY
  br label %block_.L_400fc6

block_.L_400fc6:                                  ; preds = %block_.L_401079, %block_.L_400fbf
  %loadMem_400fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %541 to i64*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 15
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %547 to i64*
  %548 = load i64, i64* %RBP.i416
  %549 = sub i64 %548, 48
  %550 = load i64, i64* %PC.i414
  %551 = add i64 %550, 3
  store i64 %551, i64* %PC.i414
  %552 = inttoptr i64 %549 to i32*
  %553 = load i32, i32* %552
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RAX.i415, align 8
  store %struct.Memory* %loadMem_400fc6, %struct.Memory** %MEMORY
  %loadMem_400fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 1
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %EAX.i412 = bitcast %union.anon* %560 to i32*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 15
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %563 to i64*
  %564 = load i32, i32* %EAX.i412
  %565 = zext i32 %564 to i64
  %566 = load i64, i64* %RBP.i413
  %567 = sub i64 %566, 8
  %568 = load i64, i64* %PC.i411
  %569 = add i64 %568, 3
  store i64 %569, i64* %PC.i411
  %570 = inttoptr i64 %567 to i32*
  %571 = load i32, i32* %570
  %572 = sub i32 %564, %571
  %573 = icmp ult i32 %564, %571
  %574 = zext i1 %573 to i8
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %574, i8* %575, align 1
  %576 = and i32 %572, 255
  %577 = call i32 @llvm.ctpop.i32(i32 %576)
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %580, i8* %581, align 1
  %582 = xor i32 %571, %564
  %583 = xor i32 %582, %572
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %586, i8* %587, align 1
  %588 = icmp eq i32 %572, 0
  %589 = zext i1 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %589, i8* %590, align 1
  %591 = lshr i32 %572, 31
  %592 = trunc i32 %591 to i8
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %592, i8* %593, align 1
  %594 = lshr i32 %564, 31
  %595 = lshr i32 %571, 31
  %596 = xor i32 %595, %594
  %597 = xor i32 %591, %594
  %598 = add i32 %597, %596
  %599 = icmp eq i32 %598, 2
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %600, i8* %601, align 1
  store %struct.Memory* %loadMem_400fc9, %struct.Memory** %MEMORY
  %loadMem_400fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 33
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %PC.i410
  %606 = add i64 %605, 187
  %607 = load i64, i64* %PC.i410
  %608 = add i64 %607, 6
  %609 = load i64, i64* %PC.i410
  %610 = add i64 %609, 6
  store i64 %610, i64* %PC.i410
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %612 = load i8, i8* %611, align 1
  %613 = icmp ne i8 %612, 0
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %615 = load i8, i8* %614, align 1
  %616 = icmp ne i8 %615, 0
  %617 = xor i1 %613, %616
  %618 = xor i1 %617, true
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %BRANCH_TAKEN, align 1
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %621 = select i1 %617, i64 %608, i64 %606
  store i64 %621, i64* %620, align 8
  store %struct.Memory* %loadMem_400fcc, %struct.Memory** %MEMORY
  %loadBr_400fcc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fcc = icmp eq i8 %loadBr_400fcc, 1
  br i1 %cmpBr_400fcc, label %block_.L_401087, label %block_400fd2

block_400fd2:                                     ; preds = %block_.L_400fc6
  %loadMem_400fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 15
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %627 to i64*
  %628 = load i64, i64* %RBP.i409
  %629 = sub i64 %628, 52
  %630 = load i64, i64* %PC.i408
  %631 = add i64 %630, 7
  store i64 %631, i64* %PC.i408
  %632 = inttoptr i64 %629 to i32*
  store i32 0, i32* %632
  store %struct.Memory* %loadMem_400fd2, %struct.Memory** %MEMORY
  br label %block_.L_400fd9

block_.L_400fd9:                                  ; preds = %block_400fe5, %block_400fd2
  %loadMem_400fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 1
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 15
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i407
  %643 = sub i64 %642, 52
  %644 = load i64, i64* %PC.i405
  %645 = add i64 %644, 3
  store i64 %645, i64* %PC.i405
  %646 = inttoptr i64 %643 to i32*
  %647 = load i32, i32* %646
  %648 = zext i32 %647 to i64
  store i64 %648, i64* %RAX.i406, align 8
  store %struct.Memory* %loadMem_400fd9, %struct.Memory** %MEMORY
  %loadMem_400fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 1
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %EAX.i403 = bitcast %union.anon* %654 to i32*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 15
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %657 to i64*
  %658 = load i32, i32* %EAX.i403
  %659 = zext i32 %658 to i64
  %660 = load i64, i64* %RBP.i404
  %661 = sub i64 %660, 12
  %662 = load i64, i64* %PC.i402
  %663 = add i64 %662, 3
  store i64 %663, i64* %PC.i402
  %664 = inttoptr i64 %661 to i32*
  %665 = load i32, i32* %664
  %666 = sub i32 %658, %665
  %667 = icmp ult i32 %658, %665
  %668 = zext i1 %667 to i8
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %668, i8* %669, align 1
  %670 = and i32 %666, 255
  %671 = call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %674, i8* %675, align 1
  %676 = xor i32 %665, %658
  %677 = xor i32 %676, %666
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %680, i8* %681, align 1
  %682 = icmp eq i32 %666, 0
  %683 = zext i1 %682 to i8
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %683, i8* %684, align 1
  %685 = lshr i32 %666, 31
  %686 = trunc i32 %685 to i8
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %686, i8* %687, align 1
  %688 = lshr i32 %658, 31
  %689 = lshr i32 %665, 31
  %690 = xor i32 %689, %688
  %691 = xor i32 %685, %688
  %692 = add i32 %691, %690
  %693 = icmp eq i32 %692, 2
  %694 = zext i1 %693 to i8
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %694, i8* %695, align 1
  store %struct.Memory* %loadMem_400fdc, %struct.Memory** %MEMORY
  %loadMem_400fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 33
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %698 to i64*
  %699 = load i64, i64* %PC.i401
  %700 = add i64 %699, 149
  %701 = load i64, i64* %PC.i401
  %702 = add i64 %701, 6
  %703 = load i64, i64* %PC.i401
  %704 = add i64 %703, 6
  store i64 %704, i64* %PC.i401
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %706 = load i8, i8* %705, align 1
  %707 = icmp ne i8 %706, 0
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %709 = load i8, i8* %708, align 1
  %710 = icmp ne i8 %709, 0
  %711 = xor i1 %707, %710
  %712 = xor i1 %711, true
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %BRANCH_TAKEN, align 1
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %715 = select i1 %711, i64 %702, i64 %700
  store i64 %715, i64* %714, align 8
  store %struct.Memory* %loadMem_400fdf, %struct.Memory** %MEMORY
  %loadBr_400fdf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400fdf = icmp eq i8 %loadBr_400fdf, 1
  br i1 %cmpBr_400fdf, label %block_.L_401074, label %block_400fe5

block_400fe5:                                     ; preds = %block_.L_400fd9
  %loadMem_400fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 33
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %720 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %719, i64 0, i64 0
  %YMM0.i400 = bitcast %union.VectorReg* %720 to %"class.std::bitset"*
  %721 = bitcast %"class.std::bitset"* %YMM0.i400 to i8*
  %722 = load i64, i64* %PC.i399
  %723 = load i64, i64* %PC.i399
  %724 = add i64 %723, 8
  store i64 %724, i64* %PC.i399
  %725 = load double, double* bitcast (%G_0x673__rip__4198381__type* @G_0x673__rip__4198381_ to double*)
  %726 = bitcast i8* %721 to double*
  store double %725, double* %726, align 1
  %727 = getelementptr inbounds i8, i8* %721, i64 8
  %728 = bitcast i8* %727 to double*
  store double 0.000000e+00, double* %728, align 1
  store %struct.Memory* %loadMem_400fe5, %struct.Memory** %MEMORY
  %loadMem_400fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %734 to i64*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 15
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %737 to i64*
  %738 = load i64, i64* %RBP.i398
  %739 = sub i64 %738, 32
  %740 = load i64, i64* %PC.i396
  %741 = add i64 %740, 4
  store i64 %741, i64* %PC.i396
  %742 = inttoptr i64 %739 to i64*
  %743 = load i64, i64* %742
  store i64 %743, i64* %RAX.i397, align 8
  store %struct.Memory* %loadMem_400fed, %struct.Memory** %MEMORY
  %loadMem_400ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 33
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 5
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 15
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %752 to i64*
  %753 = load i64, i64* %RBP.i395
  %754 = sub i64 %753, 48
  %755 = load i64, i64* %PC.i393
  %756 = add i64 %755, 4
  store i64 %756, i64* %PC.i393
  %757 = inttoptr i64 %754 to i32*
  %758 = load i32, i32* %757
  %759 = sext i32 %758 to i64
  store i64 %759, i64* %RCX.i394, align 8
  store %struct.Memory* %loadMem_400ff1, %struct.Memory** %MEMORY
  %loadMem_400ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 33
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %762 to i64*
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 5
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %765 to i64*
  %766 = load i64, i64* %RCX.i392
  %767 = load i64, i64* %PC.i391
  %768 = add i64 %767, 7
  store i64 %768, i64* %PC.i391
  %769 = sext i64 %766 to i128
  %770 = and i128 %769, -18446744073709551616
  %771 = zext i64 %766 to i128
  %772 = or i128 %770, %771
  %773 = mul i128 8000, %772
  %774 = trunc i128 %773 to i64
  store i64 %774, i64* %RCX.i392, align 8
  %775 = sext i64 %774 to i128
  %776 = icmp ne i128 %775, %773
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %777, i8* %778, align 1
  %779 = trunc i128 %773 to i32
  %780 = and i32 %779, 255
  %781 = call i32 @llvm.ctpop.i32(i32 %780)
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %784, i8* %785, align 1
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %786, align 1
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %787, align 1
  %788 = lshr i64 %774, 63
  %789 = trunc i64 %788 to i8
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %789, i8* %790, align 1
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %777, i8* %791, align 1
  store %struct.Memory* %loadMem_400ff5, %struct.Memory** %MEMORY
  %loadMem_400ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 1
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 5
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %800 to i64*
  %801 = load i64, i64* %RAX.i389
  %802 = load i64, i64* %RCX.i390
  %803 = load i64, i64* %PC.i388
  %804 = add i64 %803, 3
  store i64 %804, i64* %PC.i388
  %805 = add i64 %802, %801
  store i64 %805, i64* %RAX.i389, align 8
  %806 = icmp ult i64 %805, %801
  %807 = icmp ult i64 %805, %802
  %808 = or i1 %806, %807
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %809, i8* %810, align 1
  %811 = trunc i64 %805 to i32
  %812 = and i32 %811, 255
  %813 = call i32 @llvm.ctpop.i32(i32 %812)
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %816, i8* %817, align 1
  %818 = xor i64 %802, %801
  %819 = xor i64 %818, %805
  %820 = lshr i64 %819, 4
  %821 = trunc i64 %820 to i8
  %822 = and i8 %821, 1
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %822, i8* %823, align 1
  %824 = icmp eq i64 %805, 0
  %825 = zext i1 %824 to i8
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %825, i8* %826, align 1
  %827 = lshr i64 %805, 63
  %828 = trunc i64 %827 to i8
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %828, i8* %829, align 1
  %830 = lshr i64 %801, 63
  %831 = lshr i64 %802, 63
  %832 = xor i64 %827, %830
  %833 = xor i64 %827, %831
  %834 = add i64 %832, %833
  %835 = icmp eq i64 %834, 2
  %836 = zext i1 %835 to i8
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %836, i8* %837, align 1
  store %struct.Memory* %loadMem_400ffc, %struct.Memory** %MEMORY
  %loadMem_400fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 33
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 5
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 15
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %846 to i64*
  %847 = load i64, i64* %RBP.i387
  %848 = sub i64 %847, 52
  %849 = load i64, i64* %PC.i385
  %850 = add i64 %849, 4
  store i64 %850, i64* %PC.i385
  %851 = inttoptr i64 %848 to i32*
  %852 = load i32, i32* %851
  %853 = sext i32 %852 to i64
  store i64 %853, i64* %RCX.i386, align 8
  store %struct.Memory* %loadMem_400fff, %struct.Memory** %MEMORY
  %loadMem_401003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 33
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %856 to i64*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 1
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 5
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %864 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %863, i64 0, i64 1
  %YMM1.i384 = bitcast %union.VectorReg* %864 to %"class.std::bitset"*
  %865 = bitcast %"class.std::bitset"* %YMM1.i384 to i8*
  %866 = load i64, i64* %RAX.i382
  %867 = load i64, i64* %RCX.i383
  %868 = mul i64 %867, 8
  %869 = add i64 %868, %866
  %870 = load i64, i64* %PC.i381
  %871 = add i64 %870, 5
  store i64 %871, i64* %PC.i381
  %872 = inttoptr i64 %869 to double*
  %873 = load double, double* %872
  %874 = bitcast i8* %865 to double*
  store double %873, double* %874, align 1
  %875 = getelementptr inbounds i8, i8* %865, i64 8
  %876 = bitcast i8* %875 to double*
  store double 0.000000e+00, double* %876, align 1
  store %struct.Memory* %loadMem_401003, %struct.Memory** %MEMORY
  %loadMem_401008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 33
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %879 to i64*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 1
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %882 to i64*
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 15
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %885 to i64*
  %886 = load i64, i64* %RBP.i380
  %887 = sub i64 %886, 40
  %888 = load i64, i64* %PC.i378
  %889 = add i64 %888, 4
  store i64 %889, i64* %PC.i378
  %890 = inttoptr i64 %887 to i64*
  %891 = load i64, i64* %890
  store i64 %891, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_401008, %struct.Memory** %MEMORY
  %loadMem_40100c = load %struct.Memory*, %struct.Memory** %MEMORY
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 33
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 5
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %897 to i64*
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 15
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %900 to i64*
  %901 = load i64, i64* %RBP.i377
  %902 = sub i64 %901, 48
  %903 = load i64, i64* %PC.i375
  %904 = add i64 %903, 4
  store i64 %904, i64* %PC.i375
  %905 = inttoptr i64 %902 to i32*
  %906 = load i32, i32* %905
  %907 = sext i32 %906 to i64
  store i64 %907, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_40100c, %struct.Memory** %MEMORY
  %loadMem_401010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 33
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %910 to i64*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 5
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %913 to i64*
  %914 = load i64, i64* %RCX.i374
  %915 = load i64, i64* %PC.i373
  %916 = add i64 %915, 7
  store i64 %916, i64* %PC.i373
  %917 = sext i64 %914 to i128
  %918 = and i128 %917, -18446744073709551616
  %919 = zext i64 %914 to i128
  %920 = or i128 %918, %919
  %921 = mul i128 8000, %920
  %922 = trunc i128 %921 to i64
  store i64 %922, i64* %RCX.i374, align 8
  %923 = sext i64 %922 to i128
  %924 = icmp ne i128 %923, %921
  %925 = zext i1 %924 to i8
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %925, i8* %926, align 1
  %927 = trunc i128 %921 to i32
  %928 = and i32 %927, 255
  %929 = call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %932, i8* %933, align 1
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %934, align 1
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %935, align 1
  %936 = lshr i64 %922, 63
  %937 = trunc i64 %936 to i8
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %937, i8* %938, align 1
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %925, i8* %939, align 1
  store %struct.Memory* %loadMem_401010, %struct.Memory** %MEMORY
  %loadMem_401017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 1
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 5
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %948 to i64*
  %949 = load i64, i64* %RAX.i371
  %950 = load i64, i64* %RCX.i372
  %951 = load i64, i64* %PC.i370
  %952 = add i64 %951, 3
  store i64 %952, i64* %PC.i370
  %953 = add i64 %950, %949
  store i64 %953, i64* %RAX.i371, align 8
  %954 = icmp ult i64 %953, %949
  %955 = icmp ult i64 %953, %950
  %956 = or i1 %954, %955
  %957 = zext i1 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %957, i8* %958, align 1
  %959 = trunc i64 %953 to i32
  %960 = and i32 %959, 255
  %961 = call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %964, i8* %965, align 1
  %966 = xor i64 %950, %949
  %967 = xor i64 %966, %953
  %968 = lshr i64 %967, 4
  %969 = trunc i64 %968 to i8
  %970 = and i8 %969, 1
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %970, i8* %971, align 1
  %972 = icmp eq i64 %953, 0
  %973 = zext i1 %972 to i8
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %973, i8* %974, align 1
  %975 = lshr i64 %953, 63
  %976 = trunc i64 %975 to i8
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %976, i8* %977, align 1
  %978 = lshr i64 %949, 63
  %979 = lshr i64 %950, 63
  %980 = xor i64 %975, %978
  %981 = xor i64 %975, %979
  %982 = add i64 %980, %981
  %983 = icmp eq i64 %982, 2
  %984 = zext i1 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %984, i8* %985, align 1
  store %struct.Memory* %loadMem_401017, %struct.Memory** %MEMORY
  %loadMem_40101a = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 5
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 15
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %994 to i64*
  %995 = load i64, i64* %RBP.i369
  %996 = sub i64 %995, 52
  %997 = load i64, i64* %PC.i367
  %998 = add i64 %997, 4
  store i64 %998, i64* %PC.i367
  %999 = inttoptr i64 %996 to i32*
  %1000 = load i32, i32* %999
  %1001 = sext i32 %1000 to i64
  store i64 %1001, i64* %RCX.i368, align 8
  store %struct.Memory* %loadMem_40101a, %struct.Memory** %MEMORY
  %loadMem_40101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 33
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 1
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 5
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1012 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1011, i64 0, i64 2
  %YMM2.i366 = bitcast %union.VectorReg* %1012 to %"class.std::bitset"*
  %1013 = bitcast %"class.std::bitset"* %YMM2.i366 to i8*
  %1014 = load i64, i64* %RAX.i364
  %1015 = load i64, i64* %RCX.i365
  %1016 = mul i64 %1015, 8
  %1017 = add i64 %1016, %1014
  %1018 = load i64, i64* %PC.i363
  %1019 = add i64 %1018, 5
  store i64 %1019, i64* %PC.i363
  %1020 = inttoptr i64 %1017 to double*
  %1021 = load double, double* %1020
  %1022 = bitcast i8* %1013 to double*
  store double %1021, double* %1022, align 1
  %1023 = getelementptr inbounds i8, i8* %1013, i64 8
  %1024 = bitcast i8* %1023 to double*
  store double 0.000000e+00, double* %1024, align 1
  store %struct.Memory* %loadMem_40101e, %struct.Memory** %MEMORY
  %loadMem_401023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 1
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %1030 to i64*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 15
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %RBP.i362
  %1035 = sub i64 %1034, 40
  %1036 = load i64, i64* %PC.i360
  %1037 = add i64 %1036, 4
  store i64 %1037, i64* %PC.i360
  %1038 = inttoptr i64 %1035 to i64*
  %1039 = load i64, i64* %1038
  store i64 %1039, i64* %RAX.i361, align 8
  store %struct.Memory* %loadMem_401023, %struct.Memory** %MEMORY
  %loadMem_401027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 33
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 7
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %RDX.i358 = bitcast %union.anon* %1045 to i64*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 15
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %1048 to i64*
  %1049 = load i64, i64* %RBP.i359
  %1050 = sub i64 %1049, 48
  %1051 = load i64, i64* %PC.i357
  %1052 = add i64 %1051, 3
  store i64 %1052, i64* %PC.i357
  %1053 = inttoptr i64 %1050 to i32*
  %1054 = load i32, i32* %1053
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RDX.i358, align 8
  store %struct.Memory* %loadMem_401027, %struct.Memory** %MEMORY
  %loadMem_40102a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 7
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RDX.i356 = bitcast %union.anon* %1061 to i64*
  %1062 = load i64, i64* %RDX.i356
  %1063 = load i64, i64* %PC.i355
  %1064 = add i64 %1063, 3
  store i64 %1064, i64* %PC.i355
  %1065 = trunc i64 %1062 to i32
  %1066 = sub i32 %1065, 1
  %1067 = zext i32 %1066 to i64
  store i64 %1067, i64* %RDX.i356, align 8
  %1068 = icmp ult i32 %1065, 1
  %1069 = zext i1 %1068 to i8
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1069, i8* %1070, align 1
  %1071 = and i32 %1066, 255
  %1072 = call i32 @llvm.ctpop.i32(i32 %1071)
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1075, i8* %1076, align 1
  %1077 = xor i64 1, %1062
  %1078 = trunc i64 %1077 to i32
  %1079 = xor i32 %1078, %1066
  %1080 = lshr i32 %1079, 4
  %1081 = trunc i32 %1080 to i8
  %1082 = and i8 %1081, 1
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1082, i8* %1083, align 1
  %1084 = icmp eq i32 %1066, 0
  %1085 = zext i1 %1084 to i8
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1085, i8* %1086, align 1
  %1087 = lshr i32 %1066, 31
  %1088 = trunc i32 %1087 to i8
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1088, i8* %1089, align 1
  %1090 = lshr i32 %1065, 31
  %1091 = xor i32 %1087, %1090
  %1092 = add i32 %1091, %1090
  %1093 = icmp eq i32 %1092, 2
  %1094 = zext i1 %1093 to i8
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1094, i8* %1095, align 1
  store %struct.Memory* %loadMem_40102a, %struct.Memory** %MEMORY
  %loadMem_40102d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 33
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 7
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %EDX.i353 = bitcast %union.anon* %1101 to i32*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 5
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %1104 to i64*
  %1105 = load i32, i32* %EDX.i353
  %1106 = zext i32 %1105 to i64
  %1107 = load i64, i64* %PC.i352
  %1108 = add i64 %1107, 3
  store i64 %1108, i64* %PC.i352
  %1109 = shl i64 %1106, 32
  %1110 = ashr exact i64 %1109, 32
  store i64 %1110, i64* %RCX.i354, align 8
  store %struct.Memory* %loadMem_40102d, %struct.Memory** %MEMORY
  %loadMem_401030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 5
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %1116 to i64*
  %1117 = load i64, i64* %RCX.i351
  %1118 = load i64, i64* %PC.i350
  %1119 = add i64 %1118, 7
  store i64 %1119, i64* %PC.i350
  %1120 = sext i64 %1117 to i128
  %1121 = and i128 %1120, -18446744073709551616
  %1122 = zext i64 %1117 to i128
  %1123 = or i128 %1121, %1122
  %1124 = mul i128 8000, %1123
  %1125 = trunc i128 %1124 to i64
  store i64 %1125, i64* %RCX.i351, align 8
  %1126 = sext i64 %1125 to i128
  %1127 = icmp ne i128 %1126, %1124
  %1128 = zext i1 %1127 to i8
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1128, i8* %1129, align 1
  %1130 = trunc i128 %1124 to i32
  %1131 = and i32 %1130, 255
  %1132 = call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1135, i8* %1136, align 1
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1137, align 1
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1138, align 1
  %1139 = lshr i64 %1125, 63
  %1140 = trunc i64 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1140, i8* %1141, align 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1128, i8* %1142, align 1
  store %struct.Memory* %loadMem_401030, %struct.Memory** %MEMORY
  %loadMem_401037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 33
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 1
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %1148 to i64*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 5
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %1151 to i64*
  %1152 = load i64, i64* %RAX.i348
  %1153 = load i64, i64* %RCX.i349
  %1154 = load i64, i64* %PC.i347
  %1155 = add i64 %1154, 3
  store i64 %1155, i64* %PC.i347
  %1156 = add i64 %1153, %1152
  store i64 %1156, i64* %RAX.i348, align 8
  %1157 = icmp ult i64 %1156, %1152
  %1158 = icmp ult i64 %1156, %1153
  %1159 = or i1 %1157, %1158
  %1160 = zext i1 %1159 to i8
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1160, i8* %1161, align 1
  %1162 = trunc i64 %1156 to i32
  %1163 = and i32 %1162, 255
  %1164 = call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1167, i8* %1168, align 1
  %1169 = xor i64 %1153, %1152
  %1170 = xor i64 %1169, %1156
  %1171 = lshr i64 %1170, 4
  %1172 = trunc i64 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1173, i8* %1174, align 1
  %1175 = icmp eq i64 %1156, 0
  %1176 = zext i1 %1175 to i8
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1176, i8* %1177, align 1
  %1178 = lshr i64 %1156, 63
  %1179 = trunc i64 %1178 to i8
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1179, i8* %1180, align 1
  %1181 = lshr i64 %1152, 63
  %1182 = lshr i64 %1153, 63
  %1183 = xor i64 %1178, %1181
  %1184 = xor i64 %1178, %1182
  %1185 = add i64 %1183, %1184
  %1186 = icmp eq i64 %1185, 2
  %1187 = zext i1 %1186 to i8
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1187, i8* %1188, align 1
  store %struct.Memory* %loadMem_401037, %struct.Memory** %MEMORY
  %loadMem_40103a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 33
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1191 to i64*
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 5
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %1194 to i64*
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 15
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %1197 to i64*
  %1198 = load i64, i64* %RBP.i346
  %1199 = sub i64 %1198, 52
  %1200 = load i64, i64* %PC.i344
  %1201 = add i64 %1200, 4
  store i64 %1201, i64* %PC.i344
  %1202 = inttoptr i64 %1199 to i32*
  %1203 = load i32, i32* %1202
  %1204 = sext i32 %1203 to i64
  store i64 %1204, i64* %RCX.i345, align 8
  store %struct.Memory* %loadMem_40103a, %struct.Memory** %MEMORY
  %loadMem_40103e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 33
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1207 to i64*
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 1
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 5
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1215 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1214, i64 0, i64 2
  %YMM2.i343 = bitcast %union.VectorReg* %1215 to %"class.std::bitset"*
  %1216 = bitcast %"class.std::bitset"* %YMM2.i343 to i8*
  %1217 = bitcast %"class.std::bitset"* %YMM2.i343 to i8*
  %1218 = load i64, i64* %RAX.i341
  %1219 = load i64, i64* %RCX.i342
  %1220 = mul i64 %1219, 8
  %1221 = add i64 %1220, %1218
  %1222 = load i64, i64* %PC.i340
  %1223 = add i64 %1222, 5
  store i64 %1223, i64* %PC.i340
  %1224 = bitcast i8* %1217 to double*
  %1225 = load double, double* %1224, align 1
  %1226 = getelementptr inbounds i8, i8* %1217, i64 8
  %1227 = bitcast i8* %1226 to i64*
  %1228 = load i64, i64* %1227, align 1
  %1229 = inttoptr i64 %1221 to double*
  %1230 = load double, double* %1229
  %1231 = fsub double %1225, %1230
  %1232 = bitcast i8* %1216 to double*
  store double %1231, double* %1232, align 1
  %1233 = getelementptr inbounds i8, i8* %1216, i64 8
  %1234 = bitcast i8* %1233 to i64*
  store i64 %1228, i64* %1234, align 1
  store %struct.Memory* %loadMem_40103e, %struct.Memory** %MEMORY
  %loadMem_401043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 33
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1238, i64 0, i64 0
  %YMM0.i338 = bitcast %union.VectorReg* %1239 to %"class.std::bitset"*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1240, i64 0, i64 2
  %XMM2.i339 = bitcast %union.VectorReg* %1241 to %union.vec128_t*
  %1242 = bitcast %"class.std::bitset"* %YMM0.i338 to i8*
  %1243 = bitcast %"class.std::bitset"* %YMM0.i338 to i8*
  %1244 = bitcast %union.vec128_t* %XMM2.i339 to i8*
  %1245 = load i64, i64* %PC.i337
  %1246 = add i64 %1245, 4
  store i64 %1246, i64* %PC.i337
  %1247 = bitcast i8* %1243 to double*
  %1248 = load double, double* %1247, align 1
  %1249 = getelementptr inbounds i8, i8* %1243, i64 8
  %1250 = bitcast i8* %1249 to i64*
  %1251 = load i64, i64* %1250, align 1
  %1252 = bitcast i8* %1244 to double*
  %1253 = load double, double* %1252, align 1
  %1254 = fmul double %1248, %1253
  %1255 = bitcast i8* %1242 to double*
  store double %1254, double* %1255, align 1
  %1256 = getelementptr inbounds i8, i8* %1242, i64 8
  %1257 = bitcast i8* %1256 to i64*
  store i64 %1251, i64* %1257, align 1
  store %struct.Memory* %loadMem_401043, %struct.Memory** %MEMORY
  %loadMem_401047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1262 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1261, i64 0, i64 1
  %YMM1.i335 = bitcast %union.VectorReg* %1262 to %"class.std::bitset"*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1264 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1263, i64 0, i64 0
  %XMM0.i336 = bitcast %union.VectorReg* %1264 to %union.vec128_t*
  %1265 = bitcast %"class.std::bitset"* %YMM1.i335 to i8*
  %1266 = bitcast %"class.std::bitset"* %YMM1.i335 to i8*
  %1267 = bitcast %union.vec128_t* %XMM0.i336 to i8*
  %1268 = load i64, i64* %PC.i334
  %1269 = add i64 %1268, 4
  store i64 %1269, i64* %PC.i334
  %1270 = bitcast i8* %1266 to double*
  %1271 = load double, double* %1270, align 1
  %1272 = getelementptr inbounds i8, i8* %1266, i64 8
  %1273 = bitcast i8* %1272 to i64*
  %1274 = load i64, i64* %1273, align 1
  %1275 = bitcast i8* %1267 to double*
  %1276 = load double, double* %1275, align 1
  %1277 = fsub double %1271, %1276
  %1278 = bitcast i8* %1265 to double*
  store double %1277, double* %1278, align 1
  %1279 = getelementptr inbounds i8, i8* %1265, i64 8
  %1280 = bitcast i8* %1279 to i64*
  store i64 %1274, i64* %1280, align 1
  store %struct.Memory* %loadMem_401047, %struct.Memory** %MEMORY
  %loadMem_40104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 1
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 15
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %1289 to i64*
  %1290 = load i64, i64* %RBP.i333
  %1291 = sub i64 %1290, 32
  %1292 = load i64, i64* %PC.i331
  %1293 = add i64 %1292, 4
  store i64 %1293, i64* %PC.i331
  %1294 = inttoptr i64 %1291 to i64*
  %1295 = load i64, i64* %1294
  store i64 %1295, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_40104b, %struct.Memory** %MEMORY
  %loadMem_40104f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 5
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 15
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %1304 to i64*
  %1305 = load i64, i64* %RBP.i330
  %1306 = sub i64 %1305, 48
  %1307 = load i64, i64* %PC.i328
  %1308 = add i64 %1307, 4
  store i64 %1308, i64* %PC.i328
  %1309 = inttoptr i64 %1306 to i32*
  %1310 = load i32, i32* %1309
  %1311 = sext i32 %1310 to i64
  store i64 %1311, i64* %RCX.i329, align 8
  store %struct.Memory* %loadMem_40104f, %struct.Memory** %MEMORY
  %loadMem_401053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 5
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %RCX.i327
  %1319 = load i64, i64* %PC.i326
  %1320 = add i64 %1319, 7
  store i64 %1320, i64* %PC.i326
  %1321 = sext i64 %1318 to i128
  %1322 = and i128 %1321, -18446744073709551616
  %1323 = zext i64 %1318 to i128
  %1324 = or i128 %1322, %1323
  %1325 = mul i128 8000, %1324
  %1326 = trunc i128 %1325 to i64
  store i64 %1326, i64* %RCX.i327, align 8
  %1327 = sext i64 %1326 to i128
  %1328 = icmp ne i128 %1327, %1325
  %1329 = zext i1 %1328 to i8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1329, i8* %1330, align 1
  %1331 = trunc i128 %1325 to i32
  %1332 = and i32 %1331, 255
  %1333 = call i32 @llvm.ctpop.i32(i32 %1332)
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1336, i8* %1337, align 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1338, align 1
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1339, align 1
  %1340 = lshr i64 %1326, 63
  %1341 = trunc i64 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1341, i8* %1342, align 1
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1329, i8* %1343, align 1
  store %struct.Memory* %loadMem_401053, %struct.Memory** %MEMORY
  %loadMem_40105a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 33
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 1
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 5
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %1352 to i64*
  %1353 = load i64, i64* %RAX.i324
  %1354 = load i64, i64* %RCX.i325
  %1355 = load i64, i64* %PC.i323
  %1356 = add i64 %1355, 3
  store i64 %1356, i64* %PC.i323
  %1357 = add i64 %1354, %1353
  store i64 %1357, i64* %RAX.i324, align 8
  %1358 = icmp ult i64 %1357, %1353
  %1359 = icmp ult i64 %1357, %1354
  %1360 = or i1 %1358, %1359
  %1361 = zext i1 %1360 to i8
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1361, i8* %1362, align 1
  %1363 = trunc i64 %1357 to i32
  %1364 = and i32 %1363, 255
  %1365 = call i32 @llvm.ctpop.i32(i32 %1364)
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1368, i8* %1369, align 1
  %1370 = xor i64 %1354, %1353
  %1371 = xor i64 %1370, %1357
  %1372 = lshr i64 %1371, 4
  %1373 = trunc i64 %1372 to i8
  %1374 = and i8 %1373, 1
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1374, i8* %1375, align 1
  %1376 = icmp eq i64 %1357, 0
  %1377 = zext i1 %1376 to i8
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1377, i8* %1378, align 1
  %1379 = lshr i64 %1357, 63
  %1380 = trunc i64 %1379 to i8
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1380, i8* %1381, align 1
  %1382 = lshr i64 %1353, 63
  %1383 = lshr i64 %1354, 63
  %1384 = xor i64 %1379, %1382
  %1385 = xor i64 %1379, %1383
  %1386 = add i64 %1384, %1385
  %1387 = icmp eq i64 %1386, 2
  %1388 = zext i1 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1388, i8* %1389, align 1
  store %struct.Memory* %loadMem_40105a, %struct.Memory** %MEMORY
  %loadMem_40105d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 33
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 5
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 15
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %1398 to i64*
  %1399 = load i64, i64* %RBP.i322
  %1400 = sub i64 %1399, 52
  %1401 = load i64, i64* %PC.i320
  %1402 = add i64 %1401, 4
  store i64 %1402, i64* %PC.i320
  %1403 = inttoptr i64 %1400 to i32*
  %1404 = load i32, i32* %1403
  %1405 = sext i32 %1404 to i64
  store i64 %1405, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_40105d, %struct.Memory** %MEMORY
  %loadMem_401061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 1
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 5
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1416 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1415, i64 0, i64 1
  %XMM1.i319 = bitcast %union.VectorReg* %1416 to %union.vec128_t*
  %1417 = load i64, i64* %RAX.i317
  %1418 = load i64, i64* %RCX.i318
  %1419 = mul i64 %1418, 8
  %1420 = add i64 %1419, %1417
  %1421 = bitcast %union.vec128_t* %XMM1.i319 to i8*
  %1422 = load i64, i64* %PC.i316
  %1423 = add i64 %1422, 5
  store i64 %1423, i64* %PC.i316
  %1424 = bitcast i8* %1421 to double*
  %1425 = load double, double* %1424, align 1
  %1426 = inttoptr i64 %1420 to double*
  store double %1425, double* %1426
  store %struct.Memory* %loadMem_401061, %struct.Memory** %MEMORY
  %loadMem_401066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 1
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 15
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %1435 to i64*
  %1436 = load i64, i64* %RBP.i315
  %1437 = sub i64 %1436, 52
  %1438 = load i64, i64* %PC.i313
  %1439 = add i64 %1438, 3
  store i64 %1439, i64* %PC.i313
  %1440 = inttoptr i64 %1437 to i32*
  %1441 = load i32, i32* %1440
  %1442 = zext i32 %1441 to i64
  store i64 %1442, i64* %RAX.i314, align 8
  store %struct.Memory* %loadMem_401066, %struct.Memory** %MEMORY
  %loadMem_401069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 33
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 1
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %1448 to i64*
  %1449 = load i64, i64* %RAX.i312
  %1450 = load i64, i64* %PC.i311
  %1451 = add i64 %1450, 3
  store i64 %1451, i64* %PC.i311
  %1452 = trunc i64 %1449 to i32
  %1453 = add i32 1, %1452
  %1454 = zext i32 %1453 to i64
  store i64 %1454, i64* %RAX.i312, align 8
  %1455 = icmp ult i32 %1453, %1452
  %1456 = icmp ult i32 %1453, 1
  %1457 = or i1 %1455, %1456
  %1458 = zext i1 %1457 to i8
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1458, i8* %1459, align 1
  %1460 = and i32 %1453, 255
  %1461 = call i32 @llvm.ctpop.i32(i32 %1460)
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = xor i8 %1463, 1
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1464, i8* %1465, align 1
  %1466 = xor i64 1, %1449
  %1467 = trunc i64 %1466 to i32
  %1468 = xor i32 %1467, %1453
  %1469 = lshr i32 %1468, 4
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1471, i8* %1472, align 1
  %1473 = icmp eq i32 %1453, 0
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1474, i8* %1475, align 1
  %1476 = lshr i32 %1453, 31
  %1477 = trunc i32 %1476 to i8
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1477, i8* %1478, align 1
  %1479 = lshr i32 %1452, 31
  %1480 = xor i32 %1476, %1479
  %1481 = add i32 %1480, %1476
  %1482 = icmp eq i32 %1481, 2
  %1483 = zext i1 %1482 to i8
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1483, i8* %1484, align 1
  store %struct.Memory* %loadMem_401069, %struct.Memory** %MEMORY
  %loadMem_40106c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 33
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %1487 to i64*
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 1
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %EAX.i309 = bitcast %union.anon* %1490 to i32*
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 15
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %1493 to i64*
  %1494 = load i64, i64* %RBP.i310
  %1495 = sub i64 %1494, 52
  %1496 = load i32, i32* %EAX.i309
  %1497 = zext i32 %1496 to i64
  %1498 = load i64, i64* %PC.i308
  %1499 = add i64 %1498, 3
  store i64 %1499, i64* %PC.i308
  %1500 = inttoptr i64 %1495 to i32*
  store i32 %1496, i32* %1500
  store %struct.Memory* %loadMem_40106c, %struct.Memory** %MEMORY
  %loadMem_40106f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 33
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1503 to i64*
  %1504 = load i64, i64* %PC.i307
  %1505 = add i64 %1504, -150
  %1506 = load i64, i64* %PC.i307
  %1507 = add i64 %1506, 5
  store i64 %1507, i64* %PC.i307
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1505, i64* %1508, align 8
  store %struct.Memory* %loadMem_40106f, %struct.Memory** %MEMORY
  br label %block_.L_400fd9

block_.L_401074:                                  ; preds = %block_.L_400fd9
  %loadMem_401074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %PC.i306
  %1513 = add i64 %1512, 5
  %1514 = load i64, i64* %PC.i306
  %1515 = add i64 %1514, 5
  store i64 %1515, i64* %PC.i306
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1513, i64* %1516, align 8
  store %struct.Memory* %loadMem_401074, %struct.Memory** %MEMORY
  br label %block_.L_401079

block_.L_401079:                                  ; preds = %block_.L_401074
  %loadMem_401079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 1
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 15
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %1525 to i64*
  %1526 = load i64, i64* %RBP.i305
  %1527 = sub i64 %1526, 48
  %1528 = load i64, i64* %PC.i303
  %1529 = add i64 %1528, 3
  store i64 %1529, i64* %PC.i303
  %1530 = inttoptr i64 %1527 to i32*
  %1531 = load i32, i32* %1530
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_401079, %struct.Memory** %MEMORY
  %loadMem_40107c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 33
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1535 to i64*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 1
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %1538 to i64*
  %1539 = load i64, i64* %RAX.i302
  %1540 = load i64, i64* %PC.i301
  %1541 = add i64 %1540, 3
  store i64 %1541, i64* %PC.i301
  %1542 = trunc i64 %1539 to i32
  %1543 = add i32 1, %1542
  %1544 = zext i32 %1543 to i64
  store i64 %1544, i64* %RAX.i302, align 8
  %1545 = icmp ult i32 %1543, %1542
  %1546 = icmp ult i32 %1543, 1
  %1547 = or i1 %1545, %1546
  %1548 = zext i1 %1547 to i8
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1548, i8* %1549, align 1
  %1550 = and i32 %1543, 255
  %1551 = call i32 @llvm.ctpop.i32(i32 %1550)
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  %1554 = xor i8 %1553, 1
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1554, i8* %1555, align 1
  %1556 = xor i64 1, %1539
  %1557 = trunc i64 %1556 to i32
  %1558 = xor i32 %1557, %1543
  %1559 = lshr i32 %1558, 4
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1561, i8* %1562, align 1
  %1563 = icmp eq i32 %1543, 0
  %1564 = zext i1 %1563 to i8
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1564, i8* %1565, align 1
  %1566 = lshr i32 %1543, 31
  %1567 = trunc i32 %1566 to i8
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1567, i8* %1568, align 1
  %1569 = lshr i32 %1542, 31
  %1570 = xor i32 %1566, %1569
  %1571 = add i32 %1570, %1566
  %1572 = icmp eq i32 %1571, 2
  %1573 = zext i1 %1572 to i8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1573, i8* %1574, align 1
  store %struct.Memory* %loadMem_40107c, %struct.Memory** %MEMORY
  %loadMem_40107f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 1
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %EAX.i299 = bitcast %union.anon* %1580 to i32*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 15
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %1583 to i64*
  %1584 = load i64, i64* %RBP.i300
  %1585 = sub i64 %1584, 48
  %1586 = load i32, i32* %EAX.i299
  %1587 = zext i32 %1586 to i64
  %1588 = load i64, i64* %PC.i298
  %1589 = add i64 %1588, 3
  store i64 %1589, i64* %PC.i298
  %1590 = inttoptr i64 %1585 to i32*
  store i32 %1586, i32* %1590
  store %struct.Memory* %loadMem_40107f, %struct.Memory** %MEMORY
  %loadMem_401082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 33
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1593 to i64*
  %1594 = load i64, i64* %PC.i297
  %1595 = add i64 %1594, -188
  %1596 = load i64, i64* %PC.i297
  %1597 = add i64 %1596, 5
  store i64 %1597, i64* %PC.i297
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1595, i64* %1598, align 8
  store %struct.Memory* %loadMem_401082, %struct.Memory** %MEMORY
  br label %block_.L_400fc6

block_.L_401087:                                  ; preds = %block_.L_400fc6
  %loadMem_401087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 15
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %1604 to i64*
  %1605 = load i64, i64* %RBP.i296
  %1606 = sub i64 %1605, 48
  %1607 = load i64, i64* %PC.i295
  %1608 = add i64 %1607, 7
  store i64 %1608, i64* %PC.i295
  %1609 = inttoptr i64 %1606 to i32*
  store i32 0, i32* %1609
  store %struct.Memory* %loadMem_401087, %struct.Memory** %MEMORY
  br label %block_.L_40108e

block_.L_40108e:                                  ; preds = %block_.L_401141, %block_.L_401087
  %loadMem_40108e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 33
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1612 to i64*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 1
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %1615 to i64*
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 15
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %1618 to i64*
  %1619 = load i64, i64* %RBP.i294
  %1620 = sub i64 %1619, 48
  %1621 = load i64, i64* %PC.i292
  %1622 = add i64 %1621, 3
  store i64 %1622, i64* %PC.i292
  %1623 = inttoptr i64 %1620 to i32*
  %1624 = load i32, i32* %1623
  %1625 = zext i32 %1624 to i64
  store i64 %1625, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_40108e, %struct.Memory** %MEMORY
  %loadMem_401091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 33
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 1
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %EAX.i290 = bitcast %union.anon* %1631 to i32*
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 15
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %1634 to i64*
  %1635 = load i32, i32* %EAX.i290
  %1636 = zext i32 %1635 to i64
  %1637 = load i64, i64* %RBP.i291
  %1638 = sub i64 %1637, 8
  %1639 = load i64, i64* %PC.i289
  %1640 = add i64 %1639, 3
  store i64 %1640, i64* %PC.i289
  %1641 = inttoptr i64 %1638 to i32*
  %1642 = load i32, i32* %1641
  %1643 = sub i32 %1635, %1642
  %1644 = icmp ult i32 %1635, %1642
  %1645 = zext i1 %1644 to i8
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1645, i8* %1646, align 1
  %1647 = and i32 %1643, 255
  %1648 = call i32 @llvm.ctpop.i32(i32 %1647)
  %1649 = trunc i32 %1648 to i8
  %1650 = and i8 %1649, 1
  %1651 = xor i8 %1650, 1
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1651, i8* %1652, align 1
  %1653 = xor i32 %1642, %1635
  %1654 = xor i32 %1653, %1643
  %1655 = lshr i32 %1654, 4
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1657, i8* %1658, align 1
  %1659 = icmp eq i32 %1643, 0
  %1660 = zext i1 %1659 to i8
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1660, i8* %1661, align 1
  %1662 = lshr i32 %1643, 31
  %1663 = trunc i32 %1662 to i8
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1663, i8* %1664, align 1
  %1665 = lshr i32 %1635, 31
  %1666 = lshr i32 %1642, 31
  %1667 = xor i32 %1666, %1665
  %1668 = xor i32 %1662, %1665
  %1669 = add i32 %1668, %1667
  %1670 = icmp eq i32 %1669, 2
  %1671 = zext i1 %1670 to i8
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1671, i8* %1672, align 1
  store %struct.Memory* %loadMem_401091, %struct.Memory** %MEMORY
  %loadMem_401094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 33
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1675 to i64*
  %1676 = load i64, i64* %PC.i288
  %1677 = add i64 %1676, 187
  %1678 = load i64, i64* %PC.i288
  %1679 = add i64 %1678, 6
  %1680 = load i64, i64* %PC.i288
  %1681 = add i64 %1680, 6
  store i64 %1681, i64* %PC.i288
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1683 = load i8, i8* %1682, align 1
  %1684 = icmp ne i8 %1683, 0
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1686 = load i8, i8* %1685, align 1
  %1687 = icmp ne i8 %1686, 0
  %1688 = xor i1 %1684, %1687
  %1689 = xor i1 %1688, true
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %BRANCH_TAKEN, align 1
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1692 = select i1 %1688, i64 %1679, i64 %1677
  store i64 %1692, i64* %1691, align 8
  store %struct.Memory* %loadMem_401094, %struct.Memory** %MEMORY
  %loadBr_401094 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401094 = icmp eq i8 %loadBr_401094, 1
  br i1 %cmpBr_401094, label %block_.L_40114f, label %block_40109a

block_40109a:                                     ; preds = %block_.L_40108e
  %loadMem_40109a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 33
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 15
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %1698 to i64*
  %1699 = load i64, i64* %RBP.i287
  %1700 = sub i64 %1699, 52
  %1701 = load i64, i64* %PC.i286
  %1702 = add i64 %1701, 7
  store i64 %1702, i64* %PC.i286
  %1703 = inttoptr i64 %1700 to i32*
  store i32 1, i32* %1703
  store %struct.Memory* %loadMem_40109a, %struct.Memory** %MEMORY
  br label %block_.L_4010a1

block_.L_4010a1:                                  ; preds = %block_4010ad, %block_40109a
  %loadMem_4010a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 33
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1706 to i64*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 1
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 15
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %1712 to i64*
  %1713 = load i64, i64* %RBP.i285
  %1714 = sub i64 %1713, 52
  %1715 = load i64, i64* %PC.i283
  %1716 = add i64 %1715, 3
  store i64 %1716, i64* %PC.i283
  %1717 = inttoptr i64 %1714 to i32*
  %1718 = load i32, i32* %1717
  %1719 = zext i32 %1718 to i64
  store i64 %1719, i64* %RAX.i284, align 8
  store %struct.Memory* %loadMem_4010a1, %struct.Memory** %MEMORY
  %loadMem_4010a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 1
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %EAX.i281 = bitcast %union.anon* %1725 to i32*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 15
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %1728 to i64*
  %1729 = load i32, i32* %EAX.i281
  %1730 = zext i32 %1729 to i64
  %1731 = load i64, i64* %RBP.i282
  %1732 = sub i64 %1731, 12
  %1733 = load i64, i64* %PC.i280
  %1734 = add i64 %1733, 3
  store i64 %1734, i64* %PC.i280
  %1735 = inttoptr i64 %1732 to i32*
  %1736 = load i32, i32* %1735
  %1737 = sub i32 %1729, %1736
  %1738 = icmp ult i32 %1729, %1736
  %1739 = zext i1 %1738 to i8
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1739, i8* %1740, align 1
  %1741 = and i32 %1737, 255
  %1742 = call i32 @llvm.ctpop.i32(i32 %1741)
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  %1745 = xor i8 %1744, 1
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1745, i8* %1746, align 1
  %1747 = xor i32 %1736, %1729
  %1748 = xor i32 %1747, %1737
  %1749 = lshr i32 %1748, 4
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1751, i8* %1752, align 1
  %1753 = icmp eq i32 %1737, 0
  %1754 = zext i1 %1753 to i8
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1754, i8* %1755, align 1
  %1756 = lshr i32 %1737, 31
  %1757 = trunc i32 %1756 to i8
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1757, i8* %1758, align 1
  %1759 = lshr i32 %1729, 31
  %1760 = lshr i32 %1736, 31
  %1761 = xor i32 %1760, %1759
  %1762 = xor i32 %1756, %1759
  %1763 = add i32 %1762, %1761
  %1764 = icmp eq i32 %1763, 2
  %1765 = zext i1 %1764 to i8
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1765, i8* %1766, align 1
  store %struct.Memory* %loadMem_4010a4, %struct.Memory** %MEMORY
  %loadMem_4010a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 33
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1769 to i64*
  %1770 = load i64, i64* %PC.i279
  %1771 = add i64 %1770, 149
  %1772 = load i64, i64* %PC.i279
  %1773 = add i64 %1772, 6
  %1774 = load i64, i64* %PC.i279
  %1775 = add i64 %1774, 6
  store i64 %1775, i64* %PC.i279
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1777 = load i8, i8* %1776, align 1
  %1778 = icmp ne i8 %1777, 0
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1780 = load i8, i8* %1779, align 1
  %1781 = icmp ne i8 %1780, 0
  %1782 = xor i1 %1778, %1781
  %1783 = xor i1 %1782, true
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %BRANCH_TAKEN, align 1
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1786 = select i1 %1782, i64 %1773, i64 %1771
  store i64 %1786, i64* %1785, align 8
  store %struct.Memory* %loadMem_4010a7, %struct.Memory** %MEMORY
  %loadBr_4010a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4010a7 = icmp eq i8 %loadBr_4010a7, 1
  br i1 %cmpBr_4010a7, label %block_.L_40113c, label %block_4010ad

block_4010ad:                                     ; preds = %block_.L_4010a1
  %loadMem_4010ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1791 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1790, i64 0, i64 0
  %YMM0.i278 = bitcast %union.VectorReg* %1791 to %"class.std::bitset"*
  %1792 = bitcast %"class.std::bitset"* %YMM0.i278 to i8*
  %1793 = load i64, i64* %PC.i277
  %1794 = load i64, i64* %PC.i277
  %1795 = add i64 %1794, 8
  store i64 %1795, i64* %PC.i277
  %1796 = load double, double* bitcast (%G_0x5ab__rip__4198581__type* @G_0x5ab__rip__4198581_ to double*)
  %1797 = bitcast i8* %1792 to double*
  store double %1796, double* %1797, align 1
  %1798 = getelementptr inbounds i8, i8* %1792, i64 8
  %1799 = bitcast i8* %1798 to double*
  store double 0.000000e+00, double* %1799, align 1
  store %struct.Memory* %loadMem_4010ad, %struct.Memory** %MEMORY
  %loadMem_4010b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 33
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 1
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 15
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %1808 to i64*
  %1809 = load i64, i64* %RBP.i276
  %1810 = sub i64 %1809, 24
  %1811 = load i64, i64* %PC.i274
  %1812 = add i64 %1811, 4
  store i64 %1812, i64* %PC.i274
  %1813 = inttoptr i64 %1810 to i64*
  %1814 = load i64, i64* %1813
  store i64 %1814, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_4010b5, %struct.Memory** %MEMORY
  %loadMem_4010b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 33
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 5
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %1820 to i64*
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 15
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %1823 to i64*
  %1824 = load i64, i64* %RBP.i273
  %1825 = sub i64 %1824, 48
  %1826 = load i64, i64* %PC.i271
  %1827 = add i64 %1826, 4
  store i64 %1827, i64* %PC.i271
  %1828 = inttoptr i64 %1825 to i32*
  %1829 = load i32, i32* %1828
  %1830 = sext i32 %1829 to i64
  store i64 %1830, i64* %RCX.i272, align 8
  store %struct.Memory* %loadMem_4010b9, %struct.Memory** %MEMORY
  %loadMem_4010bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 33
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 5
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %1836 to i64*
  %1837 = load i64, i64* %RCX.i270
  %1838 = load i64, i64* %PC.i269
  %1839 = add i64 %1838, 7
  store i64 %1839, i64* %PC.i269
  %1840 = sext i64 %1837 to i128
  %1841 = and i128 %1840, -18446744073709551616
  %1842 = zext i64 %1837 to i128
  %1843 = or i128 %1841, %1842
  %1844 = mul i128 8000, %1843
  %1845 = trunc i128 %1844 to i64
  store i64 %1845, i64* %RCX.i270, align 8
  %1846 = sext i64 %1845 to i128
  %1847 = icmp ne i128 %1846, %1844
  %1848 = zext i1 %1847 to i8
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1848, i8* %1849, align 1
  %1850 = trunc i128 %1844 to i32
  %1851 = and i32 %1850, 255
  %1852 = call i32 @llvm.ctpop.i32(i32 %1851)
  %1853 = trunc i32 %1852 to i8
  %1854 = and i8 %1853, 1
  %1855 = xor i8 %1854, 1
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1855, i8* %1856, align 1
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1857, align 1
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1858, align 1
  %1859 = lshr i64 %1845, 63
  %1860 = trunc i64 %1859 to i8
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1860, i8* %1861, align 1
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1848, i8* %1862, align 1
  store %struct.Memory* %loadMem_4010bd, %struct.Memory** %MEMORY
  %loadMem_4010c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 1
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 5
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %RAX.i267
  %1873 = load i64, i64* %RCX.i268
  %1874 = load i64, i64* %PC.i266
  %1875 = add i64 %1874, 3
  store i64 %1875, i64* %PC.i266
  %1876 = add i64 %1873, %1872
  store i64 %1876, i64* %RAX.i267, align 8
  %1877 = icmp ult i64 %1876, %1872
  %1878 = icmp ult i64 %1876, %1873
  %1879 = or i1 %1877, %1878
  %1880 = zext i1 %1879 to i8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1880, i8* %1881, align 1
  %1882 = trunc i64 %1876 to i32
  %1883 = and i32 %1882, 255
  %1884 = call i32 @llvm.ctpop.i32(i32 %1883)
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1887, i8* %1888, align 1
  %1889 = xor i64 %1873, %1872
  %1890 = xor i64 %1889, %1876
  %1891 = lshr i64 %1890, 4
  %1892 = trunc i64 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1893, i8* %1894, align 1
  %1895 = icmp eq i64 %1876, 0
  %1896 = zext i1 %1895 to i8
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1896, i8* %1897, align 1
  %1898 = lshr i64 %1876, 63
  %1899 = trunc i64 %1898 to i8
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1899, i8* %1900, align 1
  %1901 = lshr i64 %1872, 63
  %1902 = lshr i64 %1873, 63
  %1903 = xor i64 %1898, %1901
  %1904 = xor i64 %1898, %1902
  %1905 = add i64 %1903, %1904
  %1906 = icmp eq i64 %1905, 2
  %1907 = zext i1 %1906 to i8
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1907, i8* %1908, align 1
  store %struct.Memory* %loadMem_4010c4, %struct.Memory** %MEMORY
  %loadMem_4010c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 33
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 5
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 15
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %1917 to i64*
  %1918 = load i64, i64* %RBP.i265
  %1919 = sub i64 %1918, 52
  %1920 = load i64, i64* %PC.i263
  %1921 = add i64 %1920, 4
  store i64 %1921, i64* %PC.i263
  %1922 = inttoptr i64 %1919 to i32*
  %1923 = load i32, i32* %1922
  %1924 = sext i32 %1923 to i64
  store i64 %1924, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_4010c7, %struct.Memory** %MEMORY
  %loadMem_4010cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 33
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 1
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 5
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1934, i64 0, i64 1
  %YMM1.i262 = bitcast %union.VectorReg* %1935 to %"class.std::bitset"*
  %1936 = bitcast %"class.std::bitset"* %YMM1.i262 to i8*
  %1937 = load i64, i64* %RAX.i260
  %1938 = load i64, i64* %RCX.i261
  %1939 = mul i64 %1938, 8
  %1940 = add i64 %1939, %1937
  %1941 = load i64, i64* %PC.i259
  %1942 = add i64 %1941, 5
  store i64 %1942, i64* %PC.i259
  %1943 = inttoptr i64 %1940 to double*
  %1944 = load double, double* %1943
  %1945 = bitcast i8* %1936 to double*
  store double %1944, double* %1945, align 1
  %1946 = getelementptr inbounds i8, i8* %1936, i64 8
  %1947 = bitcast i8* %1946 to double*
  store double 0.000000e+00, double* %1947, align 1
  store %struct.Memory* %loadMem_4010cb, %struct.Memory** %MEMORY
  %loadMem_4010d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 33
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1950 to i64*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 1
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %1953 to i64*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 15
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %1956 to i64*
  %1957 = load i64, i64* %RBP.i258
  %1958 = sub i64 %1957, 40
  %1959 = load i64, i64* %PC.i256
  %1960 = add i64 %1959, 4
  store i64 %1960, i64* %PC.i256
  %1961 = inttoptr i64 %1958 to i64*
  %1962 = load i64, i64* %1961
  store i64 %1962, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_4010d0, %struct.Memory** %MEMORY
  %loadMem_4010d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 5
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 15
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %RBP.i255
  %1973 = sub i64 %1972, 48
  %1974 = load i64, i64* %PC.i253
  %1975 = add i64 %1974, 4
  store i64 %1975, i64* %PC.i253
  %1976 = inttoptr i64 %1973 to i32*
  %1977 = load i32, i32* %1976
  %1978 = sext i32 %1977 to i64
  store i64 %1978, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_4010d4, %struct.Memory** %MEMORY
  %loadMem_4010d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 5
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %1984 to i64*
  %1985 = load i64, i64* %RCX.i252
  %1986 = load i64, i64* %PC.i251
  %1987 = add i64 %1986, 7
  store i64 %1987, i64* %PC.i251
  %1988 = sext i64 %1985 to i128
  %1989 = and i128 %1988, -18446744073709551616
  %1990 = zext i64 %1985 to i128
  %1991 = or i128 %1989, %1990
  %1992 = mul i128 8000, %1991
  %1993 = trunc i128 %1992 to i64
  store i64 %1993, i64* %RCX.i252, align 8
  %1994 = sext i64 %1993 to i128
  %1995 = icmp ne i128 %1994, %1992
  %1996 = zext i1 %1995 to i8
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1996, i8* %1997, align 1
  %1998 = trunc i128 %1992 to i32
  %1999 = and i32 %1998, 255
  %2000 = call i32 @llvm.ctpop.i32(i32 %1999)
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = xor i8 %2002, 1
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2003, i8* %2004, align 1
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2005, align 1
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2006, align 1
  %2007 = lshr i64 %1993, 63
  %2008 = trunc i64 %2007 to i8
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2008, i8* %2009, align 1
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1996, i8* %2010, align 1
  store %struct.Memory* %loadMem_4010d8, %struct.Memory** %MEMORY
  %loadMem_4010df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 33
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 1
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 5
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %RAX.i249
  %2021 = load i64, i64* %RCX.i250
  %2022 = load i64, i64* %PC.i248
  %2023 = add i64 %2022, 3
  store i64 %2023, i64* %PC.i248
  %2024 = add i64 %2021, %2020
  store i64 %2024, i64* %RAX.i249, align 8
  %2025 = icmp ult i64 %2024, %2020
  %2026 = icmp ult i64 %2024, %2021
  %2027 = or i1 %2025, %2026
  %2028 = zext i1 %2027 to i8
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2028, i8* %2029, align 1
  %2030 = trunc i64 %2024 to i32
  %2031 = and i32 %2030, 255
  %2032 = call i32 @llvm.ctpop.i32(i32 %2031)
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = xor i8 %2034, 1
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2035, i8* %2036, align 1
  %2037 = xor i64 %2021, %2020
  %2038 = xor i64 %2037, %2024
  %2039 = lshr i64 %2038, 4
  %2040 = trunc i64 %2039 to i8
  %2041 = and i8 %2040, 1
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2041, i8* %2042, align 1
  %2043 = icmp eq i64 %2024, 0
  %2044 = zext i1 %2043 to i8
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2044, i8* %2045, align 1
  %2046 = lshr i64 %2024, 63
  %2047 = trunc i64 %2046 to i8
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2047, i8* %2048, align 1
  %2049 = lshr i64 %2020, 63
  %2050 = lshr i64 %2021, 63
  %2051 = xor i64 %2046, %2049
  %2052 = xor i64 %2046, %2050
  %2053 = add i64 %2051, %2052
  %2054 = icmp eq i64 %2053, 2
  %2055 = zext i1 %2054 to i8
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2055, i8* %2056, align 1
  store %struct.Memory* %loadMem_4010df, %struct.Memory** %MEMORY
  %loadMem_4010e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 5
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 15
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %2065 to i64*
  %2066 = load i64, i64* %RBP.i247
  %2067 = sub i64 %2066, 52
  %2068 = load i64, i64* %PC.i245
  %2069 = add i64 %2068, 4
  store i64 %2069, i64* %PC.i245
  %2070 = inttoptr i64 %2067 to i32*
  %2071 = load i32, i32* %2070
  %2072 = sext i32 %2071 to i64
  store i64 %2072, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_4010e2, %struct.Memory** %MEMORY
  %loadMem_4010e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 33
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %2075 to i64*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 1
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %2078 to i64*
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 5
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2083 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2082, i64 0, i64 2
  %YMM2.i244 = bitcast %union.VectorReg* %2083 to %"class.std::bitset"*
  %2084 = bitcast %"class.std::bitset"* %YMM2.i244 to i8*
  %2085 = load i64, i64* %RAX.i242
  %2086 = load i64, i64* %RCX.i243
  %2087 = mul i64 %2086, 8
  %2088 = add i64 %2087, %2085
  %2089 = load i64, i64* %PC.i241
  %2090 = add i64 %2089, 5
  store i64 %2090, i64* %PC.i241
  %2091 = inttoptr i64 %2088 to double*
  %2092 = load double, double* %2091
  %2093 = bitcast i8* %2084 to double*
  store double %2092, double* %2093, align 1
  %2094 = getelementptr inbounds i8, i8* %2084, i64 8
  %2095 = bitcast i8* %2094 to double*
  store double 0.000000e+00, double* %2095, align 1
  store %struct.Memory* %loadMem_4010e6, %struct.Memory** %MEMORY
  %loadMem_4010eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 33
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2098 to i64*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 1
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %2101 to i64*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 15
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %2104 to i64*
  %2105 = load i64, i64* %RBP.i240
  %2106 = sub i64 %2105, 40
  %2107 = load i64, i64* %PC.i238
  %2108 = add i64 %2107, 4
  store i64 %2108, i64* %PC.i238
  %2109 = inttoptr i64 %2106 to i64*
  %2110 = load i64, i64* %2109
  store i64 %2110, i64* %RAX.i239, align 8
  store %struct.Memory* %loadMem_4010eb, %struct.Memory** %MEMORY
  %loadMem_4010ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 33
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2113 to i64*
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 5
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 15
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %2119 to i64*
  %2120 = load i64, i64* %RBP.i237
  %2121 = sub i64 %2120, 48
  %2122 = load i64, i64* %PC.i235
  %2123 = add i64 %2122, 4
  store i64 %2123, i64* %PC.i235
  %2124 = inttoptr i64 %2121 to i32*
  %2125 = load i32, i32* %2124
  %2126 = sext i32 %2125 to i64
  store i64 %2126, i64* %RCX.i236, align 8
  store %struct.Memory* %loadMem_4010ef, %struct.Memory** %MEMORY
  %loadMem_4010f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 33
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 5
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RCX.i234 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RCX.i234
  %2134 = load i64, i64* %PC.i233
  %2135 = add i64 %2134, 7
  store i64 %2135, i64* %PC.i233
  %2136 = sext i64 %2133 to i128
  %2137 = and i128 %2136, -18446744073709551616
  %2138 = zext i64 %2133 to i128
  %2139 = or i128 %2137, %2138
  %2140 = mul i128 8000, %2139
  %2141 = trunc i128 %2140 to i64
  store i64 %2141, i64* %RCX.i234, align 8
  %2142 = sext i64 %2141 to i128
  %2143 = icmp ne i128 %2142, %2140
  %2144 = zext i1 %2143 to i8
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2144, i8* %2145, align 1
  %2146 = trunc i128 %2140 to i32
  %2147 = and i32 %2146, 255
  %2148 = call i32 @llvm.ctpop.i32(i32 %2147)
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  %2151 = xor i8 %2150, 1
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2151, i8* %2152, align 1
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2153, align 1
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2154, align 1
  %2155 = lshr i64 %2141, 63
  %2156 = trunc i64 %2155 to i8
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2156, i8* %2157, align 1
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2144, i8* %2158, align 1
  store %struct.Memory* %loadMem_4010f3, %struct.Memory** %MEMORY
  %loadMem_4010fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 33
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 1
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 5
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RCX.i232 = bitcast %union.anon* %2167 to i64*
  %2168 = load i64, i64* %RAX.i231
  %2169 = load i64, i64* %RCX.i232
  %2170 = load i64, i64* %PC.i230
  %2171 = add i64 %2170, 3
  store i64 %2171, i64* %PC.i230
  %2172 = add i64 %2169, %2168
  store i64 %2172, i64* %RAX.i231, align 8
  %2173 = icmp ult i64 %2172, %2168
  %2174 = icmp ult i64 %2172, %2169
  %2175 = or i1 %2173, %2174
  %2176 = zext i1 %2175 to i8
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2176, i8* %2177, align 1
  %2178 = trunc i64 %2172 to i32
  %2179 = and i32 %2178, 255
  %2180 = call i32 @llvm.ctpop.i32(i32 %2179)
  %2181 = trunc i32 %2180 to i8
  %2182 = and i8 %2181, 1
  %2183 = xor i8 %2182, 1
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2183, i8* %2184, align 1
  %2185 = xor i64 %2169, %2168
  %2186 = xor i64 %2185, %2172
  %2187 = lshr i64 %2186, 4
  %2188 = trunc i64 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2189, i8* %2190, align 1
  %2191 = icmp eq i64 %2172, 0
  %2192 = zext i1 %2191 to i8
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2192, i8* %2193, align 1
  %2194 = lshr i64 %2172, 63
  %2195 = trunc i64 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2195, i8* %2196, align 1
  %2197 = lshr i64 %2168, 63
  %2198 = lshr i64 %2169, 63
  %2199 = xor i64 %2194, %2197
  %2200 = xor i64 %2194, %2198
  %2201 = add i64 %2199, %2200
  %2202 = icmp eq i64 %2201, 2
  %2203 = zext i1 %2202 to i8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2203, i8* %2204, align 1
  store %struct.Memory* %loadMem_4010fa, %struct.Memory** %MEMORY
  %loadMem_4010fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 7
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RDX.i228 = bitcast %union.anon* %2210 to i64*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 15
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2213 to i64*
  %2214 = load i64, i64* %RBP.i229
  %2215 = sub i64 %2214, 52
  %2216 = load i64, i64* %PC.i227
  %2217 = add i64 %2216, 3
  store i64 %2217, i64* %PC.i227
  %2218 = inttoptr i64 %2215 to i32*
  %2219 = load i32, i32* %2218
  %2220 = zext i32 %2219 to i64
  store i64 %2220, i64* %RDX.i228, align 8
  store %struct.Memory* %loadMem_4010fd, %struct.Memory** %MEMORY
  %loadMem_401100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 33
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2223 to i64*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 7
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %RDX.i226 = bitcast %union.anon* %2226 to i64*
  %2227 = load i64, i64* %RDX.i226
  %2228 = load i64, i64* %PC.i225
  %2229 = add i64 %2228, 3
  store i64 %2229, i64* %PC.i225
  %2230 = trunc i64 %2227 to i32
  %2231 = sub i32 %2230, 1
  %2232 = zext i32 %2231 to i64
  store i64 %2232, i64* %RDX.i226, align 8
  %2233 = icmp ult i32 %2230, 1
  %2234 = zext i1 %2233 to i8
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2234, i8* %2235, align 1
  %2236 = and i32 %2231, 255
  %2237 = call i32 @llvm.ctpop.i32(i32 %2236)
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  %2240 = xor i8 %2239, 1
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2240, i8* %2241, align 1
  %2242 = xor i64 1, %2227
  %2243 = trunc i64 %2242 to i32
  %2244 = xor i32 %2243, %2231
  %2245 = lshr i32 %2244, 4
  %2246 = trunc i32 %2245 to i8
  %2247 = and i8 %2246, 1
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2247, i8* %2248, align 1
  %2249 = icmp eq i32 %2231, 0
  %2250 = zext i1 %2249 to i8
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2250, i8* %2251, align 1
  %2252 = lshr i32 %2231, 31
  %2253 = trunc i32 %2252 to i8
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2253, i8* %2254, align 1
  %2255 = lshr i32 %2230, 31
  %2256 = xor i32 %2252, %2255
  %2257 = add i32 %2256, %2255
  %2258 = icmp eq i32 %2257, 2
  %2259 = zext i1 %2258 to i8
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2259, i8* %2260, align 1
  store %struct.Memory* %loadMem_401100, %struct.Memory** %MEMORY
  %loadMem_401103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 33
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2263 to i64*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 7
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %EDX.i223 = bitcast %union.anon* %2266 to i32*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 5
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RCX.i224 = bitcast %union.anon* %2269 to i64*
  %2270 = load i32, i32* %EDX.i223
  %2271 = zext i32 %2270 to i64
  %2272 = load i64, i64* %PC.i222
  %2273 = add i64 %2272, 3
  store i64 %2273, i64* %PC.i222
  %2274 = shl i64 %2271, 32
  %2275 = ashr exact i64 %2274, 32
  store i64 %2275, i64* %RCX.i224, align 8
  store %struct.Memory* %loadMem_401103, %struct.Memory** %MEMORY
  %loadMem_401106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 33
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2278 to i64*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 1
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %2281 to i64*
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 5
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2286 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2285, i64 0, i64 2
  %YMM2.i221 = bitcast %union.VectorReg* %2286 to %"class.std::bitset"*
  %2287 = bitcast %"class.std::bitset"* %YMM2.i221 to i8*
  %2288 = bitcast %"class.std::bitset"* %YMM2.i221 to i8*
  %2289 = load i64, i64* %RAX.i219
  %2290 = load i64, i64* %RCX.i220
  %2291 = mul i64 %2290, 8
  %2292 = add i64 %2291, %2289
  %2293 = load i64, i64* %PC.i218
  %2294 = add i64 %2293, 5
  store i64 %2294, i64* %PC.i218
  %2295 = bitcast i8* %2288 to double*
  %2296 = load double, double* %2295, align 1
  %2297 = getelementptr inbounds i8, i8* %2288, i64 8
  %2298 = bitcast i8* %2297 to i64*
  %2299 = load i64, i64* %2298, align 1
  %2300 = inttoptr i64 %2292 to double*
  %2301 = load double, double* %2300
  %2302 = fsub double %2296, %2301
  %2303 = bitcast i8* %2287 to double*
  store double %2302, double* %2303, align 1
  %2304 = getelementptr inbounds i8, i8* %2287, i64 8
  %2305 = bitcast i8* %2304 to i64*
  store i64 %2299, i64* %2305, align 1
  store %struct.Memory* %loadMem_401106, %struct.Memory** %MEMORY
  %loadMem_40110b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 33
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2308 to i64*
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2310 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2309, i64 0, i64 0
  %YMM0.i216 = bitcast %union.VectorReg* %2310 to %"class.std::bitset"*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2312 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2311, i64 0, i64 2
  %XMM2.i217 = bitcast %union.VectorReg* %2312 to %union.vec128_t*
  %2313 = bitcast %"class.std::bitset"* %YMM0.i216 to i8*
  %2314 = bitcast %"class.std::bitset"* %YMM0.i216 to i8*
  %2315 = bitcast %union.vec128_t* %XMM2.i217 to i8*
  %2316 = load i64, i64* %PC.i215
  %2317 = add i64 %2316, 4
  store i64 %2317, i64* %PC.i215
  %2318 = bitcast i8* %2314 to double*
  %2319 = load double, double* %2318, align 1
  %2320 = getelementptr inbounds i8, i8* %2314, i64 8
  %2321 = bitcast i8* %2320 to i64*
  %2322 = load i64, i64* %2321, align 1
  %2323 = bitcast i8* %2315 to double*
  %2324 = load double, double* %2323, align 1
  %2325 = fmul double %2319, %2324
  %2326 = bitcast i8* %2313 to double*
  store double %2325, double* %2326, align 1
  %2327 = getelementptr inbounds i8, i8* %2313, i64 8
  %2328 = bitcast i8* %2327 to i64*
  store i64 %2322, i64* %2328, align 1
  store %struct.Memory* %loadMem_40110b, %struct.Memory** %MEMORY
  %loadMem_40110f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2332, i64 0, i64 1
  %YMM1.i213 = bitcast %union.VectorReg* %2333 to %"class.std::bitset"*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2335 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2334, i64 0, i64 0
  %XMM0.i214 = bitcast %union.VectorReg* %2335 to %union.vec128_t*
  %2336 = bitcast %"class.std::bitset"* %YMM1.i213 to i8*
  %2337 = bitcast %"class.std::bitset"* %YMM1.i213 to i8*
  %2338 = bitcast %union.vec128_t* %XMM0.i214 to i8*
  %2339 = load i64, i64* %PC.i212
  %2340 = add i64 %2339, 4
  store i64 %2340, i64* %PC.i212
  %2341 = bitcast i8* %2337 to double*
  %2342 = load double, double* %2341, align 1
  %2343 = getelementptr inbounds i8, i8* %2337, i64 8
  %2344 = bitcast i8* %2343 to i64*
  %2345 = load i64, i64* %2344, align 1
  %2346 = bitcast i8* %2338 to double*
  %2347 = load double, double* %2346, align 1
  %2348 = fsub double %2342, %2347
  %2349 = bitcast i8* %2336 to double*
  store double %2348, double* %2349, align 1
  %2350 = getelementptr inbounds i8, i8* %2336, i64 8
  %2351 = bitcast i8* %2350 to i64*
  store i64 %2345, i64* %2351, align 1
  store %struct.Memory* %loadMem_40110f, %struct.Memory** %MEMORY
  %loadMem_401113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 1
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 15
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %2360 to i64*
  %2361 = load i64, i64* %RBP.i211
  %2362 = sub i64 %2361, 24
  %2363 = load i64, i64* %PC.i209
  %2364 = add i64 %2363, 4
  store i64 %2364, i64* %PC.i209
  %2365 = inttoptr i64 %2362 to i64*
  %2366 = load i64, i64* %2365
  store i64 %2366, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_401113, %struct.Memory** %MEMORY
  %loadMem_401117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 33
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 5
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %2372 to i64*
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 15
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %2375 to i64*
  %2376 = load i64, i64* %RBP.i208
  %2377 = sub i64 %2376, 48
  %2378 = load i64, i64* %PC.i206
  %2379 = add i64 %2378, 4
  store i64 %2379, i64* %PC.i206
  %2380 = inttoptr i64 %2377 to i32*
  %2381 = load i32, i32* %2380
  %2382 = sext i32 %2381 to i64
  store i64 %2382, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_401117, %struct.Memory** %MEMORY
  %loadMem_40111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 33
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 5
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %2388 to i64*
  %2389 = load i64, i64* %RCX.i205
  %2390 = load i64, i64* %PC.i204
  %2391 = add i64 %2390, 7
  store i64 %2391, i64* %PC.i204
  %2392 = sext i64 %2389 to i128
  %2393 = and i128 %2392, -18446744073709551616
  %2394 = zext i64 %2389 to i128
  %2395 = or i128 %2393, %2394
  %2396 = mul i128 8000, %2395
  %2397 = trunc i128 %2396 to i64
  store i64 %2397, i64* %RCX.i205, align 8
  %2398 = sext i64 %2397 to i128
  %2399 = icmp ne i128 %2398, %2396
  %2400 = zext i1 %2399 to i8
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2400, i8* %2401, align 1
  %2402 = trunc i128 %2396 to i32
  %2403 = and i32 %2402, 255
  %2404 = call i32 @llvm.ctpop.i32(i32 %2403)
  %2405 = trunc i32 %2404 to i8
  %2406 = and i8 %2405, 1
  %2407 = xor i8 %2406, 1
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2407, i8* %2408, align 1
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2409, align 1
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2410, align 1
  %2411 = lshr i64 %2397, 63
  %2412 = trunc i64 %2411 to i8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2412, i8* %2413, align 1
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2400, i8* %2414, align 1
  store %struct.Memory* %loadMem_40111b, %struct.Memory** %MEMORY
  %loadMem_401122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 33
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 1
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %2420 to i64*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 5
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %2423 to i64*
  %2424 = load i64, i64* %RAX.i202
  %2425 = load i64, i64* %RCX.i203
  %2426 = load i64, i64* %PC.i201
  %2427 = add i64 %2426, 3
  store i64 %2427, i64* %PC.i201
  %2428 = add i64 %2425, %2424
  store i64 %2428, i64* %RAX.i202, align 8
  %2429 = icmp ult i64 %2428, %2424
  %2430 = icmp ult i64 %2428, %2425
  %2431 = or i1 %2429, %2430
  %2432 = zext i1 %2431 to i8
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2432, i8* %2433, align 1
  %2434 = trunc i64 %2428 to i32
  %2435 = and i32 %2434, 255
  %2436 = call i32 @llvm.ctpop.i32(i32 %2435)
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  %2439 = xor i8 %2438, 1
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2439, i8* %2440, align 1
  %2441 = xor i64 %2425, %2424
  %2442 = xor i64 %2441, %2428
  %2443 = lshr i64 %2442, 4
  %2444 = trunc i64 %2443 to i8
  %2445 = and i8 %2444, 1
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2445, i8* %2446, align 1
  %2447 = icmp eq i64 %2428, 0
  %2448 = zext i1 %2447 to i8
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2448, i8* %2449, align 1
  %2450 = lshr i64 %2428, 63
  %2451 = trunc i64 %2450 to i8
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2451, i8* %2452, align 1
  %2453 = lshr i64 %2424, 63
  %2454 = lshr i64 %2425, 63
  %2455 = xor i64 %2450, %2453
  %2456 = xor i64 %2450, %2454
  %2457 = add i64 %2455, %2456
  %2458 = icmp eq i64 %2457, 2
  %2459 = zext i1 %2458 to i8
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2459, i8* %2460, align 1
  store %struct.Memory* %loadMem_401122, %struct.Memory** %MEMORY
  %loadMem_401125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 5
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 15
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RBP.i200
  %2471 = sub i64 %2470, 52
  %2472 = load i64, i64* %PC.i198
  %2473 = add i64 %2472, 4
  store i64 %2473, i64* %PC.i198
  %2474 = inttoptr i64 %2471 to i32*
  %2475 = load i32, i32* %2474
  %2476 = sext i32 %2475 to i64
  store i64 %2476, i64* %RCX.i199, align 8
  store %struct.Memory* %loadMem_401125, %struct.Memory** %MEMORY
  %loadMem_401129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 33
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 1
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 5
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2487 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2486, i64 0, i64 1
  %XMM1.i197 = bitcast %union.VectorReg* %2487 to %union.vec128_t*
  %2488 = load i64, i64* %RAX.i195
  %2489 = load i64, i64* %RCX.i196
  %2490 = mul i64 %2489, 8
  %2491 = add i64 %2490, %2488
  %2492 = bitcast %union.vec128_t* %XMM1.i197 to i8*
  %2493 = load i64, i64* %PC.i194
  %2494 = add i64 %2493, 5
  store i64 %2494, i64* %PC.i194
  %2495 = bitcast i8* %2492 to double*
  %2496 = load double, double* %2495, align 1
  %2497 = inttoptr i64 %2491 to double*
  store double %2496, double* %2497
  store %struct.Memory* %loadMem_401129, %struct.Memory** %MEMORY
  %loadMem_40112e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 1
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 15
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %2506 to i64*
  %2507 = load i64, i64* %RBP.i193
  %2508 = sub i64 %2507, 52
  %2509 = load i64, i64* %PC.i191
  %2510 = add i64 %2509, 3
  store i64 %2510, i64* %PC.i191
  %2511 = inttoptr i64 %2508 to i32*
  %2512 = load i32, i32* %2511
  %2513 = zext i32 %2512 to i64
  store i64 %2513, i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_40112e, %struct.Memory** %MEMORY
  %loadMem_401131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 1
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %2519 to i64*
  %2520 = load i64, i64* %RAX.i190
  %2521 = load i64, i64* %PC.i189
  %2522 = add i64 %2521, 3
  store i64 %2522, i64* %PC.i189
  %2523 = trunc i64 %2520 to i32
  %2524 = add i32 1, %2523
  %2525 = zext i32 %2524 to i64
  store i64 %2525, i64* %RAX.i190, align 8
  %2526 = icmp ult i32 %2524, %2523
  %2527 = icmp ult i32 %2524, 1
  %2528 = or i1 %2526, %2527
  %2529 = zext i1 %2528 to i8
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2529, i8* %2530, align 1
  %2531 = and i32 %2524, 255
  %2532 = call i32 @llvm.ctpop.i32(i32 %2531)
  %2533 = trunc i32 %2532 to i8
  %2534 = and i8 %2533, 1
  %2535 = xor i8 %2534, 1
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2535, i8* %2536, align 1
  %2537 = xor i64 1, %2520
  %2538 = trunc i64 %2537 to i32
  %2539 = xor i32 %2538, %2524
  %2540 = lshr i32 %2539, 4
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2542, i8* %2543, align 1
  %2544 = icmp eq i32 %2524, 0
  %2545 = zext i1 %2544 to i8
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2545, i8* %2546, align 1
  %2547 = lshr i32 %2524, 31
  %2548 = trunc i32 %2547 to i8
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2548, i8* %2549, align 1
  %2550 = lshr i32 %2523, 31
  %2551 = xor i32 %2547, %2550
  %2552 = add i32 %2551, %2547
  %2553 = icmp eq i32 %2552, 2
  %2554 = zext i1 %2553 to i8
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2554, i8* %2555, align 1
  store %struct.Memory* %loadMem_401131, %struct.Memory** %MEMORY
  %loadMem_401134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 1
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %EAX.i187 = bitcast %union.anon* %2561 to i32*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 15
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %2564 to i64*
  %2565 = load i64, i64* %RBP.i188
  %2566 = sub i64 %2565, 52
  %2567 = load i32, i32* %EAX.i187
  %2568 = zext i32 %2567 to i64
  %2569 = load i64, i64* %PC.i186
  %2570 = add i64 %2569, 3
  store i64 %2570, i64* %PC.i186
  %2571 = inttoptr i64 %2566 to i32*
  store i32 %2567, i32* %2571
  store %struct.Memory* %loadMem_401134, %struct.Memory** %MEMORY
  %loadMem_401137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 33
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2574 to i64*
  %2575 = load i64, i64* %PC.i185
  %2576 = add i64 %2575, -150
  %2577 = load i64, i64* %PC.i185
  %2578 = add i64 %2577, 5
  store i64 %2578, i64* %PC.i185
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2576, i64* %2579, align 8
  store %struct.Memory* %loadMem_401137, %struct.Memory** %MEMORY
  br label %block_.L_4010a1

block_.L_40113c:                                  ; preds = %block_.L_4010a1
  %loadMem_40113c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2582 to i64*
  %2583 = load i64, i64* %PC.i184
  %2584 = add i64 %2583, 5
  %2585 = load i64, i64* %PC.i184
  %2586 = add i64 %2585, 5
  store i64 %2586, i64* %PC.i184
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2584, i64* %2587, align 8
  store %struct.Memory* %loadMem_40113c, %struct.Memory** %MEMORY
  br label %block_.L_401141

block_.L_401141:                                  ; preds = %block_.L_40113c
  %loadMem_401141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 33
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 1
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 15
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %2596 to i64*
  %2597 = load i64, i64* %RBP.i183
  %2598 = sub i64 %2597, 48
  %2599 = load i64, i64* %PC.i181
  %2600 = add i64 %2599, 3
  store i64 %2600, i64* %PC.i181
  %2601 = inttoptr i64 %2598 to i32*
  %2602 = load i32, i32* %2601
  %2603 = zext i32 %2602 to i64
  store i64 %2603, i64* %RAX.i182, align 8
  store %struct.Memory* %loadMem_401141, %struct.Memory** %MEMORY
  %loadMem_401144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 1
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %2609 to i64*
  %2610 = load i64, i64* %RAX.i180
  %2611 = load i64, i64* %PC.i179
  %2612 = add i64 %2611, 3
  store i64 %2612, i64* %PC.i179
  %2613 = trunc i64 %2610 to i32
  %2614 = add i32 1, %2613
  %2615 = zext i32 %2614 to i64
  store i64 %2615, i64* %RAX.i180, align 8
  %2616 = icmp ult i32 %2614, %2613
  %2617 = icmp ult i32 %2614, 1
  %2618 = or i1 %2616, %2617
  %2619 = zext i1 %2618 to i8
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2619, i8* %2620, align 1
  %2621 = and i32 %2614, 255
  %2622 = call i32 @llvm.ctpop.i32(i32 %2621)
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  %2625 = xor i8 %2624, 1
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2625, i8* %2626, align 1
  %2627 = xor i64 1, %2610
  %2628 = trunc i64 %2627 to i32
  %2629 = xor i32 %2628, %2614
  %2630 = lshr i32 %2629, 4
  %2631 = trunc i32 %2630 to i8
  %2632 = and i8 %2631, 1
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2632, i8* %2633, align 1
  %2634 = icmp eq i32 %2614, 0
  %2635 = zext i1 %2634 to i8
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2635, i8* %2636, align 1
  %2637 = lshr i32 %2614, 31
  %2638 = trunc i32 %2637 to i8
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2638, i8* %2639, align 1
  %2640 = lshr i32 %2613, 31
  %2641 = xor i32 %2637, %2640
  %2642 = add i32 %2641, %2637
  %2643 = icmp eq i32 %2642, 2
  %2644 = zext i1 %2643 to i8
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2644, i8* %2645, align 1
  store %struct.Memory* %loadMem_401144, %struct.Memory** %MEMORY
  %loadMem_401147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 33
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2648 to i64*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 1
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %EAX.i177 = bitcast %union.anon* %2651 to i32*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 15
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %2654 to i64*
  %2655 = load i64, i64* %RBP.i178
  %2656 = sub i64 %2655, 48
  %2657 = load i32, i32* %EAX.i177
  %2658 = zext i32 %2657 to i64
  %2659 = load i64, i64* %PC.i176
  %2660 = add i64 %2659, 3
  store i64 %2660, i64* %PC.i176
  %2661 = inttoptr i64 %2656 to i32*
  store i32 %2657, i32* %2661
  store %struct.Memory* %loadMem_401147, %struct.Memory** %MEMORY
  %loadMem_40114a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 33
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %2664 to i64*
  %2665 = load i64, i64* %PC.i175
  %2666 = add i64 %2665, -188
  %2667 = load i64, i64* %PC.i175
  %2668 = add i64 %2667, 5
  store i64 %2668, i64* %PC.i175
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2666, i64* %2669, align 8
  store %struct.Memory* %loadMem_40114a, %struct.Memory** %MEMORY
  br label %block_.L_40108e

block_.L_40114f:                                  ; preds = %block_.L_40108e
  %loadMem_40114f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 33
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 15
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %2675 to i64*
  %2676 = load i64, i64* %RBP.i174
  %2677 = sub i64 %2676, 48
  %2678 = load i64, i64* %PC.i173
  %2679 = add i64 %2678, 7
  store i64 %2679, i64* %PC.i173
  %2680 = inttoptr i64 %2677 to i32*
  store i32 0, i32* %2680
  store %struct.Memory* %loadMem_40114f, %struct.Memory** %MEMORY
  br label %block_.L_401156

block_.L_401156:                                  ; preds = %block_.L_40124e, %block_.L_40114f
  %loadMem_401156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 33
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 1
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %2686 to i64*
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 15
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2689 to i64*
  %2690 = load i64, i64* %RBP.i172
  %2691 = sub i64 %2690, 48
  %2692 = load i64, i64* %PC.i170
  %2693 = add i64 %2692, 3
  store i64 %2693, i64* %PC.i170
  %2694 = inttoptr i64 %2691 to i32*
  %2695 = load i32, i32* %2694
  %2696 = zext i32 %2695 to i64
  store i64 %2696, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_401156, %struct.Memory** %MEMORY
  %loadMem_401159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 33
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2699 to i64*
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 5
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %2702 to i64*
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 15
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2705 to i64*
  %2706 = load i64, i64* %RBP.i169
  %2707 = sub i64 %2706, 8
  %2708 = load i64, i64* %PC.i167
  %2709 = add i64 %2708, 3
  store i64 %2709, i64* %PC.i167
  %2710 = inttoptr i64 %2707 to i32*
  %2711 = load i32, i32* %2710
  %2712 = zext i32 %2711 to i64
  store i64 %2712, i64* %RCX.i168, align 8
  store %struct.Memory* %loadMem_401159, %struct.Memory** %MEMORY
  %loadMem_40115c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 33
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2715 to i64*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 5
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %2718 to i64*
  %2719 = load i64, i64* %RCX.i166
  %2720 = load i64, i64* %PC.i165
  %2721 = add i64 %2720, 3
  store i64 %2721, i64* %PC.i165
  %2722 = trunc i64 %2719 to i32
  %2723 = sub i32 %2722, 1
  %2724 = zext i32 %2723 to i64
  store i64 %2724, i64* %RCX.i166, align 8
  %2725 = icmp ult i32 %2722, 1
  %2726 = zext i1 %2725 to i8
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2726, i8* %2727, align 1
  %2728 = and i32 %2723, 255
  %2729 = call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2732, i8* %2733, align 1
  %2734 = xor i64 1, %2719
  %2735 = trunc i64 %2734 to i32
  %2736 = xor i32 %2735, %2723
  %2737 = lshr i32 %2736, 4
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2739, i8* %2740, align 1
  %2741 = icmp eq i32 %2723, 0
  %2742 = zext i1 %2741 to i8
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2742, i8* %2743, align 1
  %2744 = lshr i32 %2723, 31
  %2745 = trunc i32 %2744 to i8
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2745, i8* %2746, align 1
  %2747 = lshr i32 %2722, 31
  %2748 = xor i32 %2744, %2747
  %2749 = add i32 %2748, %2747
  %2750 = icmp eq i32 %2749, 2
  %2751 = zext i1 %2750 to i8
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2751, i8* %2752, align 1
  store %struct.Memory* %loadMem_40115c, %struct.Memory** %MEMORY
  %loadMem_40115f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2755 to i64*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 1
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %2758 to i32*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 5
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %ECX.i164 = bitcast %union.anon* %2761 to i32*
  %2762 = load i32, i32* %EAX.i163
  %2763 = zext i32 %2762 to i64
  %2764 = load i32, i32* %ECX.i164
  %2765 = zext i32 %2764 to i64
  %2766 = load i64, i64* %PC.i162
  %2767 = add i64 %2766, 2
  store i64 %2767, i64* %PC.i162
  %2768 = sub i32 %2762, %2764
  %2769 = icmp ult i32 %2762, %2764
  %2770 = zext i1 %2769 to i8
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2770, i8* %2771, align 1
  %2772 = and i32 %2768, 255
  %2773 = call i32 @llvm.ctpop.i32(i32 %2772)
  %2774 = trunc i32 %2773 to i8
  %2775 = and i8 %2774, 1
  %2776 = xor i8 %2775, 1
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2776, i8* %2777, align 1
  %2778 = xor i64 %2765, %2763
  %2779 = trunc i64 %2778 to i32
  %2780 = xor i32 %2779, %2768
  %2781 = lshr i32 %2780, 4
  %2782 = trunc i32 %2781 to i8
  %2783 = and i8 %2782, 1
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2783, i8* %2784, align 1
  %2785 = icmp eq i32 %2768, 0
  %2786 = zext i1 %2785 to i8
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2786, i8* %2787, align 1
  %2788 = lshr i32 %2768, 31
  %2789 = trunc i32 %2788 to i8
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2789, i8* %2790, align 1
  %2791 = lshr i32 %2762, 31
  %2792 = lshr i32 %2764, 31
  %2793 = xor i32 %2792, %2791
  %2794 = xor i32 %2788, %2791
  %2795 = add i32 %2794, %2793
  %2796 = icmp eq i32 %2795, 2
  %2797 = zext i1 %2796 to i8
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2797, i8* %2798, align 1
  store %struct.Memory* %loadMem_40115f, %struct.Memory** %MEMORY
  %loadMem_401161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 33
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2801 to i64*
  %2802 = load i64, i64* %PC.i161
  %2803 = add i64 %2802, 251
  %2804 = load i64, i64* %PC.i161
  %2805 = add i64 %2804, 6
  %2806 = load i64, i64* %PC.i161
  %2807 = add i64 %2806, 6
  store i64 %2807, i64* %PC.i161
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2809 = load i8, i8* %2808, align 1
  %2810 = icmp ne i8 %2809, 0
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2812 = load i8, i8* %2811, align 1
  %2813 = icmp ne i8 %2812, 0
  %2814 = xor i1 %2810, %2813
  %2815 = xor i1 %2814, true
  %2816 = zext i1 %2815 to i8
  store i8 %2816, i8* %BRANCH_TAKEN, align 1
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2818 = select i1 %2814, i64 %2805, i64 %2803
  store i64 %2818, i64* %2817, align 8
  store %struct.Memory* %loadMem_401161, %struct.Memory** %MEMORY
  %loadBr_401161 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401161 = icmp eq i8 %loadBr_401161, 1
  br i1 %cmpBr_401161, label %block_.L_40125c, label %block_401167

block_401167:                                     ; preds = %block_.L_401156
  %loadMem_401167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 33
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 15
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %2824 to i64*
  %2825 = load i64, i64* %RBP.i160
  %2826 = sub i64 %2825, 52
  %2827 = load i64, i64* %PC.i159
  %2828 = add i64 %2827, 7
  store i64 %2828, i64* %PC.i159
  %2829 = inttoptr i64 %2826 to i32*
  store i32 0, i32* %2829
  store %struct.Memory* %loadMem_401167, %struct.Memory** %MEMORY
  br label %block_.L_40116e

block_.L_40116e:                                  ; preds = %block_40117f, %block_401167
  %loadMem_40116e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 33
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2832 to i64*
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 1
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %2835 to i64*
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 15
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %2838 to i64*
  %2839 = load i64, i64* %RBP.i158
  %2840 = sub i64 %2839, 52
  %2841 = load i64, i64* %PC.i156
  %2842 = add i64 %2841, 3
  store i64 %2842, i64* %PC.i156
  %2843 = inttoptr i64 %2840 to i32*
  %2844 = load i32, i32* %2843
  %2845 = zext i32 %2844 to i64
  store i64 %2845, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_40116e, %struct.Memory** %MEMORY
  %loadMem_401171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 33
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 5
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %2851 to i64*
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 15
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %2854 to i64*
  %2855 = load i64, i64* %RBP.i155
  %2856 = sub i64 %2855, 12
  %2857 = load i64, i64* %PC.i153
  %2858 = add i64 %2857, 3
  store i64 %2858, i64* %PC.i153
  %2859 = inttoptr i64 %2856 to i32*
  %2860 = load i32, i32* %2859
  %2861 = zext i32 %2860 to i64
  store i64 %2861, i64* %RCX.i154, align 8
  store %struct.Memory* %loadMem_401171, %struct.Memory** %MEMORY
  %loadMem_401174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 33
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2864 to i64*
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 5
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %2867 to i64*
  %2868 = load i64, i64* %RCX.i152
  %2869 = load i64, i64* %PC.i151
  %2870 = add i64 %2869, 3
  store i64 %2870, i64* %PC.i151
  %2871 = trunc i64 %2868 to i32
  %2872 = sub i32 %2871, 1
  %2873 = zext i32 %2872 to i64
  store i64 %2873, i64* %RCX.i152, align 8
  %2874 = icmp ult i32 %2871, 1
  %2875 = zext i1 %2874 to i8
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2875, i8* %2876, align 1
  %2877 = and i32 %2872, 255
  %2878 = call i32 @llvm.ctpop.i32(i32 %2877)
  %2879 = trunc i32 %2878 to i8
  %2880 = and i8 %2879, 1
  %2881 = xor i8 %2880, 1
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2881, i8* %2882, align 1
  %2883 = xor i64 1, %2868
  %2884 = trunc i64 %2883 to i32
  %2885 = xor i32 %2884, %2872
  %2886 = lshr i32 %2885, 4
  %2887 = trunc i32 %2886 to i8
  %2888 = and i8 %2887, 1
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2888, i8* %2889, align 1
  %2890 = icmp eq i32 %2872, 0
  %2891 = zext i1 %2890 to i8
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2891, i8* %2892, align 1
  %2893 = lshr i32 %2872, 31
  %2894 = trunc i32 %2893 to i8
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2894, i8* %2895, align 1
  %2896 = lshr i32 %2871, 31
  %2897 = xor i32 %2893, %2896
  %2898 = add i32 %2897, %2896
  %2899 = icmp eq i32 %2898, 2
  %2900 = zext i1 %2899 to i8
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2900, i8* %2901, align 1
  store %struct.Memory* %loadMem_401174, %struct.Memory** %MEMORY
  %loadMem_401177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 33
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 1
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %EAX.i150 = bitcast %union.anon* %2907 to i32*
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 5
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2910 to i32*
  %2911 = load i32, i32* %EAX.i150
  %2912 = zext i32 %2911 to i64
  %2913 = load i32, i32* %ECX.i
  %2914 = zext i32 %2913 to i64
  %2915 = load i64, i64* %PC.i149
  %2916 = add i64 %2915, 2
  store i64 %2916, i64* %PC.i149
  %2917 = sub i32 %2911, %2913
  %2918 = icmp ult i32 %2911, %2913
  %2919 = zext i1 %2918 to i8
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2919, i8* %2920, align 1
  %2921 = and i32 %2917, 255
  %2922 = call i32 @llvm.ctpop.i32(i32 %2921)
  %2923 = trunc i32 %2922 to i8
  %2924 = and i8 %2923, 1
  %2925 = xor i8 %2924, 1
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2925, i8* %2926, align 1
  %2927 = xor i64 %2914, %2912
  %2928 = trunc i64 %2927 to i32
  %2929 = xor i32 %2928, %2917
  %2930 = lshr i32 %2929, 4
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2932, i8* %2933, align 1
  %2934 = icmp eq i32 %2917, 0
  %2935 = zext i1 %2934 to i8
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2935, i8* %2936, align 1
  %2937 = lshr i32 %2917, 31
  %2938 = trunc i32 %2937 to i8
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2938, i8* %2939, align 1
  %2940 = lshr i32 %2911, 31
  %2941 = lshr i32 %2913, 31
  %2942 = xor i32 %2941, %2940
  %2943 = xor i32 %2937, %2940
  %2944 = add i32 %2943, %2942
  %2945 = icmp eq i32 %2944, 2
  %2946 = zext i1 %2945 to i8
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2946, i8* %2947, align 1
  store %struct.Memory* %loadMem_401177, %struct.Memory** %MEMORY
  %loadMem_401179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2950 to i64*
  %2951 = load i64, i64* %PC.i148
  %2952 = add i64 %2951, 208
  %2953 = load i64, i64* %PC.i148
  %2954 = add i64 %2953, 6
  %2955 = load i64, i64* %PC.i148
  %2956 = add i64 %2955, 6
  store i64 %2956, i64* %PC.i148
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2958 = load i8, i8* %2957, align 1
  %2959 = icmp ne i8 %2958, 0
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2961 = load i8, i8* %2960, align 1
  %2962 = icmp ne i8 %2961, 0
  %2963 = xor i1 %2959, %2962
  %2964 = xor i1 %2963, true
  %2965 = zext i1 %2964 to i8
  store i8 %2965, i8* %BRANCH_TAKEN, align 1
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2967 = select i1 %2963, i64 %2954, i64 %2952
  store i64 %2967, i64* %2966, align 8
  store %struct.Memory* %loadMem_401179, %struct.Memory** %MEMORY
  %loadBr_401179 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401179 = icmp eq i8 %loadBr_401179, 1
  br i1 %cmpBr_401179, label %block_.L_401249, label %block_40117f

block_40117f:                                     ; preds = %block_.L_40116e
  %loadMem_40117f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2970 to i64*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2972 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2971, i64 0, i64 0
  %YMM0.i147 = bitcast %union.VectorReg* %2972 to %"class.std::bitset"*
  %2973 = bitcast %"class.std::bitset"* %YMM0.i147 to i8*
  %2974 = load i64, i64* %PC.i146
  %2975 = load i64, i64* %PC.i146
  %2976 = add i64 %2975, 8
  store i64 %2976, i64* %PC.i146
  %2977 = load double, double* bitcast (%G_0x4d1__rip__4198791__type* @G_0x4d1__rip__4198791_ to double*)
  %2978 = bitcast i8* %2973 to double*
  store double %2977, double* %2978, align 1
  %2979 = getelementptr inbounds i8, i8* %2973, i64 8
  %2980 = bitcast i8* %2979 to double*
  store double 0.000000e+00, double* %2980, align 1
  store %struct.Memory* %loadMem_40117f, %struct.Memory** %MEMORY
  %loadMem_401187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 33
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 1
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %2986 to i64*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 15
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %2989 to i64*
  %2990 = load i64, i64* %RBP.i145
  %2991 = sub i64 %2990, 40
  %2992 = load i64, i64* %PC.i143
  %2993 = add i64 %2992, 4
  store i64 %2993, i64* %PC.i143
  %2994 = inttoptr i64 %2991 to i64*
  %2995 = load i64, i64* %2994
  store i64 %2995, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_401187, %struct.Memory** %MEMORY
  %loadMem_40118b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 5
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 15
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %RBP.i142
  %3006 = sub i64 %3005, 48
  %3007 = load i64, i64* %PC.i140
  %3008 = add i64 %3007, 4
  store i64 %3008, i64* %PC.i140
  %3009 = inttoptr i64 %3006 to i32*
  %3010 = load i32, i32* %3009
  %3011 = sext i32 %3010 to i64
  store i64 %3011, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_40118b, %struct.Memory** %MEMORY
  %loadMem_40118f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 33
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 5
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %3017 to i64*
  %3018 = load i64, i64* %RCX.i139
  %3019 = load i64, i64* %PC.i138
  %3020 = add i64 %3019, 7
  store i64 %3020, i64* %PC.i138
  %3021 = sext i64 %3018 to i128
  %3022 = and i128 %3021, -18446744073709551616
  %3023 = zext i64 %3018 to i128
  %3024 = or i128 %3022, %3023
  %3025 = mul i128 8000, %3024
  %3026 = trunc i128 %3025 to i64
  store i64 %3026, i64* %RCX.i139, align 8
  %3027 = sext i64 %3026 to i128
  %3028 = icmp ne i128 %3027, %3025
  %3029 = zext i1 %3028 to i8
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3029, i8* %3030, align 1
  %3031 = trunc i128 %3025 to i32
  %3032 = and i32 %3031, 255
  %3033 = call i32 @llvm.ctpop.i32(i32 %3032)
  %3034 = trunc i32 %3033 to i8
  %3035 = and i8 %3034, 1
  %3036 = xor i8 %3035, 1
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3036, i8* %3037, align 1
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3038, align 1
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3039, align 1
  %3040 = lshr i64 %3026, 63
  %3041 = trunc i64 %3040 to i8
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3041, i8* %3042, align 1
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3029, i8* %3043, align 1
  store %struct.Memory* %loadMem_40118f, %struct.Memory** %MEMORY
  %loadMem_401196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 33
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 1
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 5
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %3052 to i64*
  %3053 = load i64, i64* %RAX.i136
  %3054 = load i64, i64* %RCX.i137
  %3055 = load i64, i64* %PC.i135
  %3056 = add i64 %3055, 3
  store i64 %3056, i64* %PC.i135
  %3057 = add i64 %3054, %3053
  store i64 %3057, i64* %RAX.i136, align 8
  %3058 = icmp ult i64 %3057, %3053
  %3059 = icmp ult i64 %3057, %3054
  %3060 = or i1 %3058, %3059
  %3061 = zext i1 %3060 to i8
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3061, i8* %3062, align 1
  %3063 = trunc i64 %3057 to i32
  %3064 = and i32 %3063, 255
  %3065 = call i32 @llvm.ctpop.i32(i32 %3064)
  %3066 = trunc i32 %3065 to i8
  %3067 = and i8 %3066, 1
  %3068 = xor i8 %3067, 1
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3068, i8* %3069, align 1
  %3070 = xor i64 %3054, %3053
  %3071 = xor i64 %3070, %3057
  %3072 = lshr i64 %3071, 4
  %3073 = trunc i64 %3072 to i8
  %3074 = and i8 %3073, 1
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3074, i8* %3075, align 1
  %3076 = icmp eq i64 %3057, 0
  %3077 = zext i1 %3076 to i8
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3077, i8* %3078, align 1
  %3079 = lshr i64 %3057, 63
  %3080 = trunc i64 %3079 to i8
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3080, i8* %3081, align 1
  %3082 = lshr i64 %3053, 63
  %3083 = lshr i64 %3054, 63
  %3084 = xor i64 %3079, %3082
  %3085 = xor i64 %3079, %3083
  %3086 = add i64 %3084, %3085
  %3087 = icmp eq i64 %3086, 2
  %3088 = zext i1 %3087 to i8
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3088, i8* %3089, align 1
  store %struct.Memory* %loadMem_401196, %struct.Memory** %MEMORY
  %loadMem_401199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 5
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 15
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RBP.i134
  %3100 = sub i64 %3099, 52
  %3101 = load i64, i64* %PC.i132
  %3102 = add i64 %3101, 4
  store i64 %3102, i64* %PC.i132
  %3103 = inttoptr i64 %3100 to i32*
  %3104 = load i32, i32* %3103
  %3105 = sext i32 %3104 to i64
  store i64 %3105, i64* %RCX.i133, align 8
  store %struct.Memory* %loadMem_401199, %struct.Memory** %MEMORY
  %loadMem_40119d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 33
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 1
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 5
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %3114 to i64*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3116 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3115, i64 0, i64 1
  %YMM1.i131 = bitcast %union.VectorReg* %3116 to %"class.std::bitset"*
  %3117 = bitcast %"class.std::bitset"* %YMM1.i131 to i8*
  %3118 = load i64, i64* %RAX.i129
  %3119 = load i64, i64* %RCX.i130
  %3120 = mul i64 %3119, 8
  %3121 = add i64 %3120, %3118
  %3122 = load i64, i64* %PC.i128
  %3123 = add i64 %3122, 5
  store i64 %3123, i64* %PC.i128
  %3124 = inttoptr i64 %3121 to double*
  %3125 = load double, double* %3124
  %3126 = bitcast i8* %3117 to double*
  store double %3125, double* %3126, align 1
  %3127 = getelementptr inbounds i8, i8* %3117, i64 8
  %3128 = bitcast i8* %3127 to double*
  store double 0.000000e+00, double* %3128, align 1
  store %struct.Memory* %loadMem_40119d, %struct.Memory** %MEMORY
  %loadMem_4011a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 1
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %3134 to i64*
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 15
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %3137 to i64*
  %3138 = load i64, i64* %RBP.i127
  %3139 = sub i64 %3138, 24
  %3140 = load i64, i64* %PC.i125
  %3141 = add i64 %3140, 4
  store i64 %3141, i64* %PC.i125
  %3142 = inttoptr i64 %3139 to i64*
  %3143 = load i64, i64* %3142
  store i64 %3143, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_4011a2, %struct.Memory** %MEMORY
  %loadMem_4011a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 33
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3146 to i64*
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 5
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %3149 to i64*
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 15
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %3152 to i64*
  %3153 = load i64, i64* %RBP.i124
  %3154 = sub i64 %3153, 48
  %3155 = load i64, i64* %PC.i122
  %3156 = add i64 %3155, 4
  store i64 %3156, i64* %PC.i122
  %3157 = inttoptr i64 %3154 to i32*
  %3158 = load i32, i32* %3157
  %3159 = sext i32 %3158 to i64
  store i64 %3159, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_4011a6, %struct.Memory** %MEMORY
  %loadMem_4011aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3162 to i64*
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 5
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %3165 to i64*
  %3166 = load i64, i64* %RCX.i121
  %3167 = load i64, i64* %PC.i120
  %3168 = add i64 %3167, 7
  store i64 %3168, i64* %PC.i120
  %3169 = sext i64 %3166 to i128
  %3170 = and i128 %3169, -18446744073709551616
  %3171 = zext i64 %3166 to i128
  %3172 = or i128 %3170, %3171
  %3173 = mul i128 8000, %3172
  %3174 = trunc i128 %3173 to i64
  store i64 %3174, i64* %RCX.i121, align 8
  %3175 = sext i64 %3174 to i128
  %3176 = icmp ne i128 %3175, %3173
  %3177 = zext i1 %3176 to i8
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3177, i8* %3178, align 1
  %3179 = trunc i128 %3173 to i32
  %3180 = and i32 %3179, 255
  %3181 = call i32 @llvm.ctpop.i32(i32 %3180)
  %3182 = trunc i32 %3181 to i8
  %3183 = and i8 %3182, 1
  %3184 = xor i8 %3183, 1
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3184, i8* %3185, align 1
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3186, align 1
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3187, align 1
  %3188 = lshr i64 %3174, 63
  %3189 = trunc i64 %3188 to i8
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3189, i8* %3190, align 1
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3177, i8* %3191, align 1
  store %struct.Memory* %loadMem_4011aa, %struct.Memory** %MEMORY
  %loadMem_4011b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 33
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 1
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 5
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %3200 to i64*
  %3201 = load i64, i64* %RAX.i118
  %3202 = load i64, i64* %RCX.i119
  %3203 = load i64, i64* %PC.i117
  %3204 = add i64 %3203, 3
  store i64 %3204, i64* %PC.i117
  %3205 = add i64 %3202, %3201
  store i64 %3205, i64* %RAX.i118, align 8
  %3206 = icmp ult i64 %3205, %3201
  %3207 = icmp ult i64 %3205, %3202
  %3208 = or i1 %3206, %3207
  %3209 = zext i1 %3208 to i8
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3209, i8* %3210, align 1
  %3211 = trunc i64 %3205 to i32
  %3212 = and i32 %3211, 255
  %3213 = call i32 @llvm.ctpop.i32(i32 %3212)
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  %3216 = xor i8 %3215, 1
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3216, i8* %3217, align 1
  %3218 = xor i64 %3202, %3201
  %3219 = xor i64 %3218, %3205
  %3220 = lshr i64 %3219, 4
  %3221 = trunc i64 %3220 to i8
  %3222 = and i8 %3221, 1
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3222, i8* %3223, align 1
  %3224 = icmp eq i64 %3205, 0
  %3225 = zext i1 %3224 to i8
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3225, i8* %3226, align 1
  %3227 = lshr i64 %3205, 63
  %3228 = trunc i64 %3227 to i8
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3228, i8* %3229, align 1
  %3230 = lshr i64 %3201, 63
  %3231 = lshr i64 %3202, 63
  %3232 = xor i64 %3227, %3230
  %3233 = xor i64 %3227, %3231
  %3234 = add i64 %3232, %3233
  %3235 = icmp eq i64 %3234, 2
  %3236 = zext i1 %3235 to i8
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3236, i8* %3237, align 1
  store %struct.Memory* %loadMem_4011b1, %struct.Memory** %MEMORY
  %loadMem_4011b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 33
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3240 to i64*
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 7
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %RDX.i115 = bitcast %union.anon* %3243 to i64*
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 15
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %3246 to i64*
  %3247 = load i64, i64* %RBP.i116
  %3248 = sub i64 %3247, 52
  %3249 = load i64, i64* %PC.i114
  %3250 = add i64 %3249, 3
  store i64 %3250, i64* %PC.i114
  %3251 = inttoptr i64 %3248 to i32*
  %3252 = load i32, i32* %3251
  %3253 = zext i32 %3252 to i64
  store i64 %3253, i64* %RDX.i115, align 8
  store %struct.Memory* %loadMem_4011b4, %struct.Memory** %MEMORY
  %loadMem_4011b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 33
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %3256 to i64*
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 7
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %3259 to i64*
  %3260 = load i64, i64* %RDX.i113
  %3261 = load i64, i64* %PC.i112
  %3262 = add i64 %3261, 3
  store i64 %3262, i64* %PC.i112
  %3263 = trunc i64 %3260 to i32
  %3264 = add i32 1, %3263
  %3265 = zext i32 %3264 to i64
  store i64 %3265, i64* %RDX.i113, align 8
  %3266 = icmp ult i32 %3264, %3263
  %3267 = icmp ult i32 %3264, 1
  %3268 = or i1 %3266, %3267
  %3269 = zext i1 %3268 to i8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3269, i8* %3270, align 1
  %3271 = and i32 %3264, 255
  %3272 = call i32 @llvm.ctpop.i32(i32 %3271)
  %3273 = trunc i32 %3272 to i8
  %3274 = and i8 %3273, 1
  %3275 = xor i8 %3274, 1
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3275, i8* %3276, align 1
  %3277 = xor i64 1, %3260
  %3278 = trunc i64 %3277 to i32
  %3279 = xor i32 %3278, %3264
  %3280 = lshr i32 %3279, 4
  %3281 = trunc i32 %3280 to i8
  %3282 = and i8 %3281, 1
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3282, i8* %3283, align 1
  %3284 = icmp eq i32 %3264, 0
  %3285 = zext i1 %3284 to i8
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3285, i8* %3286, align 1
  %3287 = lshr i32 %3264, 31
  %3288 = trunc i32 %3287 to i8
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3288, i8* %3289, align 1
  %3290 = lshr i32 %3263, 31
  %3291 = xor i32 %3287, %3290
  %3292 = add i32 %3291, %3287
  %3293 = icmp eq i32 %3292, 2
  %3294 = zext i1 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3294, i8* %3295, align 1
  store %struct.Memory* %loadMem_4011b7, %struct.Memory** %MEMORY
  %loadMem_4011ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 33
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3298 to i64*
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 7
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %EDX.i110 = bitcast %union.anon* %3301 to i32*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 5
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %3304 to i64*
  %3305 = load i32, i32* %EDX.i110
  %3306 = zext i32 %3305 to i64
  %3307 = load i64, i64* %PC.i109
  %3308 = add i64 %3307, 3
  store i64 %3308, i64* %PC.i109
  %3309 = shl i64 %3306, 32
  %3310 = ashr exact i64 %3309, 32
  store i64 %3310, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_4011ba, %struct.Memory** %MEMORY
  %loadMem_4011bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 33
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3313 to i64*
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 1
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %3316 to i64*
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 5
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3320, i64 0, i64 2
  %YMM2.i108 = bitcast %union.VectorReg* %3321 to %"class.std::bitset"*
  %3322 = bitcast %"class.std::bitset"* %YMM2.i108 to i8*
  %3323 = load i64, i64* %RAX.i106
  %3324 = load i64, i64* %RCX.i107
  %3325 = mul i64 %3324, 8
  %3326 = add i64 %3325, %3323
  %3327 = load i64, i64* %PC.i105
  %3328 = add i64 %3327, 5
  store i64 %3328, i64* %PC.i105
  %3329 = inttoptr i64 %3326 to double*
  %3330 = load double, double* %3329
  %3331 = bitcast i8* %3322 to double*
  store double %3330, double* %3331, align 1
  %3332 = getelementptr inbounds i8, i8* %3322, i64 8
  %3333 = bitcast i8* %3332 to double*
  store double 0.000000e+00, double* %3333, align 1
  store %struct.Memory* %loadMem_4011bd, %struct.Memory** %MEMORY
  %loadMem_4011c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 33
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3336 to i64*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 1
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %3339 to i64*
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 15
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %3342 to i64*
  %3343 = load i64, i64* %RBP.i104
  %3344 = sub i64 %3343, 24
  %3345 = load i64, i64* %PC.i102
  %3346 = add i64 %3345, 4
  store i64 %3346, i64* %PC.i102
  %3347 = inttoptr i64 %3344 to i64*
  %3348 = load i64, i64* %3347
  store i64 %3348, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_4011c2, %struct.Memory** %MEMORY
  %loadMem_4011c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 33
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %3351 to i64*
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 5
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %3354 to i64*
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 15
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %3357 to i64*
  %3358 = load i64, i64* %RBP.i101
  %3359 = sub i64 %3358, 48
  %3360 = load i64, i64* %PC.i99
  %3361 = add i64 %3360, 4
  store i64 %3361, i64* %PC.i99
  %3362 = inttoptr i64 %3359 to i32*
  %3363 = load i32, i32* %3362
  %3364 = sext i32 %3363 to i64
  store i64 %3364, i64* %RCX.i100, align 8
  store %struct.Memory* %loadMem_4011c6, %struct.Memory** %MEMORY
  %loadMem_4011ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 33
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %3367 to i64*
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3369 = getelementptr inbounds %struct.GPR, %struct.GPR* %3368, i32 0, i32 5
  %3370 = getelementptr inbounds %struct.Reg, %struct.Reg* %3369, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %3370 to i64*
  %3371 = load i64, i64* %RCX.i98
  %3372 = load i64, i64* %PC.i97
  %3373 = add i64 %3372, 7
  store i64 %3373, i64* %PC.i97
  %3374 = sext i64 %3371 to i128
  %3375 = and i128 %3374, -18446744073709551616
  %3376 = zext i64 %3371 to i128
  %3377 = or i128 %3375, %3376
  %3378 = mul i128 8000, %3377
  %3379 = trunc i128 %3378 to i64
  store i64 %3379, i64* %RCX.i98, align 8
  %3380 = sext i64 %3379 to i128
  %3381 = icmp ne i128 %3380, %3378
  %3382 = zext i1 %3381 to i8
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3382, i8* %3383, align 1
  %3384 = trunc i128 %3378 to i32
  %3385 = and i32 %3384, 255
  %3386 = call i32 @llvm.ctpop.i32(i32 %3385)
  %3387 = trunc i32 %3386 to i8
  %3388 = and i8 %3387, 1
  %3389 = xor i8 %3388, 1
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3389, i8* %3390, align 1
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3391, align 1
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3392, align 1
  %3393 = lshr i64 %3379, 63
  %3394 = trunc i64 %3393 to i8
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3394, i8* %3395, align 1
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3382, i8* %3396, align 1
  store %struct.Memory* %loadMem_4011ca, %struct.Memory** %MEMORY
  %loadMem_4011d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 33
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 1
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 5
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %3405 to i64*
  %3406 = load i64, i64* %RAX.i95
  %3407 = load i64, i64* %RCX.i96
  %3408 = load i64, i64* %PC.i94
  %3409 = add i64 %3408, 3
  store i64 %3409, i64* %PC.i94
  %3410 = add i64 %3407, %3406
  store i64 %3410, i64* %RAX.i95, align 8
  %3411 = icmp ult i64 %3410, %3406
  %3412 = icmp ult i64 %3410, %3407
  %3413 = or i1 %3411, %3412
  %3414 = zext i1 %3413 to i8
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3414, i8* %3415, align 1
  %3416 = trunc i64 %3410 to i32
  %3417 = and i32 %3416, 255
  %3418 = call i32 @llvm.ctpop.i32(i32 %3417)
  %3419 = trunc i32 %3418 to i8
  %3420 = and i8 %3419, 1
  %3421 = xor i8 %3420, 1
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3421, i8* %3422, align 1
  %3423 = xor i64 %3407, %3406
  %3424 = xor i64 %3423, %3410
  %3425 = lshr i64 %3424, 4
  %3426 = trunc i64 %3425 to i8
  %3427 = and i8 %3426, 1
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3427, i8* %3428, align 1
  %3429 = icmp eq i64 %3410, 0
  %3430 = zext i1 %3429 to i8
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3430, i8* %3431, align 1
  %3432 = lshr i64 %3410, 63
  %3433 = trunc i64 %3432 to i8
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3433, i8* %3434, align 1
  %3435 = lshr i64 %3406, 63
  %3436 = lshr i64 %3407, 63
  %3437 = xor i64 %3432, %3435
  %3438 = xor i64 %3432, %3436
  %3439 = add i64 %3437, %3438
  %3440 = icmp eq i64 %3439, 2
  %3441 = zext i1 %3440 to i8
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3441, i8* %3442, align 1
  store %struct.Memory* %loadMem_4011d1, %struct.Memory** %MEMORY
  %loadMem_4011d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 5
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %3448 to i64*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 15
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %3451 to i64*
  %3452 = load i64, i64* %RBP.i93
  %3453 = sub i64 %3452, 52
  %3454 = load i64, i64* %PC.i91
  %3455 = add i64 %3454, 4
  store i64 %3455, i64* %PC.i91
  %3456 = inttoptr i64 %3453 to i32*
  %3457 = load i32, i32* %3456
  %3458 = sext i32 %3457 to i64
  store i64 %3458, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_4011d4, %struct.Memory** %MEMORY
  %loadMem_4011d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 1
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %3464 to i64*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 5
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3469 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3468, i64 0, i64 2
  %YMM2.i90 = bitcast %union.VectorReg* %3469 to %"class.std::bitset"*
  %3470 = bitcast %"class.std::bitset"* %YMM2.i90 to i8*
  %3471 = bitcast %"class.std::bitset"* %YMM2.i90 to i8*
  %3472 = load i64, i64* %RAX.i88
  %3473 = load i64, i64* %RCX.i89
  %3474 = mul i64 %3473, 8
  %3475 = add i64 %3474, %3472
  %3476 = load i64, i64* %PC.i87
  %3477 = add i64 %3476, 5
  store i64 %3477, i64* %PC.i87
  %3478 = bitcast i8* %3471 to double*
  %3479 = load double, double* %3478, align 1
  %3480 = getelementptr inbounds i8, i8* %3471, i64 8
  %3481 = bitcast i8* %3480 to i64*
  %3482 = load i64, i64* %3481, align 1
  %3483 = inttoptr i64 %3475 to double*
  %3484 = load double, double* %3483
  %3485 = fsub double %3479, %3484
  %3486 = bitcast i8* %3470 to double*
  store double %3485, double* %3486, align 1
  %3487 = getelementptr inbounds i8, i8* %3470, i64 8
  %3488 = bitcast i8* %3487 to i64*
  store i64 %3482, i64* %3488, align 1
  store %struct.Memory* %loadMem_4011d8, %struct.Memory** %MEMORY
  %loadMem_4011dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 33
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 1
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 15
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %3497 to i64*
  %3498 = load i64, i64* %RBP.i86
  %3499 = sub i64 %3498, 32
  %3500 = load i64, i64* %PC.i84
  %3501 = add i64 %3500, 4
  store i64 %3501, i64* %PC.i84
  %3502 = inttoptr i64 %3499 to i64*
  %3503 = load i64, i64* %3502
  store i64 %3503, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_4011dd, %struct.Memory** %MEMORY
  %loadMem_4011e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 33
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %3506 to i64*
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 7
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %RDX.i82 = bitcast %union.anon* %3509 to i64*
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 15
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %3512 to i64*
  %3513 = load i64, i64* %RBP.i83
  %3514 = sub i64 %3513, 48
  %3515 = load i64, i64* %PC.i81
  %3516 = add i64 %3515, 3
  store i64 %3516, i64* %PC.i81
  %3517 = inttoptr i64 %3514 to i32*
  %3518 = load i32, i32* %3517
  %3519 = zext i32 %3518 to i64
  store i64 %3519, i64* %RDX.i82, align 8
  store %struct.Memory* %loadMem_4011e1, %struct.Memory** %MEMORY
  %loadMem_4011e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 33
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %3522 to i64*
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 7
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3525 to i64*
  %3526 = load i64, i64* %RDX.i
  %3527 = load i64, i64* %PC.i80
  %3528 = add i64 %3527, 3
  store i64 %3528, i64* %PC.i80
  %3529 = trunc i64 %3526 to i32
  %3530 = add i32 1, %3529
  %3531 = zext i32 %3530 to i64
  store i64 %3531, i64* %RDX.i, align 8
  %3532 = icmp ult i32 %3530, %3529
  %3533 = icmp ult i32 %3530, 1
  %3534 = or i1 %3532, %3533
  %3535 = zext i1 %3534 to i8
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3535, i8* %3536, align 1
  %3537 = and i32 %3530, 255
  %3538 = call i32 @llvm.ctpop.i32(i32 %3537)
  %3539 = trunc i32 %3538 to i8
  %3540 = and i8 %3539, 1
  %3541 = xor i8 %3540, 1
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3541, i8* %3542, align 1
  %3543 = xor i64 1, %3526
  %3544 = trunc i64 %3543 to i32
  %3545 = xor i32 %3544, %3530
  %3546 = lshr i32 %3545, 4
  %3547 = trunc i32 %3546 to i8
  %3548 = and i8 %3547, 1
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3548, i8* %3549, align 1
  %3550 = icmp eq i32 %3530, 0
  %3551 = zext i1 %3550 to i8
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3551, i8* %3552, align 1
  %3553 = lshr i32 %3530, 31
  %3554 = trunc i32 %3553 to i8
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3554, i8* %3555, align 1
  %3556 = lshr i32 %3529, 31
  %3557 = xor i32 %3553, %3556
  %3558 = add i32 %3557, %3553
  %3559 = icmp eq i32 %3558, 2
  %3560 = zext i1 %3559 to i8
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3560, i8* %3561, align 1
  store %struct.Memory* %loadMem_4011e4, %struct.Memory** %MEMORY
  %loadMem_4011e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 33
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3564 to i64*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 7
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3567 to i32*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 5
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %3570 to i64*
  %3571 = load i32, i32* %EDX.i
  %3572 = zext i32 %3571 to i64
  %3573 = load i64, i64* %PC.i78
  %3574 = add i64 %3573, 3
  store i64 %3574, i64* %PC.i78
  %3575 = shl i64 %3572, 32
  %3576 = ashr exact i64 %3575, 32
  store i64 %3576, i64* %RCX.i79, align 8
  store %struct.Memory* %loadMem_4011e7, %struct.Memory** %MEMORY
  %loadMem_4011ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 33
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 5
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %RCX.i77
  %3584 = load i64, i64* %PC.i76
  %3585 = add i64 %3584, 7
  store i64 %3585, i64* %PC.i76
  %3586 = sext i64 %3583 to i128
  %3587 = and i128 %3586, -18446744073709551616
  %3588 = zext i64 %3583 to i128
  %3589 = or i128 %3587, %3588
  %3590 = mul i128 8000, %3589
  %3591 = trunc i128 %3590 to i64
  store i64 %3591, i64* %RCX.i77, align 8
  %3592 = sext i64 %3591 to i128
  %3593 = icmp ne i128 %3592, %3590
  %3594 = zext i1 %3593 to i8
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3594, i8* %3595, align 1
  %3596 = trunc i128 %3590 to i32
  %3597 = and i32 %3596, 255
  %3598 = call i32 @llvm.ctpop.i32(i32 %3597)
  %3599 = trunc i32 %3598 to i8
  %3600 = and i8 %3599, 1
  %3601 = xor i8 %3600, 1
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3601, i8* %3602, align 1
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3603, align 1
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3604, align 1
  %3605 = lshr i64 %3591, 63
  %3606 = trunc i64 %3605 to i8
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3606, i8* %3607, align 1
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3594, i8* %3608, align 1
  store %struct.Memory* %loadMem_4011ea, %struct.Memory** %MEMORY
  %loadMem_4011f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 33
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3611 to i64*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 1
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %3614 to i64*
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 5
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %3617 to i64*
  %3618 = load i64, i64* %RAX.i74
  %3619 = load i64, i64* %RCX.i75
  %3620 = load i64, i64* %PC.i73
  %3621 = add i64 %3620, 3
  store i64 %3621, i64* %PC.i73
  %3622 = add i64 %3619, %3618
  store i64 %3622, i64* %RAX.i74, align 8
  %3623 = icmp ult i64 %3622, %3618
  %3624 = icmp ult i64 %3622, %3619
  %3625 = or i1 %3623, %3624
  %3626 = zext i1 %3625 to i8
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3626, i8* %3627, align 1
  %3628 = trunc i64 %3622 to i32
  %3629 = and i32 %3628, 255
  %3630 = call i32 @llvm.ctpop.i32(i32 %3629)
  %3631 = trunc i32 %3630 to i8
  %3632 = and i8 %3631, 1
  %3633 = xor i8 %3632, 1
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3633, i8* %3634, align 1
  %3635 = xor i64 %3619, %3618
  %3636 = xor i64 %3635, %3622
  %3637 = lshr i64 %3636, 4
  %3638 = trunc i64 %3637 to i8
  %3639 = and i8 %3638, 1
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3639, i8* %3640, align 1
  %3641 = icmp eq i64 %3622, 0
  %3642 = zext i1 %3641 to i8
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3642, i8* %3643, align 1
  %3644 = lshr i64 %3622, 63
  %3645 = trunc i64 %3644 to i8
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3645, i8* %3646, align 1
  %3647 = lshr i64 %3618, 63
  %3648 = lshr i64 %3619, 63
  %3649 = xor i64 %3644, %3647
  %3650 = xor i64 %3644, %3648
  %3651 = add i64 %3649, %3650
  %3652 = icmp eq i64 %3651, 2
  %3653 = zext i1 %3652 to i8
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3653, i8* %3654, align 1
  store %struct.Memory* %loadMem_4011f1, %struct.Memory** %MEMORY
  %loadMem_4011f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 33
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3657 to i64*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 5
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %3660 to i64*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 15
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %3663 to i64*
  %3664 = load i64, i64* %RBP.i72
  %3665 = sub i64 %3664, 52
  %3666 = load i64, i64* %PC.i70
  %3667 = add i64 %3666, 4
  store i64 %3667, i64* %PC.i70
  %3668 = inttoptr i64 %3665 to i32*
  %3669 = load i32, i32* %3668
  %3670 = sext i32 %3669 to i64
  store i64 %3670, i64* %RCX.i71, align 8
  store %struct.Memory* %loadMem_4011f4, %struct.Memory** %MEMORY
  %loadMem_4011f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 33
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 1
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %3676 to i64*
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 5
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %3679 to i64*
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3681 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3680, i64 0, i64 2
  %YMM2.i69 = bitcast %union.VectorReg* %3681 to %"class.std::bitset"*
  %3682 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %3683 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %3684 = load i64, i64* %RAX.i67
  %3685 = load i64, i64* %RCX.i68
  %3686 = mul i64 %3685, 8
  %3687 = add i64 %3686, %3684
  %3688 = load i64, i64* %PC.i66
  %3689 = add i64 %3688, 5
  store i64 %3689, i64* %PC.i66
  %3690 = bitcast i8* %3683 to double*
  %3691 = load double, double* %3690, align 1
  %3692 = getelementptr inbounds i8, i8* %3683, i64 8
  %3693 = bitcast i8* %3692 to i64*
  %3694 = load i64, i64* %3693, align 1
  %3695 = inttoptr i64 %3687 to double*
  %3696 = load double, double* %3695
  %3697 = fadd double %3691, %3696
  %3698 = bitcast i8* %3682 to double*
  store double %3697, double* %3698, align 1
  %3699 = getelementptr inbounds i8, i8* %3682, i64 8
  %3700 = bitcast i8* %3699 to i64*
  store i64 %3694, i64* %3700, align 1
  store %struct.Memory* %loadMem_4011f8, %struct.Memory** %MEMORY
  %loadMem_4011fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 33
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3703 to i64*
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3705 = getelementptr inbounds %struct.GPR, %struct.GPR* %3704, i32 0, i32 1
  %3706 = getelementptr inbounds %struct.Reg, %struct.Reg* %3705, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %3706 to i64*
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 15
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %3709 to i64*
  %3710 = load i64, i64* %RBP.i65
  %3711 = sub i64 %3710, 32
  %3712 = load i64, i64* %PC.i63
  %3713 = add i64 %3712, 4
  store i64 %3713, i64* %PC.i63
  %3714 = inttoptr i64 %3711 to i64*
  %3715 = load i64, i64* %3714
  store i64 %3715, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_4011fd, %struct.Memory** %MEMORY
  %loadMem_401201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 33
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 5
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %3721 to i64*
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 15
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %3724 to i64*
  %3725 = load i64, i64* %RBP.i62
  %3726 = sub i64 %3725, 48
  %3727 = load i64, i64* %PC.i60
  %3728 = add i64 %3727, 4
  store i64 %3728, i64* %PC.i60
  %3729 = inttoptr i64 %3726 to i32*
  %3730 = load i32, i32* %3729
  %3731 = sext i32 %3730 to i64
  store i64 %3731, i64* %RCX.i61, align 8
  store %struct.Memory* %loadMem_401201, %struct.Memory** %MEMORY
  %loadMem_401205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 33
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 5
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %3737 to i64*
  %3738 = load i64, i64* %RCX.i59
  %3739 = load i64, i64* %PC.i58
  %3740 = add i64 %3739, 7
  store i64 %3740, i64* %PC.i58
  %3741 = sext i64 %3738 to i128
  %3742 = and i128 %3741, -18446744073709551616
  %3743 = zext i64 %3738 to i128
  %3744 = or i128 %3742, %3743
  %3745 = mul i128 8000, %3744
  %3746 = trunc i128 %3745 to i64
  store i64 %3746, i64* %RCX.i59, align 8
  %3747 = sext i64 %3746 to i128
  %3748 = icmp ne i128 %3747, %3745
  %3749 = zext i1 %3748 to i8
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3749, i8* %3750, align 1
  %3751 = trunc i128 %3745 to i32
  %3752 = and i32 %3751, 255
  %3753 = call i32 @llvm.ctpop.i32(i32 %3752)
  %3754 = trunc i32 %3753 to i8
  %3755 = and i8 %3754, 1
  %3756 = xor i8 %3755, 1
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3756, i8* %3757, align 1
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3758, align 1
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3759, align 1
  %3760 = lshr i64 %3746, 63
  %3761 = trunc i64 %3760 to i8
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3761, i8* %3762, align 1
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3749, i8* %3763, align 1
  store %struct.Memory* %loadMem_401205, %struct.Memory** %MEMORY
  %loadMem_40120c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 33
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3766 to i64*
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 1
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %3769 to i64*
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 5
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %3772 to i64*
  %3773 = load i64, i64* %RAX.i56
  %3774 = load i64, i64* %RCX.i57
  %3775 = load i64, i64* %PC.i55
  %3776 = add i64 %3775, 3
  store i64 %3776, i64* %PC.i55
  %3777 = add i64 %3774, %3773
  store i64 %3777, i64* %RAX.i56, align 8
  %3778 = icmp ult i64 %3777, %3773
  %3779 = icmp ult i64 %3777, %3774
  %3780 = or i1 %3778, %3779
  %3781 = zext i1 %3780 to i8
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3781, i8* %3782, align 1
  %3783 = trunc i64 %3777 to i32
  %3784 = and i32 %3783, 255
  %3785 = call i32 @llvm.ctpop.i32(i32 %3784)
  %3786 = trunc i32 %3785 to i8
  %3787 = and i8 %3786, 1
  %3788 = xor i8 %3787, 1
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3788, i8* %3789, align 1
  %3790 = xor i64 %3774, %3773
  %3791 = xor i64 %3790, %3777
  %3792 = lshr i64 %3791, 4
  %3793 = trunc i64 %3792 to i8
  %3794 = and i8 %3793, 1
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3794, i8* %3795, align 1
  %3796 = icmp eq i64 %3777, 0
  %3797 = zext i1 %3796 to i8
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3797, i8* %3798, align 1
  %3799 = lshr i64 %3777, 63
  %3800 = trunc i64 %3799 to i8
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3800, i8* %3801, align 1
  %3802 = lshr i64 %3773, 63
  %3803 = lshr i64 %3774, 63
  %3804 = xor i64 %3799, %3802
  %3805 = xor i64 %3799, %3803
  %3806 = add i64 %3804, %3805
  %3807 = icmp eq i64 %3806, 2
  %3808 = zext i1 %3807 to i8
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3808, i8* %3809, align 1
  store %struct.Memory* %loadMem_40120c, %struct.Memory** %MEMORY
  %loadMem_40120f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 33
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3812 to i64*
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 5
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %3815 to i64*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 15
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %3818 to i64*
  %3819 = load i64, i64* %RBP.i54
  %3820 = sub i64 %3819, 52
  %3821 = load i64, i64* %PC.i52
  %3822 = add i64 %3821, 4
  store i64 %3822, i64* %PC.i52
  %3823 = inttoptr i64 %3820 to i32*
  %3824 = load i32, i32* %3823
  %3825 = sext i32 %3824 to i64
  store i64 %3825, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_40120f, %struct.Memory** %MEMORY
  %loadMem_401213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 33
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3828 to i64*
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 1
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 5
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %3834 to i64*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3836 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3835, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3836 to %"class.std::bitset"*
  %3837 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3838 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3839 = load i64, i64* %RAX.i50
  %3840 = load i64, i64* %RCX.i51
  %3841 = mul i64 %3840, 8
  %3842 = add i64 %3841, %3839
  %3843 = load i64, i64* %PC.i49
  %3844 = add i64 %3843, 5
  store i64 %3844, i64* %PC.i49
  %3845 = bitcast i8* %3838 to double*
  %3846 = load double, double* %3845, align 1
  %3847 = getelementptr inbounds i8, i8* %3838, i64 8
  %3848 = bitcast i8* %3847 to i64*
  %3849 = load i64, i64* %3848, align 1
  %3850 = inttoptr i64 %3842 to double*
  %3851 = load double, double* %3850
  %3852 = fsub double %3846, %3851
  %3853 = bitcast i8* %3837 to double*
  store double %3852, double* %3853, align 1
  %3854 = getelementptr inbounds i8, i8* %3837, i64 8
  %3855 = bitcast i8* %3854 to i64*
  store i64 %3849, i64* %3855, align 1
  store %struct.Memory* %loadMem_401213, %struct.Memory** %MEMORY
  %loadMem_401218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3857 = getelementptr inbounds %struct.GPR, %struct.GPR* %3856, i32 0, i32 33
  %3858 = getelementptr inbounds %struct.Reg, %struct.Reg* %3857, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3858 to i64*
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3860 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3859, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3860 to %"class.std::bitset"*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3862 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3861, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3862 to %union.vec128_t*
  %3863 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3864 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3865 = bitcast %union.vec128_t* %XMM2.i to i8*
  %3866 = load i64, i64* %PC.i48
  %3867 = add i64 %3866, 4
  store i64 %3867, i64* %PC.i48
  %3868 = bitcast i8* %3864 to double*
  %3869 = load double, double* %3868, align 1
  %3870 = getelementptr inbounds i8, i8* %3864, i64 8
  %3871 = bitcast i8* %3870 to i64*
  %3872 = load i64, i64* %3871, align 1
  %3873 = bitcast i8* %3865 to double*
  %3874 = load double, double* %3873, align 1
  %3875 = fmul double %3869, %3874
  %3876 = bitcast i8* %3863 to double*
  store double %3875, double* %3876, align 1
  %3877 = getelementptr inbounds i8, i8* %3863, i64 8
  %3878 = bitcast i8* %3877 to i64*
  store i64 %3872, i64* %3878, align 1
  store %struct.Memory* %loadMem_401218, %struct.Memory** %MEMORY
  %loadMem_40121c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 33
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3881 to i64*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3883 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3882, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3883 to %"class.std::bitset"*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3885 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3884, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3885 to %union.vec128_t*
  %3886 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3887 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3888 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3889 = load i64, i64* %PC.i47
  %3890 = add i64 %3889, 4
  store i64 %3890, i64* %PC.i47
  %3891 = bitcast i8* %3887 to double*
  %3892 = load double, double* %3891, align 1
  %3893 = getelementptr inbounds i8, i8* %3887, i64 8
  %3894 = bitcast i8* %3893 to i64*
  %3895 = load i64, i64* %3894, align 1
  %3896 = bitcast i8* %3888 to double*
  %3897 = load double, double* %3896, align 1
  %3898 = fsub double %3892, %3897
  %3899 = bitcast i8* %3886 to double*
  store double %3898, double* %3899, align 1
  %3900 = getelementptr inbounds i8, i8* %3886, i64 8
  %3901 = bitcast i8* %3900 to i64*
  store i64 %3895, i64* %3901, align 1
  store %struct.Memory* %loadMem_40121c, %struct.Memory** %MEMORY
  %loadMem_401220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 33
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 1
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %3907 to i64*
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 15
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %3910 to i64*
  %3911 = load i64, i64* %RBP.i46
  %3912 = sub i64 %3911, 40
  %3913 = load i64, i64* %PC.i44
  %3914 = add i64 %3913, 4
  store i64 %3914, i64* %PC.i44
  %3915 = inttoptr i64 %3912 to i64*
  %3916 = load i64, i64* %3915
  store i64 %3916, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_401220, %struct.Memory** %MEMORY
  %loadMem_401224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 33
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3919 to i64*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 5
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 15
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %3925 to i64*
  %3926 = load i64, i64* %RBP.i43
  %3927 = sub i64 %3926, 48
  %3928 = load i64, i64* %PC.i41
  %3929 = add i64 %3928, 4
  store i64 %3929, i64* %PC.i41
  %3930 = inttoptr i64 %3927 to i32*
  %3931 = load i32, i32* %3930
  %3932 = sext i32 %3931 to i64
  store i64 %3932, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_401224, %struct.Memory** %MEMORY
  %loadMem_401228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 33
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3935 to i64*
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 5
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %3938 to i64*
  %3939 = load i64, i64* %RCX.i40
  %3940 = load i64, i64* %PC.i39
  %3941 = add i64 %3940, 7
  store i64 %3941, i64* %PC.i39
  %3942 = sext i64 %3939 to i128
  %3943 = and i128 %3942, -18446744073709551616
  %3944 = zext i64 %3939 to i128
  %3945 = or i128 %3943, %3944
  %3946 = mul i128 8000, %3945
  %3947 = trunc i128 %3946 to i64
  store i64 %3947, i64* %RCX.i40, align 8
  %3948 = sext i64 %3947 to i128
  %3949 = icmp ne i128 %3948, %3946
  %3950 = zext i1 %3949 to i8
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3950, i8* %3951, align 1
  %3952 = trunc i128 %3946 to i32
  %3953 = and i32 %3952, 255
  %3954 = call i32 @llvm.ctpop.i32(i32 %3953)
  %3955 = trunc i32 %3954 to i8
  %3956 = and i8 %3955, 1
  %3957 = xor i8 %3956, 1
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3957, i8* %3958, align 1
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3959, align 1
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3960, align 1
  %3961 = lshr i64 %3947, 63
  %3962 = trunc i64 %3961 to i8
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3962, i8* %3963, align 1
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3950, i8* %3964, align 1
  store %struct.Memory* %loadMem_401228, %struct.Memory** %MEMORY
  %loadMem_40122f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 33
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3967 to i64*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 1
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %3970 to i64*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 5
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %3973 to i64*
  %3974 = load i64, i64* %RAX.i37
  %3975 = load i64, i64* %RCX.i38
  %3976 = load i64, i64* %PC.i36
  %3977 = add i64 %3976, 3
  store i64 %3977, i64* %PC.i36
  %3978 = add i64 %3975, %3974
  store i64 %3978, i64* %RAX.i37, align 8
  %3979 = icmp ult i64 %3978, %3974
  %3980 = icmp ult i64 %3978, %3975
  %3981 = or i1 %3979, %3980
  %3982 = zext i1 %3981 to i8
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3982, i8* %3983, align 1
  %3984 = trunc i64 %3978 to i32
  %3985 = and i32 %3984, 255
  %3986 = call i32 @llvm.ctpop.i32(i32 %3985)
  %3987 = trunc i32 %3986 to i8
  %3988 = and i8 %3987, 1
  %3989 = xor i8 %3988, 1
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3989, i8* %3990, align 1
  %3991 = xor i64 %3975, %3974
  %3992 = xor i64 %3991, %3978
  %3993 = lshr i64 %3992, 4
  %3994 = trunc i64 %3993 to i8
  %3995 = and i8 %3994, 1
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3995, i8* %3996, align 1
  %3997 = icmp eq i64 %3978, 0
  %3998 = zext i1 %3997 to i8
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3998, i8* %3999, align 1
  %4000 = lshr i64 %3978, 63
  %4001 = trunc i64 %4000 to i8
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4001, i8* %4002, align 1
  %4003 = lshr i64 %3974, 63
  %4004 = lshr i64 %3975, 63
  %4005 = xor i64 %4000, %4003
  %4006 = xor i64 %4000, %4004
  %4007 = add i64 %4005, %4006
  %4008 = icmp eq i64 %4007, 2
  %4009 = zext i1 %4008 to i8
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4009, i8* %4010, align 1
  store %struct.Memory* %loadMem_40122f, %struct.Memory** %MEMORY
  %loadMem_401232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 33
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4013 to i64*
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 5
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %4016 to i64*
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 15
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %4019 to i64*
  %4020 = load i64, i64* %RBP.i35
  %4021 = sub i64 %4020, 52
  %4022 = load i64, i64* %PC.i33
  %4023 = add i64 %4022, 4
  store i64 %4023, i64* %PC.i33
  %4024 = inttoptr i64 %4021 to i32*
  %4025 = load i32, i32* %4024
  %4026 = sext i32 %4025 to i64
  store i64 %4026, i64* %RCX.i34, align 8
  store %struct.Memory* %loadMem_401232, %struct.Memory** %MEMORY
  %loadMem_401236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 33
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4029 to i64*
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 1
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 5
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4035 to i64*
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4037 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4036, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4037 to %union.vec128_t*
  %4038 = load i64, i64* %RAX.i32
  %4039 = load i64, i64* %RCX.i
  %4040 = mul i64 %4039, 8
  %4041 = add i64 %4040, %4038
  %4042 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4043 = load i64, i64* %PC.i31
  %4044 = add i64 %4043, 5
  store i64 %4044, i64* %PC.i31
  %4045 = bitcast i8* %4042 to double*
  %4046 = load double, double* %4045, align 1
  %4047 = inttoptr i64 %4041 to double*
  store double %4046, double* %4047
  store %struct.Memory* %loadMem_401236, %struct.Memory** %MEMORY
  %loadMem_40123b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 33
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 1
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %4053 to i64*
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 15
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %4056 to i64*
  %4057 = load i64, i64* %RBP.i30
  %4058 = sub i64 %4057, 52
  %4059 = load i64, i64* %PC.i28
  %4060 = add i64 %4059, 3
  store i64 %4060, i64* %PC.i28
  %4061 = inttoptr i64 %4058 to i32*
  %4062 = load i32, i32* %4061
  %4063 = zext i32 %4062 to i64
  store i64 %4063, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_40123b, %struct.Memory** %MEMORY
  %loadMem_40123e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 1
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %4069 to i64*
  %4070 = load i64, i64* %RAX.i27
  %4071 = load i64, i64* %PC.i26
  %4072 = add i64 %4071, 3
  store i64 %4072, i64* %PC.i26
  %4073 = trunc i64 %4070 to i32
  %4074 = add i32 1, %4073
  %4075 = zext i32 %4074 to i64
  store i64 %4075, i64* %RAX.i27, align 8
  %4076 = icmp ult i32 %4074, %4073
  %4077 = icmp ult i32 %4074, 1
  %4078 = or i1 %4076, %4077
  %4079 = zext i1 %4078 to i8
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4079, i8* %4080, align 1
  %4081 = and i32 %4074, 255
  %4082 = call i32 @llvm.ctpop.i32(i32 %4081)
  %4083 = trunc i32 %4082 to i8
  %4084 = and i8 %4083, 1
  %4085 = xor i8 %4084, 1
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4085, i8* %4086, align 1
  %4087 = xor i64 1, %4070
  %4088 = trunc i64 %4087 to i32
  %4089 = xor i32 %4088, %4074
  %4090 = lshr i32 %4089, 4
  %4091 = trunc i32 %4090 to i8
  %4092 = and i8 %4091, 1
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4092, i8* %4093, align 1
  %4094 = icmp eq i32 %4074, 0
  %4095 = zext i1 %4094 to i8
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4095, i8* %4096, align 1
  %4097 = lshr i32 %4074, 31
  %4098 = trunc i32 %4097 to i8
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4098, i8* %4099, align 1
  %4100 = lshr i32 %4073, 31
  %4101 = xor i32 %4097, %4100
  %4102 = add i32 %4101, %4097
  %4103 = icmp eq i32 %4102, 2
  %4104 = zext i1 %4103 to i8
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4104, i8* %4105, align 1
  store %struct.Memory* %loadMem_40123e, %struct.Memory** %MEMORY
  %loadMem_401241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 33
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4108 to i64*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 1
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %4111 to i32*
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 15
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %4114 to i64*
  %4115 = load i64, i64* %RBP.i25
  %4116 = sub i64 %4115, 52
  %4117 = load i32, i32* %EAX.i24
  %4118 = zext i32 %4117 to i64
  %4119 = load i64, i64* %PC.i23
  %4120 = add i64 %4119, 3
  store i64 %4120, i64* %PC.i23
  %4121 = inttoptr i64 %4116 to i32*
  store i32 %4117, i32* %4121
  store %struct.Memory* %loadMem_401241, %struct.Memory** %MEMORY
  %loadMem_401244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 33
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4124 to i64*
  %4125 = load i64, i64* %PC.i22
  %4126 = add i64 %4125, -214
  %4127 = load i64, i64* %PC.i22
  %4128 = add i64 %4127, 5
  store i64 %4128, i64* %PC.i22
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4126, i64* %4129, align 8
  store %struct.Memory* %loadMem_401244, %struct.Memory** %MEMORY
  br label %block_.L_40116e

block_.L_401249:                                  ; preds = %block_.L_40116e
  %loadMem_401249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 33
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4132 to i64*
  %4133 = load i64, i64* %PC.i21
  %4134 = add i64 %4133, 5
  %4135 = load i64, i64* %PC.i21
  %4136 = add i64 %4135, 5
  store i64 %4136, i64* %PC.i21
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4134, i64* %4137, align 8
  store %struct.Memory* %loadMem_401249, %struct.Memory** %MEMORY
  br label %block_.L_40124e

block_.L_40124e:                                  ; preds = %block_.L_401249
  %loadMem_40124e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 33
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4140 to i64*
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 1
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %4143 to i64*
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 15
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %4146 to i64*
  %4147 = load i64, i64* %RBP.i20
  %4148 = sub i64 %4147, 48
  %4149 = load i64, i64* %PC.i18
  %4150 = add i64 %4149, 3
  store i64 %4150, i64* %PC.i18
  %4151 = inttoptr i64 %4148 to i32*
  %4152 = load i32, i32* %4151
  %4153 = zext i32 %4152 to i64
  store i64 %4153, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_40124e, %struct.Memory** %MEMORY
  %loadMem_401251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 33
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4156 to i64*
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4158 = getelementptr inbounds %struct.GPR, %struct.GPR* %4157, i32 0, i32 1
  %4159 = getelementptr inbounds %struct.Reg, %struct.Reg* %4158, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %4159 to i64*
  %4160 = load i64, i64* %RAX.i17
  %4161 = load i64, i64* %PC.i16
  %4162 = add i64 %4161, 3
  store i64 %4162, i64* %PC.i16
  %4163 = trunc i64 %4160 to i32
  %4164 = add i32 1, %4163
  %4165 = zext i32 %4164 to i64
  store i64 %4165, i64* %RAX.i17, align 8
  %4166 = icmp ult i32 %4164, %4163
  %4167 = icmp ult i32 %4164, 1
  %4168 = or i1 %4166, %4167
  %4169 = zext i1 %4168 to i8
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4169, i8* %4170, align 1
  %4171 = and i32 %4164, 255
  %4172 = call i32 @llvm.ctpop.i32(i32 %4171)
  %4173 = trunc i32 %4172 to i8
  %4174 = and i8 %4173, 1
  %4175 = xor i8 %4174, 1
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4175, i8* %4176, align 1
  %4177 = xor i64 1, %4160
  %4178 = trunc i64 %4177 to i32
  %4179 = xor i32 %4178, %4164
  %4180 = lshr i32 %4179, 4
  %4181 = trunc i32 %4180 to i8
  %4182 = and i8 %4181, 1
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4182, i8* %4183, align 1
  %4184 = icmp eq i32 %4164, 0
  %4185 = zext i1 %4184 to i8
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4185, i8* %4186, align 1
  %4187 = lshr i32 %4164, 31
  %4188 = trunc i32 %4187 to i8
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4188, i8* %4189, align 1
  %4190 = lshr i32 %4163, 31
  %4191 = xor i32 %4187, %4190
  %4192 = add i32 %4191, %4187
  %4193 = icmp eq i32 %4192, 2
  %4194 = zext i1 %4193 to i8
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4194, i8* %4195, align 1
  store %struct.Memory* %loadMem_401251, %struct.Memory** %MEMORY
  %loadMem_401254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 33
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4198 to i64*
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 1
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %4201 to i32*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 15
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %4204 to i64*
  %4205 = load i64, i64* %RBP.i15
  %4206 = sub i64 %4205, 48
  %4207 = load i32, i32* %EAX.i14
  %4208 = zext i32 %4207 to i64
  %4209 = load i64, i64* %PC.i13
  %4210 = add i64 %4209, 3
  store i64 %4210, i64* %PC.i13
  %4211 = inttoptr i64 %4206 to i32*
  store i32 %4207, i32* %4211
  store %struct.Memory* %loadMem_401254, %struct.Memory** %MEMORY
  %loadMem_401257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 33
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4214 to i64*
  %4215 = load i64, i64* %PC.i12
  %4216 = add i64 %4215, -257
  %4217 = load i64, i64* %PC.i12
  %4218 = add i64 %4217, 5
  store i64 %4218, i64* %PC.i12
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4216, i64* %4219, align 8
  store %struct.Memory* %loadMem_401257, %struct.Memory** %MEMORY
  br label %block_.L_401156

block_.L_40125c:                                  ; preds = %block_.L_401156
  %loadMem_40125c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 33
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4222 to i64*
  %4223 = load i64, i64* %PC.i11
  %4224 = add i64 %4223, 5
  %4225 = load i64, i64* %PC.i11
  %4226 = add i64 %4225, 5
  store i64 %4226, i64* %PC.i11
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4224, i64* %4227, align 8
  store %struct.Memory* %loadMem_40125c, %struct.Memory** %MEMORY
  br label %block_.L_401261

block_.L_401261:                                  ; preds = %block_.L_40125c
  %loadMem_401261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 33
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4230 to i64*
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 1
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %4233 to i64*
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 15
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %4236 to i64*
  %4237 = load i64, i64* %RBP.i10
  %4238 = sub i64 %4237, 44
  %4239 = load i64, i64* %PC.i8
  %4240 = add i64 %4239, 3
  store i64 %4240, i64* %PC.i8
  %4241 = inttoptr i64 %4238 to i32*
  %4242 = load i32, i32* %4241
  %4243 = zext i32 %4242 to i64
  store i64 %4243, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_401261, %struct.Memory** %MEMORY
  %loadMem_401264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 33
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4246 to i64*
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 1
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4249 to i64*
  %4250 = load i64, i64* %RAX.i
  %4251 = load i64, i64* %PC.i7
  %4252 = add i64 %4251, 3
  store i64 %4252, i64* %PC.i7
  %4253 = trunc i64 %4250 to i32
  %4254 = add i32 1, %4253
  %4255 = zext i32 %4254 to i64
  store i64 %4255, i64* %RAX.i, align 8
  %4256 = icmp ult i32 %4254, %4253
  %4257 = icmp ult i32 %4254, 1
  %4258 = or i1 %4256, %4257
  %4259 = zext i1 %4258 to i8
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4259, i8* %4260, align 1
  %4261 = and i32 %4254, 255
  %4262 = call i32 @llvm.ctpop.i32(i32 %4261)
  %4263 = trunc i32 %4262 to i8
  %4264 = and i8 %4263, 1
  %4265 = xor i8 %4264, 1
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4265, i8* %4266, align 1
  %4267 = xor i64 1, %4250
  %4268 = trunc i64 %4267 to i32
  %4269 = xor i32 %4268, %4254
  %4270 = lshr i32 %4269, 4
  %4271 = trunc i32 %4270 to i8
  %4272 = and i8 %4271, 1
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4272, i8* %4273, align 1
  %4274 = icmp eq i32 %4254, 0
  %4275 = zext i1 %4274 to i8
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4275, i8* %4276, align 1
  %4277 = lshr i32 %4254, 31
  %4278 = trunc i32 %4277 to i8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4278, i8* %4279, align 1
  %4280 = lshr i32 %4253, 31
  %4281 = xor i32 %4277, %4280
  %4282 = add i32 %4281, %4277
  %4283 = icmp eq i32 %4282, 2
  %4284 = zext i1 %4283 to i8
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4284, i8* %4285, align 1
  store %struct.Memory* %loadMem_401264, %struct.Memory** %MEMORY
  %loadMem_401267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 33
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4288 to i64*
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 1
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4291 to i32*
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 15
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4294 to i64*
  %4295 = load i64, i64* %RBP.i6
  %4296 = sub i64 %4295, 44
  %4297 = load i32, i32* %EAX.i
  %4298 = zext i32 %4297 to i64
  %4299 = load i64, i64* %PC.i5
  %4300 = add i64 %4299, 3
  store i64 %4300, i64* %PC.i5
  %4301 = inttoptr i64 %4296 to i32*
  store i32 %4297, i32* %4301
  store %struct.Memory* %loadMem_401267, %struct.Memory** %MEMORY
  %loadMem_40126a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 33
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4304 to i64*
  %4305 = load i64, i64* %PC.i4
  %4306 = add i64 %4305, -754
  %4307 = load i64, i64* %PC.i4
  %4308 = add i64 %4307, 5
  store i64 %4308, i64* %PC.i4
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4306, i64* %4309, align 8
  store %struct.Memory* %loadMem_40126a, %struct.Memory** %MEMORY
  br label %block_.L_400f78

block_.L_40126f:                                  ; preds = %block_.L_400f78
  %loadMem_40126f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 33
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4312 to i64*
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 15
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4315 to i64*
  %4316 = load i64, i64* %PC.i2
  %4317 = add i64 %4316, 1
  store i64 %4317, i64* %PC.i2
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4319 = load i64, i64* %4318, align 8
  %4320 = add i64 %4319, 8
  %4321 = inttoptr i64 %4319 to i64*
  %4322 = load i64, i64* %4321
  store i64 %4322, i64* %RBP.i3, align 8
  store i64 %4320, i64* %4318, align 8
  store %struct.Memory* %loadMem_40126f, %struct.Memory** %MEMORY
  %loadMem_401270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 33
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4325 to i64*
  %4326 = load i64, i64* %PC.i1
  %4327 = add i64 %4326, 1
  store i64 %4327, i64* %PC.i1
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4330 = load i64, i64* %4329, align 8
  %4331 = inttoptr i64 %4330 to i64*
  %4332 = load i64, i64* %4331
  store i64 %4332, i64* %4328, align 8
  %4333 = add i64 %4330, 8
  store i64 %4333, i64* %4329, align 8
  store %struct.Memory* %loadMem_401270, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_401270
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

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
block_400478:
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

define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 4
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

define %struct.Memory* @routine_jge_.L_40126f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_400fbf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
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

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_400f8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_401087(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_401074(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x673__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x673__rip__4198381__type* @G_0x673__rip__4198381_ to i64
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_imulq__0x1f40___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %16 = mul i128 8000, %15
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to double*
  %22 = load double, double* %21
  %23 = bitcast i8* %14 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to double*
  %23 = load double, double* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 1
  %27 = inttoptr i64 %19 to double*
  %28 = load double, double* %27
  %29 = fsub double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm1____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM1 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fd9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401079(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_400fc6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40114f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40113c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x5ab__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x5ab__rip__4198581__type* @G_0x5ab__rip__4198581_ to i64
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401141(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40108e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jge_.L_40125c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401249(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x4d1__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x4d1__rip__4198791__type* @G_0x4d1__rip__4198791_ to i64
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

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to double*
  %23 = load double, double* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 1
  %27 = inttoptr i64 %19 to double*
  %28 = load double, double* %27
  %29 = fadd double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40116e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40124e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401156(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401261(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_400f78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
