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
%G_0x665__rip__type = type <{ [16 x i8] }>
%G_0x690__rip__type = type <{ [16 x i8] }>
%G_0x6b1__rip__type = type <{ [16 x i8] }>
%G_0x6be__rip__type = type <{ [16 x i8] }>
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
@G_0x665__rip_ = global %G_0x665__rip__type zeroinitializer
@G_0x690__rip_ = global %G_0x690__rip__type zeroinitializer
@G_0x6b1__rip_ = global %G_0x6b1__rip__type zeroinitializer
@G_0x6be__rip_ = global %G_0x6be__rip__type zeroinitializer

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
define %struct.Memory* @epslon(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_402810 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_402810, %struct.Memory** %MEMORY
  %loadMem_402811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i76
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i76
  store i64 %26, i64* %RBP.i77, align 8
  store %struct.Memory* %loadMem_402811, %struct.Memory** %MEMORY
  %loadMem_402814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %33 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %32, i64 0, i64 1
  %YMM1.i99 = bitcast %union.VectorReg* %33 to %"class.std::bitset"*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %35 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %34, i64 0, i64 1
  %XMM1.i100 = bitcast %union.VectorReg* %35 to %union.vec128_t*
  %36 = bitcast %"class.std::bitset"* %YMM1.i99 to i8*
  %37 = bitcast %"class.std::bitset"* %YMM1.i99 to i8*
  %38 = bitcast %union.vec128_t* %XMM1.i100 to i8*
  %39 = load i64, i64* %PC.i98
  %40 = add i64 %39, 3
  store i64 %40, i64* %PC.i98
  %41 = bitcast i8* %37 to i64*
  %42 = load i64, i64* %41, align 1
  %43 = getelementptr inbounds i8, i8* %37, i64 8
  %44 = bitcast i8* %43 to i64*
  %45 = load i64, i64* %44, align 1
  %46 = bitcast i8* %38 to i64*
  %47 = load i64, i64* %46, align 1
  %48 = getelementptr inbounds i8, i8* %38, i64 8
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 1
  %51 = xor i64 %47, %42
  %52 = xor i64 %50, %45
  %53 = trunc i64 %51 to i32
  %54 = lshr i64 %51, 32
  %55 = trunc i64 %54 to i32
  %56 = bitcast i8* %36 to i32*
  store i32 %53, i32* %56, align 1
  %57 = getelementptr inbounds i8, i8* %36, i64 4
  %58 = bitcast i8* %57 to i32*
  store i32 %55, i32* %58, align 1
  %59 = trunc i64 %52 to i32
  %60 = getelementptr inbounds i8, i8* %36, i64 8
  %61 = bitcast i8* %60 to i32*
  store i32 %59, i32* %61, align 1
  %62 = lshr i64 %52, 32
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds i8, i8* %36, i64 12
  %65 = bitcast i8* %64 to i32*
  store i32 %63, i32* %65, align 1
  store %struct.Memory* %loadMem_402814, %struct.Memory** %MEMORY
  %loadMem_402817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.GPR, %struct.GPR* %66, i32 0, i32 33
  %68 = getelementptr inbounds %struct.Reg, %struct.Reg* %67, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %68 to i64*
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %70 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 2
  %YMM2.i97 = bitcast %union.VectorReg* %70 to %"class.std::bitset"*
  %71 = bitcast %"class.std::bitset"* %YMM2.i97 to i8*
  %72 = load i64, i64* %PC.i96
  %73 = load i64, i64* %PC.i96
  %74 = add i64 %73, 8
  store i64 %74, i64* %PC.i96
  %75 = load float, float* bitcast (%G_0x6b1__rip__type* @G_0x6b1__rip_ to float*)
  %76 = bitcast i8* %71 to float*
  store float %75, float* %76, align 1
  %77 = getelementptr inbounds i8, i8* %71, i64 4
  %78 = bitcast i8* %77 to float*
  store float 0.000000e+00, float* %78, align 1
  %79 = getelementptr inbounds i8, i8* %71, i64 8
  %80 = bitcast i8* %79 to float*
  store float 0.000000e+00, float* %80, align 1
  %81 = getelementptr inbounds i8, i8* %71, i64 12
  %82 = bitcast i8* %81 to float*
  store float 0.000000e+00, float* %82, align 1
  store %struct.Memory* %loadMem_402817, %struct.Memory** %MEMORY
  %loadMem_40281f = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %90 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %89, i64 0, i64 0
  %XMM0.i95 = bitcast %union.VectorReg* %90 to %union.vec128_t*
  %91 = load i64, i64* %RBP.i94
  %92 = sub i64 %91, 4
  %93 = bitcast %union.vec128_t* %XMM0.i95 to i8*
  %94 = load i64, i64* %PC.i93
  %95 = add i64 %94, 5
  store i64 %95, i64* %PC.i93
  %96 = bitcast i8* %93 to <2 x float>*
  %97 = load <2 x float>, <2 x float>* %96, align 1
  %98 = extractelement <2 x float> %97, i32 0
  %99 = inttoptr i64 %92 to float*
  store float %98, float* %99
  store %struct.Memory* %loadMem_40281f, %struct.Memory** %MEMORY
  %loadMem_402824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 33
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %105 to i64*
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %107 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %106, i64 0, i64 2
  %XMM2.i92 = bitcast %union.VectorReg* %107 to %union.vec128_t*
  %108 = load i64, i64* %RBP.i91
  %109 = sub i64 %108, 8
  %110 = bitcast %union.vec128_t* %XMM2.i92 to i8*
  %111 = load i64, i64* %PC.i90
  %112 = add i64 %111, 5
  store i64 %112, i64* %PC.i90
  %113 = bitcast i8* %110 to <2 x float>*
  %114 = load <2 x float>, <2 x float>* %113, align 1
  %115 = extractelement <2 x float> %114, i32 0
  %116 = inttoptr i64 %109 to float*
  store float %115, float* %116
  store %struct.Memory* %loadMem_402824, %struct.Memory** %MEMORY
  %loadMem_402829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %122 to i64*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %124 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %123, i64 0, i64 1
  %XMM1.i89 = bitcast %union.VectorReg* %124 to %union.vec128_t*
  %125 = load i64, i64* %RBP.i88
  %126 = sub i64 %125, 20
  %127 = bitcast %union.vec128_t* %XMM1.i89 to i8*
  %128 = load i64, i64* %PC.i87
  %129 = add i64 %128, 5
  store i64 %129, i64* %PC.i87
  %130 = bitcast i8* %127 to <2 x float>*
  %131 = load <2 x float>, <2 x float>* %130, align 1
  %132 = extractelement <2 x float> %131, i32 0
  %133 = inttoptr i64 %126 to float*
  store float %132, float* %133
  store %struct.Memory* %loadMem_402829, %struct.Memory** %MEMORY
  br label %block_.L_40282e

block_.L_40282e:                                  ; preds = %block_40284a, %entry
  %loadMem_40282e = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %138 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %137, i64 0, i64 0
  %YMM0.i85 = bitcast %union.VectorReg* %138 to %"class.std::bitset"*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %140 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %139, i64 0, i64 0
  %XMM0.i86 = bitcast %union.VectorReg* %140 to %union.vec128_t*
  %141 = bitcast %"class.std::bitset"* %YMM0.i85 to i8*
  %142 = bitcast %"class.std::bitset"* %YMM0.i85 to i8*
  %143 = bitcast %union.vec128_t* %XMM0.i86 to i8*
  %144 = load i64, i64* %PC.i84
  %145 = add i64 %144, 3
  store i64 %145, i64* %PC.i84
  %146 = bitcast i8* %142 to i64*
  %147 = load i64, i64* %146, align 1
  %148 = getelementptr inbounds i8, i8* %142, i64 8
  %149 = bitcast i8* %148 to i64*
  %150 = load i64, i64* %149, align 1
  %151 = bitcast i8* %143 to i64*
  %152 = load i64, i64* %151, align 1
  %153 = getelementptr inbounds i8, i8* %143, i64 8
  %154 = bitcast i8* %153 to i64*
  %155 = load i64, i64* %154, align 1
  %156 = xor i64 %152, %147
  %157 = xor i64 %155, %150
  %158 = trunc i64 %156 to i32
  %159 = lshr i64 %156, 32
  %160 = trunc i64 %159 to i32
  %161 = bitcast i8* %141 to i32*
  store i32 %158, i32* %161, align 1
  %162 = getelementptr inbounds i8, i8* %141, i64 4
  %163 = bitcast i8* %162 to i32*
  store i32 %160, i32* %163, align 1
  %164 = trunc i64 %157 to i32
  %165 = getelementptr inbounds i8, i8* %141, i64 8
  %166 = bitcast i8* %165 to i32*
  store i32 %164, i32* %166, align 1
  %167 = lshr i64 %157, 32
  %168 = trunc i64 %167 to i32
  %169 = getelementptr inbounds i8, i8* %141, i64 12
  %170 = bitcast i8* %169 to i32*
  store i32 %168, i32* %170, align 1
  store %struct.Memory* %loadMem_40282e, %struct.Memory** %MEMORY
  %loadMem_402831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 15
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %178 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %177, i64 0, i64 1
  %YMM1.i83 = bitcast %union.VectorReg* %178 to %"class.std::bitset"*
  %179 = bitcast %"class.std::bitset"* %YMM1.i83 to i8*
  %180 = load i64, i64* %RBP.i82
  %181 = sub i64 %180, 20
  %182 = load i64, i64* %PC.i81
  %183 = add i64 %182, 5
  store i64 %183, i64* %PC.i81
  %184 = inttoptr i64 %181 to float*
  %185 = load float, float* %184
  %186 = bitcast i8* %179 to float*
  store float %185, float* %186, align 1
  %187 = getelementptr inbounds i8, i8* %179, i64 4
  %188 = bitcast i8* %187 to float*
  store float 0.000000e+00, float* %188, align 1
  %189 = getelementptr inbounds i8, i8* %179, i64 8
  %190 = bitcast i8* %189 to float*
  store float 0.000000e+00, float* %190, align 1
  %191 = getelementptr inbounds i8, i8* %179, i64 12
  %192 = bitcast i8* %191 to float*
  store float 0.000000e+00, float* %192, align 1
  store %struct.Memory* %loadMem_402831, %struct.Memory** %MEMORY
  %loadMem_402836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 33
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %195 to i64*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %197 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %196, i64 0, i64 1
  %YMM1.i79 = bitcast %union.VectorReg* %197 to %"class.std::bitset"*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %199 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %198, i64 0, i64 1
  %XMM1.i80 = bitcast %union.VectorReg* %199 to %union.vec128_t*
  %200 = bitcast %"class.std::bitset"* %YMM1.i79 to i8*
  %201 = bitcast %union.vec128_t* %XMM1.i80 to i8*
  %202 = load i64, i64* %PC.i78
  %203 = add i64 %202, 4
  store i64 %203, i64* %PC.i78
  %204 = bitcast i8* %201 to <2 x float>*
  %205 = load <2 x float>, <2 x float>* %204, align 1
  %206 = extractelement <2 x float> %205, i32 0
  %207 = fpext float %206 to double
  %208 = bitcast i8* %200 to double*
  store double %207, double* %208, align 1
  store %struct.Memory* %loadMem_402836, %struct.Memory** %MEMORY
  %loadMem_40283a = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %213 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %212, i64 0, i64 0
  %XMM0.i74 = bitcast %union.VectorReg* %213 to %union.vec128_t*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %215 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %214, i64 0, i64 1
  %XMM1.i75 = bitcast %union.VectorReg* %215 to %union.vec128_t*
  %216 = bitcast %union.vec128_t* %XMM1.i75 to i8*
  %217 = bitcast %union.vec128_t* %XMM0.i74 to i8*
  %218 = load i64, i64* %PC.i73
  %219 = add i64 %218, 4
  store i64 %219, i64* %PC.i73
  %220 = bitcast i8* %216 to double*
  %221 = load double, double* %220, align 1
  %222 = bitcast i8* %217 to double*
  %223 = load double, double* %222, align 1
  %224 = fcmp uno double %221, %223
  br i1 %224, label %225, label %237

; <label>:225:                                    ; preds = %block_.L_40282e
  %226 = fadd double %221, %223
  %227 = bitcast double %226 to i64
  %228 = and i64 %227, 9221120237041090560
  %229 = icmp eq i64 %228, 9218868437227405312
  %230 = and i64 %227, 2251799813685247
  %231 = icmp ne i64 %230, 0
  %232 = and i1 %229, %231
  br i1 %232, label %233, label %243

; <label>:233:                                    ; preds = %225
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %235, %struct.Memory* %loadMem_40283a)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:237:                                    ; preds = %block_.L_40282e
  %238 = fcmp ogt double %221, %223
  br i1 %238, label %243, label %239

