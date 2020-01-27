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
%G_0x37d__rip__4197059__type = type <{ [16 x i8] }>
%G_0x3cf__rip__4196977__type = type <{ [16 x i8] }>
%G_0x43c__rip__4196868__type = type <{ [16 x i8] }>
%G_0x497__rip__4196777__type = type <{ [16 x i8] }>
%G_0x531__rip__4196623__type = type <{ [16 x i8] }>
%G_0x58a__rip__4196534__type = type <{ [16 x i8] }>
%G_0x5dc__rip__4196452__type = type <{ [16 x i8] }>
%G_0x602450___rcx_4__type = type <{ [4 x i8] }>
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
@G_0x37d__rip__4197059_ = global %G_0x37d__rip__4197059__type zeroinitializer
@G_0x3cf__rip__4196977_ = global %G_0x3cf__rip__4196977__type zeroinitializer
@G_0x43c__rip__4196868_ = global %G_0x43c__rip__4196868__type zeroinitializer
@G_0x497__rip__4196777_ = global %G_0x497__rip__4196777__type zeroinitializer
@G_0x531__rip__4196623_ = global %G_0x531__rip__4196623__type zeroinitializer
@G_0x58a__rip__4196534_ = global %G_0x58a__rip__4196534__type zeroinitializer
@G_0x5dc__rip__4196452_ = global %G_0x5dc__rip__4196452__type zeroinitializer
@G_0x602450___rcx_4_ = global %G_0x602450___rcx_4__type zeroinitializer

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

