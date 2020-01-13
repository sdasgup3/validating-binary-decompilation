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
%G_0x47b__rip__4198309__type = type <{ [16 x i8] }>
%G_0x59f__rip__4198017__type = type <{ [16 x i8] }>
%G_0x6ae__rip__4197746__type = type <{ [16 x i8] }>
%G_0x868__rip__4197296__type = type <{ [16 x i8] }>
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
@G_0x47b__rip__4198309_ = global %G_0x47b__rip__4198309__type zeroinitializer
@G_0x59f__rip__4198017_ = global %G_0x59f__rip__4198017__type zeroinitializer
@G_0x6ae__rip__4197746_ = global %G_0x6ae__rip__4197746__type zeroinitializer
@G_0x868__rip__4197296_ = global %G_0x868__rip__4197296__type zeroinitializer

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
define %struct.Memory* @kernel_correlation(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400ba0, %struct.Memory** %MEMORY
  %loadMem_400ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i383 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i383
  %27 = load i64, i64* %PC.i382
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i382
  store i64 %26, i64* %RBP.i384, align 8
  store %struct.Memory* %loadMem_400ba1, %struct.Memory** %MEMORY
  %loadMem_400ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i676 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i676
  %36 = load i64, i64* %PC.i675
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i675
  %38 = sub i64 %35, 80
  store i64 %38, i64* %RSP.i676, align 8
  %39 = icmp ult i64 %35, 80
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
  %49 = xor i64 80, %35
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
  store %struct.Memory* %loadMem_400ba4, %struct.Memory** %MEMORY
  %loadMem_400ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 1
  %YMM1.i674 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM1.i674 to i8*
  %73 = load i64, i64* %PC.i673
  %74 = load i64, i64* %PC.i673
  %75 = add i64 %74, 8
  store i64 %75, i64* %PC.i673
  %76 = load double, double* bitcast (%G_0x868__rip__4197296__type* @G_0x868__rip__4197296_ to double*)
  %77 = bitcast i8* %72 to double*
  store double %76, double* %77, align 1
  %78 = getelementptr inbounds i8, i8* %72, i64 8
  %79 = bitcast i8* %78 to double*
  store double 0.000000e+00, double* %79, align 1
  store %struct.Memory* %loadMem_400ba8, %struct.Memory** %MEMORY
  %loadMem_400bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %85 to i32*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i672
  %90 = sub i64 %89, 4
  %91 = load i32, i32* %EDI.i
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %PC.i671
  %94 = add i64 %93, 3
  store i64 %94, i64* %PC.i671
  %95 = inttoptr i64 %90 to i32*
  store i32 %91, i32* %95
  store %struct.Memory* %loadMem_400bb0, %struct.Memory** %MEMORY
  %loadMem_400bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 33
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %98 to i64*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %101 to i32*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 15
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %104 to i64*
  %105 = load i64, i64* %RBP.i670
  %106 = sub i64 %105, 8
  %107 = load i32, i32* %ESI.i
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %PC.i669
  %110 = add i64 %109, 3
  store i64 %110, i64* %PC.i669
  %111 = inttoptr i64 %106 to i32*
  store i32 %107, i32* %111
  store %struct.Memory* %loadMem_400bb3, %struct.Memory** %MEMORY
  %loadMem_400bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 15
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %119 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %118, i64 0, i64 0
  %XMM0.i668 = bitcast %union.VectorReg* %119 to %union.vec128_t*
  %120 = load i64, i64* %RBP.i667
  %121 = sub i64 %120, 16
  %122 = bitcast %union.vec128_t* %XMM0.i668 to i8*
  %123 = load i64, i64* %PC.i666
  %124 = add i64 %123, 5
  store i64 %124, i64* %PC.i666
  %125 = bitcast i8* %122 to double*
  %126 = load double, double* %125, align 1
  %127 = inttoptr i64 %121 to double*
  store double %126, double* %127
  store %struct.Memory* %loadMem_400bb6, %struct.Memory** %MEMORY
  %loadMem_400bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %RDX.i664 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 15
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RBP.i665
  %138 = sub i64 %137, 24
  %139 = load i64, i64* %RDX.i664
  %140 = load i64, i64* %PC.i663
  %141 = add i64 %140, 4
  store i64 %141, i64* %PC.i663
  %142 = inttoptr i64 %138 to i64*
  store i64 %139, i64* %142
  store %struct.Memory* %loadMem_400bbb, %struct.Memory** %MEMORY
  %loadMem_400bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RCX.i661 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 15
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %151 to i64*
  %152 = load i64, i64* %RBP.i662
  %153 = sub i64 %152, 32
  %154 = load i64, i64* %RCX.i661
  %155 = load i64, i64* %PC.i660
  %156 = add i64 %155, 4
  store i64 %156, i64* %PC.i660
  %157 = inttoptr i64 %153 to i64*
  store i64 %154, i64* %157
  store %struct.Memory* %loadMem_400bbf, %struct.Memory** %MEMORY
  %loadMem_400bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 15
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %163 to i64*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 17
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %R8.i = bitcast %union.anon* %166 to i64*
  %167 = load i64, i64* %RBP.i659
  %168 = sub i64 %167, 40
  %169 = load i64, i64* %R8.i
  %170 = load i64, i64* %PC.i658
  %171 = add i64 %170, 4
  store i64 %171, i64* %PC.i658
  %172 = inttoptr i64 %168 to i64*
  store i64 %169, i64* %172
  store %struct.Memory* %loadMem_400bc3, %struct.Memory** %MEMORY
  %loadMem_400bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 33
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 15
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %178 to i64*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 19
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %R9.i = bitcast %union.anon* %181 to i64*
  %182 = load i64, i64* %RBP.i657
  %183 = sub i64 %182, 48
  %184 = load i64, i64* %R9.i
  %185 = load i64, i64* %PC.i656
  %186 = add i64 %185, 4
  store i64 %186, i64* %PC.i656
  %187 = inttoptr i64 %183 to i64*
  store i64 %184, i64* %187
  store %struct.Memory* %loadMem_400bc7, %struct.Memory** %MEMORY
  %loadMem_400bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %195 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %194, i64 0, i64 1
  %XMM1.i655 = bitcast %union.VectorReg* %195 to %union.vec128_t*
  %196 = load i64, i64* %RBP.i654
  %197 = sub i64 %196, 72
  %198 = bitcast %union.vec128_t* %XMM1.i655 to i8*
  %199 = load i64, i64* %PC.i653
  %200 = add i64 %199, 5
  store i64 %200, i64* %PC.i653
  %201 = bitcast i8* %198 to double*
  %202 = load double, double* %201, align 1
  %203 = inttoptr i64 %197 to double*
  store double %202, double* %203
  store %struct.Memory* %loadMem_400bcb, %struct.Memory** %MEMORY
  %loadMem_400bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 15
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %209 to i64*
  %210 = load i64, i64* %RBP.i652
  %211 = sub i64 %210, 56
  %212 = load i64, i64* %PC.i651
  %213 = add i64 %212, 7
  store i64 %213, i64* %PC.i651
  %214 = inttoptr i64 %211 to i32*
  store i32 0, i32* %214
  store %struct.Memory* %loadMem_400bd0, %struct.Memory** %MEMORY
  br label %block_.L_400bd7

block_.L_400bd7:                                  ; preds = %block_.L_400c41, %entry
  %loadMem_400bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 15
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %RBP.i650
  %225 = sub i64 %224, 56
  %226 = load i64, i64* %PC.i648
  %227 = add i64 %226, 3
  store i64 %227, i64* %PC.i648
  %228 = inttoptr i64 %225 to i32*
  %229 = load i32, i32* %228
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RAX.i649, align 8
  store %struct.Memory* %loadMem_400bd7, %struct.Memory** %MEMORY
  %loadMem_400bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %EAX.i646 = bitcast %union.anon* %236 to i32*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 15
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %239 to i64*
  %240 = load i32, i32* %EAX.i646
  %241 = zext i32 %240 to i64
  %242 = load i64, i64* %RBP.i647
  %243 = sub i64 %242, 4
  %244 = load i64, i64* %PC.i645
  %245 = add i64 %244, 3
  store i64 %245, i64* %PC.i645
  %246 = inttoptr i64 %243 to i32*
  %247 = load i32, i32* %246
  %248 = sub i32 %240, %247
  %249 = icmp ult i32 %240, %247
  %250 = zext i1 %249 to i8
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %250, i8* %251, align 1
  %252 = and i32 %248, 255
  %253 = call i32 @llvm.ctpop.i32(i32 %252)
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %256, i8* %257, align 1
  %258 = xor i32 %247, %240
  %259 = xor i32 %258, %248
  %260 = lshr i32 %259, 4
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %262, i8* %263, align 1
  %264 = icmp eq i32 %248, 0
  %265 = zext i1 %264 to i8
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %265, i8* %266, align 1
  %267 = lshr i32 %248, 31
  %268 = trunc i32 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %268, i8* %269, align 1
  %270 = lshr i32 %240, 31
  %271 = lshr i32 %247, 31
  %272 = xor i32 %271, %270
  %273 = xor i32 %267, %270
  %274 = add i32 %273, %272
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %276, i8* %277, align 1
  store %struct.Memory* %loadMem_400bda, %struct.Memory** %MEMORY
  %loadMem_400bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %PC.i644
  %282 = add i64 %281, 141
  %283 = load i64, i64* %PC.i644
  %284 = add i64 %283, 6
  %285 = load i64, i64* %PC.i644
  %286 = add i64 %285, 6
  store i64 %286, i64* %PC.i644
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %288 = load i8, i8* %287, align 1
  %289 = icmp ne i8 %288, 0
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %291 = load i8, i8* %290, align 1
  %292 = icmp ne i8 %291, 0
  %293 = xor i1 %289, %292
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %BRANCH_TAKEN, align 1
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %297 = select i1 %293, i64 %284, i64 %282
  store i64 %297, i64* %296, align 8
  store %struct.Memory* %loadMem_400bdd, %struct.Memory** %MEMORY
  %loadBr_400bdd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400bdd = icmp eq i8 %loadBr_400bdd, 1
  br i1 %cmpBr_400bdd, label %block_.L_400c6a, label %block_400be3

block_400be3:                                     ; preds = %block_.L_400bd7
  %loadMem_400be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %302 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %301, i64 0, i64 0
  %YMM0.i642 = bitcast %union.VectorReg* %302 to %"class.std::bitset"*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %304 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %303, i64 0, i64 0
  %XMM0.i643 = bitcast %union.VectorReg* %304 to %union.vec128_t*
  %305 = bitcast %"class.std::bitset"* %YMM0.i642 to i8*
  %306 = bitcast %"class.std::bitset"* %YMM0.i642 to i8*
  %307 = bitcast %union.vec128_t* %XMM0.i643 to i8*
  %308 = load i64, i64* %PC.i641
  %309 = add i64 %308, 3
  store i64 %309, i64* %PC.i641
  %310 = bitcast i8* %306 to i64*
  %311 = load i64, i64* %310, align 1
  %312 = getelementptr inbounds i8, i8* %306, i64 8
  %313 = bitcast i8* %312 to i64*
  %314 = load i64, i64* %313, align 1
  %315 = bitcast i8* %307 to i64*
  %316 = load i64, i64* %315, align 1
  %317 = getelementptr inbounds i8, i8* %307, i64 8
  %318 = bitcast i8* %317 to i64*
  %319 = load i64, i64* %318, align 1
  %320 = xor i64 %316, %311
  %321 = xor i64 %319, %314
  %322 = trunc i64 %320 to i32
  %323 = lshr i64 %320, 32
  %324 = trunc i64 %323 to i32
  %325 = bitcast i8* %305 to i32*
  store i32 %322, i32* %325, align 1
  %326 = getelementptr inbounds i8, i8* %305, i64 4
  %327 = bitcast i8* %326 to i32*
  store i32 %324, i32* %327, align 1
  %328 = trunc i64 %321 to i32
  %329 = getelementptr inbounds i8, i8* %305, i64 8
  %330 = bitcast i8* %329 to i32*
  store i32 %328, i32* %330, align 1
  %331 = lshr i64 %321, 32
  %332 = trunc i64 %331 to i32
  %333 = getelementptr inbounds i8, i8* %305, i64 12
  %334 = bitcast i8* %333 to i32*
  store i32 %332, i32* %334, align 1
  store %struct.Memory* %loadMem_400be3, %struct.Memory** %MEMORY
  %loadMem_400be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 15
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %343 to i64*
  %344 = load i64, i64* %RBP.i640
  %345 = sub i64 %344, 40
  %346 = load i64, i64* %PC.i638
  %347 = add i64 %346, 4
  store i64 %347, i64* %PC.i638
  %348 = inttoptr i64 %345 to i64*
  %349 = load i64, i64* %348
  store i64 %349, i64* %RAX.i639, align 8
  store %struct.Memory* %loadMem_400be6, %struct.Memory** %MEMORY
  %loadMem_400bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 5
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 15
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %358 to i64*
  %359 = load i64, i64* %RBP.i637
  %360 = sub i64 %359, 56
  %361 = load i64, i64* %PC.i635
  %362 = add i64 %361, 4
  store i64 %362, i64* %PC.i635
  %363 = inttoptr i64 %360 to i32*
  %364 = load i32, i32* %363
  %365 = sext i32 %364 to i64
  store i64 %365, i64* %RCX.i636, align 8
  store %struct.Memory* %loadMem_400bea, %struct.Memory** %MEMORY
  %loadMem_400bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 33
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %368 to i64*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %RAX.i632 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 5
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %376 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %375, i64 0, i64 0
  %XMM0.i634 = bitcast %union.VectorReg* %376 to %union.vec128_t*
  %377 = load i64, i64* %RAX.i632
  %378 = load i64, i64* %RCX.i633
  %379 = mul i64 %378, 8
  %380 = add i64 %379, %377
  %381 = bitcast %union.vec128_t* %XMM0.i634 to i8*
  %382 = load i64, i64* %PC.i631
  %383 = add i64 %382, 5
  store i64 %383, i64* %PC.i631
  %384 = bitcast i8* %381 to double*
  %385 = load double, double* %384, align 1
  %386 = inttoptr i64 %380 to double*
  store double %385, double* %386
  store %struct.Memory* %loadMem_400bee, %struct.Memory** %MEMORY
  %loadMem_400bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 33
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 15
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %392 to i64*
  %393 = load i64, i64* %RBP.i630
  %394 = sub i64 %393, 52
  %395 = load i64, i64* %PC.i629
  %396 = add i64 %395, 7
  store i64 %396, i64* %PC.i629
  %397 = inttoptr i64 %394 to i32*
  store i32 0, i32* %397
  store %struct.Memory* %loadMem_400bf3, %struct.Memory** %MEMORY
  br label %block_.L_400bfa

block_.L_400bfa:                                  ; preds = %block_400c06, %block_400be3
  %loadMem_400bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 33
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %400 to i64*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %403 to i64*
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 15
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %406 to i64*
  %407 = load i64, i64* %RBP.i628
  %408 = sub i64 %407, 52
  %409 = load i64, i64* %PC.i626
  %410 = add i64 %409, 3
  store i64 %410, i64* %PC.i626
  %411 = inttoptr i64 %408 to i32*
  %412 = load i32, i32* %411
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RAX.i627, align 8
  store %struct.Memory* %loadMem_400bfa, %struct.Memory** %MEMORY
  %loadMem_400bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 33
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %416 to i64*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %EAX.i624 = bitcast %union.anon* %419 to i32*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 15
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %422 to i64*
  %423 = load i32, i32* %EAX.i624
  %424 = zext i32 %423 to i64
  %425 = load i64, i64* %RBP.i625
  %426 = sub i64 %425, 8
  %427 = load i64, i64* %PC.i623
  %428 = add i64 %427, 3
  store i64 %428, i64* %PC.i623
  %429 = inttoptr i64 %426 to i32*
  %430 = load i32, i32* %429
  %431 = sub i32 %423, %430
  %432 = icmp ult i32 %423, %430
  %433 = zext i1 %432 to i8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %433, i8* %434, align 1
  %435 = and i32 %431, 255
  %436 = call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %439, i8* %440, align 1
  %441 = xor i32 %430, %423
  %442 = xor i32 %441, %431
  %443 = lshr i32 %442, 4
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %445, i8* %446, align 1
  %447 = icmp eq i32 %431, 0
  %448 = zext i1 %447 to i8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %448, i8* %449, align 1
  %450 = lshr i32 %431, 31
  %451 = trunc i32 %450 to i8
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %451, i8* %452, align 1
  %453 = lshr i32 %423, 31
  %454 = lshr i32 %430, 31
  %455 = xor i32 %454, %453
  %456 = xor i32 %450, %453
  %457 = add i32 %456, %455
  %458 = icmp eq i32 %457, 2
  %459 = zext i1 %458 to i8
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %459, i8* %460, align 1
  store %struct.Memory* %loadMem_400bfd, %struct.Memory** %MEMORY
  %loadMem_400c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 33
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %463 to i64*
  %464 = load i64, i64* %PC.i622
  %465 = add i64 %464, 65
  %466 = load i64, i64* %PC.i622
  %467 = add i64 %466, 6
  %468 = load i64, i64* %PC.i622
  %469 = add i64 %468, 6
  store i64 %469, i64* %PC.i622
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %471 = load i8, i8* %470, align 1
  %472 = icmp ne i8 %471, 0
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %474 = load i8, i8* %473, align 1
  %475 = icmp ne i8 %474, 0
  %476 = xor i1 %472, %475
  %477 = xor i1 %476, true
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %BRANCH_TAKEN, align 1
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %480 = select i1 %476, i64 %467, i64 %465
  store i64 %480, i64* %479, align 8
  store %struct.Memory* %loadMem_400c00, %struct.Memory** %MEMORY
  %loadBr_400c00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c00 = icmp eq i8 %loadBr_400c00, 1
  br i1 %cmpBr_400c00, label %block_.L_400c41, label %block_400c06

block_400c06:                                     ; preds = %block_.L_400bfa
  %loadMem_400c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 33
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %483 to i64*
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %RAX.i620 = bitcast %union.anon* %486 to i64*
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 15
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %489 to i64*
  %490 = load i64, i64* %RBP.i621
  %491 = sub i64 %490, 24
  %492 = load i64, i64* %PC.i619
  %493 = add i64 %492, 4
  store i64 %493, i64* %PC.i619
  %494 = inttoptr i64 %491 to i64*
  %495 = load i64, i64* %494
  store i64 %495, i64* %RAX.i620, align 8
  store %struct.Memory* %loadMem_400c06, %struct.Memory** %MEMORY
  %loadMem_400c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 33
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %498 to i64*
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 5
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 15
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %504 to i64*
  %505 = load i64, i64* %RBP.i618
  %506 = sub i64 %505, 52
  %507 = load i64, i64* %PC.i616
  %508 = add i64 %507, 4
  store i64 %508, i64* %PC.i616
  %509 = inttoptr i64 %506 to i32*
  %510 = load i32, i32* %509
  %511 = sext i32 %510 to i64
  store i64 %511, i64* %RCX.i617, align 8
  store %struct.Memory* %loadMem_400c0a, %struct.Memory** %MEMORY
  %loadMem_400c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 33
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 5
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RCX.i615 = bitcast %union.anon* %517 to i64*
  %518 = load i64, i64* %RCX.i615
  %519 = load i64, i64* %PC.i614
  %520 = add i64 %519, 7
  store i64 %520, i64* %PC.i614
  %521 = sext i64 %518 to i128
  %522 = and i128 %521, -18446744073709551616
  %523 = zext i64 %518 to i128
  %524 = or i128 %522, %523
  %525 = mul i128 8000, %524
  %526 = trunc i128 %525 to i64
  store i64 %526, i64* %RCX.i615, align 8
  %527 = sext i64 %526 to i128
  %528 = icmp ne i128 %527, %525
  %529 = zext i1 %528 to i8
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %529, i8* %530, align 1
  %531 = trunc i128 %525 to i32
  %532 = and i32 %531, 255
  %533 = call i32 @llvm.ctpop.i32(i32 %532)
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %536, i8* %537, align 1
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %538, align 1
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %539, align 1
  %540 = lshr i64 %526, 63
  %541 = trunc i64 %540 to i8
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %541, i8* %542, align 1
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %529, i8* %543, align 1
  store %struct.Memory* %loadMem_400c0e, %struct.Memory** %MEMORY
  %loadMem_400c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 33
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 1
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RAX.i612 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 5
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RCX.i613 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %RAX.i612
  %554 = load i64, i64* %RCX.i613
  %555 = load i64, i64* %PC.i611
  %556 = add i64 %555, 3
  store i64 %556, i64* %PC.i611
  %557 = add i64 %554, %553
  store i64 %557, i64* %RAX.i612, align 8
  %558 = icmp ult i64 %557, %553
  %559 = icmp ult i64 %557, %554
  %560 = or i1 %558, %559
  %561 = zext i1 %560 to i8
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %561, i8* %562, align 1
  %563 = trunc i64 %557 to i32
  %564 = and i32 %563, 255
  %565 = call i32 @llvm.ctpop.i32(i32 %564)
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %568, i8* %569, align 1
  %570 = xor i64 %554, %553
  %571 = xor i64 %570, %557
  %572 = lshr i64 %571, 4
  %573 = trunc i64 %572 to i8
  %574 = and i8 %573, 1
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %574, i8* %575, align 1
  %576 = icmp eq i64 %557, 0
  %577 = zext i1 %576 to i8
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %577, i8* %578, align 1
  %579 = lshr i64 %557, 63
  %580 = trunc i64 %579 to i8
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %580, i8* %581, align 1
  %582 = lshr i64 %553, 63
  %583 = lshr i64 %554, 63
  %584 = xor i64 %579, %582
  %585 = xor i64 %579, %583
  %586 = add i64 %584, %585
  %587 = icmp eq i64 %586, 2
  %588 = zext i1 %587 to i8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %588, i8* %589, align 1
  store %struct.Memory* %loadMem_400c15, %struct.Memory** %MEMORY
  %loadMem_400c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 33
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %592 to i64*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 5
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %RCX.i609 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 15
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %598 to i64*
  %599 = load i64, i64* %RBP.i610
  %600 = sub i64 %599, 56
  %601 = load i64, i64* %PC.i608
  %602 = add i64 %601, 4
  store i64 %602, i64* %PC.i608
  %603 = inttoptr i64 %600 to i32*
  %604 = load i32, i32* %603
  %605 = sext i32 %604 to i64
  store i64 %605, i64* %RCX.i609, align 8
  store %struct.Memory* %loadMem_400c18, %struct.Memory** %MEMORY
  %loadMem_400c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 1
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 5
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RCX.i606 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %615, i64 0, i64 0
  %YMM0.i607 = bitcast %union.VectorReg* %616 to %"class.std::bitset"*
  %617 = bitcast %"class.std::bitset"* %YMM0.i607 to i8*
  %618 = load i64, i64* %RAX.i605
  %619 = load i64, i64* %RCX.i606
  %620 = mul i64 %619, 8
  %621 = add i64 %620, %618
  %622 = load i64, i64* %PC.i604
  %623 = add i64 %622, 5
  store i64 %623, i64* %PC.i604
  %624 = inttoptr i64 %621 to double*
  %625 = load double, double* %624
  %626 = bitcast i8* %617 to double*
  store double %625, double* %626, align 1
  %627 = getelementptr inbounds i8, i8* %617, i64 8
  %628 = bitcast i8* %627 to double*
  store double 0.000000e+00, double* %628, align 1
  store %struct.Memory* %loadMem_400c1c, %struct.Memory** %MEMORY
  %loadMem_400c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 1
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 15
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %RBP.i603
  %639 = sub i64 %638, 40
  %640 = load i64, i64* %PC.i601
  %641 = add i64 %640, 4
  store i64 %641, i64* %PC.i601
  %642 = inttoptr i64 %639 to i64*
  %643 = load i64, i64* %642
  store i64 %643, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_400c21, %struct.Memory** %MEMORY
  %loadMem_400c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 5
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 15
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %652 to i64*
  %653 = load i64, i64* %RBP.i600
  %654 = sub i64 %653, 56
  %655 = load i64, i64* %PC.i598
  %656 = add i64 %655, 4
  store i64 %656, i64* %PC.i598
  %657 = inttoptr i64 %654 to i32*
  %658 = load i32, i32* %657
  %659 = sext i32 %658 to i64
  store i64 %659, i64* %RCX.i599, align 8
  store %struct.Memory* %loadMem_400c25, %struct.Memory** %MEMORY
  %loadMem_400c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 1
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 5
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %669, i64 0, i64 0
  %YMM0.i597 = bitcast %union.VectorReg* %670 to %"class.std::bitset"*
  %671 = bitcast %"class.std::bitset"* %YMM0.i597 to i8*
  %672 = bitcast %"class.std::bitset"* %YMM0.i597 to i8*
  %673 = load i64, i64* %RAX.i595
  %674 = load i64, i64* %RCX.i596
  %675 = mul i64 %674, 8
  %676 = add i64 %675, %673
  %677 = load i64, i64* %PC.i594
  %678 = add i64 %677, 5
  store i64 %678, i64* %PC.i594
  %679 = bitcast i8* %672 to double*
  %680 = load double, double* %679, align 1
  %681 = getelementptr inbounds i8, i8* %672, i64 8
  %682 = bitcast i8* %681 to i64*
  %683 = load i64, i64* %682, align 1
  %684 = inttoptr i64 %676 to double*
  %685 = load double, double* %684
  %686 = fadd double %680, %685
  %687 = bitcast i8* %671 to double*
  store double %686, double* %687, align 1
  %688 = getelementptr inbounds i8, i8* %671, i64 8
  %689 = bitcast i8* %688 to i64*
  store i64 %683, i64* %689, align 1
  store %struct.Memory* %loadMem_400c29, %struct.Memory** %MEMORY
  %loadMem_400c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 33
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 1
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 5
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %700 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %699, i64 0, i64 0
  %XMM0.i593 = bitcast %union.VectorReg* %700 to %union.vec128_t*
  %701 = load i64, i64* %RAX.i591
  %702 = load i64, i64* %RCX.i592
  %703 = mul i64 %702, 8
  %704 = add i64 %703, %701
  %705 = bitcast %union.vec128_t* %XMM0.i593 to i8*
  %706 = load i64, i64* %PC.i590
  %707 = add i64 %706, 5
  store i64 %707, i64* %PC.i590
  %708 = bitcast i8* %705 to double*
  %709 = load double, double* %708, align 1
  %710 = inttoptr i64 %704 to double*
  store double %709, double* %710
  store %struct.Memory* %loadMem_400c2e, %struct.Memory** %MEMORY
  %loadMem_400c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RAX.i588 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 15
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %719 to i64*
  %720 = load i64, i64* %RBP.i589
  %721 = sub i64 %720, 52
  %722 = load i64, i64* %PC.i587
  %723 = add i64 %722, 3
  store i64 %723, i64* %PC.i587
  %724 = inttoptr i64 %721 to i32*
  %725 = load i32, i32* %724
  %726 = zext i32 %725 to i64
  store i64 %726, i64* %RAX.i588, align 8
  store %struct.Memory* %loadMem_400c33, %struct.Memory** %MEMORY
  %loadMem_400c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 33
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 1
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %RAX.i586
  %734 = load i64, i64* %PC.i585
  %735 = add i64 %734, 3
  store i64 %735, i64* %PC.i585
  %736 = trunc i64 %733 to i32
  %737 = add i32 1, %736
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RAX.i586, align 8
  %739 = icmp ult i32 %737, %736
  %740 = icmp ult i32 %737, 1
  %741 = or i1 %739, %740
  %742 = zext i1 %741 to i8
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %742, i8* %743, align 1
  %744 = and i32 %737, 255
  %745 = call i32 @llvm.ctpop.i32(i32 %744)
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %748, i8* %749, align 1
  %750 = xor i64 1, %733
  %751 = trunc i64 %750 to i32
  %752 = xor i32 %751, %737
  %753 = lshr i32 %752, 4
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %755, i8* %756, align 1
  %757 = icmp eq i32 %737, 0
  %758 = zext i1 %757 to i8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %758, i8* %759, align 1
  %760 = lshr i32 %737, 31
  %761 = trunc i32 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %761, i8* %762, align 1
  %763 = lshr i32 %736, 31
  %764 = xor i32 %760, %763
  %765 = add i32 %764, %760
  %766 = icmp eq i32 %765, 2
  %767 = zext i1 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %767, i8* %768, align 1
  store %struct.Memory* %loadMem_400c36, %struct.Memory** %MEMORY
  %loadMem_400c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 1
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %EAX.i583 = bitcast %union.anon* %774 to i32*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 15
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %777 to i64*
  %778 = load i64, i64* %RBP.i584
  %779 = sub i64 %778, 52
  %780 = load i32, i32* %EAX.i583
  %781 = zext i32 %780 to i64
  %782 = load i64, i64* %PC.i582
  %783 = add i64 %782, 3
  store i64 %783, i64* %PC.i582
  %784 = inttoptr i64 %779 to i32*
  store i32 %780, i32* %784
  store %struct.Memory* %loadMem_400c39, %struct.Memory** %MEMORY
  %loadMem_400c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %787 to i64*
  %788 = load i64, i64* %PC.i581
  %789 = add i64 %788, -66
  %790 = load i64, i64* %PC.i581
  %791 = add i64 %790, 5
  store i64 %791, i64* %PC.i581
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %789, i64* %792, align 8
  store %struct.Memory* %loadMem_400c3c, %struct.Memory** %MEMORY
  br label %block_.L_400bfa

block_.L_400c41:                                  ; preds = %block_.L_400bfa
  %loadMem_400c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 33
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %795 to i64*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 15
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %800 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %799, i64 0, i64 0
  %YMM0.i580 = bitcast %union.VectorReg* %800 to %"class.std::bitset"*
  %801 = bitcast %"class.std::bitset"* %YMM0.i580 to i8*
  %802 = load i64, i64* %RBP.i579
  %803 = sub i64 %802, 16
  %804 = load i64, i64* %PC.i578
  %805 = add i64 %804, 5
  store i64 %805, i64* %PC.i578
  %806 = inttoptr i64 %803 to double*
  %807 = load double, double* %806
  %808 = bitcast i8* %801 to double*
  store double %807, double* %808, align 1
  %809 = getelementptr inbounds i8, i8* %801, i64 8
  %810 = bitcast i8* %809 to double*
  store double 0.000000e+00, double* %810, align 1
  store %struct.Memory* %loadMem_400c41, %struct.Memory** %MEMORY
  %loadMem_400c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 33
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 1
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 15
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %819 to i64*
  %820 = load i64, i64* %RBP.i577
  %821 = sub i64 %820, 40
  %822 = load i64, i64* %PC.i575
  %823 = add i64 %822, 4
  store i64 %823, i64* %PC.i575
  %824 = inttoptr i64 %821 to i64*
  %825 = load i64, i64* %824
  store i64 %825, i64* %RAX.i576, align 8
  store %struct.Memory* %loadMem_400c46, %struct.Memory** %MEMORY
  %loadMem_400c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 5
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RCX.i573 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 15
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RBP.i574
  %836 = sub i64 %835, 56
  %837 = load i64, i64* %PC.i572
  %838 = add i64 %837, 4
  store i64 %838, i64* %PC.i572
  %839 = inttoptr i64 %836 to i32*
  %840 = load i32, i32* %839
  %841 = sext i32 %840 to i64
  store i64 %841, i64* %RCX.i573, align 8
  store %struct.Memory* %loadMem_400c4a, %struct.Memory** %MEMORY
  %loadMem_400c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 1
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RAX.i569 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 5
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %852 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %851, i64 0, i64 1
  %YMM1.i571 = bitcast %union.VectorReg* %852 to %"class.std::bitset"*
  %853 = bitcast %"class.std::bitset"* %YMM1.i571 to i8*
  %854 = load i64, i64* %RAX.i569
  %855 = load i64, i64* %RCX.i570
  %856 = mul i64 %855, 8
  %857 = add i64 %856, %854
  %858 = load i64, i64* %PC.i568
  %859 = add i64 %858, 5
  store i64 %859, i64* %PC.i568
  %860 = inttoptr i64 %857 to double*
  %861 = load double, double* %860
  %862 = bitcast i8* %853 to double*
  store double %861, double* %862, align 1
  %863 = getelementptr inbounds i8, i8* %853, i64 8
  %864 = bitcast i8* %863 to double*
  store double 0.000000e+00, double* %864, align 1
  store %struct.Memory* %loadMem_400c4e, %struct.Memory** %MEMORY
  %loadMem_400c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 33
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %867 to i64*
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %869 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %868, i64 0, i64 1
  %YMM1.i566 = bitcast %union.VectorReg* %869 to %"class.std::bitset"*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %871 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %870, i64 0, i64 0
  %XMM0.i567 = bitcast %union.VectorReg* %871 to %union.vec128_t*
  %872 = bitcast %"class.std::bitset"* %YMM1.i566 to i8*
  %873 = bitcast %"class.std::bitset"* %YMM1.i566 to i8*
  %874 = bitcast %union.vec128_t* %XMM0.i567 to i8*
  %875 = load i64, i64* %PC.i565
  %876 = add i64 %875, 4
  store i64 %876, i64* %PC.i565
  %877 = bitcast i8* %873 to double*
  %878 = load double, double* %877, align 1
  %879 = getelementptr inbounds i8, i8* %873, i64 8
  %880 = bitcast i8* %879 to i64*
  %881 = load i64, i64* %880, align 1
  %882 = bitcast i8* %874 to double*
  %883 = load double, double* %882, align 1
  %884 = fdiv double %878, %883
  %885 = bitcast i8* %872 to double*
  store double %884, double* %885, align 1
  %886 = getelementptr inbounds i8, i8* %872, i64 8
  %887 = bitcast i8* %886 to i64*
  store i64 %881, i64* %887, align 1
  store %struct.Memory* %loadMem_400c53, %struct.Memory** %MEMORY
  %loadMem_400c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 5
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %898 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %897, i64 0, i64 1
  %XMM1.i564 = bitcast %union.VectorReg* %898 to %union.vec128_t*
  %899 = load i64, i64* %RAX.i562
  %900 = load i64, i64* %RCX.i563
  %901 = mul i64 %900, 8
  %902 = add i64 %901, %899
  %903 = bitcast %union.vec128_t* %XMM1.i564 to i8*
  %904 = load i64, i64* %PC.i561
  %905 = add i64 %904, 5
  store i64 %905, i64* %PC.i561
  %906 = bitcast i8* %903 to double*
  %907 = load double, double* %906, align 1
  %908 = inttoptr i64 %902 to double*
  store double %907, double* %908
  store %struct.Memory* %loadMem_400c57, %struct.Memory** %MEMORY
  %loadMem_400c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 33
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %911 to i64*
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 1
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 15
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %917 to i64*
  %918 = load i64, i64* %RBP.i560
  %919 = sub i64 %918, 56
  %920 = load i64, i64* %PC.i558
  %921 = add i64 %920, 3
  store i64 %921, i64* %PC.i558
  %922 = inttoptr i64 %919 to i32*
  %923 = load i32, i32* %922
  %924 = zext i32 %923 to i64
  store i64 %924, i64* %RAX.i559, align 8
  store %struct.Memory* %loadMem_400c5c, %struct.Memory** %MEMORY
  %loadMem_400c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 1
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %930 to i64*
  %931 = load i64, i64* %RAX.i557
  %932 = load i64, i64* %PC.i556
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC.i556
  %934 = trunc i64 %931 to i32
  %935 = add i32 1, %934
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RAX.i557, align 8
  %937 = icmp ult i32 %935, %934
  %938 = icmp ult i32 %935, 1
  %939 = or i1 %937, %938
  %940 = zext i1 %939 to i8
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %940, i8* %941, align 1
  %942 = and i32 %935, 255
  %943 = call i32 @llvm.ctpop.i32(i32 %942)
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = xor i8 %945, 1
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %946, i8* %947, align 1
  %948 = xor i64 1, %931
  %949 = trunc i64 %948 to i32
  %950 = xor i32 %949, %935
  %951 = lshr i32 %950, 4
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %953, i8* %954, align 1
  %955 = icmp eq i32 %935, 0
  %956 = zext i1 %955 to i8
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %956, i8* %957, align 1
  %958 = lshr i32 %935, 31
  %959 = trunc i32 %958 to i8
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %959, i8* %960, align 1
  %961 = lshr i32 %934, 31
  %962 = xor i32 %958, %961
  %963 = add i32 %962, %958
  %964 = icmp eq i32 %963, 2
  %965 = zext i1 %964 to i8
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %965, i8* %966, align 1
  store %struct.Memory* %loadMem_400c5f, %struct.Memory** %MEMORY
  %loadMem_400c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 33
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 1
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %EAX.i554 = bitcast %union.anon* %972 to i32*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 15
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %975 to i64*
  %976 = load i64, i64* %RBP.i555
  %977 = sub i64 %976, 56
  %978 = load i32, i32* %EAX.i554
  %979 = zext i32 %978 to i64
  %980 = load i64, i64* %PC.i553
  %981 = add i64 %980, 3
  store i64 %981, i64* %PC.i553
  %982 = inttoptr i64 %977 to i32*
  store i32 %978, i32* %982
  store %struct.Memory* %loadMem_400c62, %struct.Memory** %MEMORY
  %loadMem_400c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %985 to i64*
  %986 = load i64, i64* %PC.i552
  %987 = add i64 %986, -142
  %988 = load i64, i64* %PC.i552
  %989 = add i64 %988, 5
  store i64 %989, i64* %PC.i552
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %987, i64* %990, align 8
  store %struct.Memory* %loadMem_400c65, %struct.Memory** %MEMORY
  br label %block_.L_400bd7

block_.L_400c6a:                                  ; preds = %block_.L_400bd7
  %loadMem_400c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 15
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %996 to i64*
  %997 = load i64, i64* %RBP.i551
  %998 = sub i64 %997, 56
  %999 = load i64, i64* %PC.i550
  %1000 = add i64 %999, 7
  store i64 %1000, i64* %PC.i550
  %1001 = inttoptr i64 %998 to i32*
  store i32 0, i32* %1001
  store %struct.Memory* %loadMem_400c6a, %struct.Memory** %MEMORY
  br label %block_.L_400c71

block_.L_400c71:                                  ; preds = %block_.L_400d8e, %block_.L_400c6a
  %loadMem_400c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 33
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 1
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %RAX.i548 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 15
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %1010 to i64*
  %1011 = load i64, i64* %RBP.i549
  %1012 = sub i64 %1011, 56
  %1013 = load i64, i64* %PC.i547
  %1014 = add i64 %1013, 3
  store i64 %1014, i64* %PC.i547
  %1015 = inttoptr i64 %1012 to i32*
  %1016 = load i32, i32* %1015
  %1017 = zext i32 %1016 to i64
  store i64 %1017, i64* %RAX.i548, align 8
  store %struct.Memory* %loadMem_400c71, %struct.Memory** %MEMORY
  %loadMem_400c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 1
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %EAX.i545 = bitcast %union.anon* %1023 to i32*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 15
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %1026 to i64*
  %1027 = load i32, i32* %EAX.i545
  %1028 = zext i32 %1027 to i64
  %1029 = load i64, i64* %RBP.i546
  %1030 = sub i64 %1029, 4
  %1031 = load i64, i64* %PC.i544
  %1032 = add i64 %1031, 3
  store i64 %1032, i64* %PC.i544
  %1033 = inttoptr i64 %1030 to i32*
  %1034 = load i32, i32* %1033
  %1035 = sub i32 %1027, %1034
  %1036 = icmp ult i32 %1027, %1034
  %1037 = zext i1 %1036 to i8
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1037, i8* %1038, align 1
  %1039 = and i32 %1035, 255
  %1040 = call i32 @llvm.ctpop.i32(i32 %1039)
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = xor i8 %1042, 1
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1043, i8* %1044, align 1
  %1045 = xor i32 %1034, %1027
  %1046 = xor i32 %1045, %1035
  %1047 = lshr i32 %1046, 4
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1049, i8* %1050, align 1
  %1051 = icmp eq i32 %1035, 0
  %1052 = zext i1 %1051 to i8
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1052, i8* %1053, align 1
  %1054 = lshr i32 %1035, 31
  %1055 = trunc i32 %1054 to i8
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1055, i8* %1056, align 1
  %1057 = lshr i32 %1027, 31
  %1058 = lshr i32 %1034, 31
  %1059 = xor i32 %1058, %1057
  %1060 = xor i32 %1054, %1057
  %1061 = add i32 %1060, %1059
  %1062 = icmp eq i32 %1061, 2
  %1063 = zext i1 %1062 to i8
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1063, i8* %1064, align 1
  store %struct.Memory* %loadMem_400c74, %struct.Memory** %MEMORY
  %loadMem_400c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 33
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1067 to i64*
  %1068 = load i64, i64* %PC.i543
  %1069 = add i64 %1068, 311
  %1070 = load i64, i64* %PC.i543
  %1071 = add i64 %1070, 6
  %1072 = load i64, i64* %PC.i543
  %1073 = add i64 %1072, 6
  store i64 %1073, i64* %PC.i543
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1075 = load i8, i8* %1074, align 1
  %1076 = icmp ne i8 %1075, 0
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1078 = load i8, i8* %1077, align 1
  %1079 = icmp ne i8 %1078, 0
  %1080 = xor i1 %1076, %1079
  %1081 = xor i1 %1080, true
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %BRANCH_TAKEN, align 1
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1084 = select i1 %1080, i64 %1071, i64 %1069
  store i64 %1084, i64* %1083, align 8
  store %struct.Memory* %loadMem_400c77, %struct.Memory** %MEMORY
  %loadBr_400c77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c77 = icmp eq i8 %loadBr_400c77, 1
  br i1 %cmpBr_400c77, label %block_.L_400dae, label %block_400c7d

block_400c7d:                                     ; preds = %block_.L_400c71
  %loadMem_400c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 33
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1089 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1088, i64 0, i64 0
  %YMM0.i541 = bitcast %union.VectorReg* %1089 to %"class.std::bitset"*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1091 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1090, i64 0, i64 0
  %XMM0.i542 = bitcast %union.VectorReg* %1091 to %union.vec128_t*
  %1092 = bitcast %"class.std::bitset"* %YMM0.i541 to i8*
  %1093 = bitcast %"class.std::bitset"* %YMM0.i541 to i8*
  %1094 = bitcast %union.vec128_t* %XMM0.i542 to i8*
  %1095 = load i64, i64* %PC.i540
  %1096 = add i64 %1095, 3
  store i64 %1096, i64* %PC.i540
  %1097 = bitcast i8* %1093 to i64*
  %1098 = load i64, i64* %1097, align 1
  %1099 = getelementptr inbounds i8, i8* %1093, i64 8
  %1100 = bitcast i8* %1099 to i64*
  %1101 = load i64, i64* %1100, align 1
  %1102 = bitcast i8* %1094 to i64*
  %1103 = load i64, i64* %1102, align 1
  %1104 = getelementptr inbounds i8, i8* %1094, i64 8
  %1105 = bitcast i8* %1104 to i64*
  %1106 = load i64, i64* %1105, align 1
  %1107 = xor i64 %1103, %1098
  %1108 = xor i64 %1106, %1101
  %1109 = trunc i64 %1107 to i32
  %1110 = lshr i64 %1107, 32
  %1111 = trunc i64 %1110 to i32
  %1112 = bitcast i8* %1092 to i32*
  store i32 %1109, i32* %1112, align 1
  %1113 = getelementptr inbounds i8, i8* %1092, i64 4
  %1114 = bitcast i8* %1113 to i32*
  store i32 %1111, i32* %1114, align 1
  %1115 = trunc i64 %1108 to i32
  %1116 = getelementptr inbounds i8, i8* %1092, i64 8
  %1117 = bitcast i8* %1116 to i32*
  store i32 %1115, i32* %1117, align 1
  %1118 = lshr i64 %1108, 32
  %1119 = trunc i64 %1118 to i32
  %1120 = getelementptr inbounds i8, i8* %1092, i64 12
  %1121 = bitcast i8* %1120 to i32*
  store i32 %1119, i32* %1121, align 1
  store %struct.Memory* %loadMem_400c7d, %struct.Memory** %MEMORY
  %loadMem_400c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 33
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %1124 to i64*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 1
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 15
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %1130 to i64*
  %1131 = load i64, i64* %RBP.i539
  %1132 = sub i64 %1131, 48
  %1133 = load i64, i64* %PC.i537
  %1134 = add i64 %1133, 4
  store i64 %1134, i64* %PC.i537
  %1135 = inttoptr i64 %1132 to i64*
  %1136 = load i64, i64* %1135
  store i64 %1136, i64* %RAX.i538, align 8
  store %struct.Memory* %loadMem_400c80, %struct.Memory** %MEMORY
  %loadMem_400c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 33
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 5
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 15
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %1145 to i64*
  %1146 = load i64, i64* %RBP.i536
  %1147 = sub i64 %1146, 56
  %1148 = load i64, i64* %PC.i534
  %1149 = add i64 %1148, 4
  store i64 %1149, i64* %PC.i534
  %1150 = inttoptr i64 %1147 to i32*
  %1151 = load i32, i32* %1150
  %1152 = sext i32 %1151 to i64
  store i64 %1152, i64* %RCX.i535, align 8
  store %struct.Memory* %loadMem_400c84, %struct.Memory** %MEMORY
  %loadMem_400c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 1
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 5
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1163 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1162, i64 0, i64 0
  %XMM0.i533 = bitcast %union.VectorReg* %1163 to %union.vec128_t*
  %1164 = load i64, i64* %RAX.i531
  %1165 = load i64, i64* %RCX.i532
  %1166 = mul i64 %1165, 8
  %1167 = add i64 %1166, %1164
  %1168 = bitcast %union.vec128_t* %XMM0.i533 to i8*
  %1169 = load i64, i64* %PC.i530
  %1170 = add i64 %1169, 5
  store i64 %1170, i64* %PC.i530
  %1171 = bitcast i8* %1168 to double*
  %1172 = load double, double* %1171, align 1
  %1173 = inttoptr i64 %1167 to double*
  store double %1172, double* %1173
  store %struct.Memory* %loadMem_400c88, %struct.Memory** %MEMORY
  %loadMem_400c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 33
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 15
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %1179 to i64*
  %1180 = load i64, i64* %RBP.i529
  %1181 = sub i64 %1180, 52
  %1182 = load i64, i64* %PC.i528
  %1183 = add i64 %1182, 7
  store i64 %1183, i64* %PC.i528
  %1184 = inttoptr i64 %1181 to i32*
  store i32 0, i32* %1184
  store %struct.Memory* %loadMem_400c8d, %struct.Memory** %MEMORY
  br label %block_.L_400c94

block_.L_400c94:                                  ; preds = %block_400ca0, %block_400c7d
  %loadMem_400c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 1
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 15
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %RBP.i527
  %1195 = sub i64 %1194, 52
  %1196 = load i64, i64* %PC.i525
  %1197 = add i64 %1196, 3
  store i64 %1197, i64* %PC.i525
  %1198 = inttoptr i64 %1195 to i32*
  %1199 = load i32, i32* %1198
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RAX.i526, align 8
  store %struct.Memory* %loadMem_400c94, %struct.Memory** %MEMORY
  %loadMem_400c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 1
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %EAX.i523 = bitcast %union.anon* %1206 to i32*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 15
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %1209 to i64*
  %1210 = load i32, i32* %EAX.i523
  %1211 = zext i32 %1210 to i64
  %1212 = load i64, i64* %RBP.i524
  %1213 = sub i64 %1212, 8
  %1214 = load i64, i64* %PC.i522
  %1215 = add i64 %1214, 3
  store i64 %1215, i64* %PC.i522
  %1216 = inttoptr i64 %1213 to i32*
  %1217 = load i32, i32* %1216
  %1218 = sub i32 %1210, %1217
  %1219 = icmp ult i32 %1210, %1217
  %1220 = zext i1 %1219 to i8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1220, i8* %1221, align 1
  %1222 = and i32 %1218, 255
  %1223 = call i32 @llvm.ctpop.i32(i32 %1222)
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = xor i8 %1225, 1
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1226, i8* %1227, align 1
  %1228 = xor i32 %1217, %1210
  %1229 = xor i32 %1228, %1218
  %1230 = lshr i32 %1229, 4
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1232, i8* %1233, align 1
  %1234 = icmp eq i32 %1218, 0
  %1235 = zext i1 %1234 to i8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1235, i8* %1236, align 1
  %1237 = lshr i32 %1218, 31
  %1238 = trunc i32 %1237 to i8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1238, i8* %1239, align 1
  %1240 = lshr i32 %1210, 31
  %1241 = lshr i32 %1217, 31
  %1242 = xor i32 %1241, %1240
  %1243 = xor i32 %1237, %1240
  %1244 = add i32 %1243, %1242
  %1245 = icmp eq i32 %1244, 2
  %1246 = zext i1 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1246, i8* %1247, align 1
  store %struct.Memory* %loadMem_400c97, %struct.Memory** %MEMORY
  %loadMem_400c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 33
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %1250 to i64*
  %1251 = load i64, i64* %PC.i521
  %1252 = add i64 %1251, 122
  %1253 = load i64, i64* %PC.i521
  %1254 = add i64 %1253, 6
  %1255 = load i64, i64* %PC.i521
  %1256 = add i64 %1255, 6
  store i64 %1256, i64* %PC.i521
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1258 = load i8, i8* %1257, align 1
  %1259 = icmp ne i8 %1258, 0
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1261 = load i8, i8* %1260, align 1
  %1262 = icmp ne i8 %1261, 0
  %1263 = xor i1 %1259, %1262
  %1264 = xor i1 %1263, true
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %BRANCH_TAKEN, align 1
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1267 = select i1 %1263, i64 %1254, i64 %1252
  store i64 %1267, i64* %1266, align 8
  store %struct.Memory* %loadMem_400c9a, %struct.Memory** %MEMORY
  %loadBr_400c9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400c9a = icmp eq i8 %loadBr_400c9a, 1
  br i1 %cmpBr_400c9a, label %block_.L_400d14, label %block_400ca0

block_400ca0:                                     ; preds = %block_.L_400c94
  %loadMem_400ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 33
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 1
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 15
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %1276 to i64*
  %1277 = load i64, i64* %RBP.i520
  %1278 = sub i64 %1277, 24
  %1279 = load i64, i64* %PC.i518
  %1280 = add i64 %1279, 4
  store i64 %1280, i64* %PC.i518
  %1281 = inttoptr i64 %1278 to i64*
  %1282 = load i64, i64* %1281
  store i64 %1282, i64* %RAX.i519, align 8
  store %struct.Memory* %loadMem_400ca0, %struct.Memory** %MEMORY
  %loadMem_400ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 5
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 15
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %RBP.i517
  %1293 = sub i64 %1292, 52
  %1294 = load i64, i64* %PC.i515
  %1295 = add i64 %1294, 4
  store i64 %1295, i64* %PC.i515
  %1296 = inttoptr i64 %1293 to i32*
  %1297 = load i32, i32* %1296
  %1298 = sext i32 %1297 to i64
  store i64 %1298, i64* %RCX.i516, align 8
  store %struct.Memory* %loadMem_400ca4, %struct.Memory** %MEMORY
  %loadMem_400ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 5
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %1304 to i64*
  %1305 = load i64, i64* %RCX.i514
  %1306 = load i64, i64* %PC.i513
  %1307 = add i64 %1306, 7
  store i64 %1307, i64* %PC.i513
  %1308 = sext i64 %1305 to i128
  %1309 = and i128 %1308, -18446744073709551616
  %1310 = zext i64 %1305 to i128
  %1311 = or i128 %1309, %1310
  %1312 = mul i128 8000, %1311
  %1313 = trunc i128 %1312 to i64
  store i64 %1313, i64* %RCX.i514, align 8
  %1314 = sext i64 %1313 to i128
  %1315 = icmp ne i128 %1314, %1312
  %1316 = zext i1 %1315 to i8
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1316, i8* %1317, align 1
  %1318 = trunc i128 %1312 to i32
  %1319 = and i32 %1318, 255
  %1320 = call i32 @llvm.ctpop.i32(i32 %1319)
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  %1323 = xor i8 %1322, 1
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1323, i8* %1324, align 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1325, align 1
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1326, align 1
  %1327 = lshr i64 %1313, 63
  %1328 = trunc i64 %1327 to i8
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1328, i8* %1329, align 1
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1316, i8* %1330, align 1
  store %struct.Memory* %loadMem_400ca8, %struct.Memory** %MEMORY
  %loadMem_400caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 33
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1333 to i64*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 1
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %1336 to i64*
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 5
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %1339 to i64*
  %1340 = load i64, i64* %RAX.i511
  %1341 = load i64, i64* %RCX.i512
  %1342 = load i64, i64* %PC.i510
  %1343 = add i64 %1342, 3
  store i64 %1343, i64* %PC.i510
  %1344 = add i64 %1341, %1340
  store i64 %1344, i64* %RAX.i511, align 8
  %1345 = icmp ult i64 %1344, %1340
  %1346 = icmp ult i64 %1344, %1341
  %1347 = or i1 %1345, %1346
  %1348 = zext i1 %1347 to i8
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1348, i8* %1349, align 1
  %1350 = trunc i64 %1344 to i32
  %1351 = and i32 %1350, 255
  %1352 = call i32 @llvm.ctpop.i32(i32 %1351)
  %1353 = trunc i32 %1352 to i8
  %1354 = and i8 %1353, 1
  %1355 = xor i8 %1354, 1
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1355, i8* %1356, align 1
  %1357 = xor i64 %1341, %1340
  %1358 = xor i64 %1357, %1344
  %1359 = lshr i64 %1358, 4
  %1360 = trunc i64 %1359 to i8
  %1361 = and i8 %1360, 1
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1361, i8* %1362, align 1
  %1363 = icmp eq i64 %1344, 0
  %1364 = zext i1 %1363 to i8
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1364, i8* %1365, align 1
  %1366 = lshr i64 %1344, 63
  %1367 = trunc i64 %1366 to i8
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1367, i8* %1368, align 1
  %1369 = lshr i64 %1340, 63
  %1370 = lshr i64 %1341, 63
  %1371 = xor i64 %1366, %1369
  %1372 = xor i64 %1366, %1370
  %1373 = add i64 %1371, %1372
  %1374 = icmp eq i64 %1373, 2
  %1375 = zext i1 %1374 to i8
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1375, i8* %1376, align 1
  store %struct.Memory* %loadMem_400caf, %struct.Memory** %MEMORY
  %loadMem_400cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 33
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 5
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RCX.i508 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 15
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %1385 to i64*
  %1386 = load i64, i64* %RBP.i509
  %1387 = sub i64 %1386, 56
  %1388 = load i64, i64* %PC.i507
  %1389 = add i64 %1388, 4
  store i64 %1389, i64* %PC.i507
  %1390 = inttoptr i64 %1387 to i32*
  %1391 = load i32, i32* %1390
  %1392 = sext i32 %1391 to i64
  store i64 %1392, i64* %RCX.i508, align 8
  store %struct.Memory* %loadMem_400cb2, %struct.Memory** %MEMORY
  %loadMem_400cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 33
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 1
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %1398 to i64*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 5
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %1401 to i64*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1403 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1402, i64 0, i64 0
  %YMM0.i506 = bitcast %union.VectorReg* %1403 to %"class.std::bitset"*
  %1404 = bitcast %"class.std::bitset"* %YMM0.i506 to i8*
  %1405 = load i64, i64* %RAX.i504
  %1406 = load i64, i64* %RCX.i505
  %1407 = mul i64 %1406, 8
  %1408 = add i64 %1407, %1405
  %1409 = load i64, i64* %PC.i503
  %1410 = add i64 %1409, 5
  store i64 %1410, i64* %PC.i503
  %1411 = inttoptr i64 %1408 to double*
  %1412 = load double, double* %1411
  %1413 = bitcast i8* %1404 to double*
  store double %1412, double* %1413, align 1
  %1414 = getelementptr inbounds i8, i8* %1404, i64 8
  %1415 = bitcast i8* %1414 to double*
  store double 0.000000e+00, double* %1415, align 1
  store %struct.Memory* %loadMem_400cb6, %struct.Memory** %MEMORY
  %loadMem_400cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 1
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %1421 to i64*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 15
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %1424 to i64*
  %1425 = load i64, i64* %RBP.i502
  %1426 = sub i64 %1425, 40
  %1427 = load i64, i64* %PC.i500
  %1428 = add i64 %1427, 4
  store i64 %1428, i64* %PC.i500
  %1429 = inttoptr i64 %1426 to i64*
  %1430 = load i64, i64* %1429
  store i64 %1430, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_400cbb, %struct.Memory** %MEMORY
  %loadMem_400cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 33
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %1433 to i64*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 5
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %RCX.i498 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 15
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %RBP.i499
  %1441 = sub i64 %1440, 56
  %1442 = load i64, i64* %PC.i497
  %1443 = add i64 %1442, 4
  store i64 %1443, i64* %PC.i497
  %1444 = inttoptr i64 %1441 to i32*
  %1445 = load i32, i32* %1444
  %1446 = sext i32 %1445 to i64
  store i64 %1446, i64* %RCX.i498, align 8
  store %struct.Memory* %loadMem_400cbf, %struct.Memory** %MEMORY
  %loadMem_400cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 33
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 1
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 5
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1457 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1456, i64 0, i64 0
  %YMM0.i496 = bitcast %union.VectorReg* %1457 to %"class.std::bitset"*
  %1458 = bitcast %"class.std::bitset"* %YMM0.i496 to i8*
  %1459 = bitcast %"class.std::bitset"* %YMM0.i496 to i8*
  %1460 = load i64, i64* %RAX.i494
  %1461 = load i64, i64* %RCX.i495
  %1462 = mul i64 %1461, 8
  %1463 = add i64 %1462, %1460
  %1464 = load i64, i64* %PC.i493
  %1465 = add i64 %1464, 5
  store i64 %1465, i64* %PC.i493
  %1466 = bitcast i8* %1459 to double*
  %1467 = load double, double* %1466, align 1
  %1468 = getelementptr inbounds i8, i8* %1459, i64 8
  %1469 = bitcast i8* %1468 to i64*
  %1470 = load i64, i64* %1469, align 1
  %1471 = inttoptr i64 %1463 to double*
  %1472 = load double, double* %1471
  %1473 = fsub double %1467, %1472
  %1474 = bitcast i8* %1458 to double*
  store double %1473, double* %1474, align 1
  %1475 = getelementptr inbounds i8, i8* %1458, i64 8
  %1476 = bitcast i8* %1475 to i64*
  store i64 %1470, i64* %1476, align 1
  store %struct.Memory* %loadMem_400cc3, %struct.Memory** %MEMORY
  %loadMem_400cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 33
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 1
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %1482 to i64*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 15
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %1485 to i64*
  %1486 = load i64, i64* %RBP.i492
  %1487 = sub i64 %1486, 24
  %1488 = load i64, i64* %PC.i490
  %1489 = add i64 %1488, 4
  store i64 %1489, i64* %PC.i490
  %1490 = inttoptr i64 %1487 to i64*
  %1491 = load i64, i64* %1490
  store i64 %1491, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_400cc8, %struct.Memory** %MEMORY
  %loadMem_400ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 5
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 15
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %1500 to i64*
  %1501 = load i64, i64* %RBP.i489
  %1502 = sub i64 %1501, 52
  %1503 = load i64, i64* %PC.i487
  %1504 = add i64 %1503, 4
  store i64 %1504, i64* %PC.i487
  %1505 = inttoptr i64 %1502 to i32*
  %1506 = load i32, i32* %1505
  %1507 = sext i32 %1506 to i64
  store i64 %1507, i64* %RCX.i488, align 8
  store %struct.Memory* %loadMem_400ccc, %struct.Memory** %MEMORY
  %loadMem_400cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 33
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1510 to i64*
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 5
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %1513 to i64*
  %1514 = load i64, i64* %RCX.i486
  %1515 = load i64, i64* %PC.i485
  %1516 = add i64 %1515, 7
  store i64 %1516, i64* %PC.i485
  %1517 = sext i64 %1514 to i128
  %1518 = and i128 %1517, -18446744073709551616
  %1519 = zext i64 %1514 to i128
  %1520 = or i128 %1518, %1519
  %1521 = mul i128 8000, %1520
  %1522 = trunc i128 %1521 to i64
  store i64 %1522, i64* %RCX.i486, align 8
  %1523 = sext i64 %1522 to i128
  %1524 = icmp ne i128 %1523, %1521
  %1525 = zext i1 %1524 to i8
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1525, i8* %1526, align 1
  %1527 = trunc i128 %1521 to i32
  %1528 = and i32 %1527, 255
  %1529 = call i32 @llvm.ctpop.i32(i32 %1528)
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = xor i8 %1531, 1
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1532, i8* %1533, align 1
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1534, align 1
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1535, align 1
  %1536 = lshr i64 %1522, 63
  %1537 = trunc i64 %1536 to i8
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1537, i8* %1538, align 1
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1525, i8* %1539, align 1
  store %struct.Memory* %loadMem_400cd0, %struct.Memory** %MEMORY
  %loadMem_400cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 1
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 5
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %RAX.i483
  %1550 = load i64, i64* %RCX.i484
  %1551 = load i64, i64* %PC.i482
  %1552 = add i64 %1551, 3
  store i64 %1552, i64* %PC.i482
  %1553 = add i64 %1550, %1549
  store i64 %1553, i64* %RAX.i483, align 8
  %1554 = icmp ult i64 %1553, %1549
  %1555 = icmp ult i64 %1553, %1550
  %1556 = or i1 %1554, %1555
  %1557 = zext i1 %1556 to i8
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1557, i8* %1558, align 1
  %1559 = trunc i64 %1553 to i32
  %1560 = and i32 %1559, 255
  %1561 = call i32 @llvm.ctpop.i32(i32 %1560)
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = xor i8 %1563, 1
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1564, i8* %1565, align 1
  %1566 = xor i64 %1550, %1549
  %1567 = xor i64 %1566, %1553
  %1568 = lshr i64 %1567, 4
  %1569 = trunc i64 %1568 to i8
  %1570 = and i8 %1569, 1
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1570, i8* %1571, align 1
  %1572 = icmp eq i64 %1553, 0
  %1573 = zext i1 %1572 to i8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1573, i8* %1574, align 1
  %1575 = lshr i64 %1553, 63
  %1576 = trunc i64 %1575 to i8
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1576, i8* %1577, align 1
  %1578 = lshr i64 %1549, 63
  %1579 = lshr i64 %1550, 63
  %1580 = xor i64 %1575, %1578
  %1581 = xor i64 %1575, %1579
  %1582 = add i64 %1580, %1581
  %1583 = icmp eq i64 %1582, 2
  %1584 = zext i1 %1583 to i8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1584, i8* %1585, align 1
  store %struct.Memory* %loadMem_400cd7, %struct.Memory** %MEMORY
  %loadMem_400cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 5
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %RCX.i480 = bitcast %union.anon* %1591 to i64*
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 15
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %1594 to i64*
  %1595 = load i64, i64* %RBP.i481
  %1596 = sub i64 %1595, 56
  %1597 = load i64, i64* %PC.i479
  %1598 = add i64 %1597, 4
  store i64 %1598, i64* %PC.i479
  %1599 = inttoptr i64 %1596 to i32*
  %1600 = load i32, i32* %1599
  %1601 = sext i32 %1600 to i64
  store i64 %1601, i64* %RCX.i480, align 8
  store %struct.Memory* %loadMem_400cda, %struct.Memory** %MEMORY
  %loadMem_400cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 33
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %1604 to i64*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 1
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 5
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RCX.i477 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1611, i64 0, i64 1
  %YMM1.i478 = bitcast %union.VectorReg* %1612 to %"class.std::bitset"*
  %1613 = bitcast %"class.std::bitset"* %YMM1.i478 to i8*
  %1614 = load i64, i64* %RAX.i476
  %1615 = load i64, i64* %RCX.i477
  %1616 = mul i64 %1615, 8
  %1617 = add i64 %1616, %1614
  %1618 = load i64, i64* %PC.i475
  %1619 = add i64 %1618, 5
  store i64 %1619, i64* %PC.i475
  %1620 = inttoptr i64 %1617 to double*
  %1621 = load double, double* %1620
  %1622 = bitcast i8* %1613 to double*
  store double %1621, double* %1622, align 1
  %1623 = getelementptr inbounds i8, i8* %1613, i64 8
  %1624 = bitcast i8* %1623 to double*
  store double 0.000000e+00, double* %1624, align 1
  store %struct.Memory* %loadMem_400cde, %struct.Memory** %MEMORY
  %loadMem_400ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 1
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 15
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %1633 to i64*
  %1634 = load i64, i64* %RBP.i474
  %1635 = sub i64 %1634, 40
  %1636 = load i64, i64* %PC.i472
  %1637 = add i64 %1636, 4
  store i64 %1637, i64* %PC.i472
  %1638 = inttoptr i64 %1635 to i64*
  %1639 = load i64, i64* %1638
  store i64 %1639, i64* %RAX.i473, align 8
  store %struct.Memory* %loadMem_400ce3, %struct.Memory** %MEMORY
  %loadMem_400ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 5
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 15
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %1648 to i64*
  %1649 = load i64, i64* %RBP.i471
  %1650 = sub i64 %1649, 56
  %1651 = load i64, i64* %PC.i469
  %1652 = add i64 %1651, 4
  store i64 %1652, i64* %PC.i469
  %1653 = inttoptr i64 %1650 to i32*
  %1654 = load i32, i32* %1653
  %1655 = sext i32 %1654 to i64
  store i64 %1655, i64* %RCX.i470, align 8
  store %struct.Memory* %loadMem_400ce7, %struct.Memory** %MEMORY
  %loadMem_400ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 33
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1658 to i64*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 1
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %1661 to i64*
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 5
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %RCX.i467 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1666 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1665, i64 0, i64 1
  %YMM1.i468 = bitcast %union.VectorReg* %1666 to %"class.std::bitset"*
  %1667 = bitcast %"class.std::bitset"* %YMM1.i468 to i8*
  %1668 = bitcast %"class.std::bitset"* %YMM1.i468 to i8*
  %1669 = load i64, i64* %RAX.i466
  %1670 = load i64, i64* %RCX.i467
  %1671 = mul i64 %1670, 8
  %1672 = add i64 %1671, %1669
  %1673 = load i64, i64* %PC.i465
  %1674 = add i64 %1673, 5
  store i64 %1674, i64* %PC.i465
  %1675 = bitcast i8* %1668 to double*
  %1676 = load double, double* %1675, align 1
  %1677 = getelementptr inbounds i8, i8* %1668, i64 8
  %1678 = bitcast i8* %1677 to i64*
  %1679 = load i64, i64* %1678, align 1
  %1680 = inttoptr i64 %1672 to double*
  %1681 = load double, double* %1680
  %1682 = fsub double %1676, %1681
  %1683 = bitcast i8* %1667 to double*
  store double %1682, double* %1683, align 1
  %1684 = getelementptr inbounds i8, i8* %1667, i64 8
  %1685 = bitcast i8* %1684 to i64*
  store i64 %1679, i64* %1685, align 1
  store %struct.Memory* %loadMem_400ceb, %struct.Memory** %MEMORY
  %loadMem_400cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 33
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1688 to i64*
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1690 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1689, i64 0, i64 0
  %YMM0.i463 = bitcast %union.VectorReg* %1690 to %"class.std::bitset"*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1692 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1691, i64 0, i64 1
  %XMM1.i464 = bitcast %union.VectorReg* %1692 to %union.vec128_t*
  %1693 = bitcast %"class.std::bitset"* %YMM0.i463 to i8*
  %1694 = bitcast %"class.std::bitset"* %YMM0.i463 to i8*
  %1695 = bitcast %union.vec128_t* %XMM1.i464 to i8*
  %1696 = load i64, i64* %PC.i462
  %1697 = add i64 %1696, 4
  store i64 %1697, i64* %PC.i462
  %1698 = bitcast i8* %1694 to double*
  %1699 = load double, double* %1698, align 1
  %1700 = getelementptr inbounds i8, i8* %1694, i64 8
  %1701 = bitcast i8* %1700 to i64*
  %1702 = load i64, i64* %1701, align 1
  %1703 = bitcast i8* %1695 to double*
  %1704 = load double, double* %1703, align 1
  %1705 = fmul double %1699, %1704
  %1706 = bitcast i8* %1693 to double*
  store double %1705, double* %1706, align 1
  %1707 = getelementptr inbounds i8, i8* %1693, i64 8
  %1708 = bitcast i8* %1707 to i64*
  store i64 %1702, i64* %1708, align 1
  store %struct.Memory* %loadMem_400cf0, %struct.Memory** %MEMORY
  %loadMem_400cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 33
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 1
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 15
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %1717 to i64*
  %1718 = load i64, i64* %RBP.i461
  %1719 = sub i64 %1718, 48
  %1720 = load i64, i64* %PC.i459
  %1721 = add i64 %1720, 4
  store i64 %1721, i64* %PC.i459
  %1722 = inttoptr i64 %1719 to i64*
  %1723 = load i64, i64* %1722
  store i64 %1723, i64* %RAX.i460, align 8
  store %struct.Memory* %loadMem_400cf4, %struct.Memory** %MEMORY
  %loadMem_400cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 5
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 15
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %1732 to i64*
  %1733 = load i64, i64* %RBP.i458
  %1734 = sub i64 %1733, 56
  %1735 = load i64, i64* %PC.i456
  %1736 = add i64 %1735, 4
  store i64 %1736, i64* %PC.i456
  %1737 = inttoptr i64 %1734 to i32*
  %1738 = load i32, i32* %1737
  %1739 = sext i32 %1738 to i64
  store i64 %1739, i64* %RCX.i457, align 8
  store %struct.Memory* %loadMem_400cf8, %struct.Memory** %MEMORY
  %loadMem_400cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 33
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1742 to i64*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 1
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 5
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1749, i64 0, i64 0
  %YMM0.i455 = bitcast %union.VectorReg* %1750 to %"class.std::bitset"*
  %1751 = bitcast %"class.std::bitset"* %YMM0.i455 to i8*
  %1752 = bitcast %"class.std::bitset"* %YMM0.i455 to i8*
  %1753 = load i64, i64* %RAX.i453
  %1754 = load i64, i64* %RCX.i454
  %1755 = mul i64 %1754, 8
  %1756 = add i64 %1755, %1753
  %1757 = load i64, i64* %PC.i452
  %1758 = add i64 %1757, 5
  store i64 %1758, i64* %PC.i452
  %1759 = bitcast i8* %1752 to double*
  %1760 = load double, double* %1759, align 1
  %1761 = getelementptr inbounds i8, i8* %1752, i64 8
  %1762 = bitcast i8* %1761 to i64*
  %1763 = load i64, i64* %1762, align 1
  %1764 = inttoptr i64 %1756 to double*
  %1765 = load double, double* %1764
  %1766 = fadd double %1760, %1765
  %1767 = bitcast i8* %1751 to double*
  store double %1766, double* %1767, align 1
  %1768 = getelementptr inbounds i8, i8* %1751, i64 8
  %1769 = bitcast i8* %1768 to i64*
  store i64 %1763, i64* %1769, align 1
  store %struct.Memory* %loadMem_400cfc, %struct.Memory** %MEMORY
  %loadMem_400d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 1
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 5
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RCX.i450 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1780 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1779, i64 0, i64 0
  %XMM0.i451 = bitcast %union.VectorReg* %1780 to %union.vec128_t*
  %1781 = load i64, i64* %RAX.i449
  %1782 = load i64, i64* %RCX.i450
  %1783 = mul i64 %1782, 8
  %1784 = add i64 %1783, %1781
  %1785 = bitcast %union.vec128_t* %XMM0.i451 to i8*
  %1786 = load i64, i64* %PC.i448
  %1787 = add i64 %1786, 5
  store i64 %1787, i64* %PC.i448
  %1788 = bitcast i8* %1785 to double*
  %1789 = load double, double* %1788, align 1
  %1790 = inttoptr i64 %1784 to double*
  store double %1789, double* %1790
  store %struct.Memory* %loadMem_400d01, %struct.Memory** %MEMORY
  %loadMem_400d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 1
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 15
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %1799 to i64*
  %1800 = load i64, i64* %RBP.i447
  %1801 = sub i64 %1800, 52
  %1802 = load i64, i64* %PC.i445
  %1803 = add i64 %1802, 3
  store i64 %1803, i64* %PC.i445
  %1804 = inttoptr i64 %1801 to i32*
  %1805 = load i32, i32* %1804
  %1806 = zext i32 %1805 to i64
  store i64 %1806, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_400d06, %struct.Memory** %MEMORY
  %loadMem_400d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 1
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %1812 to i64*
  %1813 = load i64, i64* %RAX.i444
  %1814 = load i64, i64* %PC.i443
  %1815 = add i64 %1814, 3
  store i64 %1815, i64* %PC.i443
  %1816 = trunc i64 %1813 to i32
  %1817 = add i32 1, %1816
  %1818 = zext i32 %1817 to i64
  store i64 %1818, i64* %RAX.i444, align 8
  %1819 = icmp ult i32 %1817, %1816
  %1820 = icmp ult i32 %1817, 1
  %1821 = or i1 %1819, %1820
  %1822 = zext i1 %1821 to i8
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1822, i8* %1823, align 1
  %1824 = and i32 %1817, 255
  %1825 = call i32 @llvm.ctpop.i32(i32 %1824)
  %1826 = trunc i32 %1825 to i8
  %1827 = and i8 %1826, 1
  %1828 = xor i8 %1827, 1
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1828, i8* %1829, align 1
  %1830 = xor i64 1, %1813
  %1831 = trunc i64 %1830 to i32
  %1832 = xor i32 %1831, %1817
  %1833 = lshr i32 %1832, 4
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1835, i8* %1836, align 1
  %1837 = icmp eq i32 %1817, 0
  %1838 = zext i1 %1837 to i8
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1838, i8* %1839, align 1
  %1840 = lshr i32 %1817, 31
  %1841 = trunc i32 %1840 to i8
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1841, i8* %1842, align 1
  %1843 = lshr i32 %1816, 31
  %1844 = xor i32 %1840, %1843
  %1845 = add i32 %1844, %1840
  %1846 = icmp eq i32 %1845, 2
  %1847 = zext i1 %1846 to i8
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1847, i8* %1848, align 1
  store %struct.Memory* %loadMem_400d09, %struct.Memory** %MEMORY
  %loadMem_400d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 33
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1851 to i64*
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 1
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %EAX.i441 = bitcast %union.anon* %1854 to i32*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 15
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %1857 to i64*
  %1858 = load i64, i64* %RBP.i442
  %1859 = sub i64 %1858, 52
  %1860 = load i32, i32* %EAX.i441
  %1861 = zext i32 %1860 to i64
  %1862 = load i64, i64* %PC.i440
  %1863 = add i64 %1862, 3
  store i64 %1863, i64* %PC.i440
  %1864 = inttoptr i64 %1859 to i32*
  store i32 %1860, i32* %1864
  store %struct.Memory* %loadMem_400d0c, %struct.Memory** %MEMORY
  %loadMem_400d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 33
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1867 to i64*
  %1868 = load i64, i64* %PC.i439
  %1869 = add i64 %1868, -123
  %1870 = load i64, i64* %PC.i439
  %1871 = add i64 %1870, 5
  store i64 %1871, i64* %PC.i439
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1869, i64* %1872, align 8
  store %struct.Memory* %loadMem_400d0f, %struct.Memory** %MEMORY
  br label %block_.L_400c94

block_.L_400d14:                                  ; preds = %block_.L_400c94
  %loadMem_400d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 33
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1875 to i64*
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 15
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %1878 to i64*
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1880 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1879, i64 0, i64 0
  %YMM0.i438 = bitcast %union.VectorReg* %1880 to %"class.std::bitset"*
  %1881 = bitcast %"class.std::bitset"* %YMM0.i438 to i8*
  %1882 = load i64, i64* %RBP.i437
  %1883 = sub i64 %1882, 16
  %1884 = load i64, i64* %PC.i436
  %1885 = add i64 %1884, 5
  store i64 %1885, i64* %PC.i436
  %1886 = inttoptr i64 %1883 to double*
  %1887 = load double, double* %1886
  %1888 = bitcast i8* %1881 to double*
  store double %1887, double* %1888, align 1
  %1889 = getelementptr inbounds i8, i8* %1881, i64 8
  %1890 = bitcast i8* %1889 to double*
  store double 0.000000e+00, double* %1890, align 1
  store %struct.Memory* %loadMem_400d14, %struct.Memory** %MEMORY
  %loadMem_400d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 33
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1893 to i64*
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 1
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %1896 to i64*
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 15
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %1899 to i64*
  %1900 = load i64, i64* %RBP.i435
  %1901 = sub i64 %1900, 48
  %1902 = load i64, i64* %PC.i433
  %1903 = add i64 %1902, 4
  store i64 %1903, i64* %PC.i433
  %1904 = inttoptr i64 %1901 to i64*
  %1905 = load i64, i64* %1904
  store i64 %1905, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_400d19, %struct.Memory** %MEMORY
  %loadMem_400d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 33
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 5
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 15
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %1914 to i64*
  %1915 = load i64, i64* %RBP.i432
  %1916 = sub i64 %1915, 56
  %1917 = load i64, i64* %PC.i430
  %1918 = add i64 %1917, 4
  store i64 %1918, i64* %PC.i430
  %1919 = inttoptr i64 %1916 to i32*
  %1920 = load i32, i32* %1919
  %1921 = sext i32 %1920 to i64
  store i64 %1921, i64* %RCX.i431, align 8
  store %struct.Memory* %loadMem_400d1d, %struct.Memory** %MEMORY
  %loadMem_400d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 33
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 1
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 5
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1932 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1931, i64 0, i64 1
  %YMM1.i429 = bitcast %union.VectorReg* %1932 to %"class.std::bitset"*
  %1933 = bitcast %"class.std::bitset"* %YMM1.i429 to i8*
  %1934 = load i64, i64* %RAX.i427
  %1935 = load i64, i64* %RCX.i428
  %1936 = mul i64 %1935, 8
  %1937 = add i64 %1936, %1934
  %1938 = load i64, i64* %PC.i426
  %1939 = add i64 %1938, 5
  store i64 %1939, i64* %PC.i426
  %1940 = inttoptr i64 %1937 to double*
  %1941 = load double, double* %1940
  %1942 = bitcast i8* %1933 to double*
  store double %1941, double* %1942, align 1
  %1943 = getelementptr inbounds i8, i8* %1933, i64 8
  %1944 = bitcast i8* %1943 to double*
  store double 0.000000e+00, double* %1944, align 1
  store %struct.Memory* %loadMem_400d21, %struct.Memory** %MEMORY
  %loadMem_400d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1949 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1948, i64 0, i64 1
  %YMM1.i424 = bitcast %union.VectorReg* %1949 to %"class.std::bitset"*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1951 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1950, i64 0, i64 0
  %XMM0.i425 = bitcast %union.VectorReg* %1951 to %union.vec128_t*
  %1952 = bitcast %"class.std::bitset"* %YMM1.i424 to i8*
  %1953 = bitcast %"class.std::bitset"* %YMM1.i424 to i8*
  %1954 = bitcast %union.vec128_t* %XMM0.i425 to i8*
  %1955 = load i64, i64* %PC.i423
  %1956 = add i64 %1955, 4
  store i64 %1956, i64* %PC.i423
  %1957 = bitcast i8* %1953 to double*
  %1958 = load double, double* %1957, align 1
  %1959 = getelementptr inbounds i8, i8* %1953, i64 8
  %1960 = bitcast i8* %1959 to i64*
  %1961 = load i64, i64* %1960, align 1
  %1962 = bitcast i8* %1954 to double*
  %1963 = load double, double* %1962, align 1
  %1964 = fdiv double %1958, %1963
  %1965 = bitcast i8* %1952 to double*
  store double %1964, double* %1965, align 1
  %1966 = getelementptr inbounds i8, i8* %1952, i64 8
  %1967 = bitcast i8* %1966 to i64*
  store i64 %1961, i64* %1967, align 1
  store %struct.Memory* %loadMem_400d26, %struct.Memory** %MEMORY
  %loadMem_400d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 33
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1970 to i64*
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 1
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %1973 to i64*
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 5
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %RCX.i421 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1978 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1977, i64 0, i64 1
  %XMM1.i422 = bitcast %union.VectorReg* %1978 to %union.vec128_t*
  %1979 = load i64, i64* %RAX.i420
  %1980 = load i64, i64* %RCX.i421
  %1981 = mul i64 %1980, 8
  %1982 = add i64 %1981, %1979
  %1983 = bitcast %union.vec128_t* %XMM1.i422 to i8*
  %1984 = load i64, i64* %PC.i419
  %1985 = add i64 %1984, 5
  store i64 %1985, i64* %PC.i419
  %1986 = bitcast i8* %1983 to double*
  %1987 = load double, double* %1986, align 1
  %1988 = inttoptr i64 %1982 to double*
  store double %1987, double* %1988
  store %struct.Memory* %loadMem_400d2a, %struct.Memory** %MEMORY
  %loadMem_400d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 1
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 15
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %1997 to i64*
  %1998 = load i64, i64* %RBP.i418
  %1999 = sub i64 %1998, 48
  %2000 = load i64, i64* %PC.i416
  %2001 = add i64 %2000, 4
  store i64 %2001, i64* %PC.i416
  %2002 = inttoptr i64 %1999 to i64*
  %2003 = load i64, i64* %2002
  store i64 %2003, i64* %RAX.i417, align 8
  store %struct.Memory* %loadMem_400d2f, %struct.Memory** %MEMORY
  %loadMem_400d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 33
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 5
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 15
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %2012 to i64*
  %2013 = load i64, i64* %RBP.i415
  %2014 = sub i64 %2013, 56
  %2015 = load i64, i64* %PC.i413
  %2016 = add i64 %2015, 4
  store i64 %2016, i64* %PC.i413
  %2017 = inttoptr i64 %2014 to i32*
  %2018 = load i32, i32* %2017
  %2019 = sext i32 %2018 to i64
  store i64 %2019, i64* %RCX.i414, align 8
  store %struct.Memory* %loadMem_400d33, %struct.Memory** %MEMORY
  %loadMem_400d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 33
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 1
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 5
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RCX.i411 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2030 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2029, i64 0, i64 0
  %YMM0.i412 = bitcast %union.VectorReg* %2030 to %"class.std::bitset"*
  %2031 = bitcast %"class.std::bitset"* %YMM0.i412 to i8*
  %2032 = load i64, i64* %RAX.i410
  %2033 = load i64, i64* %RCX.i411
  %2034 = mul i64 %2033, 8
  %2035 = add i64 %2034, %2032
  %2036 = load i64, i64* %PC.i409
  %2037 = add i64 %2036, 5
  store i64 %2037, i64* %PC.i409
  %2038 = inttoptr i64 %2035 to double*
  %2039 = load double, double* %2038
  %2040 = bitcast i8* %2031 to double*
  store double %2039, double* %2040, align 1
  %2041 = getelementptr inbounds i8, i8* %2031, i64 8
  %2042 = bitcast i8* %2041 to double*
  store double 0.000000e+00, double* %2042, align 1
  store %struct.Memory* %loadMem_400d37, %struct.Memory** %MEMORY
  %loadMem1_400d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 33
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %2045 to i64*
  %2046 = load i64, i64* %PC.i408
  %2047 = add i64 %2046, -1708
  %2048 = load i64, i64* %PC.i408
  %2049 = add i64 %2048, 5
  %2050 = load i64, i64* %PC.i408
  %2051 = add i64 %2050, 5
  store i64 %2051, i64* %PC.i408
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2053 = load i64, i64* %2052, align 8
  %2054 = add i64 %2053, -8
  %2055 = inttoptr i64 %2054 to i64*
  store i64 %2049, i64* %2055
  store i64 %2054, i64* %2052, align 8
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2047, i64* %2056, align 8
  store %struct.Memory* %loadMem1_400d3c, %struct.Memory** %MEMORY
  %loadMem2_400d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400d3c = load i64, i64* %3
  %call2_400d3c = call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %loadPC_400d3c, %struct.Memory* %loadMem2_400d3c)
  store %struct.Memory* %call2_400d3c, %struct.Memory** %MEMORY
  %loadMem_400d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 1
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 15
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %2065 to i64*
  %2066 = load i64, i64* %RBP.i407
  %2067 = sub i64 %2066, 48
  %2068 = load i64, i64* %PC.i405
  %2069 = add i64 %2068, 4
  store i64 %2069, i64* %PC.i405
  %2070 = inttoptr i64 %2067 to i64*
  %2071 = load i64, i64* %2070
  store i64 %2071, i64* %RAX.i406, align 8
  store %struct.Memory* %loadMem_400d41, %struct.Memory** %MEMORY
  %loadMem_400d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 5
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 15
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %2080 to i64*
  %2081 = load i64, i64* %RBP.i404
  %2082 = sub i64 %2081, 56
  %2083 = load i64, i64* %PC.i402
  %2084 = add i64 %2083, 4
  store i64 %2084, i64* %PC.i402
  %2085 = inttoptr i64 %2082 to i32*
  %2086 = load i32, i32* %2085
  %2087 = sext i32 %2086 to i64
  store i64 %2087, i64* %RCX.i403, align 8
  store %struct.Memory* %loadMem_400d45, %struct.Memory** %MEMORY
  %loadMem_400d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 1
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 5
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2098 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2097, i64 0, i64 0
  %XMM0.i401 = bitcast %union.VectorReg* %2098 to %union.vec128_t*
  %2099 = load i64, i64* %RAX.i399
  %2100 = load i64, i64* %RCX.i400
  %2101 = mul i64 %2100, 8
  %2102 = add i64 %2101, %2099
  %2103 = bitcast %union.vec128_t* %XMM0.i401 to i8*
  %2104 = load i64, i64* %PC.i398
  %2105 = add i64 %2104, 5
  store i64 %2105, i64* %PC.i398
  %2106 = bitcast i8* %2103 to double*
  %2107 = load double, double* %2106, align 1
  %2108 = inttoptr i64 %2102 to double*
  store double %2107, double* %2108
  store %struct.Memory* %loadMem_400d49, %struct.Memory** %MEMORY
  %loadMem_400d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 1
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 15
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %2117 to i64*
  %2118 = load i64, i64* %RBP.i397
  %2119 = sub i64 %2118, 48
  %2120 = load i64, i64* %PC.i395
  %2121 = add i64 %2120, 4
  store i64 %2121, i64* %PC.i395
  %2122 = inttoptr i64 %2119 to i64*
  %2123 = load i64, i64* %2122
  store i64 %2123, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_400d4e, %struct.Memory** %MEMORY
  %loadMem_400d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 5
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 15
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RBP.i394
  %2134 = sub i64 %2133, 56
  %2135 = load i64, i64* %PC.i392
  %2136 = add i64 %2135, 4
  store i64 %2136, i64* %PC.i392
  %2137 = inttoptr i64 %2134 to i32*
  %2138 = load i32, i32* %2137
  %2139 = sext i32 %2138 to i64
  store i64 %2139, i64* %RCX.i393, align 8
  store %struct.Memory* %loadMem_400d52, %struct.Memory** %MEMORY
  %loadMem_400d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 1
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 5
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2150 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2149, i64 0, i64 0
  %YMM0.i391 = bitcast %union.VectorReg* %2150 to %"class.std::bitset"*
  %2151 = bitcast %"class.std::bitset"* %YMM0.i391 to i8*
  %2152 = load i64, i64* %RAX.i389
  %2153 = load i64, i64* %RCX.i390
  %2154 = mul i64 %2153, 8
  %2155 = add i64 %2154, %2152
  %2156 = load i64, i64* %PC.i388
  %2157 = add i64 %2156, 5
  store i64 %2157, i64* %PC.i388
  %2158 = inttoptr i64 %2155 to double*
  %2159 = load double, double* %2158
  %2160 = bitcast i8* %2151 to double*
  store double %2159, double* %2160, align 1
  %2161 = getelementptr inbounds i8, i8* %2151, i64 8
  %2162 = bitcast i8* %2161 to double*
  store double 0.000000e+00, double* %2162, align 1
  store %struct.Memory* %loadMem_400d56, %struct.Memory** %MEMORY
  %loadMem_400d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 15
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %2168 to i64*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2169, i64 0, i64 1
  %YMM1.i387 = bitcast %union.VectorReg* %2170 to %"class.std::bitset"*
  %2171 = bitcast %"class.std::bitset"* %YMM1.i387 to i8*
  %2172 = load i64, i64* %RBP.i386
  %2173 = sub i64 %2172, 72
  %2174 = load i64, i64* %PC.i385
  %2175 = add i64 %2174, 5
  store i64 %2175, i64* %PC.i385
  %2176 = inttoptr i64 %2173 to double*
  %2177 = load double, double* %2176
  %2178 = bitcast i8* %2171 to double*
  store double %2177, double* %2178, align 1
  %2179 = getelementptr inbounds i8, i8* %2171, i64 8
  %2180 = bitcast i8* %2179 to double*
  store double 0.000000e+00, double* %2180, align 1
  store %struct.Memory* %loadMem_400d5b, %struct.Memory** %MEMORY
  %loadMem_400d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 33
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2185 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2184, i64 0, i64 0
  %XMM0.i380 = bitcast %union.VectorReg* %2185 to %union.vec128_t*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2187 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2186, i64 0, i64 1
  %XMM1.i381 = bitcast %union.VectorReg* %2187 to %union.vec128_t*
  %2188 = bitcast %union.vec128_t* %XMM1.i381 to i8*
  %2189 = bitcast %union.vec128_t* %XMM0.i380 to i8*
  %2190 = load i64, i64* %PC.i379
  %2191 = add i64 %2190, 4
  store i64 %2191, i64* %PC.i379
  %2192 = bitcast i8* %2188 to double*
  %2193 = load double, double* %2192, align 1
  %2194 = bitcast i8* %2189 to double*
  %2195 = load double, double* %2194, align 1
  %2196 = fcmp uno double %2193, %2195
  br i1 %2196, label %2197, label %2209