; <label>:239:                                    ; preds = %237
  %240 = fcmp olt double %221, %223
  br i1 %240, label %243, label %241

; <label>:241:                                    ; preds = %239
  %242 = fcmp oeq double %221, %223
  br i1 %242, label %243, label %250

; <label>:243:                                    ; preds = %241, %239, %237, %225
  %244 = phi i8 [ 0, %237 ], [ 0, %239 ], [ 1, %241 ], [ 1, %225 ]
  %245 = phi i8 [ 0, %237 ], [ 0, %239 ], [ 0, %241 ], [ 1, %225 ]
  %246 = phi i8 [ 0, %237 ], [ 1, %239 ], [ 0, %241 ], [ 1, %225 ]
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %244, i8* %247, align 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %245, i8* %248, align 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %246, i8* %249, align 1
  br label %250

; <label>:250:                                    ; preds = %243, %241
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %251, align 1
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %252, align 1
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %253, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %233, %250
  %254 = phi %struct.Memory* [ %236, %233 ], [ %loadMem_40283a, %250 ]
  store %struct.Memory* %254, %struct.Memory** %MEMORY
  %loadMem_40283e = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %257 to i64*
  %258 = load i64, i64* %PC.i72
  %259 = add i64 %258, 100
  %260 = load i64, i64* %PC.i72
  %261 = add i64 %260, 6
  %262 = load i64, i64* %PC.i72
  %263 = add i64 %262, 6
  store i64 %263, i64* %PC.i72
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %265 = load i8, i8* %264, align 1
  %266 = icmp eq i8 %265, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %BRANCH_TAKEN, align 1
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %269 = select i1 %266, i64 %259, i64 %261
  store i64 %269, i64* %268, align 8
  store %struct.Memory* %loadMem_40283e, %struct.Memory** %MEMORY
  %loadBr_40283e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40283e = icmp eq i8 %loadBr_40283e, 1
  br i1 %cmpBr_40283e, label %block_.L_4028a2, label %block_402844