declare %struct.Memory* @sub_400b90.fade(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400be0.grad(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400d30.lerp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @noise(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4006d0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006d0, %struct.Memory** %MEMORY
  %loadMem_4006d1 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006d1, %struct.Memory** %MEMORY
  %loadMem_4006d4 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006d4, %struct.Memory** %MEMORY
  %loadMem_4006db = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006db, %struct.Memory** %MEMORY
  %loadMem_4006e0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006e0, %struct.Memory** %MEMORY
  %loadMem_4006e5 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006e5, %struct.Memory** %MEMORY
  %loadMem_4006ea = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006ea, %struct.Memory** %MEMORY
  %loadMem1_4006ef = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem1_4006ef, %struct.Memory** %MEMORY
  %loadMem2_4006ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4006ef = load i64, i64* %3
  %147 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_4006ef)
  store %struct.Memory* %147, %struct.Memory** %MEMORY
  %loadMem_4006f4 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006f4, %struct.Memory** %MEMORY
  %loadMem_4006f8 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006f8, %struct.Memory** %MEMORY
  %loadMem_4006fd = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006fd, %struct.Memory** %MEMORY
  %loadMem_400700 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400700, %struct.Memory** %MEMORY
  %loadMem1_400705 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem1_400705, %struct.Memory** %MEMORY
  %loadMem2_400705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400705 = load i64, i64* %3
  %239 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_400705)
  store %struct.Memory* %239, %struct.Memory** %MEMORY
  %loadMem_40070a = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40070a, %struct.Memory** %MEMORY
  %loadMem_40070e = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40070e, %struct.Memory** %MEMORY
  %loadMem_400713 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400713, %struct.Memory** %MEMORY
  %loadMem_400716 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400716, %struct.Memory** %MEMORY
  %loadMem1_40071b = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem1_40071b, %struct.Memory** %MEMORY
  %loadMem2_40071b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40071b = load i64, i64* %3
  %331 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_40071b)
  store %struct.Memory* %331, %struct.Memory** %MEMORY
  %loadMem_400720 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400720, %struct.Memory** %MEMORY
  %loadMem_400724 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400724, %struct.Memory** %MEMORY
  %loadMem_400729 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400729, %struct.Memory** %MEMORY
  %loadMem_40072c = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40072c, %struct.Memory** %MEMORY
  %loadMem1_400731 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem1_400731, %struct.Memory** %MEMORY
  %loadMem2_400731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400731 = load i64, i64* %3
  %423 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_400731)
  store %struct.Memory* %423, %struct.Memory** %MEMORY
  %loadMem_400736 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400736, %struct.Memory** %MEMORY
  %loadMem_40073b = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40073b, %struct.Memory** %MEMORY
  %loadMem_40073f = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40073f, %struct.Memory** %MEMORY
  %loadMem_400744 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400744, %struct.Memory** %MEMORY
  %loadMem1_400749 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem1_400749, %struct.Memory** %MEMORY
  %loadMem2_400749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400749 = load i64, i64* %3
  %513 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_400749)
  store %struct.Memory* %513, %struct.Memory** %MEMORY
  %loadMem_40074e = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40074e, %struct.Memory** %MEMORY
  %loadMem_400753 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400753, %struct.Memory** %MEMORY
  %loadMem_400757 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400757, %struct.Memory** %MEMORY
  %loadMem_40075c = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40075c, %struct.Memory** %MEMORY
  %loadMem1_400761 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem1_400761, %struct.Memory** %MEMORY
  %loadMem2_400761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400761 = load i64, i64* %3
  %603 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_400761)
  store %struct.Memory* %603, %struct.Memory** %MEMORY
  %loadMem_400766 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400766, %struct.Memory** %MEMORY
  %loadMem_40076b = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40076b, %struct.Memory** %MEMORY
  %loadMem_40076f = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40076f, %struct.Memory** %MEMORY
  %loadMem_400774 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400774, %struct.Memory** %MEMORY
  %loadMem1_400779 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem1_400779, %struct.Memory** %MEMORY
  %loadMem2_400779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400779 = load i64, i64* %3
  %call2_400779 = call %struct.Memory* @sub_400b90.fade(%struct.State* %0, i64 %loadPC_400779, %struct.Memory* %loadMem2_400779)
  store %struct.Memory* %call2_400779, %struct.Memory** %MEMORY
  %loadMem_40077e = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40077e, %struct.Memory** %MEMORY
  %loadMem_400783 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400783, %struct.Memory** %MEMORY
  %loadMem1_400788 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem1_400788, %struct.Memory** %MEMORY
  %loadMem2_400788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400788 = load i64, i64* %3
  %call2_400788 = call %struct.Memory* @sub_400b90.fade(%struct.State* %0, i64 %loadPC_400788, %struct.Memory* %loadMem2_400788)
  store %struct.Memory* %call2_400788, %struct.Memory** %MEMORY
  %loadMem_40078d = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40078d, %struct.Memory** %MEMORY
  %loadMem_400792 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400792, %struct.Memory** %MEMORY
  %loadMem1_400797 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem1_400797, %struct.Memory** %MEMORY
  %loadMem2_400797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400797 = load i64, i64* %3
  %call2_400797 = call %struct.Memory* @sub_400b90.fade(%struct.State* %0, i64 %loadPC_400797, %struct.Memory* %loadMem2_400797)
  store %struct.Memory* %call2_400797, %struct.Memory** %MEMORY
  %loadMem_40079c = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40079c, %struct.Memory** %MEMORY
  %loadMem_4007a1 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007a1, %struct.Memory** %MEMORY
  %loadMem_4007a5 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  %832 = add i64 %831, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %833 = load i64, i64* %PC.i519
  %834 = add i64 %833, 7
  store i64 %834, i64* %PC.i519
  %835 = inttoptr i64 %832 to i32*
  %836 = load i32, i32* %835
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RAX.i520, align 8
  store %struct.Memory* %loadMem_4007a5, %struct.Memory** %MEMORY
  %loadMem_4007ac = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007ac, %struct.Memory** %MEMORY
  %loadMem_4007af = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007af, %struct.Memory** %MEMORY
  %loadMem_4007b2 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007b2, %struct.Memory** %MEMORY
  %loadMem_4007b6 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  %931 = add i64 %930, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %932 = load i64, i64* %PC.i507
  %933 = add i64 %932, 7
  store i64 %933, i64* %PC.i507
  %934 = inttoptr i64 %931 to i32*
  %935 = load i32, i32* %934
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_4007b6, %struct.Memory** %MEMORY
  %loadMem_4007bd = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007bd, %struct.Memory** %MEMORY
  %loadMem_4007c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007c0, %struct.Memory** %MEMORY
  %loadMem_4007c3 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007c3, %struct.Memory** %MEMORY
  %loadMem_4007c6 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007c6, %struct.Memory** %MEMORY
  %loadMem_4007c9 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007c9, %struct.Memory** %MEMORY
  %loadMem_4007cc = load %struct.Memory*, %struct.Memory** %MEMORY
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
  %1087 = add i64 %1086, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %1088 = load i64, i64* %PC.i490
  %1089 = add i64 %1088, 7
  store i64 %1089, i64* %PC.i490
  %1090 = inttoptr i64 %1087 to i32*
  %1091 = load i32, i32* %1090
  %1092 = zext i32 %1091 to i64
  store i64 %1092, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_4007cc, %struct.Memory** %MEMORY
  %loadMem_4007d3 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007d3, %struct.Memory** %MEMORY
  %loadMem_4007d6 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007d6, %struct.Memory** %MEMORY
  %loadMem_4007d9 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007d9, %struct.Memory** %MEMORY
  %loadMem_4007dc = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007dc, %struct.Memory** %MEMORY
  %loadMem_4007df = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007df, %struct.Memory** %MEMORY
  %loadMem_4007e2 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  %1243 = add i64 %1242, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %1244 = load i64, i64* %PC.i473
  %1245 = add i64 %1244, 7
  store i64 %1245, i64* %PC.i473
  %1246 = inttoptr i64 %1243 to i32*
  %1247 = load i32, i32* %1246
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_4007e2, %struct.Memory** %MEMORY
  %loadMem_4007e9 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007e9, %struct.Memory** %MEMORY
  %loadMem_4007ec = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007ec, %struct.Memory** %MEMORY
  %loadMem_4007ef = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007ef, %struct.Memory** %MEMORY
  %loadMem_4007f3 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  %1342 = add i64 %1341, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %1343 = load i64, i64* %PC.i461
  %1344 = add i64 %1343, 7
  store i64 %1344, i64* %PC.i461
  %1345 = inttoptr i64 %1342 to i32*
  %1346 = load i32, i32* %1345
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_4007f3, %struct.Memory** %MEMORY
  %loadMem_4007fa = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007fa, %struct.Memory** %MEMORY
  %loadMem_4007fd = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4007fd, %struct.Memory** %MEMORY
  %loadMem_400800 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400800, %struct.Memory** %MEMORY
  %loadMem_400803 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400803, %struct.Memory** %MEMORY
  %loadMem_400806 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400806, %struct.Memory** %MEMORY
  %loadMem_400809 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  %1498 = add i64 %1497, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %1499 = load i64, i64* %PC.i444
  %1500 = add i64 %1499, 7
  store i64 %1500, i64* %PC.i444
  %1501 = inttoptr i64 %1498 to i32*
  %1502 = load i32, i32* %1501
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RAX.i445, align 8
  store %struct.Memory* %loadMem_400809, %struct.Memory** %MEMORY
  %loadMem_400810 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400810, %struct.Memory** %MEMORY
  %loadMem_400813 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400813, %struct.Memory** %MEMORY
  %loadMem_400816 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400816, %struct.Memory** %MEMORY
  %loadMem_40081b = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40081b, %struct.Memory** %MEMORY
  %loadMem_400820 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400820, %struct.Memory** %MEMORY
  %loadMem_400825 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400825, %struct.Memory** %MEMORY
  %loadMem_400829 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  %1651 = add i64 %1650, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %1652 = load i64, i64* %PC.i423
  %1653 = add i64 %1652, 7
  store i64 %1653, i64* %PC.i423
  %1654 = inttoptr i64 %1651 to i32*
  %1655 = load i32, i32* %1654
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RDI.i425, align 8
  store %struct.Memory* %loadMem_400829, %struct.Memory** %MEMORY
  %loadMem_400830 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400830, %struct.Memory** %MEMORY
  %loadMem_400835 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400835, %struct.Memory** %MEMORY
  %loadMem_40083a = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40083a, %struct.Memory** %MEMORY
  %loadMem_40083f = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40083f, %struct.Memory** %MEMORY
  %loadMem_400844 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400844, %struct.Memory** %MEMORY
  %loadMem_400847 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400847, %struct.Memory** %MEMORY
  %loadMem_40084c = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40084c, %struct.Memory** %MEMORY
  %loadMem_40084f = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40084f, %struct.Memory** %MEMORY
  %loadMem_400854 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400854, %struct.Memory** %MEMORY
  %loadMem1_400857 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem1_400857, %struct.Memory** %MEMORY
  %loadMem2_400857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400857 = load i64, i64* %3
  %call2_400857 = call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %loadPC_400857, %struct.Memory* %loadMem2_400857)
  store %struct.Memory* %call2_400857, %struct.Memory** %MEMORY
  %loadMem_40085c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1858 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1857, i64 0, i64 1
  %YMM1.i394 = bitcast %union.VectorReg* %1858 to %"class.std::bitset"*
  %1859 = bitcast %"class.std::bitset"* %YMM1.i394 to i8*
  %1860 = load i64, i64* %PC.i393
  %1861 = load i64, i64* %PC.i393
  %1862 = add i64 %1861, 8
  store i64 %1862, i64* %PC.i393
  %1863 = load double, double* bitcast (%G_0x5dc__rip__4196452__type* @G_0x5dc__rip__4196452_ to double*)
  %1864 = bitcast i8* %1859 to double*
  store double %1863, double* %1864, align 1
  %1865 = getelementptr inbounds i8, i8* %1859, i64 8
  %1866 = bitcast i8* %1865 to double*
  store double 0.000000e+00, double* %1866, align 1
  store %struct.Memory* %loadMem_40085c, %struct.Memory** %MEMORY
  %loadMem_400864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 5
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 15
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %1875 to i64*
  %1876 = load i64, i64* %RBP.i392
  %1877 = sub i64 %1876, 84
  %1878 = load i64, i64* %PC.i390
  %1879 = add i64 %1878, 4
  store i64 %1879, i64* %PC.i390
  %1880 = inttoptr i64 %1877 to i32*
  %1881 = load i32, i32* %1880
  %1882 = sext i32 %1881 to i64
  store i64 %1882, i64* %RCX.i391, align 8
  store %struct.Memory* %loadMem_400864, %struct.Memory** %MEMORY
  %loadMem_400868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 33
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 5
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 11
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RDI.i389 = bitcast %union.anon* %1891 to i64*
  %1892 = load i64, i64* %RCX.i388
  %1893 = mul i64 %1892, 4
  %1894 = add i64 %1893, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %1895 = load i64, i64* %PC.i387
  %1896 = add i64 %1895, 7
  store i64 %1896, i64* %PC.i387
  %1897 = inttoptr i64 %1894 to i32*
  %1898 = load i32, i32* %1897
  %1899 = zext i32 %1898 to i64
  store i64 %1899, i64* %RDI.i389, align 8
  store %struct.Memory* %loadMem_400868, %struct.Memory** %MEMORY
  %loadMem_40086f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 15
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1906, i64 0, i64 2
  %YMM2.i386 = bitcast %union.VectorReg* %1907 to %"class.std::bitset"*
  %1908 = bitcast %"class.std::bitset"* %YMM2.i386 to i8*
  %1909 = load i64, i64* %RBP.i385
  %1910 = sub i64 %1909, 8
  %1911 = load i64, i64* %PC.i384
  %1912 = add i64 %1911, 5
  store i64 %1912, i64* %PC.i384
  %1913 = inttoptr i64 %1910 to double*
  %1914 = load double, double* %1913
  %1915 = bitcast i8* %1908 to double*
  store double %1914, double* %1915, align 1
  %1916 = getelementptr inbounds i8, i8* %1908, i64 8
  %1917 = bitcast i8* %1916 to double*
  store double 0.000000e+00, double* %1917, align 1
  store %struct.Memory* %loadMem_40086f, %struct.Memory** %MEMORY
  %loadMem_400874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1922 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1921, i64 0, i64 2
  %YMM2.i382 = bitcast %union.VectorReg* %1922 to %"class.std::bitset"*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1924 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1923, i64 0, i64 1
  %XMM1.i383 = bitcast %union.VectorReg* %1924 to %union.vec128_t*
  %1925 = bitcast %"class.std::bitset"* %YMM2.i382 to i8*
  %1926 = bitcast %"class.std::bitset"* %YMM2.i382 to i8*
  %1927 = bitcast %union.vec128_t* %XMM1.i383 to i8*
  %1928 = load i64, i64* %PC.i381
  %1929 = add i64 %1928, 4
  store i64 %1929, i64* %PC.i381
  %1930 = bitcast i8* %1926 to double*
  %1931 = load double, double* %1930, align 1
  %1932 = getelementptr inbounds i8, i8* %1926, i64 8
  %1933 = bitcast i8* %1932 to i64*
  %1934 = load i64, i64* %1933, align 1
  %1935 = bitcast i8* %1927 to double*
  %1936 = load double, double* %1935, align 1
  %1937 = fsub double %1931, %1936
  %1938 = bitcast i8* %1925 to double*
  store double %1937, double* %1938, align 1
  %1939 = getelementptr inbounds i8, i8* %1925, i64 8
  %1940 = bitcast i8* %1939 to i64*
  store i64 %1934, i64* %1940, align 1
  store %struct.Memory* %loadMem_400874, %struct.Memory** %MEMORY
  %loadMem_400878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 33
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1943 to i64*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 15
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1948 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1947, i64 0, i64 1
  %YMM1.i380 = bitcast %union.VectorReg* %1948 to %"class.std::bitset"*
  %1949 = bitcast %"class.std::bitset"* %YMM1.i380 to i8*
  %1950 = load i64, i64* %RBP.i379
  %1951 = sub i64 %1950, 16
  %1952 = load i64, i64* %PC.i378
  %1953 = add i64 %1952, 5
  store i64 %1953, i64* %PC.i378
  %1954 = inttoptr i64 %1951 to double*
  %1955 = load double, double* %1954
  %1956 = bitcast i8* %1949 to double*
  store double %1955, double* %1956, align 1
  %1957 = getelementptr inbounds i8, i8* %1949, i64 8
  %1958 = bitcast i8* %1957 to double*
  store double 0.000000e+00, double* %1958, align 1
  store %struct.Memory* %loadMem_400878, %struct.Memory** %MEMORY
  %loadMem_40087d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 33
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 15
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1966 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1965, i64 0, i64 3
  %YMM3.i377 = bitcast %union.VectorReg* %1966 to %"class.std::bitset"*
  %1967 = bitcast %"class.std::bitset"* %YMM3.i377 to i8*
  %1968 = load i64, i64* %RBP.i376
  %1969 = sub i64 %1968, 24
  %1970 = load i64, i64* %PC.i375
  %1971 = add i64 %1970, 5
  store i64 %1971, i64* %PC.i375
  %1972 = inttoptr i64 %1969 to double*
  %1973 = load double, double* %1972
  %1974 = bitcast i8* %1967 to double*
  store double %1973, double* %1974, align 1
  %1975 = getelementptr inbounds i8, i8* %1967, i64 8
  %1976 = bitcast i8* %1975 to double*
  store double 0.000000e+00, double* %1976, align 1
  store %struct.Memory* %loadMem_40087d, %struct.Memory** %MEMORY
  %loadMem_400882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1979 to i64*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 15
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1984 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1983, i64 0, i64 0
  %XMM0.i374 = bitcast %union.VectorReg* %1984 to %union.vec128_t*
  %1985 = load i64, i64* %RBP.i373
  %1986 = sub i64 %1985, 120
  %1987 = bitcast %union.vec128_t* %XMM0.i374 to i8*
  %1988 = load i64, i64* %PC.i372
  %1989 = add i64 %1988, 5
  store i64 %1989, i64* %PC.i372
  %1990 = bitcast i8* %1987 to double*
  %1991 = load double, double* %1990, align 1
  %1992 = inttoptr i64 %1986 to double*
  store double %1991, double* %1992
  store %struct.Memory* %loadMem_400882, %struct.Memory** %MEMORY
  %loadMem_400887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 33
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1997 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1996, i64 0, i64 0
  %YMM0.i370 = bitcast %union.VectorReg* %1997 to %"class.std::bitset"*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1998, i64 0, i64 2
  %XMM2.i371 = bitcast %union.VectorReg* %1999 to %union.vec128_t*
  %2000 = bitcast %"class.std::bitset"* %YMM0.i370 to i8*
  %2001 = bitcast %union.vec128_t* %XMM2.i371 to i8*
  %2002 = load i64, i64* %PC.i369
  %2003 = add i64 %2002, 3
  store i64 %2003, i64* %PC.i369
  %2004 = bitcast i8* %2001 to <2 x i32>*
  %2005 = load <2 x i32>, <2 x i32>* %2004, align 1
  %2006 = getelementptr inbounds i8, i8* %2001, i64 8
  %2007 = bitcast i8* %2006 to <2 x i32>*
  %2008 = load <2 x i32>, <2 x i32>* %2007, align 1
  %2009 = extractelement <2 x i32> %2005, i32 0
  %2010 = bitcast i8* %2000 to i32*
  store i32 %2009, i32* %2010, align 1
  %2011 = extractelement <2 x i32> %2005, i32 1
  %2012 = getelementptr inbounds i8, i8* %2000, i64 4
  %2013 = bitcast i8* %2012 to i32*
  store i32 %2011, i32* %2013, align 1
  %2014 = extractelement <2 x i32> %2008, i32 0
  %2015 = getelementptr inbounds i8, i8* %2000, i64 8
  %2016 = bitcast i8* %2015 to i32*
  store i32 %2014, i32* %2016, align 1
  %2017 = extractelement <2 x i32> %2008, i32 1
  %2018 = getelementptr inbounds i8, i8* %2000, i64 12
  %2019 = bitcast i8* %2018 to i32*
  store i32 %2017, i32* %2019, align 1
  store %struct.Memory* %loadMem_400887, %struct.Memory** %MEMORY
  %loadMem_40088a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 33
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2023, i64 0, i64 2
  %YMM2.i367 = bitcast %union.VectorReg* %2024 to %"class.std::bitset"*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2026 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2025, i64 0, i64 3
  %XMM3.i368 = bitcast %union.VectorReg* %2026 to %union.vec128_t*
  %2027 = bitcast %"class.std::bitset"* %YMM2.i367 to i8*
  %2028 = bitcast %union.vec128_t* %XMM3.i368 to i8*
  %2029 = load i64, i64* %PC.i366
  %2030 = add i64 %2029, 3
  store i64 %2030, i64* %PC.i366
  %2031 = bitcast i8* %2028 to <2 x i32>*
  %2032 = load <2 x i32>, <2 x i32>* %2031, align 1
  %2033 = getelementptr inbounds i8, i8* %2028, i64 8
  %2034 = bitcast i8* %2033 to <2 x i32>*
  %2035 = load <2 x i32>, <2 x i32>* %2034, align 1
  %2036 = extractelement <2 x i32> %2032, i32 0
  %2037 = bitcast i8* %2027 to i32*
  store i32 %2036, i32* %2037, align 1
  %2038 = extractelement <2 x i32> %2032, i32 1
  %2039 = getelementptr inbounds i8, i8* %2027, i64 4
  %2040 = bitcast i8* %2039 to i32*
  store i32 %2038, i32* %2040, align 1
  %2041 = extractelement <2 x i32> %2035, i32 0
  %2042 = getelementptr inbounds i8, i8* %2027, i64 8
  %2043 = bitcast i8* %2042 to i32*
  store i32 %2041, i32* %2043, align 1
  %2044 = extractelement <2 x i32> %2035, i32 1
  %2045 = getelementptr inbounds i8, i8* %2027, i64 12
  %2046 = bitcast i8* %2045 to i32*
  store i32 %2044, i32* %2046, align 1
  store %struct.Memory* %loadMem_40088a, %struct.Memory** %MEMORY
  %loadMem1_40088d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 33
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2049 to i64*
  %2050 = load i64, i64* %PC.i365
  %2051 = add i64 %2050, 851
  %2052 = load i64, i64* %PC.i365
  %2053 = add i64 %2052, 5
  %2054 = load i64, i64* %PC.i365
  %2055 = add i64 %2054, 5
  store i64 %2055, i64* %PC.i365
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2057 = load i64, i64* %2056, align 8
  %2058 = add i64 %2057, -8
  %2059 = inttoptr i64 %2058 to i64*
  store i64 %2053, i64* %2059
  store i64 %2058, i64* %2056, align 8
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2051, i64* %2060, align 8
  store %struct.Memory* %loadMem1_40088d, %struct.Memory** %MEMORY
  %loadMem2_40088d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40088d = load i64, i64* %3
  %call2_40088d = call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %loadPC_40088d, %struct.Memory* %loadMem2_40088d)
  store %struct.Memory* %call2_40088d, %struct.Memory** %MEMORY
  %loadMem_400892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 33
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 15
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2068 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2067, i64 0, i64 1
  %YMM1.i364 = bitcast %union.VectorReg* %2068 to %"class.std::bitset"*
  %2069 = bitcast %"class.std::bitset"* %YMM1.i364 to i8*
  %2070 = load i64, i64* %RBP.i363
  %2071 = sub i64 %2070, 112
  %2072 = load i64, i64* %PC.i362
  %2073 = add i64 %2072, 5
  store i64 %2073, i64* %PC.i362
  %2074 = inttoptr i64 %2071 to double*
  %2075 = load double, double* %2074
  %2076 = bitcast i8* %2069 to double*
  store double %2075, double* %2076, align 1
  %2077 = getelementptr inbounds i8, i8* %2069, i64 8
  %2078 = bitcast i8* %2077 to double*
  store double 0.000000e+00, double* %2078, align 1
  store %struct.Memory* %loadMem_400892, %struct.Memory** %MEMORY
  %loadMem_400897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 33
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 15
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2086 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2085, i64 0, i64 0
  %XMM0.i361 = bitcast %union.VectorReg* %2086 to %union.vec128_t*
  %2087 = load i64, i64* %RBP.i360
  %2088 = sub i64 %2087, 128
  %2089 = bitcast %union.vec128_t* %XMM0.i361 to i8*
  %2090 = load i64, i64* %PC.i359
  %2091 = add i64 %2090, 5
  store i64 %2091, i64* %PC.i359
  %2092 = bitcast i8* %2089 to double*
  %2093 = load double, double* %2092, align 1
  %2094 = inttoptr i64 %2088 to double*
  store double %2093, double* %2094
  store %struct.Memory* %loadMem_400897, %struct.Memory** %MEMORY
  %loadMem_40089c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 33
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2098, i64 0, i64 0
  %YMM0.i357 = bitcast %union.VectorReg* %2099 to %"class.std::bitset"*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2100, i64 0, i64 1
  %XMM1.i358 = bitcast %union.VectorReg* %2101 to %union.vec128_t*
  %2102 = bitcast %"class.std::bitset"* %YMM0.i357 to i8*
  %2103 = bitcast %union.vec128_t* %XMM1.i358 to i8*
  %2104 = load i64, i64* %PC.i356
  %2105 = add i64 %2104, 3
  store i64 %2105, i64* %PC.i356
  %2106 = bitcast i8* %2103 to <2 x i32>*
  %2107 = load <2 x i32>, <2 x i32>* %2106, align 1
  %2108 = getelementptr inbounds i8, i8* %2103, i64 8
  %2109 = bitcast i8* %2108 to <2 x i32>*
  %2110 = load <2 x i32>, <2 x i32>* %2109, align 1
  %2111 = extractelement <2 x i32> %2107, i32 0
  %2112 = bitcast i8* %2102 to i32*
  store i32 %2111, i32* %2112, align 1
  %2113 = extractelement <2 x i32> %2107, i32 1
  %2114 = getelementptr inbounds i8, i8* %2102, i64 4
  %2115 = bitcast i8* %2114 to i32*
  store i32 %2113, i32* %2115, align 1
  %2116 = extractelement <2 x i32> %2110, i32 0
  %2117 = getelementptr inbounds i8, i8* %2102, i64 8
  %2118 = bitcast i8* %2117 to i32*
  store i32 %2116, i32* %2118, align 1
  %2119 = extractelement <2 x i32> %2110, i32 1
  %2120 = getelementptr inbounds i8, i8* %2102, i64 12
  %2121 = bitcast i8* %2120 to i32*
  store i32 %2119, i32* %2121, align 1
  store %struct.Memory* %loadMem_40089c, %struct.Memory** %MEMORY
  %loadMem_40089f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 33
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 15
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2129 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2128, i64 0, i64 1
  %YMM1.i355 = bitcast %union.VectorReg* %2129 to %"class.std::bitset"*
  %2130 = bitcast %"class.std::bitset"* %YMM1.i355 to i8*
  %2131 = load i64, i64* %RBP.i354
  %2132 = sub i64 %2131, 120
  %2133 = load i64, i64* %PC.i353
  %2134 = add i64 %2133, 5
  store i64 %2134, i64* %PC.i353
  %2135 = inttoptr i64 %2132 to double*
  %2136 = load double, double* %2135
  %2137 = bitcast i8* %2130 to double*
  store double %2136, double* %2137, align 1
  %2138 = getelementptr inbounds i8, i8* %2130, i64 8
  %2139 = bitcast i8* %2138 to double*
  store double 0.000000e+00, double* %2139, align 1
  store %struct.Memory* %loadMem_40089f, %struct.Memory** %MEMORY
  %loadMem_4008a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 15
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2147 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2146, i64 0, i64 2
  %YMM2.i352 = bitcast %union.VectorReg* %2147 to %"class.std::bitset"*
  %2148 = bitcast %"class.std::bitset"* %YMM2.i352 to i8*
  %2149 = load i64, i64* %RBP.i351
  %2150 = sub i64 %2149, 128
  %2151 = load i64, i64* %PC.i350
  %2152 = add i64 %2151, 5
  store i64 %2152, i64* %PC.i350
  %2153 = inttoptr i64 %2150 to double*
  %2154 = load double, double* %2153
  %2155 = bitcast i8* %2148 to double*
  store double %2154, double* %2155, align 1
  %2156 = getelementptr inbounds i8, i8* %2148, i64 8
  %2157 = bitcast i8* %2156 to double*
  store double 0.000000e+00, double* %2157, align 1
  store %struct.Memory* %loadMem_4008a4, %struct.Memory** %MEMORY
  %loadMem1_4008a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 33
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2160 to i64*
  %2161 = load i64, i64* %PC.i349
  %2162 = add i64 %2161, 1159
  %2163 = load i64, i64* %PC.i349
  %2164 = add i64 %2163, 5
  %2165 = load i64, i64* %PC.i349
  %2166 = add i64 %2165, 5
  store i64 %2166, i64* %PC.i349
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2168 = load i64, i64* %2167, align 8
  %2169 = add i64 %2168, -8
  %2170 = inttoptr i64 %2169 to i64*
  store i64 %2164, i64* %2170
  store i64 %2169, i64* %2167, align 8
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2162, i64* %2171, align 8
  store %struct.Memory* %loadMem1_4008a9, %struct.Memory** %MEMORY
  %loadMem2_4008a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4008a9 = load i64, i64* %3
  %call2_4008a9 = call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %loadPC_4008a9, %struct.Memory* %loadMem2_4008a9)
  store %struct.Memory* %call2_4008a9, %struct.Memory** %MEMORY
  %loadMem_4008ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2176 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2175, i64 0, i64 1
  %YMM1.i348 = bitcast %union.VectorReg* %2176 to %"class.std::bitset"*
  %2177 = bitcast %"class.std::bitset"* %YMM1.i348 to i8*
  %2178 = load i64, i64* %PC.i347
  %2179 = load i64, i64* %PC.i347
  %2180 = add i64 %2179, 8
  store i64 %2180, i64* %PC.i347
  %2181 = load double, double* bitcast (%G_0x58a__rip__4196534__type* @G_0x58a__rip__4196534_ to double*)
  %2182 = bitcast i8* %2177 to double*
  store double %2181, double* %2182, align 1
  %2183 = getelementptr inbounds i8, i8* %2177, i64 8
  %2184 = bitcast i8* %2183 to double*
  store double 0.000000e+00, double* %2184, align 1
  store %struct.Memory* %loadMem_4008ae, %struct.Memory** %MEMORY
  %loadMem_4008b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 33
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 15
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %2190 to i64*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2192 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2191, i64 0, i64 2
  %YMM2.i346 = bitcast %union.VectorReg* %2192 to %"class.std::bitset"*
  %2193 = bitcast %"class.std::bitset"* %YMM2.i346 to i8*
  %2194 = load i64, i64* %RBP.i345
  %2195 = sub i64 %2194, 48
  %2196 = load i64, i64* %PC.i344
  %2197 = add i64 %2196, 5
  store i64 %2197, i64* %PC.i344
  %2198 = inttoptr i64 %2195 to double*
  %2199 = load double, double* %2198
  %2200 = bitcast i8* %2193 to double*
  store double %2199, double* %2200, align 1
  %2201 = getelementptr inbounds i8, i8* %2193, i64 8
  %2202 = bitcast i8* %2201 to double*
  store double 0.000000e+00, double* %2202, align 1
  store %struct.Memory* %loadMem_4008b6, %struct.Memory** %MEMORY
  %loadMem_4008bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 33
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2205 to i64*
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 5
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %2208 to i64*
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 15
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %2211 to i64*
  %2212 = load i64, i64* %RBP.i343
  %2213 = sub i64 %2212, 76
  %2214 = load i64, i64* %PC.i341
  %2215 = add i64 %2214, 4
  store i64 %2215, i64* %PC.i341
  %2216 = inttoptr i64 %2213 to i32*
  %2217 = load i32, i32* %2216
  %2218 = sext i32 %2217 to i64
  store i64 %2218, i64* %RCX.i342, align 8
  store %struct.Memory* %loadMem_4008bb, %struct.Memory** %MEMORY
  %loadMem_4008bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 33
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 5
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %2224 to i64*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 11
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %RDI.i340 = bitcast %union.anon* %2227 to i64*
  %2228 = load i64, i64* %RCX.i339
  %2229 = mul i64 %2228, 4
  %2230 = add i64 %2229, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %2231 = load i64, i64* %PC.i338
  %2232 = add i64 %2231, 7
  store i64 %2232, i64* %PC.i338
  %2233 = inttoptr i64 %2230 to i32*
  %2234 = load i32, i32* %2233
  %2235 = zext i32 %2234 to i64
  store i64 %2235, i64* %RDI.i340, align 8
  store %struct.Memory* %loadMem_4008bf, %struct.Memory** %MEMORY
  %loadMem_4008c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 33
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 15
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2242, i64 0, i64 3
  %YMM3.i337 = bitcast %union.VectorReg* %2243 to %"class.std::bitset"*
  %2244 = bitcast %"class.std::bitset"* %YMM3.i337 to i8*
  %2245 = load i64, i64* %RBP.i336
  %2246 = sub i64 %2245, 8
  %2247 = load i64, i64* %PC.i335
  %2248 = add i64 %2247, 5
  store i64 %2248, i64* %PC.i335
  %2249 = inttoptr i64 %2246 to double*
  %2250 = load double, double* %2249
  %2251 = bitcast i8* %2244 to double*
  store double %2250, double* %2251, align 1
  %2252 = getelementptr inbounds i8, i8* %2244, i64 8
  %2253 = bitcast i8* %2252 to double*
  store double 0.000000e+00, double* %2253, align 1
  store %struct.Memory* %loadMem_4008c6, %struct.Memory** %MEMORY
  %loadMem_4008cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 33
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2256 to i64*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 15
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2260, i64 0, i64 4
  %YMM4.i334 = bitcast %union.VectorReg* %2261 to %"class.std::bitset"*
  %2262 = bitcast %"class.std::bitset"* %YMM4.i334 to i8*
  %2263 = load i64, i64* %RBP.i333
  %2264 = sub i64 %2263, 16
  %2265 = load i64, i64* %PC.i332
  %2266 = add i64 %2265, 5
  store i64 %2266, i64* %PC.i332
  %2267 = inttoptr i64 %2264 to double*
  %2268 = load double, double* %2267
  %2269 = bitcast i8* %2262 to double*
  store double %2268, double* %2269, align 1
  %2270 = getelementptr inbounds i8, i8* %2262, i64 8
  %2271 = bitcast i8* %2270 to double*
  store double 0.000000e+00, double* %2271, align 1
  store %struct.Memory* %loadMem_4008cb, %struct.Memory** %MEMORY
  %loadMem_4008d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 33
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2274 to i64*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2276 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2275, i64 0, i64 4
  %YMM4.i330 = bitcast %union.VectorReg* %2276 to %"class.std::bitset"*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2278 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2277, i64 0, i64 1
  %XMM1.i331 = bitcast %union.VectorReg* %2278 to %union.vec128_t*
  %2279 = bitcast %"class.std::bitset"* %YMM4.i330 to i8*
  %2280 = bitcast %"class.std::bitset"* %YMM4.i330 to i8*
  %2281 = bitcast %union.vec128_t* %XMM1.i331 to i8*
  %2282 = load i64, i64* %PC.i329
  %2283 = add i64 %2282, 4
  store i64 %2283, i64* %PC.i329
  %2284 = bitcast i8* %2280 to double*
  %2285 = load double, double* %2284, align 1
  %2286 = getelementptr inbounds i8, i8* %2280, i64 8
  %2287 = bitcast i8* %2286 to i64*
  %2288 = load i64, i64* %2287, align 1
  %2289 = bitcast i8* %2281 to double*
  %2290 = load double, double* %2289, align 1
  %2291 = fsub double %2285, %2290
  %2292 = bitcast i8* %2279 to double*
  store double %2291, double* %2292, align 1
  %2293 = getelementptr inbounds i8, i8* %2279, i64 8
  %2294 = bitcast i8* %2293 to i64*
  store i64 %2288, i64* %2294, align 1
  store %struct.Memory* %loadMem_4008d0, %struct.Memory** %MEMORY
  %loadMem_4008d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 33
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2297 to i64*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 15
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2302 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2301, i64 0, i64 1
  %YMM1.i328 = bitcast %union.VectorReg* %2302 to %"class.std::bitset"*
  %2303 = bitcast %"class.std::bitset"* %YMM1.i328 to i8*
  %2304 = load i64, i64* %RBP.i327
  %2305 = sub i64 %2304, 24
  %2306 = load i64, i64* %PC.i326
  %2307 = add i64 %2306, 5
  store i64 %2307, i64* %PC.i326
  %2308 = inttoptr i64 %2305 to double*
  %2309 = load double, double* %2308
  %2310 = bitcast i8* %2303 to double*
  store double %2309, double* %2310, align 1
  %2311 = getelementptr inbounds i8, i8* %2303, i64 8
  %2312 = bitcast i8* %2311 to double*
  store double 0.000000e+00, double* %2312, align 1
  store %struct.Memory* %loadMem_4008d4, %struct.Memory** %MEMORY
  %loadMem_4008d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 15
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2320 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2319, i64 0, i64 0
  %XMM0.i325 = bitcast %union.VectorReg* %2320 to %union.vec128_t*
  %2321 = load i64, i64* %RBP.i324
  %2322 = sub i64 %2321, 136
  %2323 = bitcast %union.vec128_t* %XMM0.i325 to i8*
  %2324 = load i64, i64* %PC.i323
  %2325 = add i64 %2324, 8
  store i64 %2325, i64* %PC.i323
  %2326 = bitcast i8* %2323 to double*
  %2327 = load double, double* %2326, align 1
  %2328 = inttoptr i64 %2322 to double*
  store double %2327, double* %2328
  store %struct.Memory* %loadMem_4008d9, %struct.Memory** %MEMORY
  %loadMem_4008e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2332, i64 0, i64 0
  %YMM0.i321 = bitcast %union.VectorReg* %2333 to %"class.std::bitset"*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2335 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2334, i64 0, i64 3
  %XMM3.i322 = bitcast %union.VectorReg* %2335 to %union.vec128_t*
  %2336 = bitcast %"class.std::bitset"* %YMM0.i321 to i8*
  %2337 = bitcast %union.vec128_t* %XMM3.i322 to i8*
  %2338 = load i64, i64* %PC.i320
  %2339 = add i64 %2338, 3
  store i64 %2339, i64* %PC.i320
  %2340 = bitcast i8* %2337 to <2 x i32>*
  %2341 = load <2 x i32>, <2 x i32>* %2340, align 1
  %2342 = getelementptr inbounds i8, i8* %2337, i64 8
  %2343 = bitcast i8* %2342 to <2 x i32>*
  %2344 = load <2 x i32>, <2 x i32>* %2343, align 1
  %2345 = extractelement <2 x i32> %2341, i32 0
  %2346 = bitcast i8* %2336 to i32*
  store i32 %2345, i32* %2346, align 1
  %2347 = extractelement <2 x i32> %2341, i32 1
  %2348 = getelementptr inbounds i8, i8* %2336, i64 4
  %2349 = bitcast i8* %2348 to i32*
  store i32 %2347, i32* %2349, align 1
  %2350 = extractelement <2 x i32> %2344, i32 0
  %2351 = getelementptr inbounds i8, i8* %2336, i64 8
  %2352 = bitcast i8* %2351 to i32*
  store i32 %2350, i32* %2352, align 1
  %2353 = extractelement <2 x i32> %2344, i32 1
  %2354 = getelementptr inbounds i8, i8* %2336, i64 12
  %2355 = bitcast i8* %2354 to i32*
  store i32 %2353, i32* %2355, align 1
  store %struct.Memory* %loadMem_4008e1, %struct.Memory** %MEMORY
  %loadMem_4008e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 15
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %2361 to i64*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2363 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2362, i64 0, i64 1
  %XMM1.i319 = bitcast %union.VectorReg* %2363 to %union.vec128_t*
  %2364 = load i64, i64* %RBP.i318
  %2365 = sub i64 %2364, 144
  %2366 = bitcast %union.vec128_t* %XMM1.i319 to i8*
  %2367 = load i64, i64* %PC.i317
  %2368 = add i64 %2367, 8
  store i64 %2368, i64* %PC.i317
  %2369 = bitcast i8* %2366 to double*
  %2370 = load double, double* %2369, align 1
  %2371 = inttoptr i64 %2365 to double*
  store double %2370, double* %2371
  store %struct.Memory* %loadMem_4008e4, %struct.Memory** %MEMORY
  %loadMem_4008ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 33
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2376 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2375, i64 0, i64 1
  %YMM1.i315 = bitcast %union.VectorReg* %2376 to %"class.std::bitset"*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2378 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2377, i64 0, i64 4
  %XMM4.i316 = bitcast %union.VectorReg* %2378 to %union.vec128_t*
  %2379 = bitcast %"class.std::bitset"* %YMM1.i315 to i8*
  %2380 = bitcast %union.vec128_t* %XMM4.i316 to i8*
  %2381 = load i64, i64* %PC.i314
  %2382 = add i64 %2381, 3
  store i64 %2382, i64* %PC.i314
  %2383 = bitcast i8* %2380 to <2 x i32>*
  %2384 = load <2 x i32>, <2 x i32>* %2383, align 1
  %2385 = getelementptr inbounds i8, i8* %2380, i64 8
  %2386 = bitcast i8* %2385 to <2 x i32>*
  %2387 = load <2 x i32>, <2 x i32>* %2386, align 1
  %2388 = extractelement <2 x i32> %2384, i32 0
  %2389 = bitcast i8* %2379 to i32*
  store i32 %2388, i32* %2389, align 1
  %2390 = extractelement <2 x i32> %2384, i32 1
  %2391 = getelementptr inbounds i8, i8* %2379, i64 4
  %2392 = bitcast i8* %2391 to i32*
  store i32 %2390, i32* %2392, align 1
  %2393 = extractelement <2 x i32> %2387, i32 0
  %2394 = getelementptr inbounds i8, i8* %2379, i64 8
  %2395 = bitcast i8* %2394 to i32*
  store i32 %2393, i32* %2395, align 1
  %2396 = extractelement <2 x i32> %2387, i32 1
  %2397 = getelementptr inbounds i8, i8* %2379, i64 12
  %2398 = bitcast i8* %2397 to i32*
  store i32 %2396, i32* %2398, align 1
  store %struct.Memory* %loadMem_4008ec, %struct.Memory** %MEMORY
  %loadMem_4008ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 33
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2401 to i64*
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 15
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2406 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2405, i64 0, i64 3
  %YMM3.i313 = bitcast %union.VectorReg* %2406 to %"class.std::bitset"*
  %2407 = bitcast %"class.std::bitset"* %YMM3.i313 to i8*
  %2408 = load i64, i64* %RBP.i312
  %2409 = sub i64 %2408, 144
  %2410 = load i64, i64* %PC.i311
  %2411 = add i64 %2410, 8
  store i64 %2411, i64* %PC.i311
  %2412 = inttoptr i64 %2409 to double*
  %2413 = load double, double* %2412
  %2414 = bitcast i8* %2407 to double*
  store double %2413, double* %2414, align 1
  %2415 = getelementptr inbounds i8, i8* %2407, i64 8
  %2416 = bitcast i8* %2415 to double*
  store double 0.000000e+00, double* %2416, align 1
  store %struct.Memory* %loadMem_4008ef, %struct.Memory** %MEMORY
  %loadMem_4008f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 33
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 15
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2424 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2423, i64 0, i64 2
  %XMM2.i310 = bitcast %union.VectorReg* %2424 to %union.vec128_t*
  %2425 = load i64, i64* %RBP.i309
  %2426 = sub i64 %2425, 152
  %2427 = bitcast %union.vec128_t* %XMM2.i310 to i8*
  %2428 = load i64, i64* %PC.i308
  %2429 = add i64 %2428, 8
  store i64 %2429, i64* %PC.i308
  %2430 = bitcast i8* %2427 to double*
  %2431 = load double, double* %2430, align 1
  %2432 = inttoptr i64 %2426 to double*
  store double %2431, double* %2432
  store %struct.Memory* %loadMem_4008f7, %struct.Memory** %MEMORY
  %loadMem_4008ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2434 = getelementptr inbounds %struct.GPR, %struct.GPR* %2433, i32 0, i32 33
  %2435 = getelementptr inbounds %struct.Reg, %struct.Reg* %2434, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2435 to i64*
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2437 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2436, i64 0, i64 2
  %YMM2.i306 = bitcast %union.VectorReg* %2437 to %"class.std::bitset"*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2438, i64 0, i64 3
  %XMM3.i307 = bitcast %union.VectorReg* %2439 to %union.vec128_t*
  %2440 = bitcast %"class.std::bitset"* %YMM2.i306 to i8*
  %2441 = bitcast %union.vec128_t* %XMM3.i307 to i8*
  %2442 = load i64, i64* %PC.i305
  %2443 = add i64 %2442, 3
  store i64 %2443, i64* %PC.i305
  %2444 = bitcast i8* %2441 to <2 x i32>*
  %2445 = load <2 x i32>, <2 x i32>* %2444, align 1
  %2446 = getelementptr inbounds i8, i8* %2441, i64 8
  %2447 = bitcast i8* %2446 to <2 x i32>*
  %2448 = load <2 x i32>, <2 x i32>* %2447, align 1
  %2449 = extractelement <2 x i32> %2445, i32 0
  %2450 = bitcast i8* %2440 to i32*
  store i32 %2449, i32* %2450, align 1
  %2451 = extractelement <2 x i32> %2445, i32 1
  %2452 = getelementptr inbounds i8, i8* %2440, i64 4
  %2453 = bitcast i8* %2452 to i32*
  store i32 %2451, i32* %2453, align 1
  %2454 = extractelement <2 x i32> %2448, i32 0
  %2455 = getelementptr inbounds i8, i8* %2440, i64 8
  %2456 = bitcast i8* %2455 to i32*
  store i32 %2454, i32* %2456, align 1
  %2457 = extractelement <2 x i32> %2448, i32 1
  %2458 = getelementptr inbounds i8, i8* %2440, i64 12
  %2459 = bitcast i8* %2458 to i32*
  store i32 %2457, i32* %2459, align 1
  store %struct.Memory* %loadMem_4008ff, %struct.Memory** %MEMORY
  %loadMem1_400902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2462 to i64*
  %2463 = load i64, i64* %PC.i304
  %2464 = add i64 %2463, 734
  %2465 = load i64, i64* %PC.i304
  %2466 = add i64 %2465, 5
  %2467 = load i64, i64* %PC.i304
  %2468 = add i64 %2467, 5
  store i64 %2468, i64* %PC.i304
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2470 = load i64, i64* %2469, align 8
  %2471 = add i64 %2470, -8
  %2472 = inttoptr i64 %2471 to i64*
  store i64 %2466, i64* %2472
  store i64 %2471, i64* %2469, align 8
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2464, i64* %2473, align 8
  store %struct.Memory* %loadMem1_400902, %struct.Memory** %MEMORY
  %loadMem2_400902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400902 = load i64, i64* %3
  %call2_400902 = call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %loadPC_400902, %struct.Memory* %loadMem2_400902)
  store %struct.Memory* %call2_400902, %struct.Memory** %MEMORY
  %loadMem_400907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 33
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2478 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2477, i64 0, i64 1
  %YMM1.i303 = bitcast %union.VectorReg* %2478 to %"class.std::bitset"*
  %2479 = bitcast %"class.std::bitset"* %YMM1.i303 to i8*
  %2480 = load i64, i64* %PC.i302
  %2481 = load i64, i64* %PC.i302
  %2482 = add i64 %2481, 8
  store i64 %2482, i64* %PC.i302
  %2483 = load double, double* bitcast (%G_0x531__rip__4196623__type* @G_0x531__rip__4196623_ to double*)
  %2484 = bitcast i8* %2479 to double*
  store double %2483, double* %2484, align 1
  %2485 = getelementptr inbounds i8, i8* %2479, i64 8
  %2486 = bitcast i8* %2485 to double*
  store double 0.000000e+00, double* %2486, align 1
  store %struct.Memory* %loadMem_400907, %struct.Memory** %MEMORY
  %loadMem_40090f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 5
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 15
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RBP.i301
  %2497 = sub i64 %2496, 88
  %2498 = load i64, i64* %PC.i299
  %2499 = add i64 %2498, 4
  store i64 %2499, i64* %PC.i299
  %2500 = inttoptr i64 %2497 to i32*
  %2501 = load i32, i32* %2500
  %2502 = sext i32 %2501 to i64
  store i64 %2502, i64* %RCX.i300, align 8
  store %struct.Memory* %loadMem_40090f, %struct.Memory** %MEMORY
  %loadMem_400913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 33
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 5
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 11
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RDI.i298 = bitcast %union.anon* %2511 to i64*
  %2512 = load i64, i64* %RCX.i297
  %2513 = mul i64 %2512, 4
  %2514 = add i64 %2513, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %2515 = load i64, i64* %PC.i296
  %2516 = add i64 %2515, 7
  store i64 %2516, i64* %PC.i296
  %2517 = inttoptr i64 %2514 to i32*
  %2518 = load i32, i32* %2517
  %2519 = zext i32 %2518 to i64
  store i64 %2519, i64* %RDI.i298, align 8
  store %struct.Memory* %loadMem_400913, %struct.Memory** %MEMORY
  %loadMem_40091a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 33
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 15
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %2525 to i64*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2527 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2526, i64 0, i64 2
  %YMM2.i295 = bitcast %union.VectorReg* %2527 to %"class.std::bitset"*
  %2528 = bitcast %"class.std::bitset"* %YMM2.i295 to i8*
  %2529 = load i64, i64* %RBP.i294
  %2530 = sub i64 %2529, 8
  %2531 = load i64, i64* %PC.i293
  %2532 = add i64 %2531, 5
  store i64 %2532, i64* %PC.i293
  %2533 = inttoptr i64 %2530 to double*
  %2534 = load double, double* %2533
  %2535 = bitcast i8* %2528 to double*
  store double %2534, double* %2535, align 1
  %2536 = getelementptr inbounds i8, i8* %2528, i64 8
  %2537 = bitcast i8* %2536 to double*
  store double 0.000000e+00, double* %2537, align 1
  store %struct.Memory* %loadMem_40091a, %struct.Memory** %MEMORY
  %loadMem_40091f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 33
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2540 to i64*
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2542 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2541, i64 0, i64 2
  %YMM2.i291 = bitcast %union.VectorReg* %2542 to %"class.std::bitset"*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2543, i64 0, i64 1
  %XMM1.i292 = bitcast %union.VectorReg* %2544 to %union.vec128_t*
  %2545 = bitcast %"class.std::bitset"* %YMM2.i291 to i8*
  %2546 = bitcast %"class.std::bitset"* %YMM2.i291 to i8*
  %2547 = bitcast %union.vec128_t* %XMM1.i292 to i8*
  %2548 = load i64, i64* %PC.i290
  %2549 = add i64 %2548, 4
  store i64 %2549, i64* %PC.i290
  %2550 = bitcast i8* %2546 to double*
  %2551 = load double, double* %2550, align 1
  %2552 = getelementptr inbounds i8, i8* %2546, i64 8
  %2553 = bitcast i8* %2552 to i64*
  %2554 = load i64, i64* %2553, align 1
  %2555 = bitcast i8* %2547 to double*
  %2556 = load double, double* %2555, align 1
  %2557 = fsub double %2551, %2556
  %2558 = bitcast i8* %2545 to double*
  store double %2557, double* %2558, align 1
  %2559 = getelementptr inbounds i8, i8* %2545, i64 8
  %2560 = bitcast i8* %2559 to i64*
  store i64 %2554, i64* %2560, align 1
  store %struct.Memory* %loadMem_40091f, %struct.Memory** %MEMORY
  %loadMem_400923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 15
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2568 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2567, i64 0, i64 3
  %YMM3.i289 = bitcast %union.VectorReg* %2568 to %"class.std::bitset"*
  %2569 = bitcast %"class.std::bitset"* %YMM3.i289 to i8*
  %2570 = load i64, i64* %RBP.i288
  %2571 = sub i64 %2570, 16
  %2572 = load i64, i64* %PC.i287
  %2573 = add i64 %2572, 5
  store i64 %2573, i64* %PC.i287
  %2574 = inttoptr i64 %2571 to double*
  %2575 = load double, double* %2574
  %2576 = bitcast i8* %2569 to double*
  store double %2575, double* %2576, align 1
  %2577 = getelementptr inbounds i8, i8* %2569, i64 8
  %2578 = bitcast i8* %2577 to double*
  store double 0.000000e+00, double* %2578, align 1
  store %struct.Memory* %loadMem_400923, %struct.Memory** %MEMORY
  %loadMem_400928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 33
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2581 to i64*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2583 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2582, i64 0, i64 3
  %YMM3.i285 = bitcast %union.VectorReg* %2583 to %"class.std::bitset"*
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2585 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2584, i64 0, i64 1
  %XMM1.i286 = bitcast %union.VectorReg* %2585 to %union.vec128_t*
  %2586 = bitcast %"class.std::bitset"* %YMM3.i285 to i8*
  %2587 = bitcast %"class.std::bitset"* %YMM3.i285 to i8*
  %2588 = bitcast %union.vec128_t* %XMM1.i286 to i8*
  %2589 = load i64, i64* %PC.i284
  %2590 = add i64 %2589, 4
  store i64 %2590, i64* %PC.i284
  %2591 = bitcast i8* %2587 to double*
  %2592 = load double, double* %2591, align 1
  %2593 = getelementptr inbounds i8, i8* %2587, i64 8
  %2594 = bitcast i8* %2593 to i64*
  %2595 = load i64, i64* %2594, align 1
  %2596 = bitcast i8* %2588 to double*
  %2597 = load double, double* %2596, align 1
  %2598 = fsub double %2592, %2597
  %2599 = bitcast i8* %2586 to double*
  store double %2598, double* %2599, align 1
  %2600 = getelementptr inbounds i8, i8* %2586, i64 8
  %2601 = bitcast i8* %2600 to i64*
  store i64 %2595, i64* %2601, align 1
  store %struct.Memory* %loadMem_400928, %struct.Memory** %MEMORY
  %loadMem_40092c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 33
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2604 to i64*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 15
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2609 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2608, i64 0, i64 1
  %YMM1.i283 = bitcast %union.VectorReg* %2609 to %"class.std::bitset"*
  %2610 = bitcast %"class.std::bitset"* %YMM1.i283 to i8*
  %2611 = load i64, i64* %RBP.i282
  %2612 = sub i64 %2611, 24
  %2613 = load i64, i64* %PC.i281
  %2614 = add i64 %2613, 5
  store i64 %2614, i64* %PC.i281
  %2615 = inttoptr i64 %2612 to double*
  %2616 = load double, double* %2615
  %2617 = bitcast i8* %2610 to double*
  store double %2616, double* %2617, align 1
  %2618 = getelementptr inbounds i8, i8* %2610, i64 8
  %2619 = bitcast i8* %2618 to double*
  store double 0.000000e+00, double* %2619, align 1
  store %struct.Memory* %loadMem_40092c, %struct.Memory** %MEMORY
  %loadMem_400931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 33
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 15
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2627 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2626, i64 0, i64 0
  %XMM0.i280 = bitcast %union.VectorReg* %2627 to %union.vec128_t*
  %2628 = load i64, i64* %RBP.i279
  %2629 = sub i64 %2628, 160
  %2630 = bitcast %union.vec128_t* %XMM0.i280 to i8*
  %2631 = load i64, i64* %PC.i278
  %2632 = add i64 %2631, 8
  store i64 %2632, i64* %PC.i278
  %2633 = bitcast i8* %2630 to double*
  %2634 = load double, double* %2633, align 1
  %2635 = inttoptr i64 %2629 to double*
  store double %2634, double* %2635
  store %struct.Memory* %loadMem_400931, %struct.Memory** %MEMORY
  %loadMem_400939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2639, i64 0, i64 0
  %YMM0.i276 = bitcast %union.VectorReg* %2640 to %"class.std::bitset"*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2642 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2641, i64 0, i64 2
  %XMM2.i277 = bitcast %union.VectorReg* %2642 to %union.vec128_t*
  %2643 = bitcast %"class.std::bitset"* %YMM0.i276 to i8*
  %2644 = bitcast %union.vec128_t* %XMM2.i277 to i8*
  %2645 = load i64, i64* %PC.i275
  %2646 = add i64 %2645, 3
  store i64 %2646, i64* %PC.i275
  %2647 = bitcast i8* %2644 to <2 x i32>*
  %2648 = load <2 x i32>, <2 x i32>* %2647, align 1
  %2649 = getelementptr inbounds i8, i8* %2644, i64 8
  %2650 = bitcast i8* %2649 to <2 x i32>*
  %2651 = load <2 x i32>, <2 x i32>* %2650, align 1
  %2652 = extractelement <2 x i32> %2648, i32 0
  %2653 = bitcast i8* %2643 to i32*
  store i32 %2652, i32* %2653, align 1
  %2654 = extractelement <2 x i32> %2648, i32 1
  %2655 = getelementptr inbounds i8, i8* %2643, i64 4
  %2656 = bitcast i8* %2655 to i32*
  store i32 %2654, i32* %2656, align 1
  %2657 = extractelement <2 x i32> %2651, i32 0
  %2658 = getelementptr inbounds i8, i8* %2643, i64 8
  %2659 = bitcast i8* %2658 to i32*
  store i32 %2657, i32* %2659, align 1
  %2660 = extractelement <2 x i32> %2651, i32 1
  %2661 = getelementptr inbounds i8, i8* %2643, i64 12
  %2662 = bitcast i8* %2661 to i32*
  store i32 %2660, i32* %2662, align 1
  store %struct.Memory* %loadMem_400939, %struct.Memory** %MEMORY
  %loadMem_40093c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 15
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %2668 to i64*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2669, i64 0, i64 1
  %XMM1.i274 = bitcast %union.VectorReg* %2670 to %union.vec128_t*
  %2671 = load i64, i64* %RBP.i273
  %2672 = sub i64 %2671, 168
  %2673 = bitcast %union.vec128_t* %XMM1.i274 to i8*
  %2674 = load i64, i64* %PC.i272
  %2675 = add i64 %2674, 8
  store i64 %2675, i64* %PC.i272
  %2676 = bitcast i8* %2673 to double*
  %2677 = load double, double* %2676, align 1
  %2678 = inttoptr i64 %2672 to double*
  store double %2677, double* %2678
  store %struct.Memory* %loadMem_40093c, %struct.Memory** %MEMORY
  %loadMem_400944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2683 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2682, i64 0, i64 1
  %YMM1.i270 = bitcast %union.VectorReg* %2683 to %"class.std::bitset"*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2684, i64 0, i64 3
  %XMM3.i271 = bitcast %union.VectorReg* %2685 to %union.vec128_t*
  %2686 = bitcast %"class.std::bitset"* %YMM1.i270 to i8*
  %2687 = bitcast %union.vec128_t* %XMM3.i271 to i8*
  %2688 = load i64, i64* %PC.i269
  %2689 = add i64 %2688, 3
  store i64 %2689, i64* %PC.i269
  %2690 = bitcast i8* %2687 to <2 x i32>*
  %2691 = load <2 x i32>, <2 x i32>* %2690, align 1
  %2692 = getelementptr inbounds i8, i8* %2687, i64 8
  %2693 = bitcast i8* %2692 to <2 x i32>*
  %2694 = load <2 x i32>, <2 x i32>* %2693, align 1
  %2695 = extractelement <2 x i32> %2691, i32 0
  %2696 = bitcast i8* %2686 to i32*
  store i32 %2695, i32* %2696, align 1
  %2697 = extractelement <2 x i32> %2691, i32 1
  %2698 = getelementptr inbounds i8, i8* %2686, i64 4
  %2699 = bitcast i8* %2698 to i32*
  store i32 %2697, i32* %2699, align 1
  %2700 = extractelement <2 x i32> %2694, i32 0
  %2701 = getelementptr inbounds i8, i8* %2686, i64 8
  %2702 = bitcast i8* %2701 to i32*
  store i32 %2700, i32* %2702, align 1
  %2703 = extractelement <2 x i32> %2694, i32 1
  %2704 = getelementptr inbounds i8, i8* %2686, i64 12
  %2705 = bitcast i8* %2704 to i32*
  store i32 %2703, i32* %2705, align 1
  store %struct.Memory* %loadMem_400944, %struct.Memory** %MEMORY
  %loadMem_400947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 33
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 15
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %2711 to i64*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2713 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2712, i64 0, i64 2
  %YMM2.i268 = bitcast %union.VectorReg* %2713 to %"class.std::bitset"*
  %2714 = bitcast %"class.std::bitset"* %YMM2.i268 to i8*
  %2715 = load i64, i64* %RBP.i267
  %2716 = sub i64 %2715, 168
  %2717 = load i64, i64* %PC.i266
  %2718 = add i64 %2717, 8
  store i64 %2718, i64* %PC.i266
  %2719 = inttoptr i64 %2716 to double*
  %2720 = load double, double* %2719
  %2721 = bitcast i8* %2714 to double*
  store double %2720, double* %2721, align 1
  %2722 = getelementptr inbounds i8, i8* %2714, i64 8
  %2723 = bitcast i8* %2722 to double*
  store double 0.000000e+00, double* %2723, align 1
  store %struct.Memory* %loadMem_400947, %struct.Memory** %MEMORY
  %loadMem1_40094f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 33
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %2726 to i64*
  %2727 = load i64, i64* %PC.i265
  %2728 = add i64 %2727, 657
  %2729 = load i64, i64* %PC.i265
  %2730 = add i64 %2729, 5
  %2731 = load i64, i64* %PC.i265
  %2732 = add i64 %2731, 5
  store i64 %2732, i64* %PC.i265
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2734 = load i64, i64* %2733, align 8
  %2735 = add i64 %2734, -8
  %2736 = inttoptr i64 %2735 to i64*
  store i64 %2730, i64* %2736
  store i64 %2735, i64* %2733, align 8
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2728, i64* %2737, align 8
  store %struct.Memory* %loadMem1_40094f, %struct.Memory** %MEMORY
  %loadMem2_40094f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40094f = load i64, i64* %3
  %call2_40094f = call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %loadPC_40094f, %struct.Memory* %loadMem2_40094f)
  store %struct.Memory* %call2_40094f, %struct.Memory** %MEMORY
  %loadMem_400954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 15
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %2743 to i64*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2744, i64 0, i64 1
  %YMM1.i264 = bitcast %union.VectorReg* %2745 to %"class.std::bitset"*
  %2746 = bitcast %"class.std::bitset"* %YMM1.i264 to i8*
  %2747 = load i64, i64* %RBP.i263
  %2748 = sub i64 %2747, 152
  %2749 = load i64, i64* %PC.i262
  %2750 = add i64 %2749, 8
  store i64 %2750, i64* %PC.i262
  %2751 = inttoptr i64 %2748 to double*
  %2752 = load double, double* %2751
  %2753 = bitcast i8* %2746 to double*
  store double %2752, double* %2753, align 1
  %2754 = getelementptr inbounds i8, i8* %2746, i64 8
  %2755 = bitcast i8* %2754 to double*
  store double 0.000000e+00, double* %2755, align 1
  store %struct.Memory* %loadMem_400954, %struct.Memory** %MEMORY
  %loadMem_40095c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 15
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2763 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2762, i64 0, i64 0
  %XMM0.i261 = bitcast %union.VectorReg* %2763 to %union.vec128_t*
  %2764 = load i64, i64* %RBP.i260
  %2765 = sub i64 %2764, 176
  %2766 = bitcast %union.vec128_t* %XMM0.i261 to i8*
  %2767 = load i64, i64* %PC.i259
  %2768 = add i64 %2767, 8
  store i64 %2768, i64* %PC.i259
  %2769 = bitcast i8* %2766 to double*
  %2770 = load double, double* %2769, align 1
  %2771 = inttoptr i64 %2765 to double*
  store double %2770, double* %2771
  store %struct.Memory* %loadMem_40095c, %struct.Memory** %MEMORY
  %loadMem_400964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 33
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2774 to i64*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2776 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2775, i64 0, i64 0
  %YMM0.i257 = bitcast %union.VectorReg* %2776 to %"class.std::bitset"*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2778 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2777, i64 0, i64 1
  %XMM1.i258 = bitcast %union.VectorReg* %2778 to %union.vec128_t*
  %2779 = bitcast %"class.std::bitset"* %YMM0.i257 to i8*
  %2780 = bitcast %union.vec128_t* %XMM1.i258 to i8*
  %2781 = load i64, i64* %PC.i256
  %2782 = add i64 %2781, 3
  store i64 %2782, i64* %PC.i256
  %2783 = bitcast i8* %2780 to <2 x i32>*
  %2784 = load <2 x i32>, <2 x i32>* %2783, align 1
  %2785 = getelementptr inbounds i8, i8* %2780, i64 8
  %2786 = bitcast i8* %2785 to <2 x i32>*
  %2787 = load <2 x i32>, <2 x i32>* %2786, align 1
  %2788 = extractelement <2 x i32> %2784, i32 0
  %2789 = bitcast i8* %2779 to i32*
  store i32 %2788, i32* %2789, align 1
  %2790 = extractelement <2 x i32> %2784, i32 1
  %2791 = getelementptr inbounds i8, i8* %2779, i64 4
  %2792 = bitcast i8* %2791 to i32*
  store i32 %2790, i32* %2792, align 1
  %2793 = extractelement <2 x i32> %2787, i32 0
  %2794 = getelementptr inbounds i8, i8* %2779, i64 8
  %2795 = bitcast i8* %2794 to i32*
  store i32 %2793, i32* %2795, align 1
  %2796 = extractelement <2 x i32> %2787, i32 1
  %2797 = getelementptr inbounds i8, i8* %2779, i64 12
  %2798 = bitcast i8* %2797 to i32*
  store i32 %2796, i32* %2798, align 1
  store %struct.Memory* %loadMem_400964, %struct.Memory** %MEMORY
  %loadMem_400967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 33
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 15
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %2804 to i64*
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2806 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2805, i64 0, i64 1
  %YMM1.i255 = bitcast %union.VectorReg* %2806 to %"class.std::bitset"*
  %2807 = bitcast %"class.std::bitset"* %YMM1.i255 to i8*
  %2808 = load i64, i64* %RBP.i254
  %2809 = sub i64 %2808, 160
  %2810 = load i64, i64* %PC.i253
  %2811 = add i64 %2810, 8
  store i64 %2811, i64* %PC.i253
  %2812 = inttoptr i64 %2809 to double*
  %2813 = load double, double* %2812
  %2814 = bitcast i8* %2807 to double*
  store double %2813, double* %2814, align 1
  %2815 = getelementptr inbounds i8, i8* %2807, i64 8
  %2816 = bitcast i8* %2815 to double*
  store double 0.000000e+00, double* %2816, align 1
  store %struct.Memory* %loadMem_400967, %struct.Memory** %MEMORY
  %loadMem_40096f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 33
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2819 to i64*
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 15
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2823, i64 0, i64 2
  %YMM2.i252 = bitcast %union.VectorReg* %2824 to %"class.std::bitset"*
  %2825 = bitcast %"class.std::bitset"* %YMM2.i252 to i8*
  %2826 = load i64, i64* %RBP.i251
  %2827 = sub i64 %2826, 176
  %2828 = load i64, i64* %PC.i250
  %2829 = add i64 %2828, 8
  store i64 %2829, i64* %PC.i250
  %2830 = inttoptr i64 %2827 to double*
  %2831 = load double, double* %2830
  %2832 = bitcast i8* %2825 to double*
  store double %2831, double* %2832, align 1
  %2833 = getelementptr inbounds i8, i8* %2825, i64 8
  %2834 = bitcast i8* %2833 to double*
  store double 0.000000e+00, double* %2834, align 1
  store %struct.Memory* %loadMem_40096f, %struct.Memory** %MEMORY
  %loadMem1_400977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 33
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2837 to i64*
  %2838 = load i64, i64* %PC.i249
  %2839 = add i64 %2838, 953
  %2840 = load i64, i64* %PC.i249
  %2841 = add i64 %2840, 5
  %2842 = load i64, i64* %PC.i249
  %2843 = add i64 %2842, 5
  store i64 %2843, i64* %PC.i249
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2845 = load i64, i64* %2844, align 8
  %2846 = add i64 %2845, -8
  %2847 = inttoptr i64 %2846 to i64*
  store i64 %2841, i64* %2847
  store i64 %2846, i64* %2844, align 8
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2839, i64* %2848, align 8
  store %struct.Memory* %loadMem1_400977, %struct.Memory** %MEMORY
  %loadMem2_400977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400977 = load i64, i64* %3
  %call2_400977 = call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %loadPC_400977, %struct.Memory* %loadMem2_400977)
  store %struct.Memory* %call2_400977, %struct.Memory** %MEMORY
  %loadMem_40097c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 33
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2851 to i64*
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 15
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %2854 to i64*
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2856 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2855, i64 0, i64 1
  %YMM1.i248 = bitcast %union.VectorReg* %2856 to %"class.std::bitset"*
  %2857 = bitcast %"class.std::bitset"* %YMM1.i248 to i8*
  %2858 = load i64, i64* %RBP.i247
  %2859 = sub i64 %2858, 104
  %2860 = load i64, i64* %PC.i246
  %2861 = add i64 %2860, 5
  store i64 %2861, i64* %PC.i246
  %2862 = inttoptr i64 %2859 to double*
  %2863 = load double, double* %2862
  %2864 = bitcast i8* %2857 to double*
  store double %2863, double* %2864, align 1
  %2865 = getelementptr inbounds i8, i8* %2857, i64 8
  %2866 = bitcast i8* %2865 to double*
  store double 0.000000e+00, double* %2866, align 1
  store %struct.Memory* %loadMem_40097c, %struct.Memory** %MEMORY
  %loadMem_400981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 33
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 15
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2874 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2873, i64 0, i64 0
  %XMM0.i245 = bitcast %union.VectorReg* %2874 to %union.vec128_t*
  %2875 = load i64, i64* %RBP.i244
  %2876 = sub i64 %2875, 184
  %2877 = bitcast %union.vec128_t* %XMM0.i245 to i8*
  %2878 = load i64, i64* %PC.i243
  %2879 = add i64 %2878, 8
  store i64 %2879, i64* %PC.i243
  %2880 = bitcast i8* %2877 to double*
  %2881 = load double, double* %2880, align 1
  %2882 = inttoptr i64 %2876 to double*
  store double %2881, double* %2882
  store %struct.Memory* %loadMem_400981, %struct.Memory** %MEMORY
  %loadMem_400989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2886, i64 0, i64 0
  %YMM0.i241 = bitcast %union.VectorReg* %2887 to %"class.std::bitset"*
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2889 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2888, i64 0, i64 1
  %XMM1.i242 = bitcast %union.VectorReg* %2889 to %union.vec128_t*
  %2890 = bitcast %"class.std::bitset"* %YMM0.i241 to i8*
  %2891 = bitcast %union.vec128_t* %XMM1.i242 to i8*
  %2892 = load i64, i64* %PC.i240
  %2893 = add i64 %2892, 3
  store i64 %2893, i64* %PC.i240
  %2894 = bitcast i8* %2891 to <2 x i32>*
  %2895 = load <2 x i32>, <2 x i32>* %2894, align 1
  %2896 = getelementptr inbounds i8, i8* %2891, i64 8
  %2897 = bitcast i8* %2896 to <2 x i32>*
  %2898 = load <2 x i32>, <2 x i32>* %2897, align 1
  %2899 = extractelement <2 x i32> %2895, i32 0
  %2900 = bitcast i8* %2890 to i32*
  store i32 %2899, i32* %2900, align 1
  %2901 = extractelement <2 x i32> %2895, i32 1
  %2902 = getelementptr inbounds i8, i8* %2890, i64 4
  %2903 = bitcast i8* %2902 to i32*
  store i32 %2901, i32* %2903, align 1
  %2904 = extractelement <2 x i32> %2898, i32 0
  %2905 = getelementptr inbounds i8, i8* %2890, i64 8
  %2906 = bitcast i8* %2905 to i32*
  store i32 %2904, i32* %2906, align 1
  %2907 = extractelement <2 x i32> %2898, i32 1
  %2908 = getelementptr inbounds i8, i8* %2890, i64 12
  %2909 = bitcast i8* %2908 to i32*
  store i32 %2907, i32* %2909, align 1
  store %struct.Memory* %loadMem_400989, %struct.Memory** %MEMORY
  %loadMem_40098c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 15
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2917 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2916, i64 0, i64 1
  %YMM1.i239 = bitcast %union.VectorReg* %2917 to %"class.std::bitset"*
  %2918 = bitcast %"class.std::bitset"* %YMM1.i239 to i8*
  %2919 = load i64, i64* %RBP.i238
  %2920 = sub i64 %2919, 136
  %2921 = load i64, i64* %PC.i237
  %2922 = add i64 %2921, 8
  store i64 %2922, i64* %PC.i237
  %2923 = inttoptr i64 %2920 to double*
  %2924 = load double, double* %2923
  %2925 = bitcast i8* %2918 to double*
  store double %2924, double* %2925, align 1
  %2926 = getelementptr inbounds i8, i8* %2918, i64 8
  %2927 = bitcast i8* %2926 to double*
  store double 0.000000e+00, double* %2927, align 1
  store %struct.Memory* %loadMem_40098c, %struct.Memory** %MEMORY
  %loadMem_400994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 15
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2934, i64 0, i64 2
  %YMM2.i236 = bitcast %union.VectorReg* %2935 to %"class.std::bitset"*
  %2936 = bitcast %"class.std::bitset"* %YMM2.i236 to i8*
  %2937 = load i64, i64* %RBP.i235
  %2938 = sub i64 %2937, 184
  %2939 = load i64, i64* %PC.i234
  %2940 = add i64 %2939, 8
  store i64 %2940, i64* %PC.i234
  %2941 = inttoptr i64 %2938 to double*
  %2942 = load double, double* %2941
  %2943 = bitcast i8* %2936 to double*
  store double %2942, double* %2943, align 1
  %2944 = getelementptr inbounds i8, i8* %2936, i64 8
  %2945 = bitcast i8* %2944 to double*
  store double 0.000000e+00, double* %2945, align 1
  store %struct.Memory* %loadMem_400994, %struct.Memory** %MEMORY
  %loadMem1_40099c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2948 to i64*
  %2949 = load i64, i64* %PC.i233
  %2950 = add i64 %2949, 916
  %2951 = load i64, i64* %PC.i233
  %2952 = add i64 %2951, 5
  %2953 = load i64, i64* %PC.i233
  %2954 = add i64 %2953, 5
  store i64 %2954, i64* %PC.i233
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2956 = load i64, i64* %2955, align 8
  %2957 = add i64 %2956, -8
  %2958 = inttoptr i64 %2957 to i64*
  store i64 %2952, i64* %2958
  store i64 %2957, i64* %2955, align 8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2950, i64* %2959, align 8
  store %struct.Memory* %loadMem1_40099c, %struct.Memory** %MEMORY
  %loadMem2_40099c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40099c = load i64, i64* %3
  %call2_40099c = call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %loadPC_40099c, %struct.Memory* %loadMem2_40099c)
  store %struct.Memory* %call2_40099c, %struct.Memory** %MEMORY
  %loadMem_4009a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 33
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2962 to i64*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2964 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2963, i64 0, i64 1
  %YMM1.i232 = bitcast %union.VectorReg* %2964 to %"class.std::bitset"*
  %2965 = bitcast %"class.std::bitset"* %YMM1.i232 to i8*
  %2966 = load i64, i64* %PC.i231
  %2967 = load i64, i64* %PC.i231
  %2968 = add i64 %2967, 8
  store i64 %2968, i64* %PC.i231
  %2969 = load double, double* bitcast (%G_0x497__rip__4196777__type* @G_0x497__rip__4196777_ to double*)
  %2970 = bitcast i8* %2965 to double*
  store double %2969, double* %2970, align 1
  %2971 = getelementptr inbounds i8, i8* %2965, i64 8
  %2972 = bitcast i8* %2971 to double*
  store double 0.000000e+00, double* %2972, align 1
  store %struct.Memory* %loadMem_4009a1, %struct.Memory** %MEMORY
  %loadMem_4009a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 33
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 15
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2979, i64 0, i64 2
  %YMM2.i230 = bitcast %union.VectorReg* %2980 to %"class.std::bitset"*
  %2981 = bitcast %"class.std::bitset"* %YMM2.i230 to i8*
  %2982 = load i64, i64* %RBP.i229
  %2983 = sub i64 %2982, 56
  %2984 = load i64, i64* %PC.i228
  %2985 = add i64 %2984, 5
  store i64 %2985, i64* %PC.i228
  %2986 = inttoptr i64 %2983 to double*
  %2987 = load double, double* %2986
  %2988 = bitcast i8* %2981 to double*
  store double %2987, double* %2988, align 1
  %2989 = getelementptr inbounds i8, i8* %2981, i64 8
  %2990 = bitcast i8* %2989 to double*
  store double 0.000000e+00, double* %2990, align 1
  store %struct.Memory* %loadMem_4009a9, %struct.Memory** %MEMORY
  %loadMem_4009ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 33
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2993 to i64*
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 15
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2998 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2997, i64 0, i64 3
  %YMM3.i227 = bitcast %union.VectorReg* %2998 to %"class.std::bitset"*
  %2999 = bitcast %"class.std::bitset"* %YMM3.i227 to i8*
  %3000 = load i64, i64* %RBP.i226
  %3001 = sub i64 %3000, 48
  %3002 = load i64, i64* %PC.i225
  %3003 = add i64 %3002, 5
  store i64 %3003, i64* %PC.i225
  %3004 = inttoptr i64 %3001 to double*
  %3005 = load double, double* %3004
  %3006 = bitcast i8* %2999 to double*
  store double %3005, double* %3006, align 1
  %3007 = getelementptr inbounds i8, i8* %2999, i64 8
  %3008 = bitcast i8* %3007 to double*
  store double 0.000000e+00, double* %3008, align 1
  store %struct.Memory* %loadMem_4009ae, %struct.Memory** %MEMORY
  %loadMem_4009b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 33
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3011 to i64*
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 1
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 15
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %3017 to i64*
  %3018 = load i64, i64* %RBP.i224
  %3019 = sub i64 %3018, 72
  %3020 = load i64, i64* %PC.i222
  %3021 = add i64 %3020, 3
  store i64 %3021, i64* %PC.i222
  %3022 = inttoptr i64 %3019 to i32*
  %3023 = load i32, i32* %3022
  %3024 = zext i32 %3023 to i64
  store i64 %3024, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_4009b3, %struct.Memory** %MEMORY
  %loadMem_4009b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 33
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 1
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %3030 to i64*
  %3031 = load i64, i64* %RAX.i221
  %3032 = load i64, i64* %PC.i220
  %3033 = add i64 %3032, 3
  store i64 %3033, i64* %PC.i220
  %3034 = trunc i64 %3031 to i32
  %3035 = add i32 1, %3034
  %3036 = zext i32 %3035 to i64
  store i64 %3036, i64* %RAX.i221, align 8
  %3037 = icmp ult i32 %3035, %3034
  %3038 = icmp ult i32 %3035, 1
  %3039 = or i1 %3037, %3038
  %3040 = zext i1 %3039 to i8
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3040, i8* %3041, align 1
  %3042 = and i32 %3035, 255
  %3043 = call i32 @llvm.ctpop.i32(i32 %3042)
  %3044 = trunc i32 %3043 to i8
  %3045 = and i8 %3044, 1
  %3046 = xor i8 %3045, 1
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3046, i8* %3047, align 1
  %3048 = xor i64 1, %3031
  %3049 = trunc i64 %3048 to i32
  %3050 = xor i32 %3049, %3035
  %3051 = lshr i32 %3050, 4
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3053, i8* %3054, align 1
  %3055 = icmp eq i32 %3035, 0
  %3056 = zext i1 %3055 to i8
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3056, i8* %3057, align 1
  %3058 = lshr i32 %3035, 31
  %3059 = trunc i32 %3058 to i8
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3059, i8* %3060, align 1
  %3061 = lshr i32 %3034, 31
  %3062 = xor i32 %3058, %3061
  %3063 = add i32 %3062, %3058
  %3064 = icmp eq i32 %3063, 2
  %3065 = zext i1 %3064 to i8
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3065, i8* %3066, align 1
  store %struct.Memory* %loadMem_4009b6, %struct.Memory** %MEMORY
  %loadMem_4009b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 33
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3069 to i64*
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 1
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %EAX.i218 = bitcast %union.anon* %3072 to i32*
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 5
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %3075 to i64*
  %3076 = load i32, i32* %EAX.i218
  %3077 = zext i32 %3076 to i64
  %3078 = load i64, i64* %PC.i217
  %3079 = add i64 %3078, 3
  store i64 %3079, i64* %PC.i217
  %3080 = shl i64 %3077, 32
  %3081 = ashr exact i64 %3080, 32
  store i64 %3081, i64* %RCX.i219, align 8
  store %struct.Memory* %loadMem_4009b9, %struct.Memory** %MEMORY
  %loadMem_4009bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 5
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %3087 to i64*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 11
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %RDI.i216 = bitcast %union.anon* %3090 to i64*
  %3091 = load i64, i64* %RCX.i215
  %3092 = mul i64 %3091, 4
  %3093 = add i64 %3092, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %3094 = load i64, i64* %PC.i214
  %3095 = add i64 %3094, 7
  store i64 %3095, i64* %PC.i214
  %3096 = inttoptr i64 %3093 to i32*
  %3097 = load i32, i32* %3096
  %3098 = zext i32 %3097 to i64
  store i64 %3098, i64* %RDI.i216, align 8
  store %struct.Memory* %loadMem_4009bc, %struct.Memory** %MEMORY
  %loadMem_4009c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 15
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %3104 to i64*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3105, i64 0, i64 4
  %YMM4.i213 = bitcast %union.VectorReg* %3106 to %"class.std::bitset"*
  %3107 = bitcast %"class.std::bitset"* %YMM4.i213 to i8*
  %3108 = load i64, i64* %RBP.i212
  %3109 = sub i64 %3108, 8
  %3110 = load i64, i64* %PC.i211
  %3111 = add i64 %3110, 5
  store i64 %3111, i64* %PC.i211
  %3112 = inttoptr i64 %3109 to double*
  %3113 = load double, double* %3112
  %3114 = bitcast i8* %3107 to double*
  store double %3113, double* %3114, align 1
  %3115 = getelementptr inbounds i8, i8* %3107, i64 8
  %3116 = bitcast i8* %3115 to double*
  store double 0.000000e+00, double* %3116, align 1
  store %struct.Memory* %loadMem_4009c3, %struct.Memory** %MEMORY
  %loadMem_4009c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 33
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 15
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3124 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3123, i64 0, i64 5
  %YMM5.i210 = bitcast %union.VectorReg* %3124 to %"class.std::bitset"*
  %3125 = bitcast %"class.std::bitset"* %YMM5.i210 to i8*
  %3126 = load i64, i64* %RBP.i209
  %3127 = sub i64 %3126, 16
  %3128 = load i64, i64* %PC.i208
  %3129 = add i64 %3128, 5
  store i64 %3129, i64* %PC.i208
  %3130 = inttoptr i64 %3127 to double*
  %3131 = load double, double* %3130
  %3132 = bitcast i8* %3125 to double*
  store double %3131, double* %3132, align 1
  %3133 = getelementptr inbounds i8, i8* %3125, i64 8
  %3134 = bitcast i8* %3133 to double*
  store double 0.000000e+00, double* %3134, align 1
  store %struct.Memory* %loadMem_4009c8, %struct.Memory** %MEMORY
  %loadMem_4009cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 33
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3137 to i64*
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 15
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %3140 to i64*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3142 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3141, i64 0, i64 6
  %YMM6.i207 = bitcast %union.VectorReg* %3142 to %"class.std::bitset"*
  %3143 = bitcast %"class.std::bitset"* %YMM6.i207 to i8*
  %3144 = load i64, i64* %RBP.i206
  %3145 = sub i64 %3144, 24
  %3146 = load i64, i64* %PC.i205
  %3147 = add i64 %3146, 5
  store i64 %3147, i64* %PC.i205
  %3148 = inttoptr i64 %3145 to double*
  %3149 = load double, double* %3148
  %3150 = bitcast i8* %3143 to double*
  store double %3149, double* %3150, align 1
  %3151 = getelementptr inbounds i8, i8* %3143, i64 8
  %3152 = bitcast i8* %3151 to double*
  store double 0.000000e+00, double* %3152, align 1
  store %struct.Memory* %loadMem_4009cd, %struct.Memory** %MEMORY
  %loadMem_4009d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 33
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3156, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %3157 to %"class.std::bitset"*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3159 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3158, i64 0, i64 1
  %XMM1.i204 = bitcast %union.VectorReg* %3159 to %union.vec128_t*
  %3160 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %3161 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %3162 = bitcast %union.vec128_t* %XMM1.i204 to i8*
  %3163 = load i64, i64* %PC.i203
  %3164 = add i64 %3163, 4
  store i64 %3164, i64* %PC.i203
  %3165 = bitcast i8* %3161 to double*
  %3166 = load double, double* %3165, align 1
  %3167 = getelementptr inbounds i8, i8* %3161, i64 8
  %3168 = bitcast i8* %3167 to i64*
  %3169 = load i64, i64* %3168, align 1
  %3170 = bitcast i8* %3162 to double*
  %3171 = load double, double* %3170, align 1
  %3172 = fsub double %3166, %3171
  %3173 = bitcast i8* %3160 to double*
  store double %3172, double* %3173, align 1
  %3174 = getelementptr inbounds i8, i8* %3160, i64 8
  %3175 = bitcast i8* %3174 to i64*
  store i64 %3169, i64* %3175, align 1
  store %struct.Memory* %loadMem_4009d2, %struct.Memory** %MEMORY
  %loadMem_4009d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 33
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3178 to i64*
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3180 = getelementptr inbounds %struct.GPR, %struct.GPR* %3179, i32 0, i32 15
  %3181 = getelementptr inbounds %struct.Reg, %struct.Reg* %3180, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %3181 to i64*
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3182, i64 0, i64 0
  %XMM0.i202 = bitcast %union.VectorReg* %3183 to %union.vec128_t*
  %3184 = load i64, i64* %RBP.i201
  %3185 = sub i64 %3184, 192
  %3186 = bitcast %union.vec128_t* %XMM0.i202 to i8*
  %3187 = load i64, i64* %PC.i200
  %3188 = add i64 %3187, 8
  store i64 %3188, i64* %PC.i200
  %3189 = bitcast i8* %3186 to double*
  %3190 = load double, double* %3189, align 1
  %3191 = inttoptr i64 %3185 to double*
  store double %3190, double* %3191
  store %struct.Memory* %loadMem_4009d6, %struct.Memory** %MEMORY
  %loadMem_4009de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 33
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3196 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3195, i64 0, i64 0
  %YMM0.i198 = bitcast %union.VectorReg* %3196 to %"class.std::bitset"*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3198 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3197, i64 0, i64 4
  %XMM4.i199 = bitcast %union.VectorReg* %3198 to %union.vec128_t*
  %3199 = bitcast %"class.std::bitset"* %YMM0.i198 to i8*
  %3200 = bitcast %union.vec128_t* %XMM4.i199 to i8*
  %3201 = load i64, i64* %PC.i197
  %3202 = add i64 %3201, 3
  store i64 %3202, i64* %PC.i197
  %3203 = bitcast i8* %3200 to <2 x i32>*
  %3204 = load <2 x i32>, <2 x i32>* %3203, align 1
  %3205 = getelementptr inbounds i8, i8* %3200, i64 8
  %3206 = bitcast i8* %3205 to <2 x i32>*
  %3207 = load <2 x i32>, <2 x i32>* %3206, align 1
  %3208 = extractelement <2 x i32> %3204, i32 0
  %3209 = bitcast i8* %3199 to i32*
  store i32 %3208, i32* %3209, align 1
  %3210 = extractelement <2 x i32> %3204, i32 1
  %3211 = getelementptr inbounds i8, i8* %3199, i64 4
  %3212 = bitcast i8* %3211 to i32*
  store i32 %3210, i32* %3212, align 1
  %3213 = extractelement <2 x i32> %3207, i32 0
  %3214 = getelementptr inbounds i8, i8* %3199, i64 8
  %3215 = bitcast i8* %3214 to i32*
  store i32 %3213, i32* %3215, align 1
  %3216 = extractelement <2 x i32> %3207, i32 1
  %3217 = getelementptr inbounds i8, i8* %3199, i64 12
  %3218 = bitcast i8* %3217 to i32*
  store i32 %3216, i32* %3218, align 1
  store %struct.Memory* %loadMem_4009de, %struct.Memory** %MEMORY
  %loadMem_4009e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3223 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3222, i64 0, i64 1
  %YMM1.i195 = bitcast %union.VectorReg* %3223 to %"class.std::bitset"*
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3224, i64 0, i64 5
  %XMM5.i196 = bitcast %union.VectorReg* %3225 to %union.vec128_t*
  %3226 = bitcast %"class.std::bitset"* %YMM1.i195 to i8*
  %3227 = bitcast %union.vec128_t* %XMM5.i196 to i8*
  %3228 = load i64, i64* %PC.i194
  %3229 = add i64 %3228, 3
  store i64 %3229, i64* %PC.i194
  %3230 = bitcast i8* %3227 to <2 x i32>*
  %3231 = load <2 x i32>, <2 x i32>* %3230, align 1
  %3232 = getelementptr inbounds i8, i8* %3227, i64 8
  %3233 = bitcast i8* %3232 to <2 x i32>*
  %3234 = load <2 x i32>, <2 x i32>* %3233, align 1
  %3235 = extractelement <2 x i32> %3231, i32 0
  %3236 = bitcast i8* %3226 to i32*
  store i32 %3235, i32* %3236, align 1
  %3237 = extractelement <2 x i32> %3231, i32 1
  %3238 = getelementptr inbounds i8, i8* %3226, i64 4
  %3239 = bitcast i8* %3238 to i32*
  store i32 %3237, i32* %3239, align 1
  %3240 = extractelement <2 x i32> %3234, i32 0
  %3241 = getelementptr inbounds i8, i8* %3226, i64 8
  %3242 = bitcast i8* %3241 to i32*
  store i32 %3240, i32* %3242, align 1
  %3243 = extractelement <2 x i32> %3234, i32 1
  %3244 = getelementptr inbounds i8, i8* %3226, i64 12
  %3245 = bitcast i8* %3244 to i32*
  store i32 %3243, i32* %3245, align 1
  store %struct.Memory* %loadMem_4009e1, %struct.Memory** %MEMORY
  %loadMem_4009e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 33
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 15
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %3251 to i64*
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3252, i64 0, i64 2
  %XMM2.i193 = bitcast %union.VectorReg* %3253 to %union.vec128_t*
  %3254 = load i64, i64* %RBP.i192
  %3255 = sub i64 %3254, 200
  %3256 = bitcast %union.vec128_t* %XMM2.i193 to i8*
  %3257 = load i64, i64* %PC.i191
  %3258 = add i64 %3257, 8
  store i64 %3258, i64* %PC.i191
  %3259 = bitcast i8* %3256 to double*
  %3260 = load double, double* %3259, align 1
  %3261 = inttoptr i64 %3255 to double*
  store double %3260, double* %3261
  store %struct.Memory* %loadMem_4009e4, %struct.Memory** %MEMORY
  %loadMem_4009ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 33
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3266 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3265, i64 0, i64 2
  %YMM2.i190 = bitcast %union.VectorReg* %3266 to %"class.std::bitset"*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3267, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %3268 to %union.vec128_t*
  %3269 = bitcast %"class.std::bitset"* %YMM2.i190 to i8*
  %3270 = bitcast %union.vec128_t* %XMM6.i to i8*
  %3271 = load i64, i64* %PC.i189
  %3272 = add i64 %3271, 3
  store i64 %3272, i64* %PC.i189
  %3273 = bitcast i8* %3270 to <2 x i32>*
  %3274 = load <2 x i32>, <2 x i32>* %3273, align 1
  %3275 = getelementptr inbounds i8, i8* %3270, i64 8
  %3276 = bitcast i8* %3275 to <2 x i32>*
  %3277 = load <2 x i32>, <2 x i32>* %3276, align 1
  %3278 = extractelement <2 x i32> %3274, i32 0
  %3279 = bitcast i8* %3269 to i32*
  store i32 %3278, i32* %3279, align 1
  %3280 = extractelement <2 x i32> %3274, i32 1
  %3281 = getelementptr inbounds i8, i8* %3269, i64 4
  %3282 = bitcast i8* %3281 to i32*
  store i32 %3280, i32* %3282, align 1
  %3283 = extractelement <2 x i32> %3277, i32 0
  %3284 = getelementptr inbounds i8, i8* %3269, i64 8
  %3285 = bitcast i8* %3284 to i32*
  store i32 %3283, i32* %3285, align 1
  %3286 = extractelement <2 x i32> %3277, i32 1
  %3287 = getelementptr inbounds i8, i8* %3269, i64 12
  %3288 = bitcast i8* %3287 to i32*
  store i32 %3286, i32* %3288, align 1
  store %struct.Memory* %loadMem_4009ec, %struct.Memory** %MEMORY
  %loadMem_4009ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 33
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 15
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %3294 to i64*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3296 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3295, i64 0, i64 3
  %XMM3.i188 = bitcast %union.VectorReg* %3296 to %union.vec128_t*
  %3297 = load i64, i64* %RBP.i187
  %3298 = sub i64 %3297, 208
  %3299 = bitcast %union.vec128_t* %XMM3.i188 to i8*
  %3300 = load i64, i64* %PC.i186
  %3301 = add i64 %3300, 8
  store i64 %3301, i64* %PC.i186
  %3302 = bitcast i8* %3299 to double*
  %3303 = load double, double* %3302, align 1
  %3304 = inttoptr i64 %3298 to double*
  store double %3303, double* %3304
  store %struct.Memory* %loadMem_4009ef, %struct.Memory** %MEMORY
  %loadMem1_4009f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3307 to i64*
  %3308 = load i64, i64* %PC.i185
  %3309 = add i64 %3308, 489
  %3310 = load i64, i64* %PC.i185
  %3311 = add i64 %3310, 5
  %3312 = load i64, i64* %PC.i185
  %3313 = add i64 %3312, 5
  store i64 %3313, i64* %PC.i185
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3315 = load i64, i64* %3314, align 8
  %3316 = add i64 %3315, -8
  %3317 = inttoptr i64 %3316 to i64*
  store i64 %3311, i64* %3317
  store i64 %3316, i64* %3314, align 8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3309, i64* %3318, align 8
  store %struct.Memory* %loadMem1_4009f7, %struct.Memory** %MEMORY
  %loadMem2_4009f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4009f7 = load i64, i64* %3
  %call2_4009f7 = call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %loadPC_4009f7, %struct.Memory* %loadMem2_4009f7)
  store %struct.Memory* %call2_4009f7, %struct.Memory** %MEMORY
  %loadMem_4009fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 33
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %3321 to i64*
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3323 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3322, i64 0, i64 1
  %YMM1.i184 = bitcast %union.VectorReg* %3323 to %"class.std::bitset"*
  %3324 = bitcast %"class.std::bitset"* %YMM1.i184 to i8*
  %3325 = load i64, i64* %PC.i183
  %3326 = load i64, i64* %PC.i183
  %3327 = add i64 %3326, 8
  store i64 %3327, i64* %PC.i183
  %3328 = load double, double* bitcast (%G_0x43c__rip__4196868__type* @G_0x43c__rip__4196868_ to double*)
  %3329 = bitcast i8* %3324 to double*
  store double %3328, double* %3329, align 1
  %3330 = getelementptr inbounds i8, i8* %3324, i64 8
  %3331 = bitcast i8* %3330 to double*
  store double 0.000000e+00, double* %3331, align 1
  store %struct.Memory* %loadMem_4009fc, %struct.Memory** %MEMORY
  %loadMem_400a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 33
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3334 to i64*
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 1
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %3337 to i64*
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 15
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %3340 to i64*
  %3341 = load i64, i64* %RBP.i182
  %3342 = sub i64 %3341, 84
  %3343 = load i64, i64* %PC.i180
  %3344 = add i64 %3343, 3
  store i64 %3344, i64* %PC.i180
  %3345 = inttoptr i64 %3342 to i32*
  %3346 = load i32, i32* %3345
  %3347 = zext i32 %3346 to i64
  store i64 %3347, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_400a04, %struct.Memory** %MEMORY
  %loadMem_400a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 1
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %3353 to i64*
  %3354 = load i64, i64* %RAX.i179
  %3355 = load i64, i64* %PC.i178
  %3356 = add i64 %3355, 3
  store i64 %3356, i64* %PC.i178
  %3357 = trunc i64 %3354 to i32
  %3358 = add i32 1, %3357
  %3359 = zext i32 %3358 to i64
  store i64 %3359, i64* %RAX.i179, align 8
  %3360 = icmp ult i32 %3358, %3357
  %3361 = icmp ult i32 %3358, 1
  %3362 = or i1 %3360, %3361
  %3363 = zext i1 %3362 to i8
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3363, i8* %3364, align 1
  %3365 = and i32 %3358, 255
  %3366 = call i32 @llvm.ctpop.i32(i32 %3365)
  %3367 = trunc i32 %3366 to i8
  %3368 = and i8 %3367, 1
  %3369 = xor i8 %3368, 1
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3369, i8* %3370, align 1
  %3371 = xor i64 1, %3354
  %3372 = trunc i64 %3371 to i32
  %3373 = xor i32 %3372, %3358
  %3374 = lshr i32 %3373, 4
  %3375 = trunc i32 %3374 to i8
  %3376 = and i8 %3375, 1
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3376, i8* %3377, align 1
  %3378 = icmp eq i32 %3358, 0
  %3379 = zext i1 %3378 to i8
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3379, i8* %3380, align 1
  %3381 = lshr i32 %3358, 31
  %3382 = trunc i32 %3381 to i8
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3382, i8* %3383, align 1
  %3384 = lshr i32 %3357, 31
  %3385 = xor i32 %3381, %3384
  %3386 = add i32 %3385, %3381
  %3387 = icmp eq i32 %3386, 2
  %3388 = zext i1 %3387 to i8
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3388, i8* %3389, align 1
  store %struct.Memory* %loadMem_400a07, %struct.Memory** %MEMORY
  %loadMem_400a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 33
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3392 to i64*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 1
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %EAX.i176 = bitcast %union.anon* %3395 to i32*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 5
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %3398 to i64*
  %3399 = load i32, i32* %EAX.i176
  %3400 = zext i32 %3399 to i64
  %3401 = load i64, i64* %PC.i175
  %3402 = add i64 %3401, 3
  store i64 %3402, i64* %PC.i175
  %3403 = shl i64 %3400, 32
  %3404 = ashr exact i64 %3403, 32
  store i64 %3404, i64* %RCX.i177, align 8
  store %struct.Memory* %loadMem_400a0a, %struct.Memory** %MEMORY
  %loadMem_400a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 5
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 11
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RDI.i174 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %RCX.i173
  %3415 = mul i64 %3414, 4
  %3416 = add i64 %3415, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %3417 = load i64, i64* %PC.i172
  %3418 = add i64 %3417, 7
  store i64 %3418, i64* %PC.i172
  %3419 = inttoptr i64 %3416 to i32*
  %3420 = load i32, i32* %3419
  %3421 = zext i32 %3420 to i64
  store i64 %3421, i64* %RDI.i174, align 8
  store %struct.Memory* %loadMem_400a0d, %struct.Memory** %MEMORY
  %loadMem_400a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 33
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3424 to i64*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 15
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %3427 to i64*
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3429 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3428, i64 0, i64 2
  %YMM2.i171 = bitcast %union.VectorReg* %3429 to %"class.std::bitset"*
  %3430 = bitcast %"class.std::bitset"* %YMM2.i171 to i8*
  %3431 = load i64, i64* %RBP.i170
  %3432 = sub i64 %3431, 8
  %3433 = load i64, i64* %PC.i169
  %3434 = add i64 %3433, 5
  store i64 %3434, i64* %PC.i169
  %3435 = inttoptr i64 %3432 to double*
  %3436 = load double, double* %3435
  %3437 = bitcast i8* %3430 to double*
  store double %3436, double* %3437, align 1
  %3438 = getelementptr inbounds i8, i8* %3430, i64 8
  %3439 = bitcast i8* %3438 to double*
  store double 0.000000e+00, double* %3439, align 1
  store %struct.Memory* %loadMem_400a14, %struct.Memory** %MEMORY
  %loadMem_400a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 33
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3444 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3443, i64 0, i64 2
  %YMM2.i167 = bitcast %union.VectorReg* %3444 to %"class.std::bitset"*
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3446 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3445, i64 0, i64 1
  %XMM1.i168 = bitcast %union.VectorReg* %3446 to %union.vec128_t*
  %3447 = bitcast %"class.std::bitset"* %YMM2.i167 to i8*
  %3448 = bitcast %"class.std::bitset"* %YMM2.i167 to i8*
  %3449 = bitcast %union.vec128_t* %XMM1.i168 to i8*
  %3450 = load i64, i64* %PC.i166
  %3451 = add i64 %3450, 4
  store i64 %3451, i64* %PC.i166
  %3452 = bitcast i8* %3448 to double*
  %3453 = load double, double* %3452, align 1
  %3454 = getelementptr inbounds i8, i8* %3448, i64 8
  %3455 = bitcast i8* %3454 to i64*
  %3456 = load i64, i64* %3455, align 1
  %3457 = bitcast i8* %3449 to double*
  %3458 = load double, double* %3457, align 1
  %3459 = fsub double %3453, %3458
  %3460 = bitcast i8* %3447 to double*
  store double %3459, double* %3460, align 1
  %3461 = getelementptr inbounds i8, i8* %3447, i64 8
  %3462 = bitcast i8* %3461 to i64*
  store i64 %3456, i64* %3462, align 1
  store %struct.Memory* %loadMem_400a19, %struct.Memory** %MEMORY
  %loadMem_400a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 33
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3465 to i64*
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 15
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3470 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3469, i64 0, i64 3
  %YMM3.i165 = bitcast %union.VectorReg* %3470 to %"class.std::bitset"*
  %3471 = bitcast %"class.std::bitset"* %YMM3.i165 to i8*
  %3472 = load i64, i64* %RBP.i164
  %3473 = sub i64 %3472, 16
  %3474 = load i64, i64* %PC.i163
  %3475 = add i64 %3474, 5
  store i64 %3475, i64* %PC.i163
  %3476 = inttoptr i64 %3473 to double*
  %3477 = load double, double* %3476
  %3478 = bitcast i8* %3471 to double*
  store double %3477, double* %3478, align 1
  %3479 = getelementptr inbounds i8, i8* %3471, i64 8
  %3480 = bitcast i8* %3479 to double*
  store double 0.000000e+00, double* %3480, align 1
  store %struct.Memory* %loadMem_400a1d, %struct.Memory** %MEMORY
  %loadMem_400a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 33
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 15
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3488 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3487, i64 0, i64 4
  %YMM4.i162 = bitcast %union.VectorReg* %3488 to %"class.std::bitset"*
  %3489 = bitcast %"class.std::bitset"* %YMM4.i162 to i8*
  %3490 = load i64, i64* %RBP.i161
  %3491 = sub i64 %3490, 24
  %3492 = load i64, i64* %PC.i160
  %3493 = add i64 %3492, 5
  store i64 %3493, i64* %PC.i160
  %3494 = inttoptr i64 %3491 to double*
  %3495 = load double, double* %3494
  %3496 = bitcast i8* %3489 to double*
  store double %3495, double* %3496, align 1
  %3497 = getelementptr inbounds i8, i8* %3489, i64 8
  %3498 = bitcast i8* %3497 to double*
  store double 0.000000e+00, double* %3498, align 1
  store %struct.Memory* %loadMem_400a22, %struct.Memory** %MEMORY
  %loadMem_400a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 33
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3501 to i64*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3503 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3502, i64 0, i64 4
  %YMM4.i158 = bitcast %union.VectorReg* %3503 to %"class.std::bitset"*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3505 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3504, i64 0, i64 1
  %XMM1.i159 = bitcast %union.VectorReg* %3505 to %union.vec128_t*
  %3506 = bitcast %"class.std::bitset"* %YMM4.i158 to i8*
  %3507 = bitcast %"class.std::bitset"* %YMM4.i158 to i8*
  %3508 = bitcast %union.vec128_t* %XMM1.i159 to i8*
  %3509 = load i64, i64* %PC.i157
  %3510 = add i64 %3509, 4
  store i64 %3510, i64* %PC.i157
  %3511 = bitcast i8* %3507 to double*
  %3512 = load double, double* %3511, align 1
  %3513 = getelementptr inbounds i8, i8* %3507, i64 8
  %3514 = bitcast i8* %3513 to i64*
  %3515 = load i64, i64* %3514, align 1
  %3516 = bitcast i8* %3508 to double*
  %3517 = load double, double* %3516, align 1
  %3518 = fsub double %3512, %3517
  %3519 = bitcast i8* %3506 to double*
  store double %3518, double* %3519, align 1
  %3520 = getelementptr inbounds i8, i8* %3506, i64 8
  %3521 = bitcast i8* %3520 to i64*
  store i64 %3515, i64* %3521, align 1
  store %struct.Memory* %loadMem_400a27, %struct.Memory** %MEMORY
  %loadMem_400a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 33
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3524 to i64*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 15
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %3527 to i64*
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3529 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3528, i64 0, i64 0
  %XMM0.i156 = bitcast %union.VectorReg* %3529 to %union.vec128_t*
  %3530 = load i64, i64* %RBP.i155
  %3531 = sub i64 %3530, 216
  %3532 = bitcast %union.vec128_t* %XMM0.i156 to i8*
  %3533 = load i64, i64* %PC.i154
  %3534 = add i64 %3533, 8
  store i64 %3534, i64* %PC.i154
  %3535 = bitcast i8* %3532 to double*
  %3536 = load double, double* %3535, align 1
  %3537 = inttoptr i64 %3531 to double*
  store double %3536, double* %3537
  store %struct.Memory* %loadMem_400a2b, %struct.Memory** %MEMORY
  %loadMem_400a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 33
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3540 to i64*
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3542 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3541, i64 0, i64 0
  %YMM0.i152 = bitcast %union.VectorReg* %3542 to %"class.std::bitset"*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3543, i64 0, i64 2
  %XMM2.i153 = bitcast %union.VectorReg* %3544 to %union.vec128_t*
  %3545 = bitcast %"class.std::bitset"* %YMM0.i152 to i8*
  %3546 = bitcast %union.vec128_t* %XMM2.i153 to i8*
  %3547 = load i64, i64* %PC.i151
  %3548 = add i64 %3547, 3
  store i64 %3548, i64* %PC.i151
  %3549 = bitcast i8* %3546 to <2 x i32>*
  %3550 = load <2 x i32>, <2 x i32>* %3549, align 1
  %3551 = getelementptr inbounds i8, i8* %3546, i64 8
  %3552 = bitcast i8* %3551 to <2 x i32>*
  %3553 = load <2 x i32>, <2 x i32>* %3552, align 1
  %3554 = extractelement <2 x i32> %3550, i32 0
  %3555 = bitcast i8* %3545 to i32*
  store i32 %3554, i32* %3555, align 1
  %3556 = extractelement <2 x i32> %3550, i32 1
  %3557 = getelementptr inbounds i8, i8* %3545, i64 4
  %3558 = bitcast i8* %3557 to i32*
  store i32 %3556, i32* %3558, align 1
  %3559 = extractelement <2 x i32> %3553, i32 0
  %3560 = getelementptr inbounds i8, i8* %3545, i64 8
  %3561 = bitcast i8* %3560 to i32*
  store i32 %3559, i32* %3561, align 1
  %3562 = extractelement <2 x i32> %3553, i32 1
  %3563 = getelementptr inbounds i8, i8* %3545, i64 12
  %3564 = bitcast i8* %3563 to i32*
  store i32 %3562, i32* %3564, align 1
  store %struct.Memory* %loadMem_400a33, %struct.Memory** %MEMORY
  %loadMem_400a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3569 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3568, i64 0, i64 1
  %YMM1.i149 = bitcast %union.VectorReg* %3569 to %"class.std::bitset"*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3570, i64 0, i64 3
  %XMM3.i150 = bitcast %union.VectorReg* %3571 to %union.vec128_t*
  %3572 = bitcast %"class.std::bitset"* %YMM1.i149 to i8*
  %3573 = bitcast %union.vec128_t* %XMM3.i150 to i8*
  %3574 = load i64, i64* %PC.i148
  %3575 = add i64 %3574, 3
  store i64 %3575, i64* %PC.i148
  %3576 = bitcast i8* %3573 to <2 x i32>*
  %3577 = load <2 x i32>, <2 x i32>* %3576, align 1
  %3578 = getelementptr inbounds i8, i8* %3573, i64 8
  %3579 = bitcast i8* %3578 to <2 x i32>*
  %3580 = load <2 x i32>, <2 x i32>* %3579, align 1
  %3581 = extractelement <2 x i32> %3577, i32 0
  %3582 = bitcast i8* %3572 to i32*
  store i32 %3581, i32* %3582, align 1
  %3583 = extractelement <2 x i32> %3577, i32 1
  %3584 = getelementptr inbounds i8, i8* %3572, i64 4
  %3585 = bitcast i8* %3584 to i32*
  store i32 %3583, i32* %3585, align 1
  %3586 = extractelement <2 x i32> %3580, i32 0
  %3587 = getelementptr inbounds i8, i8* %3572, i64 8
  %3588 = bitcast i8* %3587 to i32*
  store i32 %3586, i32* %3588, align 1
  %3589 = extractelement <2 x i32> %3580, i32 1
  %3590 = getelementptr inbounds i8, i8* %3572, i64 12
  %3591 = bitcast i8* %3590 to i32*
  store i32 %3589, i32* %3591, align 1
  store %struct.Memory* %loadMem_400a36, %struct.Memory** %MEMORY
  %loadMem_400a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 33
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3596 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3595, i64 0, i64 2
  %YMM2.i146 = bitcast %union.VectorReg* %3596 to %"class.std::bitset"*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3598 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3597, i64 0, i64 4
  %XMM4.i147 = bitcast %union.VectorReg* %3598 to %union.vec128_t*
  %3599 = bitcast %"class.std::bitset"* %YMM2.i146 to i8*
  %3600 = bitcast %union.vec128_t* %XMM4.i147 to i8*
  %3601 = load i64, i64* %PC.i145
  %3602 = add i64 %3601, 3
  store i64 %3602, i64* %PC.i145
  %3603 = bitcast i8* %3600 to <2 x i32>*
  %3604 = load <2 x i32>, <2 x i32>* %3603, align 1
  %3605 = getelementptr inbounds i8, i8* %3600, i64 8
  %3606 = bitcast i8* %3605 to <2 x i32>*
  %3607 = load <2 x i32>, <2 x i32>* %3606, align 1
  %3608 = extractelement <2 x i32> %3604, i32 0
  %3609 = bitcast i8* %3599 to i32*
  store i32 %3608, i32* %3609, align 1
  %3610 = extractelement <2 x i32> %3604, i32 1
  %3611 = getelementptr inbounds i8, i8* %3599, i64 4
  %3612 = bitcast i8* %3611 to i32*
  store i32 %3610, i32* %3612, align 1
  %3613 = extractelement <2 x i32> %3607, i32 0
  %3614 = getelementptr inbounds i8, i8* %3599, i64 8
  %3615 = bitcast i8* %3614 to i32*
  store i32 %3613, i32* %3615, align 1
  %3616 = extractelement <2 x i32> %3607, i32 1
  %3617 = getelementptr inbounds i8, i8* %3599, i64 12
  %3618 = bitcast i8* %3617 to i32*
  store i32 %3616, i32* %3618, align 1
  store %struct.Memory* %loadMem_400a39, %struct.Memory** %MEMORY
  %loadMem1_400a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 33
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3621 to i64*
  %3622 = load i64, i64* %PC.i144
  %3623 = add i64 %3622, 420
  %3624 = load i64, i64* %PC.i144
  %3625 = add i64 %3624, 5
  %3626 = load i64, i64* %PC.i144
  %3627 = add i64 %3626, 5
  store i64 %3627, i64* %PC.i144
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3629 = load i64, i64* %3628, align 8
  %3630 = add i64 %3629, -8
  %3631 = inttoptr i64 %3630 to i64*
  store i64 %3625, i64* %3631
  store i64 %3630, i64* %3628, align 8
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3623, i64* %3632, align 8
  store %struct.Memory* %loadMem1_400a3c, %struct.Memory** %MEMORY
  %loadMem2_400a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a3c = load i64, i64* %3
  %call2_400a3c = call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %loadPC_400a3c, %struct.Memory* %loadMem2_400a3c)
  store %struct.Memory* %call2_400a3c, %struct.Memory** %MEMORY
  %loadMem_400a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 33
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3635 to i64*
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 15
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %3638 to i64*
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3639, i64 0, i64 1
  %YMM1.i143 = bitcast %union.VectorReg* %3640 to %"class.std::bitset"*
  %3641 = bitcast %"class.std::bitset"* %YMM1.i143 to i8*
  %3642 = load i64, i64* %RBP.i142
  %3643 = sub i64 %3642, 208
  %3644 = load i64, i64* %PC.i141
  %3645 = add i64 %3644, 8
  store i64 %3645, i64* %PC.i141
  %3646 = inttoptr i64 %3643 to double*
  %3647 = load double, double* %3646
  %3648 = bitcast i8* %3641 to double*
  store double %3647, double* %3648, align 1
  %3649 = getelementptr inbounds i8, i8* %3641, i64 8
  %3650 = bitcast i8* %3649 to double*
  store double 0.000000e+00, double* %3650, align 1
  store %struct.Memory* %loadMem_400a41, %struct.Memory** %MEMORY
  %loadMem_400a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 33
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 15
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %3656 to i64*
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3658 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3657, i64 0, i64 0
  %XMM0.i140 = bitcast %union.VectorReg* %3658 to %union.vec128_t*
  %3659 = load i64, i64* %RBP.i139
  %3660 = sub i64 %3659, 224
  %3661 = bitcast %union.vec128_t* %XMM0.i140 to i8*
  %3662 = load i64, i64* %PC.i138
  %3663 = add i64 %3662, 8
  store i64 %3663, i64* %PC.i138
  %3664 = bitcast i8* %3661 to double*
  %3665 = load double, double* %3664, align 1
  %3666 = inttoptr i64 %3660 to double*
  store double %3665, double* %3666
  store %struct.Memory* %loadMem_400a49, %struct.Memory** %MEMORY
  %loadMem_400a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3671 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3670, i64 0, i64 0
  %YMM0.i136 = bitcast %union.VectorReg* %3671 to %"class.std::bitset"*
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3673 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3672, i64 0, i64 1
  %XMM1.i137 = bitcast %union.VectorReg* %3673 to %union.vec128_t*
  %3674 = bitcast %"class.std::bitset"* %YMM0.i136 to i8*
  %3675 = bitcast %union.vec128_t* %XMM1.i137 to i8*
  %3676 = load i64, i64* %PC.i135
  %3677 = add i64 %3676, 3
  store i64 %3677, i64* %PC.i135
  %3678 = bitcast i8* %3675 to <2 x i32>*
  %3679 = load <2 x i32>, <2 x i32>* %3678, align 1
  %3680 = getelementptr inbounds i8, i8* %3675, i64 8
  %3681 = bitcast i8* %3680 to <2 x i32>*
  %3682 = load <2 x i32>, <2 x i32>* %3681, align 1
  %3683 = extractelement <2 x i32> %3679, i32 0
  %3684 = bitcast i8* %3674 to i32*
  store i32 %3683, i32* %3684, align 1
  %3685 = extractelement <2 x i32> %3679, i32 1
  %3686 = getelementptr inbounds i8, i8* %3674, i64 4
  %3687 = bitcast i8* %3686 to i32*
  store i32 %3685, i32* %3687, align 1
  %3688 = extractelement <2 x i32> %3682, i32 0
  %3689 = getelementptr inbounds i8, i8* %3674, i64 8
  %3690 = bitcast i8* %3689 to i32*
  store i32 %3688, i32* %3690, align 1
  %3691 = extractelement <2 x i32> %3682, i32 1
  %3692 = getelementptr inbounds i8, i8* %3674, i64 12
  %3693 = bitcast i8* %3692 to i32*
  store i32 %3691, i32* %3693, align 1
  store %struct.Memory* %loadMem_400a51, %struct.Memory** %MEMORY
  %loadMem_400a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 15
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %3699 to i64*
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3701 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3700, i64 0, i64 1
  %YMM1.i134 = bitcast %union.VectorReg* %3701 to %"class.std::bitset"*
  %3702 = bitcast %"class.std::bitset"* %YMM1.i134 to i8*
  %3703 = load i64, i64* %RBP.i133
  %3704 = sub i64 %3703, 216
  %3705 = load i64, i64* %PC.i132
  %3706 = add i64 %3705, 8
  store i64 %3706, i64* %PC.i132
  %3707 = inttoptr i64 %3704 to double*
  %3708 = load double, double* %3707
  %3709 = bitcast i8* %3702 to double*
  store double %3708, double* %3709, align 1
  %3710 = getelementptr inbounds i8, i8* %3702, i64 8
  %3711 = bitcast i8* %3710 to double*
  store double 0.000000e+00, double* %3711, align 1
  store %struct.Memory* %loadMem_400a54, %struct.Memory** %MEMORY
  %loadMem_400a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 33
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3714 to i64*
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 15
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3718, i64 0, i64 2
  %YMM2.i131 = bitcast %union.VectorReg* %3719 to %"class.std::bitset"*
  %3720 = bitcast %"class.std::bitset"* %YMM2.i131 to i8*
  %3721 = load i64, i64* %RBP.i130
  %3722 = sub i64 %3721, 224
  %3723 = load i64, i64* %PC.i129
  %3724 = add i64 %3723, 8
  store i64 %3724, i64* %PC.i129
  %3725 = inttoptr i64 %3722 to double*
  %3726 = load double, double* %3725
  %3727 = bitcast i8* %3720 to double*
  store double %3726, double* %3727, align 1
  %3728 = getelementptr inbounds i8, i8* %3720, i64 8
  %3729 = bitcast i8* %3728 to double*
  store double 0.000000e+00, double* %3729, align 1
  store %struct.Memory* %loadMem_400a5c, %struct.Memory** %MEMORY
  %loadMem1_400a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 33
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3732 to i64*
  %3733 = load i64, i64* %PC.i128
  %3734 = add i64 %3733, 716
  %3735 = load i64, i64* %PC.i128
  %3736 = add i64 %3735, 5
  %3737 = load i64, i64* %PC.i128
  %3738 = add i64 %3737, 5
  store i64 %3738, i64* %PC.i128
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3740 = load i64, i64* %3739, align 8
  %3741 = add i64 %3740, -8
  %3742 = inttoptr i64 %3741 to i64*
  store i64 %3736, i64* %3742
  store i64 %3741, i64* %3739, align 8
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3734, i64* %3743, align 8
  store %struct.Memory* %loadMem1_400a64, %struct.Memory** %MEMORY
  %loadMem2_400a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a64 = load i64, i64* %3
  %call2_400a64 = call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %loadPC_400a64, %struct.Memory* %loadMem2_400a64)
  store %struct.Memory* %call2_400a64, %struct.Memory** %MEMORY
  %loadMem_400a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 33
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3746 to i64*
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3748 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3747, i64 0, i64 1
  %YMM1.i127 = bitcast %union.VectorReg* %3748 to %"class.std::bitset"*
  %3749 = bitcast %"class.std::bitset"* %YMM1.i127 to i8*
  %3750 = load i64, i64* %PC.i126
  %3751 = load i64, i64* %PC.i126
  %3752 = add i64 %3751, 8
  store i64 %3752, i64* %PC.i126
  %3753 = load double, double* bitcast (%G_0x3cf__rip__4196977__type* @G_0x3cf__rip__4196977_ to double*)
  %3754 = bitcast i8* %3749 to double*
  store double %3753, double* %3754, align 1
  %3755 = getelementptr inbounds i8, i8* %3749, i64 8
  %3756 = bitcast i8* %3755 to double*
  store double 0.000000e+00, double* %3756, align 1
  store %struct.Memory* %loadMem_400a69, %struct.Memory** %MEMORY
  %loadMem_400a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 33
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 15
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %3762 to i64*
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3764 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3763, i64 0, i64 2
  %YMM2.i125 = bitcast %union.VectorReg* %3764 to %"class.std::bitset"*
  %3765 = bitcast %"class.std::bitset"* %YMM2.i125 to i8*
  %3766 = load i64, i64* %RBP.i124
  %3767 = sub i64 %3766, 48
  %3768 = load i64, i64* %PC.i123
  %3769 = add i64 %3768, 5
  store i64 %3769, i64* %PC.i123
  %3770 = inttoptr i64 %3767 to double*
  %3771 = load double, double* %3770
  %3772 = bitcast i8* %3765 to double*
  store double %3771, double* %3772, align 1
  %3773 = getelementptr inbounds i8, i8* %3765, i64 8
  %3774 = bitcast i8* %3773 to double*
  store double 0.000000e+00, double* %3774, align 1
  store %struct.Memory* %loadMem_400a71, %struct.Memory** %MEMORY
  %loadMem_400a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 33
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3777 to i64*
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 1
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %3780 to i64*
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 15
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %3783 to i64*
  %3784 = load i64, i64* %RBP.i122
  %3785 = sub i64 %3784, 76
  %3786 = load i64, i64* %PC.i120
  %3787 = add i64 %3786, 3
  store i64 %3787, i64* %PC.i120
  %3788 = inttoptr i64 %3785 to i32*
  %3789 = load i32, i32* %3788
  %3790 = zext i32 %3789 to i64
  store i64 %3790, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_400a76, %struct.Memory** %MEMORY
  %loadMem_400a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 33
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %3793 to i64*
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 1
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %3796 to i64*
  %3797 = load i64, i64* %RAX.i119
  %3798 = load i64, i64* %PC.i118
  %3799 = add i64 %3798, 3
  store i64 %3799, i64* %PC.i118
  %3800 = trunc i64 %3797 to i32
  %3801 = add i32 1, %3800
  %3802 = zext i32 %3801 to i64
  store i64 %3802, i64* %RAX.i119, align 8
  %3803 = icmp ult i32 %3801, %3800
  %3804 = icmp ult i32 %3801, 1
  %3805 = or i1 %3803, %3804
  %3806 = zext i1 %3805 to i8
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3806, i8* %3807, align 1
  %3808 = and i32 %3801, 255
  %3809 = call i32 @llvm.ctpop.i32(i32 %3808)
  %3810 = trunc i32 %3809 to i8
  %3811 = and i8 %3810, 1
  %3812 = xor i8 %3811, 1
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3812, i8* %3813, align 1
  %3814 = xor i64 1, %3797
  %3815 = trunc i64 %3814 to i32
  %3816 = xor i32 %3815, %3801
  %3817 = lshr i32 %3816, 4
  %3818 = trunc i32 %3817 to i8
  %3819 = and i8 %3818, 1
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3819, i8* %3820, align 1
  %3821 = icmp eq i32 %3801, 0
  %3822 = zext i1 %3821 to i8
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3822, i8* %3823, align 1
  %3824 = lshr i32 %3801, 31
  %3825 = trunc i32 %3824 to i8
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3825, i8* %3826, align 1
  %3827 = lshr i32 %3800, 31
  %3828 = xor i32 %3824, %3827
  %3829 = add i32 %3828, %3824
  %3830 = icmp eq i32 %3829, 2
  %3831 = zext i1 %3830 to i8
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3831, i8* %3832, align 1
  store %struct.Memory* %loadMem_400a79, %struct.Memory** %MEMORY
  %loadMem_400a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 33
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 1
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %3838 to i32*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 5
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %3841 to i64*
  %3842 = load i32, i32* %EAX.i116
  %3843 = zext i32 %3842 to i64
  %3844 = load i64, i64* %PC.i115
  %3845 = add i64 %3844, 3
  store i64 %3845, i64* %PC.i115
  %3846 = shl i64 %3843, 32
  %3847 = ashr exact i64 %3846, 32
  store i64 %3847, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_400a7c, %struct.Memory** %MEMORY
  %loadMem_400a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 33
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %3850 to i64*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 5
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 11
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RDI.i114 = bitcast %union.anon* %3856 to i64*
  %3857 = load i64, i64* %RCX.i113
  %3858 = mul i64 %3857, 4
  %3859 = add i64 %3858, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %3860 = load i64, i64* %PC.i112
  %3861 = add i64 %3860, 7
  store i64 %3861, i64* %PC.i112
  %3862 = inttoptr i64 %3859 to i32*
  %3863 = load i32, i32* %3862
  %3864 = zext i32 %3863 to i64
  store i64 %3864, i64* %RDI.i114, align 8
  store %struct.Memory* %loadMem_400a7f, %struct.Memory** %MEMORY
  %loadMem_400a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 33
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3867 to i64*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 15
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3872 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3871, i64 0, i64 3
  %YMM3.i111 = bitcast %union.VectorReg* %3872 to %"class.std::bitset"*
  %3873 = bitcast %"class.std::bitset"* %YMM3.i111 to i8*
  %3874 = load i64, i64* %RBP.i110
  %3875 = sub i64 %3874, 8
  %3876 = load i64, i64* %PC.i109
  %3877 = add i64 %3876, 5
  store i64 %3877, i64* %PC.i109
  %3878 = inttoptr i64 %3875 to double*
  %3879 = load double, double* %3878
  %3880 = bitcast i8* %3873 to double*
  store double %3879, double* %3880, align 1
  %3881 = getelementptr inbounds i8, i8* %3873, i64 8
  %3882 = bitcast i8* %3881 to double*
  store double 0.000000e+00, double* %3882, align 1
  store %struct.Memory* %loadMem_400a86, %struct.Memory** %MEMORY
  %loadMem_400a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 15
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3890 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3889, i64 0, i64 4
  %YMM4.i108 = bitcast %union.VectorReg* %3890 to %"class.std::bitset"*
  %3891 = bitcast %"class.std::bitset"* %YMM4.i108 to i8*
  %3892 = load i64, i64* %RBP.i107
  %3893 = sub i64 %3892, 16
  %3894 = load i64, i64* %PC.i106
  %3895 = add i64 %3894, 5
  store i64 %3895, i64* %PC.i106
  %3896 = inttoptr i64 %3893 to double*
  %3897 = load double, double* %3896
  %3898 = bitcast i8* %3891 to double*
  store double %3897, double* %3898, align 1
  %3899 = getelementptr inbounds i8, i8* %3891, i64 8
  %3900 = bitcast i8* %3899 to double*
  store double 0.000000e+00, double* %3900, align 1
  store %struct.Memory* %loadMem_400a8b, %struct.Memory** %MEMORY
  %loadMem_400a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 33
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3903 to i64*
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3905 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3904, i64 0, i64 4
  %YMM4.i104 = bitcast %union.VectorReg* %3905 to %"class.std::bitset"*
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3906, i64 0, i64 1
  %XMM1.i105 = bitcast %union.VectorReg* %3907 to %union.vec128_t*
  %3908 = bitcast %"class.std::bitset"* %YMM4.i104 to i8*
  %3909 = bitcast %"class.std::bitset"* %YMM4.i104 to i8*
  %3910 = bitcast %union.vec128_t* %XMM1.i105 to i8*
  %3911 = load i64, i64* %PC.i103
  %3912 = add i64 %3911, 4
  store i64 %3912, i64* %PC.i103
  %3913 = bitcast i8* %3909 to double*
  %3914 = load double, double* %3913, align 1
  %3915 = getelementptr inbounds i8, i8* %3909, i64 8
  %3916 = bitcast i8* %3915 to i64*
  %3917 = load i64, i64* %3916, align 1
  %3918 = bitcast i8* %3910 to double*
  %3919 = load double, double* %3918, align 1
  %3920 = fsub double %3914, %3919
  %3921 = bitcast i8* %3908 to double*
  store double %3920, double* %3921, align 1
  %3922 = getelementptr inbounds i8, i8* %3908, i64 8
  %3923 = bitcast i8* %3922 to i64*
  store i64 %3917, i64* %3923, align 1
  store %struct.Memory* %loadMem_400a90, %struct.Memory** %MEMORY
  %loadMem_400a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 33
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 15
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %3929 to i64*
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3931 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3930, i64 0, i64 5
  %YMM5.i102 = bitcast %union.VectorReg* %3931 to %"class.std::bitset"*
  %3932 = bitcast %"class.std::bitset"* %YMM5.i102 to i8*
  %3933 = load i64, i64* %RBP.i101
  %3934 = sub i64 %3933, 24
  %3935 = load i64, i64* %PC.i100
  %3936 = add i64 %3935, 5
  store i64 %3936, i64* %PC.i100
  %3937 = inttoptr i64 %3934 to double*
  %3938 = load double, double* %3937
  %3939 = bitcast i8* %3932 to double*
  store double %3938, double* %3939, align 1
  %3940 = getelementptr inbounds i8, i8* %3932, i64 8
  %3941 = bitcast i8* %3940 to double*
  store double 0.000000e+00, double* %3941, align 1
  store %struct.Memory* %loadMem_400a94, %struct.Memory** %MEMORY
  %loadMem_400a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 33
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3946 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3945, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %3946 to %"class.std::bitset"*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3948 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3947, i64 0, i64 1
  %XMM1.i99 = bitcast %union.VectorReg* %3948 to %union.vec128_t*
  %3949 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %3950 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %3951 = bitcast %union.vec128_t* %XMM1.i99 to i8*
  %3952 = load i64, i64* %PC.i98
  %3953 = add i64 %3952, 4
  store i64 %3953, i64* %PC.i98
  %3954 = bitcast i8* %3950 to double*
  %3955 = load double, double* %3954, align 1
  %3956 = getelementptr inbounds i8, i8* %3950, i64 8
  %3957 = bitcast i8* %3956 to i64*
  %3958 = load i64, i64* %3957, align 1
  %3959 = bitcast i8* %3951 to double*
  %3960 = load double, double* %3959, align 1
  %3961 = fsub double %3955, %3960
  %3962 = bitcast i8* %3949 to double*
  store double %3961, double* %3962, align 1
  %3963 = getelementptr inbounds i8, i8* %3949, i64 8
  %3964 = bitcast i8* %3963 to i64*
  store i64 %3958, i64* %3964, align 1
  store %struct.Memory* %loadMem_400a99, %struct.Memory** %MEMORY
  %loadMem_400a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 33
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3967 to i64*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 15
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %3970 to i64*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3972 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3971, i64 0, i64 0
  %XMM0.i97 = bitcast %union.VectorReg* %3972 to %union.vec128_t*
  %3973 = load i64, i64* %RBP.i96
  %3974 = sub i64 %3973, 232
  %3975 = bitcast %union.vec128_t* %XMM0.i97 to i8*
  %3976 = load i64, i64* %PC.i95
  %3977 = add i64 %3976, 8
  store i64 %3977, i64* %PC.i95
  %3978 = bitcast i8* %3975 to double*
  %3979 = load double, double* %3978, align 1
  %3980 = inttoptr i64 %3974 to double*
  store double %3979, double* %3980
  store %struct.Memory* %loadMem_400a9d, %struct.Memory** %MEMORY
  %loadMem_400aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 33
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3983 to i64*
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3985 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3984, i64 0, i64 0
  %YMM0.i93 = bitcast %union.VectorReg* %3985 to %"class.std::bitset"*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3987 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3986, i64 0, i64 3
  %XMM3.i94 = bitcast %union.VectorReg* %3987 to %union.vec128_t*
  %3988 = bitcast %"class.std::bitset"* %YMM0.i93 to i8*
  %3989 = bitcast %union.vec128_t* %XMM3.i94 to i8*
  %3990 = load i64, i64* %PC.i92
  %3991 = add i64 %3990, 3
  store i64 %3991, i64* %PC.i92
  %3992 = bitcast i8* %3989 to <2 x i32>*
  %3993 = load <2 x i32>, <2 x i32>* %3992, align 1
  %3994 = getelementptr inbounds i8, i8* %3989, i64 8
  %3995 = bitcast i8* %3994 to <2 x i32>*
  %3996 = load <2 x i32>, <2 x i32>* %3995, align 1
  %3997 = extractelement <2 x i32> %3993, i32 0
  %3998 = bitcast i8* %3988 to i32*
  store i32 %3997, i32* %3998, align 1
  %3999 = extractelement <2 x i32> %3993, i32 1
  %4000 = getelementptr inbounds i8, i8* %3988, i64 4
  %4001 = bitcast i8* %4000 to i32*
  store i32 %3999, i32* %4001, align 1
  %4002 = extractelement <2 x i32> %3996, i32 0
  %4003 = getelementptr inbounds i8, i8* %3988, i64 8
  %4004 = bitcast i8* %4003 to i32*
  store i32 %4002, i32* %4004, align 1
  %4005 = extractelement <2 x i32> %3996, i32 1
  %4006 = getelementptr inbounds i8, i8* %3988, i64 12
  %4007 = bitcast i8* %4006 to i32*
  store i32 %4005, i32* %4007, align 1
  store %struct.Memory* %loadMem_400aa5, %struct.Memory** %MEMORY
  %loadMem_400aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 33
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4012 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4011, i64 0, i64 1
  %YMM1.i90 = bitcast %union.VectorReg* %4012 to %"class.std::bitset"*
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4014 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4013, i64 0, i64 4
  %XMM4.i91 = bitcast %union.VectorReg* %4014 to %union.vec128_t*
  %4015 = bitcast %"class.std::bitset"* %YMM1.i90 to i8*
  %4016 = bitcast %union.vec128_t* %XMM4.i91 to i8*
  %4017 = load i64, i64* %PC.i89
  %4018 = add i64 %4017, 3
  store i64 %4018, i64* %PC.i89
  %4019 = bitcast i8* %4016 to <2 x i32>*
  %4020 = load <2 x i32>, <2 x i32>* %4019, align 1
  %4021 = getelementptr inbounds i8, i8* %4016, i64 8
  %4022 = bitcast i8* %4021 to <2 x i32>*
  %4023 = load <2 x i32>, <2 x i32>* %4022, align 1
  %4024 = extractelement <2 x i32> %4020, i32 0
  %4025 = bitcast i8* %4015 to i32*
  store i32 %4024, i32* %4025, align 1
  %4026 = extractelement <2 x i32> %4020, i32 1
  %4027 = getelementptr inbounds i8, i8* %4015, i64 4
  %4028 = bitcast i8* %4027 to i32*
  store i32 %4026, i32* %4028, align 1
  %4029 = extractelement <2 x i32> %4023, i32 0
  %4030 = getelementptr inbounds i8, i8* %4015, i64 8
  %4031 = bitcast i8* %4030 to i32*
  store i32 %4029, i32* %4031, align 1
  %4032 = extractelement <2 x i32> %4023, i32 1
  %4033 = getelementptr inbounds i8, i8* %4015, i64 12
  %4034 = bitcast i8* %4033 to i32*
  store i32 %4032, i32* %4034, align 1
  store %struct.Memory* %loadMem_400aa8, %struct.Memory** %MEMORY
  %loadMem_400aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4036 = getelementptr inbounds %struct.GPR, %struct.GPR* %4035, i32 0, i32 33
  %4037 = getelementptr inbounds %struct.Reg, %struct.Reg* %4036, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4037 to i64*
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 15
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %4040 to i64*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4042 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4041, i64 0, i64 2
  %XMM2.i88 = bitcast %union.VectorReg* %4042 to %union.vec128_t*
  %4043 = load i64, i64* %RBP.i87
  %4044 = sub i64 %4043, 240
  %4045 = bitcast %union.vec128_t* %XMM2.i88 to i8*
  %4046 = load i64, i64* %PC.i86
  %4047 = add i64 %4046, 8
  store i64 %4047, i64* %PC.i86
  %4048 = bitcast i8* %4045 to double*
  %4049 = load double, double* %4048, align 1
  %4050 = inttoptr i64 %4044 to double*
  store double %4049, double* %4050
  store %struct.Memory* %loadMem_400aab, %struct.Memory** %MEMORY
  %loadMem_400ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 33
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4053 to i64*
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4055 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4054, i64 0, i64 2
  %YMM2.i85 = bitcast %union.VectorReg* %4055 to %"class.std::bitset"*
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4057 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4056, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %4057 to %union.vec128_t*
  %4058 = bitcast %"class.std::bitset"* %YMM2.i85 to i8*
  %4059 = bitcast %union.vec128_t* %XMM5.i to i8*
  %4060 = load i64, i64* %PC.i84
  %4061 = add i64 %4060, 3
  store i64 %4061, i64* %PC.i84
  %4062 = bitcast i8* %4059 to <2 x i32>*
  %4063 = load <2 x i32>, <2 x i32>* %4062, align 1
  %4064 = getelementptr inbounds i8, i8* %4059, i64 8
  %4065 = bitcast i8* %4064 to <2 x i32>*
  %4066 = load <2 x i32>, <2 x i32>* %4065, align 1
  %4067 = extractelement <2 x i32> %4063, i32 0
  %4068 = bitcast i8* %4058 to i32*
  store i32 %4067, i32* %4068, align 1
  %4069 = extractelement <2 x i32> %4063, i32 1
  %4070 = getelementptr inbounds i8, i8* %4058, i64 4
  %4071 = bitcast i8* %4070 to i32*
  store i32 %4069, i32* %4071, align 1
  %4072 = extractelement <2 x i32> %4066, i32 0
  %4073 = getelementptr inbounds i8, i8* %4058, i64 8
  %4074 = bitcast i8* %4073 to i32*
  store i32 %4072, i32* %4074, align 1
  %4075 = extractelement <2 x i32> %4066, i32 1
  %4076 = getelementptr inbounds i8, i8* %4058, i64 12
  %4077 = bitcast i8* %4076 to i32*
  store i32 %4075, i32* %4077, align 1
  store %struct.Memory* %loadMem_400ab3, %struct.Memory** %MEMORY
  %loadMem1_400ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 33
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4080 to i64*
  %4081 = load i64, i64* %PC.i83
  %4082 = add i64 %4081, 298
  %4083 = load i64, i64* %PC.i83
  %4084 = add i64 %4083, 5
  %4085 = load i64, i64* %PC.i83
  %4086 = add i64 %4085, 5
  store i64 %4086, i64* %PC.i83
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4088 = load i64, i64* %4087, align 8
  %4089 = add i64 %4088, -8
  %4090 = inttoptr i64 %4089 to i64*
  store i64 %4084, i64* %4090
  store i64 %4089, i64* %4087, align 8
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4082, i64* %4091, align 8
  store %struct.Memory* %loadMem1_400ab6, %struct.Memory** %MEMORY
  %loadMem2_400ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ab6 = load i64, i64* %3
  %call2_400ab6 = call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %loadPC_400ab6, %struct.Memory* %loadMem2_400ab6)
  store %struct.Memory* %call2_400ab6, %struct.Memory** %MEMORY
  %loadMem_400abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 33
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4094 to i64*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4096 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4095, i64 0, i64 1
  %YMM1.i82 = bitcast %union.VectorReg* %4096 to %"class.std::bitset"*
  %4097 = bitcast %"class.std::bitset"* %YMM1.i82 to i8*
  %4098 = load i64, i64* %PC.i81
  %4099 = load i64, i64* %PC.i81
  %4100 = add i64 %4099, 8
  store i64 %4100, i64* %PC.i81
  %4101 = load double, double* bitcast (%G_0x37d__rip__4197059__type* @G_0x37d__rip__4197059_ to double*)
  %4102 = bitcast i8* %4097 to double*
  store double %4101, double* %4102, align 1
  %4103 = getelementptr inbounds i8, i8* %4097, i64 8
  %4104 = bitcast i8* %4103 to double*
  store double 0.000000e+00, double* %4104, align 1
  store %struct.Memory* %loadMem_400abb, %struct.Memory** %MEMORY
  %loadMem_400ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 33
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4107 to i64*
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 1
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %4110 to i64*
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4112 = getelementptr inbounds %struct.GPR, %struct.GPR* %4111, i32 0, i32 15
  %4113 = getelementptr inbounds %struct.Reg, %struct.Reg* %4112, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %4113 to i64*
  %4114 = load i64, i64* %RBP.i80
  %4115 = sub i64 %4114, 88
  %4116 = load i64, i64* %PC.i78
  %4117 = add i64 %4116, 3
  store i64 %4117, i64* %PC.i78
  %4118 = inttoptr i64 %4115 to i32*
  %4119 = load i32, i32* %4118
  %4120 = zext i32 %4119 to i64
  store i64 %4120, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_400ac3, %struct.Memory** %MEMORY
  %loadMem_400ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 33
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4123 to i64*
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 1
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4126 to i64*
  %4127 = load i64, i64* %RAX.i
  %4128 = load i64, i64* %PC.i77
  %4129 = add i64 %4128, 3
  store i64 %4129, i64* %PC.i77
  %4130 = trunc i64 %4127 to i32
  %4131 = add i32 1, %4130
  %4132 = zext i32 %4131 to i64
  store i64 %4132, i64* %RAX.i, align 8
  %4133 = icmp ult i32 %4131, %4130
  %4134 = icmp ult i32 %4131, 1
  %4135 = or i1 %4133, %4134
  %4136 = zext i1 %4135 to i8
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4136, i8* %4137, align 1
  %4138 = and i32 %4131, 255
  %4139 = call i32 @llvm.ctpop.i32(i32 %4138)
  %4140 = trunc i32 %4139 to i8
  %4141 = and i8 %4140, 1
  %4142 = xor i8 %4141, 1
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4142, i8* %4143, align 1
  %4144 = xor i64 1, %4127
  %4145 = trunc i64 %4144 to i32
  %4146 = xor i32 %4145, %4131
  %4147 = lshr i32 %4146, 4
  %4148 = trunc i32 %4147 to i8
  %4149 = and i8 %4148, 1
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4149, i8* %4150, align 1
  %4151 = icmp eq i32 %4131, 0
  %4152 = zext i1 %4151 to i8
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4152, i8* %4153, align 1
  %4154 = lshr i32 %4131, 31
  %4155 = trunc i32 %4154 to i8
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4155, i8* %4156, align 1
  %4157 = lshr i32 %4130, 31
  %4158 = xor i32 %4154, %4157
  %4159 = add i32 %4158, %4154
  %4160 = icmp eq i32 %4159, 2
  %4161 = zext i1 %4160 to i8
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4161, i8* %4162, align 1
  store %struct.Memory* %loadMem_400ac6, %struct.Memory** %MEMORY
  %loadMem_400ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 1
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4168 to i32*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 5
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %4171 to i64*
  %4172 = load i32, i32* %EAX.i
  %4173 = zext i32 %4172 to i64
  %4174 = load i64, i64* %PC.i75
  %4175 = add i64 %4174, 3
  store i64 %4175, i64* %PC.i75
  %4176 = shl i64 %4173, 32
  %4177 = ashr exact i64 %4176, 32
  store i64 %4177, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_400ac9, %struct.Memory** %MEMORY
  %loadMem_400acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 33
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 5
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4183 to i64*
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 11
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4186 to i64*
  %4187 = load i64, i64* %RCX.i
  %4188 = mul i64 %4187, 4
  %4189 = add i64 %4188, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
  %4190 = load i64, i64* %PC.i74
  %4191 = add i64 %4190, 7
  store i64 %4191, i64* %PC.i74
  %4192 = inttoptr i64 %4189 to i32*
  %4193 = load i32, i32* %4192
  %4194 = zext i32 %4193 to i64
  store i64 %4194, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400acc, %struct.Memory** %MEMORY
  %loadMem_400ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 33
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4197 to i64*
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 15
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %4200 to i64*
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4202 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4201, i64 0, i64 2
  %YMM2.i73 = bitcast %union.VectorReg* %4202 to %"class.std::bitset"*
  %4203 = bitcast %"class.std::bitset"* %YMM2.i73 to i8*
  %4204 = load i64, i64* %RBP.i72
  %4205 = sub i64 %4204, 8
  %4206 = load i64, i64* %PC.i71
  %4207 = add i64 %4206, 5
  store i64 %4207, i64* %PC.i71
  %4208 = inttoptr i64 %4205 to double*
  %4209 = load double, double* %4208
  %4210 = bitcast i8* %4203 to double*
  store double %4209, double* %4210, align 1
  %4211 = getelementptr inbounds i8, i8* %4203, i64 8
  %4212 = bitcast i8* %4211 to double*
  store double 0.000000e+00, double* %4212, align 1
  store %struct.Memory* %loadMem_400ad3, %struct.Memory** %MEMORY
  %loadMem_400ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 33
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4215 to i64*
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4217 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4216, i64 0, i64 2
  %YMM2.i69 = bitcast %union.VectorReg* %4217 to %"class.std::bitset"*
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4219 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4218, i64 0, i64 1
  %XMM1.i70 = bitcast %union.VectorReg* %4219 to %union.vec128_t*
  %4220 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %4221 = bitcast %"class.std::bitset"* %YMM2.i69 to i8*
  %4222 = bitcast %union.vec128_t* %XMM1.i70 to i8*
  %4223 = load i64, i64* %PC.i68
  %4224 = add i64 %4223, 4
  store i64 %4224, i64* %PC.i68
  %4225 = bitcast i8* %4221 to double*
  %4226 = load double, double* %4225, align 1
  %4227 = getelementptr inbounds i8, i8* %4221, i64 8
  %4228 = bitcast i8* %4227 to i64*
  %4229 = load i64, i64* %4228, align 1
  %4230 = bitcast i8* %4222 to double*
  %4231 = load double, double* %4230, align 1
  %4232 = fsub double %4226, %4231
  %4233 = bitcast i8* %4220 to double*
  store double %4232, double* %4233, align 1
  %4234 = getelementptr inbounds i8, i8* %4220, i64 8
  %4235 = bitcast i8* %4234 to i64*
  store i64 %4229, i64* %4235, align 1
  store %struct.Memory* %loadMem_400ad8, %struct.Memory** %MEMORY
  %loadMem_400adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 33
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4238 to i64*
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 15
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %4241 to i64*
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4242, i64 0, i64 3
  %YMM3.i67 = bitcast %union.VectorReg* %4243 to %"class.std::bitset"*
  %4244 = bitcast %"class.std::bitset"* %YMM3.i67 to i8*
  %4245 = load i64, i64* %RBP.i66
  %4246 = sub i64 %4245, 16
  %4247 = load i64, i64* %PC.i65
  %4248 = add i64 %4247, 5
  store i64 %4248, i64* %PC.i65
  %4249 = inttoptr i64 %4246 to double*
  %4250 = load double, double* %4249
  %4251 = bitcast i8* %4244 to double*
  store double %4250, double* %4251, align 1
  %4252 = getelementptr inbounds i8, i8* %4244, i64 8
  %4253 = bitcast i8* %4252 to double*
  store double 0.000000e+00, double* %4253, align 1
  store %struct.Memory* %loadMem_400adc, %struct.Memory** %MEMORY
  %loadMem_400ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4258 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4257, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %4258 to %"class.std::bitset"*
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4260 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4259, i64 0, i64 1
  %XMM1.i64 = bitcast %union.VectorReg* %4260 to %union.vec128_t*
  %4261 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %4262 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %4263 = bitcast %union.vec128_t* %XMM1.i64 to i8*
  %4264 = load i64, i64* %PC.i63
  %4265 = add i64 %4264, 4
  store i64 %4265, i64* %PC.i63
  %4266 = bitcast i8* %4262 to double*
  %4267 = load double, double* %4266, align 1
  %4268 = getelementptr inbounds i8, i8* %4262, i64 8
  %4269 = bitcast i8* %4268 to i64*
  %4270 = load i64, i64* %4269, align 1
  %4271 = bitcast i8* %4263 to double*
  %4272 = load double, double* %4271, align 1
  %4273 = fsub double %4267, %4272
  %4274 = bitcast i8* %4261 to double*
  store double %4273, double* %4274, align 1
  %4275 = getelementptr inbounds i8, i8* %4261, i64 8
  %4276 = bitcast i8* %4275 to i64*
  store i64 %4270, i64* %4276, align 1
  store %struct.Memory* %loadMem_400ae1, %struct.Memory** %MEMORY
  %loadMem_400ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4278 = getelementptr inbounds %struct.GPR, %struct.GPR* %4277, i32 0, i32 33
  %4279 = getelementptr inbounds %struct.Reg, %struct.Reg* %4278, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4279 to i64*
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 15
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %4282 to i64*
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4283, i64 0, i64 4
  %YMM4.i62 = bitcast %union.VectorReg* %4284 to %"class.std::bitset"*
  %4285 = bitcast %"class.std::bitset"* %YMM4.i62 to i8*
  %4286 = load i64, i64* %RBP.i61
  %4287 = sub i64 %4286, 24
  %4288 = load i64, i64* %PC.i60
  %4289 = add i64 %4288, 5
  store i64 %4289, i64* %PC.i60
  %4290 = inttoptr i64 %4287 to double*
  %4291 = load double, double* %4290
  %4292 = bitcast i8* %4285 to double*
  store double %4291, double* %4292, align 1
  %4293 = getelementptr inbounds i8, i8* %4285, i64 8
  %4294 = bitcast i8* %4293 to double*
  store double 0.000000e+00, double* %4294, align 1
  store %struct.Memory* %loadMem_400ae5, %struct.Memory** %MEMORY
  %loadMem_400aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 33
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4297 to i64*
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4298, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %4299 to %"class.std::bitset"*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4300, i64 0, i64 1
  %XMM1.i59 = bitcast %union.VectorReg* %4301 to %union.vec128_t*
  %4302 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %4303 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %4304 = bitcast %union.vec128_t* %XMM1.i59 to i8*
  %4305 = load i64, i64* %PC.i58
  %4306 = add i64 %4305, 4
  store i64 %4306, i64* %PC.i58
  %4307 = bitcast i8* %4303 to double*
  %4308 = load double, double* %4307, align 1
  %4309 = getelementptr inbounds i8, i8* %4303, i64 8
  %4310 = bitcast i8* %4309 to i64*
  %4311 = load i64, i64* %4310, align 1
  %4312 = bitcast i8* %4304 to double*
  %4313 = load double, double* %4312, align 1
  %4314 = fsub double %4308, %4313
  %4315 = bitcast i8* %4302 to double*
  store double %4314, double* %4315, align 1
  %4316 = getelementptr inbounds i8, i8* %4302, i64 8
  %4317 = bitcast i8* %4316 to i64*
  store i64 %4311, i64* %4317, align 1
  store %struct.Memory* %loadMem_400aea, %struct.Memory** %MEMORY
  %loadMem_400aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 33
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %4320 to i64*
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 15
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %4323 to i64*
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4325 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4324, i64 0, i64 0
  %XMM0.i57 = bitcast %union.VectorReg* %4325 to %union.vec128_t*
  %4326 = load i64, i64* %RBP.i56
  %4327 = sub i64 %4326, 248
  %4328 = bitcast %union.vec128_t* %XMM0.i57 to i8*
  %4329 = load i64, i64* %PC.i55
  %4330 = add i64 %4329, 8
  store i64 %4330, i64* %PC.i55
  %4331 = bitcast i8* %4328 to double*
  %4332 = load double, double* %4331, align 1
  %4333 = inttoptr i64 %4327 to double*
  store double %4332, double* %4333
  store %struct.Memory* %loadMem_400aee, %struct.Memory** %MEMORY
  %loadMem_400af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 33
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4336 to i64*
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4338 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4337, i64 0, i64 0
  %YMM0.i54 = bitcast %union.VectorReg* %4338 to %"class.std::bitset"*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4340 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4339, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %4340 to %union.vec128_t*
  %4341 = bitcast %"class.std::bitset"* %YMM0.i54 to i8*
  %4342 = bitcast %union.vec128_t* %XMM2.i to i8*
  %4343 = load i64, i64* %PC.i53
  %4344 = add i64 %4343, 3
  store i64 %4344, i64* %PC.i53
  %4345 = bitcast i8* %4342 to <2 x i32>*
  %4346 = load <2 x i32>, <2 x i32>* %4345, align 1
  %4347 = getelementptr inbounds i8, i8* %4342, i64 8
  %4348 = bitcast i8* %4347 to <2 x i32>*
  %4349 = load <2 x i32>, <2 x i32>* %4348, align 1
  %4350 = extractelement <2 x i32> %4346, i32 0
  %4351 = bitcast i8* %4341 to i32*
  store i32 %4350, i32* %4351, align 1
  %4352 = extractelement <2 x i32> %4346, i32 1
  %4353 = getelementptr inbounds i8, i8* %4341, i64 4
  %4354 = bitcast i8* %4353 to i32*
  store i32 %4352, i32* %4354, align 1
  %4355 = extractelement <2 x i32> %4349, i32 0
  %4356 = getelementptr inbounds i8, i8* %4341, i64 8
  %4357 = bitcast i8* %4356 to i32*
  store i32 %4355, i32* %4357, align 1
  %4358 = extractelement <2 x i32> %4349, i32 1
  %4359 = getelementptr inbounds i8, i8* %4341, i64 12
  %4360 = bitcast i8* %4359 to i32*
  store i32 %4358, i32* %4360, align 1
  store %struct.Memory* %loadMem_400af6, %struct.Memory** %MEMORY
  %loadMem_400af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 33
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4363 to i64*
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4365 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4364, i64 0, i64 1
  %YMM1.i52 = bitcast %union.VectorReg* %4365 to %"class.std::bitset"*
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4367 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4366, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %4367 to %union.vec128_t*
  %4368 = bitcast %"class.std::bitset"* %YMM1.i52 to i8*
  %4369 = bitcast %union.vec128_t* %XMM3.i to i8*
  %4370 = load i64, i64* %PC.i51
  %4371 = add i64 %4370, 3
  store i64 %4371, i64* %PC.i51
  %4372 = bitcast i8* %4369 to <2 x i32>*
  %4373 = load <2 x i32>, <2 x i32>* %4372, align 1
  %4374 = getelementptr inbounds i8, i8* %4369, i64 8
  %4375 = bitcast i8* %4374 to <2 x i32>*
  %4376 = load <2 x i32>, <2 x i32>* %4375, align 1
  %4377 = extractelement <2 x i32> %4373, i32 0
  %4378 = bitcast i8* %4368 to i32*
  store i32 %4377, i32* %4378, align 1
  %4379 = extractelement <2 x i32> %4373, i32 1
  %4380 = getelementptr inbounds i8, i8* %4368, i64 4
  %4381 = bitcast i8* %4380 to i32*
  store i32 %4379, i32* %4381, align 1
  %4382 = extractelement <2 x i32> %4376, i32 0
  %4383 = getelementptr inbounds i8, i8* %4368, i64 8
  %4384 = bitcast i8* %4383 to i32*
  store i32 %4382, i32* %4384, align 1
  %4385 = extractelement <2 x i32> %4376, i32 1
  %4386 = getelementptr inbounds i8, i8* %4368, i64 12
  %4387 = bitcast i8* %4386 to i32*
  store i32 %4385, i32* %4387, align 1
  store %struct.Memory* %loadMem_400af9, %struct.Memory** %MEMORY
  %loadMem_400afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 33
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4390 to i64*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4392 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4391, i64 0, i64 2
  %YMM2.i50 = bitcast %union.VectorReg* %4392 to %"class.std::bitset"*
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4394 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4393, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %4394 to %union.vec128_t*
  %4395 = bitcast %"class.std::bitset"* %YMM2.i50 to i8*
  %4396 = bitcast %union.vec128_t* %XMM4.i to i8*
  %4397 = load i64, i64* %PC.i49
  %4398 = add i64 %4397, 3
  store i64 %4398, i64* %PC.i49
  %4399 = bitcast i8* %4396 to <2 x i32>*
  %4400 = load <2 x i32>, <2 x i32>* %4399, align 1
  %4401 = getelementptr inbounds i8, i8* %4396, i64 8
  %4402 = bitcast i8* %4401 to <2 x i32>*
  %4403 = load <2 x i32>, <2 x i32>* %4402, align 1
  %4404 = extractelement <2 x i32> %4400, i32 0
  %4405 = bitcast i8* %4395 to i32*
  store i32 %4404, i32* %4405, align 1
  %4406 = extractelement <2 x i32> %4400, i32 1
  %4407 = getelementptr inbounds i8, i8* %4395, i64 4
  %4408 = bitcast i8* %4407 to i32*
  store i32 %4406, i32* %4408, align 1
  %4409 = extractelement <2 x i32> %4403, i32 0
  %4410 = getelementptr inbounds i8, i8* %4395, i64 8
  %4411 = bitcast i8* %4410 to i32*
  store i32 %4409, i32* %4411, align 1
  %4412 = extractelement <2 x i32> %4403, i32 1
  %4413 = getelementptr inbounds i8, i8* %4395, i64 12
  %4414 = bitcast i8* %4413 to i32*
  store i32 %4412, i32* %4414, align 1
  store %struct.Memory* %loadMem_400afc, %struct.Memory** %MEMORY
  %loadMem1_400aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 33
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4417 to i64*
  %4418 = load i64, i64* %PC.i48
  %4419 = add i64 %4418, 225
  %4420 = load i64, i64* %PC.i48
  %4421 = add i64 %4420, 5
  %4422 = load i64, i64* %PC.i48
  %4423 = add i64 %4422, 5
  store i64 %4423, i64* %PC.i48
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4425 = load i64, i64* %4424, align 8
  %4426 = add i64 %4425, -8
  %4427 = inttoptr i64 %4426 to i64*
  store i64 %4421, i64* %4427
  store i64 %4426, i64* %4424, align 8
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4419, i64* %4428, align 8
  store %struct.Memory* %loadMem1_400aff, %struct.Memory** %MEMORY
  %loadMem2_400aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400aff = load i64, i64* %3
  %call2_400aff = call %struct.Memory* @sub_400be0.grad(%struct.State* %0, i64 %loadPC_400aff, %struct.Memory* %loadMem2_400aff)
  store %struct.Memory* %call2_400aff, %struct.Memory** %MEMORY
  %loadMem_400b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 33
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4431 to i64*
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 15
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %4434 to i64*
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4436 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4435, i64 0, i64 1
  %YMM1.i47 = bitcast %union.VectorReg* %4436 to %"class.std::bitset"*
  %4437 = bitcast %"class.std::bitset"* %YMM1.i47 to i8*
  %4438 = load i64, i64* %RBP.i46
  %4439 = sub i64 %4438, 240
  %4440 = load i64, i64* %PC.i45
  %4441 = add i64 %4440, 8
  store i64 %4441, i64* %PC.i45
  %4442 = inttoptr i64 %4439 to double*
  %4443 = load double, double* %4442
  %4444 = bitcast i8* %4437 to double*
  store double %4443, double* %4444, align 1
  %4445 = getelementptr inbounds i8, i8* %4437, i64 8
  %4446 = bitcast i8* %4445 to double*
  store double 0.000000e+00, double* %4446, align 1
  store %struct.Memory* %loadMem_400b04, %struct.Memory** %MEMORY
  %loadMem_400b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 33
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4449 to i64*
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 15
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4454 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4453, i64 0, i64 0
  %XMM0.i44 = bitcast %union.VectorReg* %4454 to %union.vec128_t*
  %4455 = load i64, i64* %RBP.i43
  %4456 = sub i64 %4455, 256
  %4457 = bitcast %union.vec128_t* %XMM0.i44 to i8*
  %4458 = load i64, i64* %PC.i42
  %4459 = add i64 %4458, 8
  store i64 %4459, i64* %PC.i42
  %4460 = bitcast i8* %4457 to double*
  %4461 = load double, double* %4460, align 1
  %4462 = inttoptr i64 %4456 to double*
  store double %4461, double* %4462
  store %struct.Memory* %loadMem_400b0c, %struct.Memory** %MEMORY
  %loadMem_400b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 33
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4465 to i64*
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4467 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4466, i64 0, i64 0
  %YMM0.i40 = bitcast %union.VectorReg* %4467 to %"class.std::bitset"*
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4469 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4468, i64 0, i64 1
  %XMM1.i41 = bitcast %union.VectorReg* %4469 to %union.vec128_t*
  %4470 = bitcast %"class.std::bitset"* %YMM0.i40 to i8*
  %4471 = bitcast %union.vec128_t* %XMM1.i41 to i8*
  %4472 = load i64, i64* %PC.i39
  %4473 = add i64 %4472, 3
  store i64 %4473, i64* %PC.i39
  %4474 = bitcast i8* %4471 to <2 x i32>*
  %4475 = load <2 x i32>, <2 x i32>* %4474, align 1
  %4476 = getelementptr inbounds i8, i8* %4471, i64 8
  %4477 = bitcast i8* %4476 to <2 x i32>*
  %4478 = load <2 x i32>, <2 x i32>* %4477, align 1
  %4479 = extractelement <2 x i32> %4475, i32 0
  %4480 = bitcast i8* %4470 to i32*
  store i32 %4479, i32* %4480, align 1
  %4481 = extractelement <2 x i32> %4475, i32 1
  %4482 = getelementptr inbounds i8, i8* %4470, i64 4
  %4483 = bitcast i8* %4482 to i32*
  store i32 %4481, i32* %4483, align 1
  %4484 = extractelement <2 x i32> %4478, i32 0
  %4485 = getelementptr inbounds i8, i8* %4470, i64 8
  %4486 = bitcast i8* %4485 to i32*
  store i32 %4484, i32* %4486, align 1
  %4487 = extractelement <2 x i32> %4478, i32 1
  %4488 = getelementptr inbounds i8, i8* %4470, i64 12
  %4489 = bitcast i8* %4488 to i32*
  store i32 %4487, i32* %4489, align 1
  store %struct.Memory* %loadMem_400b14, %struct.Memory** %MEMORY
  %loadMem_400b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 33
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 15
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %4495 to i64*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4497 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4496, i64 0, i64 1
  %YMM1.i38 = bitcast %union.VectorReg* %4497 to %"class.std::bitset"*
  %4498 = bitcast %"class.std::bitset"* %YMM1.i38 to i8*
  %4499 = load i64, i64* %RBP.i37
  %4500 = sub i64 %4499, 248
  %4501 = load i64, i64* %PC.i36
  %4502 = add i64 %4501, 8
  store i64 %4502, i64* %PC.i36
  %4503 = inttoptr i64 %4500 to double*
  %4504 = load double, double* %4503
  %4505 = bitcast i8* %4498 to double*
  store double %4504, double* %4505, align 1
  %4506 = getelementptr inbounds i8, i8* %4498, i64 8
  %4507 = bitcast i8* %4506 to double*
  store double 0.000000e+00, double* %4507, align 1
  store %struct.Memory* %loadMem_400b17, %struct.Memory** %MEMORY
  %loadMem_400b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 33
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4510 to i64*
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 15
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %4513 to i64*
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4515 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4514, i64 0, i64 2
  %YMM2.i35 = bitcast %union.VectorReg* %4515 to %"class.std::bitset"*
  %4516 = bitcast %"class.std::bitset"* %YMM2.i35 to i8*
  %4517 = load i64, i64* %RBP.i34
  %4518 = sub i64 %4517, 256
  %4519 = load i64, i64* %PC.i33
  %4520 = add i64 %4519, 8
  store i64 %4520, i64* %PC.i33
  %4521 = inttoptr i64 %4518 to double*
  %4522 = load double, double* %4521
  %4523 = bitcast i8* %4516 to double*
  store double %4522, double* %4523, align 1
  %4524 = getelementptr inbounds i8, i8* %4516, i64 8
  %4525 = bitcast i8* %4524 to double*
  store double 0.000000e+00, double* %4525, align 1
  store %struct.Memory* %loadMem_400b1f, %struct.Memory** %MEMORY
  %loadMem1_400b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 33
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4528 to i64*
  %4529 = load i64, i64* %PC.i32
  %4530 = add i64 %4529, 521
  %4531 = load i64, i64* %PC.i32
  %4532 = add i64 %4531, 5
  %4533 = load i64, i64* %PC.i32
  %4534 = add i64 %4533, 5
  store i64 %4534, i64* %PC.i32
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4536 = load i64, i64* %4535, align 8
  %4537 = add i64 %4536, -8
  %4538 = inttoptr i64 %4537 to i64*
  store i64 %4532, i64* %4538
  store i64 %4537, i64* %4535, align 8
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4530, i64* %4539, align 8
  store %struct.Memory* %loadMem1_400b27, %struct.Memory** %MEMORY
  %loadMem2_400b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b27 = load i64, i64* %3
  %call2_400b27 = call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %loadPC_400b27, %struct.Memory* %loadMem2_400b27)
  store %struct.Memory* %call2_400b27, %struct.Memory** %MEMORY
  %loadMem_400b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 33
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4542 to i64*
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 15
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %4545 to i64*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4547 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4546, i64 0, i64 1
  %YMM1.i31 = bitcast %union.VectorReg* %4547 to %"class.std::bitset"*
  %4548 = bitcast %"class.std::bitset"* %YMM1.i31 to i8*
  %4549 = load i64, i64* %RBP.i30
  %4550 = sub i64 %4549, 200
  %4551 = load i64, i64* %PC.i29
  %4552 = add i64 %4551, 8
  store i64 %4552, i64* %PC.i29
  %4553 = inttoptr i64 %4550 to double*
  %4554 = load double, double* %4553
  %4555 = bitcast i8* %4548 to double*
  store double %4554, double* %4555, align 1
  %4556 = getelementptr inbounds i8, i8* %4548, i64 8
  %4557 = bitcast i8* %4556 to double*
  store double 0.000000e+00, double* %4557, align 1
  store %struct.Memory* %loadMem_400b2c, %struct.Memory** %MEMORY
  %loadMem_400b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 33
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4560 to i64*
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4562 = getelementptr inbounds %struct.GPR, %struct.GPR* %4561, i32 0, i32 15
  %4563 = getelementptr inbounds %struct.Reg, %struct.Reg* %4562, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %4563 to i64*
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4565 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4564, i64 0, i64 0
  %XMM0.i28 = bitcast %union.VectorReg* %4565 to %union.vec128_t*
  %4566 = load i64, i64* %RBP.i27
  %4567 = sub i64 %4566, 264
  %4568 = bitcast %union.vec128_t* %XMM0.i28 to i8*
  %4569 = load i64, i64* %PC.i26
  %4570 = add i64 %4569, 8
  store i64 %4570, i64* %PC.i26
  %4571 = bitcast i8* %4568 to double*
  %4572 = load double, double* %4571, align 1
  %4573 = inttoptr i64 %4567 to double*
  store double %4572, double* %4573
  store %struct.Memory* %loadMem_400b34, %struct.Memory** %MEMORY
  %loadMem_400b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4575 = getelementptr inbounds %struct.GPR, %struct.GPR* %4574, i32 0, i32 33
  %4576 = getelementptr inbounds %struct.Reg, %struct.Reg* %4575, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4576 to i64*
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4577, i64 0, i64 0
  %YMM0.i24 = bitcast %union.VectorReg* %4578 to %"class.std::bitset"*
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4580 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4579, i64 0, i64 1
  %XMM1.i25 = bitcast %union.VectorReg* %4580 to %union.vec128_t*
  %4581 = bitcast %"class.std::bitset"* %YMM0.i24 to i8*
  %4582 = bitcast %union.vec128_t* %XMM1.i25 to i8*
  %4583 = load i64, i64* %PC.i23
  %4584 = add i64 %4583, 3
  store i64 %4584, i64* %PC.i23
  %4585 = bitcast i8* %4582 to <2 x i32>*
  %4586 = load <2 x i32>, <2 x i32>* %4585, align 1
  %4587 = getelementptr inbounds i8, i8* %4582, i64 8
  %4588 = bitcast i8* %4587 to <2 x i32>*
  %4589 = load <2 x i32>, <2 x i32>* %4588, align 1
  %4590 = extractelement <2 x i32> %4586, i32 0
  %4591 = bitcast i8* %4581 to i32*
  store i32 %4590, i32* %4591, align 1
  %4592 = extractelement <2 x i32> %4586, i32 1
  %4593 = getelementptr inbounds i8, i8* %4581, i64 4
  %4594 = bitcast i8* %4593 to i32*
  store i32 %4592, i32* %4594, align 1
  %4595 = extractelement <2 x i32> %4589, i32 0
  %4596 = getelementptr inbounds i8, i8* %4581, i64 8
  %4597 = bitcast i8* %4596 to i32*
  store i32 %4595, i32* %4597, align 1
  %4598 = extractelement <2 x i32> %4589, i32 1
  %4599 = getelementptr inbounds i8, i8* %4581, i64 12
  %4600 = bitcast i8* %4599 to i32*
  store i32 %4598, i32* %4600, align 1
  store %struct.Memory* %loadMem_400b3c, %struct.Memory** %MEMORY
  %loadMem_400b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4602 = getelementptr inbounds %struct.GPR, %struct.GPR* %4601, i32 0, i32 33
  %4603 = getelementptr inbounds %struct.Reg, %struct.Reg* %4602, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4603 to i64*
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 15
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %4606 to i64*
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4608 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4607, i64 0, i64 1
  %YMM1.i22 = bitcast %union.VectorReg* %4608 to %"class.std::bitset"*
  %4609 = bitcast %"class.std::bitset"* %YMM1.i22 to i8*
  %4610 = load i64, i64* %RBP.i21
  %4611 = sub i64 %4610, 232
  %4612 = load i64, i64* %PC.i20
  %4613 = add i64 %4612, 8
  store i64 %4613, i64* %PC.i20
  %4614 = inttoptr i64 %4611 to double*
  %4615 = load double, double* %4614
  %4616 = bitcast i8* %4609 to double*
  store double %4615, double* %4616, align 1
  %4617 = getelementptr inbounds i8, i8* %4609, i64 8
  %4618 = bitcast i8* %4617 to double*
  store double 0.000000e+00, double* %4618, align 1
  store %struct.Memory* %loadMem_400b3f, %struct.Memory** %MEMORY
  %loadMem_400b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 33
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4621 to i64*
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 15
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %4624 to i64*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4625, i64 0, i64 2
  %YMM2.i19 = bitcast %union.VectorReg* %4626 to %"class.std::bitset"*
  %4627 = bitcast %"class.std::bitset"* %YMM2.i19 to i8*
  %4628 = load i64, i64* %RBP.i18
  %4629 = sub i64 %4628, 264
  %4630 = load i64, i64* %PC.i17
  %4631 = add i64 %4630, 8
  store i64 %4631, i64* %PC.i17
  %4632 = inttoptr i64 %4629 to double*
  %4633 = load double, double* %4632
  %4634 = bitcast i8* %4627 to double*
  store double %4633, double* %4634, align 1
  %4635 = getelementptr inbounds i8, i8* %4627, i64 8
  %4636 = bitcast i8* %4635 to double*
  store double 0.000000e+00, double* %4636, align 1
  store %struct.Memory* %loadMem_400b47, %struct.Memory** %MEMORY
  %loadMem1_400b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 33
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4639 to i64*
  %4640 = load i64, i64* %PC.i16
  %4641 = add i64 %4640, 481
  %4642 = load i64, i64* %PC.i16
  %4643 = add i64 %4642, 5
  %4644 = load i64, i64* %PC.i16
  %4645 = add i64 %4644, 5
  store i64 %4645, i64* %PC.i16
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4647 = load i64, i64* %4646, align 8
  %4648 = add i64 %4647, -8
  %4649 = inttoptr i64 %4648 to i64*
  store i64 %4643, i64* %4649
  store i64 %4648, i64* %4646, align 8
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4641, i64* %4650, align 8
  store %struct.Memory* %loadMem1_400b4f, %struct.Memory** %MEMORY
  %loadMem2_400b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b4f = load i64, i64* %3
  %call2_400b4f = call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %loadPC_400b4f, %struct.Memory* %loadMem2_400b4f)
  store %struct.Memory* %call2_400b4f, %struct.Memory** %MEMORY
  %loadMem_400b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 33
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4653 to i64*
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4655 = getelementptr inbounds %struct.GPR, %struct.GPR* %4654, i32 0, i32 15
  %4656 = getelementptr inbounds %struct.Reg, %struct.Reg* %4655, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %4656 to i64*
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4658 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4657, i64 0, i64 1
  %YMM1.i15 = bitcast %union.VectorReg* %4658 to %"class.std::bitset"*
  %4659 = bitcast %"class.std::bitset"* %YMM1.i15 to i8*
  %4660 = load i64, i64* %RBP.i14
  %4661 = sub i64 %4660, 96
  %4662 = load i64, i64* %PC.i13
  %4663 = add i64 %4662, 5
  store i64 %4663, i64* %PC.i13
  %4664 = inttoptr i64 %4661 to double*
  %4665 = load double, double* %4664
  %4666 = bitcast i8* %4659 to double*
  store double %4665, double* %4666, align 1
  %4667 = getelementptr inbounds i8, i8* %4659, i64 8
  %4668 = bitcast i8* %4667 to double*
  store double 0.000000e+00, double* %4668, align 1
  store %struct.Memory* %loadMem_400b54, %struct.Memory** %MEMORY
  %loadMem_400b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 33
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4671 to i64*
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 15
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %4674 to i64*
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4676 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4675, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4676 to %union.vec128_t*
  %4677 = load i64, i64* %RBP.i12
  %4678 = sub i64 %4677, 272
  %4679 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4680 = load i64, i64* %PC.i11
  %4681 = add i64 %4680, 8
  store i64 %4681, i64* %PC.i11
  %4682 = bitcast i8* %4679 to double*
  %4683 = load double, double* %4682, align 1
  %4684 = inttoptr i64 %4678 to double*
  store double %4683, double* %4684
  store %struct.Memory* %loadMem_400b59, %struct.Memory** %MEMORY
  %loadMem_400b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 33
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4687 to i64*
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4689 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4688, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4689 to %"class.std::bitset"*
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4691 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4690, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4691 to %union.vec128_t*
  %4692 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4693 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4694 = load i64, i64* %PC.i10
  %4695 = add i64 %4694, 3
  store i64 %4695, i64* %PC.i10
  %4696 = bitcast i8* %4693 to <2 x i32>*
  %4697 = load <2 x i32>, <2 x i32>* %4696, align 1
  %4698 = getelementptr inbounds i8, i8* %4693, i64 8
  %4699 = bitcast i8* %4698 to <2 x i32>*
  %4700 = load <2 x i32>, <2 x i32>* %4699, align 1
  %4701 = extractelement <2 x i32> %4697, i32 0
  %4702 = bitcast i8* %4692 to i32*
  store i32 %4701, i32* %4702, align 1
  %4703 = extractelement <2 x i32> %4697, i32 1
  %4704 = getelementptr inbounds i8, i8* %4692, i64 4
  %4705 = bitcast i8* %4704 to i32*
  store i32 %4703, i32* %4705, align 1
  %4706 = extractelement <2 x i32> %4700, i32 0
  %4707 = getelementptr inbounds i8, i8* %4692, i64 8
  %4708 = bitcast i8* %4707 to i32*
  store i32 %4706, i32* %4708, align 1
  %4709 = extractelement <2 x i32> %4700, i32 1
  %4710 = getelementptr inbounds i8, i8* %4692, i64 12
  %4711 = bitcast i8* %4710 to i32*
  store i32 %4709, i32* %4711, align 1
  store %struct.Memory* %loadMem_400b61, %struct.Memory** %MEMORY
  %loadMem_400b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 33
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4714 to i64*
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 15
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %4717 to i64*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4718, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4719 to %"class.std::bitset"*
  %4720 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4721 = load i64, i64* %RBP.i9
  %4722 = sub i64 %4721, 192
  %4723 = load i64, i64* %PC.i8
  %4724 = add i64 %4723, 8
  store i64 %4724, i64* %PC.i8
  %4725 = inttoptr i64 %4722 to double*
  %4726 = load double, double* %4725
  %4727 = bitcast i8* %4720 to double*
  store double %4726, double* %4727, align 1
  %4728 = getelementptr inbounds i8, i8* %4720, i64 8
  %4729 = bitcast i8* %4728 to double*
  store double 0.000000e+00, double* %4729, align 1
  store %struct.Memory* %loadMem_400b64, %struct.Memory** %MEMORY
  %loadMem_400b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 33
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4732 to i64*
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4734 = getelementptr inbounds %struct.GPR, %struct.GPR* %4733, i32 0, i32 15
  %4735 = getelementptr inbounds %struct.Reg, %struct.Reg* %4734, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %4735 to i64*
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4737 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4736, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %4737 to %"class.std::bitset"*
  %4738 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %4739 = load i64, i64* %RBP.i7
  %4740 = sub i64 %4739, 272
  %4741 = load i64, i64* %PC.i6
  %4742 = add i64 %4741, 8
  store i64 %4742, i64* %PC.i6
  %4743 = inttoptr i64 %4740 to double*
  %4744 = load double, double* %4743
  %4745 = bitcast i8* %4738 to double*
  store double %4744, double* %4745, align 1
  %4746 = getelementptr inbounds i8, i8* %4738, i64 8
  %4747 = bitcast i8* %4746 to double*
  store double 0.000000e+00, double* %4747, align 1
  store %struct.Memory* %loadMem_400b6c, %struct.Memory** %MEMORY
  %loadMem1_400b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 33
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4750 to i64*
  %4751 = load i64, i64* %PC.i5
  %4752 = add i64 %4751, 444
  %4753 = load i64, i64* %PC.i5
  %4754 = add i64 %4753, 5
  %4755 = load i64, i64* %PC.i5
  %4756 = add i64 %4755, 5
  store i64 %4756, i64* %PC.i5
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4758 = load i64, i64* %4757, align 8
  %4759 = add i64 %4758, -8
  %4760 = inttoptr i64 %4759 to i64*
  store i64 %4754, i64* %4760
  store i64 %4759, i64* %4757, align 8
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4752, i64* %4761, align 8
  store %struct.Memory* %loadMem1_400b74, %struct.Memory** %MEMORY
  %loadMem2_400b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b74 = load i64, i64* %3
  %call2_400b74 = call %struct.Memory* @sub_400d30.lerp(%struct.State* %0, i64 %loadPC_400b74, %struct.Memory* %loadMem2_400b74)
  store %struct.Memory* %call2_400b74, %struct.Memory** %MEMORY
  %loadMem_400b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 33
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4764 to i64*
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4766 = getelementptr inbounds %struct.GPR, %struct.GPR* %4765, i32 0, i32 13
  %4767 = getelementptr inbounds %struct.Reg, %struct.Reg* %4766, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4767 to i64*
  %4768 = load i64, i64* %RSP.i
  %4769 = load i64, i64* %PC.i4
  %4770 = add i64 %4769, 7
  store i64 %4770, i64* %PC.i4
  %4771 = add i64 272, %4768
  store i64 %4771, i64* %RSP.i, align 8
  %4772 = icmp ult i64 %4771, %4768
  %4773 = icmp ult i64 %4771, 272
  %4774 = or i1 %4772, %4773
  %4775 = zext i1 %4774 to i8
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4775, i8* %4776, align 1
  %4777 = trunc i64 %4771 to i32
  %4778 = and i32 %4777, 255
  %4779 = call i32 @llvm.ctpop.i32(i32 %4778)
  %4780 = trunc i32 %4779 to i8
  %4781 = and i8 %4780, 1
  %4782 = xor i8 %4781, 1
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4782, i8* %4783, align 1
  %4784 = xor i64 272, %4768
  %4785 = xor i64 %4784, %4771
  %4786 = lshr i64 %4785, 4
  %4787 = trunc i64 %4786 to i8
  %4788 = and i8 %4787, 1
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4788, i8* %4789, align 1
  %4790 = icmp eq i64 %4771, 0
  %4791 = zext i1 %4790 to i8
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4791, i8* %4792, align 1
  %4793 = lshr i64 %4771, 63
  %4794 = trunc i64 %4793 to i8
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4794, i8* %4795, align 1
  %4796 = lshr i64 %4768, 63
  %4797 = xor i64 %4793, %4796
  %4798 = add i64 %4797, %4793
  %4799 = icmp eq i64 %4798, 2
  %4800 = zext i1 %4799 to i8
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4800, i8* %4801, align 1
  store %struct.Memory* %loadMem_400b79, %struct.Memory** %MEMORY
  %loadMem_400b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 33
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4804 to i64*
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 15
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4807 to i64*
  %4808 = load i64, i64* %PC.i2
  %4809 = add i64 %4808, 1
  store i64 %4809, i64* %PC.i2
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4811 = load i64, i64* %4810, align 8
  %4812 = add i64 %4811, 8
  %4813 = inttoptr i64 %4811 to i64*
  %4814 = load i64, i64* %4813
  store i64 %4814, i64* %RBP.i3, align 8
  store i64 %4812, i64* %4810, align 8
  store %struct.Memory* %loadMem_400b80, %struct.Memory** %MEMORY
  %loadMem_400b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 33
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4817 to i64*
  %4818 = load i64, i64* %PC.i1
  %4819 = add i64 %4818, 1
  store i64 %4819, i64* %PC.i1
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4822 = load i64, i64* %4821, align 8
  %4823 = inttoptr i64 %4822 to i64*
  %4824 = load i64, i64* %4823
  store i64 %4824, i64* %4820, align 8
  %4825 = add i64 %4822, 8
  store i64 %4825, i64* %4821, align 8
  store %struct.Memory* %loadMem_400b81, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400b81
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

define %struct.Memory* @routine_subq__0x110___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x602450___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
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

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, ptrtoint (%G_0x602450___rcx_4__type* @G_0x602450___rcx_4_ to i64)
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
block_400478:
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
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_movsd_0x5dc__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x5dc__rip__4196452__type* @G_0x5dc__rip__4196452_ to i64
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
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_movsd_0x58a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x58a__rip__4196534__type* @G_0x58a__rip__4196534_ to i64
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
block_400478:
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
  %10 = ptrtoint %G_0x531__rip__4196623__type* @G_0x531__rip__4196623_ to i64
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
block_400478:
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
block_400478:
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
  %10 = ptrtoint %G_0x497__rip__4196777__type* @G_0x497__rip__4196777_ to i64
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
block_400478:
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
block_400478:
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
block_400478:
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
block_400478:
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
  %10 = ptrtoint %G_0x43c__rip__4196868__type* @G_0x43c__rip__4196868_ to i64
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
block_400478:
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
  %10 = ptrtoint %G_0x3cf__rip__4196977__type* @G_0x3cf__rip__4196977_ to i64
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
block_400478:
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
  %10 = ptrtoint %G_0x37d__rip__4197059__type* @G_0x37d__rip__4197059_ to i64
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