; <label>:2197:                                   ; preds = %block_.L_400d14
  %2198 = fadd double %2193, %2195
  %2199 = bitcast double %2198 to i64
  %2200 = and i64 %2199, 9221120237041090560
  %2201 = icmp eq i64 %2200, 9218868437227405312
  %2202 = and i64 %2199, 2251799813685247
  %2203 = icmp ne i64 %2202, 0
  %2204 = and i1 %2201, %2203
  br i1 %2204, label %2205, label %2215

; <label>:2205:                                   ; preds = %2197
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2207 = load i64, i64* %2206, align 8
  %2208 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2207, %struct.Memory* %loadMem_400d60)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:2209:                                   ; preds = %block_.L_400d14
  %2210 = fcmp ogt double %2193, %2195
  br i1 %2210, label %2215, label %2211

; <label>:2211:                                   ; preds = %2209
  %2212 = fcmp olt double %2193, %2195
  br i1 %2212, label %2215, label %2213

; <label>:2213:                                   ; preds = %2211
  %2214 = fcmp oeq double %2193, %2195
  br i1 %2214, label %2215, label %2222

; <label>:2215:                                   ; preds = %2213, %2211, %2209, %2197
  %2216 = phi i8 [ 0, %2209 ], [ 0, %2211 ], [ 1, %2213 ], [ 1, %2197 ]
  %2217 = phi i8 [ 0, %2209 ], [ 0, %2211 ], [ 0, %2213 ], [ 1, %2197 ]
  %2218 = phi i8 [ 0, %2209 ], [ 1, %2211 ], [ 0, %2213 ], [ 1, %2197 ]
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2216, i8* %2219, align 1
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2217, i8* %2220, align 1
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2218, i8* %2221, align 1
  br label %2222

