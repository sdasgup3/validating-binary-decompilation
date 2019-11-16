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
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x70ea90_type = type <{ [8 x i8] }>
%G_0x70eaa8_type = type <{ [4 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x722c98_type = type <{ [4 x i8] }>
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
%struct.anon.2 = type { i8, i8 }

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
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x70ea90 = global %G_0x70ea90_type zeroinitializer
@G_0x70eaa8 = global %G_0x70eaa8_type zeroinitializer
@G_0x70fcf0 = global %G_0x70fcf0_type zeroinitializer
@G_0x722c98 = global %G_0x722c98_type zeroinitializer

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
define %struct.Memory* @poc_ref_pic_reorder(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4a3240 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4a3240, %struct.Memory** %MEMORY
  %loadMem_4a3241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i303 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i303
  %27 = load i64, i64* %PC.i302
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i302
  store i64 %26, i64* %RBP.i304, align 8
  store %struct.Memory* %loadMem_4a3241, %struct.Memory** %MEMORY
  %loadMem_4a3244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i368 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i368
  %36 = load i64, i64* %PC.i367
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i367
  %38 = sub i64 %35, 768
  store i64 %38, i64* %RSP.i368, align 8
  %39 = icmp ult i64 %35, 768
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
  %49 = xor i64 768, %35
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
  store %struct.Memory* %loadMem_4a3244, %struct.Memory** %MEMORY
  %loadMem_4a324b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i823 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i824 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i824
  %77 = add i64 %76, 16
  %78 = load i64, i64* %PC.i822
  %79 = add i64 %78, 3
  store i64 %79, i64* %PC.i822
  %80 = inttoptr i64 %77 to i32*
  %81 = load i32, i32* %80
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %RAX.i823, align 8
  store %struct.Memory* %loadMem_4a324b, %struct.Memory** %MEMORY
  %loadMem_4a324e = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i1048 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 21
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %R10D.i1049 = bitcast %union.anon* %88 to i32*
  %89 = bitcast i32* %R10D.i1049 to i64*
  %90 = load i64, i64* %PC.i1048
  %91 = add i64 %90, 6
  store i64 %91, i64* %PC.i1048
  store i64 1, i64* %89, align 8
  store %struct.Memory* %loadMem_4a324e, %struct.Memory** %MEMORY
  %loadMem_4a3254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 33
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %PC.i1045 = bitcast %union.anon* %94 to i64*
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 11
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %RDI.i1046 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 15
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %RBP.i1047 = bitcast %union.anon* %100 to i64*
  %101 = load i64, i64* %RBP.i1047
  %102 = sub i64 %101, 8
  %103 = load i64, i64* %RDI.i1046
  %104 = load i64, i64* %PC.i1045
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC.i1045
  %106 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %106
  store %struct.Memory* %loadMem_4a3254, %struct.Memory** %MEMORY
  %loadMem_4a3258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i1042 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %ESI.i1043 = bitcast %union.anon* %112 to i32*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i1044 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i1044
  %117 = sub i64 %116, 12
  %118 = load i32, i32* %ESI.i1043
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %PC.i1042
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC.i1042
  %122 = inttoptr i64 %117 to i32*
  store i32 %118, i32* %122
  store %struct.Memory* %loadMem_4a3258, %struct.Memory** %MEMORY
  %loadMem_4a325b = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i1039 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RDX.i1040 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RBP.i1041 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RBP.i1041
  %133 = sub i64 %132, 24
  %134 = load i64, i64* %RDX.i1040
  %135 = load i64, i64* %PC.i1039
  %136 = add i64 %135, 4
  store i64 %136, i64* %PC.i1039
  %137 = inttoptr i64 %133 to i64*
  store i64 %134, i64* %137
  store %struct.Memory* %loadMem_4a325b, %struct.Memory** %MEMORY
  %loadMem_4a325f = load %struct.Memory*, %struct.Memory** %MEMORY
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 33
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %PC.i1036 = bitcast %union.anon* %140 to i64*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RCX.i1037 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RBP.i1038 = bitcast %union.anon* %146 to i64*
  %147 = load i64, i64* %RBP.i1038
  %148 = sub i64 %147, 32
  %149 = load i64, i64* %RCX.i1037
  %150 = load i64, i64* %PC.i1036
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC.i1036
  %152 = inttoptr i64 %148 to i64*
  store i64 %149, i64* %152
  store %struct.Memory* %loadMem_4a325f, %struct.Memory** %MEMORY
  %loadMem_4a3263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i1034 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i1035 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 17
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %R8.i = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %RBP.i1035
  %163 = sub i64 %162, 40
  %164 = load i64, i64* %R8.i
  %165 = load i64, i64* %PC.i1034
  %166 = add i64 %165, 4
  store i64 %166, i64* %PC.i1034
  %167 = inttoptr i64 %163 to i64*
  store i64 %164, i64* %167
  store %struct.Memory* %loadMem_4a3263, %struct.Memory** %MEMORY
  %loadMem_4a3267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 33
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %PC.i1032 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 19
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %173 to i32*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 15
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RBP.i1033 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RBP.i1033
  %178 = sub i64 %177, 44
  %179 = load i32, i32* %R9D.i
  %180 = zext i32 %179 to i64
  %181 = load i64, i64* %PC.i1032
  %182 = add i64 %181, 4
  store i64 %182, i64* %PC.i1032
  %183 = inttoptr i64 %178 to i32*
  store i32 %179, i32* %183
  store %struct.Memory* %loadMem_4a3267, %struct.Memory** %MEMORY
  %loadMem_4a326b = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i1029 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %EAX.i1030 = bitcast %union.anon* %189 to i32*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 15
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RBP.i1031 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %RBP.i1031
  %194 = sub i64 %193, 48
  %195 = load i32, i32* %EAX.i1030
  %196 = zext i32 %195 to i64
  %197 = load i64, i64* %PC.i1029
  %198 = add i64 %197, 3
  store i64 %198, i64* %PC.i1029
  %199 = inttoptr i64 %194 to i32*
  store i32 %195, i32* %199
  store %struct.Memory* %loadMem_4a326b, %struct.Memory** %MEMORY
  %loadMem_4a326e = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i1027 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %RAX.i1028 = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %PC.i1027
  %207 = add i64 %206, 7
  store i64 %207, i64* %PC.i1027
  %208 = load i32, i32* bitcast (%G_0x722c98_type* @G_0x722c98 to i32*)
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RAX.i1028, align 8
  store %struct.Memory* %loadMem_4a326e, %struct.Memory** %MEMORY
  %loadMem_4a3275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i1025 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RAX.i1026 = bitcast %union.anon* %215 to i64*
  %216 = load i64, i64* %RAX.i1026
  %217 = load i64, i64* %PC.i1025
  %218 = add i64 %217, 3
  store i64 %218, i64* %PC.i1025
  %219 = trunc i64 %216 to i32
  %220 = add i32 4, %219
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %RAX.i1026, align 8
  %222 = icmp ult i32 %220, %219
  %223 = icmp ult i32 %220, 4
  %224 = or i1 %222, %223
  %225 = zext i1 %224 to i8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %225, i8* %226, align 1
  %227 = and i32 %220, 255
  %228 = call i32 @llvm.ctpop.i32(i32 %227)
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %231, i8* %232, align 1
  %233 = xor i64 4, %216
  %234 = trunc i64 %233 to i32
  %235 = xor i32 %234, %220
  %236 = lshr i32 %235, 4
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %238, i8* %239, align 1
  %240 = icmp eq i32 %220, 0
  %241 = zext i1 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %241, i8* %242, align 1
  %243 = lshr i32 %220, 31
  %244 = trunc i32 %243 to i8
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %244, i8* %245, align 1
  %246 = lshr i32 %219, 31
  %247 = xor i32 %243, %246
  %248 = add i32 %247, %243
  %249 = icmp eq i32 %248, 2
  %250 = zext i1 %249 to i8
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %250, i8* %251, align 1
  store %struct.Memory* %loadMem_4a3275, %struct.Memory** %MEMORY
  %loadMem_4a3278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 33
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %PC.i1022 = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %EAX.i1023 = bitcast %union.anon* %257 to i32*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RCX.i1024 = bitcast %union.anon* %260 to i64*
  %261 = load i32, i32* %EAX.i1023
  %262 = zext i32 %261 to i64
  %263 = load i64, i64* %PC.i1022
  %264 = add i64 %263, 2
  store i64 %264, i64* %PC.i1022
  %265 = and i64 %262, 4294967295
  store i64 %265, i64* %RCX.i1024, align 8
  store %struct.Memory* %loadMem_4a3278, %struct.Memory** %MEMORY
  %loadMem_4a327a = load %struct.Memory*, %struct.Memory** %MEMORY
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 33
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %PC.i1020 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %272 = bitcast %union.anon* %271 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %272, i32 0, i32 0
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 21
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %R10D.i1021 = bitcast %union.anon* %275 to i32*
  %276 = bitcast i32* %R10D.i1021 to i64*
  %277 = load i32, i32* %R10D.i1021
  %278 = zext i32 %277 to i64
  %279 = load i8, i8* %CL.i
  %280 = zext i8 %279 to i64
  %281 = load i64, i64* %PC.i1020
  %282 = add i64 %281, 3
  store i64 %282, i64* %PC.i1020
  %283 = trunc i64 %280 to i5
  switch i5 %283, label %289 [
    i5 0, label %routine_shll__cl___r10d.exit
    i5 1, label %284
  ]

; <label>:284:                                    ; preds = %entry
  %285 = shl i32 %277, 1
  %286 = icmp slt i32 %277, 0
  %287 = icmp slt i32 %285, 0
  %288 = xor i1 %286, %287
  br label %298

; <label>:289:                                    ; preds = %entry
  %290 = and i64 %280, 31
  %291 = add i64 %290, 4294967295
  %292 = and i64 %278, 4294967295
  %293 = and i64 %291, 4294967295
  %294 = shl i64 %292, %293
  %295 = trunc i64 %294 to i32
  %296 = icmp slt i32 %295, 0
  %297 = shl i32 %295, 1
  br label %298

; <label>:298:                                    ; preds = %289, %284
  %299 = phi i1 [ %286, %284 ], [ %296, %289 ]
  %300 = phi i1 [ %288, %284 ], [ false, %289 ]
  %301 = phi i32 [ %285, %284 ], [ %297, %289 ]
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %276, align 8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %304 = zext i1 %299 to i8
  store i8 %304, i8* %303, align 1
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %306 = and i32 %301, 254
  %307 = call i32 @llvm.ctpop.i32(i32 %306)
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = xor i8 %309, 1
  store i8 %310, i8* %305, align 1
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %311, align 1
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %313 = icmp eq i32 %301, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %312, align 1
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %316 = lshr i32 %301, 31
  %317 = trunc i32 %316 to i8
  store i8 %317, i8* %315, align 1
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %319 = zext i1 %300 to i8
  store i8 %319, i8* %318, align 1
  br label %routine_shll__cl___r10d.exit

routine_shll__cl___r10d.exit:                     ; preds = %entry, %298
  store %struct.Memory* %loadMem_4a327a, %struct.Memory** %MEMORY
  %loadMem_4a327d = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i1018 = bitcast %union.anon* %322 to i64*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 21
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %325 to i32*
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 15
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %RBP.i1019 = bitcast %union.anon* %328 to i64*
  %329 = load i64, i64* %RBP.i1019
  %330 = sub i64 %329, 756
  %331 = load i32, i32* %R10D.i
  %332 = zext i32 %331 to i64
  %333 = load i64, i64* %PC.i1018
  %334 = add i64 %333, 7
  store i64 %334, i64* %PC.i1018
  %335 = inttoptr i64 %330 to i32*
  store i32 %331, i32* %335
  store %struct.Memory* %loadMem_4a327d, %struct.Memory** %MEMORY
  %loadMem_4a3284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i1016 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 7
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %RDX.i1017 = bitcast %union.anon* %341 to i64*
  %342 = load i64, i64* %PC.i1016
  %343 = add i64 %342, 8
  store i64 %343, i64* %PC.i1016
  %344 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %344, i64* %RDX.i1017, align 8
  store %struct.Memory* %loadMem_4a3284, %struct.Memory** %MEMORY
  %loadMem_4a328c = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i1014 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 7
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RDX.i1015 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %RDX.i1015
  %352 = add i64 %351, 28
  %353 = load i64, i64* %PC.i1014
  %354 = add i64 %353, 4
  store i64 %354, i64* %PC.i1014
  %355 = inttoptr i64 %352 to i32*
  %356 = load i32, i32* %355
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %357, align 1
  %358 = and i32 %356, 255
  %359 = call i32 @llvm.ctpop.i32(i32 %358)
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %362, i8* %363, align 1
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %364, align 1
  %365 = icmp eq i32 %356, 0
  %366 = zext i1 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %366, i8* %367, align 1
  %368 = lshr i32 %356, 31
  %369 = trunc i32 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %369, i8* %370, align 1
  %371 = lshr i32 %356, 31
  %372 = xor i32 %368, %371
  %373 = add i32 %372, %371
  %374 = icmp eq i32 %373, 2
  %375 = zext i1 %374 to i8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %375, i8* %376, align 1
  store %struct.Memory* %loadMem_4a328c, %struct.Memory** %MEMORY
  %loadMem_4a3290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i1013 = bitcast %union.anon* %379 to i64*
  %380 = load i64, i64* %PC.i1013
  %381 = add i64 %380, 40
  %382 = load i64, i64* %PC.i1013
  %383 = add i64 %382, 6
  %384 = load i64, i64* %PC.i1013
  %385 = add i64 %384, 6
  store i64 %385, i64* %PC.i1013
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %387 = load i8, i8* %386, align 1
  %388 = icmp eq i8 %387, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %BRANCH_TAKEN, align 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %391 = select i1 %388, i64 %381, i64 %383
  store i64 %391, i64* %390, align 8
  store %struct.Memory* %loadMem_4a3290, %struct.Memory** %MEMORY
  %loadBr_4a3290 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3290 = icmp eq i8 %loadBr_4a3290, 1
  br i1 %cmpBr_4a3290, label %block_.L_4a32b8, label %block_4a3296

block_4a3296:                                     ; preds = %routine_shll__cl___r10d.exit
  %loadMem_4a3296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 33
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %PC.i1010 = bitcast %union.anon* %394 to i64*
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %RAX.i1011 = bitcast %union.anon* %397 to i64*
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 15
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %RBP.i1012 = bitcast %union.anon* %400 to i64*
  %401 = load i64, i64* %RBP.i1012
  %402 = sub i64 %401, 756
  %403 = load i64, i64* %PC.i1010
  %404 = add i64 %403, 6
  store i64 %404, i64* %PC.i1010
  %405 = inttoptr i64 %402 to i32*
  %406 = load i32, i32* %405
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RAX.i1011, align 8
  store %struct.Memory* %loadMem_4a3296, %struct.Memory** %MEMORY
  %loadMem_4a329c = load %struct.Memory*, %struct.Memory** %MEMORY
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 33
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %PC.i1007 = bitcast %union.anon* %410 to i64*
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %EAX.i1008 = bitcast %union.anon* %413 to i32*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 15
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RBP.i1009 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %RBP.i1009
  %418 = sub i64 %417, 752
  %419 = load i32, i32* %EAX.i1008
  %420 = zext i32 %419 to i64
  %421 = load i64, i64* %PC.i1007
  %422 = add i64 %421, 6
  store i64 %422, i64* %PC.i1007
  %423 = inttoptr i64 %418 to i32*
  store i32 %419, i32* %423
  store %struct.Memory* %loadMem_4a329c, %struct.Memory** %MEMORY
  %loadMem_4a32a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i1005 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 5
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RCX.i1006 = bitcast %union.anon* %429 to i64*
  %430 = load i64, i64* %PC.i1005
  %431 = add i64 %430, 8
  store i64 %431, i64* %PC.i1005
  %432 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %432, i64* %RCX.i1006, align 8
  store %struct.Memory* %loadMem_4a32a2, %struct.Memory** %MEMORY
  %loadMem_4a32aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 33
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %PC.i1002 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RAX.i1003 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 5
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RCX.i1004 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %RCX.i1004
  %443 = add i64 %442, 72464
  %444 = load i64, i64* %PC.i1002
  %445 = add i64 %444, 6
  store i64 %445, i64* %PC.i1002
  %446 = inttoptr i64 %443 to i32*
  %447 = load i32, i32* %446
  %448 = zext i32 %447 to i64
  store i64 %448, i64* %RAX.i1003, align 8
  store %struct.Memory* %loadMem_4a32aa, %struct.Memory** %MEMORY
  %loadMem_4a32b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i999 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %EAX.i1000 = bitcast %union.anon* %454 to i32*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 15
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %RBP.i1001 = bitcast %union.anon* %457 to i64*
  %458 = load i64, i64* %RBP.i1001
  %459 = sub i64 %458, 64
  %460 = load i32, i32* %EAX.i1000
  %461 = zext i32 %460 to i64
  %462 = load i64, i64* %PC.i999
  %463 = add i64 %462, 3
  store i64 %463, i64* %PC.i999
  %464 = inttoptr i64 %459 to i32*
  store i32 %460, i32* %464
  store %struct.Memory* %loadMem_4a32b0, %struct.Memory** %MEMORY
  %loadMem_4a32b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i998 = bitcast %union.anon* %467 to i64*
  %468 = load i64, i64* %PC.i998
  %469 = add i64 %468, 43
  %470 = load i64, i64* %PC.i998
  %471 = add i64 %470, 5
  store i64 %471, i64* %PC.i998
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %469, i64* %472, align 8
  store %struct.Memory* %loadMem_4a32b3, %struct.Memory** %MEMORY
  br label %block_.L_4a32de

block_.L_4a32b8:                                  ; preds = %routine_shll__cl___r10d.exit
  %loadMem_4a32b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 33
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %PC.i995 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %RAX.i996 = bitcast %union.anon* %478 to i64*
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 15
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %RBP.i997 = bitcast %union.anon* %481 to i64*
  %482 = load i64, i64* %RBP.i997
  %483 = sub i64 %482, 756
  %484 = load i64, i64* %PC.i995
  %485 = add i64 %484, 6
  store i64 %485, i64* %PC.i995
  %486 = inttoptr i64 %483 to i32*
  %487 = load i32, i32* %486
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %RAX.i996, align 8
  store %struct.Memory* %loadMem_4a32b8, %struct.Memory** %MEMORY
  %loadMem_4a32be = load %struct.Memory*, %struct.Memory** %MEMORY
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 33
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %PC.i993 = bitcast %union.anon* %491 to i64*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RAX.i994 = bitcast %union.anon* %494 to i64*
  %495 = load i64, i64* %RAX.i994
  %496 = load i64, i64* %PC.i993
  %497 = add i64 %496, 2
  store i64 %497, i64* %PC.i993
  %498 = trunc i64 %495 to i32
  %499 = shl i32 %498, 1
  %500 = icmp slt i32 %498, 0
  %501 = icmp slt i32 %499, 0
  %502 = xor i1 %500, %501
  %503 = zext i32 %499 to i64
  store i64 %503, i64* %RAX.i994, align 8
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %505 = zext i1 %500 to i8
  store i8 %505, i8* %504, align 1
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %507 = and i32 %499, 254
  %508 = call i32 @llvm.ctpop.i32(i32 %507)
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  %511 = xor i8 %510, 1
  store i8 %511, i8* %506, align 1
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %512, align 1
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %514 = icmp eq i32 %499, 0
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %513, align 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %517 = lshr i32 %499, 31
  %518 = trunc i32 %517 to i8
  store i8 %518, i8* %516, align 1
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %520 = zext i1 %502 to i8
  store i8 %520, i8* %519, align 1
  store %struct.Memory* %loadMem_4a32be, %struct.Memory** %MEMORY
  %loadMem_4a32c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 33
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %PC.i990 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 1
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %EAX.i991 = bitcast %union.anon* %526 to i32*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 15
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RBP.i992 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %RBP.i992
  %531 = sub i64 %530, 752
  %532 = load i32, i32* %EAX.i991
  %533 = zext i32 %532 to i64
  %534 = load i64, i64* %PC.i990
  %535 = add i64 %534, 6
  store i64 %535, i64* %PC.i990
  %536 = inttoptr i64 %531 to i32*
  store i32 %532, i32* %536
  store %struct.Memory* %loadMem_4a32c1, %struct.Memory** %MEMORY
  %loadMem_4a32c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 33
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %PC.i988 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 5
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %RCX.i989 = bitcast %union.anon* %542 to i64*
  %543 = load i64, i64* %PC.i988
  %544 = add i64 %543, 8
  store i64 %544, i64* %PC.i988
  %545 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %545, i64* %RCX.i989, align 8
  store %struct.Memory* %loadMem_4a32c7, %struct.Memory** %MEMORY
  %loadMem_4a32cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RAX.i986 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 5
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RCX.i987 = bitcast %union.anon* %554 to i64*
  %555 = load i64, i64* %RCX.i987
  %556 = add i64 %555, 72464
  %557 = load i64, i64* %PC.i985
  %558 = add i64 %557, 6
  store i64 %558, i64* %PC.i985
  %559 = inttoptr i64 %556 to i32*
  %560 = load i32, i32* %559
  %561 = zext i32 %560 to i64
  store i64 %561, i64* %RAX.i986, align 8
  store %struct.Memory* %loadMem_4a32cf, %struct.Memory** %MEMORY
  %loadMem_4a32d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 33
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 1
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %RAX.i984 = bitcast %union.anon* %567 to i64*
  %568 = load i64, i64* %RAX.i984
  %569 = load i64, i64* %PC.i983
  %570 = add i64 %569, 2
  store i64 %570, i64* %PC.i983
  %571 = trunc i64 %568 to i32
  %572 = shl i32 %571, 1
  %573 = icmp slt i32 %571, 0
  %574 = icmp slt i32 %572, 0
  %575 = xor i1 %573, %574
  %576 = zext i32 %572 to i64
  store i64 %576, i64* %RAX.i984, align 8
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %578 = zext i1 %573 to i8
  store i8 %578, i8* %577, align 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %580 = and i32 %572, 254
  %581 = call i32 @llvm.ctpop.i32(i32 %580)
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = xor i8 %583, 1
  store i8 %584, i8* %579, align 1
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %585, align 1
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %587 = icmp eq i32 %572, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %586, align 1
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %590 = lshr i32 %572, 31
  %591 = trunc i32 %590 to i8
  store i8 %591, i8* %589, align 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %593 = zext i1 %575 to i8
  store i8 %593, i8* %592, align 1
  store %struct.Memory* %loadMem_4a32d5, %struct.Memory** %MEMORY
  %loadMem_4a32d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 33
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %PC.i981 = bitcast %union.anon* %596 to i64*
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 1
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %RAX.i982 = bitcast %union.anon* %599 to i64*
  %600 = load i64, i64* %RAX.i982
  %601 = load i64, i64* %PC.i981
  %602 = add i64 %601, 3
  store i64 %602, i64* %PC.i981
  %603 = trunc i64 %600 to i32
  %604 = add i32 1, %603
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RAX.i982, align 8
  %606 = icmp ult i32 %604, %603
  %607 = icmp ult i32 %604, 1
  %608 = or i1 %606, %607
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %609, i8* %610, align 1
  %611 = and i32 %604, 255
  %612 = call i32 @llvm.ctpop.i32(i32 %611)
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  %615 = xor i8 %614, 1
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %615, i8* %616, align 1
  %617 = xor i64 1, %600
  %618 = trunc i64 %617 to i32
  %619 = xor i32 %618, %604
  %620 = lshr i32 %619, 4
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %622, i8* %623, align 1
  %624 = icmp eq i32 %604, 0
  %625 = zext i1 %624 to i8
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %625, i8* %626, align 1
  %627 = lshr i32 %604, 31
  %628 = trunc i32 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %628, i8* %629, align 1
  %630 = lshr i32 %603, 31
  %631 = xor i32 %627, %630
  %632 = add i32 %631, %627
  %633 = icmp eq i32 %632, 2
  %634 = zext i1 %633 to i8
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %634, i8* %635, align 1
  store %struct.Memory* %loadMem_4a32d8, %struct.Memory** %MEMORY
  %loadMem_4a32db = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i978 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 1
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %EAX.i979 = bitcast %union.anon* %641 to i32*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 15
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %RBP.i980 = bitcast %union.anon* %644 to i64*
  %645 = load i64, i64* %RBP.i980
  %646 = sub i64 %645, 64
  %647 = load i32, i32* %EAX.i979
  %648 = zext i32 %647 to i64
  %649 = load i64, i64* %PC.i978
  %650 = add i64 %649, 3
  store i64 %650, i64* %PC.i978
  %651 = inttoptr i64 %646 to i32*
  store i32 %647, i32* %651
  store %struct.Memory* %loadMem_4a32db, %struct.Memory** %MEMORY
  br label %block_.L_4a32de

block_.L_4a32de:                                  ; preds = %block_.L_4a32b8, %block_4a3296
  %loadMem_4a32de = load %struct.Memory*, %struct.Memory** %MEMORY
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 33
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %PC.i975 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 1
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RAX.i976 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 15
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RBP.i977 = bitcast %union.anon* %660 to i64*
  %661 = load i64, i64* %RBP.i977
  %662 = sub i64 %661, 64
  %663 = load i64, i64* %PC.i975
  %664 = add i64 %663, 3
  store i64 %664, i64* %PC.i975
  %665 = inttoptr i64 %662 to i32*
  %666 = load i32, i32* %665
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RAX.i976, align 8
  store %struct.Memory* %loadMem_4a32de, %struct.Memory** %MEMORY
  %loadMem_4a32e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 1
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %EAX.i973 = bitcast %union.anon* %673 to i32*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 15
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RBP.i974 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %RBP.i974
  %678 = sub i64 %677, 68
  %679 = load i32, i32* %EAX.i973
  %680 = zext i32 %679 to i64
  %681 = load i64, i64* %PC.i972
  %682 = add i64 %681, 3
  store i64 %682, i64* %PC.i972
  %683 = inttoptr i64 %678 to i32*
  store i32 %679, i32* %683
  store %struct.Memory* %loadMem_4a32e1, %struct.Memory** %MEMORY
  %loadMem_4a32e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i970 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 15
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %RBP.i971 = bitcast %union.anon* %689 to i64*
  %690 = load i64, i64* %RBP.i971
  %691 = sub i64 %690, 52
  %692 = load i64, i64* %PC.i970
  %693 = add i64 %692, 7
  store i64 %693, i64* %PC.i970
  %694 = inttoptr i64 %691 to i32*
  store i32 0, i32* %694
  store %struct.Memory* %loadMem_4a32e4, %struct.Memory** %MEMORY
  br label %block_.L_4a32eb

block_.L_4a32eb:                                  ; preds = %block_4a32f7, %block_.L_4a32de
  %loadMem_4a32eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 1
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RAX.i968 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 15
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RBP.i969 = bitcast %union.anon* %703 to i64*
  %704 = load i64, i64* %RBP.i969
  %705 = sub i64 %704, 52
  %706 = load i64, i64* %PC.i967
  %707 = add i64 %706, 3
  store i64 %707, i64* %PC.i967
  %708 = inttoptr i64 %705 to i32*
  %709 = load i32, i32* %708
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RAX.i968, align 8
  store %struct.Memory* %loadMem_4a32eb, %struct.Memory** %MEMORY
  %loadMem_4a32ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %EAX.i965 = bitcast %union.anon* %716 to i32*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 15
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RBP.i966 = bitcast %union.anon* %719 to i64*
  %720 = load i32, i32* %EAX.i965
  %721 = zext i32 %720 to i64
  %722 = load i64, i64* %RBP.i966
  %723 = sub i64 %722, 12
  %724 = load i64, i64* %PC.i964
  %725 = add i64 %724, 3
  store i64 %725, i64* %PC.i964
  %726 = inttoptr i64 %723 to i32*
  %727 = load i32, i32* %726
  %728 = sub i32 %720, %727
  %729 = icmp ult i32 %720, %727
  %730 = zext i1 %729 to i8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %730, i8* %731, align 1
  %732 = and i32 %728, 255
  %733 = call i32 @llvm.ctpop.i32(i32 %732)
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %736, i8* %737, align 1
  %738 = xor i32 %727, %720
  %739 = xor i32 %738, %728
  %740 = lshr i32 %739, 4
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %742, i8* %743, align 1
  %744 = icmp eq i32 %728, 0
  %745 = zext i1 %744 to i8
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %745, i8* %746, align 1
  %747 = lshr i32 %728, 31
  %748 = trunc i32 %747 to i8
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %748, i8* %749, align 1
  %750 = lshr i32 %720, 31
  %751 = lshr i32 %727, 31
  %752 = xor i32 %751, %750
  %753 = xor i32 %747, %750
  %754 = add i32 %753, %752
  %755 = icmp eq i32 %754, 2
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %756, i8* %757, align 1
  store %struct.Memory* %loadMem_4a32ee, %struct.Memory** %MEMORY
  %loadMem_4a32f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 33
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %760 to i64*
  %761 = load i64, i64* %PC.i963
  %762 = add i64 %761, 51
  %763 = load i64, i64* %PC.i963
  %764 = add i64 %763, 6
  %765 = load i64, i64* %PC.i963
  %766 = add i64 %765, 6
  store i64 %766, i64* %PC.i963
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %768 = load i8, i8* %767, align 1
  %769 = icmp eq i8 %768, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %BRANCH_TAKEN, align 1
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %772 = select i1 %769, i64 %762, i64 %764
  store i64 %772, i64* %771, align 8
  store %struct.Memory* %loadMem_4a32f1, %struct.Memory** %MEMORY
  %loadBr_4a32f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a32f1 = icmp eq i8 %loadBr_4a32f1, 1
  br i1 %cmpBr_4a32f1, label %block_.L_4a3324, label %block_4a32f7

block_4a32f7:                                     ; preds = %block_.L_4a32eb
  %loadMem_4a32f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 33
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 1
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %RAX.i961 = bitcast %union.anon* %778 to i64*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 15
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %RBP.i962 = bitcast %union.anon* %781 to i64*
  %782 = load i64, i64* %RBP.i962
  %783 = sub i64 %782, 8
  %784 = load i64, i64* %PC.i960
  %785 = add i64 %784, 4
  store i64 %785, i64* %PC.i960
  %786 = inttoptr i64 %783 to i64*
  %787 = load i64, i64* %786
  store i64 %787, i64* %RAX.i961, align 8
  store %struct.Memory* %loadMem_4a32f7, %struct.Memory** %MEMORY
  %loadMem_4a32fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 5
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RCX.i958 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 15
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RBP.i959 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %RBP.i959
  %798 = sub i64 %797, 52
  %799 = load i64, i64* %PC.i957
  %800 = add i64 %799, 3
  store i64 %800, i64* %PC.i957
  %801 = inttoptr i64 %798 to i32*
  %802 = load i32, i32* %801
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RCX.i958, align 8
  store %struct.Memory* %loadMem_4a32fb, %struct.Memory** %MEMORY
  %loadMem_4a32fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 5
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %ECX.i955 = bitcast %union.anon* %809 to i32*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 7
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RDX.i956 = bitcast %union.anon* %812 to i64*
  %813 = load i32, i32* %ECX.i955
  %814 = zext i32 %813 to i64
  %815 = load i64, i64* %PC.i954
  %816 = add i64 %815, 2
  store i64 %816, i64* %PC.i954
  %817 = and i64 %814, 4294967295
  store i64 %817, i64* %RDX.i956, align 8
  store %struct.Memory* %loadMem_4a32fe, %struct.Memory** %MEMORY
  %loadMem_4a3300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 1
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %RAX.i952 = bitcast %union.anon* %823 to i64*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 7
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %RDX.i953 = bitcast %union.anon* %826 to i64*
  %827 = load i64, i64* %RAX.i952
  %828 = load i64, i64* %RDX.i953
  %829 = mul i64 %828, 8
  %830 = add i64 %829, %827
  %831 = load i64, i64* %PC.i951
  %832 = add i64 %831, 4
  store i64 %832, i64* %PC.i951
  %833 = inttoptr i64 %830 to i64*
  %834 = load i64, i64* %833
  store i64 %834, i64* %RAX.i952, align 8
  store %struct.Memory* %loadMem_4a3300, %struct.Memory** %MEMORY
  %loadMem_4a3304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 1
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RAX.i949 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 5
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RCX.i950 = bitcast %union.anon* %843 to i64*
  %844 = load i64, i64* %RAX.i949
  %845 = add i64 %844, 6364
  %846 = load i64, i64* %PC.i948
  %847 = add i64 %846, 6
  store i64 %847, i64* %PC.i948
  %848 = inttoptr i64 %845 to i32*
  %849 = load i32, i32* %848
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RCX.i950, align 8
  store %struct.Memory* %loadMem_4a3304, %struct.Memory** %MEMORY
  %loadMem_4a330a = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 9
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %RSI.i946 = bitcast %union.anon* %856 to i64*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 15
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RBP.i947 = bitcast %union.anon* %859 to i64*
  %860 = load i64, i64* %RBP.i947
  %861 = sub i64 %860, 52
  %862 = load i64, i64* %PC.i945
  %863 = add i64 %862, 3
  store i64 %863, i64* %PC.i945
  %864 = inttoptr i64 %861 to i32*
  %865 = load i32, i32* %864
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RSI.i946, align 8
  store %struct.Memory* %loadMem_4a330a, %struct.Memory** %MEMORY
  %loadMem_4a330d = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 9
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %ESI.i943 = bitcast %union.anon* %872 to i32*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 1
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RAX.i944 = bitcast %union.anon* %875 to i64*
  %876 = load i32, i32* %ESI.i943
  %877 = zext i32 %876 to i64
  %878 = load i64, i64* %PC.i942
  %879 = add i64 %878, 2
  store i64 %879, i64* %PC.i942
  %880 = and i64 %877, 4294967295
  store i64 %880, i64* %RAX.i944, align 8
  store %struct.Memory* %loadMem_4a330d, %struct.Memory** %MEMORY
  %loadMem_4a330f = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 5
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %ECX.i939 = bitcast %union.anon* %886 to i32*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 1
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RAX.i940 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 15
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RBP.i941 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %RBP.i941
  %894 = load i64, i64* %RAX.i940
  %895 = mul i64 %894, 4
  %896 = add i64 %893, -208
  %897 = add i64 %896, %895
  %898 = load i32, i32* %ECX.i939
  %899 = zext i32 %898 to i64
  %900 = load i64, i64* %PC.i938
  %901 = add i64 %900, 7
  store i64 %901, i64* %PC.i938
  %902 = inttoptr i64 %897 to i32*
  store i32 %898, i32* %902
  store %struct.Memory* %loadMem_4a330f, %struct.Memory** %MEMORY
  %loadMem_4a3316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 33
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 1
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %RAX.i936 = bitcast %union.anon* %908 to i64*
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 15
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %RBP.i937 = bitcast %union.anon* %911 to i64*
  %912 = load i64, i64* %RBP.i937
  %913 = sub i64 %912, 52
  %914 = load i64, i64* %PC.i935
  %915 = add i64 %914, 3
  store i64 %915, i64* %PC.i935
  %916 = inttoptr i64 %913 to i32*
  %917 = load i32, i32* %916
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RAX.i936, align 8
  store %struct.Memory* %loadMem_4a3316, %struct.Memory** %MEMORY
  %loadMem_4a3319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 33
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %PC.i933 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 1
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RAX.i934 = bitcast %union.anon* %924 to i64*
  %925 = load i64, i64* %RAX.i934
  %926 = load i64, i64* %PC.i933
  %927 = add i64 %926, 3
  store i64 %927, i64* %PC.i933
  %928 = trunc i64 %925 to i32
  %929 = add i32 1, %928
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RAX.i934, align 8
  %931 = icmp ult i32 %929, %928
  %932 = icmp ult i32 %929, 1
  %933 = or i1 %931, %932
  %934 = zext i1 %933 to i8
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %934, i8* %935, align 1
  %936 = and i32 %929, 255
  %937 = call i32 @llvm.ctpop.i32(i32 %936)
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  %940 = xor i8 %939, 1
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %940, i8* %941, align 1
  %942 = xor i64 1, %925
  %943 = trunc i64 %942 to i32
  %944 = xor i32 %943, %929
  %945 = lshr i32 %944, 4
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %947, i8* %948, align 1
  %949 = icmp eq i32 %929, 0
  %950 = zext i1 %949 to i8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %950, i8* %951, align 1
  %952 = lshr i32 %929, 31
  %953 = trunc i32 %952 to i8
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %953, i8* %954, align 1
  %955 = lshr i32 %928, 31
  %956 = xor i32 %952, %955
  %957 = add i32 %956, %952
  %958 = icmp eq i32 %957, 2
  %959 = zext i1 %958 to i8
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %959, i8* %960, align 1
  store %struct.Memory* %loadMem_4a3319, %struct.Memory** %MEMORY
  %loadMem_4a331c = load %struct.Memory*, %struct.Memory** %MEMORY
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 33
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 1
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %EAX.i931 = bitcast %union.anon* %966 to i32*
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 15
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %RBP.i932 = bitcast %union.anon* %969 to i64*
  %970 = load i64, i64* %RBP.i932
  %971 = sub i64 %970, 52
  %972 = load i32, i32* %EAX.i931
  %973 = zext i32 %972 to i64
  %974 = load i64, i64* %PC.i930
  %975 = add i64 %974, 3
  store i64 %975, i64* %PC.i930
  %976 = inttoptr i64 %971 to i32*
  store i32 %972, i32* %976
  store %struct.Memory* %loadMem_4a331c, %struct.Memory** %MEMORY
  %loadMem_4a331f = load %struct.Memory*, %struct.Memory** %MEMORY
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 33
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %PC.i929
  %981 = add i64 %980, -52
  %982 = load i64, i64* %PC.i929
  %983 = add i64 %982, 5
  store i64 %983, i64* %PC.i929
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %981, i64* %984, align 8
  store %struct.Memory* %loadMem_4a331f, %struct.Memory** %MEMORY
  br label %block_.L_4a32eb

block_.L_4a3324:                                  ; preds = %block_.L_4a32eb
  %loadMem_4a3324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 33
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 15
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %RBP.i928 = bitcast %union.anon* %990 to i64*
  %991 = load i64, i64* %RBP.i928
  %992 = sub i64 %991, 52
  %993 = load i64, i64* %PC.i927
  %994 = add i64 %993, 7
  store i64 %994, i64* %PC.i927
  %995 = inttoptr i64 %992 to i32*
  store i32 0, i32* %995
  store %struct.Memory* %loadMem_4a3324, %struct.Memory** %MEMORY
  br label %block_.L_4a332b

block_.L_4a332b:                                  ; preds = %block_.L_4a34bc, %block_.L_4a3324
  %loadMem_4a332b = load %struct.Memory*, %struct.Memory** %MEMORY
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 33
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %998 to i64*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 1
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %RAX.i925 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 15
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RBP.i926 = bitcast %union.anon* %1004 to i64*
  %1005 = load i64, i64* %RBP.i926
  %1006 = sub i64 %1005, 52
  %1007 = load i64, i64* %PC.i924
  %1008 = add i64 %1007, 3
  store i64 %1008, i64* %PC.i924
  %1009 = inttoptr i64 %1006 to i32*
  %1010 = load i32, i32* %1009
  %1011 = zext i32 %1010 to i64
  store i64 %1011, i64* %RAX.i925, align 8
  store %struct.Memory* %loadMem_4a332b, %struct.Memory** %MEMORY
  %loadMem_4a332e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 33
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 1
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %EAX.i923 = bitcast %union.anon* %1017 to i32*
  %1018 = load i32, i32* %EAX.i923
  %1019 = zext i32 %1018 to i64
  %1020 = load i64, i64* %PC.i922
  %1021 = add i64 %1020, 7
  store i64 %1021, i64* %PC.i922
  %1022 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*)
  %1023 = sub i32 %1018, %1022
  %1024 = icmp ult i32 %1018, %1022
  %1025 = zext i1 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1025, i8* %1026, align 1
  %1027 = and i32 %1023, 255
  %1028 = call i32 @llvm.ctpop.i32(i32 %1027)
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = xor i8 %1030, 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1031, i8* %1032, align 1
  %1033 = xor i32 %1022, %1018
  %1034 = xor i32 %1033, %1023
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1037, i8* %1038, align 1
  %1039 = icmp eq i32 %1023, 0
  %1040 = zext i1 %1039 to i8
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1040, i8* %1041, align 1
  %1042 = lshr i32 %1023, 31
  %1043 = trunc i32 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1043, i8* %1044, align 1
  %1045 = lshr i32 %1018, 31
  %1046 = lshr i32 %1022, 31
  %1047 = xor i32 %1046, %1045
  %1048 = xor i32 %1042, %1045
  %1049 = add i32 %1048, %1047
  %1050 = icmp eq i32 %1049, 2
  %1051 = zext i1 %1050 to i8
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1051, i8* %1052, align 1
  store %struct.Memory* %loadMem_4a332e, %struct.Memory** %MEMORY
  %loadMem_4a3335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %1055 to i64*
  %1056 = load i64, i64* %PC.i921
  %1057 = add i64 %1056, 405
  %1058 = load i64, i64* %PC.i921
  %1059 = add i64 %1058, 6
  %1060 = load i64, i64* %PC.i921
  %1061 = add i64 %1060, 6
  store i64 %1061, i64* %PC.i921
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1063 = load i8, i8* %1062, align 1
  %1064 = icmp eq i8 %1063, 0
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %BRANCH_TAKEN, align 1
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1067 = select i1 %1064, i64 %1057, i64 %1059
  store i64 %1067, i64* %1066, align 8
  store %struct.Memory* %loadMem_4a3335, %struct.Memory** %MEMORY
  %loadBr_4a3335 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3335 = icmp eq i8 %loadBr_4a3335, 1
  br i1 %cmpBr_4a3335, label %block_.L_4a34ca, label %block_4a333b

block_4a333b:                                     ; preds = %block_.L_4a332b
  %loadMem_4a333b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 1
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RAX.i920 = bitcast %union.anon* %1073 to i64*
  %1074 = load i64, i64* %PC.i919
  %1075 = add i64 %1074, 8
  store i64 %1075, i64* %PC.i919
  %1076 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1076, i64* %RAX.i920, align 8
  store %struct.Memory* %loadMem_4a333b, %struct.Memory** %MEMORY
  %loadMem_4a3343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 33
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 5
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %RCX.i917 = bitcast %union.anon* %1082 to i64*
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 15
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %RBP.i918 = bitcast %union.anon* %1085 to i64*
  %1086 = load i64, i64* %RBP.i918
  %1087 = sub i64 %1086, 52
  %1088 = load i64, i64* %PC.i916
  %1089 = add i64 %1088, 3
  store i64 %1089, i64* %PC.i916
  %1090 = inttoptr i64 %1087 to i32*
  %1091 = load i32, i32* %1090
  %1092 = zext i32 %1091 to i64
  store i64 %1092, i64* %RCX.i917, align 8
  store %struct.Memory* %loadMem_4a3343, %struct.Memory** %MEMORY
  %loadMem_4a3346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 5
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %ECX.i914 = bitcast %union.anon* %1098 to i32*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 7
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %RDX.i915 = bitcast %union.anon* %1101 to i64*
  %1102 = load i32, i32* %ECX.i914
  %1103 = zext i32 %1102 to i64
  %1104 = load i64, i64* %PC.i913
  %1105 = add i64 %1104, 2
  store i64 %1105, i64* %PC.i913
  %1106 = and i64 %1103, 4294967295
  store i64 %1106, i64* %RDX.i915, align 8
  store %struct.Memory* %loadMem_4a3346, %struct.Memory** %MEMORY
  %loadMem_4a3348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 33
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %1109 to i64*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 1
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %RAX.i911 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 7
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RDX.i912 = bitcast %union.anon* %1115 to i64*
  %1116 = load i64, i64* %RAX.i911
  %1117 = load i64, i64* %RDX.i912
  %1118 = mul i64 %1117, 8
  %1119 = add i64 %1118, %1116
  %1120 = load i64, i64* %PC.i910
  %1121 = add i64 %1120, 4
  store i64 %1121, i64* %PC.i910
  %1122 = inttoptr i64 %1119 to i64*
  %1123 = load i64, i64* %1122
  store i64 %1123, i64* %RAX.i911, align 8
  store %struct.Memory* %loadMem_4a3348, %struct.Memory** %MEMORY
  %loadMem_4a334c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 33
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 1
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %RAX.i909 = bitcast %union.anon* %1129 to i64*
  %1130 = load i64, i64* %RAX.i909
  %1131 = add i64 %1130, 40
  %1132 = load i64, i64* %PC.i908
  %1133 = add i64 %1132, 4
  store i64 %1133, i64* %PC.i908
  %1134 = inttoptr i64 %1131 to i64*
  %1135 = load i64, i64* %1134
  store i64 %1135, i64* %RAX.i909, align 8
  store %struct.Memory* %loadMem_4a334c, %struct.Memory** %MEMORY
  %loadMem_4a3350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 1
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RAX.i906 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 5
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RCX.i907 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %RAX.i906
  %1146 = add i64 %1145, 6364
  %1147 = load i64, i64* %PC.i905
  %1148 = add i64 %1147, 6
  store i64 %1148, i64* %PC.i905
  %1149 = inttoptr i64 %1146 to i32*
  %1150 = load i32, i32* %1149
  %1151 = zext i32 %1150 to i64
  store i64 %1151, i64* %RCX.i907, align 8
  store %struct.Memory* %loadMem_4a3350, %struct.Memory** %MEMORY
  %loadMem_4a3356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 9
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RSI.i903 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 15
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RBP.i904 = bitcast %union.anon* %1160 to i64*
  %1161 = load i64, i64* %RBP.i904
  %1162 = sub i64 %1161, 52
  %1163 = load i64, i64* %PC.i902
  %1164 = add i64 %1163, 3
  store i64 %1164, i64* %PC.i902
  %1165 = inttoptr i64 %1162 to i32*
  %1166 = load i32, i32* %1165
  %1167 = zext i32 %1166 to i64
  store i64 %1167, i64* %RSI.i903, align 8
  store %struct.Memory* %loadMem_4a3356, %struct.Memory** %MEMORY
  %loadMem_4a3359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 9
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1173 to i32*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 1
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %RAX.i901 = bitcast %union.anon* %1176 to i64*
  %1177 = load i32, i32* %ESI.i
  %1178 = zext i32 %1177 to i64
  %1179 = load i64, i64* %PC.i900
  %1180 = add i64 %1179, 2
  store i64 %1180, i64* %PC.i900
  %1181 = and i64 %1178, 4294967295
  store i64 %1181, i64* %RAX.i901, align 8
  store %struct.Memory* %loadMem_4a3359, %struct.Memory** %MEMORY
  %loadMem_4a335b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 33
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 5
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %ECX.i897 = bitcast %union.anon* %1187 to i32*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 1
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RAX.i898 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 15
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RBP.i899 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %RBP.i899
  %1195 = load i64, i64* %RAX.i898
  %1196 = mul i64 %1195, 4
  %1197 = add i64 %1194, -336
  %1198 = add i64 %1197, %1196
  %1199 = load i32, i32* %ECX.i897
  %1200 = zext i32 %1199 to i64
  %1201 = load i64, i64* %PC.i896
  %1202 = add i64 %1201, 7
  store i64 %1202, i64* %PC.i896
  %1203 = inttoptr i64 %1198 to i32*
  store i32 %1199, i32* %1203
  store %struct.Memory* %loadMem_4a335b, %struct.Memory** %MEMORY
  %loadMem_4a3362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 1
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RAX.i895 = bitcast %union.anon* %1209 to i64*
  %1210 = load i64, i64* %PC.i894
  %1211 = add i64 %1210, 8
  store i64 %1211, i64* %PC.i894
  %1212 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1212, i64* %RAX.i895, align 8
  store %struct.Memory* %loadMem_4a3362, %struct.Memory** %MEMORY
  %loadMem_4a336a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 33
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %1215 to i64*
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 5
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %RCX.i892 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 15
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %RBP.i893 = bitcast %union.anon* %1221 to i64*
  %1222 = load i64, i64* %RBP.i893
  %1223 = sub i64 %1222, 52
  %1224 = load i64, i64* %PC.i891
  %1225 = add i64 %1224, 3
  store i64 %1225, i64* %PC.i891
  %1226 = inttoptr i64 %1223 to i32*
  %1227 = load i32, i32* %1226
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RCX.i892, align 8
  store %struct.Memory* %loadMem_4a336a, %struct.Memory** %MEMORY
  %loadMem_4a336d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 33
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %1231 to i64*
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 5
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %ECX.i889 = bitcast %union.anon* %1234 to i32*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 7
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RDX.i890 = bitcast %union.anon* %1237 to i64*
  %1238 = load i32, i32* %ECX.i889
  %1239 = zext i32 %1238 to i64
  %1240 = load i64, i64* %PC.i888
  %1241 = add i64 %1240, 2
  store i64 %1241, i64* %PC.i888
  %1242 = and i64 %1239, 4294967295
  store i64 %1242, i64* %RDX.i890, align 8
  store %struct.Memory* %loadMem_4a336d, %struct.Memory** %MEMORY
  %loadMem_4a336f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 33
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 1
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RAX.i886 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 7
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RDX.i887 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %RAX.i886
  %1253 = load i64, i64* %RDX.i887
  %1254 = mul i64 %1253, 8
  %1255 = add i64 %1254, %1252
  %1256 = load i64, i64* %PC.i885
  %1257 = add i64 %1256, 4
  store i64 %1257, i64* %PC.i885
  %1258 = inttoptr i64 %1255 to i64*
  %1259 = load i64, i64* %1258
  store i64 %1259, i64* %RAX.i886, align 8
  store %struct.Memory* %loadMem_4a336f, %struct.Memory** %MEMORY
  %loadMem_4a3373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 33
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %1262 to i64*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 1
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %RAX.i884 = bitcast %union.anon* %1265 to i64*
  %1266 = load i64, i64* %RAX.i884
  %1267 = load i64, i64* %PC.i883
  %1268 = add i64 %1267, 3
  store i64 %1268, i64* %PC.i883
  %1269 = inttoptr i64 %1266 to i32*
  %1270 = load i32, i32* %1269
  %1271 = sub i32 %1270, 3
  %1272 = icmp ult i32 %1270, 3
  %1273 = zext i1 %1272 to i8
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1273, i8* %1274, align 1
  %1275 = and i32 %1271, 255
  %1276 = call i32 @llvm.ctpop.i32(i32 %1275)
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = xor i8 %1278, 1
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1279, i8* %1280, align 1
  %1281 = xor i32 %1270, 3
  %1282 = xor i32 %1281, %1271
  %1283 = lshr i32 %1282, 4
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1285, i8* %1286, align 1
  %1287 = icmp eq i32 %1271, 0
  %1288 = zext i1 %1287 to i8
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1288, i8* %1289, align 1
  %1290 = lshr i32 %1271, 31
  %1291 = trunc i32 %1290 to i8
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1291, i8* %1292, align 1
  %1293 = lshr i32 %1270, 31
  %1294 = xor i32 %1290, %1293
  %1295 = add i32 %1294, %1293
  %1296 = icmp eq i32 %1295, 2
  %1297 = zext i1 %1296 to i8
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1297, i8* %1298, align 1
  store %struct.Memory* %loadMem_4a3373, %struct.Memory** %MEMORY
  %loadMem_4a3376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %PC.i882
  %1303 = add i64 %1302, 321
  %1304 = load i64, i64* %PC.i882
  %1305 = add i64 %1304, 6
  %1306 = load i64, i64* %PC.i882
  %1307 = add i64 %1306, 6
  store i64 %1307, i64* %PC.i882
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1309 = load i8, i8* %1308, align 1
  %1310 = icmp eq i8 %1309, 0
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %BRANCH_TAKEN, align 1
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1313 = select i1 %1310, i64 %1303, i64 %1305
  store i64 %1313, i64* %1312, align 8
  store %struct.Memory* %loadMem_4a3376, %struct.Memory** %MEMORY
  %loadBr_4a3376 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3376 = icmp eq i8 %loadBr_4a3376, 1
  br i1 %cmpBr_4a3376, label %block_.L_4a34b7, label %block_4a337c

block_4a337c:                                     ; preds = %block_4a333b
  %loadMem_4a337c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 1
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %RAX.i881 = bitcast %union.anon* %1319 to i64*
  %1320 = load i64, i64* %PC.i880
  %1321 = add i64 %1320, 8
  store i64 %1321, i64* %PC.i880
  %1322 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1322, i64* %RAX.i881, align 8
  store %struct.Memory* %loadMem_4a337c, %struct.Memory** %MEMORY
  %loadMem_4a3384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 33
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %1325 to i64*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 5
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %RCX.i878 = bitcast %union.anon* %1328 to i64*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 15
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %RBP.i879 = bitcast %union.anon* %1331 to i64*
  %1332 = load i64, i64* %RBP.i879
  %1333 = sub i64 %1332, 52
  %1334 = load i64, i64* %PC.i877
  %1335 = add i64 %1334, 3
  store i64 %1335, i64* %PC.i877
  %1336 = inttoptr i64 %1333 to i32*
  %1337 = load i32, i32* %1336
  %1338 = zext i32 %1337 to i64
  store i64 %1338, i64* %RCX.i878, align 8
  store %struct.Memory* %loadMem_4a3384, %struct.Memory** %MEMORY
  %loadMem_4a3387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 33
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 5
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %ECX.i875 = bitcast %union.anon* %1344 to i32*
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 7
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %RDX.i876 = bitcast %union.anon* %1347 to i64*
  %1348 = load i32, i32* %ECX.i875
  %1349 = zext i32 %1348 to i64
  %1350 = load i64, i64* %PC.i874
  %1351 = add i64 %1350, 2
  store i64 %1351, i64* %PC.i874
  %1352 = and i64 %1349, 4294967295
  store i64 %1352, i64* %RDX.i876, align 8
  store %struct.Memory* %loadMem_4a3387, %struct.Memory** %MEMORY
  %loadMem_4a3389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 33
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %1355 to i64*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 1
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RAX.i872 = bitcast %union.anon* %1358 to i64*
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 7
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %RDX.i873 = bitcast %union.anon* %1361 to i64*
  %1362 = load i64, i64* %RAX.i872
  %1363 = load i64, i64* %RDX.i873
  %1364 = mul i64 %1363, 8
  %1365 = add i64 %1364, %1362
  %1366 = load i64, i64* %PC.i871
  %1367 = add i64 %1366, 4
  store i64 %1367, i64* %PC.i871
  %1368 = inttoptr i64 %1365 to i64*
  %1369 = load i64, i64* %1368
  store i64 %1369, i64* %RAX.i872, align 8
  store %struct.Memory* %loadMem_4a3389, %struct.Memory** %MEMORY
  %loadMem_4a338d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 33
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %1372 to i64*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 1
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %RAX.i870 = bitcast %union.anon* %1375 to i64*
  %1376 = load i64, i64* %RAX.i870
  %1377 = add i64 %1376, 40
  %1378 = load i64, i64* %PC.i869
  %1379 = add i64 %1378, 4
  store i64 %1379, i64* %PC.i869
  %1380 = inttoptr i64 %1377 to i64*
  %1381 = load i64, i64* %1380
  store i64 %1381, i64* %RAX.i870, align 8
  store %struct.Memory* %loadMem_4a338d, %struct.Memory** %MEMORY
  %loadMem_4a3391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 1
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %RAX.i868 = bitcast %union.anon* %1387 to i64*
  %1388 = load i64, i64* %RAX.i868
  %1389 = add i64 %1388, 6380
  %1390 = load i64, i64* %PC.i867
  %1391 = add i64 %1390, 7
  store i64 %1391, i64* %PC.i867
  %1392 = inttoptr i64 %1389 to i32*
  %1393 = load i32, i32* %1392
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1394, align 1
  %1395 = and i32 %1393, 255
  %1396 = call i32 @llvm.ctpop.i32(i32 %1395)
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  %1399 = xor i8 %1398, 1
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1399, i8* %1400, align 1
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1401, align 1
  %1402 = icmp eq i32 %1393, 0
  %1403 = zext i1 %1402 to i8
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1403, i8* %1404, align 1
  %1405 = lshr i32 %1393, 31
  %1406 = trunc i32 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1406, i8* %1407, align 1
  %1408 = lshr i32 %1393, 31
  %1409 = xor i32 %1405, %1408
  %1410 = add i32 %1409, %1408
  %1411 = icmp eq i32 %1410, 2
  %1412 = zext i1 %1411 to i8
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1412, i8* %1413, align 1
  store %struct.Memory* %loadMem_4a3391, %struct.Memory** %MEMORY
  %loadMem_4a3398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %1416 to i64*
  %1417 = load i64, i64* %PC.i866
  %1418 = add i64 %1417, 287
  %1419 = load i64, i64* %PC.i866
  %1420 = add i64 %1419, 6
  %1421 = load i64, i64* %PC.i866
  %1422 = add i64 %1421, 6
  store i64 %1422, i64* %PC.i866
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1424 = load i8, i8* %1423, align 1
  store i8 %1424, i8* %BRANCH_TAKEN, align 1
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1426 = icmp ne i8 %1424, 0
  %1427 = select i1 %1426, i64 %1418, i64 %1420
  store i64 %1427, i64* %1425, align 8
  store %struct.Memory* %loadMem_4a3398, %struct.Memory** %MEMORY
  %loadBr_4a3398 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3398 = icmp eq i8 %loadBr_4a3398, 1
  br i1 %cmpBr_4a3398, label %block_.L_4a34b7, label %block_4a339e

block_4a339e:                                     ; preds = %block_4a337c
  %loadMem_4a339e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 33
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 1
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %RAX.i865 = bitcast %union.anon* %1433 to i64*
  %1434 = load i64, i64* %PC.i864
  %1435 = add i64 %1434, 8
  store i64 %1435, i64* %PC.i864
  %1436 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1436, i64* %RAX.i865, align 8
  store %struct.Memory* %loadMem_4a339e, %struct.Memory** %MEMORY
  %loadMem_4a33a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 5
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %RCX.i862 = bitcast %union.anon* %1442 to i64*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 15
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %RBP.i863 = bitcast %union.anon* %1445 to i64*
  %1446 = load i64, i64* %RBP.i863
  %1447 = sub i64 %1446, 52
  %1448 = load i64, i64* %PC.i861
  %1449 = add i64 %1448, 3
  store i64 %1449, i64* %PC.i861
  %1450 = inttoptr i64 %1447 to i32*
  %1451 = load i32, i32* %1450
  %1452 = zext i32 %1451 to i64
  store i64 %1452, i64* %RCX.i862, align 8
  store %struct.Memory* %loadMem_4a33a6, %struct.Memory** %MEMORY
  %loadMem_4a33a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 33
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 5
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %ECX.i859 = bitcast %union.anon* %1458 to i32*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 7
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %RDX.i860 = bitcast %union.anon* %1461 to i64*
  %1462 = load i32, i32* %ECX.i859
  %1463 = zext i32 %1462 to i64
  %1464 = load i64, i64* %PC.i858
  %1465 = add i64 %1464, 2
  store i64 %1465, i64* %PC.i858
  %1466 = and i64 %1463, 4294967295
  store i64 %1466, i64* %RDX.i860, align 8
  store %struct.Memory* %loadMem_4a33a9, %struct.Memory** %MEMORY
  %loadMem_4a33ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 1
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RAX.i856 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 7
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %RDX.i857 = bitcast %union.anon* %1475 to i64*
  %1476 = load i64, i64* %RAX.i856
  %1477 = load i64, i64* %RDX.i857
  %1478 = mul i64 %1477, 8
  %1479 = add i64 %1478, %1476
  %1480 = load i64, i64* %PC.i855
  %1481 = add i64 %1480, 4
  store i64 %1481, i64* %PC.i855
  %1482 = inttoptr i64 %1479 to i64*
  %1483 = load i64, i64* %1482
  store i64 %1483, i64* %RAX.i856, align 8
  store %struct.Memory* %loadMem_4a33ab, %struct.Memory** %MEMORY
  %loadMem_4a33af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 1
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RAX.i854 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %RAX.i854
  %1491 = add i64 %1490, 40
  %1492 = load i64, i64* %PC.i853
  %1493 = add i64 %1492, 4
  store i64 %1493, i64* %PC.i853
  %1494 = inttoptr i64 %1491 to i64*
  %1495 = load i64, i64* %1494
  store i64 %1495, i64* %RAX.i854, align 8
  store %struct.Memory* %loadMem_4a33af, %struct.Memory** %MEMORY
  %loadMem_4a33b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 33
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 1
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RAX.i852 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RAX.i852
  %1503 = add i64 %1502, 6376
  %1504 = load i64, i64* %PC.i851
  %1505 = add i64 %1504, 7
  store i64 %1505, i64* %PC.i851
  %1506 = inttoptr i64 %1503 to i32*
  %1507 = load i32, i32* %1506
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1508, align 1
  %1509 = and i32 %1507, 255
  %1510 = call i32 @llvm.ctpop.i32(i32 %1509)
  %1511 = trunc i32 %1510 to i8
  %1512 = and i8 %1511, 1
  %1513 = xor i8 %1512, 1
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1513, i8* %1514, align 1
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1515, align 1
  %1516 = icmp eq i32 %1507, 0
  %1517 = zext i1 %1516 to i8
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1517, i8* %1518, align 1
  %1519 = lshr i32 %1507, 31
  %1520 = trunc i32 %1519 to i8
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1520, i8* %1521, align 1
  %1522 = lshr i32 %1507, 31
  %1523 = xor i32 %1519, %1522
  %1524 = add i32 %1523, %1522
  %1525 = icmp eq i32 %1524, 2
  %1526 = zext i1 %1525 to i8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1526, i8* %1527, align 1
  store %struct.Memory* %loadMem_4a33b3, %struct.Memory** %MEMORY
  %loadMem_4a33ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %1530 to i64*
  %1531 = load i64, i64* %PC.i850
  %1532 = add i64 %1531, 253
  %1533 = load i64, i64* %PC.i850
  %1534 = add i64 %1533, 6
  %1535 = load i64, i64* %PC.i850
  %1536 = add i64 %1535, 6
  store i64 %1536, i64* %PC.i850
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1538 = load i8, i8* %1537, align 1
  %1539 = icmp eq i8 %1538, 0
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %BRANCH_TAKEN, align 1
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1542 = select i1 %1539, i64 %1532, i64 %1534
  store i64 %1542, i64* %1541, align 8
  store %struct.Memory* %loadMem_4a33ba, %struct.Memory** %MEMORY
  %loadBr_4a33ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a33ba = icmp eq i8 %loadBr_4a33ba, 1
  br i1 %cmpBr_4a33ba, label %block_.L_4a34b7, label %block_4a33c0

block_4a33c0:                                     ; preds = %block_4a339e
  %loadMem_4a33c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 33
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 1
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RAX.i849 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %PC.i848
  %1550 = add i64 %1549, 8
  store i64 %1550, i64* %PC.i848
  %1551 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1551, i64* %RAX.i849, align 8
  store %struct.Memory* %loadMem_4a33c0, %struct.Memory** %MEMORY
  %loadMem_4a33c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 5
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RCX.i846 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 15
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %RBP.i847
  %1562 = sub i64 %1561, 52
  %1563 = load i64, i64* %PC.i845
  %1564 = add i64 %1563, 3
  store i64 %1564, i64* %PC.i845
  %1565 = inttoptr i64 %1562 to i32*
  %1566 = load i32, i32* %1565
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RCX.i846, align 8
  store %struct.Memory* %loadMem_4a33c8, %struct.Memory** %MEMORY
  %loadMem_4a33cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 33
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1570 to i64*
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 5
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %ECX.i843 = bitcast %union.anon* %1573 to i32*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 7
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RDX.i844 = bitcast %union.anon* %1576 to i64*
  %1577 = load i32, i32* %ECX.i843
  %1578 = zext i32 %1577 to i64
  %1579 = load i64, i64* %PC.i842
  %1580 = add i64 %1579, 2
  store i64 %1580, i64* %PC.i842
  %1581 = and i64 %1578, 4294967295
  store i64 %1581, i64* %RDX.i844, align 8
  store %struct.Memory* %loadMem_4a33cb, %struct.Memory** %MEMORY
  %loadMem_4a33cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 33
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 1
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RAX.i840 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 7
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %RDX.i841 = bitcast %union.anon* %1590 to i64*
  %1591 = load i64, i64* %RAX.i840
  %1592 = load i64, i64* %RDX.i841
  %1593 = mul i64 %1592, 8
  %1594 = add i64 %1593, %1591
  %1595 = load i64, i64* %PC.i839
  %1596 = add i64 %1595, 4
  store i64 %1596, i64* %PC.i839
  %1597 = inttoptr i64 %1594 to i64*
  %1598 = load i64, i64* %1597
  store i64 %1598, i64* %RAX.i840, align 8
  store %struct.Memory* %loadMem_4a33cd, %struct.Memory** %MEMORY
  %loadMem_4a33d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 1
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RAX.i838 = bitcast %union.anon* %1604 to i64*
  %1605 = load i64, i64* %RAX.i838
  %1606 = add i64 %1605, 40
  %1607 = load i64, i64* %PC.i837
  %1608 = add i64 %1607, 4
  store i64 %1608, i64* %PC.i837
  %1609 = inttoptr i64 %1606 to i64*
  %1610 = load i64, i64* %1609
  store i64 %1610, i64* %RAX.i838, align 8
  store %struct.Memory* %loadMem_4a33d1, %struct.Memory** %MEMORY
  %loadMem_4a33d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 33
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 1
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %RAX.i835 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 5
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RCX.i836 = bitcast %union.anon* %1619 to i64*
  %1620 = load i64, i64* %RAX.i835
  %1621 = add i64 %1620, 4
  %1622 = load i64, i64* %PC.i834
  %1623 = add i64 %1622, 3
  store i64 %1623, i64* %PC.i834
  %1624 = inttoptr i64 %1621 to i32*
  %1625 = load i32, i32* %1624
  %1626 = zext i32 %1625 to i64
  store i64 %1626, i64* %RCX.i836, align 8
  store %struct.Memory* %loadMem_4a33d5, %struct.Memory** %MEMORY
  %loadMem_4a33d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 33
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 1
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RAX.i833 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %PC.i832
  %1634 = add i64 %1633, 8
  store i64 %1634, i64* %PC.i832
  %1635 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %1635, i64* %RAX.i833, align 8
  store %struct.Memory* %loadMem_4a33d8, %struct.Memory** %MEMORY
  %loadMem_4a33e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 33
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 1
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RAX.i830 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 5
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RCX.i831 = bitcast %union.anon* %1644 to i64*
  %1645 = load i64, i64* %RCX.i831
  %1646 = load i64, i64* %RAX.i830
  %1647 = add i64 %1646, 4
  %1648 = load i64, i64* %PC.i829
  %1649 = add i64 %1648, 3
  store i64 %1649, i64* %PC.i829
  %1650 = trunc i64 %1645 to i32
  %1651 = inttoptr i64 %1647 to i32*
  %1652 = load i32, i32* %1651
  %1653 = sub i32 %1650, %1652
  %1654 = zext i32 %1653 to i64
  store i64 %1654, i64* %RCX.i831, align 8
  %1655 = icmp ult i32 %1650, %1652
  %1656 = zext i1 %1655 to i8
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1656, i8* %1657, align 1
  %1658 = and i32 %1653, 255
  %1659 = call i32 @llvm.ctpop.i32(i32 %1658)
  %1660 = trunc i32 %1659 to i8
  %1661 = and i8 %1660, 1
  %1662 = xor i8 %1661, 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1662, i8* %1663, align 1
  %1664 = xor i32 %1652, %1650
  %1665 = xor i32 %1664, %1653
  %1666 = lshr i32 %1665, 4
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1668, i8* %1669, align 1
  %1670 = icmp eq i32 %1653, 0
  %1671 = zext i1 %1670 to i8
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1671, i8* %1672, align 1
  %1673 = lshr i32 %1653, 31
  %1674 = trunc i32 %1673 to i8
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1674, i8* %1675, align 1
  %1676 = lshr i32 %1650, 31
  %1677 = lshr i32 %1652, 31
  %1678 = xor i32 %1677, %1676
  %1679 = xor i32 %1673, %1676
  %1680 = add i32 %1679, %1678
  %1681 = icmp eq i32 %1680, 2
  %1682 = zext i1 %1681 to i8
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1682, i8* %1683, align 1
  store %struct.Memory* %loadMem_4a33e0, %struct.Memory** %MEMORY
  %loadMem_4a33e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 33
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1686 to i64*
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 5
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %ECX.i827 = bitcast %union.anon* %1689 to i32*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 11
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %RDI.i828 = bitcast %union.anon* %1692 to i64*
  %1693 = load i32, i32* %ECX.i827
  %1694 = zext i32 %1693 to i64
  %1695 = load i64, i64* %PC.i826
  %1696 = add i64 %1695, 2
  store i64 %1696, i64* %PC.i826
  %1697 = and i64 %1694, 4294967295
  store i64 %1697, i64* %RDI.i828, align 8
  store %struct.Memory* %loadMem_4a33e3, %struct.Memory** %MEMORY
  %loadMem1_4a33e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1700 to i64*
  %1701 = load i64, i64* %PC.i825
  %1702 = add i64 %1701, -664549
  %1703 = load i64, i64* %PC.i825
  %1704 = add i64 %1703, 5
  %1705 = load i64, i64* %PC.i825
  %1706 = add i64 %1705, 5
  store i64 %1706, i64* %PC.i825
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1708 = load i64, i64* %1707, align 8
  %1709 = add i64 %1708, -8
  %1710 = inttoptr i64 %1709 to i64*
  store i64 %1704, i64* %1710
  store i64 %1709, i64* %1707, align 8
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1702, i64* %1711, align 8
  store %struct.Memory* %loadMem1_4a33e5, %struct.Memory** %MEMORY
  %loadMem2_4a33e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a33e5 = load i64, i64* %3
  %1712 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_4a33e5)
  store %struct.Memory* %1712, %struct.Memory** %MEMORY
  %loadMem_4a33ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 1
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %EAX.i820 = bitcast %union.anon* %1718 to i32*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 15
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %RBP.i821
  %1723 = sub i64 %1722, 748
  %1724 = load i32, i32* %EAX.i820
  %1725 = zext i32 %1724 to i64
  %1726 = load i64, i64* %PC.i819
  %1727 = add i64 %1726, 6
  store i64 %1727, i64* %PC.i819
  %1728 = inttoptr i64 %1723 to i32*
  store i32 %1724, i32* %1728
  store %struct.Memory* %loadMem_4a33ea, %struct.Memory** %MEMORY
  %loadMem_4a33f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 1
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RAX.i817 = bitcast %union.anon* %1734 to i64*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 15
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %1737 to i64*
  %1738 = load i64, i64* %RBP.i818
  %1739 = sub i64 %1738, 748
  %1740 = load i64, i64* %PC.i816
  %1741 = add i64 %1740, 6
  store i64 %1741, i64* %PC.i816
  %1742 = inttoptr i64 %1739 to i32*
  %1743 = load i32, i32* %1742
  %1744 = zext i32 %1743 to i64
  store i64 %1744, i64* %RAX.i817, align 8
  store %struct.Memory* %loadMem_4a33f0, %struct.Memory** %MEMORY
  %loadMem_4a33f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 33
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 5
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RCX.i814 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 15
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %1753 to i64*
  %1754 = load i64, i64* %RBP.i815
  %1755 = sub i64 %1754, 52
  %1756 = load i64, i64* %PC.i813
  %1757 = add i64 %1756, 3
  store i64 %1757, i64* %PC.i813
  %1758 = inttoptr i64 %1755 to i32*
  %1759 = load i32, i32* %1758
  %1760 = zext i32 %1759 to i64
  store i64 %1760, i64* %RCX.i814, align 8
  store %struct.Memory* %loadMem_4a33f6, %struct.Memory** %MEMORY
  %loadMem_4a33f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 33
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %1763 to i64*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 5
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %ECX.i811 = bitcast %union.anon* %1766 to i32*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 7
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RDX.i812 = bitcast %union.anon* %1769 to i64*
  %1770 = load i32, i32* %ECX.i811
  %1771 = zext i32 %1770 to i64
  %1772 = load i64, i64* %PC.i810
  %1773 = add i64 %1772, 2
  store i64 %1773, i64* %PC.i810
  %1774 = and i64 %1771, 4294967295
  store i64 %1774, i64* %RDX.i812, align 8
  store %struct.Memory* %loadMem_4a33f9, %struct.Memory** %MEMORY
  %loadMem_4a33fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 33
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 1
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %EAX.i807 = bitcast %union.anon* %1780 to i32*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 7
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RDX.i808 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 15
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %1786 to i64*
  %1787 = load i64, i64* %RBP.i809
  %1788 = load i64, i64* %RDX.i808
  %1789 = mul i64 %1788, 4
  %1790 = add i64 %1787, -736
  %1791 = add i64 %1790, %1789
  %1792 = load i32, i32* %EAX.i807
  %1793 = zext i32 %1792 to i64
  %1794 = load i64, i64* %PC.i806
  %1795 = add i64 %1794, 7
  store i64 %1795, i64* %PC.i806
  %1796 = inttoptr i64 %1791 to i32*
  store i32 %1792, i32* %1796
  store %struct.Memory* %loadMem_4a33fb, %struct.Memory** %MEMORY
  %loadMem_4a3402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 15
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RBP.i805 = bitcast %union.anon* %1802 to i64*
  %1803 = load i64, i64* %RBP.i805
  %1804 = sub i64 %1803, 48
  %1805 = load i64, i64* %PC.i804
  %1806 = add i64 %1805, 4
  store i64 %1806, i64* %PC.i804
  %1807 = inttoptr i64 %1804 to i32*
  %1808 = load i32, i32* %1807
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1809, align 1
  %1810 = and i32 %1808, 255
  %1811 = call i32 @llvm.ctpop.i32(i32 %1810)
  %1812 = trunc i32 %1811 to i8
  %1813 = and i8 %1812, 1
  %1814 = xor i8 %1813, 1
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1814, i8* %1815, align 1
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1816, align 1
  %1817 = icmp eq i32 %1808, 0
  %1818 = zext i1 %1817 to i8
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1818, i8* %1819, align 1
  %1820 = lshr i32 %1808, 31
  %1821 = trunc i32 %1820 to i8
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1821, i8* %1822, align 1
  %1823 = lshr i32 %1808, 31
  %1824 = xor i32 %1820, %1823
  %1825 = add i32 %1824, %1823
  %1826 = icmp eq i32 %1825, 2
  %1827 = zext i1 %1826 to i8
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1827, i8* %1828, align 1
  store %struct.Memory* %loadMem_4a3402, %struct.Memory** %MEMORY
  %loadMem_4a3406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 33
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %1831 to i64*
  %1832 = load i64, i64* %PC.i803
  %1833 = add i64 %1832, 89
  %1834 = load i64, i64* %PC.i803
  %1835 = add i64 %1834, 6
  %1836 = load i64, i64* %PC.i803
  %1837 = add i64 %1836, 6
  store i64 %1837, i64* %PC.i803
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1839 = load i8, i8* %1838, align 1
  %1840 = icmp eq i8 %1839, 0
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %BRANCH_TAKEN, align 1
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1843 = select i1 %1840, i64 %1833, i64 %1835
  store i64 %1843, i64* %1842, align 8
  store %struct.Memory* %loadMem_4a3406, %struct.Memory** %MEMORY
  %loadBr_4a3406 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3406 = icmp eq i8 %loadBr_4a3406, 1
  br i1 %cmpBr_4a3406, label %block_.L_4a345f, label %block_4a340c

block_4a340c:                                     ; preds = %block_4a33c0
  %loadMem_4a340c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 33
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1846 to i64*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 1
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %RAX.i802 = bitcast %union.anon* %1849 to i64*
  %1850 = load i64, i64* %PC.i801
  %1851 = add i64 %1850, 8
  store i64 %1851, i64* %PC.i801
  %1852 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %1852, i64* %RAX.i802, align 8
  store %struct.Memory* %loadMem_4a340c, %struct.Memory** %MEMORY
  %loadMem_4a3414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 33
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 1
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %RAX.i799 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 5
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RCX.i800 = bitcast %union.anon* %1861 to i64*
  %1862 = load i64, i64* %RAX.i799
  %1863 = add i64 %1862, 4
  %1864 = load i64, i64* %PC.i798
  %1865 = add i64 %1864, 3
  store i64 %1865, i64* %PC.i798
  %1866 = inttoptr i64 %1863 to i32*
  %1867 = load i32, i32* %1866
  %1868 = zext i32 %1867 to i64
  store i64 %1868, i64* %RCX.i800, align 8
  store %struct.Memory* %loadMem_4a3414, %struct.Memory** %MEMORY
  %loadMem_4a3417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 1
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RAX.i797 = bitcast %union.anon* %1874 to i64*
  %1875 = load i64, i64* %PC.i796
  %1876 = add i64 %1875, 8
  store i64 %1876, i64* %PC.i796
  %1877 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1877, i64* %RAX.i797, align 8
  store %struct.Memory* %loadMem_4a3417, %struct.Memory** %MEMORY
  %loadMem_4a341f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 33
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 7
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %RDX.i794 = bitcast %union.anon* %1883 to i64*
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 15
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %RBP.i795 = bitcast %union.anon* %1886 to i64*
  %1887 = load i64, i64* %RBP.i795
  %1888 = sub i64 %1887, 52
  %1889 = load i64, i64* %PC.i793
  %1890 = add i64 %1889, 3
  store i64 %1890, i64* %PC.i793
  %1891 = inttoptr i64 %1888 to i32*
  %1892 = load i32, i32* %1891
  %1893 = zext i32 %1892 to i64
  store i64 %1893, i64* %RDX.i794, align 8
  store %struct.Memory* %loadMem_4a341f, %struct.Memory** %MEMORY
  %loadMem_4a3422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 33
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1896 to i64*
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 7
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %EDX.i791 = bitcast %union.anon* %1899 to i32*
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 9
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %RSI.i792 = bitcast %union.anon* %1902 to i64*
  %1903 = load i32, i32* %EDX.i791
  %1904 = zext i32 %1903 to i64
  %1905 = load i64, i64* %PC.i790
  %1906 = add i64 %1905, 2
  store i64 %1906, i64* %PC.i790
  %1907 = and i64 %1904, 4294967295
  store i64 %1907, i64* %RSI.i792, align 8
  store %struct.Memory* %loadMem_4a3422, %struct.Memory** %MEMORY
  %loadMem_4a3424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 1
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RAX.i788 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 9
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RSI.i789 = bitcast %union.anon* %1916 to i64*
  %1917 = load i64, i64* %RAX.i788
  %1918 = load i64, i64* %RSI.i789
  %1919 = mul i64 %1918, 8
  %1920 = add i64 %1919, %1917
  %1921 = load i64, i64* %PC.i787
  %1922 = add i64 %1921, 4
  store i64 %1922, i64* %PC.i787
  %1923 = inttoptr i64 %1920 to i64*
  %1924 = load i64, i64* %1923
  store i64 %1924, i64* %RAX.i788, align 8
  store %struct.Memory* %loadMem_4a3424, %struct.Memory** %MEMORY
  %loadMem_4a3428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 33
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 1
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %RAX.i786 = bitcast %union.anon* %1930 to i64*
  %1931 = load i64, i64* %RAX.i786
  %1932 = add i64 %1931, 40
  %1933 = load i64, i64* %PC.i785
  %1934 = add i64 %1933, 4
  store i64 %1934, i64* %PC.i785
  %1935 = inttoptr i64 %1932 to i64*
  %1936 = load i64, i64* %1935
  store i64 %1936, i64* %RAX.i786, align 8
  store %struct.Memory* %loadMem_4a3428, %struct.Memory** %MEMORY
  %loadMem_4a342c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 33
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 5
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %ECX.i783 = bitcast %union.anon* %1942 to i32*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 1
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %RAX.i784 = bitcast %union.anon* %1945 to i64*
  %1946 = load i32, i32* %ECX.i783
  %1947 = zext i32 %1946 to i64
  %1948 = load i64, i64* %RAX.i784
  %1949 = add i64 %1948, 4
  %1950 = load i64, i64* %PC.i782
  %1951 = add i64 %1950, 3
  store i64 %1951, i64* %PC.i782
  %1952 = inttoptr i64 %1949 to i32*
  %1953 = load i32, i32* %1952
  %1954 = sub i32 %1946, %1953
  %1955 = icmp ult i32 %1946, %1953
  %1956 = zext i1 %1955 to i8
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1956, i8* %1957, align 1
  %1958 = and i32 %1954, 255
  %1959 = call i32 @llvm.ctpop.i32(i32 %1958)
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  %1962 = xor i8 %1961, 1
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1962, i8* %1963, align 1
  %1964 = xor i32 %1953, %1946
  %1965 = xor i32 %1964, %1954
  %1966 = lshr i32 %1965, 4
  %1967 = trunc i32 %1966 to i8
  %1968 = and i8 %1967, 1
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1968, i8* %1969, align 1
  %1970 = icmp eq i32 %1954, 0
  %1971 = zext i1 %1970 to i8
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1971, i8* %1972, align 1
  %1973 = lshr i32 %1954, 31
  %1974 = trunc i32 %1973 to i8
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1974, i8* %1975, align 1
  %1976 = lshr i32 %1946, 31
  %1977 = lshr i32 %1953, 31
  %1978 = xor i32 %1977, %1976
  %1979 = xor i32 %1973, %1976
  %1980 = add i32 %1979, %1978
  %1981 = icmp eq i32 %1980, 2
  %1982 = zext i1 %1981 to i8
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1982, i8* %1983, align 1
  store %struct.Memory* %loadMem_4a342c, %struct.Memory** %MEMORY
  %loadMem_4a342f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 33
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1986 to i64*
  %1987 = load i64, i64* %PC.i781
  %1988 = add i64 %1987, 27
  %1989 = load i64, i64* %PC.i781
  %1990 = add i64 %1989, 6
  %1991 = load i64, i64* %PC.i781
  %1992 = add i64 %1991, 6
  store i64 %1992, i64* %PC.i781
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1994 = load i8, i8* %1993, align 1
  %1995 = icmp ne i8 %1994, 0
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1997 = load i8, i8* %1996, align 1
  %1998 = icmp ne i8 %1997, 0
  %1999 = xor i1 %1995, %1998
  %2000 = xor i1 %1999, true
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %BRANCH_TAKEN, align 1
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2003 = select i1 %1999, i64 %1990, i64 %1988
  store i64 %2003, i64* %2002, align 8
  store %struct.Memory* %loadMem_4a342f, %struct.Memory** %MEMORY
  %loadBr_4a342f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a342f = icmp eq i8 %loadBr_4a342f, 1
  br i1 %cmpBr_4a342f, label %block_.L_4a344a, label %block_4a3435

block_4a3435:                                     ; preds = %block_4a340c
  %loadMem_4a3435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 33
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 1
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %RAX.i779 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 15
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %2012 to i64*
  %2013 = load i64, i64* %RBP.i780
  %2014 = sub i64 %2013, 52
  %2015 = load i64, i64* %PC.i778
  %2016 = add i64 %2015, 3
  store i64 %2016, i64* %PC.i778
  %2017 = inttoptr i64 %2014 to i32*
  %2018 = load i32, i32* %2017
  %2019 = zext i32 %2018 to i64
  store i64 %2019, i64* %RAX.i779, align 8
  store %struct.Memory* %loadMem_4a3435, %struct.Memory** %MEMORY
  %loadMem_4a3438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 33
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 1
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %EAX.i776 = bitcast %union.anon* %2025 to i32*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 5
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RCX.i777 = bitcast %union.anon* %2028 to i64*
  %2029 = load i32, i32* %EAX.i776
  %2030 = zext i32 %2029 to i64
  %2031 = load i64, i64* %PC.i775
  %2032 = add i64 %2031, 2
  store i64 %2032, i64* %PC.i775
  %2033 = and i64 %2030, 4294967295
  store i64 %2033, i64* %RCX.i777, align 8
  store %struct.Memory* %loadMem_4a3438, %struct.Memory** %MEMORY
  %loadMem_4a343a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 33
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %2036 to i64*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 5
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %RCX.i773 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 15
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %2042 to i64*
  %2043 = load i64, i64* %RBP.i774
  %2044 = load i64, i64* %RCX.i773
  %2045 = mul i64 %2044, 4
  %2046 = add i64 %2043, -592
  %2047 = add i64 %2046, %2045
  %2048 = load i64, i64* %PC.i772
  %2049 = add i64 %2048, 11
  store i64 %2049, i64* %PC.i772
  %2050 = inttoptr i64 %2047 to i32*
  store i32 1, i32* %2050
  store %struct.Memory* %loadMem_4a343a, %struct.Memory** %MEMORY
  %loadMem_4a3445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %PC.i771
  %2055 = add i64 %2054, 21
  %2056 = load i64, i64* %PC.i771
  %2057 = add i64 %2056, 5
  store i64 %2057, i64* %PC.i771
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2055, i64* %2058, align 8
  store %struct.Memory* %loadMem_4a3445, %struct.Memory** %MEMORY
  br label %block_.L_4a345a

block_.L_4a344a:                                  ; preds = %block_4a340c
  %loadMem_4a344a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 33
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %2061 to i64*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 1
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %RAX.i769 = bitcast %union.anon* %2064 to i64*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 15
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %RBP.i770 = bitcast %union.anon* %2067 to i64*
  %2068 = load i64, i64* %RBP.i770
  %2069 = sub i64 %2068, 52
  %2070 = load i64, i64* %PC.i768
  %2071 = add i64 %2070, 3
  store i64 %2071, i64* %PC.i768
  %2072 = inttoptr i64 %2069 to i32*
  %2073 = load i32, i32* %2072
  %2074 = zext i32 %2073 to i64
  store i64 %2074, i64* %RAX.i769, align 8
  store %struct.Memory* %loadMem_4a344a, %struct.Memory** %MEMORY
  %loadMem_4a344d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 33
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 1
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %EAX.i766 = bitcast %union.anon* %2080 to i32*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 5
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %RCX.i767 = bitcast %union.anon* %2083 to i64*
  %2084 = load i32, i32* %EAX.i766
  %2085 = zext i32 %2084 to i64
  %2086 = load i64, i64* %PC.i765
  %2087 = add i64 %2086, 2
  store i64 %2087, i64* %PC.i765
  %2088 = and i64 %2085, 4294967295
  store i64 %2088, i64* %RCX.i767, align 8
  store %struct.Memory* %loadMem_4a344d, %struct.Memory** %MEMORY
  %loadMem_4a344f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 33
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %2091 to i64*
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 5
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %RCX.i763 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 15
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %2097 to i64*
  %2098 = load i64, i64* %RBP.i764
  %2099 = load i64, i64* %RCX.i763
  %2100 = mul i64 %2099, 4
  %2101 = add i64 %2098, -592
  %2102 = add i64 %2101, %2100
  %2103 = load i64, i64* %PC.i762
  %2104 = add i64 %2103, 11
  store i64 %2104, i64* %PC.i762
  %2105 = inttoptr i64 %2102 to i32*
  store i32 -1, i32* %2105
  store %struct.Memory* %loadMem_4a344f, %struct.Memory** %MEMORY
  br label %block_.L_4a345a

block_.L_4a345a:                                  ; preds = %block_.L_4a344a, %block_4a3435
  %loadMem_4a345a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %2108 to i64*
  %2109 = load i64, i64* %PC.i761
  %2110 = add i64 %2109, 88
  %2111 = load i64, i64* %PC.i761
  %2112 = add i64 %2111, 5
  store i64 %2112, i64* %PC.i761
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2110, i64* %2113, align 8
  store %struct.Memory* %loadMem_4a345a, %struct.Memory** %MEMORY
  br label %block_.L_4a34b2

block_.L_4a345f:                                  ; preds = %block_4a33c0
  %loadMem_4a345f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 33
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 1
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %2119 to i64*
  %2120 = load i64, i64* %PC.i759
  %2121 = add i64 %2120, 8
  store i64 %2121, i64* %PC.i759
  %2122 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %2122, i64* %RAX.i760, align 8
  store %struct.Memory* %loadMem_4a345f, %struct.Memory** %MEMORY
  %loadMem_4a3467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 33
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 1
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %RAX.i757 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 5
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RCX.i758 = bitcast %union.anon* %2131 to i64*
  %2132 = load i64, i64* %RAX.i757
  %2133 = add i64 %2132, 4
  %2134 = load i64, i64* %PC.i756
  %2135 = add i64 %2134, 3
  store i64 %2135, i64* %PC.i756
  %2136 = inttoptr i64 %2133 to i32*
  %2137 = load i32, i32* %2136
  %2138 = zext i32 %2137 to i64
  store i64 %2138, i64* %RCX.i758, align 8
  store %struct.Memory* %loadMem_4a3467, %struct.Memory** %MEMORY
  %loadMem_4a346a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 1
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RAX.i755 = bitcast %union.anon* %2144 to i64*
  %2145 = load i64, i64* %PC.i754
  %2146 = add i64 %2145, 8
  store i64 %2146, i64* %PC.i754
  %2147 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %2147, i64* %RAX.i755, align 8
  store %struct.Memory* %loadMem_4a346a, %struct.Memory** %MEMORY
  %loadMem_4a3472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 33
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %2150 to i64*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 7
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %RDX.i752 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 15
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %2156 to i64*
  %2157 = load i64, i64* %RBP.i753
  %2158 = sub i64 %2157, 52
  %2159 = load i64, i64* %PC.i751
  %2160 = add i64 %2159, 3
  store i64 %2160, i64* %PC.i751
  %2161 = inttoptr i64 %2158 to i32*
  %2162 = load i32, i32* %2161
  %2163 = zext i32 %2162 to i64
  store i64 %2163, i64* %RDX.i752, align 8
  store %struct.Memory* %loadMem_4a3472, %struct.Memory** %MEMORY
  %loadMem_4a3475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 7
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %EDX.i749 = bitcast %union.anon* %2169 to i32*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 9
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RSI.i750 = bitcast %union.anon* %2172 to i64*
  %2173 = load i32, i32* %EDX.i749
  %2174 = zext i32 %2173 to i64
  %2175 = load i64, i64* %PC.i748
  %2176 = add i64 %2175, 2
  store i64 %2176, i64* %PC.i748
  %2177 = and i64 %2174, 4294967295
  store i64 %2177, i64* %RSI.i750, align 8
  store %struct.Memory* %loadMem_4a3475, %struct.Memory** %MEMORY
  %loadMem_4a3477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 33
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 1
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RAX.i746 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 9
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %RSI.i747 = bitcast %union.anon* %2186 to i64*
  %2187 = load i64, i64* %RAX.i746
  %2188 = load i64, i64* %RSI.i747
  %2189 = mul i64 %2188, 8
  %2190 = add i64 %2189, %2187
  %2191 = load i64, i64* %PC.i745
  %2192 = add i64 %2191, 4
  store i64 %2192, i64* %PC.i745
  %2193 = inttoptr i64 %2190 to i64*
  %2194 = load i64, i64* %2193
  store i64 %2194, i64* %RAX.i746, align 8
  store %struct.Memory* %loadMem_4a3477, %struct.Memory** %MEMORY
  %loadMem_4a347b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 33
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 1
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RAX.i744 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %RAX.i744
  %2202 = add i64 %2201, 40
  %2203 = load i64, i64* %PC.i743
  %2204 = add i64 %2203, 4
  store i64 %2204, i64* %PC.i743
  %2205 = inttoptr i64 %2202 to i64*
  %2206 = load i64, i64* %2205
  store i64 %2206, i64* %RAX.i744, align 8
  store %struct.Memory* %loadMem_4a347b, %struct.Memory** %MEMORY
  %loadMem_4a347f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 5
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %ECX.i741 = bitcast %union.anon* %2212 to i32*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 1
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RAX.i742 = bitcast %union.anon* %2215 to i64*
  %2216 = load i32, i32* %ECX.i741
  %2217 = zext i32 %2216 to i64
  %2218 = load i64, i64* %RAX.i742
  %2219 = add i64 %2218, 4
  %2220 = load i64, i64* %PC.i740
  %2221 = add i64 %2220, 3
  store i64 %2221, i64* %PC.i740
  %2222 = inttoptr i64 %2219 to i32*
  %2223 = load i32, i32* %2222
  %2224 = sub i32 %2216, %2223
  %2225 = icmp ult i32 %2216, %2223
  %2226 = zext i1 %2225 to i8
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2226, i8* %2227, align 1
  %2228 = and i32 %2224, 255
  %2229 = call i32 @llvm.ctpop.i32(i32 %2228)
  %2230 = trunc i32 %2229 to i8
  %2231 = and i8 %2230, 1
  %2232 = xor i8 %2231, 1
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2232, i8* %2233, align 1
  %2234 = xor i32 %2223, %2216
  %2235 = xor i32 %2234, %2224
  %2236 = lshr i32 %2235, 4
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2238, i8* %2239, align 1
  %2240 = icmp eq i32 %2224, 0
  %2241 = zext i1 %2240 to i8
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2241, i8* %2242, align 1
  %2243 = lshr i32 %2224, 31
  %2244 = trunc i32 %2243 to i8
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2244, i8* %2245, align 1
  %2246 = lshr i32 %2216, 31
  %2247 = lshr i32 %2223, 31
  %2248 = xor i32 %2247, %2246
  %2249 = xor i32 %2243, %2246
  %2250 = add i32 %2249, %2248
  %2251 = icmp eq i32 %2250, 2
  %2252 = zext i1 %2251 to i8
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2252, i8* %2253, align 1
  store %struct.Memory* %loadMem_4a347f, %struct.Memory** %MEMORY
  %loadMem_4a3482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 33
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %2256 to i64*
  %2257 = load i64, i64* %PC.i739
  %2258 = add i64 %2257, 27
  %2259 = load i64, i64* %PC.i739
  %2260 = add i64 %2259, 6
  %2261 = load i64, i64* %PC.i739
  %2262 = add i64 %2261, 6
  store i64 %2262, i64* %PC.i739
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2264 = load i8, i8* %2263, align 1
  %2265 = icmp ne i8 %2264, 0
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2267 = load i8, i8* %2266, align 1
  %2268 = icmp ne i8 %2267, 0
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2270 = load i8, i8* %2269, align 1
  %2271 = icmp ne i8 %2270, 0
  %2272 = xor i1 %2268, %2271
  %2273 = or i1 %2265, %2272
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %BRANCH_TAKEN, align 1
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2276 = select i1 %2273, i64 %2258, i64 %2260
  store i64 %2276, i64* %2275, align 8
  store %struct.Memory* %loadMem_4a3482, %struct.Memory** %MEMORY
  %loadBr_4a3482 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3482 = icmp eq i8 %loadBr_4a3482, 1
  br i1 %cmpBr_4a3482, label %block_.L_4a349d, label %block_4a3488

block_4a3488:                                     ; preds = %block_.L_4a345f
  %loadMem_4a3488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 33
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 1
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 15
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %2285 to i64*
  %2286 = load i64, i64* %RBP.i738
  %2287 = sub i64 %2286, 52
  %2288 = load i64, i64* %PC.i736
  %2289 = add i64 %2288, 3
  store i64 %2289, i64* %PC.i736
  %2290 = inttoptr i64 %2287 to i32*
  %2291 = load i32, i32* %2290
  %2292 = zext i32 %2291 to i64
  store i64 %2292, i64* %RAX.i737, align 8
  store %struct.Memory* %loadMem_4a3488, %struct.Memory** %MEMORY
  %loadMem_4a348b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 1
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %EAX.i734 = bitcast %union.anon* %2298 to i32*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 5
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RCX.i735 = bitcast %union.anon* %2301 to i64*
  %2302 = load i32, i32* %EAX.i734
  %2303 = zext i32 %2302 to i64
  %2304 = load i64, i64* %PC.i733
  %2305 = add i64 %2304, 2
  store i64 %2305, i64* %PC.i733
  %2306 = and i64 %2303, 4294967295
  store i64 %2306, i64* %RCX.i735, align 8
  store %struct.Memory* %loadMem_4a348b, %struct.Memory** %MEMORY
  %loadMem_4a348d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 33
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2309 to i64*
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 5
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %RCX.i731 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 15
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %2315 to i64*
  %2316 = load i64, i64* %RBP.i732
  %2317 = load i64, i64* %RCX.i731
  %2318 = mul i64 %2317, 4
  %2319 = add i64 %2316, -592
  %2320 = add i64 %2319, %2318
  %2321 = load i64, i64* %PC.i730
  %2322 = add i64 %2321, 11
  store i64 %2322, i64* %PC.i730
  %2323 = inttoptr i64 %2320 to i32*
  store i32 1, i32* %2323
  store %struct.Memory* %loadMem_4a348d, %struct.Memory** %MEMORY
  %loadMem_4a3498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %2326 to i64*
  %2327 = load i64, i64* %PC.i729
  %2328 = add i64 %2327, 21
  %2329 = load i64, i64* %PC.i729
  %2330 = add i64 %2329, 5
  store i64 %2330, i64* %PC.i729
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2328, i64* %2331, align 8
  store %struct.Memory* %loadMem_4a3498, %struct.Memory** %MEMORY
  br label %block_.L_4a34ad

block_.L_4a349d:                                  ; preds = %block_.L_4a345f
  %loadMem_4a349d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 33
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 1
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RAX.i727 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 15
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %RBP.i728
  %2342 = sub i64 %2341, 52
  %2343 = load i64, i64* %PC.i726
  %2344 = add i64 %2343, 3
  store i64 %2344, i64* %PC.i726
  %2345 = inttoptr i64 %2342 to i32*
  %2346 = load i32, i32* %2345
  %2347 = zext i32 %2346 to i64
  store i64 %2347, i64* %RAX.i727, align 8
  store %struct.Memory* %loadMem_4a349d, %struct.Memory** %MEMORY
  %loadMem_4a34a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 33
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 1
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %EAX.i724 = bitcast %union.anon* %2353 to i32*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 5
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RCX.i725 = bitcast %union.anon* %2356 to i64*
  %2357 = load i32, i32* %EAX.i724
  %2358 = zext i32 %2357 to i64
  %2359 = load i64, i64* %PC.i723
  %2360 = add i64 %2359, 2
  store i64 %2360, i64* %PC.i723
  %2361 = and i64 %2358, 4294967295
  store i64 %2361, i64* %RCX.i725, align 8
  store %struct.Memory* %loadMem_4a34a0, %struct.Memory** %MEMORY
  %loadMem_4a34a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 5
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RCX.i721 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 15
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %RBP.i722
  %2372 = load i64, i64* %RCX.i721
  %2373 = mul i64 %2372, 4
  %2374 = add i64 %2371, -592
  %2375 = add i64 %2374, %2373
  %2376 = load i64, i64* %PC.i720
  %2377 = add i64 %2376, 11
  store i64 %2377, i64* %PC.i720
  %2378 = inttoptr i64 %2375 to i32*
  store i32 -1, i32* %2378
  store %struct.Memory* %loadMem_4a34a2, %struct.Memory** %MEMORY
  br label %block_.L_4a34ad

block_.L_4a34ad:                                  ; preds = %block_.L_4a349d, %block_4a3488
  %loadMem_4a34ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 33
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %2381 to i64*
  %2382 = load i64, i64* %PC.i719
  %2383 = add i64 %2382, 5
  %2384 = load i64, i64* %PC.i719
  %2385 = add i64 %2384, 5
  store i64 %2385, i64* %PC.i719
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2383, i64* %2386, align 8
  store %struct.Memory* %loadMem_4a34ad, %struct.Memory** %MEMORY
  br label %block_.L_4a34b2

block_.L_4a34b2:                                  ; preds = %block_.L_4a34ad, %block_.L_4a345a
  %loadMem_4a34b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %2389 to i64*
  %2390 = load i64, i64* %PC.i718
  %2391 = add i64 %2390, 5
  %2392 = load i64, i64* %PC.i718
  %2393 = add i64 %2392, 5
  store i64 %2393, i64* %PC.i718
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2391, i64* %2394, align 8
  store %struct.Memory* %loadMem_4a34b2, %struct.Memory** %MEMORY
  br label %block_.L_4a34b7

block_.L_4a34b7:                                  ; preds = %block_.L_4a34b2, %block_4a339e, %block_4a337c, %block_4a333b
  %loadMem_4a34b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 33
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2397 to i64*
  %2398 = load i64, i64* %PC.i717
  %2399 = add i64 %2398, 5
  %2400 = load i64, i64* %PC.i717
  %2401 = add i64 %2400, 5
  store i64 %2401, i64* %PC.i717
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2399, i64* %2402, align 8
  store %struct.Memory* %loadMem_4a34b7, %struct.Memory** %MEMORY
  br label %block_.L_4a34bc

block_.L_4a34bc:                                  ; preds = %block_.L_4a34b7
  %loadMem_4a34bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 33
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 1
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %2408 to i64*
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 15
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %2411 to i64*
  %2412 = load i64, i64* %RBP.i716
  %2413 = sub i64 %2412, 52
  %2414 = load i64, i64* %PC.i714
  %2415 = add i64 %2414, 3
  store i64 %2415, i64* %PC.i714
  %2416 = inttoptr i64 %2413 to i32*
  %2417 = load i32, i32* %2416
  %2418 = zext i32 %2417 to i64
  store i64 %2418, i64* %RAX.i715, align 8
  store %struct.Memory* %loadMem_4a34bc, %struct.Memory** %MEMORY
  %loadMem_4a34bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 33
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 1
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %RAX.i713 = bitcast %union.anon* %2424 to i64*
  %2425 = load i64, i64* %RAX.i713
  %2426 = load i64, i64* %PC.i712
  %2427 = add i64 %2426, 3
  store i64 %2427, i64* %PC.i712
  %2428 = trunc i64 %2425 to i32
  %2429 = add i32 1, %2428
  %2430 = zext i32 %2429 to i64
  store i64 %2430, i64* %RAX.i713, align 8
  %2431 = icmp ult i32 %2429, %2428
  %2432 = icmp ult i32 %2429, 1
  %2433 = or i1 %2431, %2432
  %2434 = zext i1 %2433 to i8
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2434, i8* %2435, align 1
  %2436 = and i32 %2429, 255
  %2437 = call i32 @llvm.ctpop.i32(i32 %2436)
  %2438 = trunc i32 %2437 to i8
  %2439 = and i8 %2438, 1
  %2440 = xor i8 %2439, 1
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2440, i8* %2441, align 1
  %2442 = xor i64 1, %2425
  %2443 = trunc i64 %2442 to i32
  %2444 = xor i32 %2443, %2429
  %2445 = lshr i32 %2444, 4
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2447, i8* %2448, align 1
  %2449 = icmp eq i32 %2429, 0
  %2450 = zext i1 %2449 to i8
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2450, i8* %2451, align 1
  %2452 = lshr i32 %2429, 31
  %2453 = trunc i32 %2452 to i8
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2453, i8* %2454, align 1
  %2455 = lshr i32 %2428, 31
  %2456 = xor i32 %2452, %2455
  %2457 = add i32 %2456, %2452
  %2458 = icmp eq i32 %2457, 2
  %2459 = zext i1 %2458 to i8
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2459, i8* %2460, align 1
  store %struct.Memory* %loadMem_4a34bf, %struct.Memory** %MEMORY
  %loadMem_4a34c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 1
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %EAX.i710 = bitcast %union.anon* %2466 to i32*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 15
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RBP.i711
  %2471 = sub i64 %2470, 52
  %2472 = load i32, i32* %EAX.i710
  %2473 = zext i32 %2472 to i64
  %2474 = load i64, i64* %PC.i709
  %2475 = add i64 %2474, 3
  store i64 %2475, i64* %PC.i709
  %2476 = inttoptr i64 %2471 to i32*
  store i32 %2472, i32* %2476
  store %struct.Memory* %loadMem_4a34c2, %struct.Memory** %MEMORY
  %loadMem_4a34c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 33
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2479 to i64*
  %2480 = load i64, i64* %PC.i708
  %2481 = add i64 %2480, -410
  %2482 = load i64, i64* %PC.i708
  %2483 = add i64 %2482, 5
  store i64 %2483, i64* %PC.i708
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2481, i64* %2484, align 8
  store %struct.Memory* %loadMem_4a34c5, %struct.Memory** %MEMORY
  br label %block_.L_4a332b

block_.L_4a34ca:                                  ; preds = %block_.L_4a332b
  %loadMem_4a34ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 15
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RBP.i707 = bitcast %union.anon* %2490 to i64*
  %2491 = load i64, i64* %RBP.i707
  %2492 = sub i64 %2491, 52
  %2493 = load i64, i64* %PC.i706
  %2494 = add i64 %2493, 7
  store i64 %2494, i64* %PC.i706
  %2495 = inttoptr i64 %2492 to i32*
  store i32 0, i32* %2495
  store %struct.Memory* %loadMem_4a34ca, %struct.Memory** %MEMORY
  br label %block_.L_4a34d1

block_.L_4a34d1:                                  ; preds = %block_.L_4a3625, %block_.L_4a34ca
  %loadMem_4a34d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 1
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RAX.i704 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 15
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %2504 to i64*
  %2505 = load i64, i64* %RBP.i705
  %2506 = sub i64 %2505, 52
  %2507 = load i64, i64* %PC.i703
  %2508 = add i64 %2507, 3
  store i64 %2508, i64* %PC.i703
  %2509 = inttoptr i64 %2506 to i32*
  %2510 = load i32, i32* %2509
  %2511 = zext i32 %2510 to i64
  store i64 %2511, i64* %RAX.i704, align 8
  store %struct.Memory* %loadMem_4a34d1, %struct.Memory** %MEMORY
  %loadMem_4a34d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 33
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 5
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %RCX.i702 = bitcast %union.anon* %2517 to i64*
  %2518 = load i64, i64* %PC.i701
  %2519 = add i64 %2518, 7
  store i64 %2519, i64* %PC.i701
  %2520 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*)
  %2521 = zext i32 %2520 to i64
  store i64 %2521, i64* %RCX.i702, align 8
  store %struct.Memory* %loadMem_4a34d4, %struct.Memory** %MEMORY
  %loadMem_4a34db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 33
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 5
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %RCX.i700 = bitcast %union.anon* %2527 to i64*
  %2528 = load i64, i64* %RCX.i700
  %2529 = load i64, i64* %PC.i699
  %2530 = add i64 %2529, 3
  store i64 %2530, i64* %PC.i699
  %2531 = trunc i64 %2528 to i32
  %2532 = sub i32 %2531, 1
  %2533 = zext i32 %2532 to i64
  store i64 %2533, i64* %RCX.i700, align 8
  %2534 = icmp ult i32 %2531, 1
  %2535 = zext i1 %2534 to i8
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2535, i8* %2536, align 1
  %2537 = and i32 %2532, 255
  %2538 = call i32 @llvm.ctpop.i32(i32 %2537)
  %2539 = trunc i32 %2538 to i8
  %2540 = and i8 %2539, 1
  %2541 = xor i8 %2540, 1
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2541, i8* %2542, align 1
  %2543 = xor i64 1, %2528
  %2544 = trunc i64 %2543 to i32
  %2545 = xor i32 %2544, %2532
  %2546 = lshr i32 %2545, 4
  %2547 = trunc i32 %2546 to i8
  %2548 = and i8 %2547, 1
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2548, i8* %2549, align 1
  %2550 = icmp eq i32 %2532, 0
  %2551 = zext i1 %2550 to i8
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2551, i8* %2552, align 1
  %2553 = lshr i32 %2532, 31
  %2554 = trunc i32 %2553 to i8
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2554, i8* %2555, align 1
  %2556 = lshr i32 %2531, 31
  %2557 = xor i32 %2553, %2556
  %2558 = add i32 %2557, %2556
  %2559 = icmp eq i32 %2558, 2
  %2560 = zext i1 %2559 to i8
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2560, i8* %2561, align 1
  store %struct.Memory* %loadMem_4a34db, %struct.Memory** %MEMORY
  %loadMem_4a34de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 33
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 1
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %EAX.i697 = bitcast %union.anon* %2567 to i32*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 5
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %ECX.i698 = bitcast %union.anon* %2570 to i32*
  %2571 = load i32, i32* %EAX.i697
  %2572 = zext i32 %2571 to i64
  %2573 = load i32, i32* %ECX.i698
  %2574 = zext i32 %2573 to i64
  %2575 = load i64, i64* %PC.i696
  %2576 = add i64 %2575, 2
  store i64 %2576, i64* %PC.i696
  %2577 = sub i32 %2571, %2573
  %2578 = icmp ult i32 %2571, %2573
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2579, i8* %2580, align 1
  %2581 = and i32 %2577, 255
  %2582 = call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2585, i8* %2586, align 1
  %2587 = xor i64 %2574, %2572
  %2588 = trunc i64 %2587 to i32
  %2589 = xor i32 %2588, %2577
  %2590 = lshr i32 %2589, 4
  %2591 = trunc i32 %2590 to i8
  %2592 = and i8 %2591, 1
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2592, i8* %2593, align 1
  %2594 = icmp eq i32 %2577, 0
  %2595 = zext i1 %2594 to i8
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2595, i8* %2596, align 1
  %2597 = lshr i32 %2577, 31
  %2598 = trunc i32 %2597 to i8
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2598, i8* %2599, align 1
  %2600 = lshr i32 %2571, 31
  %2601 = lshr i32 %2573, 31
  %2602 = xor i32 %2601, %2600
  %2603 = xor i32 %2597, %2600
  %2604 = add i32 %2603, %2602
  %2605 = icmp eq i32 %2604, 2
  %2606 = zext i1 %2605 to i8
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2606, i8* %2607, align 1
  store %struct.Memory* %loadMem_4a34de, %struct.Memory** %MEMORY
  %loadMem_4a34e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %2610 to i64*
  %2611 = load i64, i64* %PC.i695
  %2612 = add i64 %2611, 339
  %2613 = load i64, i64* %PC.i695
  %2614 = add i64 %2613, 6
  %2615 = load i64, i64* %PC.i695
  %2616 = add i64 %2615, 6
  store i64 %2616, i64* %PC.i695
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2618 = load i8, i8* %2617, align 1
  %2619 = icmp eq i8 %2618, 0
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %BRANCH_TAKEN, align 1
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2622 = select i1 %2619, i64 %2612, i64 %2614
  store i64 %2622, i64* %2621, align 8
  store %struct.Memory* %loadMem_4a34e0, %struct.Memory** %MEMORY
  %loadBr_4a34e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a34e0 = icmp eq i8 %loadBr_4a34e0, 1
  br i1 %cmpBr_4a34e0, label %block_.L_4a3633, label %block_4a34e6

block_4a34e6:                                     ; preds = %block_.L_4a34d1
  %loadMem_4a34e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 1
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 15
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %2631 to i64*
  %2632 = load i64, i64* %RBP.i694
  %2633 = sub i64 %2632, 52
  %2634 = load i64, i64* %PC.i692
  %2635 = add i64 %2634, 3
  store i64 %2635, i64* %PC.i692
  %2636 = inttoptr i64 %2633 to i32*
  %2637 = load i32, i32* %2636
  %2638 = zext i32 %2637 to i64
  store i64 %2638, i64* %RAX.i693, align 8
  store %struct.Memory* %loadMem_4a34e6, %struct.Memory** %MEMORY
  %loadMem_4a34e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 33
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 1
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %RAX.i691 = bitcast %union.anon* %2644 to i64*
  %2645 = load i64, i64* %RAX.i691
  %2646 = load i64, i64* %PC.i690
  %2647 = add i64 %2646, 3
  store i64 %2647, i64* %PC.i690
  %2648 = trunc i64 %2645 to i32
  %2649 = add i32 1, %2648
  %2650 = zext i32 %2649 to i64
  store i64 %2650, i64* %RAX.i691, align 8
  %2651 = icmp ult i32 %2649, %2648
  %2652 = icmp ult i32 %2649, 1
  %2653 = or i1 %2651, %2652
  %2654 = zext i1 %2653 to i8
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2654, i8* %2655, align 1
  %2656 = and i32 %2649, 255
  %2657 = call i32 @llvm.ctpop.i32(i32 %2656)
  %2658 = trunc i32 %2657 to i8
  %2659 = and i8 %2658, 1
  %2660 = xor i8 %2659, 1
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2660, i8* %2661, align 1
  %2662 = xor i64 1, %2645
  %2663 = trunc i64 %2662 to i32
  %2664 = xor i32 %2663, %2649
  %2665 = lshr i32 %2664, 4
  %2666 = trunc i32 %2665 to i8
  %2667 = and i8 %2666, 1
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2667, i8* %2668, align 1
  %2669 = icmp eq i32 %2649, 0
  %2670 = zext i1 %2669 to i8
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2670, i8* %2671, align 1
  %2672 = lshr i32 %2649, 31
  %2673 = trunc i32 %2672 to i8
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2673, i8* %2674, align 1
  %2675 = lshr i32 %2648, 31
  %2676 = xor i32 %2672, %2675
  %2677 = add i32 %2676, %2672
  %2678 = icmp eq i32 %2677, 2
  %2679 = zext i1 %2678 to i8
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2679, i8* %2680, align 1
  store %struct.Memory* %loadMem_4a34e9, %struct.Memory** %MEMORY
  %loadMem_4a34ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 33
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 1
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %EAX.i688 = bitcast %union.anon* %2686 to i32*
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 15
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %2689 to i64*
  %2690 = load i64, i64* %RBP.i689
  %2691 = sub i64 %2690, 56
  %2692 = load i32, i32* %EAX.i688
  %2693 = zext i32 %2692 to i64
  %2694 = load i64, i64* %PC.i687
  %2695 = add i64 %2694, 3
  store i64 %2695, i64* %PC.i687
  %2696 = inttoptr i64 %2691 to i32*
  store i32 %2692, i32* %2696
  store %struct.Memory* %loadMem_4a34ec, %struct.Memory** %MEMORY
  br label %block_.L_4a34ef

block_.L_4a34ef:                                  ; preds = %block_.L_4a3612, %block_4a34e6
  %loadMem_4a34ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 33
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2699 to i64*
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 1
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %2702 to i64*
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 15
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %2705 to i64*
  %2706 = load i64, i64* %RBP.i686
  %2707 = sub i64 %2706, 56
  %2708 = load i64, i64* %PC.i684
  %2709 = add i64 %2708, 3
  store i64 %2709, i64* %PC.i684
  %2710 = inttoptr i64 %2707 to i32*
  %2711 = load i32, i32* %2710
  %2712 = zext i32 %2711 to i64
  store i64 %2712, i64* %RAX.i685, align 8
  store %struct.Memory* %loadMem_4a34ef, %struct.Memory** %MEMORY
  %loadMem_4a34f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 33
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2715 to i64*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 1
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %EAX.i683 = bitcast %union.anon* %2718 to i32*
  %2719 = load i32, i32* %EAX.i683
  %2720 = zext i32 %2719 to i64
  %2721 = load i64, i64* %PC.i682
  %2722 = add i64 %2721, 7
  store i64 %2722, i64* %PC.i682
  %2723 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*)
  %2724 = sub i32 %2719, %2723
  %2725 = icmp ult i32 %2719, %2723
  %2726 = zext i1 %2725 to i8
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2726, i8* %2727, align 1
  %2728 = and i32 %2724, 255
  %2729 = call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2732, i8* %2733, align 1
  %2734 = xor i32 %2723, %2719
  %2735 = xor i32 %2734, %2724
  %2736 = lshr i32 %2735, 4
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2738, i8* %2739, align 1
  %2740 = icmp eq i32 %2724, 0
  %2741 = zext i1 %2740 to i8
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2741, i8* %2742, align 1
  %2743 = lshr i32 %2724, 31
  %2744 = trunc i32 %2743 to i8
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2744, i8* %2745, align 1
  %2746 = lshr i32 %2719, 31
  %2747 = lshr i32 %2723, 31
  %2748 = xor i32 %2747, %2746
  %2749 = xor i32 %2743, %2746
  %2750 = add i32 %2749, %2748
  %2751 = icmp eq i32 %2750, 2
  %2752 = zext i1 %2751 to i8
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2752, i8* %2753, align 1
  store %struct.Memory* %loadMem_4a34f2, %struct.Memory** %MEMORY
  %loadMem_4a34f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2756 to i64*
  %2757 = load i64, i64* %PC.i681
  %2758 = add i64 %2757, 295
  %2759 = load i64, i64* %PC.i681
  %2760 = add i64 %2759, 6
  %2761 = load i64, i64* %PC.i681
  %2762 = add i64 %2761, 6
  store i64 %2762, i64* %PC.i681
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2764 = load i8, i8* %2763, align 1
  %2765 = icmp eq i8 %2764, 0
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %BRANCH_TAKEN, align 1
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2768 = select i1 %2765, i64 %2758, i64 %2760
  store i64 %2768, i64* %2767, align 8
  store %struct.Memory* %loadMem_4a34f9, %struct.Memory** %MEMORY
  %loadBr_4a34f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a34f9 = icmp eq i8 %loadBr_4a34f9, 1
  br i1 %cmpBr_4a34f9, label %block_.L_4a3620, label %block_4a34ff

block_4a34ff:                                     ; preds = %block_.L_4a34ef
  %loadMem_4a34ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 1
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %2774 to i64*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 15
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %2777 to i64*
  %2778 = load i64, i64* %RBP.i680
  %2779 = sub i64 %2778, 52
  %2780 = load i64, i64* %PC.i678
  %2781 = add i64 %2780, 3
  store i64 %2781, i64* %PC.i678
  %2782 = inttoptr i64 %2779 to i32*
  %2783 = load i32, i32* %2782
  %2784 = zext i32 %2783 to i64
  store i64 %2784, i64* %RAX.i679, align 8
  store %struct.Memory* %loadMem_4a34ff, %struct.Memory** %MEMORY
  %loadMem_4a3502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 1
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %EAX.i676 = bitcast %union.anon* %2790 to i32*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 5
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %RCX.i677 = bitcast %union.anon* %2793 to i64*
  %2794 = load i32, i32* %EAX.i676
  %2795 = zext i32 %2794 to i64
  %2796 = load i64, i64* %PC.i675
  %2797 = add i64 %2796, 2
  store i64 %2797, i64* %PC.i675
  %2798 = and i64 %2795, 4294967295
  store i64 %2798, i64* %RCX.i677, align 8
  store %struct.Memory* %loadMem_4a3502, %struct.Memory** %MEMORY
  %loadMem_4a3504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 33
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 1
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %2804 to i64*
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 5
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %RCX.i673 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 15
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %2810 to i64*
  %2811 = load i64, i64* %RBP.i674
  %2812 = load i64, i64* %RCX.i673
  %2813 = mul i64 %2812, 4
  %2814 = add i64 %2811, -736
  %2815 = add i64 %2814, %2813
  %2816 = load i64, i64* %PC.i671
  %2817 = add i64 %2816, 7
  store i64 %2817, i64* %PC.i671
  %2818 = inttoptr i64 %2815 to i32*
  %2819 = load i32, i32* %2818
  %2820 = zext i32 %2819 to i64
  store i64 %2820, i64* %RAX.i672, align 8
  store %struct.Memory* %loadMem_4a3504, %struct.Memory** %MEMORY
  %loadMem_4a350b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 7
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RDX.i669 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 15
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %2829 to i64*
  %2830 = load i64, i64* %RBP.i670
  %2831 = sub i64 %2830, 56
  %2832 = load i64, i64* %PC.i668
  %2833 = add i64 %2832, 3
  store i64 %2833, i64* %PC.i668
  %2834 = inttoptr i64 %2831 to i32*
  %2835 = load i32, i32* %2834
  %2836 = zext i32 %2835 to i64
  store i64 %2836, i64* %RDX.i669, align 8
  store %struct.Memory* %loadMem_4a350b, %struct.Memory** %MEMORY
  %loadMem_4a350e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 33
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2839 to i64*
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 7
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %EDX.i666 = bitcast %union.anon* %2842 to i32*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 5
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RCX.i667 = bitcast %union.anon* %2845 to i64*
  %2846 = load i32, i32* %EDX.i666
  %2847 = zext i32 %2846 to i64
  %2848 = load i64, i64* %PC.i665
  %2849 = add i64 %2848, 2
  store i64 %2849, i64* %PC.i665
  %2850 = and i64 %2847, 4294967295
  store i64 %2850, i64* %RCX.i667, align 8
  store %struct.Memory* %loadMem_4a350e, %struct.Memory** %MEMORY
  %loadMem_4a3510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 33
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2853 to i64*
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 1
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %EAX.i662 = bitcast %union.anon* %2856 to i32*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 5
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %RCX.i663 = bitcast %union.anon* %2859 to i64*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 15
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %2862 to i64*
  %2863 = load i32, i32* %EAX.i662
  %2864 = zext i32 %2863 to i64
  %2865 = load i64, i64* %RBP.i664
  %2866 = load i64, i64* %RCX.i663
  %2867 = mul i64 %2866, 4
  %2868 = add i64 %2865, -736
  %2869 = add i64 %2868, %2867
  %2870 = load i64, i64* %PC.i661
  %2871 = add i64 %2870, 7
  store i64 %2871, i64* %PC.i661
  %2872 = inttoptr i64 %2869 to i32*
  %2873 = load i32, i32* %2872
  %2874 = sub i32 %2863, %2873
  %2875 = icmp ult i32 %2863, %2873
  %2876 = zext i1 %2875 to i8
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2876, i8* %2877, align 1
  %2878 = and i32 %2874, 255
  %2879 = call i32 @llvm.ctpop.i32(i32 %2878)
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  %2882 = xor i8 %2881, 1
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2882, i8* %2883, align 1
  %2884 = xor i32 %2873, %2863
  %2885 = xor i32 %2884, %2874
  %2886 = lshr i32 %2885, 4
  %2887 = trunc i32 %2886 to i8
  %2888 = and i8 %2887, 1
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2888, i8* %2889, align 1
  %2890 = icmp eq i32 %2874, 0
  %2891 = zext i1 %2890 to i8
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2891, i8* %2892, align 1
  %2893 = lshr i32 %2874, 31
  %2894 = trunc i32 %2893 to i8
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2894, i8* %2895, align 1
  %2896 = lshr i32 %2863, 31
  %2897 = lshr i32 %2873, 31
  %2898 = xor i32 %2897, %2896
  %2899 = xor i32 %2893, %2896
  %2900 = add i32 %2899, %2898
  %2901 = icmp eq i32 %2900, 2
  %2902 = zext i1 %2901 to i8
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2902, i8* %2903, align 1
  store %struct.Memory* %loadMem_4a3510, %struct.Memory** %MEMORY
  %loadMem_4a3517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 33
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %2906 to i64*
  %2907 = load i64, i64* %PC.i660
  %2908 = add i64 %2907, 66
  %2909 = load i64, i64* %PC.i660
  %2910 = add i64 %2909, 6
  %2911 = load i64, i64* %PC.i660
  %2912 = add i64 %2911, 6
  store i64 %2912, i64* %PC.i660
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2914 = load i8, i8* %2913, align 1
  %2915 = icmp eq i8 %2914, 0
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2917 = load i8, i8* %2916, align 1
  %2918 = icmp ne i8 %2917, 0
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2920 = load i8, i8* %2919, align 1
  %2921 = icmp ne i8 %2920, 0
  %2922 = xor i1 %2918, %2921
  %2923 = xor i1 %2922, true
  %2924 = and i1 %2915, %2923
  %2925 = zext i1 %2924 to i8
  store i8 %2925, i8* %BRANCH_TAKEN, align 1
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2927 = select i1 %2924, i64 %2908, i64 %2910
  store i64 %2927, i64* %2926, align 8
  store %struct.Memory* %loadMem_4a3517, %struct.Memory** %MEMORY
  %loadBr_4a3517 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3517 = icmp eq i8 %loadBr_4a3517, 1
  br i1 %cmpBr_4a3517, label %block_.L_4a3559, label %block_4a351d

block_4a351d:                                     ; preds = %block_4a34ff
  %loadMem_4a351d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 1
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RAX.i658 = bitcast %union.anon* %2933 to i64*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 15
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %2936 to i64*
  %2937 = load i64, i64* %RBP.i659
  %2938 = sub i64 %2937, 52
  %2939 = load i64, i64* %PC.i657
  %2940 = add i64 %2939, 3
  store i64 %2940, i64* %PC.i657
  %2941 = inttoptr i64 %2938 to i32*
  %2942 = load i32, i32* %2941
  %2943 = zext i32 %2942 to i64
  store i64 %2943, i64* %RAX.i658, align 8
  store %struct.Memory* %loadMem_4a351d, %struct.Memory** %MEMORY
  %loadMem_4a3520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 33
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %2946 to i64*
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 1
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %EAX.i655 = bitcast %union.anon* %2949 to i32*
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 5
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %RCX.i656 = bitcast %union.anon* %2952 to i64*
  %2953 = load i32, i32* %EAX.i655
  %2954 = zext i32 %2953 to i64
  %2955 = load i64, i64* %PC.i654
  %2956 = add i64 %2955, 2
  store i64 %2956, i64* %PC.i654
  %2957 = and i64 %2954, 4294967295
  store i64 %2957, i64* %RCX.i656, align 8
  store %struct.Memory* %loadMem_4a3520, %struct.Memory** %MEMORY
  %loadMem_4a3522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 33
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 1
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RAX.i651 = bitcast %union.anon* %2963 to i64*
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 5
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %RCX.i652 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 15
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %2969 to i64*
  %2970 = load i64, i64* %RBP.i653
  %2971 = load i64, i64* %RCX.i652
  %2972 = mul i64 %2971, 4
  %2973 = add i64 %2970, -736
  %2974 = add i64 %2973, %2972
  %2975 = load i64, i64* %PC.i650
  %2976 = add i64 %2975, 7
  store i64 %2976, i64* %PC.i650
  %2977 = inttoptr i64 %2974 to i32*
  %2978 = load i32, i32* %2977
  %2979 = zext i32 %2978 to i64
  store i64 %2979, i64* %RAX.i651, align 8
  store %struct.Memory* %loadMem_4a3522, %struct.Memory** %MEMORY
  %loadMem_4a3529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 7
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RDX.i648 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 15
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RBP.i649 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %RBP.i649
  %2990 = sub i64 %2989, 56
  %2991 = load i64, i64* %PC.i647
  %2992 = add i64 %2991, 3
  store i64 %2992, i64* %PC.i647
  %2993 = inttoptr i64 %2990 to i32*
  %2994 = load i32, i32* %2993
  %2995 = zext i32 %2994 to i64
  store i64 %2995, i64* %RDX.i648, align 8
  store %struct.Memory* %loadMem_4a3529, %struct.Memory** %MEMORY
  %loadMem_4a352c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 7
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %EDX.i645 = bitcast %union.anon* %3001 to i32*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 5
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RCX.i646 = bitcast %union.anon* %3004 to i64*
  %3005 = load i32, i32* %EDX.i645
  %3006 = zext i32 %3005 to i64
  %3007 = load i64, i64* %PC.i644
  %3008 = add i64 %3007, 2
  store i64 %3008, i64* %PC.i644
  %3009 = and i64 %3006, 4294967295
  store i64 %3009, i64* %RCX.i646, align 8
  store %struct.Memory* %loadMem_4a352c, %struct.Memory** %MEMORY
  %loadMem_4a352e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 33
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %3012 to i64*
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 1
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %EAX.i641 = bitcast %union.anon* %3015 to i32*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 5
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %RCX.i642 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 15
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %3021 to i64*
  %3022 = load i32, i32* %EAX.i641
  %3023 = zext i32 %3022 to i64
  %3024 = load i64, i64* %RBP.i643
  %3025 = load i64, i64* %RCX.i642
  %3026 = mul i64 %3025, 4
  %3027 = add i64 %3024, -736
  %3028 = add i64 %3027, %3026
  %3029 = load i64, i64* %PC.i640
  %3030 = add i64 %3029, 7
  store i64 %3030, i64* %PC.i640
  %3031 = inttoptr i64 %3028 to i32*
  %3032 = load i32, i32* %3031
  %3033 = sub i32 %3022, %3032
  %3034 = icmp ult i32 %3022, %3032
  %3035 = zext i1 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3035, i8* %3036, align 1
  %3037 = and i32 %3033, 255
  %3038 = call i32 @llvm.ctpop.i32(i32 %3037)
  %3039 = trunc i32 %3038 to i8
  %3040 = and i8 %3039, 1
  %3041 = xor i8 %3040, 1
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3041, i8* %3042, align 1
  %3043 = xor i32 %3032, %3022
  %3044 = xor i32 %3043, %3033
  %3045 = lshr i32 %3044, 4
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3047, i8* %3048, align 1
  %3049 = icmp eq i32 %3033, 0
  %3050 = zext i1 %3049 to i8
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3050, i8* %3051, align 1
  %3052 = lshr i32 %3033, 31
  %3053 = trunc i32 %3052 to i8
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3053, i8* %3054, align 1
  %3055 = lshr i32 %3022, 31
  %3056 = lshr i32 %3032, 31
  %3057 = xor i32 %3056, %3055
  %3058 = xor i32 %3052, %3055
  %3059 = add i32 %3058, %3057
  %3060 = icmp eq i32 %3059, 2
  %3061 = zext i1 %3060 to i8
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3061, i8* %3062, align 1
  store %struct.Memory* %loadMem_4a352e, %struct.Memory** %MEMORY
  %loadMem_4a3535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 33
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %PC.i639
  %3067 = add i64 %3066, 216
  %3068 = load i64, i64* %PC.i639
  %3069 = add i64 %3068, 6
  %3070 = load i64, i64* %PC.i639
  %3071 = add i64 %3070, 6
  store i64 %3071, i64* %PC.i639
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3073 = load i8, i8* %3072, align 1
  %3074 = icmp eq i8 %3073, 0
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %BRANCH_TAKEN, align 1
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3077 = select i1 %3074, i64 %3067, i64 %3069
  store i64 %3077, i64* %3076, align 8
  store %struct.Memory* %loadMem_4a3535, %struct.Memory** %MEMORY
  %loadBr_4a3535 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3535 = icmp eq i8 %loadBr_4a3535, 1
  br i1 %cmpBr_4a3535, label %block_.L_4a360d, label %block_4a353b

block_4a353b:                                     ; preds = %block_4a351d
  %loadMem_4a353b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 33
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %3080 to i64*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 1
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 15
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %3086 to i64*
  %3087 = load i64, i64* %RBP.i638
  %3088 = sub i64 %3087, 56
  %3089 = load i64, i64* %PC.i636
  %3090 = add i64 %3089, 3
  store i64 %3090, i64* %PC.i636
  %3091 = inttoptr i64 %3088 to i32*
  %3092 = load i32, i32* %3091
  %3093 = zext i32 %3092 to i64
  store i64 %3093, i64* %RAX.i637, align 8
  store %struct.Memory* %loadMem_4a353b, %struct.Memory** %MEMORY
  %loadMem_4a353e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 33
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 1
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %EAX.i634 = bitcast %union.anon* %3099 to i32*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 5
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RCX.i635 = bitcast %union.anon* %3102 to i64*
  %3103 = load i32, i32* %EAX.i634
  %3104 = zext i32 %3103 to i64
  %3105 = load i64, i64* %PC.i633
  %3106 = add i64 %3105, 2
  store i64 %3106, i64* %PC.i633
  %3107 = and i64 %3104, 4294967295
  store i64 %3107, i64* %RCX.i635, align 8
  store %struct.Memory* %loadMem_4a353e, %struct.Memory** %MEMORY
  %loadMem_4a3540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 33
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %3110 to i64*
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 1
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %3113 to i64*
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 5
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 15
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %3119 to i64*
  %3120 = load i64, i64* %RBP.i632
  %3121 = load i64, i64* %RCX.i631
  %3122 = mul i64 %3121, 4
  %3123 = add i64 %3120, -592
  %3124 = add i64 %3123, %3122
  %3125 = load i64, i64* %PC.i629
  %3126 = add i64 %3125, 7
  store i64 %3126, i64* %PC.i629
  %3127 = inttoptr i64 %3124 to i32*
  %3128 = load i32, i32* %3127
  %3129 = zext i32 %3128 to i64
  store i64 %3129, i64* %RAX.i630, align 8
  store %struct.Memory* %loadMem_4a3540, %struct.Memory** %MEMORY
  %loadMem_4a3547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 33
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %3132 to i64*
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 7
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %RDX.i627 = bitcast %union.anon* %3135 to i64*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 15
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %3138 to i64*
  %3139 = load i64, i64* %RBP.i628
  %3140 = sub i64 %3139, 52
  %3141 = load i64, i64* %PC.i626
  %3142 = add i64 %3141, 3
  store i64 %3142, i64* %PC.i626
  %3143 = inttoptr i64 %3140 to i32*
  %3144 = load i32, i32* %3143
  %3145 = zext i32 %3144 to i64
  store i64 %3145, i64* %RDX.i627, align 8
  store %struct.Memory* %loadMem_4a3547, %struct.Memory** %MEMORY
  %loadMem_4a354a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 33
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 7
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %EDX.i624 = bitcast %union.anon* %3151 to i32*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 5
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %3154 to i64*
  %3155 = load i32, i32* %EDX.i624
  %3156 = zext i32 %3155 to i64
  %3157 = load i64, i64* %PC.i623
  %3158 = add i64 %3157, 2
  store i64 %3158, i64* %PC.i623
  %3159 = and i64 %3156, 4294967295
  store i64 %3159, i64* %RCX.i625, align 8
  store %struct.Memory* %loadMem_4a354a, %struct.Memory** %MEMORY
  %loadMem_4a354c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3162 to i64*
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 1
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %EAX.i620 = bitcast %union.anon* %3165 to i32*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 5
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %RCX.i621 = bitcast %union.anon* %3168 to i64*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 15
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %3171 to i64*
  %3172 = load i32, i32* %EAX.i620
  %3173 = zext i32 %3172 to i64
  %3174 = load i64, i64* %RBP.i622
  %3175 = load i64, i64* %RCX.i621
  %3176 = mul i64 %3175, 4
  %3177 = add i64 %3174, -592
  %3178 = add i64 %3177, %3176
  %3179 = load i64, i64* %PC.i619
  %3180 = add i64 %3179, 7
  store i64 %3180, i64* %PC.i619
  %3181 = inttoptr i64 %3178 to i32*
  %3182 = load i32, i32* %3181
  %3183 = sub i32 %3172, %3182
  %3184 = icmp ult i32 %3172, %3182
  %3185 = zext i1 %3184 to i8
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3185, i8* %3186, align 1
  %3187 = and i32 %3183, 255
  %3188 = call i32 @llvm.ctpop.i32(i32 %3187)
  %3189 = trunc i32 %3188 to i8
  %3190 = and i8 %3189, 1
  %3191 = xor i8 %3190, 1
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3191, i8* %3192, align 1
  %3193 = xor i32 %3182, %3172
  %3194 = xor i32 %3193, %3183
  %3195 = lshr i32 %3194, 4
  %3196 = trunc i32 %3195 to i8
  %3197 = and i8 %3196, 1
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3197, i8* %3198, align 1
  %3199 = icmp eq i32 %3183, 0
  %3200 = zext i1 %3199 to i8
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3200, i8* %3201, align 1
  %3202 = lshr i32 %3183, 31
  %3203 = trunc i32 %3202 to i8
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3203, i8* %3204, align 1
  %3205 = lshr i32 %3172, 31
  %3206 = lshr i32 %3182, 31
  %3207 = xor i32 %3206, %3205
  %3208 = xor i32 %3202, %3205
  %3209 = add i32 %3208, %3207
  %3210 = icmp eq i32 %3209, 2
  %3211 = zext i1 %3210 to i8
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3211, i8* %3212, align 1
  store %struct.Memory* %loadMem_4a354c, %struct.Memory** %MEMORY
  %loadMem_4a3553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 33
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %3215 to i64*
  %3216 = load i64, i64* %PC.i618
  %3217 = add i64 %3216, 186
  %3218 = load i64, i64* %PC.i618
  %3219 = add i64 %3218, 6
  %3220 = load i64, i64* %PC.i618
  %3221 = add i64 %3220, 6
  store i64 %3221, i64* %PC.i618
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3223 = load i8, i8* %3222, align 1
  %3224 = icmp ne i8 %3223, 0
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3226 = load i8, i8* %3225, align 1
  %3227 = icmp ne i8 %3226, 0
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3229 = load i8, i8* %3228, align 1
  %3230 = icmp ne i8 %3229, 0
  %3231 = xor i1 %3227, %3230
  %3232 = or i1 %3224, %3231
  %3233 = zext i1 %3232 to i8
  store i8 %3233, i8* %BRANCH_TAKEN, align 1
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3235 = select i1 %3232, i64 %3217, i64 %3219
  store i64 %3235, i64* %3234, align 8
  store %struct.Memory* %loadMem_4a3553, %struct.Memory** %MEMORY
  %loadBr_4a3553 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3553 = icmp eq i8 %loadBr_4a3553, 1
  br i1 %cmpBr_4a3553, label %block_.L_4a360d, label %block_.L_4a3559

block_.L_4a3559:                                  ; preds = %block_4a353b, %block_4a34ff
  %loadMem_4a3559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 33
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %3238 to i64*
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 1
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 15
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %3244 to i64*
  %3245 = load i64, i64* %RBP.i617
  %3246 = sub i64 %3245, 52
  %3247 = load i64, i64* %PC.i615
  %3248 = add i64 %3247, 3
  store i64 %3248, i64* %PC.i615
  %3249 = inttoptr i64 %3246 to i32*
  %3250 = load i32, i32* %3249
  %3251 = zext i32 %3250 to i64
  store i64 %3251, i64* %RAX.i616, align 8
  store %struct.Memory* %loadMem_4a3559, %struct.Memory** %MEMORY
  %loadMem_4a355c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 33
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 1
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %EAX.i613 = bitcast %union.anon* %3257 to i32*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 5
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %RCX.i614 = bitcast %union.anon* %3260 to i64*
  %3261 = load i32, i32* %EAX.i613
  %3262 = zext i32 %3261 to i64
  %3263 = load i64, i64* %PC.i612
  %3264 = add i64 %3263, 2
  store i64 %3264, i64* %PC.i612
  %3265 = and i64 %3262, 4294967295
  store i64 %3265, i64* %RCX.i614, align 8
  store %struct.Memory* %loadMem_4a355c, %struct.Memory** %MEMORY
  %loadMem_4a355e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 33
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3268 to i64*
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 1
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %3271 to i64*
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 5
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 15
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %3277 to i64*
  %3278 = load i64, i64* %RBP.i611
  %3279 = load i64, i64* %RCX.i610
  %3280 = mul i64 %3279, 4
  %3281 = add i64 %3278, -736
  %3282 = add i64 %3281, %3280
  %3283 = load i64, i64* %PC.i608
  %3284 = add i64 %3283, 7
  store i64 %3284, i64* %PC.i608
  %3285 = inttoptr i64 %3282 to i32*
  %3286 = load i32, i32* %3285
  %3287 = zext i32 %3286 to i64
  store i64 %3287, i64* %RAX.i609, align 8
  store %struct.Memory* %loadMem_4a355e, %struct.Memory** %MEMORY
  %loadMem_4a3565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 1
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %EAX.i606 = bitcast %union.anon* %3293 to i32*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 15
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %3296 to i64*
  %3297 = load i64, i64* %RBP.i607
  %3298 = sub i64 %3297, 740
  %3299 = load i32, i32* %EAX.i606
  %3300 = zext i32 %3299 to i64
  %3301 = load i64, i64* %PC.i605
  %3302 = add i64 %3301, 6
  store i64 %3302, i64* %PC.i605
  %3303 = inttoptr i64 %3298 to i32*
  store i32 %3299, i32* %3303
  store %struct.Memory* %loadMem_4a3565, %struct.Memory** %MEMORY
  %loadMem_4a356b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 33
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 1
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %3309 to i64*
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 15
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %3312 to i64*
  %3313 = load i64, i64* %RBP.i604
  %3314 = sub i64 %3313, 56
  %3315 = load i64, i64* %PC.i602
  %3316 = add i64 %3315, 3
  store i64 %3316, i64* %PC.i602
  %3317 = inttoptr i64 %3314 to i32*
  %3318 = load i32, i32* %3317
  %3319 = zext i32 %3318 to i64
  store i64 %3319, i64* %RAX.i603, align 8
  store %struct.Memory* %loadMem_4a356b, %struct.Memory** %MEMORY
  %loadMem_4a356e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 33
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %3322 to i64*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 1
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %EAX.i600 = bitcast %union.anon* %3325 to i32*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 5
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %RCX.i601 = bitcast %union.anon* %3328 to i64*
  %3329 = load i32, i32* %EAX.i600
  %3330 = zext i32 %3329 to i64
  %3331 = load i64, i64* %PC.i599
  %3332 = add i64 %3331, 2
  store i64 %3332, i64* %PC.i599
  %3333 = and i64 %3330, 4294967295
  store i64 %3333, i64* %RCX.i601, align 8
  store %struct.Memory* %loadMem_4a356e, %struct.Memory** %MEMORY
  %loadMem_4a3570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 33
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %3336 to i64*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 1
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %3339 to i64*
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 5
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %RCX.i597 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 15
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %3345 to i64*
  %3346 = load i64, i64* %RBP.i598
  %3347 = load i64, i64* %RCX.i597
  %3348 = mul i64 %3347, 4
  %3349 = add i64 %3346, -736
  %3350 = add i64 %3349, %3348
  %3351 = load i64, i64* %PC.i595
  %3352 = add i64 %3351, 7
  store i64 %3352, i64* %PC.i595
  %3353 = inttoptr i64 %3350 to i32*
  %3354 = load i32, i32* %3353
  %3355 = zext i32 %3354 to i64
  store i64 %3355, i64* %RAX.i596, align 8
  store %struct.Memory* %loadMem_4a3570, %struct.Memory** %MEMORY
  %loadMem_4a3577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 33
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 7
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RDX.i593 = bitcast %union.anon* %3361 to i64*
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 15
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %3364 to i64*
  %3365 = load i64, i64* %RBP.i594
  %3366 = sub i64 %3365, 52
  %3367 = load i64, i64* %PC.i592
  %3368 = add i64 %3367, 3
  store i64 %3368, i64* %PC.i592
  %3369 = inttoptr i64 %3366 to i32*
  %3370 = load i32, i32* %3369
  %3371 = zext i32 %3370 to i64
  store i64 %3371, i64* %RDX.i593, align 8
  store %struct.Memory* %loadMem_4a3577, %struct.Memory** %MEMORY
  %loadMem_4a357a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 33
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3374 to i64*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 7
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %EDX.i590 = bitcast %union.anon* %3377 to i32*
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 5
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %RCX.i591 = bitcast %union.anon* %3380 to i64*
  %3381 = load i32, i32* %EDX.i590
  %3382 = zext i32 %3381 to i64
  %3383 = load i64, i64* %PC.i589
  %3384 = add i64 %3383, 2
  store i64 %3384, i64* %PC.i589
  %3385 = and i64 %3382, 4294967295
  store i64 %3385, i64* %RCX.i591, align 8
  store %struct.Memory* %loadMem_4a357a, %struct.Memory** %MEMORY
  %loadMem_4a357c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 1
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %EAX.i586 = bitcast %union.anon* %3391 to i32*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 5
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RCX.i587 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 15
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %RBP.i588
  %3399 = load i64, i64* %RCX.i587
  %3400 = mul i64 %3399, 4
  %3401 = add i64 %3398, -736
  %3402 = add i64 %3401, %3400
  %3403 = load i32, i32* %EAX.i586
  %3404 = zext i32 %3403 to i64
  %3405 = load i64, i64* %PC.i585
  %3406 = add i64 %3405, 7
  store i64 %3406, i64* %PC.i585
  %3407 = inttoptr i64 %3402 to i32*
  store i32 %3403, i32* %3407
  store %struct.Memory* %loadMem_4a357c, %struct.Memory** %MEMORY
  %loadMem_4a3583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 1
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %3413 to i64*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 15
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %3416 to i64*
  %3417 = load i64, i64* %RBP.i584
  %3418 = sub i64 %3417, 740
  %3419 = load i64, i64* %PC.i582
  %3420 = add i64 %3419, 6
  store i64 %3420, i64* %PC.i582
  %3421 = inttoptr i64 %3418 to i32*
  %3422 = load i32, i32* %3421
  %3423 = zext i32 %3422 to i64
  store i64 %3423, i64* %RAX.i583, align 8
  store %struct.Memory* %loadMem_4a3583, %struct.Memory** %MEMORY
  %loadMem_4a3589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 33
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %3426 to i64*
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 7
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %RDX.i580 = bitcast %union.anon* %3429 to i64*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 15
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %3432 to i64*
  %3433 = load i64, i64* %RBP.i581
  %3434 = sub i64 %3433, 56
  %3435 = load i64, i64* %PC.i579
  %3436 = add i64 %3435, 3
  store i64 %3436, i64* %PC.i579
  %3437 = inttoptr i64 %3434 to i32*
  %3438 = load i32, i32* %3437
  %3439 = zext i32 %3438 to i64
  store i64 %3439, i64* %RDX.i580, align 8
  store %struct.Memory* %loadMem_4a3589, %struct.Memory** %MEMORY
  %loadMem_4a358c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 33
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 7
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %EDX.i577 = bitcast %union.anon* %3445 to i32*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 5
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %RCX.i578 = bitcast %union.anon* %3448 to i64*
  %3449 = load i32, i32* %EDX.i577
  %3450 = zext i32 %3449 to i64
  %3451 = load i64, i64* %PC.i576
  %3452 = add i64 %3451, 2
  store i64 %3452, i64* %PC.i576
  %3453 = and i64 %3450, 4294967295
  store i64 %3453, i64* %RCX.i578, align 8
  store %struct.Memory* %loadMem_4a358c, %struct.Memory** %MEMORY
  %loadMem_4a358e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 33
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3456 to i64*
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3458 = getelementptr inbounds %struct.GPR, %struct.GPR* %3457, i32 0, i32 1
  %3459 = getelementptr inbounds %struct.Reg, %struct.Reg* %3458, i32 0, i32 0
  %EAX.i573 = bitcast %union.anon* %3459 to i32*
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 5
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %RCX.i574 = bitcast %union.anon* %3462 to i64*
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 15
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %3465 to i64*
  %3466 = load i64, i64* %RBP.i575
  %3467 = load i64, i64* %RCX.i574
  %3468 = mul i64 %3467, 4
  %3469 = add i64 %3466, -736
  %3470 = add i64 %3469, %3468
  %3471 = load i32, i32* %EAX.i573
  %3472 = zext i32 %3471 to i64
  %3473 = load i64, i64* %PC.i572
  %3474 = add i64 %3473, 7
  store i64 %3474, i64* %PC.i572
  %3475 = inttoptr i64 %3470 to i32*
  store i32 %3471, i32* %3475
  store %struct.Memory* %loadMem_4a358e, %struct.Memory** %MEMORY
  %loadMem_4a3595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 33
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3478 to i64*
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 1
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %3481 to i64*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 15
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %3484 to i64*
  %3485 = load i64, i64* %RBP.i571
  %3486 = sub i64 %3485, 52
  %3487 = load i64, i64* %PC.i569
  %3488 = add i64 %3487, 3
  store i64 %3488, i64* %PC.i569
  %3489 = inttoptr i64 %3486 to i32*
  %3490 = load i32, i32* %3489
  %3491 = zext i32 %3490 to i64
  store i64 %3491, i64* %RAX.i570, align 8
  store %struct.Memory* %loadMem_4a3595, %struct.Memory** %MEMORY
  %loadMem_4a3598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 1
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %EAX.i567 = bitcast %union.anon* %3497 to i32*
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 5
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %3500 to i64*
  %3501 = load i32, i32* %EAX.i567
  %3502 = zext i32 %3501 to i64
  %3503 = load i64, i64* %PC.i566
  %3504 = add i64 %3503, 2
  store i64 %3504, i64* %PC.i566
  %3505 = and i64 %3502, 4294967295
  store i64 %3505, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_4a3598, %struct.Memory** %MEMORY
  %loadMem_4a359a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 1
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 5
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RCX.i564 = bitcast %union.anon* %3514 to i64*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 15
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %3517 to i64*
  %3518 = load i64, i64* %RBP.i565
  %3519 = load i64, i64* %RCX.i564
  %3520 = mul i64 %3519, 4
  %3521 = add i64 %3518, -336
  %3522 = add i64 %3521, %3520
  %3523 = load i64, i64* %PC.i562
  %3524 = add i64 %3523, 7
  store i64 %3524, i64* %PC.i562
  %3525 = inttoptr i64 %3522 to i32*
  %3526 = load i32, i32* %3525
  %3527 = zext i32 %3526 to i64
  store i64 %3527, i64* %RAX.i563, align 8
  store %struct.Memory* %loadMem_4a359a, %struct.Memory** %MEMORY
  %loadMem_4a35a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 1
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %EAX.i560 = bitcast %union.anon* %3533 to i32*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 15
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %RBP.i561
  %3538 = sub i64 %3537, 740
  %3539 = load i32, i32* %EAX.i560
  %3540 = zext i32 %3539 to i64
  %3541 = load i64, i64* %PC.i559
  %3542 = add i64 %3541, 6
  store i64 %3542, i64* %PC.i559
  %3543 = inttoptr i64 %3538 to i32*
  store i32 %3539, i32* %3543
  store %struct.Memory* %loadMem_4a35a1, %struct.Memory** %MEMORY
  %loadMem_4a35a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 1
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %3549 to i64*
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 15
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %3552 to i64*
  %3553 = load i64, i64* %RBP.i558
  %3554 = sub i64 %3553, 56
  %3555 = load i64, i64* %PC.i556
  %3556 = add i64 %3555, 3
  store i64 %3556, i64* %PC.i556
  %3557 = inttoptr i64 %3554 to i32*
  %3558 = load i32, i32* %3557
  %3559 = zext i32 %3558 to i64
  store i64 %3559, i64* %RAX.i557, align 8
  store %struct.Memory* %loadMem_4a35a7, %struct.Memory** %MEMORY
  %loadMem_4a35aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 33
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3562 to i64*
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3564 = getelementptr inbounds %struct.GPR, %struct.GPR* %3563, i32 0, i32 1
  %3565 = getelementptr inbounds %struct.Reg, %struct.Reg* %3564, i32 0, i32 0
  %EAX.i554 = bitcast %union.anon* %3565 to i32*
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 5
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %RCX.i555 = bitcast %union.anon* %3568 to i64*
  %3569 = load i32, i32* %EAX.i554
  %3570 = zext i32 %3569 to i64
  %3571 = load i64, i64* %PC.i553
  %3572 = add i64 %3571, 2
  store i64 %3572, i64* %PC.i553
  %3573 = and i64 %3570, 4294967295
  store i64 %3573, i64* %RCX.i555, align 8
  store %struct.Memory* %loadMem_4a35aa, %struct.Memory** %MEMORY
  %loadMem_4a35ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 33
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 1
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 5
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %3582 to i64*
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 15
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %3585 to i64*
  %3586 = load i64, i64* %RBP.i552
  %3587 = load i64, i64* %RCX.i551
  %3588 = mul i64 %3587, 4
  %3589 = add i64 %3586, -336
  %3590 = add i64 %3589, %3588
  %3591 = load i64, i64* %PC.i549
  %3592 = add i64 %3591, 7
  store i64 %3592, i64* %PC.i549
  %3593 = inttoptr i64 %3590 to i32*
  %3594 = load i32, i32* %3593
  %3595 = zext i32 %3594 to i64
  store i64 %3595, i64* %RAX.i550, align 8
  store %struct.Memory* %loadMem_4a35ac, %struct.Memory** %MEMORY
  %loadMem_4a35b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 33
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3598 to i64*
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 7
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %RDX.i547 = bitcast %union.anon* %3601 to i64*
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 15
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %3604 to i64*
  %3605 = load i64, i64* %RBP.i548
  %3606 = sub i64 %3605, 52
  %3607 = load i64, i64* %PC.i546
  %3608 = add i64 %3607, 3
  store i64 %3608, i64* %PC.i546
  %3609 = inttoptr i64 %3606 to i32*
  %3610 = load i32, i32* %3609
  %3611 = zext i32 %3610 to i64
  store i64 %3611, i64* %RDX.i547, align 8
  store %struct.Memory* %loadMem_4a35b3, %struct.Memory** %MEMORY
  %loadMem_4a35b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 33
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3614 to i64*
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 7
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %EDX.i544 = bitcast %union.anon* %3617 to i32*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 5
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %RCX.i545 = bitcast %union.anon* %3620 to i64*
  %3621 = load i32, i32* %EDX.i544
  %3622 = zext i32 %3621 to i64
  %3623 = load i64, i64* %PC.i543
  %3624 = add i64 %3623, 2
  store i64 %3624, i64* %PC.i543
  %3625 = and i64 %3622, 4294967295
  store i64 %3625, i64* %RCX.i545, align 8
  store %struct.Memory* %loadMem_4a35b6, %struct.Memory** %MEMORY
  %loadMem_4a35b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 33
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3628 to i64*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 1
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %EAX.i540 = bitcast %union.anon* %3631 to i32*
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 5
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %RCX.i541 = bitcast %union.anon* %3634 to i64*
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 15
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %3637 to i64*
  %3638 = load i64, i64* %RBP.i542
  %3639 = load i64, i64* %RCX.i541
  %3640 = mul i64 %3639, 4
  %3641 = add i64 %3638, -336
  %3642 = add i64 %3641, %3640
  %3643 = load i32, i32* %EAX.i540
  %3644 = zext i32 %3643 to i64
  %3645 = load i64, i64* %PC.i539
  %3646 = add i64 %3645, 7
  store i64 %3646, i64* %PC.i539
  %3647 = inttoptr i64 %3642 to i32*
  store i32 %3643, i32* %3647
  store %struct.Memory* %loadMem_4a35b8, %struct.Memory** %MEMORY
  %loadMem_4a35bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3649 = getelementptr inbounds %struct.GPR, %struct.GPR* %3648, i32 0, i32 33
  %3650 = getelementptr inbounds %struct.Reg, %struct.Reg* %3649, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3650 to i64*
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 1
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 15
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %3656 to i64*
  %3657 = load i64, i64* %RBP.i538
  %3658 = sub i64 %3657, 740
  %3659 = load i64, i64* %PC.i536
  %3660 = add i64 %3659, 6
  store i64 %3660, i64* %PC.i536
  %3661 = inttoptr i64 %3658 to i32*
  %3662 = load i32, i32* %3661
  %3663 = zext i32 %3662 to i64
  store i64 %3663, i64* %RAX.i537, align 8
  store %struct.Memory* %loadMem_4a35bf, %struct.Memory** %MEMORY
  %loadMem_4a35c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 33
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3666 to i64*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 7
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %RDX.i534 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 15
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %3672 to i64*
  %3673 = load i64, i64* %RBP.i535
  %3674 = sub i64 %3673, 56
  %3675 = load i64, i64* %PC.i533
  %3676 = add i64 %3675, 3
  store i64 %3676, i64* %PC.i533
  %3677 = inttoptr i64 %3674 to i32*
  %3678 = load i32, i32* %3677
  %3679 = zext i32 %3678 to i64
  store i64 %3679, i64* %RDX.i534, align 8
  store %struct.Memory* %loadMem_4a35c5, %struct.Memory** %MEMORY
  %loadMem_4a35c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 33
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %3682 to i64*
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 7
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %EDX.i531 = bitcast %union.anon* %3685 to i32*
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 5
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %3688 to i64*
  %3689 = load i32, i32* %EDX.i531
  %3690 = zext i32 %3689 to i64
  %3691 = load i64, i64* %PC.i530
  %3692 = add i64 %3691, 2
  store i64 %3692, i64* %PC.i530
  %3693 = and i64 %3690, 4294967295
  store i64 %3693, i64* %RCX.i532, align 8
  store %struct.Memory* %loadMem_4a35c8, %struct.Memory** %MEMORY
  %loadMem_4a35ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 1
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %EAX.i527 = bitcast %union.anon* %3699 to i32*
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 5
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 15
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %3705 to i64*
  %3706 = load i64, i64* %RBP.i529
  %3707 = load i64, i64* %RCX.i528
  %3708 = mul i64 %3707, 4
  %3709 = add i64 %3706, -336
  %3710 = add i64 %3709, %3708
  %3711 = load i32, i32* %EAX.i527
  %3712 = zext i32 %3711 to i64
  %3713 = load i64, i64* %PC.i526
  %3714 = add i64 %3713, 7
  store i64 %3714, i64* %PC.i526
  %3715 = inttoptr i64 %3710 to i32*
  store i32 %3711, i32* %3715
  store %struct.Memory* %loadMem_4a35ca, %struct.Memory** %MEMORY
  %loadMem_4a35d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 33
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 1
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %3721 to i64*
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 15
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %3724 to i64*
  %3725 = load i64, i64* %RBP.i525
  %3726 = sub i64 %3725, 52
  %3727 = load i64, i64* %PC.i523
  %3728 = add i64 %3727, 3
  store i64 %3728, i64* %PC.i523
  %3729 = inttoptr i64 %3726 to i32*
  %3730 = load i32, i32* %3729
  %3731 = zext i32 %3730 to i64
  store i64 %3731, i64* %RAX.i524, align 8
  store %struct.Memory* %loadMem_4a35d1, %struct.Memory** %MEMORY
  %loadMem_4a35d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 33
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 1
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %EAX.i521 = bitcast %union.anon* %3737 to i32*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 5
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %3740 to i64*
  %3741 = load i32, i32* %EAX.i521
  %3742 = zext i32 %3741 to i64
  %3743 = load i64, i64* %PC.i520
  %3744 = add i64 %3743, 2
  store i64 %3744, i64* %PC.i520
  %3745 = and i64 %3742, 4294967295
  store i64 %3745, i64* %RCX.i522, align 8
  store %struct.Memory* %loadMem_4a35d4, %struct.Memory** %MEMORY
  %loadMem_4a35d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 33
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 1
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 5
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RCX.i518 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 15
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %3757 to i64*
  %3758 = load i64, i64* %RBP.i519
  %3759 = load i64, i64* %RCX.i518
  %3760 = mul i64 %3759, 4
  %3761 = add i64 %3758, -592
  %3762 = add i64 %3761, %3760
  %3763 = load i64, i64* %PC.i516
  %3764 = add i64 %3763, 7
  store i64 %3764, i64* %PC.i516
  %3765 = inttoptr i64 %3762 to i32*
  %3766 = load i32, i32* %3765
  %3767 = zext i32 %3766 to i64
  store i64 %3767, i64* %RAX.i517, align 8
  store %struct.Memory* %loadMem_4a35d6, %struct.Memory** %MEMORY
  %loadMem_4a35dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 1
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %EAX.i514 = bitcast %union.anon* %3773 to i32*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 15
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %3776 to i64*
  %3777 = load i64, i64* %RBP.i515
  %3778 = sub i64 %3777, 740
  %3779 = load i32, i32* %EAX.i514
  %3780 = zext i32 %3779 to i64
  %3781 = load i64, i64* %PC.i513
  %3782 = add i64 %3781, 6
  store i64 %3782, i64* %PC.i513
  %3783 = inttoptr i64 %3778 to i32*
  store i32 %3779, i32* %3783
  store %struct.Memory* %loadMem_4a35dd, %struct.Memory** %MEMORY
  %loadMem_4a35e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 33
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 1
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 15
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %3792 to i64*
  %3793 = load i64, i64* %RBP.i512
  %3794 = sub i64 %3793, 56
  %3795 = load i64, i64* %PC.i510
  %3796 = add i64 %3795, 3
  store i64 %3796, i64* %PC.i510
  %3797 = inttoptr i64 %3794 to i32*
  %3798 = load i32, i32* %3797
  %3799 = zext i32 %3798 to i64
  store i64 %3799, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_4a35e3, %struct.Memory** %MEMORY
  %loadMem_4a35e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 33
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 1
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %EAX.i508 = bitcast %union.anon* %3805 to i32*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 5
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %3808 to i64*
  %3809 = load i32, i32* %EAX.i508
  %3810 = zext i32 %3809 to i64
  %3811 = load i64, i64* %PC.i507
  %3812 = add i64 %3811, 2
  store i64 %3812, i64* %PC.i507
  %3813 = and i64 %3810, 4294967295
  store i64 %3813, i64* %RCX.i509, align 8
  store %struct.Memory* %loadMem_4a35e6, %struct.Memory** %MEMORY
  %loadMem_4a35e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %3816 to i64*
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 1
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 5
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 15
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %3825 to i64*
  %3826 = load i64, i64* %RBP.i506
  %3827 = load i64, i64* %RCX.i505
  %3828 = mul i64 %3827, 4
  %3829 = add i64 %3826, -592
  %3830 = add i64 %3829, %3828
  %3831 = load i64, i64* %PC.i503
  %3832 = add i64 %3831, 7
  store i64 %3832, i64* %PC.i503
  %3833 = inttoptr i64 %3830 to i32*
  %3834 = load i32, i32* %3833
  %3835 = zext i32 %3834 to i64
  store i64 %3835, i64* %RAX.i504, align 8
  store %struct.Memory* %loadMem_4a35e8, %struct.Memory** %MEMORY
  %loadMem_4a35ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 33
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 7
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %RDX.i501 = bitcast %union.anon* %3841 to i64*
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 15
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %3844 to i64*
  %3845 = load i64, i64* %RBP.i502
  %3846 = sub i64 %3845, 52
  %3847 = load i64, i64* %PC.i500
  %3848 = add i64 %3847, 3
  store i64 %3848, i64* %PC.i500
  %3849 = inttoptr i64 %3846 to i32*
  %3850 = load i32, i32* %3849
  %3851 = zext i32 %3850 to i64
  store i64 %3851, i64* %RDX.i501, align 8
  store %struct.Memory* %loadMem_4a35ef, %struct.Memory** %MEMORY
  %loadMem_4a35f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 33
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3854 to i64*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 7
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %EDX.i498 = bitcast %union.anon* %3857 to i32*
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 5
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %RCX.i499 = bitcast %union.anon* %3860 to i64*
  %3861 = load i32, i32* %EDX.i498
  %3862 = zext i32 %3861 to i64
  %3863 = load i64, i64* %PC.i497
  %3864 = add i64 %3863, 2
  store i64 %3864, i64* %PC.i497
  %3865 = and i64 %3862, 4294967295
  store i64 %3865, i64* %RCX.i499, align 8
  store %struct.Memory* %loadMem_4a35f2, %struct.Memory** %MEMORY
  %loadMem_4a35f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 33
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3868 to i64*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 1
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %EAX.i494 = bitcast %union.anon* %3871 to i32*
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 5
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %3874 to i64*
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 15
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %3877 to i64*
  %3878 = load i64, i64* %RBP.i496
  %3879 = load i64, i64* %RCX.i495
  %3880 = mul i64 %3879, 4
  %3881 = add i64 %3878, -592
  %3882 = add i64 %3881, %3880
  %3883 = load i32, i32* %EAX.i494
  %3884 = zext i32 %3883 to i64
  %3885 = load i64, i64* %PC.i493
  %3886 = add i64 %3885, 7
  store i64 %3886, i64* %PC.i493
  %3887 = inttoptr i64 %3882 to i32*
  store i32 %3883, i32* %3887
  store %struct.Memory* %loadMem_4a35f4, %struct.Memory** %MEMORY
  %loadMem_4a35fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3889 = getelementptr inbounds %struct.GPR, %struct.GPR* %3888, i32 0, i32 33
  %3890 = getelementptr inbounds %struct.Reg, %struct.Reg* %3889, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %3890 to i64*
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 1
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %3893 to i64*
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 15
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %3896 to i64*
  %3897 = load i64, i64* %RBP.i492
  %3898 = sub i64 %3897, 740
  %3899 = load i64, i64* %PC.i490
  %3900 = add i64 %3899, 6
  store i64 %3900, i64* %PC.i490
  %3901 = inttoptr i64 %3898 to i32*
  %3902 = load i32, i32* %3901
  %3903 = zext i32 %3902 to i64
  store i64 %3903, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_4a35fb, %struct.Memory** %MEMORY
  %loadMem_4a3601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 7
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RDX.i488 = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 15
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %3912 to i64*
  %3913 = load i64, i64* %RBP.i489
  %3914 = sub i64 %3913, 56
  %3915 = load i64, i64* %PC.i487
  %3916 = add i64 %3915, 3
  store i64 %3916, i64* %PC.i487
  %3917 = inttoptr i64 %3914 to i32*
  %3918 = load i32, i32* %3917
  %3919 = zext i32 %3918 to i64
  store i64 %3919, i64* %RDX.i488, align 8
  store %struct.Memory* %loadMem_4a3601, %struct.Memory** %MEMORY
  %loadMem_4a3604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 33
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 7
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %EDX.i485 = bitcast %union.anon* %3925 to i32*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 5
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %3928 to i64*
  %3929 = load i32, i32* %EDX.i485
  %3930 = zext i32 %3929 to i64
  %3931 = load i64, i64* %PC.i484
  %3932 = add i64 %3931, 2
  store i64 %3932, i64* %PC.i484
  %3933 = and i64 %3930, 4294967295
  store i64 %3933, i64* %RCX.i486, align 8
  store %struct.Memory* %loadMem_4a3604, %struct.Memory** %MEMORY
  %loadMem_4a3606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 33
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3936 to i64*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 1
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %EAX.i481 = bitcast %union.anon* %3939 to i32*
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 5
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %3942 to i64*
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 15
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %3945 to i64*
  %3946 = load i64, i64* %RBP.i483
  %3947 = load i64, i64* %RCX.i482
  %3948 = mul i64 %3947, 4
  %3949 = add i64 %3946, -592
  %3950 = add i64 %3949, %3948
  %3951 = load i32, i32* %EAX.i481
  %3952 = zext i32 %3951 to i64
  %3953 = load i64, i64* %PC.i480
  %3954 = add i64 %3953, 7
  store i64 %3954, i64* %PC.i480
  %3955 = inttoptr i64 %3950 to i32*
  store i32 %3951, i32* %3955
  store %struct.Memory* %loadMem_4a3606, %struct.Memory** %MEMORY
  br label %block_.L_4a360d

block_.L_4a360d:                                  ; preds = %block_.L_4a3559, %block_4a353b, %block_4a351d
  %loadMem_4a360d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 33
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %3958 to i64*
  %3959 = load i64, i64* %PC.i479
  %3960 = add i64 %3959, 5
  %3961 = load i64, i64* %PC.i479
  %3962 = add i64 %3961, 5
  store i64 %3962, i64* %PC.i479
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3960, i64* %3963, align 8
  store %struct.Memory* %loadMem_4a360d, %struct.Memory** %MEMORY
  br label %block_.L_4a3612

block_.L_4a3612:                                  ; preds = %block_.L_4a360d
  %loadMem_4a3612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 33
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %3966 to i64*
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 1
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 15
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %3972 to i64*
  %3973 = load i64, i64* %RBP.i478
  %3974 = sub i64 %3973, 56
  %3975 = load i64, i64* %PC.i476
  %3976 = add i64 %3975, 3
  store i64 %3976, i64* %PC.i476
  %3977 = inttoptr i64 %3974 to i32*
  %3978 = load i32, i32* %3977
  %3979 = zext i32 %3978 to i64
  store i64 %3979, i64* %RAX.i477, align 8
  store %struct.Memory* %loadMem_4a3612, %struct.Memory** %MEMORY
  %loadMem_4a3615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 33
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %3982 to i64*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 1
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %3985 to i64*
  %3986 = load i64, i64* %RAX.i475
  %3987 = load i64, i64* %PC.i474
  %3988 = add i64 %3987, 3
  store i64 %3988, i64* %PC.i474
  %3989 = trunc i64 %3986 to i32
  %3990 = add i32 1, %3989
  %3991 = zext i32 %3990 to i64
  store i64 %3991, i64* %RAX.i475, align 8
  %3992 = icmp ult i32 %3990, %3989
  %3993 = icmp ult i32 %3990, 1
  %3994 = or i1 %3992, %3993
  %3995 = zext i1 %3994 to i8
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3995, i8* %3996, align 1
  %3997 = and i32 %3990, 255
  %3998 = call i32 @llvm.ctpop.i32(i32 %3997)
  %3999 = trunc i32 %3998 to i8
  %4000 = and i8 %3999, 1
  %4001 = xor i8 %4000, 1
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4001, i8* %4002, align 1
  %4003 = xor i64 1, %3986
  %4004 = trunc i64 %4003 to i32
  %4005 = xor i32 %4004, %3990
  %4006 = lshr i32 %4005, 4
  %4007 = trunc i32 %4006 to i8
  %4008 = and i8 %4007, 1
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4008, i8* %4009, align 1
  %4010 = icmp eq i32 %3990, 0
  %4011 = zext i1 %4010 to i8
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4011, i8* %4012, align 1
  %4013 = lshr i32 %3990, 31
  %4014 = trunc i32 %4013 to i8
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4014, i8* %4015, align 1
  %4016 = lshr i32 %3989, 31
  %4017 = xor i32 %4013, %4016
  %4018 = add i32 %4017, %4013
  %4019 = icmp eq i32 %4018, 2
  %4020 = zext i1 %4019 to i8
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4020, i8* %4021, align 1
  store %struct.Memory* %loadMem_4a3615, %struct.Memory** %MEMORY
  %loadMem_4a3618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 33
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4024 to i64*
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 1
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %EAX.i472 = bitcast %union.anon* %4027 to i32*
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 15
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %4030 to i64*
  %4031 = load i64, i64* %RBP.i473
  %4032 = sub i64 %4031, 56
  %4033 = load i32, i32* %EAX.i472
  %4034 = zext i32 %4033 to i64
  %4035 = load i64, i64* %PC.i471
  %4036 = add i64 %4035, 3
  store i64 %4036, i64* %PC.i471
  %4037 = inttoptr i64 %4032 to i32*
  store i32 %4033, i32* %4037
  store %struct.Memory* %loadMem_4a3618, %struct.Memory** %MEMORY
  %loadMem_4a361b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 33
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %4040 to i64*
  %4041 = load i64, i64* %PC.i470
  %4042 = add i64 %4041, -300
  %4043 = load i64, i64* %PC.i470
  %4044 = add i64 %4043, 5
  store i64 %4044, i64* %PC.i470
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4042, i64* %4045, align 8
  store %struct.Memory* %loadMem_4a361b, %struct.Memory** %MEMORY
  br label %block_.L_4a34ef

block_.L_4a3620:                                  ; preds = %block_.L_4a34ef
  %loadMem_4a3620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4047 = getelementptr inbounds %struct.GPR, %struct.GPR* %4046, i32 0, i32 33
  %4048 = getelementptr inbounds %struct.Reg, %struct.Reg* %4047, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %4048 to i64*
  %4049 = load i64, i64* %PC.i469
  %4050 = add i64 %4049, 5
  %4051 = load i64, i64* %PC.i469
  %4052 = add i64 %4051, 5
  store i64 %4052, i64* %PC.i469
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4050, i64* %4053, align 8
  store %struct.Memory* %loadMem_4a3620, %struct.Memory** %MEMORY
  br label %block_.L_4a3625

block_.L_4a3625:                                  ; preds = %block_.L_4a3620
  %loadMem_4a3625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 33
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 1
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %4059 to i64*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 15
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %4062 to i64*
  %4063 = load i64, i64* %RBP.i468
  %4064 = sub i64 %4063, 52
  %4065 = load i64, i64* %PC.i466
  %4066 = add i64 %4065, 3
  store i64 %4066, i64* %PC.i466
  %4067 = inttoptr i64 %4064 to i32*
  %4068 = load i32, i32* %4067
  %4069 = zext i32 %4068 to i64
  store i64 %4069, i64* %RAX.i467, align 8
  store %struct.Memory* %loadMem_4a3625, %struct.Memory** %MEMORY
  %loadMem_4a3628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 33
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 1
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %4075 to i64*
  %4076 = load i64, i64* %RAX.i465
  %4077 = load i64, i64* %PC.i464
  %4078 = add i64 %4077, 3
  store i64 %4078, i64* %PC.i464
  %4079 = trunc i64 %4076 to i32
  %4080 = add i32 1, %4079
  %4081 = zext i32 %4080 to i64
  store i64 %4081, i64* %RAX.i465, align 8
  %4082 = icmp ult i32 %4080, %4079
  %4083 = icmp ult i32 %4080, 1
  %4084 = or i1 %4082, %4083
  %4085 = zext i1 %4084 to i8
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4085, i8* %4086, align 1
  %4087 = and i32 %4080, 255
  %4088 = call i32 @llvm.ctpop.i32(i32 %4087)
  %4089 = trunc i32 %4088 to i8
  %4090 = and i8 %4089, 1
  %4091 = xor i8 %4090, 1
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4091, i8* %4092, align 1
  %4093 = xor i64 1, %4076
  %4094 = trunc i64 %4093 to i32
  %4095 = xor i32 %4094, %4080
  %4096 = lshr i32 %4095, 4
  %4097 = trunc i32 %4096 to i8
  %4098 = and i8 %4097, 1
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4098, i8* %4099, align 1
  %4100 = icmp eq i32 %4080, 0
  %4101 = zext i1 %4100 to i8
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4101, i8* %4102, align 1
  %4103 = lshr i32 %4080, 31
  %4104 = trunc i32 %4103 to i8
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4104, i8* %4105, align 1
  %4106 = lshr i32 %4079, 31
  %4107 = xor i32 %4103, %4106
  %4108 = add i32 %4107, %4103
  %4109 = icmp eq i32 %4108, 2
  %4110 = zext i1 %4109 to i8
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4110, i8* %4111, align 1
  store %struct.Memory* %loadMem_4a3628, %struct.Memory** %MEMORY
  %loadMem_4a362b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 1
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %EAX.i462 = bitcast %union.anon* %4117 to i32*
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 15
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %4120 to i64*
  %4121 = load i64, i64* %RBP.i463
  %4122 = sub i64 %4121, 52
  %4123 = load i32, i32* %EAX.i462
  %4124 = zext i32 %4123 to i64
  %4125 = load i64, i64* %PC.i461
  %4126 = add i64 %4125, 3
  store i64 %4126, i64* %PC.i461
  %4127 = inttoptr i64 %4122 to i32*
  store i32 %4123, i32* %4127
  store %struct.Memory* %loadMem_4a362b, %struct.Memory** %MEMORY
  %loadMem_4a362e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 33
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %4130 to i64*
  %4131 = load i64, i64* %PC.i460
  %4132 = add i64 %4131, -349
  %4133 = load i64, i64* %PC.i460
  %4134 = add i64 %4133, 5
  store i64 %4134, i64* %PC.i460
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4132, i64* %4135, align 8
  store %struct.Memory* %loadMem_4a362e, %struct.Memory** %MEMORY
  br label %block_.L_4a34d1

block_.L_4a3633:                                  ; preds = %block_.L_4a34d1
  %loadMem_4a3633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 33
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 15
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %RBP.i459
  %4143 = sub i64 %4142, 600
  %4144 = load i64, i64* %PC.i458
  %4145 = add i64 %4144, 10
  store i64 %4145, i64* %PC.i458
  %4146 = inttoptr i64 %4143 to i32*
  store i32 1, i32* %4146
  store %struct.Memory* %loadMem_4a3633, %struct.Memory** %MEMORY
  %loadMem_4a363d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 15
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %RBP.i457
  %4154 = sub i64 %4153, 52
  %4155 = load i64, i64* %PC.i456
  %4156 = add i64 %4155, 7
  store i64 %4156, i64* %PC.i456
  %4157 = inttoptr i64 %4154 to i32*
  store i32 0, i32* %4157
  store %struct.Memory* %loadMem_4a363d, %struct.Memory** %MEMORY
  br label %block_.L_4a3644

block_.L_4a3644:                                  ; preds = %block_.L_4a367d, %block_.L_4a3633
  %loadMem_4a3644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 33
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %4160 to i64*
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4162 = getelementptr inbounds %struct.GPR, %struct.GPR* %4161, i32 0, i32 1
  %4163 = getelementptr inbounds %struct.Reg, %struct.Reg* %4162, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %4163 to i64*
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 15
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %4166 to i64*
  %4167 = load i64, i64* %RBP.i455
  %4168 = sub i64 %4167, 52
  %4169 = load i64, i64* %PC.i453
  %4170 = add i64 %4169, 3
  store i64 %4170, i64* %PC.i453
  %4171 = inttoptr i64 %4168 to i32*
  %4172 = load i32, i32* %4171
  %4173 = zext i32 %4172 to i64
  store i64 %4173, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_4a3644, %struct.Memory** %MEMORY
  %loadMem_4a3647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 33
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %4176 to i64*
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 1
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %EAX.i451 = bitcast %union.anon* %4179 to i32*
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 15
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %4182 to i64*
  %4183 = load i32, i32* %EAX.i451
  %4184 = zext i32 %4183 to i64
  %4185 = load i64, i64* %RBP.i452
  %4186 = sub i64 %4185, 12
  %4187 = load i64, i64* %PC.i450
  %4188 = add i64 %4187, 3
  store i64 %4188, i64* %PC.i450
  %4189 = inttoptr i64 %4186 to i32*
  %4190 = load i32, i32* %4189
  %4191 = sub i32 %4183, %4190
  %4192 = icmp ult i32 %4183, %4190
  %4193 = zext i1 %4192 to i8
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4193, i8* %4194, align 1
  %4195 = and i32 %4191, 255
  %4196 = call i32 @llvm.ctpop.i32(i32 %4195)
  %4197 = trunc i32 %4196 to i8
  %4198 = and i8 %4197, 1
  %4199 = xor i8 %4198, 1
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4199, i8* %4200, align 1
  %4201 = xor i32 %4190, %4183
  %4202 = xor i32 %4201, %4191
  %4203 = lshr i32 %4202, 4
  %4204 = trunc i32 %4203 to i8
  %4205 = and i8 %4204, 1
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4205, i8* %4206, align 1
  %4207 = icmp eq i32 %4191, 0
  %4208 = zext i1 %4207 to i8
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4208, i8* %4209, align 1
  %4210 = lshr i32 %4191, 31
  %4211 = trunc i32 %4210 to i8
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4211, i8* %4212, align 1
  %4213 = lshr i32 %4183, 31
  %4214 = lshr i32 %4190, 31
  %4215 = xor i32 %4214, %4213
  %4216 = xor i32 %4210, %4213
  %4217 = add i32 %4216, %4215
  %4218 = icmp eq i32 %4217, 2
  %4219 = zext i1 %4218 to i8
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4219, i8* %4220, align 1
  store %struct.Memory* %loadMem_4a3647, %struct.Memory** %MEMORY
  %loadMem_4a364a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 33
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4223 to i64*
  %4224 = load i64, i64* %PC.i449
  %4225 = add i64 %4224, 65
  %4226 = load i64, i64* %PC.i449
  %4227 = add i64 %4226, 6
  %4228 = load i64, i64* %PC.i449
  %4229 = add i64 %4228, 6
  store i64 %4229, i64* %PC.i449
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4231 = load i8, i8* %4230, align 1
  %4232 = icmp eq i8 %4231, 0
  %4233 = zext i1 %4232 to i8
  store i8 %4233, i8* %BRANCH_TAKEN, align 1
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4235 = select i1 %4232, i64 %4225, i64 %4227
  store i64 %4235, i64* %4234, align 8
  store %struct.Memory* %loadMem_4a364a, %struct.Memory** %MEMORY
  %loadBr_4a364a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a364a = icmp eq i8 %loadBr_4a364a, 1
  br i1 %cmpBr_4a364a, label %block_.L_4a368b, label %block_4a3650

block_4a3650:                                     ; preds = %block_.L_4a3644
  %loadMem_4a3650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 33
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4238 to i64*
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 1
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %4241 to i64*
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 15
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %4244 to i64*
  %4245 = load i64, i64* %RBP.i448
  %4246 = sub i64 %4245, 52
  %4247 = load i64, i64* %PC.i446
  %4248 = add i64 %4247, 3
  store i64 %4248, i64* %PC.i446
  %4249 = inttoptr i64 %4246 to i32*
  %4250 = load i32, i32* %4249
  %4251 = zext i32 %4250 to i64
  store i64 %4251, i64* %RAX.i447, align 8
  store %struct.Memory* %loadMem_4a3650, %struct.Memory** %MEMORY
  %loadMem_4a3653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 33
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4254 to i64*
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 1
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %EAX.i444 = bitcast %union.anon* %4257 to i32*
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 5
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %RCX.i445 = bitcast %union.anon* %4260 to i64*
  %4261 = load i32, i32* %EAX.i444
  %4262 = zext i32 %4261 to i64
  %4263 = load i64, i64* %PC.i443
  %4264 = add i64 %4263, 2
  store i64 %4264, i64* %PC.i443
  %4265 = and i64 %4262, 4294967295
  store i64 %4265, i64* %RCX.i445, align 8
  store %struct.Memory* %loadMem_4a3653, %struct.Memory** %MEMORY
  %loadMem_4a3655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 33
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4268 to i64*
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 1
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %4271 to i64*
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 5
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %4274 to i64*
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 15
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %4277 to i64*
  %4278 = load i64, i64* %RBP.i442
  %4279 = load i64, i64* %RCX.i441
  %4280 = mul i64 %4279, 4
  %4281 = add i64 %4278, -208
  %4282 = add i64 %4281, %4280
  %4283 = load i64, i64* %PC.i439
  %4284 = add i64 %4283, 7
  store i64 %4284, i64* %PC.i439
  %4285 = inttoptr i64 %4282 to i32*
  %4286 = load i32, i32* %4285
  %4287 = zext i32 %4286 to i64
  store i64 %4287, i64* %RAX.i440, align 8
  store %struct.Memory* %loadMem_4a3655, %struct.Memory** %MEMORY
  %loadMem_4a365c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 33
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4290 to i64*
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 7
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %RDX.i437 = bitcast %union.anon* %4293 to i64*
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 15
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %4296 to i64*
  %4297 = load i64, i64* %RBP.i438
  %4298 = sub i64 %4297, 52
  %4299 = load i64, i64* %PC.i436
  %4300 = add i64 %4299, 3
  store i64 %4300, i64* %PC.i436
  %4301 = inttoptr i64 %4298 to i32*
  %4302 = load i32, i32* %4301
  %4303 = zext i32 %4302 to i64
  store i64 %4303, i64* %RDX.i437, align 8
  store %struct.Memory* %loadMem_4a365c, %struct.Memory** %MEMORY
  %loadMem_4a365f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 33
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %4306 to i64*
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 7
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %EDX.i434 = bitcast %union.anon* %4309 to i32*
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 5
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %4312 to i64*
  %4313 = load i32, i32* %EDX.i434
  %4314 = zext i32 %4313 to i64
  %4315 = load i64, i64* %PC.i433
  %4316 = add i64 %4315, 2
  store i64 %4316, i64* %PC.i433
  %4317 = and i64 %4314, 4294967295
  store i64 %4317, i64* %RCX.i435, align 8
  store %struct.Memory* %loadMem_4a365f, %struct.Memory** %MEMORY
  %loadMem_4a3661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 33
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4320 to i64*
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 1
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %EAX.i430 = bitcast %union.anon* %4323 to i32*
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4325 = getelementptr inbounds %struct.GPR, %struct.GPR* %4324, i32 0, i32 5
  %4326 = getelementptr inbounds %struct.Reg, %struct.Reg* %4325, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %4326 to i64*
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 15
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %4329 to i64*
  %4330 = load i32, i32* %EAX.i430
  %4331 = zext i32 %4330 to i64
  %4332 = load i64, i64* %RBP.i432
  %4333 = load i64, i64* %RCX.i431
  %4334 = mul i64 %4333, 4
  %4335 = add i64 %4332, -336
  %4336 = add i64 %4335, %4334
  %4337 = load i64, i64* %PC.i429
  %4338 = add i64 %4337, 7
  store i64 %4338, i64* %PC.i429
  %4339 = inttoptr i64 %4336 to i32*
  %4340 = load i32, i32* %4339
  %4341 = sub i32 %4330, %4340
  %4342 = icmp ult i32 %4330, %4340
  %4343 = zext i1 %4342 to i8
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4343, i8* %4344, align 1
  %4345 = and i32 %4341, 255
  %4346 = call i32 @llvm.ctpop.i32(i32 %4345)
  %4347 = trunc i32 %4346 to i8
  %4348 = and i8 %4347, 1
  %4349 = xor i8 %4348, 1
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4349, i8* %4350, align 1
  %4351 = xor i32 %4340, %4330
  %4352 = xor i32 %4351, %4341
  %4353 = lshr i32 %4352, 4
  %4354 = trunc i32 %4353 to i8
  %4355 = and i8 %4354, 1
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4355, i8* %4356, align 1
  %4357 = icmp eq i32 %4341, 0
  %4358 = zext i1 %4357 to i8
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4358, i8* %4359, align 1
  %4360 = lshr i32 %4341, 31
  %4361 = trunc i32 %4360 to i8
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4361, i8* %4362, align 1
  %4363 = lshr i32 %4330, 31
  %4364 = lshr i32 %4340, 31
  %4365 = xor i32 %4364, %4363
  %4366 = xor i32 %4360, %4363
  %4367 = add i32 %4366, %4365
  %4368 = icmp eq i32 %4367, 2
  %4369 = zext i1 %4368 to i8
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4369, i8* %4370, align 1
  store %struct.Memory* %loadMem_4a3661, %struct.Memory** %MEMORY
  %loadMem_4a3668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 33
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4373 to i64*
  %4374 = load i64, i64* %PC.i428
  %4375 = add i64 %4374, 16
  %4376 = load i64, i64* %PC.i428
  %4377 = add i64 %4376, 6
  %4378 = load i64, i64* %PC.i428
  %4379 = add i64 %4378, 6
  store i64 %4379, i64* %PC.i428
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4381 = load i8, i8* %4380, align 1
  store i8 %4381, i8* %BRANCH_TAKEN, align 1
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4383 = icmp ne i8 %4381, 0
  %4384 = select i1 %4383, i64 %4375, i64 %4377
  store i64 %4384, i64* %4382, align 8
  store %struct.Memory* %loadMem_4a3668, %struct.Memory** %MEMORY
  %loadBr_4a3668 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3668 = icmp eq i8 %loadBr_4a3668, 1
  br i1 %cmpBr_4a3668, label %block_.L_4a3678, label %block_4a366e

block_4a366e:                                     ; preds = %block_4a3650
  %loadMem_4a366e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 33
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %4387 to i64*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 15
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %4390 to i64*
  %4391 = load i64, i64* %RBP.i427
  %4392 = sub i64 %4391, 600
  %4393 = load i64, i64* %PC.i426
  %4394 = add i64 %4393, 10
  store i64 %4394, i64* %PC.i426
  %4395 = inttoptr i64 %4392 to i32*
  store i32 0, i32* %4395
  store %struct.Memory* %loadMem_4a366e, %struct.Memory** %MEMORY
  br label %block_.L_4a3678

block_.L_4a3678:                                  ; preds = %block_4a366e, %block_4a3650
  %loadMem_4a3678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 33
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %4398 to i64*
  %4399 = load i64, i64* %PC.i425
  %4400 = add i64 %4399, 5
  %4401 = load i64, i64* %PC.i425
  %4402 = add i64 %4401, 5
  store i64 %4402, i64* %PC.i425
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4400, i64* %4403, align 8
  store %struct.Memory* %loadMem_4a3678, %struct.Memory** %MEMORY
  br label %block_.L_4a367d

block_.L_4a367d:                                  ; preds = %block_.L_4a3678
  %loadMem_4a367d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 33
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4406 to i64*
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4408 = getelementptr inbounds %struct.GPR, %struct.GPR* %4407, i32 0, i32 1
  %4409 = getelementptr inbounds %struct.Reg, %struct.Reg* %4408, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %4409 to i64*
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4411 = getelementptr inbounds %struct.GPR, %struct.GPR* %4410, i32 0, i32 15
  %4412 = getelementptr inbounds %struct.Reg, %struct.Reg* %4411, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %4412 to i64*
  %4413 = load i64, i64* %RBP.i424
  %4414 = sub i64 %4413, 52
  %4415 = load i64, i64* %PC.i422
  %4416 = add i64 %4415, 3
  store i64 %4416, i64* %PC.i422
  %4417 = inttoptr i64 %4414 to i32*
  %4418 = load i32, i32* %4417
  %4419 = zext i32 %4418 to i64
  store i64 %4419, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_4a367d, %struct.Memory** %MEMORY
  %loadMem_4a3680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 33
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %4422 to i64*
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 1
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %4425 to i64*
  %4426 = load i64, i64* %RAX.i421
  %4427 = load i64, i64* %PC.i420
  %4428 = add i64 %4427, 3
  store i64 %4428, i64* %PC.i420
  %4429 = trunc i64 %4426 to i32
  %4430 = add i32 1, %4429
  %4431 = zext i32 %4430 to i64
  store i64 %4431, i64* %RAX.i421, align 8
  %4432 = icmp ult i32 %4430, %4429
  %4433 = icmp ult i32 %4430, 1
  %4434 = or i1 %4432, %4433
  %4435 = zext i1 %4434 to i8
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4435, i8* %4436, align 1
  %4437 = and i32 %4430, 255
  %4438 = call i32 @llvm.ctpop.i32(i32 %4437)
  %4439 = trunc i32 %4438 to i8
  %4440 = and i8 %4439, 1
  %4441 = xor i8 %4440, 1
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4441, i8* %4442, align 1
  %4443 = xor i64 1, %4426
  %4444 = trunc i64 %4443 to i32
  %4445 = xor i32 %4444, %4430
  %4446 = lshr i32 %4445, 4
  %4447 = trunc i32 %4446 to i8
  %4448 = and i8 %4447, 1
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4448, i8* %4449, align 1
  %4450 = icmp eq i32 %4430, 0
  %4451 = zext i1 %4450 to i8
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4451, i8* %4452, align 1
  %4453 = lshr i32 %4430, 31
  %4454 = trunc i32 %4453 to i8
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4454, i8* %4455, align 1
  %4456 = lshr i32 %4429, 31
  %4457 = xor i32 %4453, %4456
  %4458 = add i32 %4457, %4453
  %4459 = icmp eq i32 %4458, 2
  %4460 = zext i1 %4459 to i8
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4460, i8* %4461, align 1
  store %struct.Memory* %loadMem_4a3680, %struct.Memory** %MEMORY
  %loadMem_4a3683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 33
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %4464 to i64*
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 1
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %EAX.i418 = bitcast %union.anon* %4467 to i32*
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 15
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %4470 to i64*
  %4471 = load i64, i64* %RBP.i419
  %4472 = sub i64 %4471, 52
  %4473 = load i32, i32* %EAX.i418
  %4474 = zext i32 %4473 to i64
  %4475 = load i64, i64* %PC.i417
  %4476 = add i64 %4475, 3
  store i64 %4476, i64* %PC.i417
  %4477 = inttoptr i64 %4472 to i32*
  store i32 %4473, i32* %4477
  store %struct.Memory* %loadMem_4a3683, %struct.Memory** %MEMORY
  %loadMem_4a3686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 33
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4480 to i64*
  %4481 = load i64, i64* %PC.i416
  %4482 = add i64 %4481, -66
  %4483 = load i64, i64* %PC.i416
  %4484 = add i64 %4483, 5
  store i64 %4484, i64* %PC.i416
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4482, i64* %4485, align 8
  store %struct.Memory* %loadMem_4a3686, %struct.Memory** %MEMORY
  br label %block_.L_4a3644

block_.L_4a368b:                                  ; preds = %block_.L_4a3644
  %loadMem_4a368b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4487 = getelementptr inbounds %struct.GPR, %struct.GPR* %4486, i32 0, i32 33
  %4488 = getelementptr inbounds %struct.Reg, %struct.Reg* %4487, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %4488 to i64*
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 15
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %4491 to i64*
  %4492 = load i64, i64* %RBP.i415
  %4493 = sub i64 %4492, 600
  %4494 = load i64, i64* %PC.i414
  %4495 = add i64 %4494, 7
  store i64 %4495, i64* %PC.i414
  %4496 = inttoptr i64 %4493 to i32*
  %4497 = load i32, i32* %4496
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4498, align 1
  %4499 = and i32 %4497, 255
  %4500 = call i32 @llvm.ctpop.i32(i32 %4499)
  %4501 = trunc i32 %4500 to i8
  %4502 = and i8 %4501, 1
  %4503 = xor i8 %4502, 1
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4503, i8* %4504, align 1
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4505, align 1
  %4506 = icmp eq i32 %4497, 0
  %4507 = zext i1 %4506 to i8
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4507, i8* %4508, align 1
  %4509 = lshr i32 %4497, 31
  %4510 = trunc i32 %4509 to i8
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4510, i8* %4511, align 1
  %4512 = lshr i32 %4497, 31
  %4513 = xor i32 %4509, %4512
  %4514 = add i32 %4513, %4512
  %4515 = icmp eq i32 %4514, 2
  %4516 = zext i1 %4515 to i8
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4516, i8* %4517, align 1
  store %struct.Memory* %loadMem_4a368b, %struct.Memory** %MEMORY
  %loadMem_4a3692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 33
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %4520 to i64*
  %4521 = load i64, i64* %PC.i413
  %4522 = add i64 %4521, 668
  %4523 = load i64, i64* %PC.i413
  %4524 = add i64 %4523, 6
  %4525 = load i64, i64* %PC.i413
  %4526 = add i64 %4525, 6
  store i64 %4526, i64* %PC.i413
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4528 = load i8, i8* %4527, align 1
  %4529 = icmp eq i8 %4528, 0
  %4530 = zext i1 %4529 to i8
  store i8 %4530, i8* %BRANCH_TAKEN, align 1
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4532 = select i1 %4529, i64 %4522, i64 %4524
  store i64 %4532, i64* %4531, align 8
  store %struct.Memory* %loadMem_4a3692, %struct.Memory** %MEMORY
  %loadBr_4a3692 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3692 = icmp eq i8 %loadBr_4a3692, 1
  br i1 %cmpBr_4a3692, label %block_.L_4a392e, label %block_4a3698

block_4a3698:                                     ; preds = %block_.L_4a368b
  %loadMem_4a3698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 33
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4535 to i64*
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 15
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %4538 to i64*
  %4539 = load i64, i64* %RBP.i412
  %4540 = sub i64 %4539, 52
  %4541 = load i64, i64* %PC.i411
  %4542 = add i64 %4541, 7
  store i64 %4542, i64* %PC.i411
  %4543 = inttoptr i64 %4540 to i32*
  store i32 0, i32* %4543
  store %struct.Memory* %loadMem_4a3698, %struct.Memory** %MEMORY
  br label %block_.L_4a369f

block_.L_4a369f:                                  ; preds = %block_.L_4a3897, %block_4a3698
  %loadMem_4a369f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 33
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %4546 to i64*
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 1
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %4549 to i64*
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4551 = getelementptr inbounds %struct.GPR, %struct.GPR* %4550, i32 0, i32 15
  %4552 = getelementptr inbounds %struct.Reg, %struct.Reg* %4551, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %4552 to i64*
  %4553 = load i64, i64* %RBP.i410
  %4554 = sub i64 %4553, 52
  %4555 = load i64, i64* %PC.i408
  %4556 = add i64 %4555, 3
  store i64 %4556, i64* %PC.i408
  %4557 = inttoptr i64 %4554 to i32*
  %4558 = load i32, i32* %4557
  %4559 = zext i32 %4558 to i64
  store i64 %4559, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_4a369f, %struct.Memory** %MEMORY
  %loadMem_4a36a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 33
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4562 to i64*
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 1
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %EAX.i406 = bitcast %union.anon* %4565 to i32*
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 15
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %4568 to i64*
  %4569 = load i32, i32* %EAX.i406
  %4570 = zext i32 %4569 to i64
  %4571 = load i64, i64* %RBP.i407
  %4572 = sub i64 %4571, 12
  %4573 = load i64, i64* %PC.i405
  %4574 = add i64 %4573, 3
  store i64 %4574, i64* %PC.i405
  %4575 = inttoptr i64 %4572 to i32*
  %4576 = load i32, i32* %4575
  %4577 = sub i32 %4569, %4576
  %4578 = icmp ult i32 %4569, %4576
  %4579 = zext i1 %4578 to i8
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4579, i8* %4580, align 1
  %4581 = and i32 %4577, 255
  %4582 = call i32 @llvm.ctpop.i32(i32 %4581)
  %4583 = trunc i32 %4582 to i8
  %4584 = and i8 %4583, 1
  %4585 = xor i8 %4584, 1
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4585, i8* %4586, align 1
  %4587 = xor i32 %4576, %4569
  %4588 = xor i32 %4587, %4577
  %4589 = lshr i32 %4588, 4
  %4590 = trunc i32 %4589 to i8
  %4591 = and i8 %4590, 1
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4591, i8* %4592, align 1
  %4593 = icmp eq i32 %4577, 0
  %4594 = zext i1 %4593 to i8
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4594, i8* %4595, align 1
  %4596 = lshr i32 %4577, 31
  %4597 = trunc i32 %4596 to i8
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4597, i8* %4598, align 1
  %4599 = lshr i32 %4569, 31
  %4600 = lshr i32 %4576, 31
  %4601 = xor i32 %4600, %4599
  %4602 = xor i32 %4596, %4599
  %4603 = add i32 %4602, %4601
  %4604 = icmp eq i32 %4603, 2
  %4605 = zext i1 %4604 to i8
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4605, i8* %4606, align 1
  store %struct.Memory* %loadMem_4a36a2, %struct.Memory** %MEMORY
  %loadMem_4a36a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 33
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4609 to i64*
  %4610 = load i64, i64* %PC.i404
  %4611 = add i64 %4610, 512
  %4612 = load i64, i64* %PC.i404
  %4613 = add i64 %4612, 6
  %4614 = load i64, i64* %PC.i404
  %4615 = add i64 %4614, 6
  store i64 %4615, i64* %PC.i404
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4617 = load i8, i8* %4616, align 1
  %4618 = icmp eq i8 %4617, 0
  %4619 = zext i1 %4618 to i8
  store i8 %4619, i8* %BRANCH_TAKEN, align 1
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4621 = select i1 %4618, i64 %4611, i64 %4613
  store i64 %4621, i64* %4620, align 8
  store %struct.Memory* %loadMem_4a36a5, %struct.Memory** %MEMORY
  %loadBr_4a36a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a36a5 = icmp eq i8 %loadBr_4a36a5, 1
  br i1 %cmpBr_4a36a5, label %block_.L_4a38a5, label %block_4a36ab

block_4a36ab:                                     ; preds = %block_.L_4a369f
  %loadMem_4a36ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 33
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4624 to i64*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 1
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %4627 to i64*
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 15
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %4630 to i64*
  %4631 = load i64, i64* %RBP.i403
  %4632 = sub i64 %4631, 52
  %4633 = load i64, i64* %PC.i401
  %4634 = add i64 %4633, 3
  store i64 %4634, i64* %PC.i401
  %4635 = inttoptr i64 %4632 to i32*
  %4636 = load i32, i32* %4635
  %4637 = zext i32 %4636 to i64
  store i64 %4637, i64* %RAX.i402, align 8
  store %struct.Memory* %loadMem_4a36ab, %struct.Memory** %MEMORY
  %loadMem_4a36ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 33
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %4640 to i64*
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 1
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %EAX.i399 = bitcast %union.anon* %4643 to i32*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 5
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %4646 to i64*
  %4647 = load i32, i32* %EAX.i399
  %4648 = zext i32 %4647 to i64
  %4649 = load i64, i64* %PC.i398
  %4650 = add i64 %4649, 2
  store i64 %4650, i64* %PC.i398
  %4651 = and i64 %4648, 4294967295
  store i64 %4651, i64* %RCX.i400, align 8
  store %struct.Memory* %loadMem_4a36ae, %struct.Memory** %MEMORY
  %loadMem_4a36b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 33
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %4654 to i64*
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4656 = getelementptr inbounds %struct.GPR, %struct.GPR* %4655, i32 0, i32 1
  %4657 = getelementptr inbounds %struct.Reg, %struct.Reg* %4656, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %4657 to i64*
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 5
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %4660 to i64*
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 15
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %4663 to i64*
  %4664 = load i64, i64* %RBP.i397
  %4665 = load i64, i64* %RCX.i396
  %4666 = mul i64 %4665, 4
  %4667 = add i64 %4664, -336
  %4668 = add i64 %4667, %4666
  %4669 = load i64, i64* %PC.i394
  %4670 = add i64 %4669, 7
  store i64 %4670, i64* %PC.i394
  %4671 = inttoptr i64 %4668 to i32*
  %4672 = load i32, i32* %4671
  %4673 = zext i32 %4672 to i64
  store i64 %4673, i64* %RAX.i395, align 8
  store %struct.Memory* %loadMem_4a36b0, %struct.Memory** %MEMORY
  %loadMem_4a36b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 33
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %4676 to i64*
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 1
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %4679 to i64*
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 15
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %4682 to i64*
  %4683 = load i64, i64* %RAX.i392
  %4684 = load i64, i64* %RBP.i393
  %4685 = sub i64 %4684, 68
  %4686 = load i64, i64* %PC.i391
  %4687 = add i64 %4686, 3
  store i64 %4687, i64* %PC.i391
  %4688 = trunc i64 %4683 to i32
  %4689 = inttoptr i64 %4685 to i32*
  %4690 = load i32, i32* %4689
  %4691 = sub i32 %4688, %4690
  %4692 = zext i32 %4691 to i64
  store i64 %4692, i64* %RAX.i392, align 8
  %4693 = icmp ult i32 %4688, %4690
  %4694 = zext i1 %4693 to i8
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4694, i8* %4695, align 1
  %4696 = and i32 %4691, 255
  %4697 = call i32 @llvm.ctpop.i32(i32 %4696)
  %4698 = trunc i32 %4697 to i8
  %4699 = and i8 %4698, 1
  %4700 = xor i8 %4699, 1
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4700, i8* %4701, align 1
  %4702 = xor i32 %4690, %4688
  %4703 = xor i32 %4702, %4691
  %4704 = lshr i32 %4703, 4
  %4705 = trunc i32 %4704 to i8
  %4706 = and i8 %4705, 1
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4706, i8* %4707, align 1
  %4708 = icmp eq i32 %4691, 0
  %4709 = zext i1 %4708 to i8
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4709, i8* %4710, align 1
  %4711 = lshr i32 %4691, 31
  %4712 = trunc i32 %4711 to i8
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4712, i8* %4713, align 1
  %4714 = lshr i32 %4688, 31
  %4715 = lshr i32 %4690, 31
  %4716 = xor i32 %4715, %4714
  %4717 = xor i32 %4711, %4714
  %4718 = add i32 %4717, %4716
  %4719 = icmp eq i32 %4718, 2
  %4720 = zext i1 %4719 to i8
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4720, i8* %4721, align 1
  store %struct.Memory* %loadMem_4a36b7, %struct.Memory** %MEMORY
  %loadMem_4a36ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 33
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %4724 to i64*
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 1
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %EAX.i389 = bitcast %union.anon* %4727 to i32*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 15
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %4730 to i64*
  %4731 = load i64, i64* %RBP.i390
  %4732 = sub i64 %4731, 744
  %4733 = load i32, i32* %EAX.i389
  %4734 = zext i32 %4733 to i64
  %4735 = load i64, i64* %PC.i388
  %4736 = add i64 %4735, 6
  store i64 %4736, i64* %PC.i388
  %4737 = inttoptr i64 %4732 to i32*
  store i32 %4733, i32* %4737
  store %struct.Memory* %loadMem_4a36ba, %struct.Memory** %MEMORY
  %loadMem_4a36c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 33
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4740 to i64*
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 15
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %4743 to i64*
  %4744 = load i64, i64* %RBP.i387
  %4745 = sub i64 %4744, 744
  %4746 = load i64, i64* %PC.i386
  %4747 = add i64 %4746, 7
  store i64 %4747, i64* %PC.i386
  %4748 = inttoptr i64 %4745 to i32*
  %4749 = load i32, i32* %4748
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4750, align 1
  %4751 = and i32 %4749, 255
  %4752 = call i32 @llvm.ctpop.i32(i32 %4751)
  %4753 = trunc i32 %4752 to i8
  %4754 = and i8 %4753, 1
  %4755 = xor i8 %4754, 1
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4755, i8* %4756, align 1
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4757, align 1
  %4758 = icmp eq i32 %4749, 0
  %4759 = zext i1 %4758 to i8
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4759, i8* %4760, align 1
  %4761 = lshr i32 %4749, 31
  %4762 = trunc i32 %4761 to i8
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4762, i8* %4763, align 1
  %4764 = lshr i32 %4749, 31
  %4765 = xor i32 %4761, %4764
  %4766 = add i32 %4765, %4764
  %4767 = icmp eq i32 %4766, 2
  %4768 = zext i1 %4767 to i8
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4768, i8* %4769, align 1
  store %struct.Memory* %loadMem_4a36c0, %struct.Memory** %MEMORY
  %loadMem_4a36c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 33
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4772 to i64*
  %4773 = load i64, i64* %PC.i385
  %4774 = add i64 %4773, 93
  %4775 = load i64, i64* %PC.i385
  %4776 = add i64 %4775, 6
  %4777 = load i64, i64* %PC.i385
  %4778 = add i64 %4777, 6
  store i64 %4778, i64* %PC.i385
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4780 = load i8, i8* %4779, align 1
  %4781 = icmp eq i8 %4780, 0
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4783 = load i8, i8* %4782, align 1
  %4784 = icmp ne i8 %4783, 0
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4786 = load i8, i8* %4785, align 1
  %4787 = icmp ne i8 %4786, 0
  %4788 = xor i1 %4784, %4787
  %4789 = xor i1 %4788, true
  %4790 = and i1 %4781, %4789
  %4791 = zext i1 %4790 to i8
  store i8 %4791, i8* %BRANCH_TAKEN, align 1
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4793 = select i1 %4790, i64 %4774, i64 %4776
  store i64 %4793, i64* %4792, align 8
  store %struct.Memory* %loadMem_4a36c7, %struct.Memory** %MEMORY
  %loadBr_4a36c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a36c7 = icmp eq i8 %loadBr_4a36c7, 1
  br i1 %cmpBr_4a36c7, label %block_.L_4a3724, label %block_4a36cd

block_4a36cd:                                     ; preds = %block_4a36ab
  %loadMem_4a36cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 33
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4796 to i64*
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4798 = getelementptr inbounds %struct.GPR, %struct.GPR* %4797, i32 0, i32 1
  %4799 = getelementptr inbounds %struct.Reg, %struct.Reg* %4798, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %4799 to i64*
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4801 = getelementptr inbounds %struct.GPR, %struct.GPR* %4800, i32 0, i32 15
  %4802 = getelementptr inbounds %struct.Reg, %struct.Reg* %4801, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %4802 to i64*
  %4803 = load i64, i64* %RBP.i384
  %4804 = sub i64 %4803, 24
  %4805 = load i64, i64* %PC.i382
  %4806 = add i64 %4805, 4
  store i64 %4806, i64* %PC.i382
  %4807 = inttoptr i64 %4804 to i64*
  %4808 = load i64, i64* %4807
  store i64 %4808, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_4a36cd, %struct.Memory** %MEMORY
  %loadMem_4a36d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 33
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %4811 to i64*
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4813 = getelementptr inbounds %struct.GPR, %struct.GPR* %4812, i32 0, i32 5
  %4814 = getelementptr inbounds %struct.Reg, %struct.Reg* %4813, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %4814 to i64*
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 15
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %4817 to i64*
  %4818 = load i64, i64* %RBP.i381
  %4819 = sub i64 %4818, 52
  %4820 = load i64, i64* %PC.i379
  %4821 = add i64 %4820, 3
  store i64 %4821, i64* %PC.i379
  %4822 = inttoptr i64 %4819 to i32*
  %4823 = load i32, i32* %4822
  %4824 = zext i32 %4823 to i64
  store i64 %4824, i64* %RCX.i380, align 8
  store %struct.Memory* %loadMem_4a36d1, %struct.Memory** %MEMORY
  %loadMem_4a36d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 33
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4827 to i64*
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 5
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %ECX.i377 = bitcast %union.anon* %4830 to i32*
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 7
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %RDX.i378 = bitcast %union.anon* %4833 to i64*
  %4834 = load i32, i32* %ECX.i377
  %4835 = zext i32 %4834 to i64
  %4836 = load i64, i64* %PC.i376
  %4837 = add i64 %4836, 2
  store i64 %4837, i64* %PC.i376
  %4838 = and i64 %4835, 4294967295
  store i64 %4838, i64* %RDX.i378, align 8
  store %struct.Memory* %loadMem_4a36d4, %struct.Memory** %MEMORY
  %loadMem_4a36d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4840 = getelementptr inbounds %struct.GPR, %struct.GPR* %4839, i32 0, i32 33
  %4841 = getelementptr inbounds %struct.Reg, %struct.Reg* %4840, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4841 to i64*
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 1
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 7
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RDX.i375 = bitcast %union.anon* %4847 to i64*
  %4848 = load i64, i64* %RAX.i374
  %4849 = load i64, i64* %RDX.i375
  %4850 = mul i64 %4849, 4
  %4851 = add i64 %4850, %4848
  %4852 = load i64, i64* %PC.i373
  %4853 = add i64 %4852, 7
  store i64 %4853, i64* %PC.i373
  %4854 = inttoptr i64 %4851 to i32*
  store i32 0, i32* %4854
  store %struct.Memory* %loadMem_4a36d6, %struct.Memory** %MEMORY
  %loadMem_4a36dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 33
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %4857 to i64*
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 11
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %RDI.i371 = bitcast %union.anon* %4860 to i64*
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 15
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %4863 to i64*
  %4864 = load i64, i64* %RBP.i372
  %4865 = sub i64 %4864, 744
  %4866 = load i64, i64* %PC.i370
  %4867 = add i64 %4866, 6
  store i64 %4867, i64* %PC.i370
  %4868 = inttoptr i64 %4865 to i32*
  %4869 = load i32, i32* %4868
  %4870 = zext i32 %4869 to i64
  store i64 %4870, i64* %RDI.i371, align 8
  store %struct.Memory* %loadMem_4a36dd, %struct.Memory** %MEMORY
  %loadMem1_4a36e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 33
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4873 to i64*
  %4874 = load i64, i64* %PC.i369
  %4875 = add i64 %4874, -665315
  %4876 = load i64, i64* %PC.i369
  %4877 = add i64 %4876, 5
  %4878 = load i64, i64* %PC.i369
  %4879 = add i64 %4878, 5
  store i64 %4879, i64* %PC.i369
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4881 = load i64, i64* %4880, align 8
  %4882 = add i64 %4881, -8
  %4883 = inttoptr i64 %4882 to i64*
  store i64 %4877, i64* %4883
  store i64 %4882, i64* %4880, align 8
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4875, i64* %4884, align 8
  store %struct.Memory* %loadMem1_4a36e3, %struct.Memory** %MEMORY
  %loadMem2_4a36e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a36e3 = load i64, i64* %3
  %4885 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_4a36e3)
  store %struct.Memory* %4885, %struct.Memory** %MEMORY
  %loadMem_4a36e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4887 = getelementptr inbounds %struct.GPR, %struct.GPR* %4886, i32 0, i32 33
  %4888 = getelementptr inbounds %struct.Reg, %struct.Reg* %4887, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %4888 to i64*
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4890 = getelementptr inbounds %struct.GPR, %struct.GPR* %4889, i32 0, i32 1
  %4891 = getelementptr inbounds %struct.Reg, %struct.Reg* %4890, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %4891 to i64*
  %4892 = load i64, i64* %RAX.i366
  %4893 = load i64, i64* %PC.i365
  %4894 = add i64 %4893, 3
  store i64 %4894, i64* %PC.i365
  %4895 = trunc i64 %4892 to i32
  %4896 = sub i32 %4895, 1
  %4897 = zext i32 %4896 to i64
  store i64 %4897, i64* %RAX.i366, align 8
  %4898 = icmp ult i32 %4895, 1
  %4899 = zext i1 %4898 to i8
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4899, i8* %4900, align 1
  %4901 = and i32 %4896, 255
  %4902 = call i32 @llvm.ctpop.i32(i32 %4901)
  %4903 = trunc i32 %4902 to i8
  %4904 = and i8 %4903, 1
  %4905 = xor i8 %4904, 1
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4905, i8* %4906, align 1
  %4907 = xor i64 1, %4892
  %4908 = trunc i64 %4907 to i32
  %4909 = xor i32 %4908, %4896
  %4910 = lshr i32 %4909, 4
  %4911 = trunc i32 %4910 to i8
  %4912 = and i8 %4911, 1
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4912, i8* %4913, align 1
  %4914 = icmp eq i32 %4896, 0
  %4915 = zext i1 %4914 to i8
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4915, i8* %4916, align 1
  %4917 = lshr i32 %4896, 31
  %4918 = trunc i32 %4917 to i8
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4918, i8* %4919, align 1
  %4920 = lshr i32 %4895, 31
  %4921 = xor i32 %4917, %4920
  %4922 = add i32 %4921, %4920
  %4923 = icmp eq i32 %4922, 2
  %4924 = zext i1 %4923 to i8
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4924, i8* %4925, align 1
  store %struct.Memory* %loadMem_4a36e8, %struct.Memory** %MEMORY
  %loadMem_4a36eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4927 = getelementptr inbounds %struct.GPR, %struct.GPR* %4926, i32 0, i32 33
  %4928 = getelementptr inbounds %struct.Reg, %struct.Reg* %4927, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %4928 to i64*
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4930 = getelementptr inbounds %struct.GPR, %struct.GPR* %4929, i32 0, i32 7
  %4931 = getelementptr inbounds %struct.Reg, %struct.Reg* %4930, i32 0, i32 0
  %RDX.i363 = bitcast %union.anon* %4931 to i64*
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 15
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %4934 to i64*
  %4935 = load i64, i64* %RBP.i364
  %4936 = sub i64 %4935, 32
  %4937 = load i64, i64* %PC.i362
  %4938 = add i64 %4937, 4
  store i64 %4938, i64* %PC.i362
  %4939 = inttoptr i64 %4936 to i64*
  %4940 = load i64, i64* %4939
  store i64 %4940, i64* %RDX.i363, align 8
  store %struct.Memory* %loadMem_4a36eb, %struct.Memory** %MEMORY
  %loadMem_4a36ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4942 = getelementptr inbounds %struct.GPR, %struct.GPR* %4941, i32 0, i32 33
  %4943 = getelementptr inbounds %struct.Reg, %struct.Reg* %4942, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %4943 to i64*
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4945 = getelementptr inbounds %struct.GPR, %struct.GPR* %4944, i32 0, i32 5
  %4946 = getelementptr inbounds %struct.Reg, %struct.Reg* %4945, i32 0, i32 0
  %RCX.i360 = bitcast %union.anon* %4946 to i64*
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4948 = getelementptr inbounds %struct.GPR, %struct.GPR* %4947, i32 0, i32 15
  %4949 = getelementptr inbounds %struct.Reg, %struct.Reg* %4948, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %4949 to i64*
  %4950 = load i64, i64* %RBP.i361
  %4951 = sub i64 %4950, 52
  %4952 = load i64, i64* %PC.i359
  %4953 = add i64 %4952, 3
  store i64 %4953, i64* %PC.i359
  %4954 = inttoptr i64 %4951 to i32*
  %4955 = load i32, i32* %4954
  %4956 = zext i32 %4955 to i64
  store i64 %4956, i64* %RCX.i360, align 8
  store %struct.Memory* %loadMem_4a36ef, %struct.Memory** %MEMORY
  %loadMem_4a36f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 33
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %4959 to i64*
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 5
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %ECX.i357 = bitcast %union.anon* %4962 to i32*
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 9
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %RSI.i358 = bitcast %union.anon* %4965 to i64*
  %4966 = load i32, i32* %ECX.i357
  %4967 = zext i32 %4966 to i64
  %4968 = load i64, i64* %PC.i356
  %4969 = add i64 %4968, 2
  store i64 %4969, i64* %PC.i356
  %4970 = and i64 %4967, 4294967295
  store i64 %4970, i64* %RSI.i358, align 8
  store %struct.Memory* %loadMem_4a36f2, %struct.Memory** %MEMORY
  %loadMem_4a36f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 33
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4973 to i64*
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 1
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %EAX.i353 = bitcast %union.anon* %4976 to i32*
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 7
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %RDX.i354 = bitcast %union.anon* %4979 to i64*
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 9
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %RSI.i355 = bitcast %union.anon* %4982 to i64*
  %4983 = load i64, i64* %RDX.i354
  %4984 = load i64, i64* %RSI.i355
  %4985 = mul i64 %4984, 4
  %4986 = add i64 %4985, %4983
  %4987 = load i32, i32* %EAX.i353
  %4988 = zext i32 %4987 to i64
  %4989 = load i64, i64* %PC.i352
  %4990 = add i64 %4989, 3
  store i64 %4990, i64* %PC.i352
  %4991 = inttoptr i64 %4986 to i32*
  store i32 %4987, i32* %4991
  store %struct.Memory* %loadMem_4a36f4, %struct.Memory** %MEMORY
  %loadMem_4a36f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 33
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %4994 to i64*
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 7
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %4997 to i64*
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 15
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %5000 to i64*
  %5001 = load i64, i64* %RBP.i351
  %5002 = sub i64 %5001, 32
  %5003 = load i64, i64* %PC.i349
  %5004 = add i64 %5003, 4
  store i64 %5004, i64* %PC.i349
  %5005 = inttoptr i64 %5002 to i64*
  %5006 = load i64, i64* %5005
  store i64 %5006, i64* %RDX.i350, align 8
  store %struct.Memory* %loadMem_4a36f7, %struct.Memory** %MEMORY
  %loadMem_4a36fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 33
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %5009 to i64*
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 1
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %5012 to i64*
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 15
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %5015 to i64*
  %5016 = load i64, i64* %RBP.i348
  %5017 = sub i64 %5016, 52
  %5018 = load i64, i64* %PC.i346
  %5019 = add i64 %5018, 3
  store i64 %5019, i64* %PC.i346
  %5020 = inttoptr i64 %5017 to i32*
  %5021 = load i32, i32* %5020
  %5022 = zext i32 %5021 to i64
  store i64 %5022, i64* %RAX.i347, align 8
  store %struct.Memory* %loadMem_4a36fb, %struct.Memory** %MEMORY
  %loadMem_4a36fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 33
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 1
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %EAX.i344 = bitcast %union.anon* %5028 to i32*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 9
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %RSI.i345 = bitcast %union.anon* %5031 to i64*
  %5032 = load i32, i32* %EAX.i344
  %5033 = zext i32 %5032 to i64
  %5034 = load i64, i64* %PC.i343
  %5035 = add i64 %5034, 2
  store i64 %5035, i64* %PC.i343
  %5036 = and i64 %5033, 4294967295
  store i64 %5036, i64* %RSI.i345, align 8
  store %struct.Memory* %loadMem_4a36fe, %struct.Memory** %MEMORY
  %loadMem_4a3700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 33
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5039 to i64*
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 7
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %RDX.i341 = bitcast %union.anon* %5042 to i64*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 9
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %RSI.i342 = bitcast %union.anon* %5045 to i64*
  %5046 = load i64, i64* %RDX.i341
  %5047 = load i64, i64* %RSI.i342
  %5048 = mul i64 %5047, 4
  %5049 = add i64 %5048, %5046
  %5050 = load i64, i64* %PC.i340
  %5051 = add i64 %5050, 4
  store i64 %5051, i64* %PC.i340
  %5052 = inttoptr i64 %5049 to i32*
  %5053 = load i32, i32* %5052
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5054, align 1
  %5055 = and i32 %5053, 255
  %5056 = call i32 @llvm.ctpop.i32(i32 %5055)
  %5057 = trunc i32 %5056 to i8
  %5058 = and i8 %5057, 1
  %5059 = xor i8 %5058, 1
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5059, i8* %5060, align 1
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5061, align 1
  %5062 = icmp eq i32 %5053, 0
  %5063 = zext i1 %5062 to i8
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5063, i8* %5064, align 1
  %5065 = lshr i32 %5053, 31
  %5066 = trunc i32 %5065 to i8
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5066, i8* %5067, align 1
  %5068 = lshr i32 %5053, 31
  %5069 = xor i32 %5065, %5068
  %5070 = add i32 %5069, %5068
  %5071 = icmp eq i32 %5070, 2
  %5072 = zext i1 %5071 to i8
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5072, i8* %5073, align 1
  store %struct.Memory* %loadMem_4a3700, %struct.Memory** %MEMORY
  %loadMem_4a3704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 33
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5076 to i64*
  %5077 = load i64, i64* %PC.i339
  %5078 = add i64 %5077, 27
  %5079 = load i64, i64* %PC.i339
  %5080 = add i64 %5079, 6
  %5081 = load i64, i64* %PC.i339
  %5082 = add i64 %5081, 6
  store i64 %5082, i64* %PC.i339
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5084 = load i8, i8* %5083, align 1
  %5085 = icmp ne i8 %5084, 0
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5087 = load i8, i8* %5086, align 1
  %5088 = icmp ne i8 %5087, 0
  %5089 = xor i1 %5085, %5088
  %5090 = xor i1 %5089, true
  %5091 = zext i1 %5090 to i8
  store i8 %5091, i8* %BRANCH_TAKEN, align 1
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5093 = select i1 %5089, i64 %5080, i64 %5078
  store i64 %5093, i64* %5092, align 8
  store %struct.Memory* %loadMem_4a3704, %struct.Memory** %MEMORY
  %loadBr_4a3704 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3704 = icmp eq i8 %loadBr_4a3704, 1
  br i1 %cmpBr_4a3704, label %block_.L_4a371f, label %block_4a370a

block_4a370a:                                     ; preds = %block_4a36cd
  %loadMem_4a370a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5095 = getelementptr inbounds %struct.GPR, %struct.GPR* %5094, i32 0, i32 33
  %5096 = getelementptr inbounds %struct.Reg, %struct.Reg* %5095, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5096 to i64*
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5098 = getelementptr inbounds %struct.GPR, %struct.GPR* %5097, i32 0, i32 1
  %5099 = getelementptr inbounds %struct.Reg, %struct.Reg* %5098, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %5099 to i64*
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5101 = getelementptr inbounds %struct.GPR, %struct.GPR* %5100, i32 0, i32 15
  %5102 = getelementptr inbounds %struct.Reg, %struct.Reg* %5101, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %5102 to i64*
  %5103 = load i64, i64* %RBP.i338
  %5104 = sub i64 %5103, 752
  %5105 = load i64, i64* %PC.i336
  %5106 = add i64 %5105, 6
  store i64 %5106, i64* %PC.i336
  %5107 = inttoptr i64 %5104 to i32*
  %5108 = load i32, i32* %5107
  %5109 = zext i32 %5108 to i64
  store i64 %5109, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_4a370a, %struct.Memory** %MEMORY
  %loadMem_4a3710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5111 = getelementptr inbounds %struct.GPR, %struct.GPR* %5110, i32 0, i32 33
  %5112 = getelementptr inbounds %struct.Reg, %struct.Reg* %5111, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %5112 to i64*
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5114 = getelementptr inbounds %struct.GPR, %struct.GPR* %5113, i32 0, i32 1
  %5115 = getelementptr inbounds %struct.Reg, %struct.Reg* %5114, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %5115 to i64*
  %5116 = load i64, i64* %RAX.i335
  %5117 = load i64, i64* %PC.i334
  %5118 = add i64 %5117, 3
  store i64 %5118, i64* %PC.i334
  %5119 = trunc i64 %5116 to i32
  %5120 = sub i32 %5119, 1
  %5121 = zext i32 %5120 to i64
  store i64 %5121, i64* %RAX.i335, align 8
  %5122 = icmp ult i32 %5119, 1
  %5123 = zext i1 %5122 to i8
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5123, i8* %5124, align 1
  %5125 = and i32 %5120, 255
  %5126 = call i32 @llvm.ctpop.i32(i32 %5125)
  %5127 = trunc i32 %5126 to i8
  %5128 = and i8 %5127, 1
  %5129 = xor i8 %5128, 1
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5129, i8* %5130, align 1
  %5131 = xor i64 1, %5116
  %5132 = trunc i64 %5131 to i32
  %5133 = xor i32 %5132, %5120
  %5134 = lshr i32 %5133, 4
  %5135 = trunc i32 %5134 to i8
  %5136 = and i8 %5135, 1
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5136, i8* %5137, align 1
  %5138 = icmp eq i32 %5120, 0
  %5139 = zext i1 %5138 to i8
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5139, i8* %5140, align 1
  %5141 = lshr i32 %5120, 31
  %5142 = trunc i32 %5141 to i8
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5142, i8* %5143, align 1
  %5144 = lshr i32 %5119, 31
  %5145 = xor i32 %5141, %5144
  %5146 = add i32 %5145, %5144
  %5147 = icmp eq i32 %5146, 2
  %5148 = zext i1 %5147 to i8
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5148, i8* %5149, align 1
  store %struct.Memory* %loadMem_4a3710, %struct.Memory** %MEMORY
  %loadMem_4a3713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 33
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %5152 to i64*
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 5
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %5155 to i64*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 15
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %5158 to i64*
  %5159 = load i64, i64* %RBP.i333
  %5160 = sub i64 %5159, 32
  %5161 = load i64, i64* %PC.i331
  %5162 = add i64 %5161, 4
  store i64 %5162, i64* %PC.i331
  %5163 = inttoptr i64 %5160 to i64*
  %5164 = load i64, i64* %5163
  store i64 %5164, i64* %RCX.i332, align 8
  store %struct.Memory* %loadMem_4a3713, %struct.Memory** %MEMORY
  %loadMem_4a3717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5166 = getelementptr inbounds %struct.GPR, %struct.GPR* %5165, i32 0, i32 33
  %5167 = getelementptr inbounds %struct.Reg, %struct.Reg* %5166, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %5167 to i64*
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 7
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %5170 to i64*
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5172 = getelementptr inbounds %struct.GPR, %struct.GPR* %5171, i32 0, i32 15
  %5173 = getelementptr inbounds %struct.Reg, %struct.Reg* %5172, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %5173 to i64*
  %5174 = load i64, i64* %RBP.i330
  %5175 = sub i64 %5174, 52
  %5176 = load i64, i64* %PC.i328
  %5177 = add i64 %5176, 3
  store i64 %5177, i64* %PC.i328
  %5178 = inttoptr i64 %5175 to i32*
  %5179 = load i32, i32* %5178
  %5180 = zext i32 %5179 to i64
  store i64 %5180, i64* %RDX.i329, align 8
  store %struct.Memory* %loadMem_4a3717, %struct.Memory** %MEMORY
  %loadMem_4a371a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 33
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %5183 to i64*
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5185 = getelementptr inbounds %struct.GPR, %struct.GPR* %5184, i32 0, i32 7
  %5186 = getelementptr inbounds %struct.Reg, %struct.Reg* %5185, i32 0, i32 0
  %EDX.i326 = bitcast %union.anon* %5186 to i32*
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5188 = getelementptr inbounds %struct.GPR, %struct.GPR* %5187, i32 0, i32 9
  %5189 = getelementptr inbounds %struct.Reg, %struct.Reg* %5188, i32 0, i32 0
  %RSI.i327 = bitcast %union.anon* %5189 to i64*
  %5190 = load i32, i32* %EDX.i326
  %5191 = zext i32 %5190 to i64
  %5192 = load i64, i64* %PC.i325
  %5193 = add i64 %5192, 2
  store i64 %5193, i64* %PC.i325
  %5194 = and i64 %5191, 4294967295
  store i64 %5194, i64* %RSI.i327, align 8
  store %struct.Memory* %loadMem_4a371a, %struct.Memory** %MEMORY
  %loadMem_4a371c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 33
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %5197 to i64*
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5199 = getelementptr inbounds %struct.GPR, %struct.GPR* %5198, i32 0, i32 1
  %5200 = getelementptr inbounds %struct.Reg, %struct.Reg* %5199, i32 0, i32 0
  %EAX.i322 = bitcast %union.anon* %5200 to i32*
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5202 = getelementptr inbounds %struct.GPR, %struct.GPR* %5201, i32 0, i32 5
  %5203 = getelementptr inbounds %struct.Reg, %struct.Reg* %5202, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %5203 to i64*
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 9
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %RSI.i324 = bitcast %union.anon* %5206 to i64*
  %5207 = load i64, i64* %RCX.i323
  %5208 = load i64, i64* %RSI.i324
  %5209 = mul i64 %5208, 4
  %5210 = add i64 %5209, %5207
  %5211 = load i32, i32* %EAX.i322
  %5212 = zext i32 %5211 to i64
  %5213 = load i64, i64* %PC.i321
  %5214 = add i64 %5213, 3
  store i64 %5214, i64* %PC.i321
  %5215 = inttoptr i64 %5210 to i32*
  store i32 %5211, i32* %5215
  store %struct.Memory* %loadMem_4a371c, %struct.Memory** %MEMORY
  br label %block_.L_4a371f

block_.L_4a371f:                                  ; preds = %block_4a370a, %block_4a36cd
  %loadMem_4a371f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5217 = getelementptr inbounds %struct.GPR, %struct.GPR* %5216, i32 0, i32 33
  %5218 = getelementptr inbounds %struct.Reg, %struct.Reg* %5217, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5218 to i64*
  %5219 = load i64, i64* %PC.i320
  %5220 = add i64 %5219, 47
  %5221 = load i64, i64* %PC.i320
  %5222 = add i64 %5221, 5
  store i64 %5222, i64* %PC.i320
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5220, i64* %5223, align 8
  store %struct.Memory* %loadMem_4a371f, %struct.Memory** %MEMORY
  br label %block_.L_4a374e

block_.L_4a3724:                                  ; preds = %block_4a36ab
  %loadMem_4a3724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5225 = getelementptr inbounds %struct.GPR, %struct.GPR* %5224, i32 0, i32 33
  %5226 = getelementptr inbounds %struct.Reg, %struct.Reg* %5225, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %5226 to i64*
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5228 = getelementptr inbounds %struct.GPR, %struct.GPR* %5227, i32 0, i32 1
  %5229 = getelementptr inbounds %struct.Reg, %struct.Reg* %5228, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %5229 to i64*
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5231 = getelementptr inbounds %struct.GPR, %struct.GPR* %5230, i32 0, i32 15
  %5232 = getelementptr inbounds %struct.Reg, %struct.Reg* %5231, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %5232 to i64*
  %5233 = load i64, i64* %RBP.i319
  %5234 = sub i64 %5233, 24
  %5235 = load i64, i64* %PC.i317
  %5236 = add i64 %5235, 4
  store i64 %5236, i64* %PC.i317
  %5237 = inttoptr i64 %5234 to i64*
  %5238 = load i64, i64* %5237
  store i64 %5238, i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_4a3724, %struct.Memory** %MEMORY
  %loadMem_4a3728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 33
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %5241 to i64*
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 5
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %5244 to i64*
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 15
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %5247 to i64*
  %5248 = load i64, i64* %RBP.i316
  %5249 = sub i64 %5248, 52
  %5250 = load i64, i64* %PC.i314
  %5251 = add i64 %5250, 3
  store i64 %5251, i64* %PC.i314
  %5252 = inttoptr i64 %5249 to i32*
  %5253 = load i32, i32* %5252
  %5254 = zext i32 %5253 to i64
  store i64 %5254, i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_4a3728, %struct.Memory** %MEMORY
  %loadMem_4a372b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 33
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 5
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %ECX.i312 = bitcast %union.anon* %5260 to i32*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 7
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %RDX.i313 = bitcast %union.anon* %5263 to i64*
  %5264 = load i32, i32* %ECX.i312
  %5265 = zext i32 %5264 to i64
  %5266 = load i64, i64* %PC.i311
  %5267 = add i64 %5266, 2
  store i64 %5267, i64* %PC.i311
  %5268 = and i64 %5265, 4294967295
  store i64 %5268, i64* %RDX.i313, align 8
  store %struct.Memory* %loadMem_4a372b, %struct.Memory** %MEMORY
  %loadMem_4a372d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5270 = getelementptr inbounds %struct.GPR, %struct.GPR* %5269, i32 0, i32 33
  %5271 = getelementptr inbounds %struct.Reg, %struct.Reg* %5270, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %5271 to i64*
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 1
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %5274 to i64*
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 7
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %RDX.i310 = bitcast %union.anon* %5277 to i64*
  %5278 = load i64, i64* %RAX.i309
  %5279 = load i64, i64* %RDX.i310
  %5280 = mul i64 %5279, 4
  %5281 = add i64 %5280, %5278
  %5282 = load i64, i64* %PC.i308
  %5283 = add i64 %5282, 7
  store i64 %5283, i64* %PC.i308
  %5284 = inttoptr i64 %5281 to i32*
  store i32 1, i32* %5284
  store %struct.Memory* %loadMem_4a372d, %struct.Memory** %MEMORY
  %loadMem_4a3734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5286 = getelementptr inbounds %struct.GPR, %struct.GPR* %5285, i32 0, i32 33
  %5287 = getelementptr inbounds %struct.Reg, %struct.Reg* %5286, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %5287 to i64*
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 11
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5290 to i64*
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5292 = getelementptr inbounds %struct.GPR, %struct.GPR* %5291, i32 0, i32 15
  %5293 = getelementptr inbounds %struct.Reg, %struct.Reg* %5292, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %5293 to i64*
  %5294 = load i64, i64* %RBP.i307
  %5295 = sub i64 %5294, 744
  %5296 = load i64, i64* %PC.i306
  %5297 = add i64 %5296, 6
  store i64 %5297, i64* %PC.i306
  %5298 = inttoptr i64 %5295 to i32*
  %5299 = load i32, i32* %5298
  %5300 = zext i32 %5299 to i64
  store i64 %5300, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4a3734, %struct.Memory** %MEMORY
  %loadMem1_4a373a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5302 = getelementptr inbounds %struct.GPR, %struct.GPR* %5301, i32 0, i32 33
  %5303 = getelementptr inbounds %struct.Reg, %struct.Reg* %5302, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5303 to i64*
  %5304 = load i64, i64* %PC.i305
  %5305 = add i64 %5304, -665402
  %5306 = load i64, i64* %PC.i305
  %5307 = add i64 %5306, 5
  %5308 = load i64, i64* %PC.i305
  %5309 = add i64 %5308, 5
  store i64 %5309, i64* %PC.i305
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5311 = load i64, i64* %5310, align 8
  %5312 = add i64 %5311, -8
  %5313 = inttoptr i64 %5312 to i64*
  store i64 %5307, i64* %5313
  store i64 %5312, i64* %5310, align 8
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5305, i64* %5314, align 8
  store %struct.Memory* %loadMem1_4a373a, %struct.Memory** %MEMORY
  %loadMem2_4a373a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a373a = load i64, i64* %3
  %5315 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_4a373a)
  store %struct.Memory* %5315, %struct.Memory** %MEMORY
  %loadMem_4a373f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5317 = getelementptr inbounds %struct.GPR, %struct.GPR* %5316, i32 0, i32 33
  %5318 = getelementptr inbounds %struct.Reg, %struct.Reg* %5317, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5318 to i64*
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5320 = getelementptr inbounds %struct.GPR, %struct.GPR* %5319, i32 0, i32 1
  %5321 = getelementptr inbounds %struct.Reg, %struct.Reg* %5320, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %5321 to i64*
  %5322 = load i64, i64* %RAX.i301
  %5323 = load i64, i64* %PC.i300
  %5324 = add i64 %5323, 3
  store i64 %5324, i64* %PC.i300
  %5325 = trunc i64 %5322 to i32
  %5326 = sub i32 %5325, 1
  %5327 = zext i32 %5326 to i64
  store i64 %5327, i64* %RAX.i301, align 8
  %5328 = icmp ult i32 %5325, 1
  %5329 = zext i1 %5328 to i8
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5329, i8* %5330, align 1
  %5331 = and i32 %5326, 255
  %5332 = call i32 @llvm.ctpop.i32(i32 %5331)
  %5333 = trunc i32 %5332 to i8
  %5334 = and i8 %5333, 1
  %5335 = xor i8 %5334, 1
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5335, i8* %5336, align 1
  %5337 = xor i64 1, %5322
  %5338 = trunc i64 %5337 to i32
  %5339 = xor i32 %5338, %5326
  %5340 = lshr i32 %5339, 4
  %5341 = trunc i32 %5340 to i8
  %5342 = and i8 %5341, 1
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5342, i8* %5343, align 1
  %5344 = icmp eq i32 %5326, 0
  %5345 = zext i1 %5344 to i8
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5345, i8* %5346, align 1
  %5347 = lshr i32 %5326, 31
  %5348 = trunc i32 %5347 to i8
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5348, i8* %5349, align 1
  %5350 = lshr i32 %5325, 31
  %5351 = xor i32 %5347, %5350
  %5352 = add i32 %5351, %5350
  %5353 = icmp eq i32 %5352, 2
  %5354 = zext i1 %5353 to i8
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5354, i8* %5355, align 1
  store %struct.Memory* %loadMem_4a373f, %struct.Memory** %MEMORY
  %loadMem_4a3742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 33
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5358 to i64*
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5360 = getelementptr inbounds %struct.GPR, %struct.GPR* %5359, i32 0, i32 7
  %5361 = getelementptr inbounds %struct.Reg, %struct.Reg* %5360, i32 0, i32 0
  %RDX.i298 = bitcast %union.anon* %5361 to i64*
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5363 = getelementptr inbounds %struct.GPR, %struct.GPR* %5362, i32 0, i32 15
  %5364 = getelementptr inbounds %struct.Reg, %struct.Reg* %5363, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %5364 to i64*
  %5365 = load i64, i64* %RBP.i299
  %5366 = sub i64 %5365, 32
  %5367 = load i64, i64* %PC.i297
  %5368 = add i64 %5367, 4
  store i64 %5368, i64* %PC.i297
  %5369 = inttoptr i64 %5366 to i64*
  %5370 = load i64, i64* %5369
  store i64 %5370, i64* %RDX.i298, align 8
  store %struct.Memory* %loadMem_4a3742, %struct.Memory** %MEMORY
  %loadMem_4a3746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 33
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5373 to i64*
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5375 = getelementptr inbounds %struct.GPR, %struct.GPR* %5374, i32 0, i32 5
  %5376 = getelementptr inbounds %struct.Reg, %struct.Reg* %5375, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %5376 to i64*
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5378 = getelementptr inbounds %struct.GPR, %struct.GPR* %5377, i32 0, i32 15
  %5379 = getelementptr inbounds %struct.Reg, %struct.Reg* %5378, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %5379 to i64*
  %5380 = load i64, i64* %RBP.i296
  %5381 = sub i64 %5380, 52
  %5382 = load i64, i64* %PC.i294
  %5383 = add i64 %5382, 3
  store i64 %5383, i64* %PC.i294
  %5384 = inttoptr i64 %5381 to i32*
  %5385 = load i32, i32* %5384
  %5386 = zext i32 %5385 to i64
  store i64 %5386, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_4a3746, %struct.Memory** %MEMORY
  %loadMem_4a3749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 33
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5389 to i64*
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5391 = getelementptr inbounds %struct.GPR, %struct.GPR* %5390, i32 0, i32 5
  %5392 = getelementptr inbounds %struct.Reg, %struct.Reg* %5391, i32 0, i32 0
  %ECX.i292 = bitcast %union.anon* %5392 to i32*
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 9
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %RSI.i293 = bitcast %union.anon* %5395 to i64*
  %5396 = load i32, i32* %ECX.i292
  %5397 = zext i32 %5396 to i64
  %5398 = load i64, i64* %PC.i291
  %5399 = add i64 %5398, 2
  store i64 %5399, i64* %PC.i291
  %5400 = and i64 %5397, 4294967295
  store i64 %5400, i64* %RSI.i293, align 8
  store %struct.Memory* %loadMem_4a3749, %struct.Memory** %MEMORY
  %loadMem_4a374b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 33
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5403 to i64*
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5405 = getelementptr inbounds %struct.GPR, %struct.GPR* %5404, i32 0, i32 1
  %5406 = getelementptr inbounds %struct.Reg, %struct.Reg* %5405, i32 0, i32 0
  %EAX.i289 = bitcast %union.anon* %5406 to i32*
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 7
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %RDX.i290 = bitcast %union.anon* %5409 to i64*
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5411 = getelementptr inbounds %struct.GPR, %struct.GPR* %5410, i32 0, i32 9
  %5412 = getelementptr inbounds %struct.Reg, %struct.Reg* %5411, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5412 to i64*
  %5413 = load i64, i64* %RDX.i290
  %5414 = load i64, i64* %RSI.i
  %5415 = mul i64 %5414, 4
  %5416 = add i64 %5415, %5413
  %5417 = load i32, i32* %EAX.i289
  %5418 = zext i32 %5417 to i64
  %5419 = load i64, i64* %PC.i288
  %5420 = add i64 %5419, 3
  store i64 %5420, i64* %PC.i288
  %5421 = inttoptr i64 %5416 to i32*
  store i32 %5417, i32* %5421
  store %struct.Memory* %loadMem_4a374b, %struct.Memory** %MEMORY
  br label %block_.L_4a374e

block_.L_4a374e:                                  ; preds = %block_.L_4a3724, %block_.L_4a371f
  %loadMem_4a374e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5423 = getelementptr inbounds %struct.GPR, %struct.GPR* %5422, i32 0, i32 33
  %5424 = getelementptr inbounds %struct.Reg, %struct.Reg* %5423, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5424 to i64*
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5426 = getelementptr inbounds %struct.GPR, %struct.GPR* %5425, i32 0, i32 1
  %5427 = getelementptr inbounds %struct.Reg, %struct.Reg* %5426, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %5427 to i64*
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5429 = getelementptr inbounds %struct.GPR, %struct.GPR* %5428, i32 0, i32 15
  %5430 = getelementptr inbounds %struct.Reg, %struct.Reg* %5429, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %5430 to i64*
  %5431 = load i64, i64* %RBP.i287
  %5432 = sub i64 %5431, 52
  %5433 = load i64, i64* %PC.i285
  %5434 = add i64 %5433, 3
  store i64 %5434, i64* %PC.i285
  %5435 = inttoptr i64 %5432 to i32*
  %5436 = load i32, i32* %5435
  %5437 = zext i32 %5436 to i64
  store i64 %5437, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_4a374e, %struct.Memory** %MEMORY
  %loadMem_4a3751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 33
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5440 to i64*
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 1
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %EAX.i283 = bitcast %union.anon* %5443 to i32*
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 5
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %5446 to i64*
  %5447 = load i32, i32* %EAX.i283
  %5448 = zext i32 %5447 to i64
  %5449 = load i64, i64* %PC.i282
  %5450 = add i64 %5449, 2
  store i64 %5450, i64* %PC.i282
  %5451 = and i64 %5448, 4294967295
  store i64 %5451, i64* %RCX.i284, align 8
  store %struct.Memory* %loadMem_4a3751, %struct.Memory** %MEMORY
  %loadMem_4a3753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 33
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5454 to i64*
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5456 = getelementptr inbounds %struct.GPR, %struct.GPR* %5455, i32 0, i32 1
  %5457 = getelementptr inbounds %struct.Reg, %struct.Reg* %5456, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %5457 to i64*
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5459 = getelementptr inbounds %struct.GPR, %struct.GPR* %5458, i32 0, i32 5
  %5460 = getelementptr inbounds %struct.Reg, %struct.Reg* %5459, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %5460 to i64*
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5462 = getelementptr inbounds %struct.GPR, %struct.GPR* %5461, i32 0, i32 15
  %5463 = getelementptr inbounds %struct.Reg, %struct.Reg* %5462, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %5463 to i64*
  %5464 = load i64, i64* %RBP.i281
  %5465 = load i64, i64* %RCX.i280
  %5466 = mul i64 %5465, 4
  %5467 = add i64 %5464, -336
  %5468 = add i64 %5467, %5466
  %5469 = load i64, i64* %PC.i278
  %5470 = add i64 %5469, 7
  store i64 %5470, i64* %PC.i278
  %5471 = inttoptr i64 %5468 to i32*
  %5472 = load i32, i32* %5471
  %5473 = zext i32 %5472 to i64
  store i64 %5473, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_4a3753, %struct.Memory** %MEMORY
  %loadMem_4a375a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5475 = getelementptr inbounds %struct.GPR, %struct.GPR* %5474, i32 0, i32 33
  %5476 = getelementptr inbounds %struct.Reg, %struct.Reg* %5475, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5476 to i64*
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 1
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %EAX.i276 = bitcast %union.anon* %5479 to i32*
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 15
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %5482 to i64*
  %5483 = load i64, i64* %RBP.i277
  %5484 = sub i64 %5483, 68
  %5485 = load i32, i32* %EAX.i276
  %5486 = zext i32 %5485 to i64
  %5487 = load i64, i64* %PC.i275
  %5488 = add i64 %5487, 3
  store i64 %5488, i64* %PC.i275
  %5489 = inttoptr i64 %5484 to i32*
  store i32 %5485, i32* %5489
  store %struct.Memory* %loadMem_4a375a, %struct.Memory** %MEMORY
  %loadMem_4a375d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5491 = getelementptr inbounds %struct.GPR, %struct.GPR* %5490, i32 0, i32 33
  %5492 = getelementptr inbounds %struct.Reg, %struct.Reg* %5491, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5492 to i64*
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5494 = getelementptr inbounds %struct.GPR, %struct.GPR* %5493, i32 0, i32 1
  %5495 = getelementptr inbounds %struct.Reg, %struct.Reg* %5494, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %5495 to i64*
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5497 = getelementptr inbounds %struct.GPR, %struct.GPR* %5496, i32 0, i32 15
  %5498 = getelementptr inbounds %struct.Reg, %struct.Reg* %5497, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %5498 to i64*
  %5499 = load i64, i64* %RBP.i274
  %5500 = sub i64 %5499, 52
  %5501 = load i64, i64* %PC.i272
  %5502 = add i64 %5501, 3
  store i64 %5502, i64* %PC.i272
  %5503 = inttoptr i64 %5500 to i32*
  %5504 = load i32, i32* %5503
  %5505 = zext i32 %5504 to i64
  store i64 %5505, i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_4a375d, %struct.Memory** %MEMORY
  %loadMem_4a3760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5507 = getelementptr inbounds %struct.GPR, %struct.GPR* %5506, i32 0, i32 33
  %5508 = getelementptr inbounds %struct.Reg, %struct.Reg* %5507, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5508 to i64*
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5510 = getelementptr inbounds %struct.GPR, %struct.GPR* %5509, i32 0, i32 1
  %5511 = getelementptr inbounds %struct.Reg, %struct.Reg* %5510, i32 0, i32 0
  %EAX.i270 = bitcast %union.anon* %5511 to i32*
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 5
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %RCX.i271 = bitcast %union.anon* %5514 to i64*
  %5515 = load i32, i32* %EAX.i270
  %5516 = zext i32 %5515 to i64
  %5517 = load i64, i64* %PC.i269
  %5518 = add i64 %5517, 2
  store i64 %5518, i64* %PC.i269
  %5519 = and i64 %5516, 4294967295
  store i64 %5519, i64* %RCX.i271, align 8
  store %struct.Memory* %loadMem_4a3760, %struct.Memory** %MEMORY
  %loadMem_4a3762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 33
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %5522 to i64*
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5524 = getelementptr inbounds %struct.GPR, %struct.GPR* %5523, i32 0, i32 1
  %5525 = getelementptr inbounds %struct.Reg, %struct.Reg* %5524, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %5525 to i64*
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5527 = getelementptr inbounds %struct.GPR, %struct.GPR* %5526, i32 0, i32 5
  %5528 = getelementptr inbounds %struct.Reg, %struct.Reg* %5527, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %5528 to i64*
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5530 = getelementptr inbounds %struct.GPR, %struct.GPR* %5529, i32 0, i32 15
  %5531 = getelementptr inbounds %struct.Reg, %struct.Reg* %5530, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %5531 to i64*
  %5532 = load i64, i64* %RBP.i268
  %5533 = load i64, i64* %RCX.i267
  %5534 = mul i64 %5533, 4
  %5535 = add i64 %5532, -336
  %5536 = add i64 %5535, %5534
  %5537 = load i64, i64* %PC.i265
  %5538 = add i64 %5537, 7
  store i64 %5538, i64* %PC.i265
  %5539 = inttoptr i64 %5536 to i32*
  %5540 = load i32, i32* %5539
  %5541 = zext i32 %5540 to i64
  store i64 %5541, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_4a3762, %struct.Memory** %MEMORY
  %loadMem_4a3769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 33
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %5544 to i64*
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5546 = getelementptr inbounds %struct.GPR, %struct.GPR* %5545, i32 0, i32 7
  %5547 = getelementptr inbounds %struct.Reg, %struct.Reg* %5546, i32 0, i32 0
  %RDX.i263 = bitcast %union.anon* %5547 to i64*
  %5548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5549 = getelementptr inbounds %struct.GPR, %struct.GPR* %5548, i32 0, i32 15
  %5550 = getelementptr inbounds %struct.Reg, %struct.Reg* %5549, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %5550 to i64*
  %5551 = load i64, i64* %RBP.i264
  %5552 = sub i64 %5551, 52
  %5553 = load i64, i64* %PC.i262
  %5554 = add i64 %5553, 3
  store i64 %5554, i64* %PC.i262
  %5555 = inttoptr i64 %5552 to i32*
  %5556 = load i32, i32* %5555
  %5557 = zext i32 %5556 to i64
  store i64 %5557, i64* %RDX.i263, align 8
  store %struct.Memory* %loadMem_4a3769, %struct.Memory** %MEMORY
  %loadMem_4a376c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 33
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %5560 to i64*
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 7
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %EDX.i260 = bitcast %union.anon* %5563 to i32*
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5565 = getelementptr inbounds %struct.GPR, %struct.GPR* %5564, i32 0, i32 5
  %5566 = getelementptr inbounds %struct.Reg, %struct.Reg* %5565, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %5566 to i64*
  %5567 = load i32, i32* %EDX.i260
  %5568 = zext i32 %5567 to i64
  %5569 = load i64, i64* %PC.i259
  %5570 = add i64 %5569, 2
  store i64 %5570, i64* %PC.i259
  %5571 = and i64 %5568, 4294967295
  store i64 %5571, i64* %RCX.i261, align 8
  store %struct.Memory* %loadMem_4a376c, %struct.Memory** %MEMORY
  %loadMem_4a376e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5573 = getelementptr inbounds %struct.GPR, %struct.GPR* %5572, i32 0, i32 33
  %5574 = getelementptr inbounds %struct.Reg, %struct.Reg* %5573, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5574 to i64*
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5576 = getelementptr inbounds %struct.GPR, %struct.GPR* %5575, i32 0, i32 1
  %5577 = getelementptr inbounds %struct.Reg, %struct.Reg* %5576, i32 0, i32 0
  %EAX.i256 = bitcast %union.anon* %5577 to i32*
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 5
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %5580 to i64*
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 15
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %5583 to i64*
  %5584 = load i64, i64* %RBP.i258
  %5585 = load i64, i64* %RCX.i257
  %5586 = mul i64 %5585, 4
  %5587 = add i64 %5584, -464
  %5588 = add i64 %5587, %5586
  %5589 = load i32, i32* %EAX.i256
  %5590 = zext i32 %5589 to i64
  %5591 = load i64, i64* %PC.i255
  %5592 = add i64 %5591, 7
  store i64 %5592, i64* %PC.i255
  %5593 = inttoptr i64 %5588 to i32*
  store i32 %5589, i32* %5593
  store %struct.Memory* %loadMem_4a376e, %struct.Memory** %MEMORY
  %loadMem_4a3775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 33
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5596 to i64*
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 1
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %5599 to i64*
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 15
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %5602 to i64*
  %5603 = load i64, i64* %RBP.i254
  %5604 = sub i64 %5603, 52
  %5605 = load i64, i64* %PC.i252
  %5606 = add i64 %5605, 3
  store i64 %5606, i64* %PC.i252
  %5607 = inttoptr i64 %5604 to i32*
  %5608 = load i32, i32* %5607
  %5609 = zext i32 %5608 to i64
  store i64 %5609, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_4a3775, %struct.Memory** %MEMORY
  %loadMem_4a3778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5611 = getelementptr inbounds %struct.GPR, %struct.GPR* %5610, i32 0, i32 33
  %5612 = getelementptr inbounds %struct.Reg, %struct.Reg* %5611, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5612 to i64*
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 1
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %EAX.i250 = bitcast %union.anon* %5615 to i32*
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5617 = getelementptr inbounds %struct.GPR, %struct.GPR* %5616, i32 0, i32 15
  %5618 = getelementptr inbounds %struct.Reg, %struct.Reg* %5617, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %5618 to i64*
  %5619 = load i64, i64* %RBP.i251
  %5620 = sub i64 %5619, 60
  %5621 = load i32, i32* %EAX.i250
  %5622 = zext i32 %5621 to i64
  %5623 = load i64, i64* %PC.i249
  %5624 = add i64 %5623, 3
  store i64 %5624, i64* %PC.i249
  %5625 = inttoptr i64 %5620 to i32*
  store i32 %5621, i32* %5625
  store %struct.Memory* %loadMem_4a3778, %struct.Memory** %MEMORY
  %loadMem_4a377b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5627 = getelementptr inbounds %struct.GPR, %struct.GPR* %5626, i32 0, i32 33
  %5628 = getelementptr inbounds %struct.Reg, %struct.Reg* %5627, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5628 to i64*
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5630 = getelementptr inbounds %struct.GPR, %struct.GPR* %5629, i32 0, i32 1
  %5631 = getelementptr inbounds %struct.Reg, %struct.Reg* %5630, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %5631 to i64*
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5633 = getelementptr inbounds %struct.GPR, %struct.GPR* %5632, i32 0, i32 15
  %5634 = getelementptr inbounds %struct.Reg, %struct.Reg* %5633, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %5634 to i64*
  %5635 = load i64, i64* %RBP.i248
  %5636 = sub i64 %5635, 52
  %5637 = load i64, i64* %PC.i246
  %5638 = add i64 %5637, 3
  store i64 %5638, i64* %PC.i246
  %5639 = inttoptr i64 %5636 to i32*
  %5640 = load i32, i32* %5639
  %5641 = zext i32 %5640 to i64
  store i64 %5641, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_4a377b, %struct.Memory** %MEMORY
  %loadMem_4a377e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 33
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5644 to i64*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 1
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %EAX.i244 = bitcast %union.anon* %5647 to i32*
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 15
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %5650 to i64*
  %5651 = load i64, i64* %RBP.i245
  %5652 = sub i64 %5651, 56
  %5653 = load i32, i32* %EAX.i244
  %5654 = zext i32 %5653 to i64
  %5655 = load i64, i64* %PC.i243
  %5656 = add i64 %5655, 3
  store i64 %5656, i64* %PC.i243
  %5657 = inttoptr i64 %5652 to i32*
  store i32 %5653, i32* %5657
  store %struct.Memory* %loadMem_4a377e, %struct.Memory** %MEMORY
  br label %block_.L_4a3781

block_.L_4a3781:                                  ; preds = %block_.L_4a37d1, %block_.L_4a374e
  %loadMem_4a3781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 33
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5660 to i64*
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 1
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %5663 to i64*
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5665 = getelementptr inbounds %struct.GPR, %struct.GPR* %5664, i32 0, i32 15
  %5666 = getelementptr inbounds %struct.Reg, %struct.Reg* %5665, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %5666 to i64*
  %5667 = load i64, i64* %RBP.i242
  %5668 = sub i64 %5667, 56
  %5669 = load i64, i64* %PC.i240
  %5670 = add i64 %5669, 3
  store i64 %5670, i64* %PC.i240
  %5671 = inttoptr i64 %5668 to i32*
  %5672 = load i32, i32* %5671
  %5673 = zext i32 %5672 to i64
  store i64 %5673, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_4a3781, %struct.Memory** %MEMORY
  %loadMem_4a3784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 33
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5676 to i64*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 1
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %EAX.i238 = bitcast %union.anon* %5679 to i32*
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5681 = getelementptr inbounds %struct.GPR, %struct.GPR* %5680, i32 0, i32 15
  %5682 = getelementptr inbounds %struct.Reg, %struct.Reg* %5681, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %5682 to i64*
  %5683 = load i32, i32* %EAX.i238
  %5684 = zext i32 %5683 to i64
  %5685 = load i64, i64* %RBP.i239
  %5686 = sub i64 %5685, 12
  %5687 = load i64, i64* %PC.i237
  %5688 = add i64 %5687, 3
  store i64 %5688, i64* %PC.i237
  %5689 = inttoptr i64 %5686 to i32*
  %5690 = load i32, i32* %5689
  %5691 = sub i32 %5683, %5690
  %5692 = icmp ult i32 %5683, %5690
  %5693 = zext i1 %5692 to i8
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5693, i8* %5694, align 1
  %5695 = and i32 %5691, 255
  %5696 = call i32 @llvm.ctpop.i32(i32 %5695)
  %5697 = trunc i32 %5696 to i8
  %5698 = and i8 %5697, 1
  %5699 = xor i8 %5698, 1
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5699, i8* %5700, align 1
  %5701 = xor i32 %5690, %5683
  %5702 = xor i32 %5701, %5691
  %5703 = lshr i32 %5702, 4
  %5704 = trunc i32 %5703 to i8
  %5705 = and i8 %5704, 1
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5705, i8* %5706, align 1
  %5707 = icmp eq i32 %5691, 0
  %5708 = zext i1 %5707 to i8
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5708, i8* %5709, align 1
  %5710 = lshr i32 %5691, 31
  %5711 = trunc i32 %5710 to i8
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5711, i8* %5712, align 1
  %5713 = lshr i32 %5683, 31
  %5714 = lshr i32 %5690, 31
  %5715 = xor i32 %5714, %5713
  %5716 = xor i32 %5710, %5713
  %5717 = add i32 %5716, %5715
  %5718 = icmp eq i32 %5717, 2
  %5719 = zext i1 %5718 to i8
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5719, i8* %5720, align 1
  store %struct.Memory* %loadMem_4a3784, %struct.Memory** %MEMORY
  %loadMem_4a3787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 33
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5723 to i64*
  %5724 = load i64, i64* %PC.i236
  %5725 = add i64 %5724, 88
  %5726 = load i64, i64* %PC.i236
  %5727 = add i64 %5726, 6
  %5728 = load i64, i64* %PC.i236
  %5729 = add i64 %5728, 6
  store i64 %5729, i64* %PC.i236
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5731 = load i8, i8* %5730, align 1
  %5732 = icmp eq i8 %5731, 0
  %5733 = zext i1 %5732 to i8
  store i8 %5733, i8* %BRANCH_TAKEN, align 1
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5735 = select i1 %5732, i64 %5725, i64 %5727
  store i64 %5735, i64* %5734, align 8
  store %struct.Memory* %loadMem_4a3787, %struct.Memory** %MEMORY
  %loadBr_4a3787 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3787 = icmp eq i8 %loadBr_4a3787, 1
  br i1 %cmpBr_4a3787, label %block_.L_4a37df, label %block_4a378d

block_4a378d:                                     ; preds = %block_.L_4a3781
  %loadMem_4a378d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 33
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5738 to i64*
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5740 = getelementptr inbounds %struct.GPR, %struct.GPR* %5739, i32 0, i32 1
  %5741 = getelementptr inbounds %struct.Reg, %struct.Reg* %5740, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %5741 to i64*
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5743 = getelementptr inbounds %struct.GPR, %struct.GPR* %5742, i32 0, i32 15
  %5744 = getelementptr inbounds %struct.Reg, %struct.Reg* %5743, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %5744 to i64*
  %5745 = load i64, i64* %RBP.i235
  %5746 = sub i64 %5745, 56
  %5747 = load i64, i64* %PC.i233
  %5748 = add i64 %5747, 3
  store i64 %5748, i64* %PC.i233
  %5749 = inttoptr i64 %5746 to i32*
  %5750 = load i32, i32* %5749
  %5751 = zext i32 %5750 to i64
  store i64 %5751, i64* %RAX.i234, align 8
  store %struct.Memory* %loadMem_4a378d, %struct.Memory** %MEMORY
  %loadMem_4a3790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5753 = getelementptr inbounds %struct.GPR, %struct.GPR* %5752, i32 0, i32 33
  %5754 = getelementptr inbounds %struct.Reg, %struct.Reg* %5753, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5754 to i64*
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5756 = getelementptr inbounds %struct.GPR, %struct.GPR* %5755, i32 0, i32 1
  %5757 = getelementptr inbounds %struct.Reg, %struct.Reg* %5756, i32 0, i32 0
  %EAX.i231 = bitcast %union.anon* %5757 to i32*
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 5
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %RCX.i232 = bitcast %union.anon* %5760 to i64*
  %5761 = load i32, i32* %EAX.i231
  %5762 = zext i32 %5761 to i64
  %5763 = load i64, i64* %PC.i230
  %5764 = add i64 %5763, 2
  store i64 %5764, i64* %PC.i230
  %5765 = and i64 %5762, 4294967295
  store i64 %5765, i64* %RCX.i232, align 8
  store %struct.Memory* %loadMem_4a3790, %struct.Memory** %MEMORY
  %loadMem_4a3792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 33
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %5768 to i64*
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5770 = getelementptr inbounds %struct.GPR, %struct.GPR* %5769, i32 0, i32 1
  %5771 = getelementptr inbounds %struct.Reg, %struct.Reg* %5770, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %5771 to i64*
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5773 = getelementptr inbounds %struct.GPR, %struct.GPR* %5772, i32 0, i32 5
  %5774 = getelementptr inbounds %struct.Reg, %struct.Reg* %5773, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %5774 to i64*
  %5775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5776 = getelementptr inbounds %struct.GPR, %struct.GPR* %5775, i32 0, i32 15
  %5777 = getelementptr inbounds %struct.Reg, %struct.Reg* %5776, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %5777 to i64*
  %5778 = load i64, i64* %RBP.i229
  %5779 = load i64, i64* %RCX.i228
  %5780 = mul i64 %5779, 4
  %5781 = add i64 %5778, -208
  %5782 = add i64 %5781, %5780
  %5783 = load i64, i64* %PC.i226
  %5784 = add i64 %5783, 7
  store i64 %5784, i64* %PC.i226
  %5785 = inttoptr i64 %5782 to i32*
  %5786 = load i32, i32* %5785
  %5787 = zext i32 %5786 to i64
  store i64 %5787, i64* %RAX.i227, align 8
  store %struct.Memory* %loadMem_4a3792, %struct.Memory** %MEMORY
  %loadMem_4a3799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5789 = getelementptr inbounds %struct.GPR, %struct.GPR* %5788, i32 0, i32 33
  %5790 = getelementptr inbounds %struct.Reg, %struct.Reg* %5789, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %5790 to i64*
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5792 = getelementptr inbounds %struct.GPR, %struct.GPR* %5791, i32 0, i32 7
  %5793 = getelementptr inbounds %struct.Reg, %struct.Reg* %5792, i32 0, i32 0
  %RDX.i224 = bitcast %union.anon* %5793 to i64*
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5795 = getelementptr inbounds %struct.GPR, %struct.GPR* %5794, i32 0, i32 15
  %5796 = getelementptr inbounds %struct.Reg, %struct.Reg* %5795, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %5796 to i64*
  %5797 = load i64, i64* %RBP.i225
  %5798 = sub i64 %5797, 52
  %5799 = load i64, i64* %PC.i223
  %5800 = add i64 %5799, 3
  store i64 %5800, i64* %PC.i223
  %5801 = inttoptr i64 %5798 to i32*
  %5802 = load i32, i32* %5801
  %5803 = zext i32 %5802 to i64
  store i64 %5803, i64* %RDX.i224, align 8
  store %struct.Memory* %loadMem_4a3799, %struct.Memory** %MEMORY
  %loadMem_4a379c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 33
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %5806 to i64*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 7
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %EDX.i221 = bitcast %union.anon* %5809 to i32*
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 5
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %5812 to i64*
  %5813 = load i32, i32* %EDX.i221
  %5814 = zext i32 %5813 to i64
  %5815 = load i64, i64* %PC.i220
  %5816 = add i64 %5815, 2
  store i64 %5816, i64* %PC.i220
  %5817 = and i64 %5814, 4294967295
  store i64 %5817, i64* %RCX.i222, align 8
  store %struct.Memory* %loadMem_4a379c, %struct.Memory** %MEMORY
  %loadMem_4a379e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5819 = getelementptr inbounds %struct.GPR, %struct.GPR* %5818, i32 0, i32 33
  %5820 = getelementptr inbounds %struct.Reg, %struct.Reg* %5819, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %5820 to i64*
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5822 = getelementptr inbounds %struct.GPR, %struct.GPR* %5821, i32 0, i32 1
  %5823 = getelementptr inbounds %struct.Reg, %struct.Reg* %5822, i32 0, i32 0
  %EAX.i217 = bitcast %union.anon* %5823 to i32*
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5825 = getelementptr inbounds %struct.GPR, %struct.GPR* %5824, i32 0, i32 5
  %5826 = getelementptr inbounds %struct.Reg, %struct.Reg* %5825, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %5826 to i64*
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 15
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %5829 to i64*
  %5830 = load i32, i32* %EAX.i217
  %5831 = zext i32 %5830 to i64
  %5832 = load i64, i64* %RBP.i219
  %5833 = load i64, i64* %RCX.i218
  %5834 = mul i64 %5833, 4
  %5835 = add i64 %5832, -336
  %5836 = add i64 %5835, %5834
  %5837 = load i64, i64* %PC.i216
  %5838 = add i64 %5837, 7
  store i64 %5838, i64* %PC.i216
  %5839 = inttoptr i64 %5836 to i32*
  %5840 = load i32, i32* %5839
  %5841 = sub i32 %5830, %5840
  %5842 = icmp ult i32 %5830, %5840
  %5843 = zext i1 %5842 to i8
  %5844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5843, i8* %5844, align 1
  %5845 = and i32 %5841, 255
  %5846 = call i32 @llvm.ctpop.i32(i32 %5845)
  %5847 = trunc i32 %5846 to i8
  %5848 = and i8 %5847, 1
  %5849 = xor i8 %5848, 1
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5849, i8* %5850, align 1
  %5851 = xor i32 %5840, %5830
  %5852 = xor i32 %5851, %5841
  %5853 = lshr i32 %5852, 4
  %5854 = trunc i32 %5853 to i8
  %5855 = and i8 %5854, 1
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5855, i8* %5856, align 1
  %5857 = icmp eq i32 %5841, 0
  %5858 = zext i1 %5857 to i8
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5858, i8* %5859, align 1
  %5860 = lshr i32 %5841, 31
  %5861 = trunc i32 %5860 to i8
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5861, i8* %5862, align 1
  %5863 = lshr i32 %5830, 31
  %5864 = lshr i32 %5840, 31
  %5865 = xor i32 %5864, %5863
  %5866 = xor i32 %5860, %5863
  %5867 = add i32 %5866, %5865
  %5868 = icmp eq i32 %5867, 2
  %5869 = zext i1 %5868 to i8
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5869, i8* %5870, align 1
  store %struct.Memory* %loadMem_4a379e, %struct.Memory** %MEMORY
  %loadMem_4a37a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 33
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %5873 to i64*
  %5874 = load i64, i64* %PC.i215
  %5875 = add i64 %5874, 39
  %5876 = load i64, i64* %PC.i215
  %5877 = add i64 %5876, 6
  %5878 = load i64, i64* %PC.i215
  %5879 = add i64 %5878, 6
  store i64 %5879, i64* %PC.i215
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5881 = load i8, i8* %5880, align 1
  store i8 %5881, i8* %BRANCH_TAKEN, align 1
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5883 = icmp ne i8 %5881, 0
  %5884 = select i1 %5883, i64 %5875, i64 %5877
  store i64 %5884, i64* %5882, align 8
  store %struct.Memory* %loadMem_4a37a5, %struct.Memory** %MEMORY
  %loadBr_4a37a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a37a5 = icmp eq i8 %loadBr_4a37a5, 1
  br i1 %cmpBr_4a37a5, label %block_.L_4a37cc, label %block_4a37ab

block_4a37ab:                                     ; preds = %block_4a378d
  %loadMem_4a37ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5886 = getelementptr inbounds %struct.GPR, %struct.GPR* %5885, i32 0, i32 33
  %5887 = getelementptr inbounds %struct.Reg, %struct.Reg* %5886, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %5887 to i64*
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5889 = getelementptr inbounds %struct.GPR, %struct.GPR* %5888, i32 0, i32 1
  %5890 = getelementptr inbounds %struct.Reg, %struct.Reg* %5889, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %5890 to i64*
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5892 = getelementptr inbounds %struct.GPR, %struct.GPR* %5891, i32 0, i32 15
  %5893 = getelementptr inbounds %struct.Reg, %struct.Reg* %5892, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %5893 to i64*
  %5894 = load i64, i64* %RBP.i214
  %5895 = sub i64 %5894, 60
  %5896 = load i64, i64* %PC.i212
  %5897 = add i64 %5896, 3
  store i64 %5897, i64* %PC.i212
  %5898 = inttoptr i64 %5895 to i32*
  %5899 = load i32, i32* %5898
  %5900 = zext i32 %5899 to i64
  store i64 %5900, i64* %RAX.i213, align 8
  store %struct.Memory* %loadMem_4a37ab, %struct.Memory** %MEMORY
  %loadMem_4a37ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5902 = getelementptr inbounds %struct.GPR, %struct.GPR* %5901, i32 0, i32 33
  %5903 = getelementptr inbounds %struct.Reg, %struct.Reg* %5902, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %5903 to i64*
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5905 = getelementptr inbounds %struct.GPR, %struct.GPR* %5904, i32 0, i32 1
  %5906 = getelementptr inbounds %struct.Reg, %struct.Reg* %5905, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %5906 to i64*
  %5907 = load i64, i64* %RAX.i211
  %5908 = load i64, i64* %PC.i210
  %5909 = add i64 %5908, 3
  store i64 %5909, i64* %PC.i210
  %5910 = trunc i64 %5907 to i32
  %5911 = add i32 1, %5910
  %5912 = zext i32 %5911 to i64
  store i64 %5912, i64* %RAX.i211, align 8
  %5913 = icmp ult i32 %5911, %5910
  %5914 = icmp ult i32 %5911, 1
  %5915 = or i1 %5913, %5914
  %5916 = zext i1 %5915 to i8
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5916, i8* %5917, align 1
  %5918 = and i32 %5911, 255
  %5919 = call i32 @llvm.ctpop.i32(i32 %5918)
  %5920 = trunc i32 %5919 to i8
  %5921 = and i8 %5920, 1
  %5922 = xor i8 %5921, 1
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5922, i8* %5923, align 1
  %5924 = xor i64 1, %5907
  %5925 = trunc i64 %5924 to i32
  %5926 = xor i32 %5925, %5911
  %5927 = lshr i32 %5926, 4
  %5928 = trunc i32 %5927 to i8
  %5929 = and i8 %5928, 1
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5929, i8* %5930, align 1
  %5931 = icmp eq i32 %5911, 0
  %5932 = zext i1 %5931 to i8
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5932, i8* %5933, align 1
  %5934 = lshr i32 %5911, 31
  %5935 = trunc i32 %5934 to i8
  %5936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5935, i8* %5936, align 1
  %5937 = lshr i32 %5910, 31
  %5938 = xor i32 %5934, %5937
  %5939 = add i32 %5938, %5934
  %5940 = icmp eq i32 %5939, 2
  %5941 = zext i1 %5940 to i8
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5941, i8* %5942, align 1
  store %struct.Memory* %loadMem_4a37ae, %struct.Memory** %MEMORY
  %loadMem_4a37b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 33
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %5945 to i64*
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5947 = getelementptr inbounds %struct.GPR, %struct.GPR* %5946, i32 0, i32 1
  %5948 = getelementptr inbounds %struct.Reg, %struct.Reg* %5947, i32 0, i32 0
  %EAX.i208 = bitcast %union.anon* %5948 to i32*
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5950 = getelementptr inbounds %struct.GPR, %struct.GPR* %5949, i32 0, i32 15
  %5951 = getelementptr inbounds %struct.Reg, %struct.Reg* %5950, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %5951 to i64*
  %5952 = load i64, i64* %RBP.i209
  %5953 = sub i64 %5952, 60
  %5954 = load i32, i32* %EAX.i208
  %5955 = zext i32 %5954 to i64
  %5956 = load i64, i64* %PC.i207
  %5957 = add i64 %5956, 3
  store i64 %5957, i64* %PC.i207
  %5958 = inttoptr i64 %5953 to i32*
  store i32 %5954, i32* %5958
  store %struct.Memory* %loadMem_4a37b1, %struct.Memory** %MEMORY
  %loadMem_4a37b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 33
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %5961 to i64*
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5963 = getelementptr inbounds %struct.GPR, %struct.GPR* %5962, i32 0, i32 1
  %5964 = getelementptr inbounds %struct.Reg, %struct.Reg* %5963, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %5964 to i64*
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5966 = getelementptr inbounds %struct.GPR, %struct.GPR* %5965, i32 0, i32 15
  %5967 = getelementptr inbounds %struct.Reg, %struct.Reg* %5966, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %5967 to i64*
  %5968 = load i64, i64* %RBP.i206
  %5969 = sub i64 %5968, 56
  %5970 = load i64, i64* %PC.i204
  %5971 = add i64 %5970, 3
  store i64 %5971, i64* %PC.i204
  %5972 = inttoptr i64 %5969 to i32*
  %5973 = load i32, i32* %5972
  %5974 = zext i32 %5973 to i64
  store i64 %5974, i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_4a37b4, %struct.Memory** %MEMORY
  %loadMem_4a37b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5976 = getelementptr inbounds %struct.GPR, %struct.GPR* %5975, i32 0, i32 33
  %5977 = getelementptr inbounds %struct.Reg, %struct.Reg* %5976, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %5977 to i64*
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5979 = getelementptr inbounds %struct.GPR, %struct.GPR* %5978, i32 0, i32 1
  %5980 = getelementptr inbounds %struct.Reg, %struct.Reg* %5979, i32 0, i32 0
  %EAX.i202 = bitcast %union.anon* %5980 to i32*
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5982 = getelementptr inbounds %struct.GPR, %struct.GPR* %5981, i32 0, i32 5
  %5983 = getelementptr inbounds %struct.Reg, %struct.Reg* %5982, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %5983 to i64*
  %5984 = load i32, i32* %EAX.i202
  %5985 = zext i32 %5984 to i64
  %5986 = load i64, i64* %PC.i201
  %5987 = add i64 %5986, 2
  store i64 %5987, i64* %PC.i201
  %5988 = and i64 %5985, 4294967295
  store i64 %5988, i64* %RCX.i203, align 8
  store %struct.Memory* %loadMem_4a37b7, %struct.Memory** %MEMORY
  %loadMem_4a37b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5990 = getelementptr inbounds %struct.GPR, %struct.GPR* %5989, i32 0, i32 33
  %5991 = getelementptr inbounds %struct.Reg, %struct.Reg* %5990, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %5991 to i64*
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5993 = getelementptr inbounds %struct.GPR, %struct.GPR* %5992, i32 0, i32 1
  %5994 = getelementptr inbounds %struct.Reg, %struct.Reg* %5993, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %5994 to i64*
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 5
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %5997 to i64*
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5999 = getelementptr inbounds %struct.GPR, %struct.GPR* %5998, i32 0, i32 15
  %6000 = getelementptr inbounds %struct.Reg, %struct.Reg* %5999, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %6000 to i64*
  %6001 = load i64, i64* %RBP.i200
  %6002 = load i64, i64* %RCX.i199
  %6003 = mul i64 %6002, 4
  %6004 = add i64 %6001, -208
  %6005 = add i64 %6004, %6003
  %6006 = load i64, i64* %PC.i197
  %6007 = add i64 %6006, 7
  store i64 %6007, i64* %PC.i197
  %6008 = inttoptr i64 %6005 to i32*
  %6009 = load i32, i32* %6008
  %6010 = zext i32 %6009 to i64
  store i64 %6010, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_4a37b9, %struct.Memory** %MEMORY
  %loadMem_4a37c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6012 = getelementptr inbounds %struct.GPR, %struct.GPR* %6011, i32 0, i32 33
  %6013 = getelementptr inbounds %struct.Reg, %struct.Reg* %6012, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %6013 to i64*
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6015 = getelementptr inbounds %struct.GPR, %struct.GPR* %6014, i32 0, i32 7
  %6016 = getelementptr inbounds %struct.Reg, %struct.Reg* %6015, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %6016 to i64*
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6018 = getelementptr inbounds %struct.GPR, %struct.GPR* %6017, i32 0, i32 15
  %6019 = getelementptr inbounds %struct.Reg, %struct.Reg* %6018, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %6019 to i64*
  %6020 = load i64, i64* %RBP.i196
  %6021 = sub i64 %6020, 60
  %6022 = load i64, i64* %PC.i194
  %6023 = add i64 %6022, 3
  store i64 %6023, i64* %PC.i194
  %6024 = inttoptr i64 %6021 to i32*
  %6025 = load i32, i32* %6024
  %6026 = zext i32 %6025 to i64
  store i64 %6026, i64* %RDX.i195, align 8
  store %struct.Memory* %loadMem_4a37c0, %struct.Memory** %MEMORY
  %loadMem_4a37c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 33
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6029 to i64*
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6031 = getelementptr inbounds %struct.GPR, %struct.GPR* %6030, i32 0, i32 7
  %6032 = getelementptr inbounds %struct.Reg, %struct.Reg* %6031, i32 0, i32 0
  %EDX.i192 = bitcast %union.anon* %6032 to i32*
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6034 = getelementptr inbounds %struct.GPR, %struct.GPR* %6033, i32 0, i32 5
  %6035 = getelementptr inbounds %struct.Reg, %struct.Reg* %6034, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %6035 to i64*
  %6036 = load i32, i32* %EDX.i192
  %6037 = zext i32 %6036 to i64
  %6038 = load i64, i64* %PC.i191
  %6039 = add i64 %6038, 2
  store i64 %6039, i64* %PC.i191
  %6040 = and i64 %6037, 4294967295
  store i64 %6040, i64* %RCX.i193, align 8
  store %struct.Memory* %loadMem_4a37c3, %struct.Memory** %MEMORY
  %loadMem_4a37c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6042 = getelementptr inbounds %struct.GPR, %struct.GPR* %6041, i32 0, i32 33
  %6043 = getelementptr inbounds %struct.Reg, %struct.Reg* %6042, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6043 to i64*
  %6044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6045 = getelementptr inbounds %struct.GPR, %struct.GPR* %6044, i32 0, i32 1
  %6046 = getelementptr inbounds %struct.Reg, %struct.Reg* %6045, i32 0, i32 0
  %EAX.i188 = bitcast %union.anon* %6046 to i32*
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6048 = getelementptr inbounds %struct.GPR, %struct.GPR* %6047, i32 0, i32 5
  %6049 = getelementptr inbounds %struct.Reg, %struct.Reg* %6048, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %6049 to i64*
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 15
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %6052 to i64*
  %6053 = load i64, i64* %RBP.i190
  %6054 = load i64, i64* %RCX.i189
  %6055 = mul i64 %6054, 4
  %6056 = add i64 %6053, -464
  %6057 = add i64 %6056, %6055
  %6058 = load i32, i32* %EAX.i188
  %6059 = zext i32 %6058 to i64
  %6060 = load i64, i64* %PC.i187
  %6061 = add i64 %6060, 7
  store i64 %6061, i64* %PC.i187
  %6062 = inttoptr i64 %6057 to i32*
  store i32 %6058, i32* %6062
  store %struct.Memory* %loadMem_4a37c5, %struct.Memory** %MEMORY
  br label %block_.L_4a37cc

block_.L_4a37cc:                                  ; preds = %block_4a37ab, %block_4a378d
  %loadMem_4a37cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6064 = getelementptr inbounds %struct.GPR, %struct.GPR* %6063, i32 0, i32 33
  %6065 = getelementptr inbounds %struct.Reg, %struct.Reg* %6064, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %6065 to i64*
  %6066 = load i64, i64* %PC.i186
  %6067 = add i64 %6066, 5
  %6068 = load i64, i64* %PC.i186
  %6069 = add i64 %6068, 5
  store i64 %6069, i64* %PC.i186
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6067, i64* %6070, align 8
  store %struct.Memory* %loadMem_4a37cc, %struct.Memory** %MEMORY
  br label %block_.L_4a37d1

block_.L_4a37d1:                                  ; preds = %block_.L_4a37cc
  %loadMem_4a37d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6072 = getelementptr inbounds %struct.GPR, %struct.GPR* %6071, i32 0, i32 33
  %6073 = getelementptr inbounds %struct.Reg, %struct.Reg* %6072, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6073 to i64*
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6075 = getelementptr inbounds %struct.GPR, %struct.GPR* %6074, i32 0, i32 1
  %6076 = getelementptr inbounds %struct.Reg, %struct.Reg* %6075, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %6076 to i64*
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 15
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %6079 to i64*
  %6080 = load i64, i64* %RBP.i185
  %6081 = sub i64 %6080, 56
  %6082 = load i64, i64* %PC.i183
  %6083 = add i64 %6082, 3
  store i64 %6083, i64* %PC.i183
  %6084 = inttoptr i64 %6081 to i32*
  %6085 = load i32, i32* %6084
  %6086 = zext i32 %6085 to i64
  store i64 %6086, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_4a37d1, %struct.Memory** %MEMORY
  %loadMem_4a37d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6088 = getelementptr inbounds %struct.GPR, %struct.GPR* %6087, i32 0, i32 33
  %6089 = getelementptr inbounds %struct.Reg, %struct.Reg* %6088, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6089 to i64*
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6091 = getelementptr inbounds %struct.GPR, %struct.GPR* %6090, i32 0, i32 1
  %6092 = getelementptr inbounds %struct.Reg, %struct.Reg* %6091, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %6092 to i64*
  %6093 = load i64, i64* %RAX.i182
  %6094 = load i64, i64* %PC.i181
  %6095 = add i64 %6094, 3
  store i64 %6095, i64* %PC.i181
  %6096 = trunc i64 %6093 to i32
  %6097 = add i32 1, %6096
  %6098 = zext i32 %6097 to i64
  store i64 %6098, i64* %RAX.i182, align 8
  %6099 = icmp ult i32 %6097, %6096
  %6100 = icmp ult i32 %6097, 1
  %6101 = or i1 %6099, %6100
  %6102 = zext i1 %6101 to i8
  %6103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6102, i8* %6103, align 1
  %6104 = and i32 %6097, 255
  %6105 = call i32 @llvm.ctpop.i32(i32 %6104)
  %6106 = trunc i32 %6105 to i8
  %6107 = and i8 %6106, 1
  %6108 = xor i8 %6107, 1
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6108, i8* %6109, align 1
  %6110 = xor i64 1, %6093
  %6111 = trunc i64 %6110 to i32
  %6112 = xor i32 %6111, %6097
  %6113 = lshr i32 %6112, 4
  %6114 = trunc i32 %6113 to i8
  %6115 = and i8 %6114, 1
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6115, i8* %6116, align 1
  %6117 = icmp eq i32 %6097, 0
  %6118 = zext i1 %6117 to i8
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6118, i8* %6119, align 1
  %6120 = lshr i32 %6097, 31
  %6121 = trunc i32 %6120 to i8
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6121, i8* %6122, align 1
  %6123 = lshr i32 %6096, 31
  %6124 = xor i32 %6120, %6123
  %6125 = add i32 %6124, %6120
  %6126 = icmp eq i32 %6125, 2
  %6127 = zext i1 %6126 to i8
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6127, i8* %6128, align 1
  store %struct.Memory* %loadMem_4a37d4, %struct.Memory** %MEMORY
  %loadMem_4a37d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 33
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6131 to i64*
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6133 = getelementptr inbounds %struct.GPR, %struct.GPR* %6132, i32 0, i32 1
  %6134 = getelementptr inbounds %struct.Reg, %struct.Reg* %6133, i32 0, i32 0
  %EAX.i179 = bitcast %union.anon* %6134 to i32*
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6136 = getelementptr inbounds %struct.GPR, %struct.GPR* %6135, i32 0, i32 15
  %6137 = getelementptr inbounds %struct.Reg, %struct.Reg* %6136, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %6137 to i64*
  %6138 = load i64, i64* %RBP.i180
  %6139 = sub i64 %6138, 56
  %6140 = load i32, i32* %EAX.i179
  %6141 = zext i32 %6140 to i64
  %6142 = load i64, i64* %PC.i178
  %6143 = add i64 %6142, 3
  store i64 %6143, i64* %PC.i178
  %6144 = inttoptr i64 %6139 to i32*
  store i32 %6140, i32* %6144
  store %struct.Memory* %loadMem_4a37d7, %struct.Memory** %MEMORY
  %loadMem_4a37da = load %struct.Memory*, %struct.Memory** %MEMORY
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6146 = getelementptr inbounds %struct.GPR, %struct.GPR* %6145, i32 0, i32 33
  %6147 = getelementptr inbounds %struct.Reg, %struct.Reg* %6146, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %6147 to i64*
  %6148 = load i64, i64* %PC.i177
  %6149 = add i64 %6148, -89
  %6150 = load i64, i64* %PC.i177
  %6151 = add i64 %6150, 5
  store i64 %6151, i64* %PC.i177
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6149, i64* %6152, align 8
  store %struct.Memory* %loadMem_4a37da, %struct.Memory** %MEMORY
  br label %block_.L_4a3781

block_.L_4a37df:                                  ; preds = %block_.L_4a3781
  %loadMem_4a37df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6154 = getelementptr inbounds %struct.GPR, %struct.GPR* %6153, i32 0, i32 33
  %6155 = getelementptr inbounds %struct.Reg, %struct.Reg* %6154, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %6155 to i64*
  %6156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6157 = getelementptr inbounds %struct.GPR, %struct.GPR* %6156, i32 0, i32 15
  %6158 = getelementptr inbounds %struct.Reg, %struct.Reg* %6157, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %6158 to i64*
  %6159 = load i64, i64* %RBP.i176
  %6160 = sub i64 %6159, 596
  %6161 = load i64, i64* %PC.i175
  %6162 = add i64 %6161, 10
  store i64 %6162, i64* %PC.i175
  %6163 = inttoptr i64 %6160 to i32*
  store i32 1, i32* %6163
  store %struct.Memory* %loadMem_4a37df, %struct.Memory** %MEMORY
  %loadMem_4a37e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6165 = getelementptr inbounds %struct.GPR, %struct.GPR* %6164, i32 0, i32 33
  %6166 = getelementptr inbounds %struct.Reg, %struct.Reg* %6165, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %6166 to i64*
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6168 = getelementptr inbounds %struct.GPR, %struct.GPR* %6167, i32 0, i32 1
  %6169 = getelementptr inbounds %struct.Reg, %struct.Reg* %6168, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %6169 to i64*
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6171 = getelementptr inbounds %struct.GPR, %struct.GPR* %6170, i32 0, i32 15
  %6172 = getelementptr inbounds %struct.Reg, %struct.Reg* %6171, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %6172 to i64*
  %6173 = load i64, i64* %RBP.i174
  %6174 = sub i64 %6173, 52
  %6175 = load i64, i64* %PC.i172
  %6176 = add i64 %6175, 3
  store i64 %6176, i64* %PC.i172
  %6177 = inttoptr i64 %6174 to i32*
  %6178 = load i32, i32* %6177
  %6179 = zext i32 %6178 to i64
  store i64 %6179, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_4a37e9, %struct.Memory** %MEMORY
  %loadMem_4a37ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6181 = getelementptr inbounds %struct.GPR, %struct.GPR* %6180, i32 0, i32 33
  %6182 = getelementptr inbounds %struct.Reg, %struct.Reg* %6181, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %6182 to i64*
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6184 = getelementptr inbounds %struct.GPR, %struct.GPR* %6183, i32 0, i32 1
  %6185 = getelementptr inbounds %struct.Reg, %struct.Reg* %6184, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %6185 to i64*
  %6186 = load i64, i64* %RAX.i171
  %6187 = load i64, i64* %PC.i170
  %6188 = add i64 %6187, 3
  store i64 %6188, i64* %PC.i170
  %6189 = trunc i64 %6186 to i32
  %6190 = add i32 1, %6189
  %6191 = zext i32 %6190 to i64
  store i64 %6191, i64* %RAX.i171, align 8
  %6192 = icmp ult i32 %6190, %6189
  %6193 = icmp ult i32 %6190, 1
  %6194 = or i1 %6192, %6193
  %6195 = zext i1 %6194 to i8
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6195, i8* %6196, align 1
  %6197 = and i32 %6190, 255
  %6198 = call i32 @llvm.ctpop.i32(i32 %6197)
  %6199 = trunc i32 %6198 to i8
  %6200 = and i8 %6199, 1
  %6201 = xor i8 %6200, 1
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6201, i8* %6202, align 1
  %6203 = xor i64 1, %6186
  %6204 = trunc i64 %6203 to i32
  %6205 = xor i32 %6204, %6190
  %6206 = lshr i32 %6205, 4
  %6207 = trunc i32 %6206 to i8
  %6208 = and i8 %6207, 1
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6208, i8* %6209, align 1
  %6210 = icmp eq i32 %6190, 0
  %6211 = zext i1 %6210 to i8
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6211, i8* %6212, align 1
  %6213 = lshr i32 %6190, 31
  %6214 = trunc i32 %6213 to i8
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6214, i8* %6215, align 1
  %6216 = lshr i32 %6189, 31
  %6217 = xor i32 %6213, %6216
  %6218 = add i32 %6217, %6213
  %6219 = icmp eq i32 %6218, 2
  %6220 = zext i1 %6219 to i8
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6220, i8* %6221, align 1
  store %struct.Memory* %loadMem_4a37ec, %struct.Memory** %MEMORY
  %loadMem_4a37ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6223 = getelementptr inbounds %struct.GPR, %struct.GPR* %6222, i32 0, i32 33
  %6224 = getelementptr inbounds %struct.Reg, %struct.Reg* %6223, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %6224 to i64*
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6226 = getelementptr inbounds %struct.GPR, %struct.GPR* %6225, i32 0, i32 1
  %6227 = getelementptr inbounds %struct.Reg, %struct.Reg* %6226, i32 0, i32 0
  %EAX.i168 = bitcast %union.anon* %6227 to i32*
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6229 = getelementptr inbounds %struct.GPR, %struct.GPR* %6228, i32 0, i32 15
  %6230 = getelementptr inbounds %struct.Reg, %struct.Reg* %6229, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %6230 to i64*
  %6231 = load i64, i64* %RBP.i169
  %6232 = sub i64 %6231, 56
  %6233 = load i32, i32* %EAX.i168
  %6234 = zext i32 %6233 to i64
  %6235 = load i64, i64* %PC.i167
  %6236 = add i64 %6235, 3
  store i64 %6236, i64* %PC.i167
  %6237 = inttoptr i64 %6232 to i32*
  store i32 %6233, i32* %6237
  store %struct.Memory* %loadMem_4a37ef, %struct.Memory** %MEMORY
  br label %block_.L_4a37f2

block_.L_4a37f2:                                  ; preds = %block_.L_4a3830, %block_.L_4a37df
  %loadMem_4a37f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 33
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6240 to i64*
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6242 = getelementptr inbounds %struct.GPR, %struct.GPR* %6241, i32 0, i32 1
  %6243 = getelementptr inbounds %struct.Reg, %struct.Reg* %6242, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %6243 to i64*
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6245 = getelementptr inbounds %struct.GPR, %struct.GPR* %6244, i32 0, i32 15
  %6246 = getelementptr inbounds %struct.Reg, %struct.Reg* %6245, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %6246 to i64*
  %6247 = load i64, i64* %RBP.i166
  %6248 = sub i64 %6247, 56
  %6249 = load i64, i64* %PC.i164
  %6250 = add i64 %6249, 3
  store i64 %6250, i64* %PC.i164
  %6251 = inttoptr i64 %6248 to i32*
  %6252 = load i32, i32* %6251
  %6253 = zext i32 %6252 to i64
  store i64 %6253, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_4a37f2, %struct.Memory** %MEMORY
  %loadMem_4a37f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6255 = getelementptr inbounds %struct.GPR, %struct.GPR* %6254, i32 0, i32 33
  %6256 = getelementptr inbounds %struct.Reg, %struct.Reg* %6255, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6256 to i64*
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6258 = getelementptr inbounds %struct.GPR, %struct.GPR* %6257, i32 0, i32 1
  %6259 = getelementptr inbounds %struct.Reg, %struct.Reg* %6258, i32 0, i32 0
  %EAX.i162 = bitcast %union.anon* %6259 to i32*
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6261 = getelementptr inbounds %struct.GPR, %struct.GPR* %6260, i32 0, i32 15
  %6262 = getelementptr inbounds %struct.Reg, %struct.Reg* %6261, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %6262 to i64*
  %6263 = load i32, i32* %EAX.i162
  %6264 = zext i32 %6263 to i64
  %6265 = load i64, i64* %RBP.i163
  %6266 = sub i64 %6265, 12
  %6267 = load i64, i64* %PC.i161
  %6268 = add i64 %6267, 3
  store i64 %6268, i64* %PC.i161
  %6269 = inttoptr i64 %6266 to i32*
  %6270 = load i32, i32* %6269
  %6271 = sub i32 %6263, %6270
  %6272 = icmp ult i32 %6263, %6270
  %6273 = zext i1 %6272 to i8
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6273, i8* %6274, align 1
  %6275 = and i32 %6271, 255
  %6276 = call i32 @llvm.ctpop.i32(i32 %6275)
  %6277 = trunc i32 %6276 to i8
  %6278 = and i8 %6277, 1
  %6279 = xor i8 %6278, 1
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6279, i8* %6280, align 1
  %6281 = xor i32 %6270, %6263
  %6282 = xor i32 %6281, %6271
  %6283 = lshr i32 %6282, 4
  %6284 = trunc i32 %6283 to i8
  %6285 = and i8 %6284, 1
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6285, i8* %6286, align 1
  %6287 = icmp eq i32 %6271, 0
  %6288 = zext i1 %6287 to i8
  %6289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6288, i8* %6289, align 1
  %6290 = lshr i32 %6271, 31
  %6291 = trunc i32 %6290 to i8
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6291, i8* %6292, align 1
  %6293 = lshr i32 %6263, 31
  %6294 = lshr i32 %6270, 31
  %6295 = xor i32 %6294, %6293
  %6296 = xor i32 %6290, %6293
  %6297 = add i32 %6296, %6295
  %6298 = icmp eq i32 %6297, 2
  %6299 = zext i1 %6298 to i8
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6299, i8* %6300, align 1
  store %struct.Memory* %loadMem_4a37f5, %struct.Memory** %MEMORY
  %loadMem_4a37f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6302 = getelementptr inbounds %struct.GPR, %struct.GPR* %6301, i32 0, i32 33
  %6303 = getelementptr inbounds %struct.Reg, %struct.Reg* %6302, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %6303 to i64*
  %6304 = load i64, i64* %PC.i160
  %6305 = add i64 %6304, 70
  %6306 = load i64, i64* %PC.i160
  %6307 = add i64 %6306, 6
  %6308 = load i64, i64* %PC.i160
  %6309 = add i64 %6308, 6
  store i64 %6309, i64* %PC.i160
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6311 = load i8, i8* %6310, align 1
  %6312 = icmp eq i8 %6311, 0
  %6313 = zext i1 %6312 to i8
  store i8 %6313, i8* %BRANCH_TAKEN, align 1
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6315 = select i1 %6312, i64 %6305, i64 %6307
  store i64 %6315, i64* %6314, align 8
  store %struct.Memory* %loadMem_4a37f8, %struct.Memory** %MEMORY
  %loadBr_4a37f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a37f8 = icmp eq i8 %loadBr_4a37f8, 1
  br i1 %cmpBr_4a37f8, label %block_.L_4a383e, label %block_4a37fe

block_4a37fe:                                     ; preds = %block_.L_4a37f2
  %loadMem_4a37fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6317 = getelementptr inbounds %struct.GPR, %struct.GPR* %6316, i32 0, i32 33
  %6318 = getelementptr inbounds %struct.Reg, %struct.Reg* %6317, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %6318 to i64*
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6320 = getelementptr inbounds %struct.GPR, %struct.GPR* %6319, i32 0, i32 1
  %6321 = getelementptr inbounds %struct.Reg, %struct.Reg* %6320, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %6321 to i64*
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6323 = getelementptr inbounds %struct.GPR, %struct.GPR* %6322, i32 0, i32 15
  %6324 = getelementptr inbounds %struct.Reg, %struct.Reg* %6323, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %6324 to i64*
  %6325 = load i64, i64* %RBP.i159
  %6326 = sub i64 %6325, 56
  %6327 = load i64, i64* %PC.i157
  %6328 = add i64 %6327, 3
  store i64 %6328, i64* %PC.i157
  %6329 = inttoptr i64 %6326 to i32*
  %6330 = load i32, i32* %6329
  %6331 = zext i32 %6330 to i64
  store i64 %6331, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_4a37fe, %struct.Memory** %MEMORY
  %loadMem_4a3801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6333 = getelementptr inbounds %struct.GPR, %struct.GPR* %6332, i32 0, i32 33
  %6334 = getelementptr inbounds %struct.Reg, %struct.Reg* %6333, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6334 to i64*
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6336 = getelementptr inbounds %struct.GPR, %struct.GPR* %6335, i32 0, i32 1
  %6337 = getelementptr inbounds %struct.Reg, %struct.Reg* %6336, i32 0, i32 0
  %EAX.i155 = bitcast %union.anon* %6337 to i32*
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6339 = getelementptr inbounds %struct.GPR, %struct.GPR* %6338, i32 0, i32 5
  %6340 = getelementptr inbounds %struct.Reg, %struct.Reg* %6339, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %6340 to i64*
  %6341 = load i32, i32* %EAX.i155
  %6342 = zext i32 %6341 to i64
  %6343 = load i64, i64* %PC.i154
  %6344 = add i64 %6343, 2
  store i64 %6344, i64* %PC.i154
  %6345 = and i64 %6342, 4294967295
  store i64 %6345, i64* %RCX.i156, align 8
  store %struct.Memory* %loadMem_4a3801, %struct.Memory** %MEMORY
  %loadMem_4a3803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6347 = getelementptr inbounds %struct.GPR, %struct.GPR* %6346, i32 0, i32 33
  %6348 = getelementptr inbounds %struct.Reg, %struct.Reg* %6347, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %6348 to i64*
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6350 = getelementptr inbounds %struct.GPR, %struct.GPR* %6349, i32 0, i32 1
  %6351 = getelementptr inbounds %struct.Reg, %struct.Reg* %6350, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %6351 to i64*
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6353 = getelementptr inbounds %struct.GPR, %struct.GPR* %6352, i32 0, i32 5
  %6354 = getelementptr inbounds %struct.Reg, %struct.Reg* %6353, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %6354 to i64*
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6356 = getelementptr inbounds %struct.GPR, %struct.GPR* %6355, i32 0, i32 15
  %6357 = getelementptr inbounds %struct.Reg, %struct.Reg* %6356, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %6357 to i64*
  %6358 = load i64, i64* %RBP.i153
  %6359 = load i64, i64* %RCX.i152
  %6360 = mul i64 %6359, 4
  %6361 = add i64 %6358, -464
  %6362 = add i64 %6361, %6360
  %6363 = load i64, i64* %PC.i150
  %6364 = add i64 %6363, 7
  store i64 %6364, i64* %PC.i150
  %6365 = inttoptr i64 %6362 to i32*
  %6366 = load i32, i32* %6365
  %6367 = zext i32 %6366 to i64
  store i64 %6367, i64* %RAX.i151, align 8
  store %struct.Memory* %loadMem_4a3803, %struct.Memory** %MEMORY
  %loadMem_4a380a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6369 = getelementptr inbounds %struct.GPR, %struct.GPR* %6368, i32 0, i32 33
  %6370 = getelementptr inbounds %struct.Reg, %struct.Reg* %6369, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %6370 to i64*
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6372 = getelementptr inbounds %struct.GPR, %struct.GPR* %6371, i32 0, i32 7
  %6373 = getelementptr inbounds %struct.Reg, %struct.Reg* %6372, i32 0, i32 0
  %RDX.i148 = bitcast %union.anon* %6373 to i64*
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6375 = getelementptr inbounds %struct.GPR, %struct.GPR* %6374, i32 0, i32 15
  %6376 = getelementptr inbounds %struct.Reg, %struct.Reg* %6375, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %6376 to i64*
  %6377 = load i64, i64* %RBP.i149
  %6378 = sub i64 %6377, 56
  %6379 = load i64, i64* %PC.i147
  %6380 = add i64 %6379, 3
  store i64 %6380, i64* %PC.i147
  %6381 = inttoptr i64 %6378 to i32*
  %6382 = load i32, i32* %6381
  %6383 = zext i32 %6382 to i64
  store i64 %6383, i64* %RDX.i148, align 8
  store %struct.Memory* %loadMem_4a380a, %struct.Memory** %MEMORY
  %loadMem_4a380d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6385 = getelementptr inbounds %struct.GPR, %struct.GPR* %6384, i32 0, i32 33
  %6386 = getelementptr inbounds %struct.Reg, %struct.Reg* %6385, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %6386 to i64*
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6388 = getelementptr inbounds %struct.GPR, %struct.GPR* %6387, i32 0, i32 7
  %6389 = getelementptr inbounds %struct.Reg, %struct.Reg* %6388, i32 0, i32 0
  %EDX.i145 = bitcast %union.anon* %6389 to i32*
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6391 = getelementptr inbounds %struct.GPR, %struct.GPR* %6390, i32 0, i32 5
  %6392 = getelementptr inbounds %struct.Reg, %struct.Reg* %6391, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %6392 to i64*
  %6393 = load i32, i32* %EDX.i145
  %6394 = zext i32 %6393 to i64
  %6395 = load i64, i64* %PC.i144
  %6396 = add i64 %6395, 2
  store i64 %6396, i64* %PC.i144
  %6397 = and i64 %6394, 4294967295
  store i64 %6397, i64* %RCX.i146, align 8
  store %struct.Memory* %loadMem_4a380d, %struct.Memory** %MEMORY
  %loadMem_4a380f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6399 = getelementptr inbounds %struct.GPR, %struct.GPR* %6398, i32 0, i32 33
  %6400 = getelementptr inbounds %struct.Reg, %struct.Reg* %6399, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6400 to i64*
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6402 = getelementptr inbounds %struct.GPR, %struct.GPR* %6401, i32 0, i32 1
  %6403 = getelementptr inbounds %struct.Reg, %struct.Reg* %6402, i32 0, i32 0
  %EAX.i141 = bitcast %union.anon* %6403 to i32*
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6405 = getelementptr inbounds %struct.GPR, %struct.GPR* %6404, i32 0, i32 5
  %6406 = getelementptr inbounds %struct.Reg, %struct.Reg* %6405, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %6406 to i64*
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6408 = getelementptr inbounds %struct.GPR, %struct.GPR* %6407, i32 0, i32 15
  %6409 = getelementptr inbounds %struct.Reg, %struct.Reg* %6408, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %6409 to i64*
  %6410 = load i32, i32* %EAX.i141
  %6411 = zext i32 %6410 to i64
  %6412 = load i64, i64* %RBP.i143
  %6413 = load i64, i64* %RCX.i142
  %6414 = mul i64 %6413, 4
  %6415 = add i64 %6412, -336
  %6416 = add i64 %6415, %6414
  %6417 = load i64, i64* %PC.i140
  %6418 = add i64 %6417, 7
  store i64 %6418, i64* %PC.i140
  %6419 = inttoptr i64 %6416 to i32*
  %6420 = load i32, i32* %6419
  %6421 = sub i32 %6410, %6420
  %6422 = icmp ult i32 %6410, %6420
  %6423 = zext i1 %6422 to i8
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6423, i8* %6424, align 1
  %6425 = and i32 %6421, 255
  %6426 = call i32 @llvm.ctpop.i32(i32 %6425)
  %6427 = trunc i32 %6426 to i8
  %6428 = and i8 %6427, 1
  %6429 = xor i8 %6428, 1
  %6430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6429, i8* %6430, align 1
  %6431 = xor i32 %6420, %6410
  %6432 = xor i32 %6431, %6421
  %6433 = lshr i32 %6432, 4
  %6434 = trunc i32 %6433 to i8
  %6435 = and i8 %6434, 1
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6435, i8* %6436, align 1
  %6437 = icmp eq i32 %6421, 0
  %6438 = zext i1 %6437 to i8
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6438, i8* %6439, align 1
  %6440 = lshr i32 %6421, 31
  %6441 = trunc i32 %6440 to i8
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6441, i8* %6442, align 1
  %6443 = lshr i32 %6410, 31
  %6444 = lshr i32 %6420, 31
  %6445 = xor i32 %6444, %6443
  %6446 = xor i32 %6440, %6443
  %6447 = add i32 %6446, %6445
  %6448 = icmp eq i32 %6447, 2
  %6449 = zext i1 %6448 to i8
  %6450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6449, i8* %6450, align 1
  store %struct.Memory* %loadMem_4a380f, %struct.Memory** %MEMORY
  %loadMem_4a3816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6452 = getelementptr inbounds %struct.GPR, %struct.GPR* %6451, i32 0, i32 33
  %6453 = getelementptr inbounds %struct.Reg, %struct.Reg* %6452, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %6453 to i64*
  %6454 = load i64, i64* %PC.i139
  %6455 = add i64 %6454, 21
  %6456 = load i64, i64* %PC.i139
  %6457 = add i64 %6456, 6
  %6458 = load i64, i64* %PC.i139
  %6459 = add i64 %6458, 6
  store i64 %6459, i64* %PC.i139
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6461 = load i8, i8* %6460, align 1
  store i8 %6461, i8* %BRANCH_TAKEN, align 1
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6463 = icmp ne i8 %6461, 0
  %6464 = select i1 %6463, i64 %6455, i64 %6457
  store i64 %6464, i64* %6462, align 8
  store %struct.Memory* %loadMem_4a3816, %struct.Memory** %MEMORY
  %loadBr_4a3816 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3816 = icmp eq i8 %loadBr_4a3816, 1
  br i1 %cmpBr_4a3816, label %block_.L_4a382b, label %block_4a381c

block_4a381c:                                     ; preds = %block_4a37fe
  %loadMem_4a381c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6466 = getelementptr inbounds %struct.GPR, %struct.GPR* %6465, i32 0, i32 33
  %6467 = getelementptr inbounds %struct.Reg, %struct.Reg* %6466, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6467 to i64*
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6469 = getelementptr inbounds %struct.GPR, %struct.GPR* %6468, i32 0, i32 15
  %6470 = getelementptr inbounds %struct.Reg, %struct.Reg* %6469, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %6470 to i64*
  %6471 = load i64, i64* %RBP.i138
  %6472 = sub i64 %6471, 596
  %6473 = load i64, i64* %PC.i137
  %6474 = add i64 %6473, 10
  store i64 %6474, i64* %PC.i137
  %6475 = inttoptr i64 %6472 to i32*
  store i32 0, i32* %6475
  store %struct.Memory* %loadMem_4a381c, %struct.Memory** %MEMORY
  %loadMem_4a3826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 33
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %6478 to i64*
  %6479 = load i64, i64* %PC.i136
  %6480 = add i64 %6479, 24
  %6481 = load i64, i64* %PC.i136
  %6482 = add i64 %6481, 5
  store i64 %6482, i64* %PC.i136
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6480, i64* %6483, align 8
  store %struct.Memory* %loadMem_4a3826, %struct.Memory** %MEMORY
  br label %block_.L_4a383e

block_.L_4a382b:                                  ; preds = %block_4a37fe
  %loadMem_4a382b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6485 = getelementptr inbounds %struct.GPR, %struct.GPR* %6484, i32 0, i32 33
  %6486 = getelementptr inbounds %struct.Reg, %struct.Reg* %6485, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %6486 to i64*
  %6487 = load i64, i64* %PC.i135
  %6488 = add i64 %6487, 5
  %6489 = load i64, i64* %PC.i135
  %6490 = add i64 %6489, 5
  store i64 %6490, i64* %PC.i135
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6488, i64* %6491, align 8
  store %struct.Memory* %loadMem_4a382b, %struct.Memory** %MEMORY
  br label %block_.L_4a3830

block_.L_4a3830:                                  ; preds = %block_.L_4a382b
  %loadMem_4a3830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6493 = getelementptr inbounds %struct.GPR, %struct.GPR* %6492, i32 0, i32 33
  %6494 = getelementptr inbounds %struct.Reg, %struct.Reg* %6493, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %6494 to i64*
  %6495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6496 = getelementptr inbounds %struct.GPR, %struct.GPR* %6495, i32 0, i32 1
  %6497 = getelementptr inbounds %struct.Reg, %struct.Reg* %6496, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %6497 to i64*
  %6498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6499 = getelementptr inbounds %struct.GPR, %struct.GPR* %6498, i32 0, i32 15
  %6500 = getelementptr inbounds %struct.Reg, %struct.Reg* %6499, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %6500 to i64*
  %6501 = load i64, i64* %RBP.i134
  %6502 = sub i64 %6501, 56
  %6503 = load i64, i64* %PC.i132
  %6504 = add i64 %6503, 3
  store i64 %6504, i64* %PC.i132
  %6505 = inttoptr i64 %6502 to i32*
  %6506 = load i32, i32* %6505
  %6507 = zext i32 %6506 to i64
  store i64 %6507, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_4a3830, %struct.Memory** %MEMORY
  %loadMem_4a3833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6509 = getelementptr inbounds %struct.GPR, %struct.GPR* %6508, i32 0, i32 33
  %6510 = getelementptr inbounds %struct.Reg, %struct.Reg* %6509, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %6510 to i64*
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6512 = getelementptr inbounds %struct.GPR, %struct.GPR* %6511, i32 0, i32 1
  %6513 = getelementptr inbounds %struct.Reg, %struct.Reg* %6512, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %6513 to i64*
  %6514 = load i64, i64* %RAX.i131
  %6515 = load i64, i64* %PC.i130
  %6516 = add i64 %6515, 3
  store i64 %6516, i64* %PC.i130
  %6517 = trunc i64 %6514 to i32
  %6518 = add i32 1, %6517
  %6519 = zext i32 %6518 to i64
  store i64 %6519, i64* %RAX.i131, align 8
  %6520 = icmp ult i32 %6518, %6517
  %6521 = icmp ult i32 %6518, 1
  %6522 = or i1 %6520, %6521
  %6523 = zext i1 %6522 to i8
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6523, i8* %6524, align 1
  %6525 = and i32 %6518, 255
  %6526 = call i32 @llvm.ctpop.i32(i32 %6525)
  %6527 = trunc i32 %6526 to i8
  %6528 = and i8 %6527, 1
  %6529 = xor i8 %6528, 1
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6529, i8* %6530, align 1
  %6531 = xor i64 1, %6514
  %6532 = trunc i64 %6531 to i32
  %6533 = xor i32 %6532, %6518
  %6534 = lshr i32 %6533, 4
  %6535 = trunc i32 %6534 to i8
  %6536 = and i8 %6535, 1
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6536, i8* %6537, align 1
  %6538 = icmp eq i32 %6518, 0
  %6539 = zext i1 %6538 to i8
  %6540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6539, i8* %6540, align 1
  %6541 = lshr i32 %6518, 31
  %6542 = trunc i32 %6541 to i8
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6542, i8* %6543, align 1
  %6544 = lshr i32 %6517, 31
  %6545 = xor i32 %6541, %6544
  %6546 = add i32 %6545, %6541
  %6547 = icmp eq i32 %6546, 2
  %6548 = zext i1 %6547 to i8
  %6549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6548, i8* %6549, align 1
  store %struct.Memory* %loadMem_4a3833, %struct.Memory** %MEMORY
  %loadMem_4a3836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6551 = getelementptr inbounds %struct.GPR, %struct.GPR* %6550, i32 0, i32 33
  %6552 = getelementptr inbounds %struct.Reg, %struct.Reg* %6551, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %6552 to i64*
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6554 = getelementptr inbounds %struct.GPR, %struct.GPR* %6553, i32 0, i32 1
  %6555 = getelementptr inbounds %struct.Reg, %struct.Reg* %6554, i32 0, i32 0
  %EAX.i128 = bitcast %union.anon* %6555 to i32*
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6557 = getelementptr inbounds %struct.GPR, %struct.GPR* %6556, i32 0, i32 15
  %6558 = getelementptr inbounds %struct.Reg, %struct.Reg* %6557, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %6558 to i64*
  %6559 = load i64, i64* %RBP.i129
  %6560 = sub i64 %6559, 56
  %6561 = load i32, i32* %EAX.i128
  %6562 = zext i32 %6561 to i64
  %6563 = load i64, i64* %PC.i127
  %6564 = add i64 %6563, 3
  store i64 %6564, i64* %PC.i127
  %6565 = inttoptr i64 %6560 to i32*
  store i32 %6561, i32* %6565
  store %struct.Memory* %loadMem_4a3836, %struct.Memory** %MEMORY
  %loadMem_4a3839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6567 = getelementptr inbounds %struct.GPR, %struct.GPR* %6566, i32 0, i32 33
  %6568 = getelementptr inbounds %struct.Reg, %struct.Reg* %6567, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %6568 to i64*
  %6569 = load i64, i64* %PC.i126
  %6570 = add i64 %6569, -71
  %6571 = load i64, i64* %PC.i126
  %6572 = add i64 %6571, 5
  store i64 %6572, i64* %PC.i126
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6570, i64* %6573, align 8
  store %struct.Memory* %loadMem_4a3839, %struct.Memory** %MEMORY
  br label %block_.L_4a37f2

block_.L_4a383e:                                  ; preds = %block_4a381c, %block_.L_4a37f2
  %loadMem_4a383e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6575 = getelementptr inbounds %struct.GPR, %struct.GPR* %6574, i32 0, i32 33
  %6576 = getelementptr inbounds %struct.Reg, %struct.Reg* %6575, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %6576 to i64*
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6578 = getelementptr inbounds %struct.GPR, %struct.GPR* %6577, i32 0, i32 15
  %6579 = getelementptr inbounds %struct.Reg, %struct.Reg* %6578, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %6579 to i64*
  %6580 = load i64, i64* %RBP.i125
  %6581 = sub i64 %6580, 596
  %6582 = load i64, i64* %PC.i124
  %6583 = add i64 %6582, 7
  store i64 %6583, i64* %PC.i124
  %6584 = inttoptr i64 %6581 to i32*
  %6585 = load i32, i32* %6584
  %6586 = sub i32 %6585, 1
  %6587 = icmp ult i32 %6585, 1
  %6588 = zext i1 %6587 to i8
  %6589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6588, i8* %6589, align 1
  %6590 = and i32 %6586, 255
  %6591 = call i32 @llvm.ctpop.i32(i32 %6590)
  %6592 = trunc i32 %6591 to i8
  %6593 = and i8 %6592, 1
  %6594 = xor i8 %6593, 1
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6594, i8* %6595, align 1
  %6596 = xor i32 %6585, 1
  %6597 = xor i32 %6596, %6586
  %6598 = lshr i32 %6597, 4
  %6599 = trunc i32 %6598 to i8
  %6600 = and i8 %6599, 1
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6600, i8* %6601, align 1
  %6602 = icmp eq i32 %6586, 0
  %6603 = zext i1 %6602 to i8
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6603, i8* %6604, align 1
  %6605 = lshr i32 %6586, 31
  %6606 = trunc i32 %6605 to i8
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6606, i8* %6607, align 1
  %6608 = lshr i32 %6585, 31
  %6609 = xor i32 %6605, %6608
  %6610 = add i32 %6609, %6608
  %6611 = icmp eq i32 %6610, 2
  %6612 = zext i1 %6611 to i8
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6612, i8* %6613, align 1
  store %struct.Memory* %loadMem_4a383e, %struct.Memory** %MEMORY
  %loadMem_4a3845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6615 = getelementptr inbounds %struct.GPR, %struct.GPR* %6614, i32 0, i32 33
  %6616 = getelementptr inbounds %struct.Reg, %struct.Reg* %6615, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %6616 to i64*
  %6617 = load i64, i64* %PC.i123
  %6618 = add i64 %6617, 20
  %6619 = load i64, i64* %PC.i123
  %6620 = add i64 %6619, 6
  %6621 = load i64, i64* %PC.i123
  %6622 = add i64 %6621, 6
  store i64 %6622, i64* %PC.i123
  %6623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6624 = load i8, i8* %6623, align 1
  %6625 = icmp eq i8 %6624, 0
  %6626 = zext i1 %6625 to i8
  store i8 %6626, i8* %BRANCH_TAKEN, align 1
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6628 = select i1 %6625, i64 %6618, i64 %6620
  store i64 %6628, i64* %6627, align 8
  store %struct.Memory* %loadMem_4a3845, %struct.Memory** %MEMORY
  %loadBr_4a3845 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3845 = icmp eq i8 %loadBr_4a3845, 1
  br i1 %cmpBr_4a3845, label %block_.L_4a3859, label %block_4a384b

block_4a384b:                                     ; preds = %block_.L_4a383e
  %loadMem_4a384b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6630 = getelementptr inbounds %struct.GPR, %struct.GPR* %6629, i32 0, i32 33
  %6631 = getelementptr inbounds %struct.Reg, %struct.Reg* %6630, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6631 to i64*
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6633 = getelementptr inbounds %struct.GPR, %struct.GPR* %6632, i32 0, i32 1
  %6634 = getelementptr inbounds %struct.Reg, %struct.Reg* %6633, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %6634 to i64*
  %6635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6636 = getelementptr inbounds %struct.GPR, %struct.GPR* %6635, i32 0, i32 15
  %6637 = getelementptr inbounds %struct.Reg, %struct.Reg* %6636, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %6637 to i64*
  %6638 = load i64, i64* %RBP.i122
  %6639 = sub i64 %6638, 52
  %6640 = load i64, i64* %PC.i120
  %6641 = add i64 %6640, 3
  store i64 %6641, i64* %PC.i120
  %6642 = inttoptr i64 %6639 to i32*
  %6643 = load i32, i32* %6642
  %6644 = zext i32 %6643 to i64
  store i64 %6644, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_4a384b, %struct.Memory** %MEMORY
  %loadMem_4a384e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6646 = getelementptr inbounds %struct.GPR, %struct.GPR* %6645, i32 0, i32 33
  %6647 = getelementptr inbounds %struct.Reg, %struct.Reg* %6646, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6647 to i64*
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6649 = getelementptr inbounds %struct.GPR, %struct.GPR* %6648, i32 0, i32 1
  %6650 = getelementptr inbounds %struct.Reg, %struct.Reg* %6649, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %6650 to i64*
  %6651 = load i64, i64* %RAX.i119
  %6652 = load i64, i64* %PC.i118
  %6653 = add i64 %6652, 3
  store i64 %6653, i64* %PC.i118
  %6654 = trunc i64 %6651 to i32
  %6655 = add i32 1, %6654
  %6656 = zext i32 %6655 to i64
  store i64 %6656, i64* %RAX.i119, align 8
  %6657 = icmp ult i32 %6655, %6654
  %6658 = icmp ult i32 %6655, 1
  %6659 = or i1 %6657, %6658
  %6660 = zext i1 %6659 to i8
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6660, i8* %6661, align 1
  %6662 = and i32 %6655, 255
  %6663 = call i32 @llvm.ctpop.i32(i32 %6662)
  %6664 = trunc i32 %6663 to i8
  %6665 = and i8 %6664, 1
  %6666 = xor i8 %6665, 1
  %6667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6666, i8* %6667, align 1
  %6668 = xor i64 1, %6651
  %6669 = trunc i64 %6668 to i32
  %6670 = xor i32 %6669, %6655
  %6671 = lshr i32 %6670, 4
  %6672 = trunc i32 %6671 to i8
  %6673 = and i8 %6672, 1
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6673, i8* %6674, align 1
  %6675 = icmp eq i32 %6655, 0
  %6676 = zext i1 %6675 to i8
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6676, i8* %6677, align 1
  %6678 = lshr i32 %6655, 31
  %6679 = trunc i32 %6678 to i8
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6679, i8* %6680, align 1
  %6681 = lshr i32 %6654, 31
  %6682 = xor i32 %6678, %6681
  %6683 = add i32 %6682, %6678
  %6684 = icmp eq i32 %6683, 2
  %6685 = zext i1 %6684 to i8
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6685, i8* %6686, align 1
  store %struct.Memory* %loadMem_4a384e, %struct.Memory** %MEMORY
  %loadMem_4a3851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6688 = getelementptr inbounds %struct.GPR, %struct.GPR* %6687, i32 0, i32 33
  %6689 = getelementptr inbounds %struct.Reg, %struct.Reg* %6688, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %6689 to i64*
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6691 = getelementptr inbounds %struct.GPR, %struct.GPR* %6690, i32 0, i32 1
  %6692 = getelementptr inbounds %struct.Reg, %struct.Reg* %6691, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %6692 to i32*
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6694 = getelementptr inbounds %struct.GPR, %struct.GPR* %6693, i32 0, i32 15
  %6695 = getelementptr inbounds %struct.Reg, %struct.Reg* %6694, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %6695 to i64*
  %6696 = load i64, i64* %RBP.i117
  %6697 = sub i64 %6696, 52
  %6698 = load i32, i32* %EAX.i116
  %6699 = zext i32 %6698 to i64
  %6700 = load i64, i64* %PC.i115
  %6701 = add i64 %6700, 3
  store i64 %6701, i64* %PC.i115
  %6702 = inttoptr i64 %6697 to i32*
  store i32 %6698, i32* %6702
  store %struct.Memory* %loadMem_4a3851, %struct.Memory** %MEMORY
  %loadMem_4a3854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 33
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %6705 to i64*
  %6706 = load i64, i64* %PC.i114
  %6707 = add i64 %6706, 81
  %6708 = load i64, i64* %PC.i114
  %6709 = add i64 %6708, 5
  store i64 %6709, i64* %PC.i114
  %6710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6707, i64* %6710, align 8
  store %struct.Memory* %loadMem_4a3854, %struct.Memory** %MEMORY
  br label %block_.L_4a38a5

block_.L_4a3859:                                  ; preds = %block_.L_4a383e
  %loadMem_4a3859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 33
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %6713 to i64*
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 15
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %6716 to i64*
  %6717 = load i64, i64* %RBP.i113
  %6718 = sub i64 %6717, 56
  %6719 = load i64, i64* %PC.i112
  %6720 = add i64 %6719, 7
  store i64 %6720, i64* %PC.i112
  %6721 = inttoptr i64 %6718 to i32*
  store i32 0, i32* %6721
  store %struct.Memory* %loadMem_4a3859, %struct.Memory** %MEMORY
  br label %block_.L_4a3860

block_.L_4a3860:                                  ; preds = %block_4a386c, %block_.L_4a3859
  %loadMem_4a3860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6723 = getelementptr inbounds %struct.GPR, %struct.GPR* %6722, i32 0, i32 33
  %6724 = getelementptr inbounds %struct.Reg, %struct.Reg* %6723, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %6724 to i64*
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6726 = getelementptr inbounds %struct.GPR, %struct.GPR* %6725, i32 0, i32 1
  %6727 = getelementptr inbounds %struct.Reg, %struct.Reg* %6726, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %6727 to i64*
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6729 = getelementptr inbounds %struct.GPR, %struct.GPR* %6728, i32 0, i32 15
  %6730 = getelementptr inbounds %struct.Reg, %struct.Reg* %6729, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %6730 to i64*
  %6731 = load i64, i64* %RBP.i111
  %6732 = sub i64 %6731, 56
  %6733 = load i64, i64* %PC.i109
  %6734 = add i64 %6733, 3
  store i64 %6734, i64* %PC.i109
  %6735 = inttoptr i64 %6732 to i32*
  %6736 = load i32, i32* %6735
  %6737 = zext i32 %6736 to i64
  store i64 %6737, i64* %RAX.i110, align 8
  store %struct.Memory* %loadMem_4a3860, %struct.Memory** %MEMORY
  %loadMem_4a3863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6739 = getelementptr inbounds %struct.GPR, %struct.GPR* %6738, i32 0, i32 33
  %6740 = getelementptr inbounds %struct.Reg, %struct.Reg* %6739, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %6740 to i64*
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6742 = getelementptr inbounds %struct.GPR, %struct.GPR* %6741, i32 0, i32 1
  %6743 = getelementptr inbounds %struct.Reg, %struct.Reg* %6742, i32 0, i32 0
  %EAX.i107 = bitcast %union.anon* %6743 to i32*
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6745 = getelementptr inbounds %struct.GPR, %struct.GPR* %6744, i32 0, i32 15
  %6746 = getelementptr inbounds %struct.Reg, %struct.Reg* %6745, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %6746 to i64*
  %6747 = load i32, i32* %EAX.i107
  %6748 = zext i32 %6747 to i64
  %6749 = load i64, i64* %RBP.i108
  %6750 = sub i64 %6749, 12
  %6751 = load i64, i64* %PC.i106
  %6752 = add i64 %6751, 3
  store i64 %6752, i64* %PC.i106
  %6753 = inttoptr i64 %6750 to i32*
  %6754 = load i32, i32* %6753
  %6755 = sub i32 %6747, %6754
  %6756 = icmp ult i32 %6747, %6754
  %6757 = zext i1 %6756 to i8
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6757, i8* %6758, align 1
  %6759 = and i32 %6755, 255
  %6760 = call i32 @llvm.ctpop.i32(i32 %6759)
  %6761 = trunc i32 %6760 to i8
  %6762 = and i8 %6761, 1
  %6763 = xor i8 %6762, 1
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6763, i8* %6764, align 1
  %6765 = xor i32 %6754, %6747
  %6766 = xor i32 %6765, %6755
  %6767 = lshr i32 %6766, 4
  %6768 = trunc i32 %6767 to i8
  %6769 = and i8 %6768, 1
  %6770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6769, i8* %6770, align 1
  %6771 = icmp eq i32 %6755, 0
  %6772 = zext i1 %6771 to i8
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6772, i8* %6773, align 1
  %6774 = lshr i32 %6755, 31
  %6775 = trunc i32 %6774 to i8
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6775, i8* %6776, align 1
  %6777 = lshr i32 %6747, 31
  %6778 = lshr i32 %6754, 31
  %6779 = xor i32 %6778, %6777
  %6780 = xor i32 %6774, %6777
  %6781 = add i32 %6780, %6779
  %6782 = icmp eq i32 %6781, 2
  %6783 = zext i1 %6782 to i8
  %6784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6783, i8* %6784, align 1
  store %struct.Memory* %loadMem_4a3863, %struct.Memory** %MEMORY
  %loadMem_4a3866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6786 = getelementptr inbounds %struct.GPR, %struct.GPR* %6785, i32 0, i32 33
  %6787 = getelementptr inbounds %struct.Reg, %struct.Reg* %6786, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6787 to i64*
  %6788 = load i64, i64* %PC.i105
  %6789 = add i64 %6788, 44
  %6790 = load i64, i64* %PC.i105
  %6791 = add i64 %6790, 6
  %6792 = load i64, i64* %PC.i105
  %6793 = add i64 %6792, 6
  store i64 %6793, i64* %PC.i105
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6795 = load i8, i8* %6794, align 1
  %6796 = icmp eq i8 %6795, 0
  %6797 = zext i1 %6796 to i8
  store i8 %6797, i8* %BRANCH_TAKEN, align 1
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6799 = select i1 %6796, i64 %6789, i64 %6791
  store i64 %6799, i64* %6798, align 8
  store %struct.Memory* %loadMem_4a3866, %struct.Memory** %MEMORY
  %loadBr_4a3866 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3866 = icmp eq i8 %loadBr_4a3866, 1
  br i1 %cmpBr_4a3866, label %block_.L_4a3892, label %block_4a386c

block_4a386c:                                     ; preds = %block_.L_4a3860
  %loadMem_4a386c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6801 = getelementptr inbounds %struct.GPR, %struct.GPR* %6800, i32 0, i32 33
  %6802 = getelementptr inbounds %struct.Reg, %struct.Reg* %6801, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6802 to i64*
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6804 = getelementptr inbounds %struct.GPR, %struct.GPR* %6803, i32 0, i32 1
  %6805 = getelementptr inbounds %struct.Reg, %struct.Reg* %6804, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %6805 to i64*
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6807 = getelementptr inbounds %struct.GPR, %struct.GPR* %6806, i32 0, i32 15
  %6808 = getelementptr inbounds %struct.Reg, %struct.Reg* %6807, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %6808 to i64*
  %6809 = load i64, i64* %RBP.i104
  %6810 = sub i64 %6809, 56
  %6811 = load i64, i64* %PC.i102
  %6812 = add i64 %6811, 3
  store i64 %6812, i64* %PC.i102
  %6813 = inttoptr i64 %6810 to i32*
  %6814 = load i32, i32* %6813
  %6815 = zext i32 %6814 to i64
  store i64 %6815, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_4a386c, %struct.Memory** %MEMORY
  %loadMem_4a386f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6817 = getelementptr inbounds %struct.GPR, %struct.GPR* %6816, i32 0, i32 33
  %6818 = getelementptr inbounds %struct.Reg, %struct.Reg* %6817, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6818 to i64*
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6820 = getelementptr inbounds %struct.GPR, %struct.GPR* %6819, i32 0, i32 1
  %6821 = getelementptr inbounds %struct.Reg, %struct.Reg* %6820, i32 0, i32 0
  %EAX.i100 = bitcast %union.anon* %6821 to i32*
  %6822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6823 = getelementptr inbounds %struct.GPR, %struct.GPR* %6822, i32 0, i32 5
  %6824 = getelementptr inbounds %struct.Reg, %struct.Reg* %6823, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %6824 to i64*
  %6825 = load i32, i32* %EAX.i100
  %6826 = zext i32 %6825 to i64
  %6827 = load i64, i64* %PC.i99
  %6828 = add i64 %6827, 2
  store i64 %6828, i64* %PC.i99
  %6829 = and i64 %6826, 4294967295
  store i64 %6829, i64* %RCX.i101, align 8
  store %struct.Memory* %loadMem_4a386f, %struct.Memory** %MEMORY
  %loadMem_4a3871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6831 = getelementptr inbounds %struct.GPR, %struct.GPR* %6830, i32 0, i32 33
  %6832 = getelementptr inbounds %struct.Reg, %struct.Reg* %6831, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %6832 to i64*
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6834 = getelementptr inbounds %struct.GPR, %struct.GPR* %6833, i32 0, i32 1
  %6835 = getelementptr inbounds %struct.Reg, %struct.Reg* %6834, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %6835 to i64*
  %6836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6837 = getelementptr inbounds %struct.GPR, %struct.GPR* %6836, i32 0, i32 5
  %6838 = getelementptr inbounds %struct.Reg, %struct.Reg* %6837, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %6838 to i64*
  %6839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6840 = getelementptr inbounds %struct.GPR, %struct.GPR* %6839, i32 0, i32 15
  %6841 = getelementptr inbounds %struct.Reg, %struct.Reg* %6840, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %6841 to i64*
  %6842 = load i64, i64* %RBP.i98
  %6843 = load i64, i64* %RCX.i97
  %6844 = mul i64 %6843, 4
  %6845 = add i64 %6842, -464
  %6846 = add i64 %6845, %6844
  %6847 = load i64, i64* %PC.i95
  %6848 = add i64 %6847, 7
  store i64 %6848, i64* %PC.i95
  %6849 = inttoptr i64 %6846 to i32*
  %6850 = load i32, i32* %6849
  %6851 = zext i32 %6850 to i64
  store i64 %6851, i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_4a3871, %struct.Memory** %MEMORY
  %loadMem_4a3878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6853 = getelementptr inbounds %struct.GPR, %struct.GPR* %6852, i32 0, i32 33
  %6854 = getelementptr inbounds %struct.Reg, %struct.Reg* %6853, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %6854 to i64*
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6856 = getelementptr inbounds %struct.GPR, %struct.GPR* %6855, i32 0, i32 7
  %6857 = getelementptr inbounds %struct.Reg, %struct.Reg* %6856, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %6857 to i64*
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6859 = getelementptr inbounds %struct.GPR, %struct.GPR* %6858, i32 0, i32 15
  %6860 = getelementptr inbounds %struct.Reg, %struct.Reg* %6859, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %6860 to i64*
  %6861 = load i64, i64* %RBP.i94
  %6862 = sub i64 %6861, 56
  %6863 = load i64, i64* %PC.i92
  %6864 = add i64 %6863, 3
  store i64 %6864, i64* %PC.i92
  %6865 = inttoptr i64 %6862 to i32*
  %6866 = load i32, i32* %6865
  %6867 = zext i32 %6866 to i64
  store i64 %6867, i64* %RDX.i93, align 8
  store %struct.Memory* %loadMem_4a3878, %struct.Memory** %MEMORY
  %loadMem_4a387b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6869 = getelementptr inbounds %struct.GPR, %struct.GPR* %6868, i32 0, i32 33
  %6870 = getelementptr inbounds %struct.Reg, %struct.Reg* %6869, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %6870 to i64*
  %6871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6872 = getelementptr inbounds %struct.GPR, %struct.GPR* %6871, i32 0, i32 7
  %6873 = getelementptr inbounds %struct.Reg, %struct.Reg* %6872, i32 0, i32 0
  %EDX.i90 = bitcast %union.anon* %6873 to i32*
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6875 = getelementptr inbounds %struct.GPR, %struct.GPR* %6874, i32 0, i32 5
  %6876 = getelementptr inbounds %struct.Reg, %struct.Reg* %6875, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %6876 to i64*
  %6877 = load i32, i32* %EDX.i90
  %6878 = zext i32 %6877 to i64
  %6879 = load i64, i64* %PC.i89
  %6880 = add i64 %6879, 2
  store i64 %6880, i64* %PC.i89
  %6881 = and i64 %6878, 4294967295
  store i64 %6881, i64* %RCX.i91, align 8
  store %struct.Memory* %loadMem_4a387b, %struct.Memory** %MEMORY
  %loadMem_4a387d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6883 = getelementptr inbounds %struct.GPR, %struct.GPR* %6882, i32 0, i32 33
  %6884 = getelementptr inbounds %struct.Reg, %struct.Reg* %6883, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %6884 to i64*
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6886 = getelementptr inbounds %struct.GPR, %struct.GPR* %6885, i32 0, i32 1
  %6887 = getelementptr inbounds %struct.Reg, %struct.Reg* %6886, i32 0, i32 0
  %EAX.i86 = bitcast %union.anon* %6887 to i32*
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6889 = getelementptr inbounds %struct.GPR, %struct.GPR* %6888, i32 0, i32 5
  %6890 = getelementptr inbounds %struct.Reg, %struct.Reg* %6889, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %6890 to i64*
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6892 = getelementptr inbounds %struct.GPR, %struct.GPR* %6891, i32 0, i32 15
  %6893 = getelementptr inbounds %struct.Reg, %struct.Reg* %6892, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %6893 to i64*
  %6894 = load i64, i64* %RBP.i88
  %6895 = load i64, i64* %RCX.i87
  %6896 = mul i64 %6895, 4
  %6897 = add i64 %6894, -208
  %6898 = add i64 %6897, %6896
  %6899 = load i32, i32* %EAX.i86
  %6900 = zext i32 %6899 to i64
  %6901 = load i64, i64* %PC.i85
  %6902 = add i64 %6901, 7
  store i64 %6902, i64* %PC.i85
  %6903 = inttoptr i64 %6898 to i32*
  store i32 %6899, i32* %6903
  store %struct.Memory* %loadMem_4a387d, %struct.Memory** %MEMORY
  %loadMem_4a3884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6905 = getelementptr inbounds %struct.GPR, %struct.GPR* %6904, i32 0, i32 33
  %6906 = getelementptr inbounds %struct.Reg, %struct.Reg* %6905, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %6906 to i64*
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6908 = getelementptr inbounds %struct.GPR, %struct.GPR* %6907, i32 0, i32 1
  %6909 = getelementptr inbounds %struct.Reg, %struct.Reg* %6908, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %6909 to i64*
  %6910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6911 = getelementptr inbounds %struct.GPR, %struct.GPR* %6910, i32 0, i32 15
  %6912 = getelementptr inbounds %struct.Reg, %struct.Reg* %6911, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %6912 to i64*
  %6913 = load i64, i64* %RBP.i84
  %6914 = sub i64 %6913, 56
  %6915 = load i64, i64* %PC.i82
  %6916 = add i64 %6915, 3
  store i64 %6916, i64* %PC.i82
  %6917 = inttoptr i64 %6914 to i32*
  %6918 = load i32, i32* %6917
  %6919 = zext i32 %6918 to i64
  store i64 %6919, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_4a3884, %struct.Memory** %MEMORY
  %loadMem_4a3887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6921 = getelementptr inbounds %struct.GPR, %struct.GPR* %6920, i32 0, i32 33
  %6922 = getelementptr inbounds %struct.Reg, %struct.Reg* %6921, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6922 to i64*
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6924 = getelementptr inbounds %struct.GPR, %struct.GPR* %6923, i32 0, i32 1
  %6925 = getelementptr inbounds %struct.Reg, %struct.Reg* %6924, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %6925 to i64*
  %6926 = load i64, i64* %RAX.i81
  %6927 = load i64, i64* %PC.i80
  %6928 = add i64 %6927, 3
  store i64 %6928, i64* %PC.i80
  %6929 = trunc i64 %6926 to i32
  %6930 = add i32 1, %6929
  %6931 = zext i32 %6930 to i64
  store i64 %6931, i64* %RAX.i81, align 8
  %6932 = icmp ult i32 %6930, %6929
  %6933 = icmp ult i32 %6930, 1
  %6934 = or i1 %6932, %6933
  %6935 = zext i1 %6934 to i8
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6935, i8* %6936, align 1
  %6937 = and i32 %6930, 255
  %6938 = call i32 @llvm.ctpop.i32(i32 %6937)
  %6939 = trunc i32 %6938 to i8
  %6940 = and i8 %6939, 1
  %6941 = xor i8 %6940, 1
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6941, i8* %6942, align 1
  %6943 = xor i64 1, %6926
  %6944 = trunc i64 %6943 to i32
  %6945 = xor i32 %6944, %6930
  %6946 = lshr i32 %6945, 4
  %6947 = trunc i32 %6946 to i8
  %6948 = and i8 %6947, 1
  %6949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6948, i8* %6949, align 1
  %6950 = icmp eq i32 %6930, 0
  %6951 = zext i1 %6950 to i8
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6951, i8* %6952, align 1
  %6953 = lshr i32 %6930, 31
  %6954 = trunc i32 %6953 to i8
  %6955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6954, i8* %6955, align 1
  %6956 = lshr i32 %6929, 31
  %6957 = xor i32 %6953, %6956
  %6958 = add i32 %6957, %6953
  %6959 = icmp eq i32 %6958, 2
  %6960 = zext i1 %6959 to i8
  %6961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6960, i8* %6961, align 1
  store %struct.Memory* %loadMem_4a3887, %struct.Memory** %MEMORY
  %loadMem_4a388a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6963 = getelementptr inbounds %struct.GPR, %struct.GPR* %6962, i32 0, i32 33
  %6964 = getelementptr inbounds %struct.Reg, %struct.Reg* %6963, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %6964 to i64*
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6966 = getelementptr inbounds %struct.GPR, %struct.GPR* %6965, i32 0, i32 1
  %6967 = getelementptr inbounds %struct.Reg, %struct.Reg* %6966, i32 0, i32 0
  %EAX.i78 = bitcast %union.anon* %6967 to i32*
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6969 = getelementptr inbounds %struct.GPR, %struct.GPR* %6968, i32 0, i32 15
  %6970 = getelementptr inbounds %struct.Reg, %struct.Reg* %6969, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %6970 to i64*
  %6971 = load i64, i64* %RBP.i79
  %6972 = sub i64 %6971, 56
  %6973 = load i32, i32* %EAX.i78
  %6974 = zext i32 %6973 to i64
  %6975 = load i64, i64* %PC.i77
  %6976 = add i64 %6975, 3
  store i64 %6976, i64* %PC.i77
  %6977 = inttoptr i64 %6972 to i32*
  store i32 %6973, i32* %6977
  store %struct.Memory* %loadMem_4a388a, %struct.Memory** %MEMORY
  %loadMem_4a388d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6979 = getelementptr inbounds %struct.GPR, %struct.GPR* %6978, i32 0, i32 33
  %6980 = getelementptr inbounds %struct.Reg, %struct.Reg* %6979, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %6980 to i64*
  %6981 = load i64, i64* %PC.i76
  %6982 = add i64 %6981, -45
  %6983 = load i64, i64* %PC.i76
  %6984 = add i64 %6983, 5
  store i64 %6984, i64* %PC.i76
  %6985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6982, i64* %6985, align 8
  store %struct.Memory* %loadMem_4a388d, %struct.Memory** %MEMORY
  br label %block_.L_4a3860

block_.L_4a3892:                                  ; preds = %block_.L_4a3860
  %loadMem_4a3892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6987 = getelementptr inbounds %struct.GPR, %struct.GPR* %6986, i32 0, i32 33
  %6988 = getelementptr inbounds %struct.Reg, %struct.Reg* %6987, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %6988 to i64*
  %6989 = load i64, i64* %PC.i75
  %6990 = add i64 %6989, 5
  %6991 = load i64, i64* %PC.i75
  %6992 = add i64 %6991, 5
  store i64 %6992, i64* %PC.i75
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6990, i64* %6993, align 8
  store %struct.Memory* %loadMem_4a3892, %struct.Memory** %MEMORY
  br label %block_.L_4a3897

block_.L_4a3897:                                  ; preds = %block_.L_4a3892
  %loadMem_4a3897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6995 = getelementptr inbounds %struct.GPR, %struct.GPR* %6994, i32 0, i32 33
  %6996 = getelementptr inbounds %struct.Reg, %struct.Reg* %6995, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %6996 to i64*
  %6997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6998 = getelementptr inbounds %struct.GPR, %struct.GPR* %6997, i32 0, i32 1
  %6999 = getelementptr inbounds %struct.Reg, %struct.Reg* %6998, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %6999 to i64*
  %7000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7001 = getelementptr inbounds %struct.GPR, %struct.GPR* %7000, i32 0, i32 15
  %7002 = getelementptr inbounds %struct.Reg, %struct.Reg* %7001, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %7002 to i64*
  %7003 = load i64, i64* %RBP.i74
  %7004 = sub i64 %7003, 52
  %7005 = load i64, i64* %PC.i72
  %7006 = add i64 %7005, 3
  store i64 %7006, i64* %PC.i72
  %7007 = inttoptr i64 %7004 to i32*
  %7008 = load i32, i32* %7007
  %7009 = zext i32 %7008 to i64
  store i64 %7009, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_4a3897, %struct.Memory** %MEMORY
  %loadMem_4a389a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7011 = getelementptr inbounds %struct.GPR, %struct.GPR* %7010, i32 0, i32 33
  %7012 = getelementptr inbounds %struct.Reg, %struct.Reg* %7011, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %7012 to i64*
  %7013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7014 = getelementptr inbounds %struct.GPR, %struct.GPR* %7013, i32 0, i32 1
  %7015 = getelementptr inbounds %struct.Reg, %struct.Reg* %7014, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %7015 to i64*
  %7016 = load i64, i64* %RAX.i71
  %7017 = load i64, i64* %PC.i70
  %7018 = add i64 %7017, 3
  store i64 %7018, i64* %PC.i70
  %7019 = trunc i64 %7016 to i32
  %7020 = add i32 1, %7019
  %7021 = zext i32 %7020 to i64
  store i64 %7021, i64* %RAX.i71, align 8
  %7022 = icmp ult i32 %7020, %7019
  %7023 = icmp ult i32 %7020, 1
  %7024 = or i1 %7022, %7023
  %7025 = zext i1 %7024 to i8
  %7026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7025, i8* %7026, align 1
  %7027 = and i32 %7020, 255
  %7028 = call i32 @llvm.ctpop.i32(i32 %7027)
  %7029 = trunc i32 %7028 to i8
  %7030 = and i8 %7029, 1
  %7031 = xor i8 %7030, 1
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7031, i8* %7032, align 1
  %7033 = xor i64 1, %7016
  %7034 = trunc i64 %7033 to i32
  %7035 = xor i32 %7034, %7020
  %7036 = lshr i32 %7035, 4
  %7037 = trunc i32 %7036 to i8
  %7038 = and i8 %7037, 1
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7038, i8* %7039, align 1
  %7040 = icmp eq i32 %7020, 0
  %7041 = zext i1 %7040 to i8
  %7042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7041, i8* %7042, align 1
  %7043 = lshr i32 %7020, 31
  %7044 = trunc i32 %7043 to i8
  %7045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7044, i8* %7045, align 1
  %7046 = lshr i32 %7019, 31
  %7047 = xor i32 %7043, %7046
  %7048 = add i32 %7047, %7043
  %7049 = icmp eq i32 %7048, 2
  %7050 = zext i1 %7049 to i8
  %7051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7050, i8* %7051, align 1
  store %struct.Memory* %loadMem_4a389a, %struct.Memory** %MEMORY
  %loadMem_4a389d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7053 = getelementptr inbounds %struct.GPR, %struct.GPR* %7052, i32 0, i32 33
  %7054 = getelementptr inbounds %struct.Reg, %struct.Reg* %7053, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7054 to i64*
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7056 = getelementptr inbounds %struct.GPR, %struct.GPR* %7055, i32 0, i32 1
  %7057 = getelementptr inbounds %struct.Reg, %struct.Reg* %7056, i32 0, i32 0
  %EAX.i68 = bitcast %union.anon* %7057 to i32*
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7059 = getelementptr inbounds %struct.GPR, %struct.GPR* %7058, i32 0, i32 15
  %7060 = getelementptr inbounds %struct.Reg, %struct.Reg* %7059, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %7060 to i64*
  %7061 = load i64, i64* %RBP.i69
  %7062 = sub i64 %7061, 52
  %7063 = load i32, i32* %EAX.i68
  %7064 = zext i32 %7063 to i64
  %7065 = load i64, i64* %PC.i67
  %7066 = add i64 %7065, 3
  store i64 %7066, i64* %PC.i67
  %7067 = inttoptr i64 %7062 to i32*
  store i32 %7063, i32* %7067
  store %struct.Memory* %loadMem_4a389d, %struct.Memory** %MEMORY
  %loadMem_4a38a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7069 = getelementptr inbounds %struct.GPR, %struct.GPR* %7068, i32 0, i32 33
  %7070 = getelementptr inbounds %struct.Reg, %struct.Reg* %7069, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7070 to i64*
  %7071 = load i64, i64* %PC.i66
  %7072 = add i64 %7071, -513
  %7073 = load i64, i64* %PC.i66
  %7074 = add i64 %7073, 5
  store i64 %7074, i64* %PC.i66
  %7075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7072, i64* %7075, align 8
  store %struct.Memory* %loadMem_4a38a0, %struct.Memory** %MEMORY
  br label %block_.L_4a369f

block_.L_4a38a5:                                  ; preds = %block_4a384b, %block_.L_4a369f
  %loadMem_4a38a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7077 = getelementptr inbounds %struct.GPR, %struct.GPR* %7076, i32 0, i32 33
  %7078 = getelementptr inbounds %struct.Reg, %struct.Reg* %7077, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7078 to i64*
  %7079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7080 = getelementptr inbounds %struct.GPR, %struct.GPR* %7079, i32 0, i32 1
  %7081 = getelementptr inbounds %struct.Reg, %struct.Reg* %7080, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %7081 to i64*
  %7082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7083 = getelementptr inbounds %struct.GPR, %struct.GPR* %7082, i32 0, i32 15
  %7084 = getelementptr inbounds %struct.Reg, %struct.Reg* %7083, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %7084 to i64*
  %7085 = load i64, i64* %RBP.i65
  %7086 = sub i64 %7085, 24
  %7087 = load i64, i64* %PC.i63
  %7088 = add i64 %7087, 4
  store i64 %7088, i64* %PC.i63
  %7089 = inttoptr i64 %7086 to i64*
  %7090 = load i64, i64* %7089
  store i64 %7090, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_4a38a5, %struct.Memory** %MEMORY
  %loadMem_4a38a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7092 = getelementptr inbounds %struct.GPR, %struct.GPR* %7091, i32 0, i32 33
  %7093 = getelementptr inbounds %struct.Reg, %struct.Reg* %7092, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7093 to i64*
  %7094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7095 = getelementptr inbounds %struct.GPR, %struct.GPR* %7094, i32 0, i32 5
  %7096 = getelementptr inbounds %struct.Reg, %struct.Reg* %7095, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %7096 to i64*
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7098 = getelementptr inbounds %struct.GPR, %struct.GPR* %7097, i32 0, i32 15
  %7099 = getelementptr inbounds %struct.Reg, %struct.Reg* %7098, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %7099 to i64*
  %7100 = load i64, i64* %RBP.i62
  %7101 = sub i64 %7100, 52
  %7102 = load i64, i64* %PC.i60
  %7103 = add i64 %7102, 3
  store i64 %7103, i64* %PC.i60
  %7104 = inttoptr i64 %7101 to i32*
  %7105 = load i32, i32* %7104
  %7106 = zext i32 %7105 to i64
  store i64 %7106, i64* %RCX.i61, align 8
  store %struct.Memory* %loadMem_4a38a9, %struct.Memory** %MEMORY
  %loadMem_4a38ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %7107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7108 = getelementptr inbounds %struct.GPR, %struct.GPR* %7107, i32 0, i32 33
  %7109 = getelementptr inbounds %struct.Reg, %struct.Reg* %7108, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7109 to i64*
  %7110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7111 = getelementptr inbounds %struct.GPR, %struct.GPR* %7110, i32 0, i32 5
  %7112 = getelementptr inbounds %struct.Reg, %struct.Reg* %7111, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7112 to i32*
  %7113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7114 = getelementptr inbounds %struct.GPR, %struct.GPR* %7113, i32 0, i32 7
  %7115 = getelementptr inbounds %struct.Reg, %struct.Reg* %7114, i32 0, i32 0
  %RDX.i59 = bitcast %union.anon* %7115 to i64*
  %7116 = load i32, i32* %ECX.i
  %7117 = zext i32 %7116 to i64
  %7118 = load i64, i64* %PC.i58
  %7119 = add i64 %7118, 2
  store i64 %7119, i64* %PC.i58
  %7120 = and i64 %7117, 4294967295
  store i64 %7120, i64* %RDX.i59, align 8
  store %struct.Memory* %loadMem_4a38ac, %struct.Memory** %MEMORY
  %loadMem_4a38ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7122 = getelementptr inbounds %struct.GPR, %struct.GPR* %7121, i32 0, i32 33
  %7123 = getelementptr inbounds %struct.Reg, %struct.Reg* %7122, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %7123 to i64*
  %7124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7125 = getelementptr inbounds %struct.GPR, %struct.GPR* %7124, i32 0, i32 1
  %7126 = getelementptr inbounds %struct.Reg, %struct.Reg* %7125, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %7126 to i64*
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7128 = getelementptr inbounds %struct.GPR, %struct.GPR* %7127, i32 0, i32 7
  %7129 = getelementptr inbounds %struct.Reg, %struct.Reg* %7128, i32 0, i32 0
  %RDX.i57 = bitcast %union.anon* %7129 to i64*
  %7130 = load i64, i64* %RAX.i56
  %7131 = load i64, i64* %RDX.i57
  %7132 = mul i64 %7131, 4
  %7133 = add i64 %7132, %7130
  %7134 = load i64, i64* %PC.i55
  %7135 = add i64 %7134, 7
  store i64 %7135, i64* %PC.i55
  %7136 = inttoptr i64 %7133 to i32*
  store i32 3, i32* %7136
  store %struct.Memory* %loadMem_4a38ae, %struct.Memory** %MEMORY
  %loadMem_4a38b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7138 = getelementptr inbounds %struct.GPR, %struct.GPR* %7137, i32 0, i32 33
  %7139 = getelementptr inbounds %struct.Reg, %struct.Reg* %7138, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7139 to i64*
  %7140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7141 = getelementptr inbounds %struct.GPR, %struct.GPR* %7140, i32 0, i32 15
  %7142 = getelementptr inbounds %struct.Reg, %struct.Reg* %7141, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %7142 to i64*
  %7143 = load i64, i64* %RBP.i54
  %7144 = sub i64 %7143, 56
  %7145 = load i64, i64* %PC.i53
  %7146 = add i64 %7145, 7
  store i64 %7146, i64* %PC.i53
  %7147 = inttoptr i64 %7144 to i32*
  store i32 0, i32* %7147
  store %struct.Memory* %loadMem_4a38b5, %struct.Memory** %MEMORY
  br label %block_.L_4a38bc

block_.L_4a38bc:                                  ; preds = %block_4a38c8, %block_.L_4a38a5
  %loadMem_4a38bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7149 = getelementptr inbounds %struct.GPR, %struct.GPR* %7148, i32 0, i32 33
  %7150 = getelementptr inbounds %struct.Reg, %struct.Reg* %7149, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %7150 to i64*
  %7151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7152 = getelementptr inbounds %struct.GPR, %struct.GPR* %7151, i32 0, i32 1
  %7153 = getelementptr inbounds %struct.Reg, %struct.Reg* %7152, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %7153 to i64*
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7155 = getelementptr inbounds %struct.GPR, %struct.GPR* %7154, i32 0, i32 15
  %7156 = getelementptr inbounds %struct.Reg, %struct.Reg* %7155, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %7156 to i64*
  %7157 = load i64, i64* %RBP.i52
  %7158 = sub i64 %7157, 56
  %7159 = load i64, i64* %PC.i50
  %7160 = add i64 %7159, 3
  store i64 %7160, i64* %PC.i50
  %7161 = inttoptr i64 %7158 to i32*
  %7162 = load i32, i32* %7161
  %7163 = zext i32 %7162 to i64
  store i64 %7163, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_4a38bc, %struct.Memory** %MEMORY
  %loadMem_4a38bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7165 = getelementptr inbounds %struct.GPR, %struct.GPR* %7164, i32 0, i32 33
  %7166 = getelementptr inbounds %struct.Reg, %struct.Reg* %7165, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %7166 to i64*
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7168 = getelementptr inbounds %struct.GPR, %struct.GPR* %7167, i32 0, i32 1
  %7169 = getelementptr inbounds %struct.Reg, %struct.Reg* %7168, i32 0, i32 0
  %EAX.i48 = bitcast %union.anon* %7169 to i32*
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7171 = getelementptr inbounds %struct.GPR, %struct.GPR* %7170, i32 0, i32 15
  %7172 = getelementptr inbounds %struct.Reg, %struct.Reg* %7171, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %7172 to i64*
  %7173 = load i32, i32* %EAX.i48
  %7174 = zext i32 %7173 to i64
  %7175 = load i64, i64* %RBP.i49
  %7176 = sub i64 %7175, 12
  %7177 = load i64, i64* %PC.i47
  %7178 = add i64 %7177, 3
  store i64 %7178, i64* %PC.i47
  %7179 = inttoptr i64 %7176 to i32*
  %7180 = load i32, i32* %7179
  %7181 = sub i32 %7173, %7180
  %7182 = icmp ult i32 %7173, %7180
  %7183 = zext i1 %7182 to i8
  %7184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7183, i8* %7184, align 1
  %7185 = and i32 %7181, 255
  %7186 = call i32 @llvm.ctpop.i32(i32 %7185)
  %7187 = trunc i32 %7186 to i8
  %7188 = and i8 %7187, 1
  %7189 = xor i8 %7188, 1
  %7190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7189, i8* %7190, align 1
  %7191 = xor i32 %7180, %7173
  %7192 = xor i32 %7191, %7181
  %7193 = lshr i32 %7192, 4
  %7194 = trunc i32 %7193 to i8
  %7195 = and i8 %7194, 1
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7195, i8* %7196, align 1
  %7197 = icmp eq i32 %7181, 0
  %7198 = zext i1 %7197 to i8
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7198, i8* %7199, align 1
  %7200 = lshr i32 %7181, 31
  %7201 = trunc i32 %7200 to i8
  %7202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7201, i8* %7202, align 1
  %7203 = lshr i32 %7173, 31
  %7204 = lshr i32 %7180, 31
  %7205 = xor i32 %7204, %7203
  %7206 = xor i32 %7200, %7203
  %7207 = add i32 %7206, %7205
  %7208 = icmp eq i32 %7207, 2
  %7209 = zext i1 %7208 to i8
  %7210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7209, i8* %7210, align 1
  store %struct.Memory* %loadMem_4a38bf, %struct.Memory** %MEMORY
  %loadMem_4a38c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7212 = getelementptr inbounds %struct.GPR, %struct.GPR* %7211, i32 0, i32 33
  %7213 = getelementptr inbounds %struct.Reg, %struct.Reg* %7212, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %7213 to i64*
  %7214 = load i64, i64* %PC.i46
  %7215 = add i64 %7214, 44
  %7216 = load i64, i64* %PC.i46
  %7217 = add i64 %7216, 6
  %7218 = load i64, i64* %PC.i46
  %7219 = add i64 %7218, 6
  store i64 %7219, i64* %PC.i46
  %7220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7221 = load i8, i8* %7220, align 1
  %7222 = icmp eq i8 %7221, 0
  %7223 = zext i1 %7222 to i8
  store i8 %7223, i8* %BRANCH_TAKEN, align 1
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7225 = select i1 %7222, i64 %7215, i64 %7217
  store i64 %7225, i64* %7224, align 8
  store %struct.Memory* %loadMem_4a38c2, %struct.Memory** %MEMORY
  %loadBr_4a38c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a38c2 = icmp eq i8 %loadBr_4a38c2, 1
  br i1 %cmpBr_4a38c2, label %block_.L_4a38ee, label %block_4a38c8

block_4a38c8:                                     ; preds = %block_.L_4a38bc
  %loadMem_4a38c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7227 = getelementptr inbounds %struct.GPR, %struct.GPR* %7226, i32 0, i32 33
  %7228 = getelementptr inbounds %struct.Reg, %struct.Reg* %7227, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7228 to i64*
  %7229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7230 = getelementptr inbounds %struct.GPR, %struct.GPR* %7229, i32 0, i32 1
  %7231 = getelementptr inbounds %struct.Reg, %struct.Reg* %7230, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %7231 to i64*
  %7232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7233 = getelementptr inbounds %struct.GPR, %struct.GPR* %7232, i32 0, i32 15
  %7234 = getelementptr inbounds %struct.Reg, %struct.Reg* %7233, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %7234 to i64*
  %7235 = load i64, i64* %RBP.i45
  %7236 = sub i64 %7235, 56
  %7237 = load i64, i64* %PC.i43
  %7238 = add i64 %7237, 3
  store i64 %7238, i64* %PC.i43
  %7239 = inttoptr i64 %7236 to i32*
  %7240 = load i32, i32* %7239
  %7241 = zext i32 %7240 to i64
  store i64 %7241, i64* %RAX.i44, align 8
  store %struct.Memory* %loadMem_4a38c8, %struct.Memory** %MEMORY
  %loadMem_4a38cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7243 = getelementptr inbounds %struct.GPR, %struct.GPR* %7242, i32 0, i32 33
  %7244 = getelementptr inbounds %struct.Reg, %struct.Reg* %7243, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %7244 to i64*
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7246 = getelementptr inbounds %struct.GPR, %struct.GPR* %7245, i32 0, i32 1
  %7247 = getelementptr inbounds %struct.Reg, %struct.Reg* %7246, i32 0, i32 0
  %EAX.i41 = bitcast %union.anon* %7247 to i32*
  %7248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7249 = getelementptr inbounds %struct.GPR, %struct.GPR* %7248, i32 0, i32 5
  %7250 = getelementptr inbounds %struct.Reg, %struct.Reg* %7249, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %7250 to i64*
  %7251 = load i32, i32* %EAX.i41
  %7252 = zext i32 %7251 to i64
  %7253 = load i64, i64* %PC.i40
  %7254 = add i64 %7253, 2
  store i64 %7254, i64* %PC.i40
  %7255 = and i64 %7252, 4294967295
  store i64 %7255, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_4a38cb, %struct.Memory** %MEMORY
  %loadMem_4a38cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7257 = getelementptr inbounds %struct.GPR, %struct.GPR* %7256, i32 0, i32 33
  %7258 = getelementptr inbounds %struct.Reg, %struct.Reg* %7257, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7258 to i64*
  %7259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7260 = getelementptr inbounds %struct.GPR, %struct.GPR* %7259, i32 0, i32 1
  %7261 = getelementptr inbounds %struct.Reg, %struct.Reg* %7260, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %7261 to i64*
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7263 = getelementptr inbounds %struct.GPR, %struct.GPR* %7262, i32 0, i32 5
  %7264 = getelementptr inbounds %struct.Reg, %struct.Reg* %7263, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %7264 to i64*
  %7265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7266 = getelementptr inbounds %struct.GPR, %struct.GPR* %7265, i32 0, i32 15
  %7267 = getelementptr inbounds %struct.Reg, %struct.Reg* %7266, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %7267 to i64*
  %7268 = load i64, i64* %RBP.i39
  %7269 = load i64, i64* %RCX.i38
  %7270 = mul i64 %7269, 4
  %7271 = add i64 %7268, -464
  %7272 = add i64 %7271, %7270
  %7273 = load i64, i64* %PC.i36
  %7274 = add i64 %7273, 7
  store i64 %7274, i64* %PC.i36
  %7275 = inttoptr i64 %7272 to i32*
  %7276 = load i32, i32* %7275
  %7277 = zext i32 %7276 to i64
  store i64 %7277, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_4a38cd, %struct.Memory** %MEMORY
  %loadMem_4a38d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7279 = getelementptr inbounds %struct.GPR, %struct.GPR* %7278, i32 0, i32 33
  %7280 = getelementptr inbounds %struct.Reg, %struct.Reg* %7279, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7280 to i64*
  %7281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7282 = getelementptr inbounds %struct.GPR, %struct.GPR* %7281, i32 0, i32 7
  %7283 = getelementptr inbounds %struct.Reg, %struct.Reg* %7282, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7283 to i64*
  %7284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7285 = getelementptr inbounds %struct.GPR, %struct.GPR* %7284, i32 0, i32 15
  %7286 = getelementptr inbounds %struct.Reg, %struct.Reg* %7285, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %7286 to i64*
  %7287 = load i64, i64* %RBP.i35
  %7288 = sub i64 %7287, 56
  %7289 = load i64, i64* %PC.i34
  %7290 = add i64 %7289, 3
  store i64 %7290, i64* %PC.i34
  %7291 = inttoptr i64 %7288 to i32*
  %7292 = load i32, i32* %7291
  %7293 = zext i32 %7292 to i64
  store i64 %7293, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4a38d4, %struct.Memory** %MEMORY
  %loadMem_4a38d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7295 = getelementptr inbounds %struct.GPR, %struct.GPR* %7294, i32 0, i32 33
  %7296 = getelementptr inbounds %struct.Reg, %struct.Reg* %7295, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7296 to i64*
  %7297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7298 = getelementptr inbounds %struct.GPR, %struct.GPR* %7297, i32 0, i32 7
  %7299 = getelementptr inbounds %struct.Reg, %struct.Reg* %7298, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7299 to i32*
  %7300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7301 = getelementptr inbounds %struct.GPR, %struct.GPR* %7300, i32 0, i32 5
  %7302 = getelementptr inbounds %struct.Reg, %struct.Reg* %7301, i32 0, i32 0
  %RCX.i33 = bitcast %union.anon* %7302 to i64*
  %7303 = load i32, i32* %EDX.i
  %7304 = zext i32 %7303 to i64
  %7305 = load i64, i64* %PC.i32
  %7306 = add i64 %7305, 2
  store i64 %7306, i64* %PC.i32
  %7307 = and i64 %7304, 4294967295
  store i64 %7307, i64* %RCX.i33, align 8
  store %struct.Memory* %loadMem_4a38d7, %struct.Memory** %MEMORY
  %loadMem_4a38d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7309 = getelementptr inbounds %struct.GPR, %struct.GPR* %7308, i32 0, i32 33
  %7310 = getelementptr inbounds %struct.Reg, %struct.Reg* %7309, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7310 to i64*
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7312 = getelementptr inbounds %struct.GPR, %struct.GPR* %7311, i32 0, i32 1
  %7313 = getelementptr inbounds %struct.Reg, %struct.Reg* %7312, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %7313 to i32*
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7315 = getelementptr inbounds %struct.GPR, %struct.GPR* %7314, i32 0, i32 5
  %7316 = getelementptr inbounds %struct.Reg, %struct.Reg* %7315, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7316 to i64*
  %7317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7318 = getelementptr inbounds %struct.GPR, %struct.GPR* %7317, i32 0, i32 15
  %7319 = getelementptr inbounds %struct.Reg, %struct.Reg* %7318, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %7319 to i64*
  %7320 = load i64, i64* %RBP.i31
  %7321 = load i64, i64* %RCX.i
  %7322 = mul i64 %7321, 4
  %7323 = add i64 %7320, -208
  %7324 = add i64 %7323, %7322
  %7325 = load i32, i32* %EAX.i30
  %7326 = zext i32 %7325 to i64
  %7327 = load i64, i64* %PC.i29
  %7328 = add i64 %7327, 7
  store i64 %7328, i64* %PC.i29
  %7329 = inttoptr i64 %7324 to i32*
  store i32 %7325, i32* %7329
  store %struct.Memory* %loadMem_4a38d9, %struct.Memory** %MEMORY
  %loadMem_4a38e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7331 = getelementptr inbounds %struct.GPR, %struct.GPR* %7330, i32 0, i32 33
  %7332 = getelementptr inbounds %struct.Reg, %struct.Reg* %7331, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7332 to i64*
  %7333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7334 = getelementptr inbounds %struct.GPR, %struct.GPR* %7333, i32 0, i32 1
  %7335 = getelementptr inbounds %struct.Reg, %struct.Reg* %7334, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %7335 to i64*
  %7336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7337 = getelementptr inbounds %struct.GPR, %struct.GPR* %7336, i32 0, i32 15
  %7338 = getelementptr inbounds %struct.Reg, %struct.Reg* %7337, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %7338 to i64*
  %7339 = load i64, i64* %RBP.i28
  %7340 = sub i64 %7339, 56
  %7341 = load i64, i64* %PC.i26
  %7342 = add i64 %7341, 3
  store i64 %7342, i64* %PC.i26
  %7343 = inttoptr i64 %7340 to i32*
  %7344 = load i32, i32* %7343
  %7345 = zext i32 %7344 to i64
  store i64 %7345, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_4a38e0, %struct.Memory** %MEMORY
  %loadMem_4a38e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 33
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %7348 to i64*
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 1
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %7351 to i64*
  %7352 = load i64, i64* %RAX.i25
  %7353 = load i64, i64* %PC.i24
  %7354 = add i64 %7353, 3
  store i64 %7354, i64* %PC.i24
  %7355 = trunc i64 %7352 to i32
  %7356 = add i32 1, %7355
  %7357 = zext i32 %7356 to i64
  store i64 %7357, i64* %RAX.i25, align 8
  %7358 = icmp ult i32 %7356, %7355
  %7359 = icmp ult i32 %7356, 1
  %7360 = or i1 %7358, %7359
  %7361 = zext i1 %7360 to i8
  %7362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7361, i8* %7362, align 1
  %7363 = and i32 %7356, 255
  %7364 = call i32 @llvm.ctpop.i32(i32 %7363)
  %7365 = trunc i32 %7364 to i8
  %7366 = and i8 %7365, 1
  %7367 = xor i8 %7366, 1
  %7368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7367, i8* %7368, align 1
  %7369 = xor i64 1, %7352
  %7370 = trunc i64 %7369 to i32
  %7371 = xor i32 %7370, %7356
  %7372 = lshr i32 %7371, 4
  %7373 = trunc i32 %7372 to i8
  %7374 = and i8 %7373, 1
  %7375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7374, i8* %7375, align 1
  %7376 = icmp eq i32 %7356, 0
  %7377 = zext i1 %7376 to i8
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7377, i8* %7378, align 1
  %7379 = lshr i32 %7356, 31
  %7380 = trunc i32 %7379 to i8
  %7381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7380, i8* %7381, align 1
  %7382 = lshr i32 %7355, 31
  %7383 = xor i32 %7379, %7382
  %7384 = add i32 %7383, %7379
  %7385 = icmp eq i32 %7384, 2
  %7386 = zext i1 %7385 to i8
  %7387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7386, i8* %7387, align 1
  store %struct.Memory* %loadMem_4a38e3, %struct.Memory** %MEMORY
  %loadMem_4a38e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7389 = getelementptr inbounds %struct.GPR, %struct.GPR* %7388, i32 0, i32 33
  %7390 = getelementptr inbounds %struct.Reg, %struct.Reg* %7389, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7390 to i64*
  %7391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7392 = getelementptr inbounds %struct.GPR, %struct.GPR* %7391, i32 0, i32 1
  %7393 = getelementptr inbounds %struct.Reg, %struct.Reg* %7392, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7393 to i32*
  %7394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7395 = getelementptr inbounds %struct.GPR, %struct.GPR* %7394, i32 0, i32 15
  %7396 = getelementptr inbounds %struct.Reg, %struct.Reg* %7395, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %7396 to i64*
  %7397 = load i64, i64* %RBP.i23
  %7398 = sub i64 %7397, 56
  %7399 = load i32, i32* %EAX.i
  %7400 = zext i32 %7399 to i64
  %7401 = load i64, i64* %PC.i22
  %7402 = add i64 %7401, 3
  store i64 %7402, i64* %PC.i22
  %7403 = inttoptr i64 %7398 to i32*
  store i32 %7399, i32* %7403
  store %struct.Memory* %loadMem_4a38e6, %struct.Memory** %MEMORY
  %loadMem_4a38e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7405 = getelementptr inbounds %struct.GPR, %struct.GPR* %7404, i32 0, i32 33
  %7406 = getelementptr inbounds %struct.Reg, %struct.Reg* %7405, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %7406 to i64*
  %7407 = load i64, i64* %PC.i21
  %7408 = add i64 %7407, -45
  %7409 = load i64, i64* %PC.i21
  %7410 = add i64 %7409, 5
  store i64 %7410, i64* %PC.i21
  %7411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7408, i64* %7411, align 8
  store %struct.Memory* %loadMem_4a38e9, %struct.Memory** %MEMORY
  br label %block_.L_4a38bc

block_.L_4a38ee:                                  ; preds = %block_.L_4a38bc
  %loadMem_4a38ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %7412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7413 = getelementptr inbounds %struct.GPR, %struct.GPR* %7412, i32 0, i32 33
  %7414 = getelementptr inbounds %struct.Reg, %struct.Reg* %7413, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7414 to i64*
  %7415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7416 = getelementptr inbounds %struct.GPR, %struct.GPR* %7415, i32 0, i32 15
  %7417 = getelementptr inbounds %struct.Reg, %struct.Reg* %7416, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %7417 to i64*
  %7418 = load i64, i64* %RBP.i20
  %7419 = sub i64 %7418, 48
  %7420 = load i64, i64* %PC.i19
  %7421 = add i64 %7420, 4
  store i64 %7421, i64* %PC.i19
  %7422 = inttoptr i64 %7419 to i32*
  %7423 = load i32, i32* %7422
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7424, align 1
  %7425 = and i32 %7423, 255
  %7426 = call i32 @llvm.ctpop.i32(i32 %7425)
  %7427 = trunc i32 %7426 to i8
  %7428 = and i8 %7427, 1
  %7429 = xor i8 %7428, 1
  %7430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7429, i8* %7430, align 1
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7431, align 1
  %7432 = icmp eq i32 %7423, 0
  %7433 = zext i1 %7432 to i8
  %7434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7433, i8* %7434, align 1
  %7435 = lshr i32 %7423, 31
  %7436 = trunc i32 %7435 to i8
  %7437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7436, i8* %7437, align 1
  %7438 = lshr i32 %7423, 31
  %7439 = xor i32 %7435, %7438
  %7440 = add i32 %7439, %7438
  %7441 = icmp eq i32 %7440, 2
  %7442 = zext i1 %7441 to i8
  %7443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7442, i8* %7443, align 1
  store %struct.Memory* %loadMem_4a38ee, %struct.Memory** %MEMORY
  %loadMem_4a38f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7445 = getelementptr inbounds %struct.GPR, %struct.GPR* %7444, i32 0, i32 33
  %7446 = getelementptr inbounds %struct.Reg, %struct.Reg* %7445, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %7446 to i64*
  %7447 = load i64, i64* %PC.i18
  %7448 = add i64 %7447, 33
  %7449 = load i64, i64* %PC.i18
  %7450 = add i64 %7449, 6
  %7451 = load i64, i64* %PC.i18
  %7452 = add i64 %7451, 6
  store i64 %7452, i64* %PC.i18
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7454 = load i8, i8* %7453, align 1
  %7455 = icmp eq i8 %7454, 0
  %7456 = zext i1 %7455 to i8
  store i8 %7456, i8* %BRANCH_TAKEN, align 1
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7458 = select i1 %7455, i64 %7448, i64 %7450
  store i64 %7458, i64* %7457, align 8
  store %struct.Memory* %loadMem_4a38f2, %struct.Memory** %MEMORY
  %loadBr_4a38f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a38f2 = icmp eq i8 %loadBr_4a38f2, 1
  br i1 %cmpBr_4a38f2, label %block_.L_4a3913, label %block_4a38f8

block_4a38f8:                                     ; preds = %block_.L_4a38ee
  %loadMem_4a38f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7460 = getelementptr inbounds %struct.GPR, %struct.GPR* %7459, i32 0, i32 33
  %7461 = getelementptr inbounds %struct.Reg, %struct.Reg* %7460, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %7461 to i64*
  %7462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7463 = getelementptr inbounds %struct.GPR, %struct.GPR* %7462, i32 0, i32 1
  %7464 = getelementptr inbounds %struct.Reg, %struct.Reg* %7463, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %7464 to i64*
  %7465 = load i64, i64* %PC.i16
  %7466 = add i64 %7465, 8
  store i64 %7466, i64* %PC.i16
  %7467 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7467, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_4a38f8, %struct.Memory** %MEMORY
  %loadMem_4a3900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7469 = getelementptr inbounds %struct.GPR, %struct.GPR* %7468, i32 0, i32 33
  %7470 = getelementptr inbounds %struct.Reg, %struct.Reg* %7469, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %7470 to i64*
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7472 = getelementptr inbounds %struct.GPR, %struct.GPR* %7471, i32 0, i32 1
  %7473 = getelementptr inbounds %struct.Reg, %struct.Reg* %7472, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %7473 to i64*
  %7474 = load i64, i64* %RAX.i15
  %7475 = add i64 %7474, 14160
  %7476 = load i64, i64* %PC.i14
  %7477 = add i64 %7476, 7
  store i64 %7477, i64* %PC.i14
  %7478 = inttoptr i64 %7475 to i64*
  %7479 = load i64, i64* %7478
  store i64 %7479, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_4a3900, %struct.Memory** %MEMORY
  %loadMem_4a3907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7481 = getelementptr inbounds %struct.GPR, %struct.GPR* %7480, i32 0, i32 33
  %7482 = getelementptr inbounds %struct.Reg, %struct.Reg* %7481, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7482 to i64*
  %7483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7484 = getelementptr inbounds %struct.GPR, %struct.GPR* %7483, i32 0, i32 1
  %7485 = getelementptr inbounds %struct.Reg, %struct.Reg* %7484, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %7485 to i64*
  %7486 = load i64, i64* %RAX.i13
  %7487 = add i64 %7486, 56
  %7488 = load i64, i64* %PC.i12
  %7489 = add i64 %7488, 7
  store i64 %7489, i64* %PC.i12
  %7490 = inttoptr i64 %7487 to i32*
  store i32 1, i32* %7490
  store %struct.Memory* %loadMem_4a3907, %struct.Memory** %MEMORY
  %loadMem_4a390e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7492 = getelementptr inbounds %struct.GPR, %struct.GPR* %7491, i32 0, i32 33
  %7493 = getelementptr inbounds %struct.Reg, %struct.Reg* %7492, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %7493 to i64*
  %7494 = load i64, i64* %PC.i11
  %7495 = add i64 %7494, 27
  %7496 = load i64, i64* %PC.i11
  %7497 = add i64 %7496, 5
  store i64 %7497, i64* %PC.i11
  %7498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7495, i64* %7498, align 8
  store %struct.Memory* %loadMem_4a390e, %struct.Memory** %MEMORY
  br label %block_.L_4a3929

block_.L_4a3913:                                  ; preds = %block_.L_4a38ee
  %loadMem_4a3913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7500 = getelementptr inbounds %struct.GPR, %struct.GPR* %7499, i32 0, i32 33
  %7501 = getelementptr inbounds %struct.Reg, %struct.Reg* %7500, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7501 to i64*
  %7502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7503 = getelementptr inbounds %struct.GPR, %struct.GPR* %7502, i32 0, i32 1
  %7504 = getelementptr inbounds %struct.Reg, %struct.Reg* %7503, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %7504 to i64*
  %7505 = load i64, i64* %PC.i9
  %7506 = add i64 %7505, 8
  store i64 %7506, i64* %PC.i9
  %7507 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %7507, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_4a3913, %struct.Memory** %MEMORY
  %loadMem_4a391b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7509 = getelementptr inbounds %struct.GPR, %struct.GPR* %7508, i32 0, i32 33
  %7510 = getelementptr inbounds %struct.Reg, %struct.Reg* %7509, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7510 to i64*
  %7511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7512 = getelementptr inbounds %struct.GPR, %struct.GPR* %7511, i32 0, i32 1
  %7513 = getelementptr inbounds %struct.Reg, %struct.Reg* %7512, i32 0, i32 0
  %RAX.i8 = bitcast %union.anon* %7513 to i64*
  %7514 = load i64, i64* %RAX.i8
  %7515 = add i64 %7514, 14160
  %7516 = load i64, i64* %PC.i7
  %7517 = add i64 %7516, 7
  store i64 %7517, i64* %PC.i7
  %7518 = inttoptr i64 %7515 to i64*
  %7519 = load i64, i64* %7518
  store i64 %7519, i64* %RAX.i8, align 8
  store %struct.Memory* %loadMem_4a391b, %struct.Memory** %MEMORY
  %loadMem_4a3922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7521 = getelementptr inbounds %struct.GPR, %struct.GPR* %7520, i32 0, i32 33
  %7522 = getelementptr inbounds %struct.Reg, %struct.Reg* %7521, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %7522 to i64*
  %7523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7524 = getelementptr inbounds %struct.GPR, %struct.GPR* %7523, i32 0, i32 1
  %7525 = getelementptr inbounds %struct.Reg, %struct.Reg* %7524, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7525 to i64*
  %7526 = load i64, i64* %RAX.i
  %7527 = add i64 %7526, 88
  %7528 = load i64, i64* %PC.i6
  %7529 = add i64 %7528, 7
  store i64 %7529, i64* %PC.i6
  %7530 = inttoptr i64 %7527 to i32*
  store i32 1, i32* %7530
  store %struct.Memory* %loadMem_4a3922, %struct.Memory** %MEMORY
  br label %block_.L_4a3929

block_.L_4a3929:                                  ; preds = %block_.L_4a3913, %block_4a38f8
  %loadMem_4a3929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7532 = getelementptr inbounds %struct.GPR, %struct.GPR* %7531, i32 0, i32 33
  %7533 = getelementptr inbounds %struct.Reg, %struct.Reg* %7532, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7533 to i64*
  %7534 = load i64, i64* %PC.i5
  %7535 = add i64 %7534, 5
  %7536 = load i64, i64* %PC.i5
  %7537 = add i64 %7536, 5
  store i64 %7537, i64* %PC.i5
  %7538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7535, i64* %7538, align 8
  store %struct.Memory* %loadMem_4a3929, %struct.Memory** %MEMORY
  br label %block_.L_4a392e

block_.L_4a392e:                                  ; preds = %block_.L_4a3929, %block_.L_4a368b
  %loadMem_4a392e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7540 = getelementptr inbounds %struct.GPR, %struct.GPR* %7539, i32 0, i32 33
  %7541 = getelementptr inbounds %struct.Reg, %struct.Reg* %7540, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7541 to i64*
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7543 = getelementptr inbounds %struct.GPR, %struct.GPR* %7542, i32 0, i32 13
  %7544 = getelementptr inbounds %struct.Reg, %struct.Reg* %7543, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7544 to i64*
  %7545 = load i64, i64* %RSP.i
  %7546 = load i64, i64* %PC.i4
  %7547 = add i64 %7546, 7
  store i64 %7547, i64* %PC.i4
  %7548 = add i64 768, %7545
  store i64 %7548, i64* %RSP.i, align 8
  %7549 = icmp ult i64 %7548, %7545
  %7550 = icmp ult i64 %7548, 768
  %7551 = or i1 %7549, %7550
  %7552 = zext i1 %7551 to i8
  %7553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7552, i8* %7553, align 1
  %7554 = trunc i64 %7548 to i32
  %7555 = and i32 %7554, 255
  %7556 = call i32 @llvm.ctpop.i32(i32 %7555)
  %7557 = trunc i32 %7556 to i8
  %7558 = and i8 %7557, 1
  %7559 = xor i8 %7558, 1
  %7560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7559, i8* %7560, align 1
  %7561 = xor i64 768, %7545
  %7562 = xor i64 %7561, %7548
  %7563 = lshr i64 %7562, 4
  %7564 = trunc i64 %7563 to i8
  %7565 = and i8 %7564, 1
  %7566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7565, i8* %7566, align 1
  %7567 = icmp eq i64 %7548, 0
  %7568 = zext i1 %7567 to i8
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7568, i8* %7569, align 1
  %7570 = lshr i64 %7548, 63
  %7571 = trunc i64 %7570 to i8
  %7572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7571, i8* %7572, align 1
  %7573 = lshr i64 %7545, 63
  %7574 = xor i64 %7570, %7573
  %7575 = add i64 %7574, %7570
  %7576 = icmp eq i64 %7575, 2
  %7577 = zext i1 %7576 to i8
  %7578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7577, i8* %7578, align 1
  store %struct.Memory* %loadMem_4a392e, %struct.Memory** %MEMORY
  %loadMem_4a3935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7580 = getelementptr inbounds %struct.GPR, %struct.GPR* %7579, i32 0, i32 33
  %7581 = getelementptr inbounds %struct.Reg, %struct.Reg* %7580, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7581 to i64*
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7583 = getelementptr inbounds %struct.GPR, %struct.GPR* %7582, i32 0, i32 15
  %7584 = getelementptr inbounds %struct.Reg, %struct.Reg* %7583, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7584 to i64*
  %7585 = load i64, i64* %PC.i2
  %7586 = add i64 %7585, 1
  store i64 %7586, i64* %PC.i2
  %7587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7588 = load i64, i64* %7587, align 8
  %7589 = add i64 %7588, 8
  %7590 = inttoptr i64 %7588 to i64*
  %7591 = load i64, i64* %7590
  store i64 %7591, i64* %RBP.i3, align 8
  store i64 %7589, i64* %7587, align 8
  store %struct.Memory* %loadMem_4a3935, %struct.Memory** %MEMORY
  %loadMem_4a3936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7593 = getelementptr inbounds %struct.GPR, %struct.GPR* %7592, i32 0, i32 33
  %7594 = getelementptr inbounds %struct.Reg, %struct.Reg* %7593, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7594 to i64*
  %7595 = load i64, i64* %PC.i1
  %7596 = add i64 %7595, 1
  store i64 %7596, i64* %PC.i1
  %7597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7599 = load i64, i64* %7598, align 8
  %7600 = inttoptr i64 %7599 to i64*
  %7601 = load i64, i64* %7600
  store i64 %7601, i64* %7597, align 8
  %7602 = add i64 %7599, 8
  store i64 %7602, i64* %7598, align 8
  store %struct.Memory* %loadMem_4a3936, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4a3936
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

define %struct.Memory* @routine_subq__0x300___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 768
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 768
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
  %23 = xor i64 768, %9
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

define %struct.Memory* @routine_movl_0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %9, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_0x722c98___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x722c98_type* @G_0x722c98 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 4, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 4
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
  %26 = xor i64 4, %9
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

define %struct.Memory* @routine_shll__cl___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 21
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %R10D = bitcast %union.anon* %12 to i32*
  %13 = bitcast i32* %R10D to i64*
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i8, i8* %CL
  %17 = zext i8 %16 to i64
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 3
  store i64 %19, i64* %PC
  %20 = trunc i64 %17 to i5
  switch i5 %20, label %26 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %21
  ]

; <label>:21:                                     ; preds = %block_400488
  %22 = shl i32 %14, 1
  %23 = icmp slt i32 %14, 0
  %24 = icmp slt i32 %22, 0
  %25 = xor i1 %23, %24
  br label %35

; <label>:26:                                     ; preds = %block_400488
  %27 = and i64 %17, 31
  %28 = add i64 %27, 4294967295
  %29 = and i64 %15, 4294967295
  %30 = and i64 %28, 4294967295
  %31 = shl i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 0
  %34 = shl i32 %32, 1
  br label %35

; <label>:35:                                     ; preds = %26, %21
  %36 = phi i1 [ %23, %21 ], [ %33, %26 ]
  %37 = phi i1 [ %25, %21 ], [ false, %26 ]
  %38 = phi i32 [ %22, %21 ], [ %34, %26 ]
  %39 = zext i32 %38 to i64
  store i64 %39, i64* %13, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %41 = zext i1 %36 to i8
  store i8 %41, i8* %40, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %43 = and i32 %38, 254
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  %47 = xor i8 %46, 1
  store i8 %47, i8* %42, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %50 = icmp eq i32 %38, 0
  %51 = zext i1 %50 to i8
  store i8 %51, i8* %49, align 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %53 = lshr i32 %38, 31
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %52, align 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %56 = zext i1 %37 to i8
  store i8 %56, i8* %55, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %block_400488, %35
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d__MINUS0x2f4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 756
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x1c__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 28
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

define %struct.Memory* @routine_jne_.L_4a32b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2f4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 756
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 752
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11b10__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_4a32de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %14 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %13, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %13, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %13, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %34 = zext i1 %16 to i8
  store i8 %34, i8* %33, align 1
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

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jae_.L_4a3324(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x18dc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0xd0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -208
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
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

define %struct.Memory* @routine_jmpq_.L_4a32eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*)
  %14 = sub i32 %9, %13
  %15 = icmp ult i32 %9, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %9
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jae_.L_4a34ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x150__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -336
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 3
  %15 = icmp ult i32 %13, 3
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, 3
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4a34b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x18ec__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6380
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_je_.L_4a34b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.abs_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 748
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2ec__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 748
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -736
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
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

define %struct.Memory* @routine_jne_.L_4a345f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_jge_.L_4a344a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x250__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -592
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 1, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a345a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x250__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -592
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 -1, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a34b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jle_.L_4a349d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4a34ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a34b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a34bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a332b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x70eaa8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jae_.L_4a3633(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
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

define %struct.Memory* @routine_jae_.L_4a3620(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2e0__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -736
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2e0__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -736
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %21 to i32*
  %25 = load i32, i32* %24
  %26 = sub i32 %15, %25
  %27 = icmp ult i32 %15, %25
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %26, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %25, %15
  %37 = xor i32 %36, %26
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %26, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %26, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %15, 31
  %49 = lshr i32 %25, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4a3559(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4a360d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x250__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -592
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x250__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -592
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %21 to i32*
  %25 = load i32, i32* %24
  %26 = sub i32 %15, %25
  %27 = icmp ult i32 %15, %25
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %26, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %25, %15
  %37 = xor i32 %36, %26
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %26, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %26, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %15, 31
  %49 = lshr i32 %25, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_4a360d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 740
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -736
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2e4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x150__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -336
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x150__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -336
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x250__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -592
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a3612(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a34ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a3625(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a34d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x258__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jae_.L_4a368b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xd0__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -208
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x150__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -336
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %21 to i32*
  %25 = load i32, i32* %24
  %26 = sub i32 %15, %25
  %27 = icmp ult i32 %15, %25
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %26, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %25, %15
  %37 = xor i32 %36, %26
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %26, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %26, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %15, 31
  %49 = lshr i32 %25, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4a3678(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x258__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a367d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a3644(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x258__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_4a392e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jae_.L_4a38a5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 744
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x2e8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 744
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jg_.L_4a3724(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 0, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2e8__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 744
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0____rdx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_jge_.L_4a371f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 752
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
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

define %struct.Memory* @routine_jmpq_.L_4a374e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 1, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1d0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -464
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
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

define %struct.Memory* @routine_jae_.L_4a37df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4a37cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a37d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a3781(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x254__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 596
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jae_.L_4a383e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1d0__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -464
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4a382b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x254__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 596
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a383e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a3830(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a37f2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x254__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 596
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_4a3859(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4a38a5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jae_.L_4a3892(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -208
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a3860(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a3897(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a369f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x3____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 3, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jae_.L_4a38ee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a38bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4a3913(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a3929(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__0x58__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a392e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x300___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 768, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 768
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
  %25 = xor i64 768, %9
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