block_402844:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_402844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 33
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %272 to i64*
  %273 = load i64, i64* %PC.i71
  %274 = add i64 %273, 94
  %275 = load i64, i64* %PC.i71
  %276 = add i64 %275, 6
  %277 = load i64, i64* %PC.i71
  %278 = add i64 %277, 6
  store i64 %278, i64* %PC.i71
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %280 = load i8, i8* %279, align 1
  store i8 %280, i8* %BRANCH_TAKEN, align 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %282 = icmp ne i8 %280, 0
  %283 = select i1 %282, i64 %274, i64 %276
  store i64 %283, i64* %281, align 8
  store %struct.Memory* %loadMem_402844, %struct.Memory** %MEMORY
  %loadBr_402844 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402844 = icmp eq i8 %loadBr_402844, 1
  br i1 %cmpBr_402844, label %block_.L_4028a2, label %block_40284a

block_40284a:                                     ; preds = %block_402844
  %loadMem_40284a = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %288 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %287, i64 0, i64 0
  %YMM0.i70 = bitcast %union.VectorReg* %288 to %"class.std::bitset"*
  %289 = bitcast %"class.std::bitset"* %YMM0.i70 to i8*
  %290 = load i64, i64* %PC.i69
  %291 = load i64, i64* %PC.i69
  %292 = add i64 %291, 8
  store i64 %292, i64* %PC.i69
  %293 = load double, double* bitcast (%G_0x6be__rip__type* @G_0x6be__rip_ to double*)
  %294 = bitcast i8* %289 to double*
  store double %293, double* %294, align 1
  %295 = getelementptr inbounds i8, i8* %289, i64 8
  %296 = bitcast i8* %295 to double*
  store double 0.000000e+00, double* %296, align 1
  store %struct.Memory* %loadMem_40284a, %struct.Memory** %MEMORY
  %loadMem_402852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 15
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %304 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %303, i64 0, i64 1
  %YMM1.i68 = bitcast %union.VectorReg* %304 to %"class.std::bitset"*
  %305 = bitcast %"class.std::bitset"* %YMM1.i68 to i8*
  %306 = load i64, i64* %RBP.i67
  %307 = sub i64 %306, 8
  %308 = load i64, i64* %PC.i66
  %309 = add i64 %308, 5
  store i64 %309, i64* %PC.i66
  %310 = inttoptr i64 %307 to float*
  %311 = load float, float* %310
  %312 = bitcast i8* %305 to float*
  store float %311, float* %312, align 1
  %313 = getelementptr inbounds i8, i8* %305, i64 4
  %314 = bitcast i8* %313 to float*
  store float 0.000000e+00, float* %314, align 1
  %315 = getelementptr inbounds i8, i8* %305, i64 8
  %316 = bitcast i8* %315 to float*
  store float 0.000000e+00, float* %316, align 1
  %317 = getelementptr inbounds i8, i8* %305, i64 12
  %318 = bitcast i8* %317 to float*
  store float 0.000000e+00, float* %318, align 1
  store %struct.Memory* %loadMem_402852, %struct.Memory** %MEMORY
  %loadMem_402857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %323 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %322, i64 0, i64 1
  %YMM1.i64 = bitcast %union.VectorReg* %323 to %"class.std::bitset"*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %325 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %324, i64 0, i64 1
  %XMM1.i65 = bitcast %union.VectorReg* %325 to %union.vec128_t*
  %326 = bitcast %"class.std::bitset"* %YMM1.i64 to i8*
  %327 = bitcast %union.vec128_t* %XMM1.i65 to i8*
  %328 = load i64, i64* %PC.i63
  %329 = add i64 %328, 4
  store i64 %329, i64* %PC.i63
  %330 = bitcast i8* %327 to <2 x float>*
  %331 = load <2 x float>, <2 x float>* %330, align 1
  %332 = extractelement <2 x float> %331, i32 0
  %333 = fpext float %332 to double
  %334 = bitcast i8* %326 to double*
  store double %333, double* %334, align 1
  store %struct.Memory* %loadMem_402857, %struct.Memory** %MEMORY
  %loadMem_40285b = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %338, i64 0, i64 1
  %YMM1.i61 = bitcast %union.VectorReg* %339 to %"class.std::bitset"*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %341 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %340, i64 0, i64 0
  %XMM0.i62 = bitcast %union.VectorReg* %341 to %union.vec128_t*
  %342 = bitcast %"class.std::bitset"* %YMM1.i61 to i8*
  %343 = bitcast %"class.std::bitset"* %YMM1.i61 to i8*
  %344 = bitcast %union.vec128_t* %XMM0.i62 to i8*
  %345 = load i64, i64* %PC.i60
  %346 = add i64 %345, 4
  store i64 %346, i64* %PC.i60
  %347 = bitcast i8* %343 to double*
  %348 = load double, double* %347, align 1
  %349 = getelementptr inbounds i8, i8* %343, i64 8
  %350 = bitcast i8* %349 to i64*
  %351 = load i64, i64* %350, align 1
  %352 = bitcast i8* %344 to double*
  %353 = load double, double* %352, align 1
  %354 = fsub double %348, %353
  %355 = bitcast i8* %342 to double*
  store double %354, double* %355, align 1
  %356 = getelementptr inbounds i8, i8* %342, i64 8
  %357 = bitcast i8* %356 to i64*
  store i64 %351, i64* %357, align 1
  store %struct.Memory* %loadMem_40285b, %struct.Memory** %MEMORY
  %loadMem_40285f = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %362 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %361, i64 0, i64 1
  %YMM1.i58 = bitcast %union.VectorReg* %362 to %"class.std::bitset"*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %364 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %363, i64 0, i64 1
  %XMM1.i59 = bitcast %union.VectorReg* %364 to %union.vec128_t*
  %365 = bitcast %"class.std::bitset"* %YMM1.i58 to i8*
  %366 = bitcast %union.vec128_t* %XMM1.i59 to i8*
  %367 = load i64, i64* %PC.i57
  %368 = add i64 %367, 4
  store i64 %368, i64* %PC.i57
  %369 = bitcast i8* %365 to <2 x i32>*
  %370 = load <2 x i32>, <2 x i32>* %369, align 1
  %371 = getelementptr inbounds i8, i8* %365, i64 8
  %372 = bitcast i8* %371 to <2 x i32>*
  %373 = load <2 x i32>, <2 x i32>* %372, align 1
  %374 = bitcast i8* %366 to double*
  %375 = load double, double* %374, align 1
  %376 = fptrunc double %375 to float
  %377 = bitcast i8* %365 to float*
  store float %376, float* %377, align 1
  %378 = extractelement <2 x i32> %370, i32 1
  %379 = getelementptr inbounds i8, i8* %365, i64 4
  %380 = bitcast i8* %379 to i32*
  store i32 %378, i32* %380, align 1
  %381 = extractelement <2 x i32> %373, i32 0
  %382 = bitcast i8* %371 to i32*
  store i32 %381, i32* %382, align 1
  %383 = extractelement <2 x i32> %373, i32 1
  %384 = getelementptr inbounds i8, i8* %365, i64 12
  %385 = bitcast i8* %384 to i32*
  store i32 %383, i32* %385, align 1
  store %struct.Memory* %loadMem_40285f, %struct.Memory** %MEMORY
  %loadMem_402863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 15
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %393 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %392, i64 0, i64 1
  %XMM1.i56 = bitcast %union.VectorReg* %393 to %union.vec128_t*
  %394 = load i64, i64* %RBP.i55
  %395 = sub i64 %394, 12
  %396 = bitcast %union.vec128_t* %XMM1.i56 to i8*
  %397 = load i64, i64* %PC.i54
  %398 = add i64 %397, 5
  store i64 %398, i64* %PC.i54
  %399 = bitcast i8* %396 to <2 x float>*
  %400 = load <2 x float>, <2 x float>* %399, align 1
  %401 = extractelement <2 x float> %400, i32 0
  %402 = inttoptr i64 %395 to float*
  store float %401, float* %402
  store %struct.Memory* %loadMem_402863, %struct.Memory** %MEMORY
  %loadMem_402868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 15
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %409, i64 0, i64 1
  %YMM1.i53 = bitcast %union.VectorReg* %410 to %"class.std::bitset"*
  %411 = bitcast %"class.std::bitset"* %YMM1.i53 to i8*
  %412 = load i64, i64* %RBP.i52
  %413 = sub i64 %412, 12
  %414 = load i64, i64* %PC.i51
  %415 = add i64 %414, 5
  store i64 %415, i64* %PC.i51
  %416 = inttoptr i64 %413 to float*
  %417 = load float, float* %416
  %418 = bitcast i8* %411 to float*
  store float %417, float* %418, align 1
  %419 = getelementptr inbounds i8, i8* %411, i64 4
  %420 = bitcast i8* %419 to float*
  store float 0.000000e+00, float* %420, align 1
  %421 = getelementptr inbounds i8, i8* %411, i64 8
  %422 = bitcast i8* %421 to float*
  store float 0.000000e+00, float* %422, align 1
  %423 = getelementptr inbounds i8, i8* %411, i64 12
  %424 = bitcast i8* %423 to float*
  store float 0.000000e+00, float* %424, align 1
  store %struct.Memory* %loadMem_402868, %struct.Memory** %MEMORY
  %loadMem_40286d = load %struct.Memory*, %struct.Memory** %MEMORY
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 33
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 15
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %432 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %431, i64 0, i64 1
  %YMM1.i50 = bitcast %union.VectorReg* %432 to %"class.std::bitset"*
  %433 = bitcast %"class.std::bitset"* %YMM1.i50 to i8*
  %434 = bitcast %"class.std::bitset"* %YMM1.i50 to i8*
  %435 = load i64, i64* %RBP.i49
  %436 = sub i64 %435, 12
  %437 = load i64, i64* %PC.i48
  %438 = add i64 %437, 5
  store i64 %438, i64* %PC.i48
  %439 = bitcast i8* %434 to <2 x float>*
  %440 = load <2 x float>, <2 x float>* %439, align 1
  %441 = getelementptr inbounds i8, i8* %434, i64 8
  %442 = bitcast i8* %441 to <2 x i32>*
  %443 = load <2 x i32>, <2 x i32>* %442, align 1
  %444 = inttoptr i64 %436 to float*
  %445 = load float, float* %444
  %446 = extractelement <2 x float> %440, i32 0
  %447 = fadd float %446, %445
  %448 = bitcast i8* %433 to float*
  store float %447, float* %448, align 1
  %449 = bitcast <2 x float> %440 to <2 x i32>
  %450 = extractelement <2 x i32> %449, i32 1
  %451 = getelementptr inbounds i8, i8* %433, i64 4
  %452 = bitcast i8* %451 to i32*
  store i32 %450, i32* %452, align 1
  %453 = extractelement <2 x i32> %443, i32 0
  %454 = getelementptr inbounds i8, i8* %433, i64 8
  %455 = bitcast i8* %454 to i32*
  store i32 %453, i32* %455, align 1
  %456 = extractelement <2 x i32> %443, i32 1
  %457 = getelementptr inbounds i8, i8* %433, i64 12
  %458 = bitcast i8* %457 to i32*
  store i32 %456, i32* %458, align 1
  store %struct.Memory* %loadMem_40286d, %struct.Memory** %MEMORY
  %loadMem_402872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 33
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 15
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %464 to i64*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %466 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %465, i64 0, i64 1
  %YMM1.i47 = bitcast %union.VectorReg* %466 to %"class.std::bitset"*
  %467 = bitcast %"class.std::bitset"* %YMM1.i47 to i8*
  %468 = bitcast %"class.std::bitset"* %YMM1.i47 to i8*
  %469 = load i64, i64* %RBP.i46
  %470 = sub i64 %469, 12
  %471 = load i64, i64* %PC.i45
  %472 = add i64 %471, 5
  store i64 %472, i64* %PC.i45
  %473 = bitcast i8* %468 to <2 x float>*
  %474 = load <2 x float>, <2 x float>* %473, align 1
  %475 = getelementptr inbounds i8, i8* %468, i64 8
  %476 = bitcast i8* %475 to <2 x i32>*
  %477 = load <2 x i32>, <2 x i32>* %476, align 1
  %478 = inttoptr i64 %470 to float*
  %479 = load float, float* %478
  %480 = extractelement <2 x float> %474, i32 0
  %481 = fadd float %480, %479
  %482 = bitcast i8* %467 to float*
  store float %481, float* %482, align 1
  %483 = bitcast <2 x float> %474 to <2 x i32>
  %484 = extractelement <2 x i32> %483, i32 1
  %485 = getelementptr inbounds i8, i8* %467, i64 4
  %486 = bitcast i8* %485 to i32*
  store i32 %484, i32* %486, align 1
  %487 = extractelement <2 x i32> %477, i32 0
  %488 = getelementptr inbounds i8, i8* %467, i64 8
  %489 = bitcast i8* %488 to i32*
  store i32 %487, i32* %489, align 1
  %490 = extractelement <2 x i32> %477, i32 1
  %491 = getelementptr inbounds i8, i8* %467, i64 12
  %492 = bitcast i8* %491 to i32*
  store i32 %490, i32* %492, align 1
  store %struct.Memory* %loadMem_402872, %struct.Memory** %MEMORY
  %loadMem_402877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 33
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 15
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %498 to i64*
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %500 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %499, i64 0, i64 1
  %XMM1.i44 = bitcast %union.VectorReg* %500 to %union.vec128_t*
  %501 = load i64, i64* %RBP.i43
  %502 = sub i64 %501, 16
  %503 = bitcast %union.vec128_t* %XMM1.i44 to i8*
  %504 = load i64, i64* %PC.i42
  %505 = add i64 %504, 5
  store i64 %505, i64* %PC.i42
  %506 = bitcast i8* %503 to <2 x float>*
  %507 = load <2 x float>, <2 x float>* %506, align 1
  %508 = extractelement <2 x float> %507, i32 0
  %509 = inttoptr i64 %502 to float*
  store float %508, float* %509
  store %struct.Memory* %loadMem_402877, %struct.Memory** %MEMORY
  %loadMem_40287c = load %struct.Memory*, %struct.Memory** %MEMORY
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 33
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 15
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %517 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %516, i64 0, i64 1
  %YMM1.i41 = bitcast %union.VectorReg* %517 to %"class.std::bitset"*
  %518 = bitcast %"class.std::bitset"* %YMM1.i41 to i8*
  %519 = load i64, i64* %RBP.i40
  %520 = sub i64 %519, 16
  %521 = load i64, i64* %PC.i39
  %522 = add i64 %521, 5
  store i64 %522, i64* %PC.i39
  %523 = inttoptr i64 %520 to float*
  %524 = load float, float* %523
  %525 = bitcast i8* %518 to float*
  store float %524, float* %525, align 1
  %526 = getelementptr inbounds i8, i8* %518, i64 4
  %527 = bitcast i8* %526 to float*
  store float 0.000000e+00, float* %527, align 1
  %528 = getelementptr inbounds i8, i8* %518, i64 8
  %529 = bitcast i8* %528 to float*
  store float 0.000000e+00, float* %529, align 1
  %530 = getelementptr inbounds i8, i8* %518, i64 12
  %531 = bitcast i8* %530 to float*
  store float 0.000000e+00, float* %531, align 1
  store %struct.Memory* %loadMem_40287c, %struct.Memory** %MEMORY
  %loadMem_402881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 33
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %536 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %535, i64 0, i64 1
  %YMM1.i37 = bitcast %union.VectorReg* %536 to %"class.std::bitset"*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %538 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %537, i64 0, i64 1
  %XMM1.i38 = bitcast %union.VectorReg* %538 to %union.vec128_t*
  %539 = bitcast %"class.std::bitset"* %YMM1.i37 to i8*
  %540 = bitcast %union.vec128_t* %XMM1.i38 to i8*
  %541 = load i64, i64* %PC.i36
  %542 = add i64 %541, 4
  store i64 %542, i64* %PC.i36
  %543 = bitcast i8* %540 to <2 x float>*
  %544 = load <2 x float>, <2 x float>* %543, align 1
  %545 = extractelement <2 x float> %544, i32 0
  %546 = fpext float %545 to double
  %547 = bitcast i8* %539 to double*
  store double %546, double* %547, align 1
  store %struct.Memory* %loadMem_402881, %struct.Memory** %MEMORY
  %loadMem_402885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %552 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %551, i64 0, i64 1
  %YMM1.i34 = bitcast %union.VectorReg* %552 to %"class.std::bitset"*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %554 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %553, i64 0, i64 0
  %XMM0.i35 = bitcast %union.VectorReg* %554 to %union.vec128_t*
  %555 = bitcast %"class.std::bitset"* %YMM1.i34 to i8*
  %556 = bitcast %"class.std::bitset"* %YMM1.i34 to i8*
  %557 = bitcast %union.vec128_t* %XMM0.i35 to i8*
  %558 = load i64, i64* %PC.i33
  %559 = add i64 %558, 4
  store i64 %559, i64* %PC.i33
  %560 = bitcast i8* %556 to double*
  %561 = load double, double* %560, align 1
  %562 = getelementptr inbounds i8, i8* %556, i64 8
  %563 = bitcast i8* %562 to i64*
  %564 = load i64, i64* %563, align 1
  %565 = bitcast i8* %557 to double*
  %566 = load double, double* %565, align 1
  %567 = fsub double %561, %566
  %568 = bitcast i8* %555 to double*
  store double %567, double* %568, align 1
  %569 = getelementptr inbounds i8, i8* %555, i64 8
  %570 = bitcast i8* %569 to i64*
  store i64 %564, i64* %570, align 1
  store %struct.Memory* %loadMem_402885, %struct.Memory** %MEMORY
  %loadMem_402889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %575 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %574, i64 0, i64 0
  %YMM0.i32 = bitcast %union.VectorReg* %575 to %"class.std::bitset"*
  %576 = bitcast %"class.std::bitset"* %YMM0.i32 to i8*
  %577 = load i64, i64* %PC.i31
  %578 = load i64, i64* %PC.i31
  %579 = add i64 %578, 7
  store i64 %579, i64* %PC.i31
  %580 = load float, float* bitcast (%G_0x690__rip__type* @G_0x690__rip_ to float*)
  %581 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x690__rip__type* @G_0x690__rip_ to i64), i64 4) to float*)
  %582 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x690__rip__type* @G_0x690__rip_ to i64), i64 8) to float*)
  %583 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x690__rip__type* @G_0x690__rip_ to i64), i64 12) to float*)
  %584 = bitcast i8* %576 to float*
  store float %580, float* %584, align 1
  %585 = getelementptr inbounds i8, i8* %576, i64 4
  %586 = bitcast i8* %585 to float*
  store float %581, float* %586, align 1
  %587 = getelementptr inbounds i8, i8* %576, i64 8
  %588 = bitcast i8* %587 to float*
  store float %582, float* %588, align 1
  %589 = getelementptr inbounds i8, i8* %576, i64 12
  %590 = bitcast i8* %589 to float*
  store float %583, float* %590, align 1
  store %struct.Memory* %loadMem_402889, %struct.Memory** %MEMORY
  %loadMem_402890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %594, i64 0, i64 1
  %YMM1.i29 = bitcast %union.VectorReg* %595 to %"class.std::bitset"*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %597 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %596, i64 0, i64 0
  %XMM0.i30 = bitcast %union.VectorReg* %597 to %union.vec128_t*
  %598 = bitcast %"class.std::bitset"* %YMM1.i29 to i8*
  %599 = bitcast %"class.std::bitset"* %YMM1.i29 to i8*
  %600 = bitcast %union.vec128_t* %XMM0.i30 to i8*
  %601 = load i64, i64* %PC.i28
  %602 = add i64 %601, 4
  store i64 %602, i64* %PC.i28
  %603 = bitcast i8* %599 to i64*
  %604 = load i64, i64* %603, align 1
  %605 = getelementptr inbounds i8, i8* %599, i64 8
  %606 = bitcast i8* %605 to i64*
  %607 = load i64, i64* %606, align 1
  %608 = bitcast i8* %600 to i64*
  %609 = load i64, i64* %608, align 1
  %610 = getelementptr inbounds i8, i8* %600, i64 8
  %611 = bitcast i8* %610 to i64*
  %612 = load i64, i64* %611, align 1
  %613 = and i64 %609, %604
  %614 = and i64 %612, %607
  %615 = trunc i64 %613 to i32
  %616 = lshr i64 %613, 32
  %617 = trunc i64 %616 to i32
  %618 = bitcast i8* %598 to i32*
  store i32 %615, i32* %618, align 1
  %619 = getelementptr inbounds i8, i8* %598, i64 4
  %620 = bitcast i8* %619 to i32*
  store i32 %617, i32* %620, align 1
  %621 = trunc i64 %614 to i32
  %622 = getelementptr inbounds i8, i8* %598, i64 8
  %623 = bitcast i8* %622 to i32*
  store i32 %621, i32* %623, align 1
  %624 = lshr i64 %614, 32
  %625 = trunc i64 %624 to i32
  %626 = getelementptr inbounds i8, i8* %598, i64 12
  %627 = bitcast i8* %626 to i32*
  store i32 %625, i32* %627, align 1
  store %struct.Memory* %loadMem_402890, %struct.Memory** %MEMORY
  %loadMem_402894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %632 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %631, i64 0, i64 0
  %YMM0.i26 = bitcast %union.VectorReg* %632 to %"class.std::bitset"*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %633, i64 0, i64 1
  %XMM1.i27 = bitcast %union.VectorReg* %634 to %union.vec128_t*
  %635 = bitcast %"class.std::bitset"* %YMM0.i26 to i8*
  %636 = bitcast %union.vec128_t* %XMM1.i27 to i8*
  %637 = load i64, i64* %PC.i25
  %638 = add i64 %637, 4
  store i64 %638, i64* %PC.i25
  %639 = bitcast i8* %635 to <2 x i32>*
  %640 = load <2 x i32>, <2 x i32>* %639, align 1
  %641 = getelementptr inbounds i8, i8* %635, i64 8
  %642 = bitcast i8* %641 to <2 x i32>*
  %643 = load <2 x i32>, <2 x i32>* %642, align 1
  %644 = bitcast i8* %636 to double*
  %645 = load double, double* %644, align 1
  %646 = fptrunc double %645 to float
  %647 = bitcast i8* %635 to float*
  store float %646, float* %647, align 1
  %648 = extractelement <2 x i32> %640, i32 1
  %649 = getelementptr inbounds i8, i8* %635, i64 4
  %650 = bitcast i8* %649 to i32*
  store i32 %648, i32* %650, align 1
  %651 = extractelement <2 x i32> %643, i32 0
  %652 = bitcast i8* %641 to i32*
  store i32 %651, i32* %652, align 1
  %653 = extractelement <2 x i32> %643, i32 1
  %654 = getelementptr inbounds i8, i8* %635, i64 12
  %655 = bitcast i8* %654 to i32*
  store i32 %653, i32* %655, align 1
  store %struct.Memory* %loadMem_402894, %struct.Memory** %MEMORY
  %loadMem_402898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 33
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 15
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %663 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %662, i64 0, i64 0
  %XMM0.i24 = bitcast %union.VectorReg* %663 to %union.vec128_t*
  %664 = load i64, i64* %RBP.i23
  %665 = sub i64 %664, 20
  %666 = bitcast %union.vec128_t* %XMM0.i24 to i8*
  %667 = load i64, i64* %PC.i22
  %668 = add i64 %667, 5
  store i64 %668, i64* %PC.i22
  %669 = bitcast i8* %666 to <2 x float>*
  %670 = load <2 x float>, <2 x float>* %669, align 1
  %671 = extractelement <2 x float> %670, i32 0
  %672 = inttoptr i64 %665 to float*
  store float %671, float* %672
  store %struct.Memory* %loadMem_402898, %struct.Memory** %MEMORY
  %loadMem_40289d = load %struct.Memory*, %struct.Memory** %MEMORY
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 33
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %PC.i21
  %677 = add i64 %676, -111
  %678 = load i64, i64* %PC.i21
  %679 = add i64 %678, 5
  store i64 %679, i64* %PC.i21
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %677, i64* %680, align 8
  store %struct.Memory* %loadMem_40289d, %struct.Memory** %MEMORY
  br label %block_.L_40282e