; <label>:2222:                                   ; preds = %2215, %2213
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2223, align 1
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2224, align 1
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2225, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %2205, %2222
  %2226 = phi %struct.Memory* [ %2208, %2205 ], [ %loadMem_400d60, %2222 ]
  store %struct.Memory* %2226, %struct.Memory** %MEMORY
  %loadMem_400d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %2229 to i64*
  %2230 = load i64, i64* %PC.i378
  %2231 = add i64 %2230, 24
  %2232 = load i64, i64* %PC.i378
  %2233 = add i64 %2232, 6
  %2234 = load i64, i64* %PC.i378
  %2235 = add i64 %2234, 6
  store i64 %2235, i64* %PC.i378
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2237 = load i8, i8* %2236, align 1
  store i8 %2237, i8* %BRANCH_TAKEN, align 1
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2239 = icmp ne i8 %2237, 0
  %2240 = select i1 %2239, i64 %2231, i64 %2233
  store i64 %2240, i64* %2238, align 8
  store %struct.Memory* %loadMem_400d64, %struct.Memory** %MEMORY
  %loadBr_400d64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400d64 = icmp eq i8 %loadBr_400d64, 1
  br i1 %cmpBr_400d64, label %block_.L_400d7c, label %block_400d6a

block_400d6a:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_400d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 33
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %2243 to i64*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2245 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2244, i64 0, i64 0
  %YMM0.i377 = bitcast %union.VectorReg* %2245 to %"class.std::bitset"*
  %2246 = bitcast %"class.std::bitset"* %YMM0.i377 to i8*
  %2247 = load i64, i64* %PC.i376
  %2248 = load i64, i64* %PC.i376
  %2249 = add i64 %2248, 8
  store i64 %2249, i64* %PC.i376
  %2250 = load double, double* bitcast (%G_0x6ae__rip__4197746__type* @G_0x6ae__rip__4197746_ to double*)
  %2251 = bitcast i8* %2246 to double*
  store double %2250, double* %2251, align 1
  %2252 = getelementptr inbounds i8, i8* %2246, i64 8
  %2253 = bitcast i8* %2252 to double*
  store double 0.000000e+00, double* %2253, align 1
  store %struct.Memory* %loadMem_400d6a, %struct.Memory** %MEMORY
  %loadMem_400d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 33
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2256 to i64*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 15
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2260, i64 0, i64 0
  %XMM0.i375 = bitcast %union.VectorReg* %2261 to %union.vec128_t*
  %2262 = load i64, i64* %RBP.i374
  %2263 = sub i64 %2262, 80
  %2264 = bitcast %union.vec128_t* %XMM0.i375 to i8*
  %2265 = load i64, i64* %PC.i373
  %2266 = add i64 %2265, 5
  store i64 %2266, i64* %PC.i373
  %2267 = bitcast i8* %2264 to double*
  %2268 = load double, double* %2267, align 1
  %2269 = inttoptr i64 %2263 to double*
  store double %2268, double* %2269
  store %struct.Memory* %loadMem_400d72, %struct.Memory** %MEMORY
  %loadMem_400d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 33
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %PC.i372
  %2274 = add i64 %2273, 23
  %2275 = load i64, i64* %PC.i372
  %2276 = add i64 %2275, 5
  store i64 %2276, i64* %PC.i372
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2274, i64* %2277, align 8
  store %struct.Memory* %loadMem_400d77, %struct.Memory** %MEMORY
  br label %block_.L_400d8e

block_.L_400d7c:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_400d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 33
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 1
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 15
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %2286 to i64*
  %2287 = load i64, i64* %RBP.i371
  %2288 = sub i64 %2287, 48
  %2289 = load i64, i64* %PC.i369
  %2290 = add i64 %2289, 4
  store i64 %2290, i64* %PC.i369
  %2291 = inttoptr i64 %2288 to i64*
  %2292 = load i64, i64* %2291
  store i64 %2292, i64* %RAX.i370, align 8
  store %struct.Memory* %loadMem_400d7c, %struct.Memory** %MEMORY
  %loadMem_400d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 5
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 15
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %RBP.i368
  %2303 = sub i64 %2302, 56
  %2304 = load i64, i64* %PC.i366
  %2305 = add i64 %2304, 4
  store i64 %2305, i64* %PC.i366
  %2306 = inttoptr i64 %2303 to i32*
  %2307 = load i32, i32* %2306
  %2308 = sext i32 %2307 to i64
  store i64 %2308, i64* %RCX.i367, align 8
  store %struct.Memory* %loadMem_400d80, %struct.Memory** %MEMORY
  %loadMem_400d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 33
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2311 to i64*
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 1
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %2314 to i64*
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 5
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2318, i64 0, i64 0
  %YMM0.i365 = bitcast %union.VectorReg* %2319 to %"class.std::bitset"*
  %2320 = bitcast %"class.std::bitset"* %YMM0.i365 to i8*
  %2321 = load i64, i64* %RAX.i363
  %2322 = load i64, i64* %RCX.i364
  %2323 = mul i64 %2322, 8
  %2324 = add i64 %2323, %2321
  %2325 = load i64, i64* %PC.i362
  %2326 = add i64 %2325, 5
  store i64 %2326, i64* %PC.i362
  %2327 = inttoptr i64 %2324 to double*
  %2328 = load double, double* %2327
  %2329 = bitcast i8* %2320 to double*
  store double %2328, double* %2329, align 1
  %2330 = getelementptr inbounds i8, i8* %2320, i64 8
  %2331 = bitcast i8* %2330 to double*
  store double 0.000000e+00, double* %2331, align 1
  store %struct.Memory* %loadMem_400d84, %struct.Memory** %MEMORY
  %loadMem_400d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 33
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 15
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2338, i64 0, i64 0
  %XMM0.i361 = bitcast %union.VectorReg* %2339 to %union.vec128_t*
  %2340 = load i64, i64* %RBP.i360
  %2341 = sub i64 %2340, 80
  %2342 = bitcast %union.vec128_t* %XMM0.i361 to i8*
  %2343 = load i64, i64* %PC.i359
  %2344 = add i64 %2343, 5
  store i64 %2344, i64* %PC.i359
  %2345 = bitcast i8* %2342 to double*
  %2346 = load double, double* %2345, align 1
  %2347 = inttoptr i64 %2341 to double*
  store double %2346, double* %2347
  store %struct.Memory* %loadMem_400d89, %struct.Memory** %MEMORY
  br label %block_.L_400d8e

block_.L_400d8e:                                  ; preds = %block_.L_400d7c, %block_400d6a
  %loadMem_400d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 33
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 15
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2355 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2354, i64 0, i64 0
  %YMM0.i358 = bitcast %union.VectorReg* %2355 to %"class.std::bitset"*
  %2356 = bitcast %"class.std::bitset"* %YMM0.i358 to i8*
  %2357 = load i64, i64* %RBP.i357
  %2358 = sub i64 %2357, 80
  %2359 = load i64, i64* %PC.i356
  %2360 = add i64 %2359, 5
  store i64 %2360, i64* %PC.i356
  %2361 = inttoptr i64 %2358 to double*
  %2362 = load double, double* %2361
  %2363 = bitcast i8* %2356 to double*
  store double %2362, double* %2363, align 1
  %2364 = getelementptr inbounds i8, i8* %2356, i64 8
  %2365 = bitcast i8* %2364 to double*
  store double 0.000000e+00, double* %2365, align 1
  store %struct.Memory* %loadMem_400d8e, %struct.Memory** %MEMORY
  %loadMem_400d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 33
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 1
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 15
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %2374 to i64*
  %2375 = load i64, i64* %RBP.i355
  %2376 = sub i64 %2375, 48
  %2377 = load i64, i64* %PC.i353
  %2378 = add i64 %2377, 4
  store i64 %2378, i64* %PC.i353
  %2379 = inttoptr i64 %2376 to i64*
  %2380 = load i64, i64* %2379
  store i64 %2380, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_400d93, %struct.Memory** %MEMORY
  %loadMem_400d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 33
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 5
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 15
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %2389 to i64*
  %2390 = load i64, i64* %RBP.i352
  %2391 = sub i64 %2390, 56
  %2392 = load i64, i64* %PC.i350
  %2393 = add i64 %2392, 4
  store i64 %2393, i64* %PC.i350
  %2394 = inttoptr i64 %2391 to i32*
  %2395 = load i32, i32* %2394
  %2396 = sext i32 %2395 to i64
  store i64 %2396, i64* %RCX.i351, align 8
  store %struct.Memory* %loadMem_400d97, %struct.Memory** %MEMORY
  %loadMem_400d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 1
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 5
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2407 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2406, i64 0, i64 0
  %XMM0.i349 = bitcast %union.VectorReg* %2407 to %union.vec128_t*
  %2408 = load i64, i64* %RAX.i347
  %2409 = load i64, i64* %RCX.i348
  %2410 = mul i64 %2409, 8
  %2411 = add i64 %2410, %2408
  %2412 = bitcast %union.vec128_t* %XMM0.i349 to i8*
  %2413 = load i64, i64* %PC.i346
  %2414 = add i64 %2413, 5
  store i64 %2414, i64* %PC.i346
  %2415 = bitcast i8* %2412 to double*
  %2416 = load double, double* %2415, align 1
  %2417 = inttoptr i64 %2411 to double*
  store double %2416, double* %2417
  store %struct.Memory* %loadMem_400d9b, %struct.Memory** %MEMORY
  %loadMem_400da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 33
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2420 to i64*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 1
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2423 to i64*
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 15
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %2426 to i64*
  %2427 = load i64, i64* %RBP.i345
  %2428 = sub i64 %2427, 56
  %2429 = load i64, i64* %PC.i343
  %2430 = add i64 %2429, 3
  store i64 %2430, i64* %PC.i343
  %2431 = inttoptr i64 %2428 to i32*
  %2432 = load i32, i32* %2431
  %2433 = zext i32 %2432 to i64
  store i64 %2433, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_400da0, %struct.Memory** %MEMORY
  %loadMem_400da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 33
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 1
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %2439 to i64*
  %2440 = load i64, i64* %RAX.i342
  %2441 = load i64, i64* %PC.i341
  %2442 = add i64 %2441, 3
  store i64 %2442, i64* %PC.i341
  %2443 = trunc i64 %2440 to i32
  %2444 = add i32 1, %2443
  %2445 = zext i32 %2444 to i64
  store i64 %2445, i64* %RAX.i342, align 8
  %2446 = icmp ult i32 %2444, %2443
  %2447 = icmp ult i32 %2444, 1
  %2448 = or i1 %2446, %2447
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
  %2457 = xor i64 1, %2440
  %2458 = trunc i64 %2457 to i32
  %2459 = xor i32 %2458, %2444
  %2460 = lshr i32 %2459, 4
  %2461 = trunc i32 %2460 to i8
  %2462 = and i8 %2461, 1
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2462, i8* %2463, align 1
  %2464 = icmp eq i32 %2444, 0
  %2465 = zext i1 %2464 to i8
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2465, i8* %2466, align 1
  %2467 = lshr i32 %2444, 31
  %2468 = trunc i32 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2468, i8* %2469, align 1
  %2470 = lshr i32 %2443, 31
  %2471 = xor i32 %2467, %2470
  %2472 = add i32 %2471, %2467
  %2473 = icmp eq i32 %2472, 2
  %2474 = zext i1 %2473 to i8
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2474, i8* %2475, align 1
  store %struct.Memory* %loadMem_400da3, %struct.Memory** %MEMORY
  %loadMem_400da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 1
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %EAX.i339 = bitcast %union.anon* %2481 to i32*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 15
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %2484 to i64*
  %2485 = load i64, i64* %RBP.i340
  %2486 = sub i64 %2485, 56
  %2487 = load i32, i32* %EAX.i339
  %2488 = zext i32 %2487 to i64
  %2489 = load i64, i64* %PC.i338
  %2490 = add i64 %2489, 3
  store i64 %2490, i64* %PC.i338
  %2491 = inttoptr i64 %2486 to i32*
  store i32 %2487, i32* %2491
  store %struct.Memory* %loadMem_400da6, %struct.Memory** %MEMORY
  %loadMem_400da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 33
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2494 to i64*
  %2495 = load i64, i64* %PC.i337
  %2496 = add i64 %2495, -312
  %2497 = load i64, i64* %PC.i337
  %2498 = add i64 %2497, 5
  store i64 %2498, i64* %PC.i337
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2496, i64* %2499, align 8
  store %struct.Memory* %loadMem_400da9, %struct.Memory** %MEMORY
  br label %block_.L_400c71

block_.L_400dae:                                  ; preds = %block_.L_400c71
  %loadMem_400dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 33
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 15
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2505 to i64*
  %2506 = load i64, i64* %RBP.i336
  %2507 = sub i64 %2506, 52
  %2508 = load i64, i64* %PC.i335
  %2509 = add i64 %2508, 7
  store i64 %2509, i64* %PC.i335
  %2510 = inttoptr i64 %2507 to i32*
  store i32 0, i32* %2510
  store %struct.Memory* %loadMem_400dae, %struct.Memory** %MEMORY
  br label %block_.L_400db5

block_.L_400db5:                                  ; preds = %block_.L_400e53, %block_.L_400dae
  %loadMem_400db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 33
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2513 to i64*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 1
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 15
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %2519 to i64*
  %2520 = load i64, i64* %RBP.i334
  %2521 = sub i64 %2520, 52
  %2522 = load i64, i64* %PC.i332
  %2523 = add i64 %2522, 3
  store i64 %2523, i64* %PC.i332
  %2524 = inttoptr i64 %2521 to i32*
  %2525 = load i32, i32* %2524
  %2526 = zext i32 %2525 to i64
  store i64 %2526, i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_400db5, %struct.Memory** %MEMORY
  %loadMem_400db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 33
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 1
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %EAX.i330 = bitcast %union.anon* %2532 to i32*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 15
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %2535 to i64*
  %2536 = load i32, i32* %EAX.i330
  %2537 = zext i32 %2536 to i64
  %2538 = load i64, i64* %RBP.i331
  %2539 = sub i64 %2538, 8
  %2540 = load i64, i64* %PC.i329
  %2541 = add i64 %2540, 3
  store i64 %2541, i64* %PC.i329
  %2542 = inttoptr i64 %2539 to i32*
  %2543 = load i32, i32* %2542
  %2544 = sub i32 %2536, %2543
  %2545 = icmp ult i32 %2536, %2543
  %2546 = zext i1 %2545 to i8
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2546, i8* %2547, align 1
  %2548 = and i32 %2544, 255
  %2549 = call i32 @llvm.ctpop.i32(i32 %2548)
  %2550 = trunc i32 %2549 to i8
  %2551 = and i8 %2550, 1
  %2552 = xor i8 %2551, 1
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2552, i8* %2553, align 1
  %2554 = xor i32 %2543, %2536
  %2555 = xor i32 %2554, %2544
  %2556 = lshr i32 %2555, 4
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2558, i8* %2559, align 1
  %2560 = icmp eq i32 %2544, 0
  %2561 = zext i1 %2560 to i8
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2561, i8* %2562, align 1
  %2563 = lshr i32 %2544, 31
  %2564 = trunc i32 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2564, i8* %2565, align 1
  %2566 = lshr i32 %2536, 31
  %2567 = lshr i32 %2543, 31
  %2568 = xor i32 %2567, %2566
  %2569 = xor i32 %2563, %2566
  %2570 = add i32 %2569, %2568
  %2571 = icmp eq i32 %2570, 2
  %2572 = zext i1 %2571 to i8
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2572, i8* %2573, align 1
  store %struct.Memory* %loadMem_400db8, %struct.Memory** %MEMORY
  %loadMem_400dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 33
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %2576 to i64*
  %2577 = load i64, i64* %PC.i328
  %2578 = add i64 %2577, 166
  %2579 = load i64, i64* %PC.i328
  %2580 = add i64 %2579, 6
  %2581 = load i64, i64* %PC.i328
  %2582 = add i64 %2581, 6
  store i64 %2582, i64* %PC.i328
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2584 = load i8, i8* %2583, align 1
  %2585 = icmp ne i8 %2584, 0
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2587 = load i8, i8* %2586, align 1
  %2588 = icmp ne i8 %2587, 0
  %2589 = xor i1 %2585, %2588
  %2590 = xor i1 %2589, true
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %BRANCH_TAKEN, align 1
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2593 = select i1 %2589, i64 %2580, i64 %2578
  store i64 %2593, i64* %2592, align 8
  store %struct.Memory* %loadMem_400dbb, %struct.Memory** %MEMORY
  %loadBr_400dbb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400dbb = icmp eq i8 %loadBr_400dbb, 1
  br i1 %cmpBr_400dbb, label %block_.L_400e61, label %block_400dc1

block_400dc1:                                     ; preds = %block_.L_400db5
  %loadMem_400dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 15
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %2599 to i64*
  %2600 = load i64, i64* %RBP.i327
  %2601 = sub i64 %2600, 56
  %2602 = load i64, i64* %PC.i326
  %2603 = add i64 %2602, 7
  store i64 %2603, i64* %PC.i326
  %2604 = inttoptr i64 %2601 to i32*
  store i32 0, i32* %2604
  store %struct.Memory* %loadMem_400dc1, %struct.Memory** %MEMORY
  br label %block_.L_400dc8

block_.L_400dc8:                                  ; preds = %block_400dd4, %block_400dc1
  %loadMem_400dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 1
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 15
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %2613 to i64*
  %2614 = load i64, i64* %RBP.i325
  %2615 = sub i64 %2614, 56
  %2616 = load i64, i64* %PC.i323
  %2617 = add i64 %2616, 3
  store i64 %2617, i64* %PC.i323
  %2618 = inttoptr i64 %2615 to i32*
  %2619 = load i32, i32* %2618
  %2620 = zext i32 %2619 to i64
  store i64 %2620, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_400dc8, %struct.Memory** %MEMORY
  %loadMem_400dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 1
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %EAX.i321 = bitcast %union.anon* %2626 to i32*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 15
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %2629 to i64*
  %2630 = load i32, i32* %EAX.i321
  %2631 = zext i32 %2630 to i64
  %2632 = load i64, i64* %RBP.i322
  %2633 = sub i64 %2632, 4
  %2634 = load i64, i64* %PC.i320
  %2635 = add i64 %2634, 3
  store i64 %2635, i64* %PC.i320
  %2636 = inttoptr i64 %2633 to i32*
  %2637 = load i32, i32* %2636
  %2638 = sub i32 %2630, %2637
  %2639 = icmp ult i32 %2630, %2637
  %2640 = zext i1 %2639 to i8
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2640, i8* %2641, align 1
  %2642 = and i32 %2638, 255
  %2643 = call i32 @llvm.ctpop.i32(i32 %2642)
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  %2646 = xor i8 %2645, 1
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2646, i8* %2647, align 1
  %2648 = xor i32 %2637, %2630
  %2649 = xor i32 %2648, %2638
  %2650 = lshr i32 %2649, 4
  %2651 = trunc i32 %2650 to i8
  %2652 = and i8 %2651, 1
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2652, i8* %2653, align 1
  %2654 = icmp eq i32 %2638, 0
  %2655 = zext i1 %2654 to i8
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2655, i8* %2656, align 1
  %2657 = lshr i32 %2638, 31
  %2658 = trunc i32 %2657 to i8
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2658, i8* %2659, align 1
  %2660 = lshr i32 %2630, 31
  %2661 = lshr i32 %2637, 31
  %2662 = xor i32 %2661, %2660
  %2663 = xor i32 %2657, %2660
  %2664 = add i32 %2663, %2662
  %2665 = icmp eq i32 %2664, 2
  %2666 = zext i1 %2665 to i8
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2666, i8* %2667, align 1
  store %struct.Memory* %loadMem_400dcb, %struct.Memory** %MEMORY
  %loadMem_400dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 33
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %2670 to i64*
  %2671 = load i64, i64* %PC.i319
  %2672 = add i64 %2671, 128
  %2673 = load i64, i64* %PC.i319
  %2674 = add i64 %2673, 6
  %2675 = load i64, i64* %PC.i319
  %2676 = add i64 %2675, 6
  store i64 %2676, i64* %PC.i319
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2678 = load i8, i8* %2677, align 1
  %2679 = icmp ne i8 %2678, 0
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2681 = load i8, i8* %2680, align 1
  %2682 = icmp ne i8 %2681, 0
  %2683 = xor i1 %2679, %2682
  %2684 = xor i1 %2683, true
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %BRANCH_TAKEN, align 1
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2687 = select i1 %2683, i64 %2674, i64 %2672
  store i64 %2687, i64* %2686, align 8
  store %struct.Memory* %loadMem_400dce, %struct.Memory** %MEMORY
  %loadBr_400dce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400dce = icmp eq i8 %loadBr_400dce, 1
  br i1 %cmpBr_400dce, label %block_.L_400e4e, label %block_400dd4