block_.L_4028a2:                                  ; preds = %block_402844, %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_4028a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 33
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 15
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %687, i64 0, i64 0
  %YMM0.i20 = bitcast %union.VectorReg* %688 to %"class.std::bitset"*
  %689 = bitcast %"class.std::bitset"* %YMM0.i20 to i8*
  %690 = load i64, i64* %RBP.i19
  %691 = sub i64 %690, 20
  %692 = load i64, i64* %PC.i18
  %693 = add i64 %692, 5
  store i64 %693, i64* %PC.i18
  %694 = inttoptr i64 %691 to float*
  %695 = load float, float* %694
  %696 = bitcast i8* %689 to float*
  store float %695, float* %696, align 1
  %697 = getelementptr inbounds i8, i8* %689, i64 4
  %698 = bitcast i8* %697 to float*
  store float 0.000000e+00, float* %698, align 1
  %699 = getelementptr inbounds i8, i8* %689, i64 8
  %700 = bitcast i8* %699 to float*
  store float 0.000000e+00, float* %700, align 1
  %701 = getelementptr inbounds i8, i8* %689, i64 12
  %702 = bitcast i8* %701 to float*
  store float 0.000000e+00, float* %702, align 1
  store %struct.Memory* %loadMem_4028a2, %struct.Memory** %MEMORY
  %loadMem_4028a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %707 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %706, i64 0, i64 0
  %YMM0.i16 = bitcast %union.VectorReg* %707 to %"class.std::bitset"*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %709 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %708, i64 0, i64 0
  %XMM0.i17 = bitcast %union.VectorReg* %709 to %union.vec128_t*
  %710 = bitcast %"class.std::bitset"* %YMM0.i16 to i8*
  %711 = bitcast %union.vec128_t* %XMM0.i17 to i8*
  %712 = load i64, i64* %PC.i15
  %713 = add i64 %712, 4
  store i64 %713, i64* %PC.i15
  %714 = bitcast i8* %711 to <2 x float>*
  %715 = load <2 x float>, <2 x float>* %714, align 1
  %716 = extractelement <2 x float> %715, i32 0
  %717 = fpext float %716 to double
  %718 = bitcast i8* %710 to double*
  store double %717, double* %718, align 1
  store %struct.Memory* %loadMem_4028a7, %struct.Memory** %MEMORY
  %loadMem_4028ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 33
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %721 to i64*
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 15
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %724 to i64*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %726 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %725, i64 0, i64 1
  %YMM1.i14 = bitcast %union.VectorReg* %726 to %"class.std::bitset"*
  %727 = bitcast %"class.std::bitset"* %YMM1.i14 to i8*
  %728 = load i64, i64* %RBP.i13
  %729 = sub i64 %728, 4
  %730 = load i64, i64* %PC.i12
  %731 = add i64 %730, 5
  store i64 %731, i64* %PC.i12
  %732 = inttoptr i64 %729 to float*
  %733 = load float, float* %732
  %734 = bitcast i8* %727 to float*
  store float %733, float* %734, align 1
  %735 = getelementptr inbounds i8, i8* %727, i64 4
  %736 = bitcast i8* %735 to float*
  store float 0.000000e+00, float* %736, align 1
  %737 = getelementptr inbounds i8, i8* %727, i64 8
  %738 = bitcast i8* %737 to float*
  store float 0.000000e+00, float* %738, align 1
  %739 = getelementptr inbounds i8, i8* %727, i64 12
  %740 = bitcast i8* %739 to float*
  store float 0.000000e+00, float* %740, align 1
  store %struct.Memory* %loadMem_4028ab, %struct.Memory** %MEMORY
  %loadMem_4028b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %744, i64 0, i64 1
  %YMM1.i10 = bitcast %union.VectorReg* %745 to %"class.std::bitset"*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %747 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %746, i64 0, i64 1
  %XMM1.i11 = bitcast %union.VectorReg* %747 to %union.vec128_t*
  %748 = bitcast %"class.std::bitset"* %YMM1.i10 to i8*
  %749 = bitcast %union.vec128_t* %XMM1.i11 to i8*
  %750 = load i64, i64* %PC.i9
  %751 = add i64 %750, 4
  store i64 %751, i64* %PC.i9
  %752 = bitcast i8* %749 to <2 x float>*
  %753 = load <2 x float>, <2 x float>* %752, align 1
  %754 = extractelement <2 x float> %753, i32 0
  %755 = fpext float %754 to double
  %756 = bitcast i8* %748 to double*
  store double %755, double* %756, align 1
  store %struct.Memory* %loadMem_4028b0, %struct.Memory** %MEMORY
  %loadMem_4028b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 33
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %759 to i64*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %761 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %760, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %761 to %"class.std::bitset"*
  %762 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %763 = load i64, i64* %PC.i8
  %764 = load i64, i64* %PC.i8
  %765 = add i64 %764, 7
  store i64 %765, i64* %PC.i8
  %766 = load float, float* bitcast (%G_0x665__rip__type* @G_0x665__rip_ to float*)
  %767 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x665__rip__type* @G_0x665__rip_ to i64), i64 4) to float*)
  %768 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x665__rip__type* @G_0x665__rip_ to i64), i64 8) to float*)
  %769 = load float, float* inttoptr (i64 add (i64 ptrtoint (%G_0x665__rip__type* @G_0x665__rip_ to i64), i64 12) to float*)
  %770 = bitcast i8* %762 to float*
  store float %766, float* %770, align 1
  %771 = getelementptr inbounds i8, i8* %762, i64 4
  %772 = bitcast i8* %771 to float*
  store float %767, float* %772, align 1
  %773 = getelementptr inbounds i8, i8* %762, i64 8
  %774 = bitcast i8* %773 to float*
  store float %768, float* %774, align 1
  %775 = getelementptr inbounds i8, i8* %762, i64 12
  %776 = bitcast i8* %775 to float*
  store float %769, float* %776, align 1
  store %struct.Memory* %loadMem_4028b4, %struct.Memory** %MEMORY
  %loadMem_4028bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %780, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %781 to %"class.std::bitset"*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %783 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %782, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %783 to %union.vec128_t*
  %784 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %785 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %786 = bitcast %union.vec128_t* %XMM2.i to i8*
  %787 = load i64, i64* %PC.i7
  %788 = add i64 %787, 4
  store i64 %788, i64* %PC.i7
  %789 = bitcast i8* %785 to i64*
  %790 = load i64, i64* %789, align 1
  %791 = getelementptr inbounds i8, i8* %785, i64 8
  %792 = bitcast i8* %791 to i64*
  %793 = load i64, i64* %792, align 1
  %794 = bitcast i8* %786 to i64*
  %795 = load i64, i64* %794, align 1
  %796 = getelementptr inbounds i8, i8* %786, i64 8
  %797 = bitcast i8* %796 to i64*
  %798 = load i64, i64* %797, align 1
  %799 = and i64 %795, %790
  %800 = and i64 %798, %793
  %801 = trunc i64 %799 to i32
  %802 = lshr i64 %799, 32
  %803 = trunc i64 %802 to i32
  %804 = bitcast i8* %784 to i32*
  store i32 %801, i32* %804, align 1
  %805 = getelementptr inbounds i8, i8* %784, i64 4
  %806 = bitcast i8* %805 to i32*
  store i32 %803, i32* %806, align 1
  %807 = trunc i64 %800 to i32
  %808 = getelementptr inbounds i8, i8* %784, i64 8
  %809 = bitcast i8* %808 to i32*
  store i32 %807, i32* %809, align 1
  %810 = lshr i64 %800, 32
  %811 = trunc i64 %810 to i32
  %812 = getelementptr inbounds i8, i8* %784, i64 12
  %813 = bitcast i8* %812 to i32*
  store i32 %811, i32* %813, align 1
  store %struct.Memory* %loadMem_4028bb, %struct.Memory** %MEMORY
  %loadMem_4028bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %818 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %817, i64 0, i64 0
  %YMM0.i6 = bitcast %union.VectorReg* %818 to %"class.std::bitset"*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %820 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %819, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %820 to %union.vec128_t*
  %821 = bitcast %"class.std::bitset"* %YMM0.i6 to i8*
  %822 = bitcast %"class.std::bitset"* %YMM0.i6 to i8*
  %823 = bitcast %union.vec128_t* %XMM1.i to i8*
  %824 = load i64, i64* %PC.i5
  %825 = add i64 %824, 4
  store i64 %825, i64* %PC.i5
  %826 = bitcast i8* %822 to double*
  %827 = load double, double* %826, align 1
  %828 = getelementptr inbounds i8, i8* %822, i64 8
  %829 = bitcast i8* %828 to i64*
  %830 = load i64, i64* %829, align 1
  %831 = bitcast i8* %823 to double*
  %832 = load double, double* %831, align 1
  %833 = fmul double %827, %832
  %834 = bitcast i8* %821 to double*
  store double %833, double* %834, align 1
  %835 = getelementptr inbounds i8, i8* %821, i64 8
  %836 = bitcast i8* %835 to i64*
  store i64 %830, i64* %836, align 1
  store %struct.Memory* %loadMem_4028bf, %struct.Memory** %MEMORY
  %loadMem_4028c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %839 to i64*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %841 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %840, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %841 to %"class.std::bitset"*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %843 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %842, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %843 to %union.vec128_t*
  %844 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %845 = bitcast %union.vec128_t* %XMM0.i to i8*
  %846 = load i64, i64* %PC.i4
  %847 = add i64 %846, 4
  store i64 %847, i64* %PC.i4
  %848 = bitcast i8* %844 to <2 x i32>*
  %849 = load <2 x i32>, <2 x i32>* %848, align 1
  %850 = getelementptr inbounds i8, i8* %844, i64 8
  %851 = bitcast i8* %850 to <2 x i32>*
  %852 = load <2 x i32>, <2 x i32>* %851, align 1
  %853 = bitcast i8* %845 to double*
  %854 = load double, double* %853, align 1
  %855 = fptrunc double %854 to float
  %856 = bitcast i8* %844 to float*
  store float %855, float* %856, align 1
  %857 = extractelement <2 x i32> %849, i32 1
  %858 = getelementptr inbounds i8, i8* %844, i64 4
  %859 = bitcast i8* %858 to i32*
  store i32 %857, i32* %859, align 1
  %860 = extractelement <2 x i32> %852, i32 0
  %861 = bitcast i8* %850 to i32*
  store i32 %860, i32* %861, align 1
  %862 = extractelement <2 x i32> %852, i32 1
  %863 = getelementptr inbounds i8, i8* %844, i64 12
  %864 = bitcast i8* %863 to i32*
  store i32 %862, i32* %864, align 1
  store %struct.Memory* %loadMem_4028c3, %struct.Memory** %MEMORY
  %loadMem_4028c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 33
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %867 to i64*
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 15
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %870 to i64*
  %871 = load i64, i64* %PC.i2
  %872 = add i64 %871, 1
  store i64 %872, i64* %PC.i2
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %874 = load i64, i64* %873, align 8
  %875 = add i64 %874, 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876
  store i64 %877, i64* %RBP.i3, align 8
  store i64 %875, i64* %873, align 8
  store %struct.Memory* %loadMem_4028c7, %struct.Memory** %MEMORY
  %loadMem_4028c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 33
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %880 to i64*
  %881 = load i64, i64* %PC.i1
  %882 = add i64 %881, 1
  store i64 %882, i64* %PC.i1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %885 = load i64, i64* %884, align 8
  %886 = inttoptr i64 %885 to i64*
  %887 = load i64, i64* %886
  store i64 %887, i64* %883, align 8
  %888 = add i64 %885, 8
  store i64 %888, i64* %884, align 8
  store %struct.Memory* %loadMem_4028c8, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4028c8
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

define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movss_0x6b1__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x6b1__rip__type* @G_0x6b1__rip_ to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 4
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

define %struct.Memory* @routine_movss__xmm2__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 20
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4028a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_4028a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6be__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x6be__rip__type* @G_0x6be__rip_ to i64
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

define %struct.Memory* @routine_movss_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss__xmm1__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 12
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_addss_MINUS0xc__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movss_MINUS0x10__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movaps_0x690__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x690__rip__type* @G_0x690__rip_ to i64
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

define %struct.Memory* @routine_pand__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_40282e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss_MINUS0x4__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
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

define %struct.Memory* @routine_movaps_0x665__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x665__rip__type* @G_0x665__rip_ to i64
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

define %struct.Memory* @routine_pand__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