block_400dd4:                                     ; preds = %block_.L_400dc8
  %loadMem_400dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 1
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %2693 to i64*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 15
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %2696 to i64*
  %2697 = load i64, i64* %RBP.i318
  %2698 = sub i64 %2697, 40
  %2699 = load i64, i64* %PC.i316
  %2700 = add i64 %2699, 4
  store i64 %2700, i64* %PC.i316
  %2701 = inttoptr i64 %2698 to i64*
  %2702 = load i64, i64* %2701
  store i64 %2702, i64* %RAX.i317, align 8
  store %struct.Memory* %loadMem_400dd4, %struct.Memory** %MEMORY
  %loadMem_400dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 33
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2705 to i64*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 5
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 15
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %2711 to i64*
  %2712 = load i64, i64* %RBP.i315
  %2713 = sub i64 %2712, 56
  %2714 = load i64, i64* %PC.i313
  %2715 = add i64 %2714, 4
  store i64 %2715, i64* %PC.i313
  %2716 = inttoptr i64 %2713 to i32*
  %2717 = load i32, i32* %2716
  %2718 = sext i32 %2717 to i64
  store i64 %2718, i64* %RCX.i314, align 8
  store %struct.Memory* %loadMem_400dd8, %struct.Memory** %MEMORY
  %loadMem_400ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 33
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2721 to i64*
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 1
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %2724 to i64*
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 5
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2728, i64 0, i64 0
  %YMM0.i312 = bitcast %union.VectorReg* %2729 to %"class.std::bitset"*
  %2730 = bitcast %"class.std::bitset"* %YMM0.i312 to i8*
  %2731 = load i64, i64* %RAX.i310
  %2732 = load i64, i64* %RCX.i311
  %2733 = mul i64 %2732, 8
  %2734 = add i64 %2733, %2731
  %2735 = load i64, i64* %PC.i309
  %2736 = add i64 %2735, 5
  store i64 %2736, i64* %PC.i309
  %2737 = inttoptr i64 %2734 to double*
  %2738 = load double, double* %2737
  %2739 = bitcast i8* %2730 to double*
  store double %2738, double* %2739, align 1
  %2740 = getelementptr inbounds i8, i8* %2730, i64 8
  %2741 = bitcast i8* %2740 to double*
  store double 0.000000e+00, double* %2741, align 1
  store %struct.Memory* %loadMem_400ddc, %struct.Memory** %MEMORY
  %loadMem_400de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 1
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 15
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %RBP.i308
  %2752 = sub i64 %2751, 24
  %2753 = load i64, i64* %PC.i306
  %2754 = add i64 %2753, 4
  store i64 %2754, i64* %PC.i306
  %2755 = inttoptr i64 %2752 to i64*
  %2756 = load i64, i64* %2755
  store i64 %2756, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_400de1, %struct.Memory** %MEMORY
  %loadMem_400de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 33
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2759 to i64*
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 5
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %2762 to i64*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 15
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %2765 to i64*
  %2766 = load i64, i64* %RBP.i305
  %2767 = sub i64 %2766, 52
  %2768 = load i64, i64* %PC.i303
  %2769 = add i64 %2768, 4
  store i64 %2769, i64* %PC.i303
  %2770 = inttoptr i64 %2767 to i32*
  %2771 = load i32, i32* %2770
  %2772 = sext i32 %2771 to i64
  store i64 %2772, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_400de5, %struct.Memory** %MEMORY
  %loadMem_400de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 33
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 5
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %RCX.i302
  %2780 = load i64, i64* %PC.i301
  %2781 = add i64 %2780, 7
  store i64 %2781, i64* %PC.i301
  %2782 = sext i64 %2779 to i128
  %2783 = and i128 %2782, -18446744073709551616
  %2784 = zext i64 %2779 to i128
  %2785 = or i128 %2783, %2784
  %2786 = mul i128 8000, %2785
  %2787 = trunc i128 %2786 to i64
  store i64 %2787, i64* %RCX.i302, align 8
  %2788 = sext i64 %2787 to i128
  %2789 = icmp ne i128 %2788, %2786
  %2790 = zext i1 %2789 to i8
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2790, i8* %2791, align 1
  %2792 = trunc i128 %2786 to i32
  %2793 = and i32 %2792, 255
  %2794 = call i32 @llvm.ctpop.i32(i32 %2793)
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2797, i8* %2798, align 1
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2799, align 1
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2800, align 1
  %2801 = lshr i64 %2787, 63
  %2802 = trunc i64 %2801 to i8
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2802, i8* %2803, align 1
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2790, i8* %2804, align 1
  store %struct.Memory* %loadMem_400de9, %struct.Memory** %MEMORY
  %loadMem_400df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 33
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 1
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 5
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %2813 to i64*
  %2814 = load i64, i64* %RAX.i299
  %2815 = load i64, i64* %RCX.i300
  %2816 = load i64, i64* %PC.i298
  %2817 = add i64 %2816, 3
  store i64 %2817, i64* %PC.i298
  %2818 = add i64 %2815, %2814
  store i64 %2818, i64* %RAX.i299, align 8
  %2819 = icmp ult i64 %2818, %2814
  %2820 = icmp ult i64 %2818, %2815
  %2821 = or i1 %2819, %2820
  %2822 = zext i1 %2821 to i8
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2822, i8* %2823, align 1
  %2824 = trunc i64 %2818 to i32
  %2825 = and i32 %2824, 255
  %2826 = call i32 @llvm.ctpop.i32(i32 %2825)
  %2827 = trunc i32 %2826 to i8
  %2828 = and i8 %2827, 1
  %2829 = xor i8 %2828, 1
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2829, i8* %2830, align 1
  %2831 = xor i64 %2815, %2814
  %2832 = xor i64 %2831, %2818
  %2833 = lshr i64 %2832, 4
  %2834 = trunc i64 %2833 to i8
  %2835 = and i8 %2834, 1
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2835, i8* %2836, align 1
  %2837 = icmp eq i64 %2818, 0
  %2838 = zext i1 %2837 to i8
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2838, i8* %2839, align 1
  %2840 = lshr i64 %2818, 63
  %2841 = trunc i64 %2840 to i8
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2841, i8* %2842, align 1
  %2843 = lshr i64 %2814, 63
  %2844 = lshr i64 %2815, 63
  %2845 = xor i64 %2840, %2843
  %2846 = xor i64 %2840, %2844
  %2847 = add i64 %2845, %2846
  %2848 = icmp eq i64 %2847, 2
  %2849 = zext i1 %2848 to i8
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2849, i8* %2850, align 1
  store %struct.Memory* %loadMem_400df0, %struct.Memory** %MEMORY
  %loadMem_400df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 33
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2853 to i64*
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 5
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 15
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %2859 to i64*
  %2860 = load i64, i64* %RBP.i297
  %2861 = sub i64 %2860, 56
  %2862 = load i64, i64* %PC.i295
  %2863 = add i64 %2862, 4
  store i64 %2863, i64* %PC.i295
  %2864 = inttoptr i64 %2861 to i32*
  %2865 = load i32, i32* %2864
  %2866 = sext i32 %2865 to i64
  store i64 %2866, i64* %RCX.i296, align 8
  store %struct.Memory* %loadMem_400df3, %struct.Memory** %MEMORY
  %loadMem_400df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 33
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 1
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 5
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2877 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2876, i64 0, i64 1
  %YMM1.i294 = bitcast %union.VectorReg* %2877 to %"class.std::bitset"*
  %2878 = bitcast %"class.std::bitset"* %YMM1.i294 to i8*
  %2879 = load i64, i64* %RAX.i292
  %2880 = load i64, i64* %RCX.i293
  %2881 = mul i64 %2880, 8
  %2882 = add i64 %2881, %2879
  %2883 = load i64, i64* %PC.i291
  %2884 = add i64 %2883, 5
  store i64 %2884, i64* %PC.i291
  %2885 = inttoptr i64 %2882 to double*
  %2886 = load double, double* %2885
  %2887 = bitcast i8* %2878 to double*
  store double %2886, double* %2887, align 1
  %2888 = getelementptr inbounds i8, i8* %2878, i64 8
  %2889 = bitcast i8* %2888 to double*
  store double 0.000000e+00, double* %2889, align 1
  store %struct.Memory* %loadMem_400df7, %struct.Memory** %MEMORY
  %loadMem_400dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2894 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2893, i64 0, i64 1
  %YMM1.i289 = bitcast %union.VectorReg* %2894 to %"class.std::bitset"*
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2896 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2895, i64 0, i64 0
  %XMM0.i290 = bitcast %union.VectorReg* %2896 to %union.vec128_t*
  %2897 = bitcast %"class.std::bitset"* %YMM1.i289 to i8*
  %2898 = bitcast %"class.std::bitset"* %YMM1.i289 to i8*
  %2899 = bitcast %union.vec128_t* %XMM0.i290 to i8*
  %2900 = load i64, i64* %PC.i288
  %2901 = add i64 %2900, 4
  store i64 %2901, i64* %PC.i288
  %2902 = bitcast i8* %2898 to double*
  %2903 = load double, double* %2902, align 1
  %2904 = getelementptr inbounds i8, i8* %2898, i64 8
  %2905 = bitcast i8* %2904 to i64*
  %2906 = load i64, i64* %2905, align 1
  %2907 = bitcast i8* %2899 to double*
  %2908 = load double, double* %2907, align 1
  %2909 = fsub double %2903, %2908
  %2910 = bitcast i8* %2897 to double*
  store double %2909, double* %2910, align 1
  %2911 = getelementptr inbounds i8, i8* %2897, i64 8
  %2912 = bitcast i8* %2911 to i64*
  store i64 %2906, i64* %2912, align 1
  store %struct.Memory* %loadMem_400dfc, %struct.Memory** %MEMORY
  %loadMem_400e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 1
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 5
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %2921 to i64*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2922, i64 0, i64 1
  %XMM1.i287 = bitcast %union.VectorReg* %2923 to %union.vec128_t*
  %2924 = load i64, i64* %RAX.i285
  %2925 = load i64, i64* %RCX.i286
  %2926 = mul i64 %2925, 8
  %2927 = add i64 %2926, %2924
  %2928 = bitcast %union.vec128_t* %XMM1.i287 to i8*
  %2929 = load i64, i64* %PC.i284
  %2930 = add i64 %2929, 5
  store i64 %2930, i64* %PC.i284
  %2931 = bitcast i8* %2928 to double*
  %2932 = load double, double* %2931, align 1
  %2933 = inttoptr i64 %2927 to double*
  store double %2932, double* %2933
  store %struct.Memory* %loadMem_400e00, %struct.Memory** %MEMORY
  %loadMem_400e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 33
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2936 to i64*
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 15
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %2939 to i64*
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2941 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2940, i64 0, i64 0
  %YMM0.i283 = bitcast %union.VectorReg* %2941 to %"class.std::bitset"*
  %2942 = bitcast %"class.std::bitset"* %YMM0.i283 to i8*
  %2943 = load i64, i64* %RBP.i282
  %2944 = sub i64 %2943, 16
  %2945 = load i64, i64* %PC.i281
  %2946 = add i64 %2945, 5
  store i64 %2946, i64* %PC.i281
  %2947 = inttoptr i64 %2944 to double*
  %2948 = load double, double* %2947
  %2949 = bitcast i8* %2942 to double*
  store double %2948, double* %2949, align 1
  %2950 = getelementptr inbounds i8, i8* %2942, i64 8
  %2951 = bitcast i8* %2950 to double*
  store double 0.000000e+00, double* %2951, align 1
  store %struct.Memory* %loadMem_400e05, %struct.Memory** %MEMORY
  %loadMem1_400e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2954 to i64*
  %2955 = load i64, i64* %PC.i280
  %2956 = add i64 %2955, -1914
  %2957 = load i64, i64* %PC.i280
  %2958 = add i64 %2957, 5
  %2959 = load i64, i64* %PC.i280
  %2960 = add i64 %2959, 5
  store i64 %2960, i64* %PC.i280
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2962 = load i64, i64* %2961, align 8
  %2963 = add i64 %2962, -8
  %2964 = inttoptr i64 %2963 to i64*
  store i64 %2958, i64* %2964
  store i64 %2963, i64* %2961, align 8
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2956, i64* %2965, align 8
  store %struct.Memory* %loadMem1_400e0a, %struct.Memory** %MEMORY
  %loadMem2_400e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400e0a = load i64, i64* %3
  %call2_400e0a = call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %loadPC_400e0a, %struct.Memory* %loadMem2_400e0a)
  store %struct.Memory* %call2_400e0a, %struct.Memory** %MEMORY
  %loadMem_400e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 33
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2968 to i64*
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 1
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 15
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %2974 to i64*
  %2975 = load i64, i64* %RBP.i279
  %2976 = sub i64 %2975, 48
  %2977 = load i64, i64* %PC.i277
  %2978 = add i64 %2977, 4
  store i64 %2978, i64* %PC.i277
  %2979 = inttoptr i64 %2976 to i64*
  %2980 = load i64, i64* %2979
  store i64 %2980, i64* %RAX.i278, align 8
  store %struct.Memory* %loadMem_400e0f, %struct.Memory** %MEMORY
  %loadMem_400e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 33
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 5
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %2986 to i64*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 15
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %2989 to i64*
  %2990 = load i64, i64* %RBP.i276
  %2991 = sub i64 %2990, 56
  %2992 = load i64, i64* %PC.i274
  %2993 = add i64 %2992, 4
  store i64 %2993, i64* %PC.i274
  %2994 = inttoptr i64 %2991 to i32*
  %2995 = load i32, i32* %2994
  %2996 = sext i32 %2995 to i64
  store i64 %2996, i64* %RCX.i275, align 8
  store %struct.Memory* %loadMem_400e13, %struct.Memory** %MEMORY
  %loadMem_400e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 33
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 1
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 5
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3007 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3006, i64 0, i64 0
  %YMM0.i273 = bitcast %union.VectorReg* %3007 to %"class.std::bitset"*
  %3008 = bitcast %"class.std::bitset"* %YMM0.i273 to i8*
  %3009 = bitcast %"class.std::bitset"* %YMM0.i273 to i8*
  %3010 = load i64, i64* %RAX.i271
  %3011 = load i64, i64* %RCX.i272
  %3012 = mul i64 %3011, 8
  %3013 = add i64 %3012, %3010
  %3014 = load i64, i64* %PC.i270
  %3015 = add i64 %3014, 5
  store i64 %3015, i64* %PC.i270
  %3016 = bitcast i8* %3009 to double*
  %3017 = load double, double* %3016, align 1
  %3018 = getelementptr inbounds i8, i8* %3009, i64 8
  %3019 = bitcast i8* %3018 to i64*
  %3020 = load i64, i64* %3019, align 1
  %3021 = inttoptr i64 %3013 to double*
  %3022 = load double, double* %3021
  %3023 = fmul double %3017, %3022
  %3024 = bitcast i8* %3008 to double*
  store double %3023, double* %3024, align 1
  %3025 = getelementptr inbounds i8, i8* %3008, i64 8
  %3026 = bitcast i8* %3025 to i64*
  store i64 %3020, i64* %3026, align 1
  store %struct.Memory* %loadMem_400e17, %struct.Memory** %MEMORY
  %loadMem_400e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 33
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 1
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %3032 to i64*
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 15
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %RBP.i269
  %3037 = sub i64 %3036, 24
  %3038 = load i64, i64* %PC.i267
  %3039 = add i64 %3038, 4
  store i64 %3039, i64* %PC.i267
  %3040 = inttoptr i64 %3037 to i64*
  %3041 = load i64, i64* %3040
  store i64 %3041, i64* %RAX.i268, align 8
  store %struct.Memory* %loadMem_400e1c, %struct.Memory** %MEMORY
  %loadMem_400e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 5
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 15
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %3050 to i64*
  %3051 = load i64, i64* %RBP.i266
  %3052 = sub i64 %3051, 52
  %3053 = load i64, i64* %PC.i264
  %3054 = add i64 %3053, 4
  store i64 %3054, i64* %PC.i264
  %3055 = inttoptr i64 %3052 to i32*
  %3056 = load i32, i32* %3055
  %3057 = sext i32 %3056 to i64
  store i64 %3057, i64* %RCX.i265, align 8
  store %struct.Memory* %loadMem_400e20, %struct.Memory** %MEMORY
  %loadMem_400e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 5
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %3063 to i64*
  %3064 = load i64, i64* %RCX.i263
  %3065 = load i64, i64* %PC.i262
  %3066 = add i64 %3065, 7
  store i64 %3066, i64* %PC.i262
  %3067 = sext i64 %3064 to i128
  %3068 = and i128 %3067, -18446744073709551616
  %3069 = zext i64 %3064 to i128
  %3070 = or i128 %3068, %3069
  %3071 = mul i128 8000, %3070
  %3072 = trunc i128 %3071 to i64
  store i64 %3072, i64* %RCX.i263, align 8
  %3073 = sext i64 %3072 to i128
  %3074 = icmp ne i128 %3073, %3071
  %3075 = zext i1 %3074 to i8
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3075, i8* %3076, align 1
  %3077 = trunc i128 %3071 to i32
  %3078 = and i32 %3077, 255
  %3079 = call i32 @llvm.ctpop.i32(i32 %3078)
  %3080 = trunc i32 %3079 to i8
  %3081 = and i8 %3080, 1
  %3082 = xor i8 %3081, 1
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3082, i8* %3083, align 1
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3084, align 1
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3085, align 1
  %3086 = lshr i64 %3072, 63
  %3087 = trunc i64 %3086 to i8
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3087, i8* %3088, align 1
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3075, i8* %3089, align 1
  store %struct.Memory* %loadMem_400e24, %struct.Memory** %MEMORY
  %loadMem_400e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 1
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 5
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RAX.i260
  %3100 = load i64, i64* %RCX.i261
  %3101 = load i64, i64* %PC.i259
  %3102 = add i64 %3101, 3
  store i64 %3102, i64* %PC.i259
  %3103 = add i64 %3100, %3099
  store i64 %3103, i64* %RAX.i260, align 8
  %3104 = icmp ult i64 %3103, %3099
  %3105 = icmp ult i64 %3103, %3100
  %3106 = or i1 %3104, %3105
  %3107 = zext i1 %3106 to i8
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3107, i8* %3108, align 1
  %3109 = trunc i64 %3103 to i32
  %3110 = and i32 %3109, 255
  %3111 = call i32 @llvm.ctpop.i32(i32 %3110)
  %3112 = trunc i32 %3111 to i8
  %3113 = and i8 %3112, 1
  %3114 = xor i8 %3113, 1
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3114, i8* %3115, align 1
  %3116 = xor i64 %3100, %3099
  %3117 = xor i64 %3116, %3103
  %3118 = lshr i64 %3117, 4
  %3119 = trunc i64 %3118 to i8
  %3120 = and i8 %3119, 1
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3120, i8* %3121, align 1
  %3122 = icmp eq i64 %3103, 0
  %3123 = zext i1 %3122 to i8
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3123, i8* %3124, align 1
  %3125 = lshr i64 %3103, 63
  %3126 = trunc i64 %3125 to i8
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3126, i8* %3127, align 1
  %3128 = lshr i64 %3099, 63
  %3129 = lshr i64 %3100, 63
  %3130 = xor i64 %3125, %3128
  %3131 = xor i64 %3125, %3129
  %3132 = add i64 %3130, %3131
  %3133 = icmp eq i64 %3132, 2
  %3134 = zext i1 %3133 to i8
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3134, i8* %3135, align 1
  store %struct.Memory* %loadMem_400e2b, %struct.Memory** %MEMORY
  %loadMem_400e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 33
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 5
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 15
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %3144 to i64*
  %3145 = load i64, i64* %RBP.i258
  %3146 = sub i64 %3145, 56
  %3147 = load i64, i64* %PC.i256
  %3148 = add i64 %3147, 4
  store i64 %3148, i64* %PC.i256
  %3149 = inttoptr i64 %3146 to i32*
  %3150 = load i32, i32* %3149
  %3151 = sext i32 %3150 to i64
  store i64 %3151, i64* %RCX.i257, align 8
  store %struct.Memory* %loadMem_400e2e, %struct.Memory** %MEMORY
  %loadMem_400e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 33
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 1
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 5
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %3160 to i64*
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3162 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3161, i64 0, i64 1
  %YMM1.i255 = bitcast %union.VectorReg* %3162 to %"class.std::bitset"*
  %3163 = bitcast %"class.std::bitset"* %YMM1.i255 to i8*
  %3164 = load i64, i64* %RAX.i253
  %3165 = load i64, i64* %RCX.i254
  %3166 = mul i64 %3165, 8
  %3167 = add i64 %3166, %3164
  %3168 = load i64, i64* %PC.i252
  %3169 = add i64 %3168, 5
  store i64 %3169, i64* %PC.i252
  %3170 = inttoptr i64 %3167 to double*
  %3171 = load double, double* %3170
  %3172 = bitcast i8* %3163 to double*
  store double %3171, double* %3172, align 1
  %3173 = getelementptr inbounds i8, i8* %3163, i64 8
  %3174 = bitcast i8* %3173 to double*
  store double 0.000000e+00, double* %3174, align 1
  store %struct.Memory* %loadMem_400e32, %struct.Memory** %MEMORY
  %loadMem_400e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 33
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3177 to i64*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3179 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3178, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3179 to %"class.std::bitset"*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3181 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3180, i64 0, i64 0
  %XMM0.i251 = bitcast %union.VectorReg* %3181 to %union.vec128_t*
  %3182 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3183 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3184 = bitcast %union.vec128_t* %XMM0.i251 to i8*
  %3185 = load i64, i64* %PC.i250
  %3186 = add i64 %3185, 4
  store i64 %3186, i64* %PC.i250
  %3187 = bitcast i8* %3183 to double*
  %3188 = load double, double* %3187, align 1
  %3189 = getelementptr inbounds i8, i8* %3183, i64 8
  %3190 = bitcast i8* %3189 to i64*
  %3191 = load i64, i64* %3190, align 1
  %3192 = bitcast i8* %3184 to double*
  %3193 = load double, double* %3192, align 1
  %3194 = fdiv double %3188, %3193
  %3195 = bitcast i8* %3182 to double*
  store double %3194, double* %3195, align 1
  %3196 = getelementptr inbounds i8, i8* %3182, i64 8
  %3197 = bitcast i8* %3196 to i64*
  store i64 %3191, i64* %3197, align 1
  store %struct.Memory* %loadMem_400e37, %struct.Memory** %MEMORY
  %loadMem_400e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 33
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 1
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 5
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %RCX.i249 = bitcast %union.anon* %3206 to i64*
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3207, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3208 to %union.vec128_t*
  %3209 = load i64, i64* %RAX.i248
  %3210 = load i64, i64* %RCX.i249
  %3211 = mul i64 %3210, 8
  %3212 = add i64 %3211, %3209
  %3213 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3214 = load i64, i64* %PC.i247
  %3215 = add i64 %3214, 5
  store i64 %3215, i64* %PC.i247
  %3216 = bitcast i8* %3213 to double*
  %3217 = load double, double* %3216, align 1
  %3218 = inttoptr i64 %3212 to double*
  store double %3217, double* %3218
  store %struct.Memory* %loadMem_400e3b, %struct.Memory** %MEMORY
  %loadMem_400e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 1
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 15
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %RBP.i246
  %3229 = sub i64 %3228, 56
  %3230 = load i64, i64* %PC.i244
  %3231 = add i64 %3230, 3
  store i64 %3231, i64* %PC.i244
  %3232 = inttoptr i64 %3229 to i32*
  %3233 = load i32, i32* %3232
  %3234 = zext i32 %3233 to i64
  store i64 %3234, i64* %RAX.i245, align 8
  store %struct.Memory* %loadMem_400e40, %struct.Memory** %MEMORY
  %loadMem_400e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 33
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3237 to i64*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 1
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %3240 to i64*
  %3241 = load i64, i64* %RAX.i243
  %3242 = load i64, i64* %PC.i242
  %3243 = add i64 %3242, 3
  store i64 %3243, i64* %PC.i242
  %3244 = trunc i64 %3241 to i32
  %3245 = add i32 1, %3244
  %3246 = zext i32 %3245 to i64
  store i64 %3246, i64* %RAX.i243, align 8
  %3247 = icmp ult i32 %3245, %3244
  %3248 = icmp ult i32 %3245, 1
  %3249 = or i1 %3247, %3248
  %3250 = zext i1 %3249 to i8
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3250, i8* %3251, align 1
  %3252 = and i32 %3245, 255
  %3253 = call i32 @llvm.ctpop.i32(i32 %3252)
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  %3256 = xor i8 %3255, 1
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3256, i8* %3257, align 1
  %3258 = xor i64 1, %3241
  %3259 = trunc i64 %3258 to i32
  %3260 = xor i32 %3259, %3245
  %3261 = lshr i32 %3260, 4
  %3262 = trunc i32 %3261 to i8
  %3263 = and i8 %3262, 1
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3263, i8* %3264, align 1
  %3265 = icmp eq i32 %3245, 0
  %3266 = zext i1 %3265 to i8
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3266, i8* %3267, align 1
  %3268 = lshr i32 %3245, 31
  %3269 = trunc i32 %3268 to i8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3269, i8* %3270, align 1
  %3271 = lshr i32 %3244, 31
  %3272 = xor i32 %3268, %3271
  %3273 = add i32 %3272, %3268
  %3274 = icmp eq i32 %3273, 2
  %3275 = zext i1 %3274 to i8
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3275, i8* %3276, align 1
  store %struct.Memory* %loadMem_400e43, %struct.Memory** %MEMORY
  %loadMem_400e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 33
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3279 to i64*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 1
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %EAX.i240 = bitcast %union.anon* %3282 to i32*
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 15
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %3285 to i64*
  %3286 = load i64, i64* %RBP.i241
  %3287 = sub i64 %3286, 56
  %3288 = load i32, i32* %EAX.i240
  %3289 = zext i32 %3288 to i64
  %3290 = load i64, i64* %PC.i239
  %3291 = add i64 %3290, 3
  store i64 %3291, i64* %PC.i239
  %3292 = inttoptr i64 %3287 to i32*
  store i32 %3288, i32* %3292
  store %struct.Memory* %loadMem_400e46, %struct.Memory** %MEMORY
  %loadMem_400e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 33
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3295 to i64*
  %3296 = load i64, i64* %PC.i238
  %3297 = add i64 %3296, -129
  %3298 = load i64, i64* %PC.i238
  %3299 = add i64 %3298, 5
  store i64 %3299, i64* %PC.i238
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3297, i64* %3300, align 8
  store %struct.Memory* %loadMem_400e49, %struct.Memory** %MEMORY
  br label %block_.L_400dc8

block_.L_400e4e:                                  ; preds = %block_.L_400dc8
  %loadMem_400e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 33
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %3303 to i64*
  %3304 = load i64, i64* %PC.i237
  %3305 = add i64 %3304, 5
  %3306 = load i64, i64* %PC.i237
  %3307 = add i64 %3306, 5
  store i64 %3307, i64* %PC.i237
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3305, i64* %3308, align 8
  store %struct.Memory* %loadMem_400e4e, %struct.Memory** %MEMORY
  br label %block_.L_400e53

block_.L_400e53:                                  ; preds = %block_.L_400e4e
  %loadMem_400e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 33
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 1
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 15
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %3317 to i64*
  %3318 = load i64, i64* %RBP.i236
  %3319 = sub i64 %3318, 52
  %3320 = load i64, i64* %PC.i234
  %3321 = add i64 %3320, 3
  store i64 %3321, i64* %PC.i234
  %3322 = inttoptr i64 %3319 to i32*
  %3323 = load i32, i32* %3322
  %3324 = zext i32 %3323 to i64
  store i64 %3324, i64* %RAX.i235, align 8
  store %struct.Memory* %loadMem_400e53, %struct.Memory** %MEMORY
  %loadMem_400e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 1
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %3330 to i64*
  %3331 = load i64, i64* %RAX.i233
  %3332 = load i64, i64* %PC.i232
  %3333 = add i64 %3332, 3
  store i64 %3333, i64* %PC.i232
  %3334 = trunc i64 %3331 to i32
  %3335 = add i32 1, %3334
  %3336 = zext i32 %3335 to i64
  store i64 %3336, i64* %RAX.i233, align 8
  %3337 = icmp ult i32 %3335, %3334
  %3338 = icmp ult i32 %3335, 1
  %3339 = or i1 %3337, %3338
  %3340 = zext i1 %3339 to i8
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3340, i8* %3341, align 1
  %3342 = and i32 %3335, 255
  %3343 = call i32 @llvm.ctpop.i32(i32 %3342)
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  %3346 = xor i8 %3345, 1
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3346, i8* %3347, align 1
  %3348 = xor i64 1, %3331
  %3349 = trunc i64 %3348 to i32
  %3350 = xor i32 %3349, %3335
  %3351 = lshr i32 %3350, 4
  %3352 = trunc i32 %3351 to i8
  %3353 = and i8 %3352, 1
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3353, i8* %3354, align 1
  %3355 = icmp eq i32 %3335, 0
  %3356 = zext i1 %3355 to i8
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3356, i8* %3357, align 1
  %3358 = lshr i32 %3335, 31
  %3359 = trunc i32 %3358 to i8
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3359, i8* %3360, align 1
  %3361 = lshr i32 %3334, 31
  %3362 = xor i32 %3358, %3361
  %3363 = add i32 %3362, %3358
  %3364 = icmp eq i32 %3363, 2
  %3365 = zext i1 %3364 to i8
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3365, i8* %3366, align 1
  store %struct.Memory* %loadMem_400e56, %struct.Memory** %MEMORY
  %loadMem_400e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 33
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3369 to i64*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 1
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %EAX.i230 = bitcast %union.anon* %3372 to i32*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 15
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %3375 to i64*
  %3376 = load i64, i64* %RBP.i231
  %3377 = sub i64 %3376, 52
  %3378 = load i32, i32* %EAX.i230
  %3379 = zext i32 %3378 to i64
  %3380 = load i64, i64* %PC.i229
  %3381 = add i64 %3380, 3
  store i64 %3381, i64* %PC.i229
  %3382 = inttoptr i64 %3377 to i32*
  store i32 %3378, i32* %3382
  store %struct.Memory* %loadMem_400e59, %struct.Memory** %MEMORY
  %loadMem_400e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 33
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %3385 to i64*
  %3386 = load i64, i64* %PC.i228
  %3387 = add i64 %3386, -167
  %3388 = load i64, i64* %PC.i228
  %3389 = add i64 %3388, 5
  store i64 %3389, i64* %PC.i228
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3387, i64* %3390, align 8
  store %struct.Memory* %loadMem_400e5c, %struct.Memory** %MEMORY
  br label %block_.L_400db5

block_.L_400e61:                                  ; preds = %block_.L_400db5
  %loadMem_400e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 33
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3393 to i64*
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 15
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %3396 to i64*
  %3397 = load i64, i64* %RBP.i227
  %3398 = sub i64 %3397, 60
  %3399 = load i64, i64* %PC.i226
  %3400 = add i64 %3399, 7
  store i64 %3400, i64* %PC.i226
  %3401 = inttoptr i64 %3398 to i32*
  store i32 0, i32* %3401
  store %struct.Memory* %loadMem_400e61, %struct.Memory** %MEMORY
  br label %block_.L_400e68

block_.L_400e68:                                  ; preds = %block_.L_400f8f, %block_.L_400e61
  %loadMem_400e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 33
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 1
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 15
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %RBP.i225
  %3412 = sub i64 %3411, 60
  %3413 = load i64, i64* %PC.i223
  %3414 = add i64 %3413, 3
  store i64 %3414, i64* %PC.i223
  %3415 = inttoptr i64 %3412 to i32*
  %3416 = load i32, i32* %3415
  %3417 = zext i32 %3416 to i64
  store i64 %3417, i64* %RAX.i224, align 8
  store %struct.Memory* %loadMem_400e68, %struct.Memory** %MEMORY
  %loadMem_400e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 5
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 15
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %RBP.i222
  %3428 = sub i64 %3427, 4
  %3429 = load i64, i64* %PC.i220
  %3430 = add i64 %3429, 3
  store i64 %3430, i64* %PC.i220
  %3431 = inttoptr i64 %3428 to i32*
  %3432 = load i32, i32* %3431
  %3433 = zext i32 %3432 to i64
  store i64 %3433, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_400e6b, %struct.Memory** %MEMORY
  %loadMem_400e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 5
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %3439 to i64*
  %3440 = load i64, i64* %RCX.i219
  %3441 = load i64, i64* %PC.i218
  %3442 = add i64 %3441, 3
  store i64 %3442, i64* %PC.i218
  %3443 = trunc i64 %3440 to i32
  %3444 = sub i32 %3443, 1
  %3445 = zext i32 %3444 to i64
  store i64 %3445, i64* %RCX.i219, align 8
  %3446 = icmp ult i32 %3443, 1
  %3447 = zext i1 %3446 to i8
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3447, i8* %3448, align 1
  %3449 = and i32 %3444, 255
  %3450 = call i32 @llvm.ctpop.i32(i32 %3449)
  %3451 = trunc i32 %3450 to i8
  %3452 = and i8 %3451, 1
  %3453 = xor i8 %3452, 1
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3453, i8* %3454, align 1
  %3455 = xor i64 1, %3440
  %3456 = trunc i64 %3455 to i32
  %3457 = xor i32 %3456, %3444
  %3458 = lshr i32 %3457, 4
  %3459 = trunc i32 %3458 to i8
  %3460 = and i8 %3459, 1
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3460, i8* %3461, align 1
  %3462 = icmp eq i32 %3444, 0
  %3463 = zext i1 %3462 to i8
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3463, i8* %3464, align 1
  %3465 = lshr i32 %3444, 31
  %3466 = trunc i32 %3465 to i8
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3466, i8* %3467, align 1
  %3468 = lshr i32 %3443, 31
  %3469 = xor i32 %3465, %3468
  %3470 = add i32 %3469, %3468
  %3471 = icmp eq i32 %3470, 2
  %3472 = zext i1 %3471 to i8
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3472, i8* %3473, align 1
  store %struct.Memory* %loadMem_400e6e, %struct.Memory** %MEMORY
  %loadMem_400e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 33
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3476 to i64*
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 1
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %EAX.i216 = bitcast %union.anon* %3479 to i32*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 5
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %ECX.i217 = bitcast %union.anon* %3482 to i32*
  %3483 = load i32, i32* %EAX.i216
  %3484 = zext i32 %3483 to i64
  %3485 = load i32, i32* %ECX.i217
  %3486 = zext i32 %3485 to i64
  %3487 = load i64, i64* %PC.i215
  %3488 = add i64 %3487, 2
  store i64 %3488, i64* %PC.i215
  %3489 = sub i32 %3483, %3485
  %3490 = icmp ult i32 %3483, %3485
  %3491 = zext i1 %3490 to i8
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3491, i8* %3492, align 1
  %3493 = and i32 %3489, 255
  %3494 = call i32 @llvm.ctpop.i32(i32 %3493)
  %3495 = trunc i32 %3494 to i8
  %3496 = and i8 %3495, 1
  %3497 = xor i8 %3496, 1
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3497, i8* %3498, align 1
  %3499 = xor i64 %3486, %3484
  %3500 = trunc i64 %3499 to i32
  %3501 = xor i32 %3500, %3489
  %3502 = lshr i32 %3501, 4
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3504, i8* %3505, align 1
  %3506 = icmp eq i32 %3489, 0
  %3507 = zext i1 %3506 to i8
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3507, i8* %3508, align 1
  %3509 = lshr i32 %3489, 31
  %3510 = trunc i32 %3509 to i8
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3510, i8* %3511, align 1
  %3512 = lshr i32 %3483, 31
  %3513 = lshr i32 %3485, 31
  %3514 = xor i32 %3513, %3512
  %3515 = xor i32 %3509, %3512
  %3516 = add i32 %3515, %3514
  %3517 = icmp eq i32 %3516, 2
  %3518 = zext i1 %3517 to i8
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3518, i8* %3519, align 1
  store %struct.Memory* %loadMem_400e71, %struct.Memory** %MEMORY
  %loadMem_400e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 33
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3522 to i64*
  %3523 = load i64, i64* %PC.i214
  %3524 = add i64 %3523, 298
  %3525 = load i64, i64* %PC.i214
  %3526 = add i64 %3525, 6
  %3527 = load i64, i64* %PC.i214
  %3528 = add i64 %3527, 6
  store i64 %3528, i64* %PC.i214
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3530 = load i8, i8* %3529, align 1
  %3531 = icmp ne i8 %3530, 0
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3533 = load i8, i8* %3532, align 1
  %3534 = icmp ne i8 %3533, 0
  %3535 = xor i1 %3531, %3534
  %3536 = xor i1 %3535, true
  %3537 = zext i1 %3536 to i8
  store i8 %3537, i8* %BRANCH_TAKEN, align 1
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3539 = select i1 %3535, i64 %3526, i64 %3524
  store i64 %3539, i64* %3538, align 8
  store %struct.Memory* %loadMem_400e73, %struct.Memory** %MEMORY
  %loadBr_400e73 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400e73 = icmp eq i8 %loadBr_400e73, 1
  br i1 %cmpBr_400e73, label %block_.L_400f9d, label %block_400e79

block_400e79:                                     ; preds = %block_.L_400e68
  %loadMem_400e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 33
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3543, i64 0, i64 0
  %YMM0.i213 = bitcast %union.VectorReg* %3544 to %"class.std::bitset"*
  %3545 = bitcast %"class.std::bitset"* %YMM0.i213 to i8*
  %3546 = load i64, i64* %PC.i212
  %3547 = load i64, i64* %PC.i212
  %3548 = add i64 %3547, 8
  store i64 %3548, i64* %PC.i212
  %3549 = load double, double* bitcast (%G_0x59f__rip__4198017__type* @G_0x59f__rip__4198017_ to double*)
  %3550 = bitcast i8* %3545 to double*
  store double %3549, double* %3550, align 1
  %3551 = getelementptr inbounds i8, i8* %3545, i64 8
  %3552 = bitcast i8* %3551 to double*
  store double 0.000000e+00, double* %3552, align 1
  store %struct.Memory* %loadMem_400e79, %struct.Memory** %MEMORY
  %loadMem_400e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 33
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3555 to i64*
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 1
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %3558 to i64*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 15
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %3561 to i64*
  %3562 = load i64, i64* %RBP.i211
  %3563 = sub i64 %3562, 32
  %3564 = load i64, i64* %PC.i209
  %3565 = add i64 %3564, 4
  store i64 %3565, i64* %PC.i209
  %3566 = inttoptr i64 %3563 to i64*
  %3567 = load i64, i64* %3566
  store i64 %3567, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_400e81, %struct.Memory** %MEMORY
  %loadMem_400e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 5
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %3573 to i64*
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 15
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %3576 to i64*
  %3577 = load i64, i64* %RBP.i208
  %3578 = sub i64 %3577, 60
  %3579 = load i64, i64* %PC.i206
  %3580 = add i64 %3579, 4
  store i64 %3580, i64* %PC.i206
  %3581 = inttoptr i64 %3578 to i32*
  %3582 = load i32, i32* %3581
  %3583 = sext i32 %3582 to i64
  store i64 %3583, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_400e85, %struct.Memory** %MEMORY
  %loadMem_400e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 33
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3586 to i64*
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 5
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %3589 to i64*
  %3590 = load i64, i64* %RCX.i205
  %3591 = load i64, i64* %PC.i204
  %3592 = add i64 %3591, 7
  store i64 %3592, i64* %PC.i204
  %3593 = sext i64 %3590 to i128
  %3594 = and i128 %3593, -18446744073709551616
  %3595 = zext i64 %3590 to i128
  %3596 = or i128 %3594, %3595
  %3597 = mul i128 8000, %3596
  %3598 = trunc i128 %3597 to i64
  store i64 %3598, i64* %RCX.i205, align 8
  %3599 = sext i64 %3598 to i128
  %3600 = icmp ne i128 %3599, %3597
  %3601 = zext i1 %3600 to i8
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3601, i8* %3602, align 1
  %3603 = trunc i128 %3597 to i32
  %3604 = and i32 %3603, 255
  %3605 = call i32 @llvm.ctpop.i32(i32 %3604)
  %3606 = trunc i32 %3605 to i8
  %3607 = and i8 %3606, 1
  %3608 = xor i8 %3607, 1
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3608, i8* %3609, align 1
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3610, align 1
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3611, align 1
  %3612 = lshr i64 %3598, 63
  %3613 = trunc i64 %3612 to i8
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3613, i8* %3614, align 1
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3601, i8* %3615, align 1
  store %struct.Memory* %loadMem_400e89, %struct.Memory** %MEMORY
  %loadMem_400e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 33
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3618 to i64*
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 1
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %3621 to i64*
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 5
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %3624 to i64*
  %3625 = load i64, i64* %RAX.i202
  %3626 = load i64, i64* %RCX.i203
  %3627 = load i64, i64* %PC.i201
  %3628 = add i64 %3627, 3
  store i64 %3628, i64* %PC.i201
  %3629 = add i64 %3626, %3625
  store i64 %3629, i64* %RAX.i202, align 8
  %3630 = icmp ult i64 %3629, %3625
  %3631 = icmp ult i64 %3629, %3626
  %3632 = or i1 %3630, %3631
  %3633 = zext i1 %3632 to i8
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3633, i8* %3634, align 1
  %3635 = trunc i64 %3629 to i32
  %3636 = and i32 %3635, 255
  %3637 = call i32 @llvm.ctpop.i32(i32 %3636)
  %3638 = trunc i32 %3637 to i8
  %3639 = and i8 %3638, 1
  %3640 = xor i8 %3639, 1
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3640, i8* %3641, align 1
  %3642 = xor i64 %3626, %3625
  %3643 = xor i64 %3642, %3629
  %3644 = lshr i64 %3643, 4
  %3645 = trunc i64 %3644 to i8
  %3646 = and i8 %3645, 1
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3646, i8* %3647, align 1
  %3648 = icmp eq i64 %3629, 0
  %3649 = zext i1 %3648 to i8
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3649, i8* %3650, align 1
  %3651 = lshr i64 %3629, 63
  %3652 = trunc i64 %3651 to i8
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3652, i8* %3653, align 1
  %3654 = lshr i64 %3625, 63
  %3655 = lshr i64 %3626, 63
  %3656 = xor i64 %3651, %3654
  %3657 = xor i64 %3651, %3655
  %3658 = add i64 %3656, %3657
  %3659 = icmp eq i64 %3658, 2
  %3660 = zext i1 %3659 to i8
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3660, i8* %3661, align 1
  store %struct.Memory* %loadMem_400e90, %struct.Memory** %MEMORY
  %loadMem_400e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 33
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3664 to i64*
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 5
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %3667 to i64*
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3669 = getelementptr inbounds %struct.GPR, %struct.GPR* %3668, i32 0, i32 15
  %3670 = getelementptr inbounds %struct.Reg, %struct.Reg* %3669, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %3670 to i64*
  %3671 = load i64, i64* %RBP.i200
  %3672 = sub i64 %3671, 60
  %3673 = load i64, i64* %PC.i198
  %3674 = add i64 %3673, 4
  store i64 %3674, i64* %PC.i198
  %3675 = inttoptr i64 %3672 to i32*
  %3676 = load i32, i32* %3675
  %3677 = sext i32 %3676 to i64
  store i64 %3677, i64* %RCX.i199, align 8
  store %struct.Memory* %loadMem_400e93, %struct.Memory** %MEMORY
  %loadMem_400e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 33
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3680 to i64*
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 1
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %3683 to i64*
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 5
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %3686 to i64*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3687, i64 0, i64 0
  %XMM0.i197 = bitcast %union.VectorReg* %3688 to %union.vec128_t*
  %3689 = load i64, i64* %RAX.i195
  %3690 = load i64, i64* %RCX.i196
  %3691 = mul i64 %3690, 8
  %3692 = add i64 %3691, %3689
  %3693 = bitcast %union.vec128_t* %XMM0.i197 to i8*
  %3694 = load i64, i64* %PC.i194
  %3695 = add i64 %3694, 5
  store i64 %3695, i64* %PC.i194
  %3696 = bitcast i8* %3693 to double*
  %3697 = load double, double* %3696, align 1
  %3698 = inttoptr i64 %3692 to double*
  store double %3697, double* %3698
  store %struct.Memory* %loadMem_400e97, %struct.Memory** %MEMORY
  %loadMem_400e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 33
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3701 to i64*
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 7
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %RDX.i192 = bitcast %union.anon* %3704 to i64*
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 15
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %3707 to i64*
  %3708 = load i64, i64* %RBP.i193
  %3709 = sub i64 %3708, 60
  %3710 = load i64, i64* %PC.i191
  %3711 = add i64 %3710, 3
  store i64 %3711, i64* %PC.i191
  %3712 = inttoptr i64 %3709 to i32*
  %3713 = load i32, i32* %3712
  %3714 = zext i32 %3713 to i64
  store i64 %3714, i64* %RDX.i192, align 8
  store %struct.Memory* %loadMem_400e9c, %struct.Memory** %MEMORY
  %loadMem_400e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 33
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 7
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %RDX.i190 = bitcast %union.anon* %3720 to i64*
  %3721 = load i64, i64* %RDX.i190
  %3722 = load i64, i64* %PC.i189
  %3723 = add i64 %3722, 3
  store i64 %3723, i64* %PC.i189
  %3724 = trunc i64 %3721 to i32
  %3725 = add i32 1, %3724
  %3726 = zext i32 %3725 to i64
  store i64 %3726, i64* %RDX.i190, align 8
  %3727 = icmp ult i32 %3725, %3724
  %3728 = icmp ult i32 %3725, 1
  %3729 = or i1 %3727, %3728
  %3730 = zext i1 %3729 to i8
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3730, i8* %3731, align 1
  %3732 = and i32 %3725, 255
  %3733 = call i32 @llvm.ctpop.i32(i32 %3732)
  %3734 = trunc i32 %3733 to i8
  %3735 = and i8 %3734, 1
  %3736 = xor i8 %3735, 1
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3736, i8* %3737, align 1
  %3738 = xor i64 1, %3721
  %3739 = trunc i64 %3738 to i32
  %3740 = xor i32 %3739, %3725
  %3741 = lshr i32 %3740, 4
  %3742 = trunc i32 %3741 to i8
  %3743 = and i8 %3742, 1
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3743, i8* %3744, align 1
  %3745 = icmp eq i32 %3725, 0
  %3746 = zext i1 %3745 to i8
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3746, i8* %3747, align 1
  %3748 = lshr i32 %3725, 31
  %3749 = trunc i32 %3748 to i8
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3749, i8* %3750, align 1
  %3751 = lshr i32 %3724, 31
  %3752 = xor i32 %3748, %3751
  %3753 = add i32 %3752, %3748
  %3754 = icmp eq i32 %3753, 2
  %3755 = zext i1 %3754 to i8
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3755, i8* %3756, align 1
  store %struct.Memory* %loadMem_400e9f, %struct.Memory** %MEMORY
  %loadMem_400ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 33
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 7
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3762 to i32*
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 15
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %3765 to i64*
  %3766 = load i64, i64* %RBP.i188
  %3767 = sub i64 %3766, 64
  %3768 = load i32, i32* %EDX.i
  %3769 = zext i32 %3768 to i64
  %3770 = load i64, i64* %PC.i187
  %3771 = add i64 %3770, 3
  store i64 %3771, i64* %PC.i187
  %3772 = inttoptr i64 %3767 to i32*
  store i32 %3768, i32* %3772
  store %struct.Memory* %loadMem_400ea2, %struct.Memory** %MEMORY
  br label %block_.L_400ea5

block_.L_400ea5:                                  ; preds = %block_.L_400f46, %block_400e79
  %loadMem_400ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 33
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3775 to i64*
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 1
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %3778 to i64*
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 15
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %3781 to i64*
  %3782 = load i64, i64* %RBP.i186
  %3783 = sub i64 %3782, 64
  %3784 = load i64, i64* %PC.i184
  %3785 = add i64 %3784, 3
  store i64 %3785, i64* %PC.i184
  %3786 = inttoptr i64 %3783 to i32*
  %3787 = load i32, i32* %3786
  %3788 = zext i32 %3787 to i64
  store i64 %3788, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_400ea5, %struct.Memory** %MEMORY
  %loadMem_400ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 33
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3791 to i64*
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 1
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %EAX.i182 = bitcast %union.anon* %3794 to i32*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 15
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %3797 to i64*
  %3798 = load i32, i32* %EAX.i182
  %3799 = zext i32 %3798 to i64
  %3800 = load i64, i64* %RBP.i183
  %3801 = sub i64 %3800, 4
  %3802 = load i64, i64* %PC.i181
  %3803 = add i64 %3802, 3
  store i64 %3803, i64* %PC.i181
  %3804 = inttoptr i64 %3801 to i32*
  %3805 = load i32, i32* %3804
  %3806 = sub i32 %3798, %3805
  %3807 = icmp ult i32 %3798, %3805
  %3808 = zext i1 %3807 to i8
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3808, i8* %3809, align 1
  %3810 = and i32 %3806, 255
  %3811 = call i32 @llvm.ctpop.i32(i32 %3810)
  %3812 = trunc i32 %3811 to i8
  %3813 = and i8 %3812, 1
  %3814 = xor i8 %3813, 1
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3814, i8* %3815, align 1
  %3816 = xor i32 %3805, %3798
  %3817 = xor i32 %3816, %3806
  %3818 = lshr i32 %3817, 4
  %3819 = trunc i32 %3818 to i8
  %3820 = and i8 %3819, 1
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3820, i8* %3821, align 1
  %3822 = icmp eq i32 %3806, 0
  %3823 = zext i1 %3822 to i8
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3823, i8* %3824, align 1
  %3825 = lshr i32 %3806, 31
  %3826 = trunc i32 %3825 to i8
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3826, i8* %3827, align 1
  %3828 = lshr i32 %3798, 31
  %3829 = lshr i32 %3805, 31
  %3830 = xor i32 %3829, %3828
  %3831 = xor i32 %3825, %3828
  %3832 = add i32 %3831, %3830
  %3833 = icmp eq i32 %3832, 2
  %3834 = zext i1 %3833 to i8
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3834, i8* %3835, align 1
  store %struct.Memory* %loadMem_400ea8, %struct.Memory** %MEMORY
  %loadMem_400eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 33
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3838 to i64*
  %3839 = load i64, i64* %PC.i180
  %3840 = add i64 %3839, 223
  %3841 = load i64, i64* %PC.i180
  %3842 = add i64 %3841, 6
  %3843 = load i64, i64* %PC.i180
  %3844 = add i64 %3843, 6
  store i64 %3844, i64* %PC.i180
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3846 = load i8, i8* %3845, align 1
  %3847 = icmp ne i8 %3846, 0
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3849 = load i8, i8* %3848, align 1
  %3850 = icmp ne i8 %3849, 0
  %3851 = xor i1 %3847, %3850
  %3852 = xor i1 %3851, true
  %3853 = zext i1 %3852 to i8
  store i8 %3853, i8* %BRANCH_TAKEN, align 1
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3855 = select i1 %3851, i64 %3842, i64 %3840
  store i64 %3855, i64* %3854, align 8
  store %struct.Memory* %loadMem_400eab, %struct.Memory** %MEMORY
  %loadBr_400eab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400eab = icmp eq i8 %loadBr_400eab, 1
  br i1 %cmpBr_400eab, label %block_.L_400f8a, label %block_400eb1

block_400eb1:                                     ; preds = %block_.L_400ea5
  %loadMem_400eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3857 = getelementptr inbounds %struct.GPR, %struct.GPR* %3856, i32 0, i32 33
  %3858 = getelementptr inbounds %struct.Reg, %struct.Reg* %3857, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3858 to i64*
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3860 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3859, i64 0, i64 0
  %YMM0.i178 = bitcast %union.VectorReg* %3860 to %"class.std::bitset"*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3862 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3861, i64 0, i64 0
  %XMM0.i179 = bitcast %union.VectorReg* %3862 to %union.vec128_t*
  %3863 = bitcast %"class.std::bitset"* %YMM0.i178 to i8*
  %3864 = bitcast %"class.std::bitset"* %YMM0.i178 to i8*
  %3865 = bitcast %union.vec128_t* %XMM0.i179 to i8*
  %3866 = load i64, i64* %PC.i177
  %3867 = add i64 %3866, 3
  store i64 %3867, i64* %PC.i177
  %3868 = bitcast i8* %3864 to i64*
  %3869 = load i64, i64* %3868, align 1
  %3870 = getelementptr inbounds i8, i8* %3864, i64 8
  %3871 = bitcast i8* %3870 to i64*
  %3872 = load i64, i64* %3871, align 1
  %3873 = bitcast i8* %3865 to i64*
  %3874 = load i64, i64* %3873, align 1
  %3875 = getelementptr inbounds i8, i8* %3865, i64 8
  %3876 = bitcast i8* %3875 to i64*
  %3877 = load i64, i64* %3876, align 1
  %3878 = xor i64 %3874, %3869
  %3879 = xor i64 %3877, %3872
  %3880 = trunc i64 %3878 to i32
  %3881 = lshr i64 %3878, 32
  %3882 = trunc i64 %3881 to i32
  %3883 = bitcast i8* %3863 to i32*
  store i32 %3880, i32* %3883, align 1
  %3884 = getelementptr inbounds i8, i8* %3863, i64 4
  %3885 = bitcast i8* %3884 to i32*
  store i32 %3882, i32* %3885, align 1
  %3886 = trunc i64 %3879 to i32
  %3887 = getelementptr inbounds i8, i8* %3863, i64 8
  %3888 = bitcast i8* %3887 to i32*
  store i32 %3886, i32* %3888, align 1
  %3889 = lshr i64 %3879, 32
  %3890 = trunc i64 %3889 to i32
  %3891 = getelementptr inbounds i8, i8* %3863, i64 12
  %3892 = bitcast i8* %3891 to i32*
  store i32 %3890, i32* %3892, align 1
  store %struct.Memory* %loadMem_400eb1, %struct.Memory** %MEMORY
  %loadMem_400eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 33
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 1
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %3898 to i64*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 15
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %3901 to i64*
  %3902 = load i64, i64* %RBP.i176
  %3903 = sub i64 %3902, 32
  %3904 = load i64, i64* %PC.i174
  %3905 = add i64 %3904, 4
  store i64 %3905, i64* %PC.i174
  %3906 = inttoptr i64 %3903 to i64*
  %3907 = load i64, i64* %3906
  store i64 %3907, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_400eb4, %struct.Memory** %MEMORY
  %loadMem_400eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 33
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %3910 to i64*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 5
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %3913 to i64*
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 15
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %3916 to i64*
  %3917 = load i64, i64* %RBP.i173
  %3918 = sub i64 %3917, 60
  %3919 = load i64, i64* %PC.i171
  %3920 = add i64 %3919, 4
  store i64 %3920, i64* %PC.i171
  %3921 = inttoptr i64 %3918 to i32*
  %3922 = load i32, i32* %3921
  %3923 = sext i32 %3922 to i64
  store i64 %3923, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_400eb8, %struct.Memory** %MEMORY
  %loadMem_400ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 33
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 5
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %3929 to i64*
  %3930 = load i64, i64* %RCX.i170
  %3931 = load i64, i64* %PC.i169
  %3932 = add i64 %3931, 7
  store i64 %3932, i64* %PC.i169
  %3933 = sext i64 %3930 to i128
  %3934 = and i128 %3933, -18446744073709551616
  %3935 = zext i64 %3930 to i128
  %3936 = or i128 %3934, %3935
  %3937 = mul i128 8000, %3936
  %3938 = trunc i128 %3937 to i64
  store i64 %3938, i64* %RCX.i170, align 8
  %3939 = sext i64 %3938 to i128
  %3940 = icmp ne i128 %3939, %3937
  %3941 = zext i1 %3940 to i8
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3941, i8* %3942, align 1
  %3943 = trunc i128 %3937 to i32
  %3944 = and i32 %3943, 255
  %3945 = call i32 @llvm.ctpop.i32(i32 %3944)
  %3946 = trunc i32 %3945 to i8
  %3947 = and i8 %3946, 1
  %3948 = xor i8 %3947, 1
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3948, i8* %3949, align 1
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3950, align 1
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3951, align 1
  %3952 = lshr i64 %3938, 63
  %3953 = trunc i64 %3952 to i8
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3953, i8* %3954, align 1
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3941, i8* %3955, align 1
  store %struct.Memory* %loadMem_400ebc, %struct.Memory** %MEMORY
  %loadMem_400ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 33
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 1
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %3961 to i64*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 5
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %3964 to i64*
  %3965 = load i64, i64* %RAX.i167
  %3966 = load i64, i64* %RCX.i168
  %3967 = load i64, i64* %PC.i166
  %3968 = add i64 %3967, 3
  store i64 %3968, i64* %PC.i166
  %3969 = add i64 %3966, %3965
  store i64 %3969, i64* %RAX.i167, align 8
  %3970 = icmp ult i64 %3969, %3965
  %3971 = icmp ult i64 %3969, %3966
  %3972 = or i1 %3970, %3971
  %3973 = zext i1 %3972 to i8
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3973, i8* %3974, align 1
  %3975 = trunc i64 %3969 to i32
  %3976 = and i32 %3975, 255
  %3977 = call i32 @llvm.ctpop.i32(i32 %3976)
  %3978 = trunc i32 %3977 to i8
  %3979 = and i8 %3978, 1
  %3980 = xor i8 %3979, 1
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3980, i8* %3981, align 1
  %3982 = xor i64 %3966, %3965
  %3983 = xor i64 %3982, %3969
  %3984 = lshr i64 %3983, 4
  %3985 = trunc i64 %3984 to i8
  %3986 = and i8 %3985, 1
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3986, i8* %3987, align 1
  %3988 = icmp eq i64 %3969, 0
  %3989 = zext i1 %3988 to i8
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3989, i8* %3990, align 1
  %3991 = lshr i64 %3969, 63
  %3992 = trunc i64 %3991 to i8
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3992, i8* %3993, align 1
  %3994 = lshr i64 %3965, 63
  %3995 = lshr i64 %3966, 63
  %3996 = xor i64 %3991, %3994
  %3997 = xor i64 %3991, %3995
  %3998 = add i64 %3996, %3997
  %3999 = icmp eq i64 %3998, 2
  %4000 = zext i1 %3999 to i8
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4000, i8* %4001, align 1
  store %struct.Memory* %loadMem_400ec3, %struct.Memory** %MEMORY
  %loadMem_400ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 33
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4004 to i64*
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 5
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %4007 to i64*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 15
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %4010 to i64*
  %4011 = load i64, i64* %RBP.i165
  %4012 = sub i64 %4011, 64
  %4013 = load i64, i64* %PC.i163
  %4014 = add i64 %4013, 4
  store i64 %4014, i64* %PC.i163
  %4015 = inttoptr i64 %4012 to i32*
  %4016 = load i32, i32* %4015
  %4017 = sext i32 %4016 to i64
  store i64 %4017, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_400ec6, %struct.Memory** %MEMORY
  %loadMem_400eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 33
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 1
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 5
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %4026 to i64*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4028 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4027, i64 0, i64 0
  %XMM0.i162 = bitcast %union.VectorReg* %4028 to %union.vec128_t*
  %4029 = load i64, i64* %RAX.i160
  %4030 = load i64, i64* %RCX.i161
  %4031 = mul i64 %4030, 8
  %4032 = add i64 %4031, %4029
  %4033 = bitcast %union.vec128_t* %XMM0.i162 to i8*
  %4034 = load i64, i64* %PC.i159
  %4035 = add i64 %4034, 5
  store i64 %4035, i64* %PC.i159
  %4036 = bitcast i8* %4033 to double*
  %4037 = load double, double* %4036, align 1
  %4038 = inttoptr i64 %4032 to double*
  store double %4037, double* %4038
  store %struct.Memory* %loadMem_400eca, %struct.Memory** %MEMORY
  %loadMem_400ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 33
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4041 to i64*
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 15
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %4044 to i64*
  %4045 = load i64, i64* %RBP.i158
  %4046 = sub i64 %4045, 52
  %4047 = load i64, i64* %PC.i157
  %4048 = add i64 %4047, 7
  store i64 %4048, i64* %PC.i157
  %4049 = inttoptr i64 %4046 to i32*
  store i32 0, i32* %4049
  store %struct.Memory* %loadMem_400ecf, %struct.Memory** %MEMORY
  br label %block_.L_400ed6

block_.L_400ed6:                                  ; preds = %block_400ee2, %block_400eb1
  %loadMem_400ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 33
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %4052 to i64*
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 1
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %4055 to i64*
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 15
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %4058 to i64*
  %4059 = load i64, i64* %RBP.i156
  %4060 = sub i64 %4059, 52
  %4061 = load i64, i64* %PC.i154
  %4062 = add i64 %4061, 3
  store i64 %4062, i64* %PC.i154
  %4063 = inttoptr i64 %4060 to i32*
  %4064 = load i32, i32* %4063
  %4065 = zext i32 %4064 to i64
  store i64 %4065, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_400ed6, %struct.Memory** %MEMORY
  %loadMem_400ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 33
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %4068 to i64*
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 1
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %EAX.i152 = bitcast %union.anon* %4071 to i32*
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 15
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %4074 to i64*
  %4075 = load i32, i32* %EAX.i152
  %4076 = zext i32 %4075 to i64
  %4077 = load i64, i64* %RBP.i153
  %4078 = sub i64 %4077, 8
  %4079 = load i64, i64* %PC.i151
  %4080 = add i64 %4079, 3
  store i64 %4080, i64* %PC.i151
  %4081 = inttoptr i64 %4078 to i32*
  %4082 = load i32, i32* %4081
  %4083 = sub i32 %4075, %4082
  %4084 = icmp ult i32 %4075, %4082
  %4085 = zext i1 %4084 to i8
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4085, i8* %4086, align 1
  %4087 = and i32 %4083, 255
  %4088 = call i32 @llvm.ctpop.i32(i32 %4087)
  %4089 = trunc i32 %4088 to i8
  %4090 = and i8 %4089, 1
  %4091 = xor i8 %4090, 1
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4091, i8* %4092, align 1
  %4093 = xor i32 %4082, %4075
  %4094 = xor i32 %4093, %4083
  %4095 = lshr i32 %4094, 4
  %4096 = trunc i32 %4095 to i8
  %4097 = and i8 %4096, 1
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4097, i8* %4098, align 1
  %4099 = icmp eq i32 %4083, 0
  %4100 = zext i1 %4099 to i8
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4100, i8* %4101, align 1
  %4102 = lshr i32 %4083, 31
  %4103 = trunc i32 %4102 to i8
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4103, i8* %4104, align 1
  %4105 = lshr i32 %4075, 31
  %4106 = lshr i32 %4082, 31
  %4107 = xor i32 %4106, %4105
  %4108 = xor i32 %4102, %4105
  %4109 = add i32 %4108, %4107
  %4110 = icmp eq i32 %4109, 2
  %4111 = zext i1 %4110 to i8
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4111, i8* %4112, align 1
  store %struct.Memory* %loadMem_400ed9, %struct.Memory** %MEMORY
  %loadMem_400edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 33
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4115 to i64*
  %4116 = load i64, i64* %PC.i150
  %4117 = add i64 %4116, 106
  %4118 = load i64, i64* %PC.i150
  %4119 = add i64 %4118, 6
  %4120 = load i64, i64* %PC.i150
  %4121 = add i64 %4120, 6
  store i64 %4121, i64* %PC.i150
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4123 = load i8, i8* %4122, align 1
  %4124 = icmp ne i8 %4123, 0
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4126 = load i8, i8* %4125, align 1
  %4127 = icmp ne i8 %4126, 0
  %4128 = xor i1 %4124, %4127
  %4129 = xor i1 %4128, true
  %4130 = zext i1 %4129 to i8
  store i8 %4130, i8* %BRANCH_TAKEN, align 1
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4132 = select i1 %4128, i64 %4119, i64 %4117
  store i64 %4132, i64* %4131, align 8
  store %struct.Memory* %loadMem_400edc, %struct.Memory** %MEMORY
  %loadBr_400edc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400edc = icmp eq i8 %loadBr_400edc, 1
  br i1 %cmpBr_400edc, label %block_.L_400f46, label %block_400ee2

block_400ee2:                                     ; preds = %block_.L_400ed6
  %loadMem_400ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 1
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 15
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %RBP.i149
  %4143 = sub i64 %4142, 24
  %4144 = load i64, i64* %PC.i147
  %4145 = add i64 %4144, 4
  store i64 %4145, i64* %PC.i147
  %4146 = inttoptr i64 %4143 to i64*
  %4147 = load i64, i64* %4146
  store i64 %4147, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_400ee2, %struct.Memory** %MEMORY
  %loadMem_400ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 33
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4150 to i64*
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 5
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %4153 to i64*
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 15
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %4156 to i64*
  %4157 = load i64, i64* %RBP.i146
  %4158 = sub i64 %4157, 52
  %4159 = load i64, i64* %PC.i144
  %4160 = add i64 %4159, 4
  store i64 %4160, i64* %PC.i144
  %4161 = inttoptr i64 %4158 to i32*
  %4162 = load i32, i32* %4161
  %4163 = sext i32 %4162 to i64
  store i64 %4163, i64* %RCX.i145, align 8
  store %struct.Memory* %loadMem_400ee6, %struct.Memory** %MEMORY
  %loadMem_400eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 33
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %4166 to i64*
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 5
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %4169 to i64*
  %4170 = load i64, i64* %RCX.i143
  %4171 = load i64, i64* %PC.i142
  %4172 = add i64 %4171, 7
  store i64 %4172, i64* %PC.i142
  %4173 = sext i64 %4170 to i128
  %4174 = and i128 %4173, -18446744073709551616
  %4175 = zext i64 %4170 to i128
  %4176 = or i128 %4174, %4175
  %4177 = mul i128 8000, %4176
  %4178 = trunc i128 %4177 to i64
  store i64 %4178, i64* %RCX.i143, align 8
  %4179 = sext i64 %4178 to i128
  %4180 = icmp ne i128 %4179, %4177
  %4181 = zext i1 %4180 to i8
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4181, i8* %4182, align 1
  %4183 = trunc i128 %4177 to i32
  %4184 = and i32 %4183, 255
  %4185 = call i32 @llvm.ctpop.i32(i32 %4184)
  %4186 = trunc i32 %4185 to i8
  %4187 = and i8 %4186, 1
  %4188 = xor i8 %4187, 1
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4188, i8* %4189, align 1
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4190, align 1
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4191, align 1
  %4192 = lshr i64 %4178, 63
  %4193 = trunc i64 %4192 to i8
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4193, i8* %4194, align 1
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4181, i8* %4195, align 1
  store %struct.Memory* %loadMem_400eea, %struct.Memory** %MEMORY
  %loadMem_400ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 33
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %4198 to i64*
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 1
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %4201 to i64*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 5
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %4204 to i64*
  %4205 = load i64, i64* %RAX.i140
  %4206 = load i64, i64* %RCX.i141
  %4207 = load i64, i64* %PC.i139
  %4208 = add i64 %4207, 3
  store i64 %4208, i64* %PC.i139
  %4209 = add i64 %4206, %4205
  store i64 %4209, i64* %RAX.i140, align 8
  %4210 = icmp ult i64 %4209, %4205
  %4211 = icmp ult i64 %4209, %4206
  %4212 = or i1 %4210, %4211
  %4213 = zext i1 %4212 to i8
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4213, i8* %4214, align 1
  %4215 = trunc i64 %4209 to i32
  %4216 = and i32 %4215, 255
  %4217 = call i32 @llvm.ctpop.i32(i32 %4216)
  %4218 = trunc i32 %4217 to i8
  %4219 = and i8 %4218, 1
  %4220 = xor i8 %4219, 1
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4220, i8* %4221, align 1
  %4222 = xor i64 %4206, %4205
  %4223 = xor i64 %4222, %4209
  %4224 = lshr i64 %4223, 4
  %4225 = trunc i64 %4224 to i8
  %4226 = and i8 %4225, 1
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4226, i8* %4227, align 1
  %4228 = icmp eq i64 %4209, 0
  %4229 = zext i1 %4228 to i8
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4229, i8* %4230, align 1
  %4231 = lshr i64 %4209, 63
  %4232 = trunc i64 %4231 to i8
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4232, i8* %4233, align 1
  %4234 = lshr i64 %4205, 63
  %4235 = lshr i64 %4206, 63
  %4236 = xor i64 %4231, %4234
  %4237 = xor i64 %4231, %4235
  %4238 = add i64 %4236, %4237
  %4239 = icmp eq i64 %4238, 2
  %4240 = zext i1 %4239 to i8
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4240, i8* %4241, align 1
  store %struct.Memory* %loadMem_400ef1, %struct.Memory** %MEMORY
  %loadMem_400ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 33
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %4244 to i64*
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 5
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 15
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %4250 to i64*
  %4251 = load i64, i64* %RBP.i138
  %4252 = sub i64 %4251, 60
  %4253 = load i64, i64* %PC.i136
  %4254 = add i64 %4253, 4
  store i64 %4254, i64* %PC.i136
  %4255 = inttoptr i64 %4252 to i32*
  %4256 = load i32, i32* %4255
  %4257 = sext i32 %4256 to i64
  store i64 %4257, i64* %RCX.i137, align 8
  store %struct.Memory* %loadMem_400ef4, %struct.Memory** %MEMORY
  %loadMem_400ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 33
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4260 to i64*
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4262 = getelementptr inbounds %struct.GPR, %struct.GPR* %4261, i32 0, i32 1
  %4263 = getelementptr inbounds %struct.Reg, %struct.Reg* %4262, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %4263 to i64*
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 5
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4267, i64 0, i64 0
  %YMM0.i135 = bitcast %union.VectorReg* %4268 to %"class.std::bitset"*
  %4269 = bitcast %"class.std::bitset"* %YMM0.i135 to i8*
  %4270 = load i64, i64* %RAX.i133
  %4271 = load i64, i64* %RCX.i134
  %4272 = mul i64 %4271, 8
  %4273 = add i64 %4272, %4270
  %4274 = load i64, i64* %PC.i132
  %4275 = add i64 %4274, 5
  store i64 %4275, i64* %PC.i132
  %4276 = inttoptr i64 %4273 to double*
  %4277 = load double, double* %4276
  %4278 = bitcast i8* %4269 to double*
  store double %4277, double* %4278, align 1
  %4279 = getelementptr inbounds i8, i8* %4269, i64 8
  %4280 = bitcast i8* %4279 to double*
  store double 0.000000e+00, double* %4280, align 1
  store %struct.Memory* %loadMem_400ef8, %struct.Memory** %MEMORY
  %loadMem_400efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 33
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %4283 to i64*
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 1
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %4286 to i64*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 15
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %4289 to i64*
  %4290 = load i64, i64* %RBP.i131
  %4291 = sub i64 %4290, 24
  %4292 = load i64, i64* %PC.i129
  %4293 = add i64 %4292, 4
  store i64 %4293, i64* %PC.i129
  %4294 = inttoptr i64 %4291 to i64*
  %4295 = load i64, i64* %4294
  store i64 %4295, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_400efd, %struct.Memory** %MEMORY
  %loadMem_400f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 33
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %4298 to i64*
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 5
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %4301 to i64*
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 15
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %4304 to i64*
  %4305 = load i64, i64* %RBP.i128
  %4306 = sub i64 %4305, 52
  %4307 = load i64, i64* %PC.i126
  %4308 = add i64 %4307, 4
  store i64 %4308, i64* %PC.i126
  %4309 = inttoptr i64 %4306 to i32*
  %4310 = load i32, i32* %4309
  %4311 = sext i32 %4310 to i64
  store i64 %4311, i64* %RCX.i127, align 8
  store %struct.Memory* %loadMem_400f01, %struct.Memory** %MEMORY
  %loadMem_400f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 33
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 5
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %4317 to i64*
  %4318 = load i64, i64* %RCX.i125
  %4319 = load i64, i64* %PC.i124
  %4320 = add i64 %4319, 7
  store i64 %4320, i64* %PC.i124
  %4321 = sext i64 %4318 to i128
  %4322 = and i128 %4321, -18446744073709551616
  %4323 = zext i64 %4318 to i128
  %4324 = or i128 %4322, %4323
  %4325 = mul i128 8000, %4324
  %4326 = trunc i128 %4325 to i64
  store i64 %4326, i64* %RCX.i125, align 8
  %4327 = sext i64 %4326 to i128
  %4328 = icmp ne i128 %4327, %4325
  %4329 = zext i1 %4328 to i8
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4329, i8* %4330, align 1
  %4331 = trunc i128 %4325 to i32
  %4332 = and i32 %4331, 255
  %4333 = call i32 @llvm.ctpop.i32(i32 %4332)
  %4334 = trunc i32 %4333 to i8
  %4335 = and i8 %4334, 1
  %4336 = xor i8 %4335, 1
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4336, i8* %4337, align 1
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4338, align 1
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4339, align 1
  %4340 = lshr i64 %4326, 63
  %4341 = trunc i64 %4340 to i8
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4341, i8* %4342, align 1
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4329, i8* %4343, align 1
  store %struct.Memory* %loadMem_400f05, %struct.Memory** %MEMORY
  %loadMem_400f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 33
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4346 to i64*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 1
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %4349 to i64*
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 5
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %4352 to i64*
  %4353 = load i64, i64* %RAX.i122
  %4354 = load i64, i64* %RCX.i123
  %4355 = load i64, i64* %PC.i121
  %4356 = add i64 %4355, 3
  store i64 %4356, i64* %PC.i121
  %4357 = add i64 %4354, %4353
  store i64 %4357, i64* %RAX.i122, align 8
  %4358 = icmp ult i64 %4357, %4353
  %4359 = icmp ult i64 %4357, %4354
  %4360 = or i1 %4358, %4359
  %4361 = zext i1 %4360 to i8
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4361, i8* %4362, align 1
  %4363 = trunc i64 %4357 to i32
  %4364 = and i32 %4363, 255
  %4365 = call i32 @llvm.ctpop.i32(i32 %4364)
  %4366 = trunc i32 %4365 to i8
  %4367 = and i8 %4366, 1
  %4368 = xor i8 %4367, 1
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4368, i8* %4369, align 1
  %4370 = xor i64 %4354, %4353
  %4371 = xor i64 %4370, %4357
  %4372 = lshr i64 %4371, 4
  %4373 = trunc i64 %4372 to i8
  %4374 = and i8 %4373, 1
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4374, i8* %4375, align 1
  %4376 = icmp eq i64 %4357, 0
  %4377 = zext i1 %4376 to i8
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4377, i8* %4378, align 1
  %4379 = lshr i64 %4357, 63
  %4380 = trunc i64 %4379 to i8
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4380, i8* %4381, align 1
  %4382 = lshr i64 %4353, 63
  %4383 = lshr i64 %4354, 63
  %4384 = xor i64 %4379, %4382
  %4385 = xor i64 %4379, %4383
  %4386 = add i64 %4384, %4385
  %4387 = icmp eq i64 %4386, 2
  %4388 = zext i1 %4387 to i8
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4388, i8* %4389, align 1
  store %struct.Memory* %loadMem_400f0c, %struct.Memory** %MEMORY
  %loadMem_400f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 33
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4392 to i64*
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 5
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %4395 to i64*
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 15
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %4398 to i64*
  %4399 = load i64, i64* %RBP.i120
  %4400 = sub i64 %4399, 64
  %4401 = load i64, i64* %PC.i118
  %4402 = add i64 %4401, 4
  store i64 %4402, i64* %PC.i118
  %4403 = inttoptr i64 %4400 to i32*
  %4404 = load i32, i32* %4403
  %4405 = sext i32 %4404 to i64
  store i64 %4405, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_400f0f, %struct.Memory** %MEMORY
  %loadMem_400f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 33
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4408 to i64*
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 1
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %4411 to i64*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 5
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %4414 to i64*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4416 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4415, i64 0, i64 0
  %YMM0.i117 = bitcast %union.VectorReg* %4416 to %"class.std::bitset"*
  %4417 = bitcast %"class.std::bitset"* %YMM0.i117 to i8*
  %4418 = bitcast %"class.std::bitset"* %YMM0.i117 to i8*
  %4419 = load i64, i64* %RAX.i115
  %4420 = load i64, i64* %RCX.i116
  %4421 = mul i64 %4420, 8
  %4422 = add i64 %4421, %4419
  %4423 = load i64, i64* %PC.i114
  %4424 = add i64 %4423, 5
  store i64 %4424, i64* %PC.i114
  %4425 = bitcast i8* %4418 to double*
  %4426 = load double, double* %4425, align 1
  %4427 = getelementptr inbounds i8, i8* %4418, i64 8
  %4428 = bitcast i8* %4427 to i64*
  %4429 = load i64, i64* %4428, align 1
  %4430 = inttoptr i64 %4422 to double*
  %4431 = load double, double* %4430
  %4432 = fmul double %4426, %4431
  %4433 = bitcast i8* %4417 to double*
  store double %4432, double* %4433, align 1
  %4434 = getelementptr inbounds i8, i8* %4417, i64 8
  %4435 = bitcast i8* %4434 to i64*
  store i64 %4429, i64* %4435, align 1
  store %struct.Memory* %loadMem_400f13, %struct.Memory** %MEMORY
  %loadMem_400f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 33
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4438 to i64*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 1
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 15
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %4444 to i64*
  %4445 = load i64, i64* %RBP.i113
  %4446 = sub i64 %4445, 32
  %4447 = load i64, i64* %PC.i111
  %4448 = add i64 %4447, 4
  store i64 %4448, i64* %PC.i111
  %4449 = inttoptr i64 %4446 to i64*
  %4450 = load i64, i64* %4449
  store i64 %4450, i64* %RAX.i112, align 8
  store %struct.Memory* %loadMem_400f18, %struct.Memory** %MEMORY
  %loadMem_400f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 33
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4453 to i64*
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 5
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %4456 to i64*
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 15
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %4459 to i64*
  %4460 = load i64, i64* %RBP.i110
  %4461 = sub i64 %4460, 60
  %4462 = load i64, i64* %PC.i108
  %4463 = add i64 %4462, 4
  store i64 %4463, i64* %PC.i108
  %4464 = inttoptr i64 %4461 to i32*
  %4465 = load i32, i32* %4464
  %4466 = sext i32 %4465 to i64
  store i64 %4466, i64* %RCX.i109, align 8
  store %struct.Memory* %loadMem_400f1c, %struct.Memory** %MEMORY
  %loadMem_400f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 33
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 5
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %4472 to i64*
  %4473 = load i64, i64* %RCX.i107
  %4474 = load i64, i64* %PC.i106
  %4475 = add i64 %4474, 7
  store i64 %4475, i64* %PC.i106
  %4476 = sext i64 %4473 to i128
  %4477 = and i128 %4476, -18446744073709551616
  %4478 = zext i64 %4473 to i128
  %4479 = or i128 %4477, %4478
  %4480 = mul i128 8000, %4479
  %4481 = trunc i128 %4480 to i64
  store i64 %4481, i64* %RCX.i107, align 8
  %4482 = sext i64 %4481 to i128
  %4483 = icmp ne i128 %4482, %4480
  %4484 = zext i1 %4483 to i8
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4484, i8* %4485, align 1
  %4486 = trunc i128 %4480 to i32
  %4487 = and i32 %4486, 255
  %4488 = call i32 @llvm.ctpop.i32(i32 %4487)
  %4489 = trunc i32 %4488 to i8
  %4490 = and i8 %4489, 1
  %4491 = xor i8 %4490, 1
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4491, i8* %4492, align 1
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4493, align 1
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4494, align 1
  %4495 = lshr i64 %4481, 63
  %4496 = trunc i64 %4495 to i8
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4496, i8* %4497, align 1
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4484, i8* %4498, align 1
  store %struct.Memory* %loadMem_400f20, %struct.Memory** %MEMORY
  %loadMem_400f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4500 = getelementptr inbounds %struct.GPR, %struct.GPR* %4499, i32 0, i32 33
  %4501 = getelementptr inbounds %struct.Reg, %struct.Reg* %4500, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4501 to i64*
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4503 = getelementptr inbounds %struct.GPR, %struct.GPR* %4502, i32 0, i32 1
  %4504 = getelementptr inbounds %struct.Reg, %struct.Reg* %4503, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %4504 to i64*
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 5
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %4507 to i64*
  %4508 = load i64, i64* %RAX.i104
  %4509 = load i64, i64* %RCX.i105
  %4510 = load i64, i64* %PC.i103
  %4511 = add i64 %4510, 3
  store i64 %4511, i64* %PC.i103
  %4512 = add i64 %4509, %4508
  store i64 %4512, i64* %RAX.i104, align 8
  %4513 = icmp ult i64 %4512, %4508
  %4514 = icmp ult i64 %4512, %4509
  %4515 = or i1 %4513, %4514
  %4516 = zext i1 %4515 to i8
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4516, i8* %4517, align 1
  %4518 = trunc i64 %4512 to i32
  %4519 = and i32 %4518, 255
  %4520 = call i32 @llvm.ctpop.i32(i32 %4519)
  %4521 = trunc i32 %4520 to i8
  %4522 = and i8 %4521, 1
  %4523 = xor i8 %4522, 1
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4523, i8* %4524, align 1
  %4525 = xor i64 %4509, %4508
  %4526 = xor i64 %4525, %4512
  %4527 = lshr i64 %4526, 4
  %4528 = trunc i64 %4527 to i8
  %4529 = and i8 %4528, 1
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4529, i8* %4530, align 1
  %4531 = icmp eq i64 %4512, 0
  %4532 = zext i1 %4531 to i8
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4532, i8* %4533, align 1
  %4534 = lshr i64 %4512, 63
  %4535 = trunc i64 %4534 to i8
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4535, i8* %4536, align 1
  %4537 = lshr i64 %4508, 63
  %4538 = lshr i64 %4509, 63
  %4539 = xor i64 %4534, %4537
  %4540 = xor i64 %4534, %4538
  %4541 = add i64 %4539, %4540
  %4542 = icmp eq i64 %4541, 2
  %4543 = zext i1 %4542 to i8
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4543, i8* %4544, align 1
  store %struct.Memory* %loadMem_400f27, %struct.Memory** %MEMORY
  %loadMem_400f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4546 = getelementptr inbounds %struct.GPR, %struct.GPR* %4545, i32 0, i32 33
  %4547 = getelementptr inbounds %struct.Reg, %struct.Reg* %4546, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4547 to i64*
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 5
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %4550 to i64*
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 15
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %4553 to i64*
  %4554 = load i64, i64* %RBP.i102
  %4555 = sub i64 %4554, 64
  %4556 = load i64, i64* %PC.i100
  %4557 = add i64 %4556, 4
  store i64 %4557, i64* %PC.i100
  %4558 = inttoptr i64 %4555 to i32*
  %4559 = load i32, i32* %4558
  %4560 = sext i32 %4559 to i64
  store i64 %4560, i64* %RCX.i101, align 8
  store %struct.Memory* %loadMem_400f2a, %struct.Memory** %MEMORY
  %loadMem_400f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4562 = getelementptr inbounds %struct.GPR, %struct.GPR* %4561, i32 0, i32 33
  %4563 = getelementptr inbounds %struct.Reg, %struct.Reg* %4562, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4563 to i64*
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 1
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %4566 to i64*
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 5
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %4569 to i64*
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4570, i64 0, i64 0
  %YMM0.i99 = bitcast %union.VectorReg* %4571 to %"class.std::bitset"*
  %4572 = bitcast %"class.std::bitset"* %YMM0.i99 to i8*
  %4573 = bitcast %"class.std::bitset"* %YMM0.i99 to i8*
  %4574 = load i64, i64* %RAX.i97
  %4575 = load i64, i64* %RCX.i98
  %4576 = mul i64 %4575, 8
  %4577 = add i64 %4576, %4574
  %4578 = load i64, i64* %PC.i96
  %4579 = add i64 %4578, 5
  store i64 %4579, i64* %PC.i96
  %4580 = bitcast i8* %4573 to double*
  %4581 = load double, double* %4580, align 1
  %4582 = getelementptr inbounds i8, i8* %4573, i64 8
  %4583 = bitcast i8* %4582 to i64*
  %4584 = load i64, i64* %4583, align 1
  %4585 = inttoptr i64 %4577 to double*
  %4586 = load double, double* %4585
  %4587 = fadd double %4581, %4586
  %4588 = bitcast i8* %4572 to double*
  store double %4587, double* %4588, align 1
  %4589 = getelementptr inbounds i8, i8* %4572, i64 8
  %4590 = bitcast i8* %4589 to i64*
  store i64 %4584, i64* %4590, align 1
  store %struct.Memory* %loadMem_400f2e, %struct.Memory** %MEMORY
  %loadMem_400f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 33
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4593 to i64*
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 1
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %4596 to i64*
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4598 = getelementptr inbounds %struct.GPR, %struct.GPR* %4597, i32 0, i32 5
  %4599 = getelementptr inbounds %struct.Reg, %struct.Reg* %4598, i32 0, i32 0
  %RCX.i94 = bitcast %union.anon* %4599 to i64*
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4601 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4600, i64 0, i64 0
  %XMM0.i95 = bitcast %union.VectorReg* %4601 to %union.vec128_t*
  %4602 = load i64, i64* %RAX.i93
  %4603 = load i64, i64* %RCX.i94
  %4604 = mul i64 %4603, 8
  %4605 = add i64 %4604, %4602
  %4606 = bitcast %union.vec128_t* %XMM0.i95 to i8*
  %4607 = load i64, i64* %PC.i92
  %4608 = add i64 %4607, 5
  store i64 %4608, i64* %PC.i92
  %4609 = bitcast i8* %4606 to double*
  %4610 = load double, double* %4609, align 1
  %4611 = inttoptr i64 %4605 to double*
  store double %4610, double* %4611
  store %struct.Memory* %loadMem_400f33, %struct.Memory** %MEMORY
  %loadMem_400f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4613 = getelementptr inbounds %struct.GPR, %struct.GPR* %4612, i32 0, i32 33
  %4614 = getelementptr inbounds %struct.Reg, %struct.Reg* %4613, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4614 to i64*
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 1
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %4617 to i64*
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 15
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %4620 to i64*
  %4621 = load i64, i64* %RBP.i91
  %4622 = sub i64 %4621, 52
  %4623 = load i64, i64* %PC.i89
  %4624 = add i64 %4623, 3
  store i64 %4624, i64* %PC.i89
  %4625 = inttoptr i64 %4622 to i32*
  %4626 = load i32, i32* %4625
  %4627 = zext i32 %4626 to i64
  store i64 %4627, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_400f38, %struct.Memory** %MEMORY
  %loadMem_400f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 33
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4630 to i64*
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 1
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %4633 to i64*
  %4634 = load i64, i64* %RAX.i88
  %4635 = load i64, i64* %PC.i87
  %4636 = add i64 %4635, 3
  store i64 %4636, i64* %PC.i87
  %4637 = trunc i64 %4634 to i32
  %4638 = add i32 1, %4637
  %4639 = zext i32 %4638 to i64
  store i64 %4639, i64* %RAX.i88, align 8
  %4640 = icmp ult i32 %4638, %4637
  %4641 = icmp ult i32 %4638, 1
  %4642 = or i1 %4640, %4641
  %4643 = zext i1 %4642 to i8
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4643, i8* %4644, align 1
  %4645 = and i32 %4638, 255
  %4646 = call i32 @llvm.ctpop.i32(i32 %4645)
  %4647 = trunc i32 %4646 to i8
  %4648 = and i8 %4647, 1
  %4649 = xor i8 %4648, 1
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4649, i8* %4650, align 1
  %4651 = xor i64 1, %4634
  %4652 = trunc i64 %4651 to i32
  %4653 = xor i32 %4652, %4638
  %4654 = lshr i32 %4653, 4
  %4655 = trunc i32 %4654 to i8
  %4656 = and i8 %4655, 1
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4656, i8* %4657, align 1
  %4658 = icmp eq i32 %4638, 0
  %4659 = zext i1 %4658 to i8
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4659, i8* %4660, align 1
  %4661 = lshr i32 %4638, 31
  %4662 = trunc i32 %4661 to i8
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4662, i8* %4663, align 1
  %4664 = lshr i32 %4637, 31
  %4665 = xor i32 %4661, %4664
  %4666 = add i32 %4665, %4661
  %4667 = icmp eq i32 %4666, 2
  %4668 = zext i1 %4667 to i8
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4668, i8* %4669, align 1
  store %struct.Memory* %loadMem_400f3b, %struct.Memory** %MEMORY
  %loadMem_400f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 33
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4672 to i64*
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 1
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %EAX.i85 = bitcast %union.anon* %4675 to i32*
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 15
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %4678 to i64*
  %4679 = load i64, i64* %RBP.i86
  %4680 = sub i64 %4679, 52
  %4681 = load i32, i32* %EAX.i85
  %4682 = zext i32 %4681 to i64
  %4683 = load i64, i64* %PC.i84
  %4684 = add i64 %4683, 3
  store i64 %4684, i64* %PC.i84
  %4685 = inttoptr i64 %4680 to i32*
  store i32 %4681, i32* %4685
  store %struct.Memory* %loadMem_400f3e, %struct.Memory** %MEMORY
  %loadMem_400f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 33
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4688 to i64*
  %4689 = load i64, i64* %PC.i83
  %4690 = add i64 %4689, -107
  %4691 = load i64, i64* %PC.i83
  %4692 = add i64 %4691, 5
  store i64 %4692, i64* %PC.i83
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4690, i64* %4693, align 8
  store %struct.Memory* %loadMem_400f41, %struct.Memory** %MEMORY
  br label %block_.L_400ed6

block_.L_400f46:                                  ; preds = %block_.L_400ed6
  %loadMem_400f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4695 = getelementptr inbounds %struct.GPR, %struct.GPR* %4694, i32 0, i32 33
  %4696 = getelementptr inbounds %struct.Reg, %struct.Reg* %4695, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4696 to i64*
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4698 = getelementptr inbounds %struct.GPR, %struct.GPR* %4697, i32 0, i32 1
  %4699 = getelementptr inbounds %struct.Reg, %struct.Reg* %4698, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %4699 to i64*
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4701 = getelementptr inbounds %struct.GPR, %struct.GPR* %4700, i32 0, i32 15
  %4702 = getelementptr inbounds %struct.Reg, %struct.Reg* %4701, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %4702 to i64*
  %4703 = load i64, i64* %RBP.i82
  %4704 = sub i64 %4703, 32
  %4705 = load i64, i64* %PC.i80
  %4706 = add i64 %4705, 4
  store i64 %4706, i64* %PC.i80
  %4707 = inttoptr i64 %4704 to i64*
  %4708 = load i64, i64* %4707
  store i64 %4708, i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_400f46, %struct.Memory** %MEMORY
  %loadMem_400f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 33
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4711 to i64*
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 5
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %4714 to i64*
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 15
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %4717 to i64*
  %4718 = load i64, i64* %RBP.i79
  %4719 = sub i64 %4718, 60
  %4720 = load i64, i64* %PC.i77
  %4721 = add i64 %4720, 4
  store i64 %4721, i64* %PC.i77
  %4722 = inttoptr i64 %4719 to i32*
  %4723 = load i32, i32* %4722
  %4724 = sext i32 %4723 to i64
  store i64 %4724, i64* %RCX.i78, align 8
  store %struct.Memory* %loadMem_400f4a, %struct.Memory** %MEMORY
  %loadMem_400f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 33
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 5
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %4730 to i64*
  %4731 = load i64, i64* %RCX.i76
  %4732 = load i64, i64* %PC.i75
  %4733 = add i64 %4732, 7
  store i64 %4733, i64* %PC.i75
  %4734 = sext i64 %4731 to i128
  %4735 = and i128 %4734, -18446744073709551616
  %4736 = zext i64 %4731 to i128
  %4737 = or i128 %4735, %4736
  %4738 = mul i128 8000, %4737
  %4739 = trunc i128 %4738 to i64
  store i64 %4739, i64* %RCX.i76, align 8
  %4740 = sext i64 %4739 to i128
  %4741 = icmp ne i128 %4740, %4738
  %4742 = zext i1 %4741 to i8
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4742, i8* %4743, align 1
  %4744 = trunc i128 %4738 to i32
  %4745 = and i32 %4744, 255
  %4746 = call i32 @llvm.ctpop.i32(i32 %4745)
  %4747 = trunc i32 %4746 to i8
  %4748 = and i8 %4747, 1
  %4749 = xor i8 %4748, 1
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4749, i8* %4750, align 1
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4751, align 1
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4752, align 1
  %4753 = lshr i64 %4739, 63
  %4754 = trunc i64 %4753 to i8
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4754, i8* %4755, align 1
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4742, i8* %4756, align 1
  store %struct.Memory* %loadMem_400f4e, %struct.Memory** %MEMORY
  %loadMem_400f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 33
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4759 to i64*
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 1
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %4762 to i64*
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 5
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %4765 to i64*
  %4766 = load i64, i64* %RAX.i73
  %4767 = load i64, i64* %RCX.i74
  %4768 = load i64, i64* %PC.i72
  %4769 = add i64 %4768, 3
  store i64 %4769, i64* %PC.i72
  %4770 = add i64 %4767, %4766
  store i64 %4770, i64* %RAX.i73, align 8
  %4771 = icmp ult i64 %4770, %4766
  %4772 = icmp ult i64 %4770, %4767
  %4773 = or i1 %4771, %4772
  %4774 = zext i1 %4773 to i8
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4774, i8* %4775, align 1
  %4776 = trunc i64 %4770 to i32
  %4777 = and i32 %4776, 255
  %4778 = call i32 @llvm.ctpop.i32(i32 %4777)
  %4779 = trunc i32 %4778 to i8
  %4780 = and i8 %4779, 1
  %4781 = xor i8 %4780, 1
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4781, i8* %4782, align 1
  %4783 = xor i64 %4767, %4766
  %4784 = xor i64 %4783, %4770
  %4785 = lshr i64 %4784, 4
  %4786 = trunc i64 %4785 to i8
  %4787 = and i8 %4786, 1
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4787, i8* %4788, align 1
  %4789 = icmp eq i64 %4770, 0
  %4790 = zext i1 %4789 to i8
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4790, i8* %4791, align 1
  %4792 = lshr i64 %4770, 63
  %4793 = trunc i64 %4792 to i8
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4793, i8* %4794, align 1
  %4795 = lshr i64 %4766, 63
  %4796 = lshr i64 %4767, 63
  %4797 = xor i64 %4792, %4795
  %4798 = xor i64 %4792, %4796
  %4799 = add i64 %4797, %4798
  %4800 = icmp eq i64 %4799, 2
  %4801 = zext i1 %4800 to i8
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4801, i8* %4802, align 1
  store %struct.Memory* %loadMem_400f55, %struct.Memory** %MEMORY
  %loadMem_400f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 33
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4805 to i64*
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 5
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 15
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %RBP.i71
  %4813 = sub i64 %4812, 64
  %4814 = load i64, i64* %PC.i69
  %4815 = add i64 %4814, 4
  store i64 %4815, i64* %PC.i69
  %4816 = inttoptr i64 %4813 to i32*
  %4817 = load i32, i32* %4816
  %4818 = sext i32 %4817 to i64
  store i64 %4818, i64* %RCX.i70, align 8
  store %struct.Memory* %loadMem_400f58, %struct.Memory** %MEMORY
  %loadMem_400f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4820 = getelementptr inbounds %struct.GPR, %struct.GPR* %4819, i32 0, i32 33
  %4821 = getelementptr inbounds %struct.Reg, %struct.Reg* %4820, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4821 to i64*
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 1
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 5
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %4827 to i64*
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4829 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4828, i64 0, i64 0
  %YMM0.i68 = bitcast %union.VectorReg* %4829 to %"class.std::bitset"*
  %4830 = bitcast %"class.std::bitset"* %YMM0.i68 to i8*
  %4831 = load i64, i64* %RAX.i66
  %4832 = load i64, i64* %RCX.i67
  %4833 = mul i64 %4832, 8
  %4834 = add i64 %4833, %4831
  %4835 = load i64, i64* %PC.i65
  %4836 = add i64 %4835, 5
  store i64 %4836, i64* %PC.i65
  %4837 = inttoptr i64 %4834 to double*
  %4838 = load double, double* %4837
  %4839 = bitcast i8* %4830 to double*
  store double %4838, double* %4839, align 1
  %4840 = getelementptr inbounds i8, i8* %4830, i64 8
  %4841 = bitcast i8* %4840 to double*
  store double 0.000000e+00, double* %4841, align 1
  store %struct.Memory* %loadMem_400f5c, %struct.Memory** %MEMORY
  %loadMem_400f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 1
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 15
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %4850 to i64*
  %4851 = load i64, i64* %RBP.i64
  %4852 = sub i64 %4851, 32
  %4853 = load i64, i64* %PC.i62
  %4854 = add i64 %4853, 4
  store i64 %4854, i64* %PC.i62
  %4855 = inttoptr i64 %4852 to i64*
  %4856 = load i64, i64* %4855
  store i64 %4856, i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_400f61, %struct.Memory** %MEMORY
  %loadMem_400f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4858 = getelementptr inbounds %struct.GPR, %struct.GPR* %4857, i32 0, i32 33
  %4859 = getelementptr inbounds %struct.Reg, %struct.Reg* %4858, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4859 to i64*
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4861 = getelementptr inbounds %struct.GPR, %struct.GPR* %4860, i32 0, i32 5
  %4862 = getelementptr inbounds %struct.Reg, %struct.Reg* %4861, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %4862 to i64*
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 15
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %4865 to i64*
  %4866 = load i64, i64* %RBP.i61
  %4867 = sub i64 %4866, 64
  %4868 = load i64, i64* %PC.i59
  %4869 = add i64 %4868, 4
  store i64 %4869, i64* %PC.i59
  %4870 = inttoptr i64 %4867 to i32*
  %4871 = load i32, i32* %4870
  %4872 = sext i32 %4871 to i64
  store i64 %4872, i64* %RCX.i60, align 8
  store %struct.Memory* %loadMem_400f65, %struct.Memory** %MEMORY
  %loadMem_400f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 33
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4875 to i64*
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 5
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %4878 to i64*
  %4879 = load i64, i64* %RCX.i58
  %4880 = load i64, i64* %PC.i57
  %4881 = add i64 %4880, 7
  store i64 %4881, i64* %PC.i57
  %4882 = sext i64 %4879 to i128
  %4883 = and i128 %4882, -18446744073709551616
  %4884 = zext i64 %4879 to i128
  %4885 = or i128 %4883, %4884
  %4886 = mul i128 8000, %4885
  %4887 = trunc i128 %4886 to i64
  store i64 %4887, i64* %RCX.i58, align 8
  %4888 = sext i64 %4887 to i128
  %4889 = icmp ne i128 %4888, %4886
  %4890 = zext i1 %4889 to i8
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4890, i8* %4891, align 1
  %4892 = trunc i128 %4886 to i32
  %4893 = and i32 %4892, 255
  %4894 = call i32 @llvm.ctpop.i32(i32 %4893)
  %4895 = trunc i32 %4894 to i8
  %4896 = and i8 %4895, 1
  %4897 = xor i8 %4896, 1
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4897, i8* %4898, align 1
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4899, align 1
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4900, align 1
  %4901 = lshr i64 %4887, 63
  %4902 = trunc i64 %4901 to i8
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4902, i8* %4903, align 1
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4890, i8* %4904, align 1
  store %struct.Memory* %loadMem_400f69, %struct.Memory** %MEMORY
  %loadMem_400f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4906 = getelementptr inbounds %struct.GPR, %struct.GPR* %4905, i32 0, i32 33
  %4907 = getelementptr inbounds %struct.Reg, %struct.Reg* %4906, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4907 to i64*
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 1
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %4910 to i64*
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 5
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %4913 to i64*
  %4914 = load i64, i64* %RAX.i55
  %4915 = load i64, i64* %RCX.i56
  %4916 = load i64, i64* %PC.i54
  %4917 = add i64 %4916, 3
  store i64 %4917, i64* %PC.i54
  %4918 = add i64 %4915, %4914
  store i64 %4918, i64* %RAX.i55, align 8
  %4919 = icmp ult i64 %4918, %4914
  %4920 = icmp ult i64 %4918, %4915
  %4921 = or i1 %4919, %4920
  %4922 = zext i1 %4921 to i8
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4922, i8* %4923, align 1
  %4924 = trunc i64 %4918 to i32
  %4925 = and i32 %4924, 255
  %4926 = call i32 @llvm.ctpop.i32(i32 %4925)
  %4927 = trunc i32 %4926 to i8
  %4928 = and i8 %4927, 1
  %4929 = xor i8 %4928, 1
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4929, i8* %4930, align 1
  %4931 = xor i64 %4915, %4914
  %4932 = xor i64 %4931, %4918
  %4933 = lshr i64 %4932, 4
  %4934 = trunc i64 %4933 to i8
  %4935 = and i8 %4934, 1
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4935, i8* %4936, align 1
  %4937 = icmp eq i64 %4918, 0
  %4938 = zext i1 %4937 to i8
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4938, i8* %4939, align 1
  %4940 = lshr i64 %4918, 63
  %4941 = trunc i64 %4940 to i8
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4941, i8* %4942, align 1
  %4943 = lshr i64 %4914, 63
  %4944 = lshr i64 %4915, 63
  %4945 = xor i64 %4940, %4943
  %4946 = xor i64 %4940, %4944
  %4947 = add i64 %4945, %4946
  %4948 = icmp eq i64 %4947, 2
  %4949 = zext i1 %4948 to i8
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4949, i8* %4950, align 1
  store %struct.Memory* %loadMem_400f70, %struct.Memory** %MEMORY
  %loadMem_400f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 33
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4953 to i64*
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 5
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %4956 to i64*
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 15
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %4959 to i64*
  %4960 = load i64, i64* %RBP.i53
  %4961 = sub i64 %4960, 60
  %4962 = load i64, i64* %PC.i51
  %4963 = add i64 %4962, 4
  store i64 %4963, i64* %PC.i51
  %4964 = inttoptr i64 %4961 to i32*
  %4965 = load i32, i32* %4964
  %4966 = sext i32 %4965 to i64
  store i64 %4966, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_400f73, %struct.Memory** %MEMORY
  %loadMem_400f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4968 = getelementptr inbounds %struct.GPR, %struct.GPR* %4967, i32 0, i32 33
  %4969 = getelementptr inbounds %struct.Reg, %struct.Reg* %4968, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4969 to i64*
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4971 = getelementptr inbounds %struct.GPR, %struct.GPR* %4970, i32 0, i32 1
  %4972 = getelementptr inbounds %struct.Reg, %struct.Reg* %4971, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %4972 to i64*
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4974 = getelementptr inbounds %struct.GPR, %struct.GPR* %4973, i32 0, i32 5
  %4975 = getelementptr inbounds %struct.Reg, %struct.Reg* %4974, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %4975 to i64*
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4977 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4976, i64 0, i64 0
  %XMM0.i50 = bitcast %union.VectorReg* %4977 to %union.vec128_t*
  %4978 = load i64, i64* %RAX.i48
  %4979 = load i64, i64* %RCX.i49
  %4980 = mul i64 %4979, 8
  %4981 = add i64 %4980, %4978
  %4982 = bitcast %union.vec128_t* %XMM0.i50 to i8*
  %4983 = load i64, i64* %PC.i47
  %4984 = add i64 %4983, 5
  store i64 %4984, i64* %PC.i47
  %4985 = bitcast i8* %4982 to double*
  %4986 = load double, double* %4985, align 1
  %4987 = inttoptr i64 %4981 to double*
  store double %4986, double* %4987
  store %struct.Memory* %loadMem_400f77, %struct.Memory** %MEMORY
  %loadMem_400f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 33
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4990 to i64*
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 1
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %4993 to i64*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 15
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %4996 to i64*
  %4997 = load i64, i64* %RBP.i46
  %4998 = sub i64 %4997, 64
  %4999 = load i64, i64* %PC.i44
  %5000 = add i64 %4999, 3
  store i64 %5000, i64* %PC.i44
  %5001 = inttoptr i64 %4998 to i32*
  %5002 = load i32, i32* %5001
  %5003 = zext i32 %5002 to i64
  store i64 %5003, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_400f7c, %struct.Memory** %MEMORY
  %loadMem_400f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 33
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5006 to i64*
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 1
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %5009 to i64*
  %5010 = load i64, i64* %RAX.i43
  %5011 = load i64, i64* %PC.i42
  %5012 = add i64 %5011, 3
  store i64 %5012, i64* %PC.i42
  %5013 = trunc i64 %5010 to i32
  %5014 = add i32 1, %5013
  %5015 = zext i32 %5014 to i64
  store i64 %5015, i64* %RAX.i43, align 8
  %5016 = icmp ult i32 %5014, %5013
  %5017 = icmp ult i32 %5014, 1
  %5018 = or i1 %5016, %5017
  %5019 = zext i1 %5018 to i8
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5019, i8* %5020, align 1
  %5021 = and i32 %5014, 255
  %5022 = call i32 @llvm.ctpop.i32(i32 %5021)
  %5023 = trunc i32 %5022 to i8
  %5024 = and i8 %5023, 1
  %5025 = xor i8 %5024, 1
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5025, i8* %5026, align 1
  %5027 = xor i64 1, %5010
  %5028 = trunc i64 %5027 to i32
  %5029 = xor i32 %5028, %5014
  %5030 = lshr i32 %5029, 4
  %5031 = trunc i32 %5030 to i8
  %5032 = and i8 %5031, 1
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5032, i8* %5033, align 1
  %5034 = icmp eq i32 %5014, 0
  %5035 = zext i1 %5034 to i8
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5035, i8* %5036, align 1
  %5037 = lshr i32 %5014, 31
  %5038 = trunc i32 %5037 to i8
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5038, i8* %5039, align 1
  %5040 = lshr i32 %5013, 31
  %5041 = xor i32 %5037, %5040
  %5042 = add i32 %5041, %5037
  %5043 = icmp eq i32 %5042, 2
  %5044 = zext i1 %5043 to i8
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5044, i8* %5045, align 1
  store %struct.Memory* %loadMem_400f7f, %struct.Memory** %MEMORY
  %loadMem_400f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 33
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5048 to i64*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 1
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %EAX.i40 = bitcast %union.anon* %5051 to i32*
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 15
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %5054 to i64*
  %5055 = load i64, i64* %RBP.i41
  %5056 = sub i64 %5055, 64
  %5057 = load i32, i32* %EAX.i40
  %5058 = zext i32 %5057 to i64
  %5059 = load i64, i64* %PC.i39
  %5060 = add i64 %5059, 3
  store i64 %5060, i64* %PC.i39
  %5061 = inttoptr i64 %5056 to i32*
  store i32 %5057, i32* %5061
  store %struct.Memory* %loadMem_400f82, %struct.Memory** %MEMORY
  %loadMem_400f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5063 = getelementptr inbounds %struct.GPR, %struct.GPR* %5062, i32 0, i32 33
  %5064 = getelementptr inbounds %struct.Reg, %struct.Reg* %5063, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %5064 to i64*
  %5065 = load i64, i64* %PC.i38
  %5066 = add i64 %5065, -224
  %5067 = load i64, i64* %PC.i38
  %5068 = add i64 %5067, 5
  store i64 %5068, i64* %PC.i38
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5066, i64* %5069, align 8
  store %struct.Memory* %loadMem_400f85, %struct.Memory** %MEMORY
  br label %block_.L_400ea5

block_.L_400f8a:                                  ; preds = %block_.L_400ea5
  %loadMem_400f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 33
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5072 to i64*
  %5073 = load i64, i64* %PC.i37
  %5074 = add i64 %5073, 5
  %5075 = load i64, i64* %PC.i37
  %5076 = add i64 %5075, 5
  store i64 %5076, i64* %PC.i37
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5074, i64* %5077, align 8
  store %struct.Memory* %loadMem_400f8a, %struct.Memory** %MEMORY
  br label %block_.L_400f8f

block_.L_400f8f:                                  ; preds = %block_.L_400f8a
  %loadMem_400f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5079 = getelementptr inbounds %struct.GPR, %struct.GPR* %5078, i32 0, i32 33
  %5080 = getelementptr inbounds %struct.Reg, %struct.Reg* %5079, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5080 to i64*
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5082 = getelementptr inbounds %struct.GPR, %struct.GPR* %5081, i32 0, i32 1
  %5083 = getelementptr inbounds %struct.Reg, %struct.Reg* %5082, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %5083 to i64*
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 15
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %5086 to i64*
  %5087 = load i64, i64* %RBP.i36
  %5088 = sub i64 %5087, 60
  %5089 = load i64, i64* %PC.i34
  %5090 = add i64 %5089, 3
  store i64 %5090, i64* %PC.i34
  %5091 = inttoptr i64 %5088 to i32*
  %5092 = load i32, i32* %5091
  %5093 = zext i32 %5092 to i64
  store i64 %5093, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_400f8f, %struct.Memory** %MEMORY
  %loadMem_400f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5095 = getelementptr inbounds %struct.GPR, %struct.GPR* %5094, i32 0, i32 33
  %5096 = getelementptr inbounds %struct.Reg, %struct.Reg* %5095, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5096 to i64*
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5098 = getelementptr inbounds %struct.GPR, %struct.GPR* %5097, i32 0, i32 1
  %5099 = getelementptr inbounds %struct.Reg, %struct.Reg* %5098, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %5099 to i64*
  %5100 = load i64, i64* %RAX.i33
  %5101 = load i64, i64* %PC.i32
  %5102 = add i64 %5101, 3
  store i64 %5102, i64* %PC.i32
  %5103 = trunc i64 %5100 to i32
  %5104 = add i32 1, %5103
  %5105 = zext i32 %5104 to i64
  store i64 %5105, i64* %RAX.i33, align 8
  %5106 = icmp ult i32 %5104, %5103
  %5107 = icmp ult i32 %5104, 1
  %5108 = or i1 %5106, %5107
  %5109 = zext i1 %5108 to i8
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5109, i8* %5110, align 1
  %5111 = and i32 %5104, 255
  %5112 = call i32 @llvm.ctpop.i32(i32 %5111)
  %5113 = trunc i32 %5112 to i8
  %5114 = and i8 %5113, 1
  %5115 = xor i8 %5114, 1
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5115, i8* %5116, align 1
  %5117 = xor i64 1, %5100
  %5118 = trunc i64 %5117 to i32
  %5119 = xor i32 %5118, %5104
  %5120 = lshr i32 %5119, 4
  %5121 = trunc i32 %5120 to i8
  %5122 = and i8 %5121, 1
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5122, i8* %5123, align 1
  %5124 = icmp eq i32 %5104, 0
  %5125 = zext i1 %5124 to i8
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5125, i8* %5126, align 1
  %5127 = lshr i32 %5104, 31
  %5128 = trunc i32 %5127 to i8
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5128, i8* %5129, align 1
  %5130 = lshr i32 %5103, 31
  %5131 = xor i32 %5127, %5130
  %5132 = add i32 %5131, %5127
  %5133 = icmp eq i32 %5132, 2
  %5134 = zext i1 %5133 to i8
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5134, i8* %5135, align 1
  store %struct.Memory* %loadMem_400f92, %struct.Memory** %MEMORY
  %loadMem_400f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 33
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5138 to i64*
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 1
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5141 to i32*
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 15
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %5144 to i64*
  %5145 = load i64, i64* %RBP.i31
  %5146 = sub i64 %5145, 60
  %5147 = load i32, i32* %EAX.i
  %5148 = zext i32 %5147 to i64
  %5149 = load i64, i64* %PC.i30
  %5150 = add i64 %5149, 3
  store i64 %5150, i64* %PC.i30
  %5151 = inttoptr i64 %5146 to i32*
  store i32 %5147, i32* %5151
  store %struct.Memory* %loadMem_400f95, %struct.Memory** %MEMORY
  %loadMem_400f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5153 = getelementptr inbounds %struct.GPR, %struct.GPR* %5152, i32 0, i32 33
  %5154 = getelementptr inbounds %struct.Reg, %struct.Reg* %5153, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5154 to i64*
  %5155 = load i64, i64* %PC.i29
  %5156 = add i64 %5155, -304
  %5157 = load i64, i64* %PC.i29
  %5158 = add i64 %5157, 5
  store i64 %5158, i64* %PC.i29
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5156, i64* %5159, align 8
  store %struct.Memory* %loadMem_400f98, %struct.Memory** %MEMORY
  br label %block_.L_400e68

block_.L_400f9d:                                  ; preds = %block_.L_400e68
  %loadMem_400f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 33
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5162 to i64*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5164 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5163, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5164 to %"class.std::bitset"*
  %5165 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5166 = load i64, i64* %PC.i28
  %5167 = load i64, i64* %PC.i28
  %5168 = add i64 %5167, 8
  store i64 %5168, i64* %PC.i28
  %5169 = load double, double* bitcast (%G_0x47b__rip__4198309__type* @G_0x47b__rip__4198309_ to double*)
  %5170 = bitcast i8* %5165 to double*
  store double %5169, double* %5170, align 1
  %5171 = getelementptr inbounds i8, i8* %5165, i64 8
  %5172 = bitcast i8* %5171 to double*
  store double 0.000000e+00, double* %5172, align 1
  store %struct.Memory* %loadMem_400f9d, %struct.Memory** %MEMORY
  %loadMem_400fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 33
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5175 to i64*
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 1
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %5178 to i64*
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5180 = getelementptr inbounds %struct.GPR, %struct.GPR* %5179, i32 0, i32 15
  %5181 = getelementptr inbounds %struct.Reg, %struct.Reg* %5180, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %5181 to i64*
  %5182 = load i64, i64* %RBP.i27
  %5183 = sub i64 %5182, 32
  %5184 = load i64, i64* %PC.i25
  %5185 = add i64 %5184, 4
  store i64 %5185, i64* %PC.i25
  %5186 = inttoptr i64 %5183 to i64*
  %5187 = load i64, i64* %5186
  store i64 %5187, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_400fa5, %struct.Memory** %MEMORY
  %loadMem_400fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 33
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5190 to i64*
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 5
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %5193 to i64*
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 15
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %5196 to i64*
  %5197 = load i64, i64* %RBP.i24
  %5198 = sub i64 %5197, 4
  %5199 = load i64, i64* %PC.i22
  %5200 = add i64 %5199, 3
  store i64 %5200, i64* %PC.i22
  %5201 = inttoptr i64 %5198 to i32*
  %5202 = load i32, i32* %5201
  %5203 = zext i32 %5202 to i64
  store i64 %5203, i64* %RCX.i23, align 8
  store %struct.Memory* %loadMem_400fa9, %struct.Memory** %MEMORY
  %loadMem_400fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 33
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5206 to i64*
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 5
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %RCX.i21 = bitcast %union.anon* %5209 to i64*
  %5210 = load i64, i64* %RCX.i21
  %5211 = load i64, i64* %PC.i20
  %5212 = add i64 %5211, 3
  store i64 %5212, i64* %PC.i20
  %5213 = trunc i64 %5210 to i32
  %5214 = sub i32 %5213, 1
  %5215 = zext i32 %5214 to i64
  store i64 %5215, i64* %RCX.i21, align 8
  %5216 = icmp ult i32 %5213, 1
  %5217 = zext i1 %5216 to i8
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5217, i8* %5218, align 1
  %5219 = and i32 %5214, 255
  %5220 = call i32 @llvm.ctpop.i32(i32 %5219)
  %5221 = trunc i32 %5220 to i8
  %5222 = and i8 %5221, 1
  %5223 = xor i8 %5222, 1
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5223, i8* %5224, align 1
  %5225 = xor i64 1, %5210
  %5226 = trunc i64 %5225 to i32
  %5227 = xor i32 %5226, %5214
  %5228 = lshr i32 %5227, 4
  %5229 = trunc i32 %5228 to i8
  %5230 = and i8 %5229, 1
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5230, i8* %5231, align 1
  %5232 = icmp eq i32 %5214, 0
  %5233 = zext i1 %5232 to i8
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5233, i8* %5234, align 1
  %5235 = lshr i32 %5214, 31
  %5236 = trunc i32 %5235 to i8
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5236, i8* %5237, align 1
  %5238 = lshr i32 %5213, 31
  %5239 = xor i32 %5235, %5238
  %5240 = add i32 %5239, %5238
  %5241 = icmp eq i32 %5240, 2
  %5242 = zext i1 %5241 to i8
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5242, i8* %5243, align 1
  store %struct.Memory* %loadMem_400fac, %struct.Memory** %MEMORY
  %loadMem_400faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 33
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5246 to i64*
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 5
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %ECX.i18 = bitcast %union.anon* %5249 to i32*
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 7
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %RDX.i19 = bitcast %union.anon* %5252 to i64*
  %5253 = load i32, i32* %ECX.i18
  %5254 = zext i32 %5253 to i64
  %5255 = load i64, i64* %PC.i17
  %5256 = add i64 %5255, 3
  store i64 %5256, i64* %PC.i17
  %5257 = shl i64 %5254, 32
  %5258 = ashr exact i64 %5257, 32
  store i64 %5258, i64* %RDX.i19, align 8
  store %struct.Memory* %loadMem_400faf, %struct.Memory** %MEMORY
  %loadMem_400fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 33
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %5261 to i64*
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 7
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %RDX.i16 = bitcast %union.anon* %5264 to i64*
  %5265 = load i64, i64* %RDX.i16
  %5266 = load i64, i64* %PC.i15
  %5267 = add i64 %5266, 7
  store i64 %5267, i64* %PC.i15
  %5268 = sext i64 %5265 to i128
  %5269 = and i128 %5268, -18446744073709551616
  %5270 = zext i64 %5265 to i128
  %5271 = or i128 %5269, %5270
  %5272 = mul i128 8000, %5271
  %5273 = trunc i128 %5272 to i64
  store i64 %5273, i64* %RDX.i16, align 8
  %5274 = sext i64 %5273 to i128
  %5275 = icmp ne i128 %5274, %5272
  %5276 = zext i1 %5275 to i8
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5276, i8* %5277, align 1
  %5278 = trunc i128 %5272 to i32
  %5279 = and i32 %5278, 255
  %5280 = call i32 @llvm.ctpop.i32(i32 %5279)
  %5281 = trunc i32 %5280 to i8
  %5282 = and i8 %5281, 1
  %5283 = xor i8 %5282, 1
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5283, i8* %5284, align 1
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5285, align 1
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5286, align 1
  %5287 = lshr i64 %5273, 63
  %5288 = trunc i64 %5287 to i8
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5288, i8* %5289, align 1
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5276, i8* %5290, align 1
  store %struct.Memory* %loadMem_400fb2, %struct.Memory** %MEMORY
  %loadMem_400fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5292 = getelementptr inbounds %struct.GPR, %struct.GPR* %5291, i32 0, i32 33
  %5293 = getelementptr inbounds %struct.Reg, %struct.Reg* %5292, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5293 to i64*
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5295 = getelementptr inbounds %struct.GPR, %struct.GPR* %5294, i32 0, i32 1
  %5296 = getelementptr inbounds %struct.Reg, %struct.Reg* %5295, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %5296 to i64*
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 7
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %RDX.i14 = bitcast %union.anon* %5299 to i64*
  %5300 = load i64, i64* %RAX.i13
  %5301 = load i64, i64* %RDX.i14
  %5302 = load i64, i64* %PC.i12
  %5303 = add i64 %5302, 3
  store i64 %5303, i64* %PC.i12
  %5304 = add i64 %5301, %5300
  store i64 %5304, i64* %RAX.i13, align 8
  %5305 = icmp ult i64 %5304, %5300
  %5306 = icmp ult i64 %5304, %5301
  %5307 = or i1 %5305, %5306
  %5308 = zext i1 %5307 to i8
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5308, i8* %5309, align 1
  %5310 = trunc i64 %5304 to i32
  %5311 = and i32 %5310, 255
  %5312 = call i32 @llvm.ctpop.i32(i32 %5311)
  %5313 = trunc i32 %5312 to i8
  %5314 = and i8 %5313, 1
  %5315 = xor i8 %5314, 1
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5315, i8* %5316, align 1
  %5317 = xor i64 %5301, %5300
  %5318 = xor i64 %5317, %5304
  %5319 = lshr i64 %5318, 4
  %5320 = trunc i64 %5319 to i8
  %5321 = and i8 %5320, 1
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5321, i8* %5322, align 1
  %5323 = icmp eq i64 %5304, 0
  %5324 = zext i1 %5323 to i8
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5324, i8* %5325, align 1
  %5326 = lshr i64 %5304, 63
  %5327 = trunc i64 %5326 to i8
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5327, i8* %5328, align 1
  %5329 = lshr i64 %5300, 63
  %5330 = lshr i64 %5301, 63
  %5331 = xor i64 %5326, %5329
  %5332 = xor i64 %5326, %5330
  %5333 = add i64 %5331, %5332
  %5334 = icmp eq i64 %5333, 2
  %5335 = zext i1 %5334 to i8
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5335, i8* %5336, align 1
  store %struct.Memory* %loadMem_400fb9, %struct.Memory** %MEMORY
  %loadMem_400fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 33
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5339 to i64*
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 5
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %RCX.i10 = bitcast %union.anon* %5342 to i64*
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 15
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5345 to i64*
  %5346 = load i64, i64* %RBP.i11
  %5347 = sub i64 %5346, 4
  %5348 = load i64, i64* %PC.i9
  %5349 = add i64 %5348, 3
  store i64 %5349, i64* %PC.i9
  %5350 = inttoptr i64 %5347 to i32*
  %5351 = load i32, i32* %5350
  %5352 = zext i32 %5351 to i64
  store i64 %5352, i64* %RCX.i10, align 8
  store %struct.Memory* %loadMem_400fbc, %struct.Memory** %MEMORY
  %loadMem_400fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 33
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5355 to i64*
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 5
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5358 to i64*
  %5359 = load i64, i64* %RCX.i
  %5360 = load i64, i64* %PC.i8
  %5361 = add i64 %5360, 3
  store i64 %5361, i64* %PC.i8
  %5362 = trunc i64 %5359 to i32
  %5363 = sub i32 %5362, 1
  %5364 = zext i32 %5363 to i64
  store i64 %5364, i64* %RCX.i, align 8
  %5365 = icmp ult i32 %5362, 1
  %5366 = zext i1 %5365 to i8
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5366, i8* %5367, align 1
  %5368 = and i32 %5363, 255
  %5369 = call i32 @llvm.ctpop.i32(i32 %5368)
  %5370 = trunc i32 %5369 to i8
  %5371 = and i8 %5370, 1
  %5372 = xor i8 %5371, 1
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5372, i8* %5373, align 1
  %5374 = xor i64 1, %5359
  %5375 = trunc i64 %5374 to i32
  %5376 = xor i32 %5375, %5363
  %5377 = lshr i32 %5376, 4
  %5378 = trunc i32 %5377 to i8
  %5379 = and i8 %5378, 1
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5379, i8* %5380, align 1
  %5381 = icmp eq i32 %5363, 0
  %5382 = zext i1 %5381 to i8
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5382, i8* %5383, align 1
  %5384 = lshr i32 %5363, 31
  %5385 = trunc i32 %5384 to i8
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5385, i8* %5386, align 1
  %5387 = lshr i32 %5362, 31
  %5388 = xor i32 %5384, %5387
  %5389 = add i32 %5388, %5387
  %5390 = icmp eq i32 %5389, 2
  %5391 = zext i1 %5390 to i8
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5391, i8* %5392, align 1
  store %struct.Memory* %loadMem_400fbf, %struct.Memory** %MEMORY
  %loadMem_400fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 33
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5395 to i64*
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 5
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5398 to i32*
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5400 = getelementptr inbounds %struct.GPR, %struct.GPR* %5399, i32 0, i32 7
  %5401 = getelementptr inbounds %struct.Reg, %struct.Reg* %5400, i32 0, i32 0
  %RDX.i7 = bitcast %union.anon* %5401 to i64*
  %5402 = load i32, i32* %ECX.i
  %5403 = zext i32 %5402 to i64
  %5404 = load i64, i64* %PC.i6
  %5405 = add i64 %5404, 3
  store i64 %5405, i64* %PC.i6
  %5406 = shl i64 %5403, 32
  %5407 = ashr exact i64 %5406, 32
  store i64 %5407, i64* %RDX.i7, align 8
  store %struct.Memory* %loadMem_400fc2, %struct.Memory** %MEMORY
  %loadMem_400fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5409 = getelementptr inbounds %struct.GPR, %struct.GPR* %5408, i32 0, i32 33
  %5410 = getelementptr inbounds %struct.Reg, %struct.Reg* %5409, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5410 to i64*
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 1
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5413 to i64*
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 7
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5416 to i64*
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5417, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5418 to %union.vec128_t*
  %5419 = load i64, i64* %RAX.i
  %5420 = load i64, i64* %RDX.i
  %5421 = mul i64 %5420, 8
  %5422 = add i64 %5421, %5419
  %5423 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5424 = load i64, i64* %PC.i5
  %5425 = add i64 %5424, 5
  store i64 %5425, i64* %PC.i5
  %5426 = bitcast i8* %5423 to double*
  %5427 = load double, double* %5426, align 1
  %5428 = inttoptr i64 %5422 to double*
  store double %5427, double* %5428
  store %struct.Memory* %loadMem_400fc5, %struct.Memory** %MEMORY
  %loadMem_400fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5430 = getelementptr inbounds %struct.GPR, %struct.GPR* %5429, i32 0, i32 33
  %5431 = getelementptr inbounds %struct.Reg, %struct.Reg* %5430, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5431 to i64*
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 13
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5434 to i64*
  %5435 = load i64, i64* %RSP.i
  %5436 = load i64, i64* %PC.i4
  %5437 = add i64 %5436, 4
  store i64 %5437, i64* %PC.i4
  %5438 = add i64 80, %5435
  store i64 %5438, i64* %RSP.i, align 8
  %5439 = icmp ult i64 %5438, %5435
  %5440 = icmp ult i64 %5438, 80
  %5441 = or i1 %5439, %5440
  %5442 = zext i1 %5441 to i8
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5442, i8* %5443, align 1
  %5444 = trunc i64 %5438 to i32
  %5445 = and i32 %5444, 255
  %5446 = call i32 @llvm.ctpop.i32(i32 %5445)
  %5447 = trunc i32 %5446 to i8
  %5448 = and i8 %5447, 1
  %5449 = xor i8 %5448, 1
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5449, i8* %5450, align 1
  %5451 = xor i64 80, %5435
  %5452 = xor i64 %5451, %5438
  %5453 = lshr i64 %5452, 4
  %5454 = trunc i64 %5453 to i8
  %5455 = and i8 %5454, 1
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5455, i8* %5456, align 1
  %5457 = icmp eq i64 %5438, 0
  %5458 = zext i1 %5457 to i8
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5458, i8* %5459, align 1
  %5460 = lshr i64 %5438, 63
  %5461 = trunc i64 %5460 to i8
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5461, i8* %5462, align 1
  %5463 = lshr i64 %5435, 63
  %5464 = xor i64 %5460, %5463
  %5465 = add i64 %5464, %5460
  %5466 = icmp eq i64 %5465, 2
  %5467 = zext i1 %5466 to i8
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5467, i8* %5468, align 1
  store %struct.Memory* %loadMem_400fca, %struct.Memory** %MEMORY
  %loadMem_400fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 33
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5471 to i64*
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5473 = getelementptr inbounds %struct.GPR, %struct.GPR* %5472, i32 0, i32 15
  %5474 = getelementptr inbounds %struct.Reg, %struct.Reg* %5473, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5474 to i64*
  %5475 = load i64, i64* %PC.i2
  %5476 = add i64 %5475, 1
  store i64 %5476, i64* %PC.i2
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5478 = load i64, i64* %5477, align 8
  %5479 = add i64 %5478, 8
  %5480 = inttoptr i64 %5478 to i64*
  %5481 = load i64, i64* %5480
  store i64 %5481, i64* %RBP.i3, align 8
  store i64 %5479, i64* %5477, align 8
  store %struct.Memory* %loadMem_400fce, %struct.Memory** %MEMORY
  %loadMem_400fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5483 = getelementptr inbounds %struct.GPR, %struct.GPR* %5482, i32 0, i32 33
  %5484 = getelementptr inbounds %struct.Reg, %struct.Reg* %5483, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5484 to i64*
  %5485 = load i64, i64* %PC.i1
  %5486 = add i64 %5485, 1
  store i64 %5486, i64* %PC.i1
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5489 = load i64, i64* %5488, align 8
  %5490 = inttoptr i64 %5489 to i64*
  %5491 = load i64, i64* %5490
  store i64 %5491, i64* %5487, align 8
  %5492 = add i64 %5489, 8
  store i64 %5492, i64* %5488, align 8
  store %struct.Memory* %loadMem_400fcf, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400fcf
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

define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %9, 80
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 80
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
  %23 = xor i64 80, %9
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

define %struct.Memory* @routine_movsd_0x868__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x868__rip__4197296__type* @G_0x868__rip__4197296_ to i64
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 16
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

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 72
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

define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_400c6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_400c41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
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

define %struct.Memory* @routine_jmpq_.L_400bfa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fdiv double %16, %21
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

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_400bd7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400dae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400d14(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
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

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
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

define %struct.Memory* @routine_jmpq_.L_400c94(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
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

define %struct.Memory* @routine_jb_.L_400d7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6ae__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x6ae__rip__4197746__type* @G_0x6ae__rip__4197746_ to i64
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 80
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

define %struct.Memory* @routine_jmpq_.L_400d8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
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

define %struct.Memory* @routine_jmpq_.L_400c71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_400e61(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_400e4e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
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
  %29 = fmul double %23, %28
  %30 = bitcast i8* %14 to double*
  store double %29, double* %30, align 1
  %31 = getelementptr inbounds i8, i8* %14, i64 8
  %32 = bitcast i8* %31 to i64*
  store i64 %26, i64* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dc8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400e53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400db5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_400f9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x59f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x59f__rip__4198017__type* @G_0x59f__rip__4198017_ to i64
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
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

define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400f8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_400f46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_400ed6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_400ea5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_400f8f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_400e68(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x47b__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x47b__rip__4198309__type* @G_0x47b__rip__4198309_ to i64
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

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_imulq__0x1f40___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 8000, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDX
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

define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 80, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 80
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
  %25 = xor i64 80, %9
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
