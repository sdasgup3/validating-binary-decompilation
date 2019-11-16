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
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x722b20_type = type <{ [8 x i8] }>
%G_0x722b28_type = type <{ [8 x i8] }>
%G_0x722cb0_type = type <{ [8 x i8] }>
%G_0x7247b0_type = type <{ [4 x i8] }>
%G_0x7247b4_type = type <{ [4 x i8] }>
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
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x70fcf0 = global %G_0x70fcf0_type zeroinitializer
@G_0x722b20 = global %G_0x722b20_type zeroinitializer
@G_0x722b28 = global %G_0x722b28_type zeroinitializer
@G_0x722cb0 = global %G_0x722cb0_type zeroinitializer
@G_0x7247b0 = global %G_0x7247b0_type zeroinitializer
@G_0x7247b4 = global %G_0x7247b4_type zeroinitializer

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
define %struct.Memory* @set_ref_pic_num(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4a3940 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4a3940, %struct.Memory** %MEMORY
  %loadMem_4a3941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i501
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i501
  store i64 %26, i64* %RBP.i502, align 8
  store %struct.Memory* %loadMem_4a3941, %struct.Memory** %MEMORY
  %loadMem_4a3944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 15
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RBP.i500
  %36 = sub i64 %35, 4
  %37 = load i64, i64* %PC.i499
  %38 = add i64 %37, 7
  store i64 %38, i64* %PC.i499
  %39 = inttoptr i64 %36 to i32*
  store i32 0, i32* %39
  store %struct.Memory* %loadMem_4a3944, %struct.Memory** %MEMORY
  br label %block_.L_4a394b

block_.L_4a394b:                                  ; preds = %block_4a395b, %entry
  %loadMem_4a394b = load %struct.Memory*, %struct.Memory** %MEMORY
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %41 = getelementptr inbounds %struct.GPR, %struct.GPR* %40, i32 0, i32 33
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %41, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %42 to i64*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %45 to i64*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %47 = getelementptr inbounds %struct.GPR, %struct.GPR* %46, i32 0, i32 15
  %48 = getelementptr inbounds %struct.Reg, %struct.Reg* %47, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %48 to i64*
  %49 = load i64, i64* %RBP.i498
  %50 = sub i64 %49, 4
  %51 = load i64, i64* %PC.i496
  %52 = add i64 %51, 3
  store i64 %52, i64* %PC.i496
  %53 = inttoptr i64 %50 to i32*
  %54 = load i32, i32* %53
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %RAX.i497, align 8
  store %struct.Memory* %loadMem_4a394b, %struct.Memory** %MEMORY
  %loadMem_4a394e = load %struct.Memory*, %struct.Memory** %MEMORY
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %57 = getelementptr inbounds %struct.GPR, %struct.GPR* %56, i32 0, i32 33
  %58 = getelementptr inbounds %struct.Reg, %struct.Reg* %57, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %58 to i64*
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %EAX.i495 = bitcast %union.anon* %61 to i32*
  %62 = load i32, i32* %EAX.i495
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %PC.i494
  %65 = add i64 %64, 7
  store i64 %65, i64* %PC.i494
  %66 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*)
  %67 = sub i32 %62, %66
  %68 = icmp ult i32 %62, %66
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %69, i8* %70, align 1
  %71 = and i32 %67, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %75, i8* %76, align 1
  %77 = xor i32 %66, %62
  %78 = xor i32 %77, %67
  %79 = lshr i32 %78, 4
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %81, i8* %82, align 1
  %83 = icmp eq i32 %67, 0
  %84 = zext i1 %83 to i8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %84, i8* %85, align 1
  %86 = lshr i32 %67, 31
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %87, i8* %88, align 1
  %89 = lshr i32 %62, 31
  %90 = lshr i32 %66, 31
  %91 = xor i32 %90, %89
  %92 = xor i32 %86, %89
  %93 = add i32 %92, %91
  %94 = icmp eq i32 %93, 2
  %95 = zext i1 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %95, i8* %96, align 1
  store %struct.Memory* %loadMem_4a394e, %struct.Memory** %MEMORY
  %loadMem_4a3955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %PC.i493
  %101 = add i64 %100, 231
  %102 = load i64, i64* %PC.i493
  %103 = add i64 %102, 6
  %104 = load i64, i64* %PC.i493
  %105 = add i64 %104, 6
  store i64 %105, i64* %PC.i493
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %110 = load i8, i8* %109, align 1
  %111 = icmp ne i8 %110, 0
  %112 = xor i1 %108, %111
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %BRANCH_TAKEN, align 1
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %116 = select i1 %112, i64 %103, i64 %101
  store i64 %116, i64* %115, align 8
  store %struct.Memory* %loadMem_4a3955, %struct.Memory** %MEMORY
  %loadBr_4a3955 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3955 = icmp eq i8 %loadBr_4a3955, 1
  br i1 %cmpBr_4a3955, label %block_.L_4a3a3c, label %block_4a395b

block_4a395b:                                     ; preds = %block_.L_4a394b
  %loadMem_4a395b = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %EAX.i491 = bitcast %union.anon* %122 to i32*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %125 to i64*
  %126 = load i64, i64* %RAX.i492
  %127 = load i32, i32* %EAX.i491
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* %PC.i490
  %130 = add i64 %129, 2
  store i64 %130, i64* %PC.i490
  %131 = xor i64 %128, %126
  %132 = trunc i64 %131 to i32
  %133 = and i64 %131, 4294967295
  store i64 %133, i64* %RAX.i492, align 8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %134, align 1
  %135 = and i32 %132, 255
  %136 = call i32 @llvm.ctpop.i32(i32 %135)
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %139, i8* %140, align 1
  %141 = icmp eq i32 %132, 0
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %142, i8* %143, align 1
  %144 = lshr i32 %132, 31
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %145, i8* %146, align 1
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %147, align 1
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %148, align 1
  store %struct.Memory* %loadMem_4a395b, %struct.Memory** %MEMORY
  %loadMem_4a395d = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %RCX.i489 = bitcast %union.anon* %154 to i64*
  %155 = load i64, i64* %PC.i488
  %156 = add i64 %155, 5
  store i64 %156, i64* %PC.i488
  store i64 1, i64* %RCX.i489, align 8
  store %struct.Memory* %loadMem_4a395d, %struct.Memory** %MEMORY
  %loadMem_4a3962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 33
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RDX.i487 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %PC.i486
  %164 = add i64 %163, 8
  store i64 %164, i64* %PC.i486
  %165 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*)
  store i64 %165, i64* %RDX.i487, align 8
  store %struct.Memory* %loadMem_4a3962, %struct.Memory** %MEMORY
  %loadMem_4a396a = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 9
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RSI.i484 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 15
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %174 to i64*
  %175 = load i64, i64* %RBP.i485
  %176 = sub i64 %175, 4
  %177 = load i64, i64* %PC.i483
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC.i483
  %179 = inttoptr i64 %176 to i32*
  %180 = load i32, i32* %179
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %RSI.i484, align 8
  store %struct.Memory* %loadMem_4a396a, %struct.Memory** %MEMORY
  %loadMem_4a396e = load %struct.Memory*, %struct.Memory** %MEMORY
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 33
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RDX.i481 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 9
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %RSI.i482 = bitcast %union.anon* %190 to i64*
  %191 = load i64, i64* %RDX.i481
  %192 = load i64, i64* %RSI.i482
  %193 = mul i64 %192, 8
  %194 = add i64 %193, %191
  %195 = load i64, i64* %PC.i480
  %196 = add i64 %195, 4
  store i64 %196, i64* %PC.i480
  %197 = inttoptr i64 %194 to i64*
  %198 = load i64, i64* %197
  store i64 %198, i64* %RDX.i481, align 8
  store %struct.Memory* %loadMem_4a396e, %struct.Memory** %MEMORY
  %loadMem_4a3972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RDX.i478 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 11
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RDI.i479 = bitcast %union.anon* %207 to i64*
  %208 = load i64, i64* %RDX.i478
  %209 = add i64 %208, 4
  %210 = load i64, i64* %PC.i477
  %211 = add i64 %210, 3
  store i64 %211, i64* %PC.i477
  %212 = inttoptr i64 %209 to i32*
  %213 = load i32, i32* %212
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RDI.i479, align 8
  store %struct.Memory* %loadMem_4a3972, %struct.Memory** %MEMORY
  %loadMem_4a3975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 11
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RDI.i476 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RDI.i476
  %222 = load i64, i64* %PC.i475
  %223 = add i64 %222, 2
  store i64 %223, i64* %PC.i475
  %224 = trunc i64 %221 to i32
  %225 = shl i32 %224, 1
  %226 = icmp slt i32 %224, 0
  %227 = icmp slt i32 %225, 0
  %228 = xor i1 %226, %227
  %229 = zext i32 %225 to i64
  store i64 %229, i64* %RDI.i476, align 8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %231 = zext i1 %226 to i8
  store i8 %231, i8* %230, align 1
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %233 = and i32 %225, 254
  %234 = call i32 @llvm.ctpop.i32(i32 %233)
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %232, align 1
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %238, align 1
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %240 = icmp eq i32 %225, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %239, align 1
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %243 = lshr i32 %225, 31
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* %242, align 1
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %246 = zext i1 %228 to i8
  store i8 %246, i8* %245, align 1
  store %struct.Memory* %loadMem_4a3975, %struct.Memory** %MEMORY
  %loadMem_4a3978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 33
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %249 to i64*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 7
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RDX.i474 = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %PC.i473
  %254 = add i64 %253, 8
  store i64 %254, i64* %PC.i473
  %255 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*)
  store i64 %255, i64* %RDX.i474, align 8
  store %struct.Memory* %loadMem_4a3978, %struct.Memory** %MEMORY
  %loadMem_4a3980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 9
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RSI.i471 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 15
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %RBP.i472
  %266 = sub i64 %265, 4
  %267 = load i64, i64* %PC.i470
  %268 = add i64 %267, 4
  store i64 %268, i64* %PC.i470
  %269 = inttoptr i64 %266 to i32*
  %270 = load i32, i32* %269
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %RSI.i471, align 8
  store %struct.Memory* %loadMem_4a3980, %struct.Memory** %MEMORY
  %loadMem_4a3984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 33
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 7
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RDX.i468 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 9
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %RSI.i469 = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %RDX.i468
  %282 = load i64, i64* %RSI.i469
  %283 = mul i64 %282, 8
  %284 = add i64 %283, %281
  %285 = load i64, i64* %PC.i467
  %286 = add i64 %285, 4
  store i64 %286, i64* %PC.i467
  %287 = inttoptr i64 %284 to i64*
  %288 = load i64, i64* %287
  store i64 %288, i64* %RDX.i468, align 8
  store %struct.Memory* %loadMem_4a3984, %struct.Memory** %MEMORY
  %loadMem_4a3988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 7
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %RDX.i466 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %RDX.i466
  %296 = load i64, i64* %PC.i465
  %297 = add i64 %296, 3
  store i64 %297, i64* %PC.i465
  %298 = inttoptr i64 %295 to i32*
  %299 = load i32, i32* %298
  %300 = sub i32 %299, 2
  %301 = icmp ult i32 %299, 2
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %302, i8* %303, align 1
  %304 = and i32 %300, 255
  %305 = call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %308, i8* %309, align 1
  %310 = xor i32 %299, 2
  %311 = xor i32 %310, %300
  %312 = lshr i32 %311, 4
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %314, i8* %315, align 1
  %316 = icmp eq i32 %300, 0
  %317 = zext i1 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %317, i8* %318, align 1
  %319 = lshr i32 %300, 31
  %320 = trunc i32 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %320, i8* %321, align 1
  %322 = lshr i32 %299, 31
  %323 = xor i32 %319, %322
  %324 = add i32 %323, %322
  %325 = icmp eq i32 %324, 2
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %326, i8* %327, align 1
  store %struct.Memory* %loadMem_4a3988, %struct.Memory** %MEMORY
  %loadMem_4a398b = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 5
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %ECX.i463 = bitcast %union.anon* %333 to i32*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %336 to i64*
  %337 = load i32, i32* %ECX.i463
  %338 = zext i32 %337 to i64
  %339 = load i64, i64* %PC.i462
  %340 = add i64 %339, 3
  store i64 %340, i64* %PC.i462
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %342 = load i8, i8* %341, align 1
  %343 = icmp ne i8 %342, 0
  %344 = load i64, i64* %RAX.i464, align 8
  %345 = select i1 %343, i64 %338, i64 %344
  %346 = and i64 %345, 4294967295
  store i64 %346, i64* %RAX.i464, align 8
  store %struct.Memory* %loadMem_4a398b, %struct.Memory** %MEMORY
  %loadMem_4a398e = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %352 to i32*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 11
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RDI.i461 = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %RDI.i461
  %357 = load i32, i32* %EAX.i460
  %358 = zext i32 %357 to i64
  %359 = load i64, i64* %PC.i459
  %360 = add i64 %359, 2
  store i64 %360, i64* %PC.i459
  %361 = trunc i64 %356 to i32
  %362 = add i32 %357, %361
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RDI.i461, align 8
  %364 = icmp ult i32 %362, %361
  %365 = icmp ult i32 %362, %357
  %366 = or i1 %364, %365
  %367 = zext i1 %366 to i8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %367, i8* %368, align 1
  %369 = and i32 %362, 255
  %370 = call i32 @llvm.ctpop.i32(i32 %369)
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %373, i8* %374, align 1
  %375 = xor i64 %358, %356
  %376 = trunc i64 %375 to i32
  %377 = xor i32 %376, %362
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %380, i8* %381, align 1
  %382 = icmp eq i32 %362, 0
  %383 = zext i1 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %383, i8* %384, align 1
  %385 = lshr i32 %362, 31
  %386 = trunc i32 %385 to i8
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %386, i8* %387, align 1
  %388 = lshr i32 %361, 31
  %389 = lshr i32 %357, 31
  %390 = xor i32 %385, %388
  %391 = xor i32 %385, %389
  %392 = add i32 %390, %391
  %393 = icmp eq i32 %392, 2
  %394 = zext i1 %393 to i8
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %394, i8* %395, align 1
  store %struct.Memory* %loadMem_4a398e, %struct.Memory** %MEMORY
  %loadMem_4a3990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 11
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %EDI.i457 = bitcast %union.anon* %401 to i32*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 7
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %RDX.i458 = bitcast %union.anon* %404 to i64*
  %405 = load i32, i32* %EDI.i457
  %406 = zext i32 %405 to i64
  %407 = load i64, i64* %PC.i456
  %408 = add i64 %407, 3
  store i64 %408, i64* %PC.i456
  %409 = shl i64 %406, 32
  %410 = ashr exact i64 %409, 32
  store i64 %410, i64* %RDX.i458, align 8
  store %struct.Memory* %loadMem_4a3990, %struct.Memory** %MEMORY
  %loadMem_4a3993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 9
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RSI.i455 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %PC.i454
  %418 = add i64 %417, 8
  store i64 %418, i64* %PC.i454
  %419 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %419, i64* %RSI.i455, align 8
  store %struct.Memory* %loadMem_4a3993, %struct.Memory** %MEMORY
  %loadMem_4a399b = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 15
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 17
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %R8.i453 = bitcast %union.anon* %428 to i64*
  %429 = load i64, i64* %RBP.i452
  %430 = sub i64 %429, 4
  %431 = load i64, i64* %PC.i451
  %432 = add i64 %431, 4
  store i64 %432, i64* %PC.i451
  %433 = inttoptr i64 %430 to i32*
  %434 = load i32, i32* %433
  %435 = sext i32 %434 to i64
  store i64 %435, i64* %R8.i453, align 8
  store %struct.Memory* %loadMem_4a399b, %struct.Memory** %MEMORY
  %loadMem_4a399f = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 7
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RDX.i448 = bitcast %union.anon* %441 to i64*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 9
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %RSI.i449 = bitcast %union.anon* %444 to i64*
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 17
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %R8.i450 = bitcast %union.anon* %447 to i64*
  %448 = load i64, i64* %RSI.i449
  %449 = load i64, i64* %R8.i450
  %450 = mul i64 %449, 8
  %451 = add i64 %448, 24
  %452 = add i64 %451, %450
  %453 = load i64, i64* %RDX.i448
  %454 = load i64, i64* %PC.i447
  %455 = add i64 %454, 5
  store i64 %455, i64* %PC.i447
  %456 = inttoptr i64 %452 to i64*
  store i64 %453, i64* %456
  store %struct.Memory* %loadMem_4a399f, %struct.Memory** %MEMORY
  %loadMem_4a39a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 33
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %459 to i64*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 7
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %462 to i64*
  %463 = load i64, i64* %PC.i445
  %464 = add i64 %463, 8
  store i64 %464, i64* %PC.i445
  %465 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*)
  store i64 %465, i64* %RDX.i446, align 8
  store %struct.Memory* %loadMem_4a39a4, %struct.Memory** %MEMORY
  %loadMem_4a39ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 9
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RSI.i443 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 15
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %474 to i64*
  %475 = load i64, i64* %RBP.i444
  %476 = sub i64 %475, 4
  %477 = load i64, i64* %PC.i442
  %478 = add i64 %477, 4
  store i64 %478, i64* %PC.i442
  %479 = inttoptr i64 %476 to i32*
  %480 = load i32, i32* %479
  %481 = sext i32 %480 to i64
  store i64 %481, i64* %RSI.i443, align 8
  store %struct.Memory* %loadMem_4a39ac, %struct.Memory** %MEMORY
  %loadMem_4a39b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 33
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %484 to i64*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 7
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %RDX.i440 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 9
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RSI.i441 = bitcast %union.anon* %490 to i64*
  %491 = load i64, i64* %RDX.i440
  %492 = load i64, i64* %RSI.i441
  %493 = mul i64 %492, 8
  %494 = add i64 %493, %491
  %495 = load i64, i64* %PC.i439
  %496 = add i64 %495, 4
  store i64 %496, i64* %PC.i439
  %497 = inttoptr i64 %494 to i64*
  %498 = load i64, i64* %497
  store i64 %498, i64* %RDX.i440, align 8
  store %struct.Memory* %loadMem_4a39b0, %struct.Memory** %MEMORY
  %loadMem_4a39b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 7
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RDX.i438 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %RDX.i438
  %509 = add i64 %508, 16
  %510 = load i64, i64* %PC.i436
  %511 = add i64 %510, 3
  store i64 %511, i64* %PC.i436
  %512 = inttoptr i64 %509 to i32*
  %513 = load i32, i32* %512
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_4a39b4, %struct.Memory** %MEMORY
  %loadMem_4a39b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %520 to i64*
  %521 = load i64, i64* %RAX.i435
  %522 = load i64, i64* %PC.i434
  %523 = add i64 %522, 2
  store i64 %523, i64* %PC.i434
  %524 = trunc i64 %521 to i32
  %525 = shl i32 %524, 1
  %526 = icmp slt i32 %524, 0
  %527 = icmp slt i32 %525, 0
  %528 = xor i1 %526, %527
  %529 = zext i32 %525 to i64
  store i64 %529, i64* %RAX.i435, align 8
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %531 = zext i1 %526 to i8
  store i8 %531, i8* %530, align 1
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %533 = and i32 %525, 254
  %534 = call i32 @llvm.ctpop.i32(i32 %533)
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = xor i8 %536, 1
  store i8 %537, i8* %532, align 1
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %538, align 1
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %540 = icmp eq i32 %525, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %539, align 1
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %543 = lshr i32 %525, 31
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %542, align 1
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %546 = zext i1 %528 to i8
  store i8 %546, i8* %545, align 1
  store %struct.Memory* %loadMem_4a39b7, %struct.Memory** %MEMORY
  %loadMem_4a39ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 33
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %EAX.i432 = bitcast %union.anon* %552 to i32*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 7
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %RDX.i433 = bitcast %union.anon* %555 to i64*
  %556 = load i32, i32* %EAX.i432
  %557 = zext i32 %556 to i64
  %558 = load i64, i64* %PC.i431
  %559 = add i64 %558, 3
  store i64 %559, i64* %PC.i431
  %560 = shl i64 %557, 32
  %561 = ashr exact i64 %560, 32
  store i64 %561, i64* %RDX.i433, align 8
  store %struct.Memory* %loadMem_4a39ba, %struct.Memory** %MEMORY
  %loadMem_4a39bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 33
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 9
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %RSI.i430 = bitcast %union.anon* %567 to i64*
  %568 = load i64, i64* %PC.i429
  %569 = add i64 %568, 8
  store i64 %569, i64* %PC.i429
  %570 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %570, i64* %RSI.i430, align 8
  store %struct.Memory* %loadMem_4a39bd, %struct.Memory** %MEMORY
  %loadMem_4a39c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 15
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 17
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %R8.i428 = bitcast %union.anon* %579 to i64*
  %580 = load i64, i64* %RBP.i427
  %581 = sub i64 %580, 4
  %582 = load i64, i64* %PC.i426
  %583 = add i64 %582, 4
  store i64 %583, i64* %PC.i426
  %584 = inttoptr i64 %581 to i32*
  %585 = load i32, i32* %584
  %586 = sext i32 %585 to i64
  store i64 %586, i64* %R8.i428, align 8
  store %struct.Memory* %loadMem_4a39c5, %struct.Memory** %MEMORY
  %loadMem_4a39c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 33
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 7
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %RDX.i423 = bitcast %union.anon* %592 to i64*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 9
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %RSI.i424 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 17
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %R8.i425 = bitcast %union.anon* %598 to i64*
  %599 = load i64, i64* %RSI.i424
  %600 = load i64, i64* %R8.i425
  %601 = mul i64 %600, 8
  %602 = add i64 %599, 1608
  %603 = add i64 %602, %601
  %604 = load i64, i64* %RDX.i423
  %605 = load i64, i64* %PC.i422
  %606 = add i64 %605, 8
  store i64 %606, i64* %PC.i422
  %607 = inttoptr i64 %603 to i64*
  store i64 %604, i64* %607
  store %struct.Memory* %loadMem_4a39c9, %struct.Memory** %MEMORY
  %loadMem_4a39d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 33
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 7
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RDX.i421 = bitcast %union.anon* %613 to i64*
  %614 = load i64, i64* %PC.i420
  %615 = add i64 %614, 8
  store i64 %615, i64* %PC.i420
  %616 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*)
  store i64 %616, i64* %RDX.i421, align 8
  store %struct.Memory* %loadMem_4a39d1, %struct.Memory** %MEMORY
  %loadMem_4a39d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 33
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 9
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %RSI.i418 = bitcast %union.anon* %622 to i64*
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 15
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %625 to i64*
  %626 = load i64, i64* %RBP.i419
  %627 = sub i64 %626, 4
  %628 = load i64, i64* %PC.i417
  %629 = add i64 %628, 4
  store i64 %629, i64* %PC.i417
  %630 = inttoptr i64 %627 to i32*
  %631 = load i32, i32* %630
  %632 = sext i32 %631 to i64
  store i64 %632, i64* %RSI.i418, align 8
  store %struct.Memory* %loadMem_4a39d9, %struct.Memory** %MEMORY
  %loadMem_4a39dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 7
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RDX.i415 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 9
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RSI.i416 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RDX.i415
  %643 = load i64, i64* %RSI.i416
  %644 = mul i64 %643, 8
  %645 = add i64 %644, %642
  %646 = load i64, i64* %PC.i414
  %647 = add i64 %646, 4
  store i64 %647, i64* %PC.i414
  %648 = inttoptr i64 %645 to i64*
  %649 = load i64, i64* %648
  store i64 %649, i64* %RDX.i415, align 8
  store %struct.Memory* %loadMem_4a39dd, %struct.Memory** %MEMORY
  %loadMem_4a39e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 33
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 1
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 7
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %RDX.i413 = bitcast %union.anon* %658 to i64*
  %659 = load i64, i64* %RDX.i413
  %660 = add i64 %659, 8
  %661 = load i64, i64* %PC.i411
  %662 = add i64 %661, 3
  store i64 %662, i64* %PC.i411
  %663 = inttoptr i64 %660 to i32*
  %664 = load i32, i32* %663
  %665 = zext i32 %664 to i64
  store i64 %665, i64* %RAX.i412, align 8
  store %struct.Memory* %loadMem_4a39e1, %struct.Memory** %MEMORY
  %loadMem_4a39e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 33
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 1
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %671 to i64*
  %672 = load i64, i64* %RAX.i410
  %673 = load i64, i64* %PC.i409
  %674 = add i64 %673, 2
  store i64 %674, i64* %PC.i409
  %675 = trunc i64 %672 to i32
  %676 = shl i32 %675, 1
  %677 = icmp slt i32 %675, 0
  %678 = icmp slt i32 %676, 0
  %679 = xor i1 %677, %678
  %680 = zext i32 %676 to i64
  store i64 %680, i64* %RAX.i410, align 8
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %682 = zext i1 %677 to i8
  store i8 %682, i8* %681, align 1
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %684 = and i32 %676, 254
  %685 = call i32 @llvm.ctpop.i32(i32 %684)
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  store i8 %688, i8* %683, align 1
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %689, align 1
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %691 = icmp eq i32 %676, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %690, align 1
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %694 = lshr i32 %676, 31
  %695 = trunc i32 %694 to i8
  store i8 %695, i8* %693, align 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %697 = zext i1 %679 to i8
  store i8 %697, i8* %696, align 1
  store %struct.Memory* %loadMem_4a39e4, %struct.Memory** %MEMORY
  %loadMem_4a39e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 33
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 1
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %EAX.i407 = bitcast %union.anon* %703 to i32*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 7
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RDX.i408 = bitcast %union.anon* %706 to i64*
  %707 = load i32, i32* %EAX.i407
  %708 = zext i32 %707 to i64
  %709 = load i64, i64* %PC.i406
  %710 = add i64 %709, 3
  store i64 %710, i64* %PC.i406
  %711 = shl i64 %708, 32
  %712 = ashr exact i64 %711, 32
  store i64 %712, i64* %RDX.i408, align 8
  store %struct.Memory* %loadMem_4a39e7, %struct.Memory** %MEMORY
  %loadMem_4a39ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 9
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RSI.i405 = bitcast %union.anon* %718 to i64*
  %719 = load i64, i64* %PC.i404
  %720 = add i64 %719, 8
  store i64 %720, i64* %PC.i404
  %721 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %721, i64* %RSI.i405, align 8
  store %struct.Memory* %loadMem_4a39ea, %struct.Memory** %MEMORY
  %loadMem_4a39f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %724 to i64*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 15
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 17
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %R8.i403 = bitcast %union.anon* %730 to i64*
  %731 = load i64, i64* %RBP.i402
  %732 = sub i64 %731, 4
  %733 = load i64, i64* %PC.i401
  %734 = add i64 %733, 4
  store i64 %734, i64* %PC.i401
  %735 = inttoptr i64 %732 to i32*
  %736 = load i32, i32* %735
  %737 = sext i32 %736 to i64
  store i64 %737, i64* %R8.i403, align 8
  store %struct.Memory* %loadMem_4a39f2, %struct.Memory** %MEMORY
  %loadMem_4a39f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 7
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 9
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RSI.i399 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 17
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %R8.i400 = bitcast %union.anon* %749 to i64*
  %750 = load i64, i64* %RSI.i399
  %751 = load i64, i64* %R8.i400
  %752 = mul i64 %751, 8
  %753 = add i64 %750, 3192
  %754 = add i64 %753, %752
  %755 = load i64, i64* %RDX.i398
  %756 = load i64, i64* %PC.i397
  %757 = add i64 %756, 8
  store i64 %757, i64* %PC.i397
  %758 = inttoptr i64 %754 to i64*
  store i64 %755, i64* %758
  store %struct.Memory* %loadMem_4a39f6, %struct.Memory** %MEMORY
  %loadMem_4a39fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 7
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %RDX.i396 = bitcast %union.anon* %764 to i64*
  %765 = load i64, i64* %PC.i395
  %766 = add i64 %765, 8
  store i64 %766, i64* %PC.i395
  %767 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*)
  store i64 %767, i64* %RDX.i396, align 8
  store %struct.Memory* %loadMem_4a39fe, %struct.Memory** %MEMORY
  %loadMem_4a3a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 33
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %770 to i64*
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 9
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %RSI.i393 = bitcast %union.anon* %773 to i64*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 15
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %776 to i64*
  %777 = load i64, i64* %RBP.i394
  %778 = sub i64 %777, 4
  %779 = load i64, i64* %PC.i392
  %780 = add i64 %779, 4
  store i64 %780, i64* %PC.i392
  %781 = inttoptr i64 %778 to i32*
  %782 = load i32, i32* %781
  %783 = sext i32 %782 to i64
  store i64 %783, i64* %RSI.i393, align 8
  store %struct.Memory* %loadMem_4a3a06, %struct.Memory** %MEMORY
  %loadMem_4a3a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 33
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 7
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RDX.i390 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 9
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RSI.i391 = bitcast %union.anon* %792 to i64*
  %793 = load i64, i64* %RDX.i390
  %794 = load i64, i64* %RSI.i391
  %795 = mul i64 %794, 8
  %796 = add i64 %795, %793
  %797 = load i64, i64* %PC.i389
  %798 = add i64 %797, 4
  store i64 %798, i64* %PC.i389
  %799 = inttoptr i64 %796 to i64*
  %800 = load i64, i64* %799
  store i64 %800, i64* %RDX.i390, align 8
  store %struct.Memory* %loadMem_4a3a0a, %struct.Memory** %MEMORY
  %loadMem_4a3a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 33
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 1
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 7
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %RDX.i388 = bitcast %union.anon* %809 to i64*
  %810 = load i64, i64* %RDX.i388
  %811 = add i64 %810, 12
  %812 = load i64, i64* %PC.i386
  %813 = add i64 %812, 3
  store i64 %813, i64* %PC.i386
  %814 = inttoptr i64 %811 to i32*
  %815 = load i32, i32* %814
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_4a3a0e, %struct.Memory** %MEMORY
  %loadMem_4a3a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 33
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %819 to i64*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 1
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %822 to i64*
  %823 = load i64, i64* %RAX.i385
  %824 = load i64, i64* %PC.i384
  %825 = add i64 %824, 2
  store i64 %825, i64* %PC.i384
  %826 = trunc i64 %823 to i32
  %827 = shl i32 %826, 1
  %828 = icmp slt i32 %826, 0
  %829 = icmp slt i32 %827, 0
  %830 = xor i1 %828, %829
  %831 = zext i32 %827 to i64
  store i64 %831, i64* %RAX.i385, align 8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %833 = zext i1 %828 to i8
  store i8 %833, i8* %832, align 1
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %835 = and i32 %827, 254
  %836 = call i32 @llvm.ctpop.i32(i32 %835)
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  store i8 %839, i8* %834, align 1
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %840, align 1
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %842 = icmp eq i32 %827, 0
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %841, align 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %845 = lshr i32 %827, 31
  %846 = trunc i32 %845 to i8
  store i8 %846, i8* %844, align 1
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %848 = zext i1 %830 to i8
  store i8 %848, i8* %847, align 1
  store %struct.Memory* %loadMem_4a3a11, %struct.Memory** %MEMORY
  %loadMem_4a3a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 1
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %854 to i64*
  %855 = load i64, i64* %RAX.i383
  %856 = load i64, i64* %PC.i382
  %857 = add i64 %856, 3
  store i64 %857, i64* %PC.i382
  %858 = trunc i64 %855 to i32
  %859 = add i32 1, %858
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RAX.i383, align 8
  %861 = icmp ult i32 %859, %858
  %862 = icmp ult i32 %859, 1
  %863 = or i1 %861, %862
  %864 = zext i1 %863 to i8
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %864, i8* %865, align 1
  %866 = and i32 %859, 255
  %867 = call i32 @llvm.ctpop.i32(i32 %866)
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  %870 = xor i8 %869, 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %870, i8* %871, align 1
  %872 = xor i64 1, %855
  %873 = trunc i64 %872 to i32
  %874 = xor i32 %873, %859
  %875 = lshr i32 %874, 4
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %877, i8* %878, align 1
  %879 = icmp eq i32 %859, 0
  %880 = zext i1 %879 to i8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %880, i8* %881, align 1
  %882 = lshr i32 %859, 31
  %883 = trunc i32 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %883, i8* %884, align 1
  %885 = lshr i32 %858, 31
  %886 = xor i32 %882, %885
  %887 = add i32 %886, %882
  %888 = icmp eq i32 %887, 2
  %889 = zext i1 %888 to i8
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %889, i8* %890, align 1
  store %struct.Memory* %loadMem_4a3a14, %struct.Memory** %MEMORY
  %loadMem_4a3a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 33
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 1
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %EAX.i380 = bitcast %union.anon* %896 to i32*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 7
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RDX.i381 = bitcast %union.anon* %899 to i64*
  %900 = load i32, i32* %EAX.i380
  %901 = zext i32 %900 to i64
  %902 = load i64, i64* %PC.i379
  %903 = add i64 %902, 3
  store i64 %903, i64* %PC.i379
  %904 = shl i64 %901, 32
  %905 = ashr exact i64 %904, 32
  store i64 %905, i64* %RDX.i381, align 8
  store %struct.Memory* %loadMem_4a3a17, %struct.Memory** %MEMORY
  %loadMem_4a3a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 33
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %908 to i64*
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 9
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %RSI.i378 = bitcast %union.anon* %911 to i64*
  %912 = load i64, i64* %PC.i377
  %913 = add i64 %912, 8
  store i64 %913, i64* %PC.i377
  %914 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %914, i64* %RSI.i378, align 8
  store %struct.Memory* %loadMem_4a3a1a, %struct.Memory** %MEMORY
  %loadMem_4a3a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 15
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %920 to i64*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 17
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %R8.i376 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %RBP.i375
  %925 = sub i64 %924, 4
  %926 = load i64, i64* %PC.i374
  %927 = add i64 %926, 4
  store i64 %927, i64* %PC.i374
  %928 = inttoptr i64 %925 to i32*
  %929 = load i32, i32* %928
  %930 = sext i32 %929 to i64
  store i64 %930, i64* %R8.i376, align 8
  store %struct.Memory* %loadMem_4a3a22, %struct.Memory** %MEMORY
  %loadMem_4a3a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 7
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RDX.i371 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 9
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RSI.i372 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 17
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %R8.i373 = bitcast %union.anon* %942 to i64*
  %943 = load i64, i64* %RSI.i372
  %944 = load i64, i64* %R8.i373
  %945 = mul i64 %944, 8
  %946 = add i64 %943, 4776
  %947 = add i64 %946, %945
  %948 = load i64, i64* %RDX.i371
  %949 = load i64, i64* %PC.i370
  %950 = add i64 %949, 8
  store i64 %950, i64* %PC.i370
  %951 = inttoptr i64 %947 to i64*
  store i64 %948, i64* %951
  store %struct.Memory* %loadMem_4a3a26, %struct.Memory** %MEMORY
  %loadMem_4a3a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 33
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 1
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 15
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %960 to i64*
  %961 = load i64, i64* %RBP.i369
  %962 = sub i64 %961, 4
  %963 = load i64, i64* %PC.i367
  %964 = add i64 %963, 3
  store i64 %964, i64* %PC.i367
  %965 = inttoptr i64 %962 to i32*
  %966 = load i32, i32* %965
  %967 = zext i32 %966 to i64
  store i64 %967, i64* %RAX.i368, align 8
  store %struct.Memory* %loadMem_4a3a2e, %struct.Memory** %MEMORY
  %loadMem_4a3a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 33
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 1
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %973 to i64*
  %974 = load i64, i64* %RAX.i366
  %975 = load i64, i64* %PC.i365
  %976 = add i64 %975, 3
  store i64 %976, i64* %PC.i365
  %977 = trunc i64 %974 to i32
  %978 = add i32 1, %977
  %979 = zext i32 %978 to i64
  store i64 %979, i64* %RAX.i366, align 8
  %980 = icmp ult i32 %978, %977
  %981 = icmp ult i32 %978, 1
  %982 = or i1 %980, %981
  %983 = zext i1 %982 to i8
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %983, i8* %984, align 1
  %985 = and i32 %978, 255
  %986 = call i32 @llvm.ctpop.i32(i32 %985)
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = xor i8 %988, 1
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %989, i8* %990, align 1
  %991 = xor i64 1, %974
  %992 = trunc i64 %991 to i32
  %993 = xor i32 %992, %978
  %994 = lshr i32 %993, 4
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %996, i8* %997, align 1
  %998 = icmp eq i32 %978, 0
  %999 = zext i1 %998 to i8
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %999, i8* %1000, align 1
  %1001 = lshr i32 %978, 31
  %1002 = trunc i32 %1001 to i8
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1002, i8* %1003, align 1
  %1004 = lshr i32 %977, 31
  %1005 = xor i32 %1001, %1004
  %1006 = add i32 %1005, %1001
  %1007 = icmp eq i32 %1006, 2
  %1008 = zext i1 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1008, i8* %1009, align 1
  store %struct.Memory* %loadMem_4a3a31, %struct.Memory** %MEMORY
  %loadMem_4a3a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 1
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %EAX.i363 = bitcast %union.anon* %1015 to i32*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 15
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %1018 to i64*
  %1019 = load i64, i64* %RBP.i364
  %1020 = sub i64 %1019, 4
  %1021 = load i32, i32* %EAX.i363
  %1022 = zext i32 %1021 to i64
  %1023 = load i64, i64* %PC.i362
  %1024 = add i64 %1023, 3
  store i64 %1024, i64* %PC.i362
  %1025 = inttoptr i64 %1020 to i32*
  store i32 %1021, i32* %1025
  store %struct.Memory* %loadMem_4a3a34, %struct.Memory** %MEMORY
  %loadMem_4a3a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1028 to i64*
  %1029 = load i64, i64* %PC.i361
  %1030 = add i64 %1029, -236
  %1031 = load i64, i64* %PC.i361
  %1032 = add i64 %1031, 5
  store i64 %1032, i64* %PC.i361
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1030, i64* %1033, align 8
  store %struct.Memory* %loadMem_4a3a37, %struct.Memory** %MEMORY
  br label %block_.L_4a394b

block_.L_4a3a3c:                                  ; preds = %block_.L_4a394b
  %loadMem_4a3a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 33
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 15
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %1039 to i64*
  %1040 = load i64, i64* %RBP.i360
  %1041 = sub i64 %1040, 4
  %1042 = load i64, i64* %PC.i359
  %1043 = add i64 %1042, 7
  store i64 %1043, i64* %PC.i359
  %1044 = inttoptr i64 %1041 to i32*
  store i32 0, i32* %1044
  store %struct.Memory* %loadMem_4a3a3c, %struct.Memory** %MEMORY
  br label %block_.L_4a3a43

block_.L_4a3a43:                                  ; preds = %block_4a3a53, %block_.L_4a3a3c
  %loadMem_4a3a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 1
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 15
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %RBP.i358
  %1055 = sub i64 %1054, 4
  %1056 = load i64, i64* %PC.i356
  %1057 = add i64 %1056, 3
  store i64 %1057, i64* %PC.i356
  %1058 = inttoptr i64 %1055 to i32*
  %1059 = load i32, i32* %1058
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RAX.i357, align 8
  store %struct.Memory* %loadMem_4a3a43, %struct.Memory** %MEMORY
  %loadMem_4a3a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 1
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %EAX.i355 = bitcast %union.anon* %1066 to i32*
  %1067 = load i32, i32* %EAX.i355
  %1068 = zext i32 %1067 to i64
  %1069 = load i64, i64* %PC.i354
  %1070 = add i64 %1069, 7
  store i64 %1070, i64* %PC.i354
  %1071 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*)
  %1072 = sub i32 %1067, %1071
  %1073 = icmp ult i32 %1067, %1071
  %1074 = zext i1 %1073 to i8
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1074, i8* %1075, align 1
  %1076 = and i32 %1072, 255
  %1077 = call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1080, i8* %1081, align 1
  %1082 = xor i32 %1071, %1067
  %1083 = xor i32 %1082, %1072
  %1084 = lshr i32 %1083, 4
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1086, i8* %1087, align 1
  %1088 = icmp eq i32 %1072, 0
  %1089 = zext i1 %1088 to i8
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1089, i8* %1090, align 1
  %1091 = lshr i32 %1072, 31
  %1092 = trunc i32 %1091 to i8
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1092, i8* %1093, align 1
  %1094 = lshr i32 %1067, 31
  %1095 = lshr i32 %1071, 31
  %1096 = xor i32 %1095, %1094
  %1097 = xor i32 %1091, %1094
  %1098 = add i32 %1097, %1096
  %1099 = icmp eq i32 %1098, 2
  %1100 = zext i1 %1099 to i8
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1100, i8* %1101, align 1
  store %struct.Memory* %loadMem_4a3a46, %struct.Memory** %MEMORY
  %loadMem_4a3a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 33
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1104 to i64*
  %1105 = load i64, i64* %PC.i353
  %1106 = add i64 %1105, 234
  %1107 = load i64, i64* %PC.i353
  %1108 = add i64 %1107, 6
  %1109 = load i64, i64* %PC.i353
  %1110 = add i64 %1109, 6
  store i64 %1110, i64* %PC.i353
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1112 = load i8, i8* %1111, align 1
  %1113 = icmp ne i8 %1112, 0
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1115 = load i8, i8* %1114, align 1
  %1116 = icmp ne i8 %1115, 0
  %1117 = xor i1 %1113, %1116
  %1118 = xor i1 %1117, true
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %BRANCH_TAKEN, align 1
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1121 = select i1 %1117, i64 %1108, i64 %1106
  store i64 %1121, i64* %1120, align 8
  store %struct.Memory* %loadMem_4a3a4d, %struct.Memory** %MEMORY
  %loadBr_4a3a4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3a4d = icmp eq i8 %loadBr_4a3a4d, 1
  br i1 %cmpBr_4a3a4d, label %block_.L_4a3b37, label %block_4a3a53

block_4a3a53:                                     ; preds = %block_.L_4a3a43
  %loadMem_4a3a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 33
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1124 to i64*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 1
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %EAX.i351 = bitcast %union.anon* %1127 to i32*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 1
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %1130 to i64*
  %1131 = load i64, i64* %RAX.i352
  %1132 = load i32, i32* %EAX.i351
  %1133 = zext i32 %1132 to i64
  %1134 = load i64, i64* %PC.i350
  %1135 = add i64 %1134, 2
  store i64 %1135, i64* %PC.i350
  %1136 = xor i64 %1133, %1131
  %1137 = trunc i64 %1136 to i32
  %1138 = and i64 %1136, 4294967295
  store i64 %1138, i64* %RAX.i352, align 8
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1139, align 1
  %1140 = and i32 %1137, 255
  %1141 = call i32 @llvm.ctpop.i32(i32 %1140)
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  %1144 = xor i8 %1143, 1
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1144, i8* %1145, align 1
  %1146 = icmp eq i32 %1137, 0
  %1147 = zext i1 %1146 to i8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1147, i8* %1148, align 1
  %1149 = lshr i32 %1137, 31
  %1150 = trunc i32 %1149 to i8
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1150, i8* %1151, align 1
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1152, align 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1153, align 1
  store %struct.Memory* %loadMem_4a3a53, %struct.Memory** %MEMORY
  %loadMem_4a3a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 33
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 5
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %1159 to i64*
  %1160 = load i64, i64* %PC.i348
  %1161 = add i64 %1160, 5
  store i64 %1161, i64* %PC.i348
  store i64 1, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_4a3a55, %struct.Memory** %MEMORY
  %loadMem_4a3a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 33
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1164 to i64*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 7
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %RDX.i347 = bitcast %union.anon* %1167 to i64*
  %1168 = load i64, i64* %PC.i346
  %1169 = add i64 %1168, 8
  store i64 %1169, i64* %PC.i346
  %1170 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*)
  store i64 %1170, i64* %RDX.i347, align 8
  store %struct.Memory* %loadMem_4a3a5a, %struct.Memory** %MEMORY
  %loadMem_4a3a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 33
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1173 to i64*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 9
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %RSI.i344 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 15
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %1179 to i64*
  %1180 = load i64, i64* %RBP.i345
  %1181 = sub i64 %1180, 4
  %1182 = load i64, i64* %PC.i343
  %1183 = add i64 %1182, 4
  store i64 %1183, i64* %PC.i343
  %1184 = inttoptr i64 %1181 to i32*
  %1185 = load i32, i32* %1184
  %1186 = sext i32 %1185 to i64
  store i64 %1186, i64* %RSI.i344, align 8
  store %struct.Memory* %loadMem_4a3a62, %struct.Memory** %MEMORY
  %loadMem_4a3a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 33
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1189 to i64*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 7
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %RDX.i341 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 9
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %RSI.i342 = bitcast %union.anon* %1195 to i64*
  %1196 = load i64, i64* %RDX.i341
  %1197 = load i64, i64* %RSI.i342
  %1198 = mul i64 %1197, 8
  %1199 = add i64 %1198, %1196
  %1200 = load i64, i64* %PC.i340
  %1201 = add i64 %1200, 4
  store i64 %1201, i64* %PC.i340
  %1202 = inttoptr i64 %1199 to i64*
  %1203 = load i64, i64* %1202
  store i64 %1203, i64* %RDX.i341, align 8
  store %struct.Memory* %loadMem_4a3a66, %struct.Memory** %MEMORY
  %loadMem_4a3a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 7
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RDX.i338 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 11
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %RDI.i339 = bitcast %union.anon* %1212 to i64*
  %1213 = load i64, i64* %RDX.i338
  %1214 = add i64 %1213, 4
  %1215 = load i64, i64* %PC.i337
  %1216 = add i64 %1215, 3
  store i64 %1216, i64* %PC.i337
  %1217 = inttoptr i64 %1214 to i32*
  %1218 = load i32, i32* %1217
  %1219 = zext i32 %1218 to i64
  store i64 %1219, i64* %RDI.i339, align 8
  store %struct.Memory* %loadMem_4a3a6a, %struct.Memory** %MEMORY
  %loadMem_4a3a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 33
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 11
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %RDI.i336 = bitcast %union.anon* %1225 to i64*
  %1226 = load i64, i64* %RDI.i336
  %1227 = load i64, i64* %PC.i335
  %1228 = add i64 %1227, 2
  store i64 %1228, i64* %PC.i335
  %1229 = trunc i64 %1226 to i32
  %1230 = shl i32 %1229, 1
  %1231 = icmp slt i32 %1229, 0
  %1232 = icmp slt i32 %1230, 0
  %1233 = xor i1 %1231, %1232
  %1234 = zext i32 %1230 to i64
  store i64 %1234, i64* %RDI.i336, align 8
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1236 = zext i1 %1231 to i8
  store i8 %1236, i8* %1235, align 1
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1238 = and i32 %1230, 254
  %1239 = call i32 @llvm.ctpop.i32(i32 %1238)
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %1237, align 1
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1243, align 1
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1245 = icmp eq i32 %1230, 0
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %1244, align 1
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1248 = lshr i32 %1230, 31
  %1249 = trunc i32 %1248 to i8
  store i8 %1249, i8* %1247, align 1
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1251 = zext i1 %1233 to i8
  store i8 %1251, i8* %1250, align 1
  store %struct.Memory* %loadMem_4a3a6d, %struct.Memory** %MEMORY
  %loadMem_4a3a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 33
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1254 to i64*
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 7
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %RDX.i334 = bitcast %union.anon* %1257 to i64*
  %1258 = load i64, i64* %PC.i333
  %1259 = add i64 %1258, 8
  store i64 %1259, i64* %PC.i333
  %1260 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*)
  store i64 %1260, i64* %RDX.i334, align 8
  store %struct.Memory* %loadMem_4a3a70, %struct.Memory** %MEMORY
  %loadMem_4a3a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 33
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 9
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %RSI.i331 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 15
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %1269 to i64*
  %1270 = load i64, i64* %RBP.i332
  %1271 = sub i64 %1270, 4
  %1272 = load i64, i64* %PC.i330
  %1273 = add i64 %1272, 4
  store i64 %1273, i64* %PC.i330
  %1274 = inttoptr i64 %1271 to i32*
  %1275 = load i32, i32* %1274
  %1276 = sext i32 %1275 to i64
  store i64 %1276, i64* %RSI.i331, align 8
  store %struct.Memory* %loadMem_4a3a78, %struct.Memory** %MEMORY
  %loadMem_4a3a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 7
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RDX.i328 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 9
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RSI.i329 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %RDX.i328
  %1287 = load i64, i64* %RSI.i329
  %1288 = mul i64 %1287, 8
  %1289 = add i64 %1288, %1286
  %1290 = load i64, i64* %PC.i327
  %1291 = add i64 %1290, 4
  store i64 %1291, i64* %PC.i327
  %1292 = inttoptr i64 %1289 to i64*
  %1293 = load i64, i64* %1292
  store i64 %1293, i64* %RDX.i328, align 8
  store %struct.Memory* %loadMem_4a3a7c, %struct.Memory** %MEMORY
  %loadMem_4a3a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 7
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RDX.i326 = bitcast %union.anon* %1299 to i64*
  %1300 = load i64, i64* %RDX.i326
  %1301 = load i64, i64* %PC.i325
  %1302 = add i64 %1301, 3
  store i64 %1302, i64* %PC.i325
  %1303 = inttoptr i64 %1300 to i32*
  %1304 = load i32, i32* %1303
  %1305 = sub i32 %1304, 2
  %1306 = icmp ult i32 %1304, 2
  %1307 = zext i1 %1306 to i8
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1307, i8* %1308, align 1
  %1309 = and i32 %1305, 255
  %1310 = call i32 @llvm.ctpop.i32(i32 %1309)
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1313, i8* %1314, align 1
  %1315 = xor i32 %1304, 2
  %1316 = xor i32 %1315, %1305
  %1317 = lshr i32 %1316, 4
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1319, i8* %1320, align 1
  %1321 = icmp eq i32 %1305, 0
  %1322 = zext i1 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1322, i8* %1323, align 1
  %1324 = lshr i32 %1305, 31
  %1325 = trunc i32 %1324 to i8
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1325, i8* %1326, align 1
  %1327 = lshr i32 %1304, 31
  %1328 = xor i32 %1324, %1327
  %1329 = add i32 %1328, %1327
  %1330 = icmp eq i32 %1329, 2
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1331, i8* %1332, align 1
  store %struct.Memory* %loadMem_4a3a80, %struct.Memory** %MEMORY
  %loadMem_4a3a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 33
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 5
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %ECX.i323 = bitcast %union.anon* %1338 to i32*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 1
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %1341 to i64*
  %1342 = load i32, i32* %ECX.i323
  %1343 = zext i32 %1342 to i64
  %1344 = load i64, i64* %PC.i322
  %1345 = add i64 %1344, 3
  store i64 %1345, i64* %PC.i322
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1347 = load i8, i8* %1346, align 1
  %1348 = icmp ne i8 %1347, 0
  %1349 = load i64, i64* %RAX.i324, align 8
  %1350 = select i1 %1348, i64 %1343, i64 %1349
  %1351 = and i64 %1350, 4294967295
  store i64 %1351, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_4a3a83, %struct.Memory** %MEMORY
  %loadMem_4a3a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 1
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %EAX.i320 = bitcast %union.anon* %1357 to i32*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 11
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RDI.i321 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RDI.i321
  %1362 = load i32, i32* %EAX.i320
  %1363 = zext i32 %1362 to i64
  %1364 = load i64, i64* %PC.i319
  %1365 = add i64 %1364, 2
  store i64 %1365, i64* %PC.i319
  %1366 = trunc i64 %1361 to i32
  %1367 = add i32 %1362, %1366
  %1368 = zext i32 %1367 to i64
  store i64 %1368, i64* %RDI.i321, align 8
  %1369 = icmp ult i32 %1367, %1366
  %1370 = icmp ult i32 %1367, %1362
  %1371 = or i1 %1369, %1370
  %1372 = zext i1 %1371 to i8
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1372, i8* %1373, align 1
  %1374 = and i32 %1367, 255
  %1375 = call i32 @llvm.ctpop.i32(i32 %1374)
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  %1378 = xor i8 %1377, 1
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1378, i8* %1379, align 1
  %1380 = xor i64 %1363, %1361
  %1381 = trunc i64 %1380 to i32
  %1382 = xor i32 %1381, %1367
  %1383 = lshr i32 %1382, 4
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1385, i8* %1386, align 1
  %1387 = icmp eq i32 %1367, 0
  %1388 = zext i1 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1388, i8* %1389, align 1
  %1390 = lshr i32 %1367, 31
  %1391 = trunc i32 %1390 to i8
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1391, i8* %1392, align 1
  %1393 = lshr i32 %1366, 31
  %1394 = lshr i32 %1362, 31
  %1395 = xor i32 %1390, %1393
  %1396 = xor i32 %1390, %1394
  %1397 = add i32 %1395, %1396
  %1398 = icmp eq i32 %1397, 2
  %1399 = zext i1 %1398 to i8
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1399, i8* %1400, align 1
  store %struct.Memory* %loadMem_4a3a86, %struct.Memory** %MEMORY
  %loadMem_4a3a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 11
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %EDI.i317 = bitcast %union.anon* %1406 to i32*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 7
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RDX.i318 = bitcast %union.anon* %1409 to i64*
  %1410 = load i32, i32* %EDI.i317
  %1411 = zext i32 %1410 to i64
  %1412 = load i64, i64* %PC.i316
  %1413 = add i64 %1412, 3
  store i64 %1413, i64* %PC.i316
  %1414 = shl i64 %1411, 32
  %1415 = ashr exact i64 %1414, 32
  store i64 %1415, i64* %RDX.i318, align 8
  store %struct.Memory* %loadMem_4a3a88, %struct.Memory** %MEMORY
  %loadMem_4a3a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 9
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RSI.i315 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %PC.i314
  %1423 = add i64 %1422, 8
  store i64 %1423, i64* %PC.i314
  %1424 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %1424, i64* %RSI.i315, align 8
  store %struct.Memory* %loadMem_4a3a8b, %struct.Memory** %MEMORY
  %loadMem_4a3a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 33
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1427 to i64*
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 15
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 17
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %R8.i313 = bitcast %union.anon* %1433 to i64*
  %1434 = load i64, i64* %RBP.i312
  %1435 = sub i64 %1434, 4
  %1436 = load i64, i64* %PC.i311
  %1437 = add i64 %1436, 4
  store i64 %1437, i64* %PC.i311
  %1438 = inttoptr i64 %1435 to i32*
  %1439 = load i32, i32* %1438
  %1440 = sext i32 %1439 to i64
  store i64 %1440, i64* %R8.i313, align 8
  store %struct.Memory* %loadMem_4a3a93, %struct.Memory** %MEMORY
  %loadMem_4a3a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 33
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 7
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %RDX.i308 = bitcast %union.anon* %1446 to i64*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 9
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %RSI.i309 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 17
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %R8.i310 = bitcast %union.anon* %1452 to i64*
  %1453 = load i64, i64* %RSI.i309
  %1454 = load i64, i64* %R8.i310
  %1455 = mul i64 %1454, 8
  %1456 = add i64 %1453, 288
  %1457 = add i64 %1456, %1455
  %1458 = load i64, i64* %RDX.i308
  %1459 = load i64, i64* %PC.i307
  %1460 = add i64 %1459, 8
  store i64 %1460, i64* %PC.i307
  %1461 = inttoptr i64 %1457 to i64*
  store i64 %1458, i64* %1461
  store %struct.Memory* %loadMem_4a3a97, %struct.Memory** %MEMORY
  %loadMem_4a3a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 33
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1464 to i64*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 7
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RDX.i306 = bitcast %union.anon* %1467 to i64*
  %1468 = load i64, i64* %PC.i305
  %1469 = add i64 %1468, 8
  store i64 %1469, i64* %PC.i305
  %1470 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*)
  store i64 %1470, i64* %RDX.i306, align 8
  store %struct.Memory* %loadMem_4a3a9f, %struct.Memory** %MEMORY
  %loadMem_4a3aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 9
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RSI.i303 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 15
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %1479 to i64*
  %1480 = load i64, i64* %RBP.i304
  %1481 = sub i64 %1480, 4
  %1482 = load i64, i64* %PC.i302
  %1483 = add i64 %1482, 4
  store i64 %1483, i64* %PC.i302
  %1484 = inttoptr i64 %1481 to i32*
  %1485 = load i32, i32* %1484
  %1486 = sext i32 %1485 to i64
  store i64 %1486, i64* %RSI.i303, align 8
  store %struct.Memory* %loadMem_4a3aa7, %struct.Memory** %MEMORY
  %loadMem_4a3aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 33
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 7
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %RDX.i300 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 9
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RSI.i301 = bitcast %union.anon* %1495 to i64*
  %1496 = load i64, i64* %RDX.i300
  %1497 = load i64, i64* %RSI.i301
  %1498 = mul i64 %1497, 8
  %1499 = add i64 %1498, %1496
  %1500 = load i64, i64* %PC.i299
  %1501 = add i64 %1500, 4
  store i64 %1501, i64* %PC.i299
  %1502 = inttoptr i64 %1499 to i64*
  %1503 = load i64, i64* %1502
  store i64 %1503, i64* %RDX.i300, align 8
  store %struct.Memory* %loadMem_4a3aab, %struct.Memory** %MEMORY
  %loadMem_4a3aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 33
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 1
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 7
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RDX.i298 = bitcast %union.anon* %1512 to i64*
  %1513 = load i64, i64* %RDX.i298
  %1514 = add i64 %1513, 16
  %1515 = load i64, i64* %PC.i296
  %1516 = add i64 %1515, 3
  store i64 %1516, i64* %PC.i296
  %1517 = inttoptr i64 %1514 to i32*
  %1518 = load i32, i32* %1517
  %1519 = zext i32 %1518 to i64
  store i64 %1519, i64* %RAX.i297, align 8
  store %struct.Memory* %loadMem_4a3aaf, %struct.Memory** %MEMORY
  %loadMem_4a3ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 33
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 1
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %1525 to i64*
  %1526 = load i64, i64* %RAX.i295
  %1527 = load i64, i64* %PC.i294
  %1528 = add i64 %1527, 2
  store i64 %1528, i64* %PC.i294
  %1529 = trunc i64 %1526 to i32
  %1530 = shl i32 %1529, 1
  %1531 = icmp slt i32 %1529, 0
  %1532 = icmp slt i32 %1530, 0
  %1533 = xor i1 %1531, %1532
  %1534 = zext i32 %1530 to i64
  store i64 %1534, i64* %RAX.i295, align 8
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1536 = zext i1 %1531 to i8
  store i8 %1536, i8* %1535, align 1
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1538 = and i32 %1530, 254
  %1539 = call i32 @llvm.ctpop.i32(i32 %1538)
  %1540 = trunc i32 %1539 to i8
  %1541 = and i8 %1540, 1
  %1542 = xor i8 %1541, 1
  store i8 %1542, i8* %1537, align 1
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1543, align 1
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1545 = icmp eq i32 %1530, 0
  %1546 = zext i1 %1545 to i8
  store i8 %1546, i8* %1544, align 1
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1548 = lshr i32 %1530, 31
  %1549 = trunc i32 %1548 to i8
  store i8 %1549, i8* %1547, align 1
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1551 = zext i1 %1533 to i8
  store i8 %1551, i8* %1550, align 1
  store %struct.Memory* %loadMem_4a3ab2, %struct.Memory** %MEMORY
  %loadMem_4a3ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 1
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %EAX.i292 = bitcast %union.anon* %1557 to i32*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 7
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RDX.i293 = bitcast %union.anon* %1560 to i64*
  %1561 = load i32, i32* %EAX.i292
  %1562 = zext i32 %1561 to i64
  %1563 = load i64, i64* %PC.i291
  %1564 = add i64 %1563, 3
  store i64 %1564, i64* %PC.i291
  %1565 = shl i64 %1562, 32
  %1566 = ashr exact i64 %1565, 32
  store i64 %1566, i64* %RDX.i293, align 8
  store %struct.Memory* %loadMem_4a3ab5, %struct.Memory** %MEMORY
  %loadMem_4a3ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 9
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RSI.i290 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %PC.i289
  %1574 = add i64 %1573, 8
  store i64 %1574, i64* %PC.i289
  %1575 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %1575, i64* %RSI.i290, align 8
  store %struct.Memory* %loadMem_4a3ab8, %struct.Memory** %MEMORY
  %loadMem_4a3ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 15
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 17
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %R8.i288 = bitcast %union.anon* %1584 to i64*
  %1585 = load i64, i64* %RBP.i287
  %1586 = sub i64 %1585, 4
  %1587 = load i64, i64* %PC.i286
  %1588 = add i64 %1587, 4
  store i64 %1588, i64* %PC.i286
  %1589 = inttoptr i64 %1586 to i32*
  %1590 = load i32, i32* %1589
  %1591 = sext i32 %1590 to i64
  store i64 %1591, i64* %R8.i288, align 8
  store %struct.Memory* %loadMem_4a3ac0, %struct.Memory** %MEMORY
  %loadMem_4a3ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 7
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RDX.i283 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 9
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RSI.i284 = bitcast %union.anon* %1600 to i64*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 17
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %R8.i285 = bitcast %union.anon* %1603 to i64*
  %1604 = load i64, i64* %RSI.i284
  %1605 = load i64, i64* %R8.i285
  %1606 = mul i64 %1605, 8
  %1607 = add i64 %1604, 1872
  %1608 = add i64 %1607, %1606
  %1609 = load i64, i64* %RDX.i283
  %1610 = load i64, i64* %PC.i282
  %1611 = add i64 %1610, 8
  store i64 %1611, i64* %PC.i282
  %1612 = inttoptr i64 %1608 to i64*
  store i64 %1609, i64* %1612
  store %struct.Memory* %loadMem_4a3ac4, %struct.Memory** %MEMORY
  %loadMem_4a3acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 33
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1615 to i64*
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 7
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %1618 to i64*
  %1619 = load i64, i64* %PC.i280
  %1620 = add i64 %1619, 8
  store i64 %1620, i64* %PC.i280
  %1621 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*)
  store i64 %1621, i64* %RDX.i281, align 8
  store %struct.Memory* %loadMem_4a3acc, %struct.Memory** %MEMORY
  %loadMem_4a3ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 9
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %RSI.i278 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 15
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %1630 to i64*
  %1631 = load i64, i64* %RBP.i279
  %1632 = sub i64 %1631, 4
  %1633 = load i64, i64* %PC.i277
  %1634 = add i64 %1633, 4
  store i64 %1634, i64* %PC.i277
  %1635 = inttoptr i64 %1632 to i32*
  %1636 = load i32, i32* %1635
  %1637 = sext i32 %1636 to i64
  store i64 %1637, i64* %RSI.i278, align 8
  store %struct.Memory* %loadMem_4a3ad4, %struct.Memory** %MEMORY
  %loadMem_4a3ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 7
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RDX.i275 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 9
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %RSI.i276 = bitcast %union.anon* %1646 to i64*
  %1647 = load i64, i64* %RDX.i275
  %1648 = load i64, i64* %RSI.i276
  %1649 = mul i64 %1648, 8
  %1650 = add i64 %1649, %1647
  %1651 = load i64, i64* %PC.i274
  %1652 = add i64 %1651, 4
  store i64 %1652, i64* %PC.i274
  %1653 = inttoptr i64 %1650 to i64*
  %1654 = load i64, i64* %1653
  store i64 %1654, i64* %RDX.i275, align 8
  store %struct.Memory* %loadMem_4a3ad8, %struct.Memory** %MEMORY
  %loadMem_4a3adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 33
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1657 to i64*
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 1
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %1660 to i64*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 7
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %RDX.i273 = bitcast %union.anon* %1663 to i64*
  %1664 = load i64, i64* %RDX.i273
  %1665 = add i64 %1664, 8
  %1666 = load i64, i64* %PC.i271
  %1667 = add i64 %1666, 3
  store i64 %1667, i64* %PC.i271
  %1668 = inttoptr i64 %1665 to i32*
  %1669 = load i32, i32* %1668
  %1670 = zext i32 %1669 to i64
  store i64 %1670, i64* %RAX.i272, align 8
  store %struct.Memory* %loadMem_4a3adc, %struct.Memory** %MEMORY
  %loadMem_4a3adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 33
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 1
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %1676 to i64*
  %1677 = load i64, i64* %RAX.i270
  %1678 = load i64, i64* %PC.i269
  %1679 = add i64 %1678, 2
  store i64 %1679, i64* %PC.i269
  %1680 = trunc i64 %1677 to i32
  %1681 = shl i32 %1680, 1
  %1682 = icmp slt i32 %1680, 0
  %1683 = icmp slt i32 %1681, 0
  %1684 = xor i1 %1682, %1683
  %1685 = zext i32 %1681 to i64
  store i64 %1685, i64* %RAX.i270, align 8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1687 = zext i1 %1682 to i8
  store i8 %1687, i8* %1686, align 1
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1689 = and i32 %1681, 254
  %1690 = call i32 @llvm.ctpop.i32(i32 %1689)
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = xor i8 %1692, 1
  store i8 %1693, i8* %1688, align 1
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1694, align 1
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1696 = icmp eq i32 %1681, 0
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %1695, align 1
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1699 = lshr i32 %1681, 31
  %1700 = trunc i32 %1699 to i8
  store i8 %1700, i8* %1698, align 1
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1702 = zext i1 %1684 to i8
  store i8 %1702, i8* %1701, align 1
  store %struct.Memory* %loadMem_4a3adf, %struct.Memory** %MEMORY
  %loadMem_4a3ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 33
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1705 to i64*
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 1
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %EAX.i267 = bitcast %union.anon* %1708 to i32*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 7
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %RDX.i268 = bitcast %union.anon* %1711 to i64*
  %1712 = load i32, i32* %EAX.i267
  %1713 = zext i32 %1712 to i64
  %1714 = load i64, i64* %PC.i266
  %1715 = add i64 %1714, 3
  store i64 %1715, i64* %PC.i266
  %1716 = shl i64 %1713, 32
  %1717 = ashr exact i64 %1716, 32
  store i64 %1717, i64* %RDX.i268, align 8
  store %struct.Memory* %loadMem_4a3ae2, %struct.Memory** %MEMORY
  %loadMem_4a3ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 33
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 9
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %RSI.i265 = bitcast %union.anon* %1723 to i64*
  %1724 = load i64, i64* %PC.i264
  %1725 = add i64 %1724, 8
  store i64 %1725, i64* %PC.i264
  %1726 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %1726, i64* %RSI.i265, align 8
  store %struct.Memory* %loadMem_4a3ae5, %struct.Memory** %MEMORY
  %loadMem_4a3aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 33
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 15
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 17
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %R8.i263 = bitcast %union.anon* %1735 to i64*
  %1736 = load i64, i64* %RBP.i262
  %1737 = sub i64 %1736, 4
  %1738 = load i64, i64* %PC.i261
  %1739 = add i64 %1738, 4
  store i64 %1739, i64* %PC.i261
  %1740 = inttoptr i64 %1737 to i32*
  %1741 = load i32, i32* %1740
  %1742 = sext i32 %1741 to i64
  store i64 %1742, i64* %R8.i263, align 8
  store %struct.Memory* %loadMem_4a3aed, %struct.Memory** %MEMORY
  %loadMem_4a3af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 7
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 9
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RSI.i259 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 17
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %R8.i260 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RSI.i259
  %1756 = load i64, i64* %R8.i260
  %1757 = mul i64 %1756, 8
  %1758 = add i64 %1755, 3456
  %1759 = add i64 %1758, %1757
  %1760 = load i64, i64* %RDX.i258
  %1761 = load i64, i64* %PC.i257
  %1762 = add i64 %1761, 8
  store i64 %1762, i64* %PC.i257
  %1763 = inttoptr i64 %1759 to i64*
  store i64 %1760, i64* %1763
  store %struct.Memory* %loadMem_4a3af1, %struct.Memory** %MEMORY
  %loadMem_4a3af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 33
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 7
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %1769 to i64*
  %1770 = load i64, i64* %PC.i255
  %1771 = add i64 %1770, 8
  store i64 %1771, i64* %PC.i255
  %1772 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*)
  store i64 %1772, i64* %RDX.i256, align 8
  store %struct.Memory* %loadMem_4a3af9, %struct.Memory** %MEMORY
  %loadMem_4a3b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 9
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RSI.i253 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 15
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %1781 to i64*
  %1782 = load i64, i64* %RBP.i254
  %1783 = sub i64 %1782, 4
  %1784 = load i64, i64* %PC.i252
  %1785 = add i64 %1784, 4
  store i64 %1785, i64* %PC.i252
  %1786 = inttoptr i64 %1783 to i32*
  %1787 = load i32, i32* %1786
  %1788 = sext i32 %1787 to i64
  store i64 %1788, i64* %RSI.i253, align 8
  store %struct.Memory* %loadMem_4a3b01, %struct.Memory** %MEMORY
  %loadMem_4a3b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 7
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 9
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RSI.i251 = bitcast %union.anon* %1797 to i64*
  %1798 = load i64, i64* %RDX.i250
  %1799 = load i64, i64* %RSI.i251
  %1800 = mul i64 %1799, 8
  %1801 = add i64 %1800, %1798
  %1802 = load i64, i64* %PC.i249
  %1803 = add i64 %1802, 4
  store i64 %1803, i64* %PC.i249
  %1804 = inttoptr i64 %1801 to i64*
  %1805 = load i64, i64* %1804
  store i64 %1805, i64* %RDX.i250, align 8
  store %struct.Memory* %loadMem_4a3b05, %struct.Memory** %MEMORY
  %loadMem_4a3b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 1
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 7
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RDX.i248 = bitcast %union.anon* %1814 to i64*
  %1815 = load i64, i64* %RDX.i248
  %1816 = add i64 %1815, 12
  %1817 = load i64, i64* %PC.i246
  %1818 = add i64 %1817, 3
  store i64 %1818, i64* %PC.i246
  %1819 = inttoptr i64 %1816 to i32*
  %1820 = load i32, i32* %1819
  %1821 = zext i32 %1820 to i64
  store i64 %1821, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_4a3b09, %struct.Memory** %MEMORY
  %loadMem_4a3b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 33
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1824 to i64*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 1
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %1827 to i64*
  %1828 = load i64, i64* %RAX.i245
  %1829 = load i64, i64* %PC.i244
  %1830 = add i64 %1829, 2
  store i64 %1830, i64* %PC.i244
  %1831 = trunc i64 %1828 to i32
  %1832 = shl i32 %1831, 1
  %1833 = icmp slt i32 %1831, 0
  %1834 = icmp slt i32 %1832, 0
  %1835 = xor i1 %1833, %1834
  %1836 = zext i32 %1832 to i64
  store i64 %1836, i64* %RAX.i245, align 8
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1838 = zext i1 %1833 to i8
  store i8 %1838, i8* %1837, align 1
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1840 = and i32 %1832, 254
  %1841 = call i32 @llvm.ctpop.i32(i32 %1840)
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  %1844 = xor i8 %1843, 1
  store i8 %1844, i8* %1839, align 1
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1845, align 1
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1847 = icmp eq i32 %1832, 0
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %1846, align 1
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1850 = lshr i32 %1832, 31
  %1851 = trunc i32 %1850 to i8
  store i8 %1851, i8* %1849, align 1
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1853 = zext i1 %1835 to i8
  store i8 %1853, i8* %1852, align 1
  store %struct.Memory* %loadMem_4a3b0c, %struct.Memory** %MEMORY
  %loadMem_4a3b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 1
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %RAX.i243
  %1861 = load i64, i64* %PC.i242
  %1862 = add i64 %1861, 3
  store i64 %1862, i64* %PC.i242
  %1863 = trunc i64 %1860 to i32
  %1864 = add i32 1, %1863
  %1865 = zext i32 %1864 to i64
  store i64 %1865, i64* %RAX.i243, align 8
  %1866 = icmp ult i32 %1864, %1863
  %1867 = icmp ult i32 %1864, 1
  %1868 = or i1 %1866, %1867
  %1869 = zext i1 %1868 to i8
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1869, i8* %1870, align 1
  %1871 = and i32 %1864, 255
  %1872 = call i32 @llvm.ctpop.i32(i32 %1871)
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  %1875 = xor i8 %1874, 1
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1875, i8* %1876, align 1
  %1877 = xor i64 1, %1860
  %1878 = trunc i64 %1877 to i32
  %1879 = xor i32 %1878, %1864
  %1880 = lshr i32 %1879, 4
  %1881 = trunc i32 %1880 to i8
  %1882 = and i8 %1881, 1
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1882, i8* %1883, align 1
  %1884 = icmp eq i32 %1864, 0
  %1885 = zext i1 %1884 to i8
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1885, i8* %1886, align 1
  %1887 = lshr i32 %1864, 31
  %1888 = trunc i32 %1887 to i8
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1888, i8* %1889, align 1
  %1890 = lshr i32 %1863, 31
  %1891 = xor i32 %1887, %1890
  %1892 = add i32 %1891, %1887
  %1893 = icmp eq i32 %1892, 2
  %1894 = zext i1 %1893 to i8
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1894, i8* %1895, align 1
  store %struct.Memory* %loadMem_4a3b0f, %struct.Memory** %MEMORY
  %loadMem_4a3b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 1
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %EAX.i240 = bitcast %union.anon* %1901 to i32*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 7
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %RDX.i241 = bitcast %union.anon* %1904 to i64*
  %1905 = load i32, i32* %EAX.i240
  %1906 = zext i32 %1905 to i64
  %1907 = load i64, i64* %PC.i239
  %1908 = add i64 %1907, 3
  store i64 %1908, i64* %PC.i239
  %1909 = shl i64 %1906, 32
  %1910 = ashr exact i64 %1909, 32
  store i64 %1910, i64* %RDX.i241, align 8
  store %struct.Memory* %loadMem_4a3b12, %struct.Memory** %MEMORY
  %loadMem_4a3b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 33
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 9
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RSI.i238 = bitcast %union.anon* %1916 to i64*
  %1917 = load i64, i64* %PC.i237
  %1918 = add i64 %1917, 8
  store i64 %1918, i64* %PC.i237
  %1919 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %1919, i64* %RSI.i238, align 8
  store %struct.Memory* %loadMem_4a3b15, %struct.Memory** %MEMORY
  %loadMem_4a3b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 33
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 15
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 17
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %R8.i236 = bitcast %union.anon* %1928 to i64*
  %1929 = load i64, i64* %RBP.i235
  %1930 = sub i64 %1929, 4
  %1931 = load i64, i64* %PC.i234
  %1932 = add i64 %1931, 4
  store i64 %1932, i64* %PC.i234
  %1933 = inttoptr i64 %1930 to i32*
  %1934 = load i32, i32* %1933
  %1935 = sext i32 %1934 to i64
  store i64 %1935, i64* %R8.i236, align 8
  store %struct.Memory* %loadMem_4a3b1d, %struct.Memory** %MEMORY
  %loadMem_4a3b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 33
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1938 to i64*
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 7
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %RDX.i231 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 9
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RSI.i232 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 17
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %R8.i233 = bitcast %union.anon* %1947 to i64*
  %1948 = load i64, i64* %RSI.i232
  %1949 = load i64, i64* %R8.i233
  %1950 = mul i64 %1949, 8
  %1951 = add i64 %1948, 5040
  %1952 = add i64 %1951, %1950
  %1953 = load i64, i64* %RDX.i231
  %1954 = load i64, i64* %PC.i230
  %1955 = add i64 %1954, 8
  store i64 %1955, i64* %PC.i230
  %1956 = inttoptr i64 %1952 to i64*
  store i64 %1953, i64* %1956
  store %struct.Memory* %loadMem_4a3b21, %struct.Memory** %MEMORY
  %loadMem_4a3b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 33
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1959 to i64*
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 1
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 15
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %1965 to i64*
  %1966 = load i64, i64* %RBP.i229
  %1967 = sub i64 %1966, 4
  %1968 = load i64, i64* %PC.i227
  %1969 = add i64 %1968, 3
  store i64 %1969, i64* %PC.i227
  %1970 = inttoptr i64 %1967 to i32*
  %1971 = load i32, i32* %1970
  %1972 = zext i32 %1971 to i64
  store i64 %1972, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_4a3b29, %struct.Memory** %MEMORY
  %loadMem_4a3b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 1
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %1978 to i64*
  %1979 = load i64, i64* %RAX.i226
  %1980 = load i64, i64* %PC.i225
  %1981 = add i64 %1980, 3
  store i64 %1981, i64* %PC.i225
  %1982 = trunc i64 %1979 to i32
  %1983 = add i32 1, %1982
  %1984 = zext i32 %1983 to i64
  store i64 %1984, i64* %RAX.i226, align 8
  %1985 = icmp ult i32 %1983, %1982
  %1986 = icmp ult i32 %1983, 1
  %1987 = or i1 %1985, %1986
  %1988 = zext i1 %1987 to i8
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1988, i8* %1989, align 1
  %1990 = and i32 %1983, 255
  %1991 = call i32 @llvm.ctpop.i32(i32 %1990)
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = xor i8 %1993, 1
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1994, i8* %1995, align 1
  %1996 = xor i64 1, %1979
  %1997 = trunc i64 %1996 to i32
  %1998 = xor i32 %1997, %1983
  %1999 = lshr i32 %1998, 4
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2001, i8* %2002, align 1
  %2003 = icmp eq i32 %1983, 0
  %2004 = zext i1 %2003 to i8
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2004, i8* %2005, align 1
  %2006 = lshr i32 %1983, 31
  %2007 = trunc i32 %2006 to i8
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2007, i8* %2008, align 1
  %2009 = lshr i32 %1982, 31
  %2010 = xor i32 %2006, %2009
  %2011 = add i32 %2010, %2006
  %2012 = icmp eq i32 %2011, 2
  %2013 = zext i1 %2012 to i8
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2013, i8* %2014, align 1
  store %struct.Memory* %loadMem_4a3b2c, %struct.Memory** %MEMORY
  %loadMem_4a3b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 1
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %EAX.i223 = bitcast %union.anon* %2020 to i32*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 15
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %2023 to i64*
  %2024 = load i64, i64* %RBP.i224
  %2025 = sub i64 %2024, 4
  %2026 = load i32, i32* %EAX.i223
  %2027 = zext i32 %2026 to i64
  %2028 = load i64, i64* %PC.i222
  %2029 = add i64 %2028, 3
  store i64 %2029, i64* %PC.i222
  %2030 = inttoptr i64 %2025 to i32*
  store i32 %2026, i32* %2030
  store %struct.Memory* %loadMem_4a3b2f, %struct.Memory** %MEMORY
  %loadMem_4a3b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 33
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2033 to i64*
  %2034 = load i64, i64* %PC.i221
  %2035 = add i64 %2034, -239
  %2036 = load i64, i64* %PC.i221
  %2037 = add i64 %2036, 5
  store i64 %2037, i64* %PC.i221
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2035, i64* %2038, align 8
  store %struct.Memory* %loadMem_4a3b32, %struct.Memory** %MEMORY
  br label %block_.L_4a3a43

block_.L_4a3b37:                                  ; preds = %block_.L_4a3a43
  %loadMem_4a3b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 33
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2041 to i64*
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 1
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %2044 to i64*
  %2045 = load i64, i64* %PC.i219
  %2046 = add i64 %2045, 8
  store i64 %2046, i64* %PC.i219
  %2047 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*)
  store i64 %2047, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_4a3b37, %struct.Memory** %MEMORY
  %loadMem_4a3b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 33
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 1
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %RAX.i218
  %2055 = add i64 %2054, 1148
  %2056 = load i64, i64* %PC.i217
  %2057 = add i64 %2056, 7
  store i64 %2057, i64* %PC.i217
  %2058 = inttoptr i64 %2055 to i32*
  %2059 = load i32, i32* %2058
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2060, align 1
  %2061 = and i32 %2059, 255
  %2062 = call i32 @llvm.ctpop.i32(i32 %2061)
  %2063 = trunc i32 %2062 to i8
  %2064 = and i8 %2063, 1
  %2065 = xor i8 %2064, 1
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2065, i8* %2066, align 1
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2067, align 1
  %2068 = icmp eq i32 %2059, 0
  %2069 = zext i1 %2068 to i8
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2069, i8* %2070, align 1
  %2071 = lshr i32 %2059, 31
  %2072 = trunc i32 %2071 to i8
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2072, i8* %2073, align 1
  %2074 = lshr i32 %2059, 31
  %2075 = xor i32 %2071, %2074
  %2076 = add i32 %2075, %2074
  %2077 = icmp eq i32 %2076, 2
  %2078 = zext i1 %2077 to i8
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2078, i8* %2079, align 1
  store %struct.Memory* %loadMem_4a3b3f, %struct.Memory** %MEMORY
  %loadMem_4a3b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 33
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %PC.i216
  %2084 = add i64 %2083, 410
  %2085 = load i64, i64* %PC.i216
  %2086 = add i64 %2085, 6
  %2087 = load i64, i64* %PC.i216
  %2088 = add i64 %2087, 6
  store i64 %2088, i64* %PC.i216
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2090 = load i8, i8* %2089, align 1
  %2091 = icmp eq i8 %2090, 0
  %2092 = zext i1 %2091 to i8
  store i8 %2092, i8* %BRANCH_TAKEN, align 1
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2094 = select i1 %2091, i64 %2084, i64 %2086
  store i64 %2094, i64* %2093, align 8
  store %struct.Memory* %loadMem_4a3b46, %struct.Memory** %MEMORY
  %loadBr_4a3b46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3b46 = icmp eq i8 %loadBr_4a3b46, 1
  br i1 %cmpBr_4a3b46, label %block_.L_4a3ce0, label %block_4a3b4c

block_4a3b4c:                                     ; preds = %block_.L_4a3b37
  %loadMem_4a3b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 33
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 1
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %2100 to i64*
  %2101 = load i64, i64* %PC.i214
  %2102 = add i64 %2101, 8
  store i64 %2102, i64* %PC.i214
  %2103 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2103, i64* %RAX.i215, align 8
  store %struct.Memory* %loadMem_4a3b4c, %struct.Memory** %MEMORY
  %loadMem_4a3b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 33
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 1
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %2109 to i64*
  %2110 = load i64, i64* %RAX.i213
  %2111 = add i64 %2110, 28
  %2112 = load i64, i64* %PC.i212
  %2113 = add i64 %2112, 4
  store i64 %2113, i64* %PC.i212
  %2114 = inttoptr i64 %2111 to i32*
  %2115 = load i32, i32* %2114
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2116, align 1
  %2117 = and i32 %2115, 255
  %2118 = call i32 @llvm.ctpop.i32(i32 %2117)
  %2119 = trunc i32 %2118 to i8
  %2120 = and i8 %2119, 1
  %2121 = xor i8 %2120, 1
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2121, i8* %2122, align 1
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2123, align 1
  %2124 = icmp eq i32 %2115, 0
  %2125 = zext i1 %2124 to i8
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2125, i8* %2126, align 1
  %2127 = lshr i32 %2115, 31
  %2128 = trunc i32 %2127 to i8
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2128, i8* %2129, align 1
  %2130 = lshr i32 %2115, 31
  %2131 = xor i32 %2127, %2130
  %2132 = add i32 %2131, %2130
  %2133 = icmp eq i32 %2132, 2
  %2134 = zext i1 %2133 to i8
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2134, i8* %2135, align 1
  store %struct.Memory* %loadMem_4a3b54, %struct.Memory** %MEMORY
  %loadMem_4a3b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2138 to i64*
  %2139 = load i64, i64* %PC.i211
  %2140 = add i64 %2139, 387
  %2141 = load i64, i64* %PC.i211
  %2142 = add i64 %2141, 6
  %2143 = load i64, i64* %PC.i211
  %2144 = add i64 %2143, 6
  store i64 %2144, i64* %PC.i211
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2146 = load i8, i8* %2145, align 1
  %2147 = icmp eq i8 %2146, 0
  %2148 = zext i1 %2147 to i8
  store i8 %2148, i8* %BRANCH_TAKEN, align 1
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2150 = select i1 %2147, i64 %2140, i64 %2142
  store i64 %2150, i64* %2149, align 8
  store %struct.Memory* %loadMem_4a3b58, %struct.Memory** %MEMORY
  %loadBr_4a3b58 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3b58 = icmp eq i8 %loadBr_4a3b58, 1
  br i1 %cmpBr_4a3b58, label %block_.L_4a3cdb, label %block_4a3b5e

block_4a3b5e:                                     ; preds = %block_4a3b4c
  %loadMem_4a3b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 33
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 15
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %2156 to i64*
  %2157 = load i64, i64* %RBP.i210
  %2158 = sub i64 %2157, 8
  %2159 = load i64, i64* %PC.i209
  %2160 = add i64 %2159, 7
  store i64 %2160, i64* %PC.i209
  %2161 = inttoptr i64 %2158 to i32*
  store i32 2, i32* %2161
  store %struct.Memory* %loadMem_4a3b5e, %struct.Memory** %MEMORY
  br label %block_.L_4a3b65

block_.L_4a3b65:                                  ; preds = %block_.L_4a3cc8, %block_4a3b5e
  %loadMem_4a3b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 15
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %2167 to i64*
  %2168 = load i64, i64* %RBP.i208
  %2169 = sub i64 %2168, 8
  %2170 = load i64, i64* %PC.i207
  %2171 = add i64 %2170, 4
  store i64 %2171, i64* %PC.i207
  %2172 = inttoptr i64 %2169 to i32*
  %2173 = load i32, i32* %2172
  %2174 = sub i32 %2173, 6
  %2175 = icmp ult i32 %2173, 6
  %2176 = zext i1 %2175 to i8
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2176, i8* %2177, align 1
  %2178 = and i32 %2174, 255
  %2179 = call i32 @llvm.ctpop.i32(i32 %2178)
  %2180 = trunc i32 %2179 to i8
  %2181 = and i8 %2180, 1
  %2182 = xor i8 %2181, 1
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2182, i8* %2183, align 1
  %2184 = xor i32 %2173, 6
  %2185 = xor i32 %2184, %2174
  %2186 = lshr i32 %2185, 4
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2188, i8* %2189, align 1
  %2190 = icmp eq i32 %2174, 0
  %2191 = zext i1 %2190 to i8
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2191, i8* %2192, align 1
  %2193 = lshr i32 %2174, 31
  %2194 = trunc i32 %2193 to i8
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2194, i8* %2195, align 1
  %2196 = lshr i32 %2173, 31
  %2197 = xor i32 %2193, %2196
  %2198 = add i32 %2197, %2196
  %2199 = icmp eq i32 %2198, 2
  %2200 = zext i1 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2200, i8* %2201, align 1
  store %struct.Memory* %loadMem_4a3b65, %struct.Memory** %MEMORY
  %loadMem_4a3b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 33
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2204 to i64*
  %2205 = load i64, i64* %PC.i206
  %2206 = add i64 %2205, 365
  %2207 = load i64, i64* %PC.i206
  %2208 = add i64 %2207, 6
  %2209 = load i64, i64* %PC.i206
  %2210 = add i64 %2209, 6
  store i64 %2210, i64* %PC.i206
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2212 = load i8, i8* %2211, align 1
  %2213 = icmp ne i8 %2212, 0
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2215 = load i8, i8* %2214, align 1
  %2216 = icmp ne i8 %2215, 0
  %2217 = xor i1 %2213, %2216
  %2218 = xor i1 %2217, true
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %BRANCH_TAKEN, align 1
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2221 = select i1 %2217, i64 %2208, i64 %2206
  store i64 %2221, i64* %2220, align 8
  store %struct.Memory* %loadMem_4a3b69, %struct.Memory** %MEMORY
  %loadBr_4a3b69 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3b69 = icmp eq i8 %loadBr_4a3b69, 1
  br i1 %cmpBr_4a3b69, label %block_.L_4a3cd6, label %block_4a3b6f

block_4a3b6f:                                     ; preds = %block_.L_4a3b65
  %loadMem_4a3b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 33
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2224 to i64*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 15
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2227 to i64*
  %2228 = load i64, i64* %RBP.i205
  %2229 = sub i64 %2228, 4
  %2230 = load i64, i64* %PC.i204
  %2231 = add i64 %2230, 7
  store i64 %2231, i64* %PC.i204
  %2232 = inttoptr i64 %2229 to i32*
  store i32 0, i32* %2232
  store %struct.Memory* %loadMem_4a3b6f, %struct.Memory** %MEMORY
  br label %block_.L_4a3b76

block_.L_4a3b76:                                  ; preds = %block_4a3b8a, %block_4a3b6f
  %loadMem_4a3b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 1
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 15
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %2241 to i64*
  %2242 = load i64, i64* %RBP.i203
  %2243 = sub i64 %2242, 4
  %2244 = load i64, i64* %PC.i201
  %2245 = add i64 %2244, 3
  store i64 %2245, i64* %PC.i201
  %2246 = inttoptr i64 %2243 to i32*
  %2247 = load i32, i32* %2246
  %2248 = zext i32 %2247 to i64
  store i64 %2248, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_4a3b76, %struct.Memory** %MEMORY
  %loadMem_4a3b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 5
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 15
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %2257 to i64*
  %2258 = load i64, i64* %RBP.i200
  %2259 = sub i64 %2258, 8
  %2260 = load i64, i64* %PC.i198
  %2261 = add i64 %2260, 4
  store i64 %2261, i64* %PC.i198
  %2262 = inttoptr i64 %2259 to i32*
  %2263 = load i32, i32* %2262
  %2264 = sext i32 %2263 to i64
  store i64 %2264, i64* %RCX.i199, align 8
  store %struct.Memory* %loadMem_4a3b79, %struct.Memory** %MEMORY
  %loadMem_4a3b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 1
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %EAX.i196 = bitcast %union.anon* %2270 to i32*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 5
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %2273 to i64*
  %2274 = load i32, i32* %EAX.i196
  %2275 = zext i32 %2274 to i64
  %2276 = load i64, i64* %RCX.i197
  %2277 = mul i64 %2276, 4
  %2278 = add i64 %2277, 7489456
  %2279 = load i64, i64* %PC.i195
  %2280 = add i64 %2279, 7
  store i64 %2280, i64* %PC.i195
  %2281 = inttoptr i64 %2278 to i32*
  %2282 = load i32, i32* %2281
  %2283 = sub i32 %2274, %2282
  %2284 = icmp ult i32 %2274, %2282
  %2285 = zext i1 %2284 to i8
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2285, i8* %2286, align 1
  %2287 = and i32 %2283, 255
  %2288 = call i32 @llvm.ctpop.i32(i32 %2287)
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  %2291 = xor i8 %2290, 1
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2291, i8* %2292, align 1
  %2293 = xor i32 %2282, %2274
  %2294 = xor i32 %2293, %2283
  %2295 = lshr i32 %2294, 4
  %2296 = trunc i32 %2295 to i8
  %2297 = and i8 %2296, 1
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2297, i8* %2298, align 1
  %2299 = icmp eq i32 %2283, 0
  %2300 = zext i1 %2299 to i8
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2300, i8* %2301, align 1
  %2302 = lshr i32 %2283, 31
  %2303 = trunc i32 %2302 to i8
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2303, i8* %2304, align 1
  %2305 = lshr i32 %2274, 31
  %2306 = lshr i32 %2282, 31
  %2307 = xor i32 %2306, %2305
  %2308 = xor i32 %2302, %2305
  %2309 = add i32 %2308, %2307
  %2310 = icmp eq i32 %2309, 2
  %2311 = zext i1 %2310 to i8
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2311, i8* %2312, align 1
  store %struct.Memory* %loadMem_4a3b7d, %struct.Memory** %MEMORY
  %loadMem_4a3b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2315 to i64*
  %2316 = load i64, i64* %PC.i194
  %2317 = add i64 %2316, 319
  %2318 = load i64, i64* %PC.i194
  %2319 = add i64 %2318, 6
  %2320 = load i64, i64* %PC.i194
  %2321 = add i64 %2320, 6
  store i64 %2321, i64* %PC.i194
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2323 = load i8, i8* %2322, align 1
  %2324 = icmp ne i8 %2323, 0
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2326 = load i8, i8* %2325, align 1
  %2327 = icmp ne i8 %2326, 0
  %2328 = xor i1 %2324, %2327
  %2329 = xor i1 %2328, true
  %2330 = zext i1 %2329 to i8
  store i8 %2330, i8* %BRANCH_TAKEN, align 1
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2332 = select i1 %2328, i64 %2319, i64 %2317
  store i64 %2332, i64* %2331, align 8
  store %struct.Memory* %loadMem_4a3b84, %struct.Memory** %MEMORY
  %loadBr_4a3b84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a3b84 = icmp eq i8 %loadBr_4a3b84, 1
  br i1 %cmpBr_4a3b84, label %block_.L_4a3cc3, label %block_4a3b8a

block_4a3b8a:                                     ; preds = %block_.L_4a3b76
  %loadMem_4a3b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 33
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 1
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %EAX.i192 = bitcast %union.anon* %2338 to i32*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 1
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %2341 to i64*
  %2342 = load i64, i64* %RAX.i193
  %2343 = load i32, i32* %EAX.i192
  %2344 = zext i32 %2343 to i64
  %2345 = load i64, i64* %PC.i191
  %2346 = add i64 %2345, 2
  store i64 %2346, i64* %PC.i191
  %2347 = xor i64 %2344, %2342
  %2348 = trunc i64 %2347 to i32
  %2349 = and i64 %2347, 4294967295
  store i64 %2349, i64* %RAX.i193, align 8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2350, align 1
  %2351 = and i32 %2348, 255
  %2352 = call i32 @llvm.ctpop.i32(i32 %2351)
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  %2355 = xor i8 %2354, 1
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2355, i8* %2356, align 1
  %2357 = icmp eq i32 %2348, 0
  %2358 = zext i1 %2357 to i8
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2358, i8* %2359, align 1
  %2360 = lshr i32 %2348, 31
  %2361 = trunc i32 %2360 to i8
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2361, i8* %2362, align 1
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2363, align 1
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2364, align 1
  store %struct.Memory* %loadMem_4a3b8a, %struct.Memory** %MEMORY
  %loadMem_4a3b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 33
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 5
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %PC.i190
  %2372 = add i64 %2371, 5
  store i64 %2372, i64* %PC.i190
  store i64 1, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_4a3b8c, %struct.Memory** %MEMORY
  %loadMem_4a3b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 33
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %2375 to i64*
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 7
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %RDX.i188 = bitcast %union.anon* %2378 to i64*
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 15
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %2381 to i64*
  %2382 = load i64, i64* %RBP.i189
  %2383 = sub i64 %2382, 8
  %2384 = load i64, i64* %PC.i187
  %2385 = add i64 %2384, 4
  store i64 %2385, i64* %PC.i187
  %2386 = inttoptr i64 %2383 to i32*
  %2387 = load i32, i32* %2386
  %2388 = sext i32 %2387 to i64
  store i64 %2388, i64* %RDX.i188, align 8
  store %struct.Memory* %loadMem_4a3b91, %struct.Memory** %MEMORY
  %loadMem_4a3b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 33
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 7
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %RDX.i186 = bitcast %union.anon* %2394 to i64*
  %2395 = load i64, i64* %RDX.i186
  %2396 = mul i64 %2395, 8
  %2397 = add i64 %2396, 7482144
  %2398 = load i64, i64* %PC.i185
  %2399 = add i64 %2398, 8
  store i64 %2399, i64* %PC.i185
  %2400 = inttoptr i64 %2397 to i64*
  %2401 = load i64, i64* %2400
  store i64 %2401, i64* %RDX.i186, align 8
  store %struct.Memory* %loadMem_4a3b95, %struct.Memory** %MEMORY
  %loadMem_4a3b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 33
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 9
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %RSI.i183 = bitcast %union.anon* %2407 to i64*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 15
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %2410 to i64*
  %2411 = load i64, i64* %RBP.i184
  %2412 = sub i64 %2411, 4
  %2413 = load i64, i64* %PC.i182
  %2414 = add i64 %2413, 4
  store i64 %2414, i64* %PC.i182
  %2415 = inttoptr i64 %2412 to i32*
  %2416 = load i32, i32* %2415
  %2417 = sext i32 %2416 to i64
  store i64 %2417, i64* %RSI.i183, align 8
  store %struct.Memory* %loadMem_4a3b9d, %struct.Memory** %MEMORY
  %loadMem_4a3ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 33
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2420 to i64*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 7
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %2423 to i64*
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 9
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %RSI.i181 = bitcast %union.anon* %2426 to i64*
  %2427 = load i64, i64* %RDX.i180
  %2428 = load i64, i64* %RSI.i181
  %2429 = mul i64 %2428, 8
  %2430 = add i64 %2429, %2427
  %2431 = load i64, i64* %PC.i179
  %2432 = add i64 %2431, 4
  store i64 %2432, i64* %PC.i179
  %2433 = inttoptr i64 %2430 to i64*
  %2434 = load i64, i64* %2433
  store i64 %2434, i64* %RDX.i180, align 8
  store %struct.Memory* %loadMem_4a3ba1, %struct.Memory** %MEMORY
  %loadMem_4a3ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 7
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RDX.i177 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 11
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RDI.i178 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %RDX.i177
  %2445 = add i64 %2444, 4
  %2446 = load i64, i64* %PC.i176
  %2447 = add i64 %2446, 3
  store i64 %2447, i64* %PC.i176
  %2448 = inttoptr i64 %2445 to i32*
  %2449 = load i32, i32* %2448
  %2450 = zext i32 %2449 to i64
  store i64 %2450, i64* %RDI.i178, align 8
  store %struct.Memory* %loadMem_4a3ba5, %struct.Memory** %MEMORY
  %loadMem_4a3ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 11
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RDI.i175 = bitcast %union.anon* %2456 to i64*
  %2457 = load i64, i64* %RDI.i175
  %2458 = load i64, i64* %PC.i174
  %2459 = add i64 %2458, 2
  store i64 %2459, i64* %PC.i174
  %2460 = trunc i64 %2457 to i32
  %2461 = shl i32 %2460, 1
  %2462 = icmp slt i32 %2460, 0
  %2463 = icmp slt i32 %2461, 0
  %2464 = xor i1 %2462, %2463
  %2465 = zext i32 %2461 to i64
  store i64 %2465, i64* %RDI.i175, align 8
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2467 = zext i1 %2462 to i8
  store i8 %2467, i8* %2466, align 1
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2469 = and i32 %2461, 254
  %2470 = call i32 @llvm.ctpop.i32(i32 %2469)
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  %2473 = xor i8 %2472, 1
  store i8 %2473, i8* %2468, align 1
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2474, align 1
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2476 = icmp eq i32 %2461, 0
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %2475, align 1
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2479 = lshr i32 %2461, 31
  %2480 = trunc i32 %2479 to i8
  store i8 %2480, i8* %2478, align 1
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2482 = zext i1 %2464 to i8
  store i8 %2482, i8* %2481, align 1
  store %struct.Memory* %loadMem_4a3ba8, %struct.Memory** %MEMORY
  %loadMem_4a3bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 33
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 7
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RDX.i172 = bitcast %union.anon* %2488 to i64*
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 15
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %2491 to i64*
  %2492 = load i64, i64* %RBP.i173
  %2493 = sub i64 %2492, 8
  %2494 = load i64, i64* %PC.i171
  %2495 = add i64 %2494, 4
  store i64 %2495, i64* %PC.i171
  %2496 = inttoptr i64 %2493 to i32*
  %2497 = load i32, i32* %2496
  %2498 = sext i32 %2497 to i64
  store i64 %2498, i64* %RDX.i172, align 8
  store %struct.Memory* %loadMem_4a3bab, %struct.Memory** %MEMORY
  %loadMem_4a3baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 7
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RDX.i170 = bitcast %union.anon* %2504 to i64*
  %2505 = load i64, i64* %RDX.i170
  %2506 = mul i64 %2505, 8
  %2507 = add i64 %2506, 7482144
  %2508 = load i64, i64* %PC.i169
  %2509 = add i64 %2508, 8
  store i64 %2509, i64* %PC.i169
  %2510 = inttoptr i64 %2507 to i64*
  %2511 = load i64, i64* %2510
  store i64 %2511, i64* %RDX.i170, align 8
  store %struct.Memory* %loadMem_4a3baf, %struct.Memory** %MEMORY
  %loadMem_4a3bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 33
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 9
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %RSI.i167 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 15
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %2520 to i64*
  %2521 = load i64, i64* %RBP.i168
  %2522 = sub i64 %2521, 4
  %2523 = load i64, i64* %PC.i166
  %2524 = add i64 %2523, 4
  store i64 %2524, i64* %PC.i166
  %2525 = inttoptr i64 %2522 to i32*
  %2526 = load i32, i32* %2525
  %2527 = sext i32 %2526 to i64
  store i64 %2527, i64* %RSI.i167, align 8
  store %struct.Memory* %loadMem_4a3bb7, %struct.Memory** %MEMORY
  %loadMem_4a3bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 33
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2530 to i64*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 7
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 9
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %RSI.i165 = bitcast %union.anon* %2536 to i64*
  %2537 = load i64, i64* %RDX.i164
  %2538 = load i64, i64* %RSI.i165
  %2539 = mul i64 %2538, 8
  %2540 = add i64 %2539, %2537
  %2541 = load i64, i64* %PC.i163
  %2542 = add i64 %2541, 4
  store i64 %2542, i64* %PC.i163
  %2543 = inttoptr i64 %2540 to i64*
  %2544 = load i64, i64* %2543
  store i64 %2544, i64* %RDX.i164, align 8
  store %struct.Memory* %loadMem_4a3bbb, %struct.Memory** %MEMORY
  %loadMem_4a3bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 33
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 7
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %2550 to i64*
  %2551 = load i64, i64* %RDX.i162
  %2552 = load i64, i64* %PC.i161
  %2553 = add i64 %2552, 3
  store i64 %2553, i64* %PC.i161
  %2554 = inttoptr i64 %2551 to i32*
  %2555 = load i32, i32* %2554
  %2556 = sub i32 %2555, 2
  %2557 = icmp ult i32 %2555, 2
  %2558 = zext i1 %2557 to i8
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2558, i8* %2559, align 1
  %2560 = and i32 %2556, 255
  %2561 = call i32 @llvm.ctpop.i32(i32 %2560)
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  %2564 = xor i8 %2563, 1
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2564, i8* %2565, align 1
  %2566 = xor i32 %2555, 2
  %2567 = xor i32 %2566, %2556
  %2568 = lshr i32 %2567, 4
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2570, i8* %2571, align 1
  %2572 = icmp eq i32 %2556, 0
  %2573 = zext i1 %2572 to i8
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2573, i8* %2574, align 1
  %2575 = lshr i32 %2556, 31
  %2576 = trunc i32 %2575 to i8
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2576, i8* %2577, align 1
  %2578 = lshr i32 %2555, 31
  %2579 = xor i32 %2575, %2578
  %2580 = add i32 %2579, %2578
  %2581 = icmp eq i32 %2580, 2
  %2582 = zext i1 %2581 to i8
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2582, i8* %2583, align 1
  store %struct.Memory* %loadMem_4a3bbf, %struct.Memory** %MEMORY
  %loadMem_4a3bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 33
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2586 to i64*
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2588 = getelementptr inbounds %struct.GPR, %struct.GPR* %2587, i32 0, i32 5
  %2589 = getelementptr inbounds %struct.Reg, %struct.Reg* %2588, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2589 to i32*
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 1
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %2592 to i64*
  %2593 = load i32, i32* %ECX.i
  %2594 = zext i32 %2593 to i64
  %2595 = load i64, i64* %PC.i159
  %2596 = add i64 %2595, 3
  store i64 %2596, i64* %PC.i159
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2598 = load i8, i8* %2597, align 1
  %2599 = icmp ne i8 %2598, 0
  %2600 = load i64, i64* %RAX.i160, align 8
  %2601 = select i1 %2599, i64 %2594, i64 %2600
  %2602 = and i64 %2601, 4294967295
  store i64 %2602, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_4a3bc2, %struct.Memory** %MEMORY
  %loadMem_4a3bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2605 to i64*
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 1
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %EAX.i158 = bitcast %union.anon* %2608 to i32*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 11
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2611 to i64*
  %2612 = load i64, i64* %RDI.i
  %2613 = load i32, i32* %EAX.i158
  %2614 = zext i32 %2613 to i64
  %2615 = load i64, i64* %PC.i157
  %2616 = add i64 %2615, 2
  store i64 %2616, i64* %PC.i157
  %2617 = trunc i64 %2612 to i32
  %2618 = add i32 %2613, %2617
  %2619 = zext i32 %2618 to i64
  store i64 %2619, i64* %RDI.i, align 8
  %2620 = icmp ult i32 %2618, %2617
  %2621 = icmp ult i32 %2618, %2613
  %2622 = or i1 %2620, %2621
  %2623 = zext i1 %2622 to i8
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2623, i8* %2624, align 1
  %2625 = and i32 %2618, 255
  %2626 = call i32 @llvm.ctpop.i32(i32 %2625)
  %2627 = trunc i32 %2626 to i8
  %2628 = and i8 %2627, 1
  %2629 = xor i8 %2628, 1
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2629, i8* %2630, align 1
  %2631 = xor i64 %2614, %2612
  %2632 = trunc i64 %2631 to i32
  %2633 = xor i32 %2632, %2618
  %2634 = lshr i32 %2633, 4
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2636, i8* %2637, align 1
  %2638 = icmp eq i32 %2618, 0
  %2639 = zext i1 %2638 to i8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2639, i8* %2640, align 1
  %2641 = lshr i32 %2618, 31
  %2642 = trunc i32 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2642, i8* %2643, align 1
  %2644 = lshr i32 %2617, 31
  %2645 = lshr i32 %2613, 31
  %2646 = xor i32 %2641, %2644
  %2647 = xor i32 %2641, %2645
  %2648 = add i32 %2646, %2647
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2650, i8* %2651, align 1
  store %struct.Memory* %loadMem_4a3bc5, %struct.Memory** %MEMORY
  %loadMem_4a3bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 33
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 11
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2657 to i32*
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 7
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %2660 to i64*
  %2661 = load i32, i32* %EDI.i
  %2662 = zext i32 %2661 to i64
  %2663 = load i64, i64* %PC.i155
  %2664 = add i64 %2663, 3
  store i64 %2664, i64* %PC.i155
  %2665 = shl i64 %2662, 32
  %2666 = ashr exact i64 %2665, 32
  store i64 %2666, i64* %RDX.i156, align 8
  store %struct.Memory* %loadMem_4a3bc7, %struct.Memory** %MEMORY
  %loadMem_4a3bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 9
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RSI.i154 = bitcast %union.anon* %2672 to i64*
  %2673 = load i64, i64* %PC.i153
  %2674 = add i64 %2673, 8
  store i64 %2674, i64* %PC.i153
  %2675 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %2675, i64* %RSI.i154, align 8
  store %struct.Memory* %loadMem_4a3bca, %struct.Memory** %MEMORY
  %loadMem_4a3bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2677 = getelementptr inbounds %struct.GPR, %struct.GPR* %2676, i32 0, i32 33
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2678 to i64*
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 9
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %RSI.i152 = bitcast %union.anon* %2681 to i64*
  %2682 = load i64, i64* %RSI.i152
  %2683 = load i64, i64* %PC.i151
  %2684 = add i64 %2683, 4
  store i64 %2684, i64* %PC.i151
  %2685 = add i64 24, %2682
  store i64 %2685, i64* %RSI.i152, align 8
  %2686 = icmp ult i64 %2685, %2682
  %2687 = icmp ult i64 %2685, 24
  %2688 = or i1 %2686, %2687
  %2689 = zext i1 %2688 to i8
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2689, i8* %2690, align 1
  %2691 = trunc i64 %2685 to i32
  %2692 = and i32 %2691, 255
  %2693 = call i32 @llvm.ctpop.i32(i32 %2692)
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  %2696 = xor i8 %2695, 1
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2696, i8* %2697, align 1
  %2698 = xor i64 24, %2682
  %2699 = xor i64 %2698, %2685
  %2700 = lshr i64 %2699, 4
  %2701 = trunc i64 %2700 to i8
  %2702 = and i8 %2701, 1
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2702, i8* %2703, align 1
  %2704 = icmp eq i64 %2685, 0
  %2705 = zext i1 %2704 to i8
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2705, i8* %2706, align 1
  %2707 = lshr i64 %2685, 63
  %2708 = trunc i64 %2707 to i8
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2708, i8* %2709, align 1
  %2710 = lshr i64 %2682, 63
  %2711 = xor i64 %2707, %2710
  %2712 = add i64 %2711, %2707
  %2713 = icmp eq i64 %2712, 2
  %2714 = zext i1 %2713 to i8
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2714, i8* %2715, align 1
  store %struct.Memory* %loadMem_4a3bd2, %struct.Memory** %MEMORY
  %loadMem_4a3bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 33
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2718 to i64*
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 15
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %2721 to i64*
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 17
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %R8.i150 = bitcast %union.anon* %2724 to i64*
  %2725 = load i64, i64* %RBP.i149
  %2726 = sub i64 %2725, 8
  %2727 = load i64, i64* %PC.i148
  %2728 = add i64 %2727, 4
  store i64 %2728, i64* %PC.i148
  %2729 = inttoptr i64 %2726 to i32*
  %2730 = load i32, i32* %2729
  %2731 = sext i32 %2730 to i64
  store i64 %2731, i64* %R8.i150, align 8
  store %struct.Memory* %loadMem_4a3bd6, %struct.Memory** %MEMORY
  %loadMem_4a3bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 17
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %R8.i147 = bitcast %union.anon* %2737 to i64*
  %2738 = load i64, i64* %R8.i147
  %2739 = load i64, i64* %PC.i146
  %2740 = add i64 %2739, 7
  store i64 %2740, i64* %PC.i146
  %2741 = sext i64 %2738 to i128
  %2742 = and i128 %2741, -18446744073709551616
  %2743 = zext i64 %2738 to i128
  %2744 = or i128 %2742, %2743
  %2745 = mul i128 264, %2744
  %2746 = trunc i128 %2745 to i64
  store i64 %2746, i64* %R8.i147, align 8
  %2747 = sext i64 %2746 to i128
  %2748 = icmp ne i128 %2747, %2745
  %2749 = zext i1 %2748 to i8
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2749, i8* %2750, align 1
  %2751 = trunc i128 %2745 to i32
  %2752 = and i32 %2751, 255
  %2753 = call i32 @llvm.ctpop.i32(i32 %2752)
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  %2756 = xor i8 %2755, 1
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2756, i8* %2757, align 1
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2758, align 1
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2759, align 1
  %2760 = lshr i64 %2746, 63
  %2761 = trunc i64 %2760 to i8
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2761, i8* %2762, align 1
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2749, i8* %2763, align 1
  store %struct.Memory* %loadMem_4a3bda, %struct.Memory** %MEMORY
  %loadMem_4a3be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 33
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 9
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RSI.i144 = bitcast %union.anon* %2769 to i64*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 17
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %R8.i145 = bitcast %union.anon* %2772 to i64*
  %2773 = load i64, i64* %RSI.i144
  %2774 = load i64, i64* %R8.i145
  %2775 = load i64, i64* %PC.i143
  %2776 = add i64 %2775, 3
  store i64 %2776, i64* %PC.i143
  %2777 = add i64 %2774, %2773
  store i64 %2777, i64* %RSI.i144, align 8
  %2778 = icmp ult i64 %2777, %2773
  %2779 = icmp ult i64 %2777, %2774
  %2780 = or i1 %2778, %2779
  %2781 = zext i1 %2780 to i8
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2781, i8* %2782, align 1
  %2783 = trunc i64 %2777 to i32
  %2784 = and i32 %2783, 255
  %2785 = call i32 @llvm.ctpop.i32(i32 %2784)
  %2786 = trunc i32 %2785 to i8
  %2787 = and i8 %2786, 1
  %2788 = xor i8 %2787, 1
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2788, i8* %2789, align 1
  %2790 = xor i64 %2774, %2773
  %2791 = xor i64 %2790, %2777
  %2792 = lshr i64 %2791, 4
  %2793 = trunc i64 %2792 to i8
  %2794 = and i8 %2793, 1
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2794, i8* %2795, align 1
  %2796 = icmp eq i64 %2777, 0
  %2797 = zext i1 %2796 to i8
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2797, i8* %2798, align 1
  %2799 = lshr i64 %2777, 63
  %2800 = trunc i64 %2799 to i8
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2800, i8* %2801, align 1
  %2802 = lshr i64 %2773, 63
  %2803 = lshr i64 %2774, 63
  %2804 = xor i64 %2799, %2802
  %2805 = xor i64 %2799, %2803
  %2806 = add i64 %2804, %2805
  %2807 = icmp eq i64 %2806, 2
  %2808 = zext i1 %2807 to i8
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2808, i8* %2809, align 1
  store %struct.Memory* %loadMem_4a3be1, %struct.Memory** %MEMORY
  %loadMem_4a3be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 33
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 15
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 17
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %R8.i142 = bitcast %union.anon* %2818 to i64*
  %2819 = load i64, i64* %RBP.i141
  %2820 = sub i64 %2819, 4
  %2821 = load i64, i64* %PC.i140
  %2822 = add i64 %2821, 4
  store i64 %2822, i64* %PC.i140
  %2823 = inttoptr i64 %2820 to i32*
  %2824 = load i32, i32* %2823
  %2825 = sext i32 %2824 to i64
  store i64 %2825, i64* %R8.i142, align 8
  store %struct.Memory* %loadMem_4a3be4, %struct.Memory** %MEMORY
  %loadMem_4a3be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 33
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 7
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RDX.i137 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 9
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %RSI.i138 = bitcast %union.anon* %2834 to i64*
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 17
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %R8.i139 = bitcast %union.anon* %2837 to i64*
  %2838 = load i64, i64* %RSI.i138
  %2839 = load i64, i64* %R8.i139
  %2840 = mul i64 %2839, 8
  %2841 = add i64 %2840, %2838
  %2842 = load i64, i64* %RDX.i137
  %2843 = load i64, i64* %PC.i136
  %2844 = add i64 %2843, 4
  store i64 %2844, i64* %PC.i136
  %2845 = inttoptr i64 %2841 to i64*
  store i64 %2842, i64* %2845
  store %struct.Memory* %loadMem_4a3be8, %struct.Memory** %MEMORY
  %loadMem_4a3bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 33
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 7
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %RDX.i134 = bitcast %union.anon* %2851 to i64*
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 15
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %2854 to i64*
  %2855 = load i64, i64* %RBP.i135
  %2856 = sub i64 %2855, 8
  %2857 = load i64, i64* %PC.i133
  %2858 = add i64 %2857, 4
  store i64 %2858, i64* %PC.i133
  %2859 = inttoptr i64 %2856 to i32*
  %2860 = load i32, i32* %2859
  %2861 = sext i32 %2860 to i64
  store i64 %2861, i64* %RDX.i134, align 8
  store %struct.Memory* %loadMem_4a3bec, %struct.Memory** %MEMORY
  %loadMem_4a3bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 33
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2864 to i64*
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 7
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %RDX.i132 = bitcast %union.anon* %2867 to i64*
  %2868 = load i64, i64* %RDX.i132
  %2869 = mul i64 %2868, 8
  %2870 = add i64 %2869, 7482144
  %2871 = load i64, i64* %PC.i131
  %2872 = add i64 %2871, 8
  store i64 %2872, i64* %PC.i131
  %2873 = inttoptr i64 %2870 to i64*
  %2874 = load i64, i64* %2873
  store i64 %2874, i64* %RDX.i132, align 8
  store %struct.Memory* %loadMem_4a3bf0, %struct.Memory** %MEMORY
  %loadMem_4a3bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 33
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 9
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %RSI.i129 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 15
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %2883 to i64*
  %2884 = load i64, i64* %RBP.i130
  %2885 = sub i64 %2884, 4
  %2886 = load i64, i64* %PC.i128
  %2887 = add i64 %2886, 4
  store i64 %2887, i64* %PC.i128
  %2888 = inttoptr i64 %2885 to i32*
  %2889 = load i32, i32* %2888
  %2890 = sext i32 %2889 to i64
  store i64 %2890, i64* %RSI.i129, align 8
  store %struct.Memory* %loadMem_4a3bf8, %struct.Memory** %MEMORY
  %loadMem_4a3bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 33
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2893 to i64*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 7
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %RDX.i126 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 9
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RSI.i127 = bitcast %union.anon* %2899 to i64*
  %2900 = load i64, i64* %RDX.i126
  %2901 = load i64, i64* %RSI.i127
  %2902 = mul i64 %2901, 8
  %2903 = add i64 %2902, %2900
  %2904 = load i64, i64* %PC.i125
  %2905 = add i64 %2904, 4
  store i64 %2905, i64* %PC.i125
  %2906 = inttoptr i64 %2903 to i64*
  %2907 = load i64, i64* %2906
  store i64 %2907, i64* %RDX.i126, align 8
  store %struct.Memory* %loadMem_4a3bfc, %struct.Memory** %MEMORY
  %loadMem_4a3c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 33
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 1
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 7
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RDX.i124 = bitcast %union.anon* %2916 to i64*
  %2917 = load i64, i64* %RDX.i124
  %2918 = add i64 %2917, 16
  %2919 = load i64, i64* %PC.i122
  %2920 = add i64 %2919, 3
  store i64 %2920, i64* %PC.i122
  %2921 = inttoptr i64 %2918 to i32*
  %2922 = load i32, i32* %2921
  %2923 = zext i32 %2922 to i64
  store i64 %2923, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_4a3c00, %struct.Memory** %MEMORY
  %loadMem_4a3c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2926 to i64*
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 1
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %2929 to i64*
  %2930 = load i64, i64* %RAX.i121
  %2931 = load i64, i64* %PC.i120
  %2932 = add i64 %2931, 2
  store i64 %2932, i64* %PC.i120
  %2933 = trunc i64 %2930 to i32
  %2934 = shl i32 %2933, 1
  %2935 = icmp slt i32 %2933, 0
  %2936 = icmp slt i32 %2934, 0
  %2937 = xor i1 %2935, %2936
  %2938 = zext i32 %2934 to i64
  store i64 %2938, i64* %RAX.i121, align 8
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2940 = zext i1 %2935 to i8
  store i8 %2940, i8* %2939, align 1
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2942 = and i32 %2934, 254
  %2943 = call i32 @llvm.ctpop.i32(i32 %2942)
  %2944 = trunc i32 %2943 to i8
  %2945 = and i8 %2944, 1
  %2946 = xor i8 %2945, 1
  store i8 %2946, i8* %2941, align 1
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2947, align 1
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2949 = icmp eq i32 %2934, 0
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %2948, align 1
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2952 = lshr i32 %2934, 31
  %2953 = trunc i32 %2952 to i8
  store i8 %2953, i8* %2951, align 1
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2955 = zext i1 %2937 to i8
  store i8 %2955, i8* %2954, align 1
  store %struct.Memory* %loadMem_4a3c03, %struct.Memory** %MEMORY
  %loadMem_4a3c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 33
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2958 to i64*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 1
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %EAX.i118 = bitcast %union.anon* %2961 to i32*
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 7
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %RDX.i119 = bitcast %union.anon* %2964 to i64*
  %2965 = load i32, i32* %EAX.i118
  %2966 = zext i32 %2965 to i64
  %2967 = load i64, i64* %PC.i117
  %2968 = add i64 %2967, 3
  store i64 %2968, i64* %PC.i117
  %2969 = shl i64 %2966, 32
  %2970 = ashr exact i64 %2969, 32
  store i64 %2970, i64* %RDX.i119, align 8
  store %struct.Memory* %loadMem_4a3c06, %struct.Memory** %MEMORY
  %loadMem_4a3c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 9
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RSI.i116 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %PC.i115
  %2978 = add i64 %2977, 8
  store i64 %2978, i64* %PC.i115
  %2979 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %2979, i64* %RSI.i116, align 8
  store %struct.Memory* %loadMem_4a3c09, %struct.Memory** %MEMORY
  %loadMem_4a3c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 9
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RSI.i114 = bitcast %union.anon* %2985 to i64*
  %2986 = load i64, i64* %RSI.i114
  %2987 = load i64, i64* %PC.i113
  %2988 = add i64 %2987, 7
  store i64 %2988, i64* %PC.i113
  %2989 = add i64 1608, %2986
  store i64 %2989, i64* %RSI.i114, align 8
  %2990 = icmp ult i64 %2989, %2986
  %2991 = icmp ult i64 %2989, 1608
  %2992 = or i1 %2990, %2991
  %2993 = zext i1 %2992 to i8
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2993, i8* %2994, align 1
  %2995 = trunc i64 %2989 to i32
  %2996 = and i32 %2995, 255
  %2997 = call i32 @llvm.ctpop.i32(i32 %2996)
  %2998 = trunc i32 %2997 to i8
  %2999 = and i8 %2998, 1
  %3000 = xor i8 %2999, 1
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3000, i8* %3001, align 1
  %3002 = xor i64 1608, %2986
  %3003 = xor i64 %3002, %2989
  %3004 = lshr i64 %3003, 4
  %3005 = trunc i64 %3004 to i8
  %3006 = and i8 %3005, 1
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3006, i8* %3007, align 1
  %3008 = icmp eq i64 %2989, 0
  %3009 = zext i1 %3008 to i8
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3009, i8* %3010, align 1
  %3011 = lshr i64 %2989, 63
  %3012 = trunc i64 %3011 to i8
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3012, i8* %3013, align 1
  %3014 = lshr i64 %2986, 63
  %3015 = xor i64 %3011, %3014
  %3016 = add i64 %3015, %3011
  %3017 = icmp eq i64 %3016, 2
  %3018 = zext i1 %3017 to i8
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3018, i8* %3019, align 1
  store %struct.Memory* %loadMem_4a3c11, %struct.Memory** %MEMORY
  %loadMem_4a3c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 15
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 17
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %R8.i112 = bitcast %union.anon* %3028 to i64*
  %3029 = load i64, i64* %RBP.i111
  %3030 = sub i64 %3029, 8
  %3031 = load i64, i64* %PC.i110
  %3032 = add i64 %3031, 4
  store i64 %3032, i64* %PC.i110
  %3033 = inttoptr i64 %3030 to i32*
  %3034 = load i32, i32* %3033
  %3035 = sext i32 %3034 to i64
  store i64 %3035, i64* %R8.i112, align 8
  store %struct.Memory* %loadMem_4a3c18, %struct.Memory** %MEMORY
  %loadMem_4a3c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 33
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %3038 to i64*
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 17
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %R8.i109 = bitcast %union.anon* %3041 to i64*
  %3042 = load i64, i64* %R8.i109
  %3043 = load i64, i64* %PC.i108
  %3044 = add i64 %3043, 7
  store i64 %3044, i64* %PC.i108
  %3045 = sext i64 %3042 to i128
  %3046 = and i128 %3045, -18446744073709551616
  %3047 = zext i64 %3042 to i128
  %3048 = or i128 %3046, %3047
  %3049 = mul i128 264, %3048
  %3050 = trunc i128 %3049 to i64
  store i64 %3050, i64* %R8.i109, align 8
  %3051 = sext i64 %3050 to i128
  %3052 = icmp ne i128 %3051, %3049
  %3053 = zext i1 %3052 to i8
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3053, i8* %3054, align 1
  %3055 = trunc i128 %3049 to i32
  %3056 = and i32 %3055, 255
  %3057 = call i32 @llvm.ctpop.i32(i32 %3056)
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  %3060 = xor i8 %3059, 1
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3060, i8* %3061, align 1
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3062, align 1
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3063, align 1
  %3064 = lshr i64 %3050, 63
  %3065 = trunc i64 %3064 to i8
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3065, i8* %3066, align 1
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3053, i8* %3067, align 1
  store %struct.Memory* %loadMem_4a3c1c, %struct.Memory** %MEMORY
  %loadMem_4a3c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 33
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 9
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %RSI.i106 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 17
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %R8.i107 = bitcast %union.anon* %3076 to i64*
  %3077 = load i64, i64* %RSI.i106
  %3078 = load i64, i64* %R8.i107
  %3079 = load i64, i64* %PC.i105
  %3080 = add i64 %3079, 3
  store i64 %3080, i64* %PC.i105
  %3081 = add i64 %3078, %3077
  store i64 %3081, i64* %RSI.i106, align 8
  %3082 = icmp ult i64 %3081, %3077
  %3083 = icmp ult i64 %3081, %3078
  %3084 = or i1 %3082, %3083
  %3085 = zext i1 %3084 to i8
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3085, i8* %3086, align 1
  %3087 = trunc i64 %3081 to i32
  %3088 = and i32 %3087, 255
  %3089 = call i32 @llvm.ctpop.i32(i32 %3088)
  %3090 = trunc i32 %3089 to i8
  %3091 = and i8 %3090, 1
  %3092 = xor i8 %3091, 1
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3092, i8* %3093, align 1
  %3094 = xor i64 %3078, %3077
  %3095 = xor i64 %3094, %3081
  %3096 = lshr i64 %3095, 4
  %3097 = trunc i64 %3096 to i8
  %3098 = and i8 %3097, 1
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3098, i8* %3099, align 1
  %3100 = icmp eq i64 %3081, 0
  %3101 = zext i1 %3100 to i8
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3101, i8* %3102, align 1
  %3103 = lshr i64 %3081, 63
  %3104 = trunc i64 %3103 to i8
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3104, i8* %3105, align 1
  %3106 = lshr i64 %3077, 63
  %3107 = lshr i64 %3078, 63
  %3108 = xor i64 %3103, %3106
  %3109 = xor i64 %3103, %3107
  %3110 = add i64 %3108, %3109
  %3111 = icmp eq i64 %3110, 2
  %3112 = zext i1 %3111 to i8
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3112, i8* %3113, align 1
  store %struct.Memory* %loadMem_4a3c23, %struct.Memory** %MEMORY
  %loadMem_4a3c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 33
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 15
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 17
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %R8.i104 = bitcast %union.anon* %3122 to i64*
  %3123 = load i64, i64* %RBP.i103
  %3124 = sub i64 %3123, 4
  %3125 = load i64, i64* %PC.i102
  %3126 = add i64 %3125, 4
  store i64 %3126, i64* %PC.i102
  %3127 = inttoptr i64 %3124 to i32*
  %3128 = load i32, i32* %3127
  %3129 = sext i32 %3128 to i64
  store i64 %3129, i64* %R8.i104, align 8
  store %struct.Memory* %loadMem_4a3c26, %struct.Memory** %MEMORY
  %loadMem_4a3c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 33
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3132 to i64*
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 7
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %RDX.i99 = bitcast %union.anon* %3135 to i64*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 9
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %RSI.i100 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 17
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %R8.i101 = bitcast %union.anon* %3141 to i64*
  %3142 = load i64, i64* %RSI.i100
  %3143 = load i64, i64* %R8.i101
  %3144 = mul i64 %3143, 8
  %3145 = add i64 %3144, %3142
  %3146 = load i64, i64* %RDX.i99
  %3147 = load i64, i64* %PC.i98
  %3148 = add i64 %3147, 4
  store i64 %3148, i64* %PC.i98
  %3149 = inttoptr i64 %3145 to i64*
  store i64 %3146, i64* %3149
  store %struct.Memory* %loadMem_4a3c2a, %struct.Memory** %MEMORY
  %loadMem_4a3c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 33
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3152 to i64*
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 7
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %RDX.i96 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 15
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %3158 to i64*
  %3159 = load i64, i64* %RBP.i97
  %3160 = sub i64 %3159, 8
  %3161 = load i64, i64* %PC.i95
  %3162 = add i64 %3161, 4
  store i64 %3162, i64* %PC.i95
  %3163 = inttoptr i64 %3160 to i32*
  %3164 = load i32, i32* %3163
  %3165 = sext i32 %3164 to i64
  store i64 %3165, i64* %RDX.i96, align 8
  store %struct.Memory* %loadMem_4a3c2e, %struct.Memory** %MEMORY
  %loadMem_4a3c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 33
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3168 to i64*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 7
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %RDX.i94 = bitcast %union.anon* %3171 to i64*
  %3172 = load i64, i64* %RDX.i94
  %3173 = mul i64 %3172, 8
  %3174 = add i64 %3173, 7482144
  %3175 = load i64, i64* %PC.i93
  %3176 = add i64 %3175, 8
  store i64 %3176, i64* %PC.i93
  %3177 = inttoptr i64 %3174 to i64*
  %3178 = load i64, i64* %3177
  store i64 %3178, i64* %RDX.i94, align 8
  store %struct.Memory* %loadMem_4a3c32, %struct.Memory** %MEMORY
  %loadMem_4a3c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3180 = getelementptr inbounds %struct.GPR, %struct.GPR* %3179, i32 0, i32 33
  %3181 = getelementptr inbounds %struct.Reg, %struct.Reg* %3180, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3181 to i64*
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 9
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %RSI.i91 = bitcast %union.anon* %3184 to i64*
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 15
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %3187 to i64*
  %3188 = load i64, i64* %RBP.i92
  %3189 = sub i64 %3188, 4
  %3190 = load i64, i64* %PC.i90
  %3191 = add i64 %3190, 4
  store i64 %3191, i64* %PC.i90
  %3192 = inttoptr i64 %3189 to i32*
  %3193 = load i32, i32* %3192
  %3194 = sext i32 %3193 to i64
  store i64 %3194, i64* %RSI.i91, align 8
  store %struct.Memory* %loadMem_4a3c3a, %struct.Memory** %MEMORY
  %loadMem_4a3c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 33
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 7
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 9
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RSI.i89 = bitcast %union.anon* %3203 to i64*
  %3204 = load i64, i64* %RDX.i88
  %3205 = load i64, i64* %RSI.i89
  %3206 = mul i64 %3205, 8
  %3207 = add i64 %3206, %3204
  %3208 = load i64, i64* %PC.i87
  %3209 = add i64 %3208, 4
  store i64 %3209, i64* %PC.i87
  %3210 = inttoptr i64 %3207 to i64*
  %3211 = load i64, i64* %3210
  store i64 %3211, i64* %RDX.i88, align 8
  store %struct.Memory* %loadMem_4a3c3e, %struct.Memory** %MEMORY
  %loadMem_4a3c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 33
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3214 to i64*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 1
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %3217 to i64*
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 7
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %RDX.i86 = bitcast %union.anon* %3220 to i64*
  %3221 = load i64, i64* %RDX.i86
  %3222 = add i64 %3221, 8
  %3223 = load i64, i64* %PC.i84
  %3224 = add i64 %3223, 3
  store i64 %3224, i64* %PC.i84
  %3225 = inttoptr i64 %3222 to i32*
  %3226 = load i32, i32* %3225
  %3227 = zext i32 %3226 to i64
  store i64 %3227, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_4a3c42, %struct.Memory** %MEMORY
  %loadMem_4a3c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 33
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3230 to i64*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 1
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %3233 to i64*
  %3234 = load i64, i64* %RAX.i83
  %3235 = load i64, i64* %PC.i82
  %3236 = add i64 %3235, 2
  store i64 %3236, i64* %PC.i82
  %3237 = trunc i64 %3234 to i32
  %3238 = shl i32 %3237, 1
  %3239 = icmp slt i32 %3237, 0
  %3240 = icmp slt i32 %3238, 0
  %3241 = xor i1 %3239, %3240
  %3242 = zext i32 %3238 to i64
  store i64 %3242, i64* %RAX.i83, align 8
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3244 = zext i1 %3239 to i8
  store i8 %3244, i8* %3243, align 1
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3246 = and i32 %3238, 254
  %3247 = call i32 @llvm.ctpop.i32(i32 %3246)
  %3248 = trunc i32 %3247 to i8
  %3249 = and i8 %3248, 1
  %3250 = xor i8 %3249, 1
  store i8 %3250, i8* %3245, align 1
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3251, align 1
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3253 = icmp eq i32 %3238, 0
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %3252, align 1
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3256 = lshr i32 %3238, 31
  %3257 = trunc i32 %3256 to i8
  store i8 %3257, i8* %3255, align 1
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3259 = zext i1 %3241 to i8
  store i8 %3259, i8* %3258, align 1
  store %struct.Memory* %loadMem_4a3c45, %struct.Memory** %MEMORY
  %loadMem_4a3c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 33
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 1
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %EAX.i80 = bitcast %union.anon* %3265 to i32*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 7
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %RDX.i81 = bitcast %union.anon* %3268 to i64*
  %3269 = load i32, i32* %EAX.i80
  %3270 = zext i32 %3269 to i64
  %3271 = load i64, i64* %PC.i79
  %3272 = add i64 %3271, 3
  store i64 %3272, i64* %PC.i79
  %3273 = shl i64 %3270, 32
  %3274 = ashr exact i64 %3273, 32
  store i64 %3274, i64* %RDX.i81, align 8
  store %struct.Memory* %loadMem_4a3c48, %struct.Memory** %MEMORY
  %loadMem_4a3c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 33
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %3277 to i64*
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 9
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %RSI.i78 = bitcast %union.anon* %3280 to i64*
  %3281 = load i64, i64* %PC.i77
  %3282 = add i64 %3281, 8
  store i64 %3282, i64* %PC.i77
  %3283 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %3283, i64* %RSI.i78, align 8
  store %struct.Memory* %loadMem_4a3c4b, %struct.Memory** %MEMORY
  %loadMem_4a3c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 33
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3286 to i64*
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 9
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %RSI.i76 = bitcast %union.anon* %3289 to i64*
  %3290 = load i64, i64* %RSI.i76
  %3291 = load i64, i64* %PC.i75
  %3292 = add i64 %3291, 7
  store i64 %3292, i64* %PC.i75
  %3293 = add i64 3192, %3290
  store i64 %3293, i64* %RSI.i76, align 8
  %3294 = icmp ult i64 %3293, %3290
  %3295 = icmp ult i64 %3293, 3192
  %3296 = or i1 %3294, %3295
  %3297 = zext i1 %3296 to i8
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3297, i8* %3298, align 1
  %3299 = trunc i64 %3293 to i32
  %3300 = and i32 %3299, 255
  %3301 = call i32 @llvm.ctpop.i32(i32 %3300)
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  %3304 = xor i8 %3303, 1
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3304, i8* %3305, align 1
  %3306 = xor i64 3192, %3290
  %3307 = xor i64 %3306, %3293
  %3308 = lshr i64 %3307, 4
  %3309 = trunc i64 %3308 to i8
  %3310 = and i8 %3309, 1
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3310, i8* %3311, align 1
  %3312 = icmp eq i64 %3293, 0
  %3313 = zext i1 %3312 to i8
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3313, i8* %3314, align 1
  %3315 = lshr i64 %3293, 63
  %3316 = trunc i64 %3315 to i8
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3316, i8* %3317, align 1
  %3318 = lshr i64 %3290, 63
  %3319 = xor i64 %3315, %3318
  %3320 = add i64 %3319, %3315
  %3321 = icmp eq i64 %3320, 2
  %3322 = zext i1 %3321 to i8
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3322, i8* %3323, align 1
  store %struct.Memory* %loadMem_4a3c53, %struct.Memory** %MEMORY
  %loadMem_4a3c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 15
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 17
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %R8.i74 = bitcast %union.anon* %3332 to i64*
  %3333 = load i64, i64* %RBP.i73
  %3334 = sub i64 %3333, 8
  %3335 = load i64, i64* %PC.i72
  %3336 = add i64 %3335, 4
  store i64 %3336, i64* %PC.i72
  %3337 = inttoptr i64 %3334 to i32*
  %3338 = load i32, i32* %3337
  %3339 = sext i32 %3338 to i64
  store i64 %3339, i64* %R8.i74, align 8
  store %struct.Memory* %loadMem_4a3c5a, %struct.Memory** %MEMORY
  %loadMem_4a3c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 17
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %R8.i71 = bitcast %union.anon* %3345 to i64*
  %3346 = load i64, i64* %R8.i71
  %3347 = load i64, i64* %PC.i70
  %3348 = add i64 %3347, 7
  store i64 %3348, i64* %PC.i70
  %3349 = sext i64 %3346 to i128
  %3350 = and i128 %3349, -18446744073709551616
  %3351 = zext i64 %3346 to i128
  %3352 = or i128 %3350, %3351
  %3353 = mul i128 264, %3352
  %3354 = trunc i128 %3353 to i64
  store i64 %3354, i64* %R8.i71, align 8
  %3355 = sext i64 %3354 to i128
  %3356 = icmp ne i128 %3355, %3353
  %3357 = zext i1 %3356 to i8
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3357, i8* %3358, align 1
  %3359 = trunc i128 %3353 to i32
  %3360 = and i32 %3359, 255
  %3361 = call i32 @llvm.ctpop.i32(i32 %3360)
  %3362 = trunc i32 %3361 to i8
  %3363 = and i8 %3362, 1
  %3364 = xor i8 %3363, 1
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3364, i8* %3365, align 1
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3366, align 1
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3367, align 1
  %3368 = lshr i64 %3354, 63
  %3369 = trunc i64 %3368 to i8
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3369, i8* %3370, align 1
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3357, i8* %3371, align 1
  store %struct.Memory* %loadMem_4a3c5e, %struct.Memory** %MEMORY
  %loadMem_4a3c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 33
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3374 to i64*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 9
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %RSI.i68 = bitcast %union.anon* %3377 to i64*
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 17
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %R8.i69 = bitcast %union.anon* %3380 to i64*
  %3381 = load i64, i64* %RSI.i68
  %3382 = load i64, i64* %R8.i69
  %3383 = load i64, i64* %PC.i67
  %3384 = add i64 %3383, 3
  store i64 %3384, i64* %PC.i67
  %3385 = add i64 %3382, %3381
  store i64 %3385, i64* %RSI.i68, align 8
  %3386 = icmp ult i64 %3385, %3381
  %3387 = icmp ult i64 %3385, %3382
  %3388 = or i1 %3386, %3387
  %3389 = zext i1 %3388 to i8
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3389, i8* %3390, align 1
  %3391 = trunc i64 %3385 to i32
  %3392 = and i32 %3391, 255
  %3393 = call i32 @llvm.ctpop.i32(i32 %3392)
  %3394 = trunc i32 %3393 to i8
  %3395 = and i8 %3394, 1
  %3396 = xor i8 %3395, 1
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3396, i8* %3397, align 1
  %3398 = xor i64 %3382, %3381
  %3399 = xor i64 %3398, %3385
  %3400 = lshr i64 %3399, 4
  %3401 = trunc i64 %3400 to i8
  %3402 = and i8 %3401, 1
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3402, i8* %3403, align 1
  %3404 = icmp eq i64 %3385, 0
  %3405 = zext i1 %3404 to i8
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3405, i8* %3406, align 1
  %3407 = lshr i64 %3385, 63
  %3408 = trunc i64 %3407 to i8
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3408, i8* %3409, align 1
  %3410 = lshr i64 %3381, 63
  %3411 = lshr i64 %3382, 63
  %3412 = xor i64 %3407, %3410
  %3413 = xor i64 %3407, %3411
  %3414 = add i64 %3412, %3413
  %3415 = icmp eq i64 %3414, 2
  %3416 = zext i1 %3415 to i8
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3416, i8* %3417, align 1
  store %struct.Memory* %loadMem_4a3c65, %struct.Memory** %MEMORY
  %loadMem_4a3c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 15
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 17
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %R8.i66 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %RBP.i65
  %3428 = sub i64 %3427, 4
  %3429 = load i64, i64* %PC.i64
  %3430 = add i64 %3429, 4
  store i64 %3430, i64* %PC.i64
  %3431 = inttoptr i64 %3428 to i32*
  %3432 = load i32, i32* %3431
  %3433 = sext i32 %3432 to i64
  store i64 %3433, i64* %R8.i66, align 8
  store %struct.Memory* %loadMem_4a3c68, %struct.Memory** %MEMORY
  %loadMem_4a3c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 7
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RDX.i61 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 9
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RSI.i62 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 17
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %R8.i63 = bitcast %union.anon* %3445 to i64*
  %3446 = load i64, i64* %RSI.i62
  %3447 = load i64, i64* %R8.i63
  %3448 = mul i64 %3447, 8
  %3449 = add i64 %3448, %3446
  %3450 = load i64, i64* %RDX.i61
  %3451 = load i64, i64* %PC.i60
  %3452 = add i64 %3451, 4
  store i64 %3452, i64* %PC.i60
  %3453 = inttoptr i64 %3449 to i64*
  store i64 %3450, i64* %3453
  store %struct.Memory* %loadMem_4a3c6c, %struct.Memory** %MEMORY
  %loadMem_4a3c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 33
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3456 to i64*
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3458 = getelementptr inbounds %struct.GPR, %struct.GPR* %3457, i32 0, i32 7
  %3459 = getelementptr inbounds %struct.Reg, %struct.Reg* %3458, i32 0, i32 0
  %RDX.i58 = bitcast %union.anon* %3459 to i64*
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 15
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %3462 to i64*
  %3463 = load i64, i64* %RBP.i59
  %3464 = sub i64 %3463, 8
  %3465 = load i64, i64* %PC.i57
  %3466 = add i64 %3465, 4
  store i64 %3466, i64* %PC.i57
  %3467 = inttoptr i64 %3464 to i32*
  %3468 = load i32, i32* %3467
  %3469 = sext i32 %3468 to i64
  store i64 %3469, i64* %RDX.i58, align 8
  store %struct.Memory* %loadMem_4a3c70, %struct.Memory** %MEMORY
  %loadMem_4a3c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 33
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3472 to i64*
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 7
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %RDX.i56 = bitcast %union.anon* %3475 to i64*
  %3476 = load i64, i64* %RDX.i56
  %3477 = mul i64 %3476, 8
  %3478 = add i64 %3477, 7482144
  %3479 = load i64, i64* %PC.i55
  %3480 = add i64 %3479, 8
  store i64 %3480, i64* %PC.i55
  %3481 = inttoptr i64 %3478 to i64*
  %3482 = load i64, i64* %3481
  store i64 %3482, i64* %RDX.i56, align 8
  store %struct.Memory* %loadMem_4a3c74, %struct.Memory** %MEMORY
  %loadMem_4a3c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 33
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3485 to i64*
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 9
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %RSI.i53 = bitcast %union.anon* %3488 to i64*
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 15
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %3491 to i64*
  %3492 = load i64, i64* %RBP.i54
  %3493 = sub i64 %3492, 4
  %3494 = load i64, i64* %PC.i52
  %3495 = add i64 %3494, 4
  store i64 %3495, i64* %PC.i52
  %3496 = inttoptr i64 %3493 to i32*
  %3497 = load i32, i32* %3496
  %3498 = sext i32 %3497 to i64
  store i64 %3498, i64* %RSI.i53, align 8
  store %struct.Memory* %loadMem_4a3c7c, %struct.Memory** %MEMORY
  %loadMem_4a3c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 33
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3501 to i64*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 7
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %3504 to i64*
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 9
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %RSI.i51 = bitcast %union.anon* %3507 to i64*
  %3508 = load i64, i64* %RDX.i50
  %3509 = load i64, i64* %RSI.i51
  %3510 = mul i64 %3509, 8
  %3511 = add i64 %3510, %3508
  %3512 = load i64, i64* %PC.i49
  %3513 = add i64 %3512, 4
  store i64 %3513, i64* %PC.i49
  %3514 = inttoptr i64 %3511 to i64*
  %3515 = load i64, i64* %3514
  store i64 %3515, i64* %RDX.i50, align 8
  store %struct.Memory* %loadMem_4a3c80, %struct.Memory** %MEMORY
  %loadMem_4a3c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 33
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 1
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 7
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %RDX.i48 = bitcast %union.anon* %3524 to i64*
  %3525 = load i64, i64* %RDX.i48
  %3526 = add i64 %3525, 12
  %3527 = load i64, i64* %PC.i46
  %3528 = add i64 %3527, 3
  store i64 %3528, i64* %PC.i46
  %3529 = inttoptr i64 %3526 to i32*
  %3530 = load i32, i32* %3529
  %3531 = zext i32 %3530 to i64
  store i64 %3531, i64* %RAX.i47, align 8
  store %struct.Memory* %loadMem_4a3c84, %struct.Memory** %MEMORY
  %loadMem_4a3c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 33
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3534 to i64*
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 1
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %3537 to i64*
  %3538 = load i64, i64* %RAX.i45
  %3539 = load i64, i64* %PC.i44
  %3540 = add i64 %3539, 2
  store i64 %3540, i64* %PC.i44
  %3541 = trunc i64 %3538 to i32
  %3542 = shl i32 %3541, 1
  %3543 = icmp slt i32 %3541, 0
  %3544 = icmp slt i32 %3542, 0
  %3545 = xor i1 %3543, %3544
  %3546 = zext i32 %3542 to i64
  store i64 %3546, i64* %RAX.i45, align 8
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3548 = zext i1 %3543 to i8
  store i8 %3548, i8* %3547, align 1
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3550 = and i32 %3542, 254
  %3551 = call i32 @llvm.ctpop.i32(i32 %3550)
  %3552 = trunc i32 %3551 to i8
  %3553 = and i8 %3552, 1
  %3554 = xor i8 %3553, 1
  store i8 %3554, i8* %3549, align 1
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3555, align 1
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3557 = icmp eq i32 %3542, 0
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %3556, align 1
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3560 = lshr i32 %3542, 31
  %3561 = trunc i32 %3560 to i8
  store i8 %3561, i8* %3559, align 1
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3563 = zext i1 %3545 to i8
  store i8 %3563, i8* %3562, align 1
  store %struct.Memory* %loadMem_4a3c87, %struct.Memory** %MEMORY
  %loadMem_4a3c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 33
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3566 to i64*
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 1
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %3569 to i64*
  %3570 = load i64, i64* %RAX.i43
  %3571 = load i64, i64* %PC.i42
  %3572 = add i64 %3571, 3
  store i64 %3572, i64* %PC.i42
  %3573 = trunc i64 %3570 to i32
  %3574 = add i32 1, %3573
  %3575 = zext i32 %3574 to i64
  store i64 %3575, i64* %RAX.i43, align 8
  %3576 = icmp ult i32 %3574, %3573
  %3577 = icmp ult i32 %3574, 1
  %3578 = or i1 %3576, %3577
  %3579 = zext i1 %3578 to i8
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3579, i8* %3580, align 1
  %3581 = and i32 %3574, 255
  %3582 = call i32 @llvm.ctpop.i32(i32 %3581)
  %3583 = trunc i32 %3582 to i8
  %3584 = and i8 %3583, 1
  %3585 = xor i8 %3584, 1
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3585, i8* %3586, align 1
  %3587 = xor i64 1, %3570
  %3588 = trunc i64 %3587 to i32
  %3589 = xor i32 %3588, %3574
  %3590 = lshr i32 %3589, 4
  %3591 = trunc i32 %3590 to i8
  %3592 = and i8 %3591, 1
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3592, i8* %3593, align 1
  %3594 = icmp eq i32 %3574, 0
  %3595 = zext i1 %3594 to i8
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3595, i8* %3596, align 1
  %3597 = lshr i32 %3574, 31
  %3598 = trunc i32 %3597 to i8
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3598, i8* %3599, align 1
  %3600 = lshr i32 %3573, 31
  %3601 = xor i32 %3597, %3600
  %3602 = add i32 %3601, %3597
  %3603 = icmp eq i32 %3602, 2
  %3604 = zext i1 %3603 to i8
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3604, i8* %3605, align 1
  store %struct.Memory* %loadMem_4a3c8a, %struct.Memory** %MEMORY
  %loadMem_4a3c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 33
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3608 to i64*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 1
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %EAX.i40 = bitcast %union.anon* %3611 to i32*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 7
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %RDX.i41 = bitcast %union.anon* %3614 to i64*
  %3615 = load i32, i32* %EAX.i40
  %3616 = zext i32 %3615 to i64
  %3617 = load i64, i64* %PC.i39
  %3618 = add i64 %3617, 3
  store i64 %3618, i64* %PC.i39
  %3619 = shl i64 %3616, 32
  %3620 = ashr exact i64 %3619, 32
  store i64 %3620, i64* %RDX.i41, align 8
  store %struct.Memory* %loadMem_4a3c8d, %struct.Memory** %MEMORY
  %loadMem_4a3c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 33
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3623 to i64*
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 9
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %RSI.i38 = bitcast %union.anon* %3626 to i64*
  %3627 = load i64, i64* %PC.i37
  %3628 = add i64 %3627, 8
  store i64 %3628, i64* %PC.i37
  %3629 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %3629, i64* %RSI.i38, align 8
  store %struct.Memory* %loadMem_4a3c90, %struct.Memory** %MEMORY
  %loadMem_4a3c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 33
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3632 to i64*
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 9
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %RSI.i36 = bitcast %union.anon* %3635 to i64*
  %3636 = load i64, i64* %RSI.i36
  %3637 = load i64, i64* %PC.i35
  %3638 = add i64 %3637, 7
  store i64 %3638, i64* %PC.i35
  %3639 = add i64 4776, %3636
  store i64 %3639, i64* %RSI.i36, align 8
  %3640 = icmp ult i64 %3639, %3636
  %3641 = icmp ult i64 %3639, 4776
  %3642 = or i1 %3640, %3641
  %3643 = zext i1 %3642 to i8
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3643, i8* %3644, align 1
  %3645 = trunc i64 %3639 to i32
  %3646 = and i32 %3645, 255
  %3647 = call i32 @llvm.ctpop.i32(i32 %3646)
  %3648 = trunc i32 %3647 to i8
  %3649 = and i8 %3648, 1
  %3650 = xor i8 %3649, 1
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3650, i8* %3651, align 1
  %3652 = xor i64 4776, %3636
  %3653 = xor i64 %3652, %3639
  %3654 = lshr i64 %3653, 4
  %3655 = trunc i64 %3654 to i8
  %3656 = and i8 %3655, 1
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3656, i8* %3657, align 1
  %3658 = icmp eq i64 %3639, 0
  %3659 = zext i1 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3659, i8* %3660, align 1
  %3661 = lshr i64 %3639, 63
  %3662 = trunc i64 %3661 to i8
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3662, i8* %3663, align 1
  %3664 = lshr i64 %3636, 63
  %3665 = xor i64 %3661, %3664
  %3666 = add i64 %3665, %3661
  %3667 = icmp eq i64 %3666, 2
  %3668 = zext i1 %3667 to i8
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3668, i8* %3669, align 1
  store %struct.Memory* %loadMem_4a3c98, %struct.Memory** %MEMORY
  %loadMem_4a3c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 15
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %3675 to i64*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 17
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %R8.i34 = bitcast %union.anon* %3678 to i64*
  %3679 = load i64, i64* %RBP.i33
  %3680 = sub i64 %3679, 8
  %3681 = load i64, i64* %PC.i32
  %3682 = add i64 %3681, 4
  store i64 %3682, i64* %PC.i32
  %3683 = inttoptr i64 %3680 to i32*
  %3684 = load i32, i32* %3683
  %3685 = sext i32 %3684 to i64
  store i64 %3685, i64* %R8.i34, align 8
  store %struct.Memory* %loadMem_4a3c9f, %struct.Memory** %MEMORY
  %loadMem_4a3ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 33
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3688 to i64*
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 17
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %R8.i31 = bitcast %union.anon* %3691 to i64*
  %3692 = load i64, i64* %R8.i31
  %3693 = load i64, i64* %PC.i30
  %3694 = add i64 %3693, 7
  store i64 %3694, i64* %PC.i30
  %3695 = sext i64 %3692 to i128
  %3696 = and i128 %3695, -18446744073709551616
  %3697 = zext i64 %3692 to i128
  %3698 = or i128 %3696, %3697
  %3699 = mul i128 264, %3698
  %3700 = trunc i128 %3699 to i64
  store i64 %3700, i64* %R8.i31, align 8
  %3701 = sext i64 %3700 to i128
  %3702 = icmp ne i128 %3701, %3699
  %3703 = zext i1 %3702 to i8
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3703, i8* %3704, align 1
  %3705 = trunc i128 %3699 to i32
  %3706 = and i32 %3705, 255
  %3707 = call i32 @llvm.ctpop.i32(i32 %3706)
  %3708 = trunc i32 %3707 to i8
  %3709 = and i8 %3708, 1
  %3710 = xor i8 %3709, 1
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3710, i8* %3711, align 1
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3712, align 1
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3713, align 1
  %3714 = lshr i64 %3700, 63
  %3715 = trunc i64 %3714 to i8
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3715, i8* %3716, align 1
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3703, i8* %3717, align 1
  store %struct.Memory* %loadMem_4a3ca3, %struct.Memory** %MEMORY
  %loadMem_4a3caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 33
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3720 to i64*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 9
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %RSI.i28 = bitcast %union.anon* %3723 to i64*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 17
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %R8.i29 = bitcast %union.anon* %3726 to i64*
  %3727 = load i64, i64* %RSI.i28
  %3728 = load i64, i64* %R8.i29
  %3729 = load i64, i64* %PC.i27
  %3730 = add i64 %3729, 3
  store i64 %3730, i64* %PC.i27
  %3731 = add i64 %3728, %3727
  store i64 %3731, i64* %RSI.i28, align 8
  %3732 = icmp ult i64 %3731, %3727
  %3733 = icmp ult i64 %3731, %3728
  %3734 = or i1 %3732, %3733
  %3735 = zext i1 %3734 to i8
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3735, i8* %3736, align 1
  %3737 = trunc i64 %3731 to i32
  %3738 = and i32 %3737, 255
  %3739 = call i32 @llvm.ctpop.i32(i32 %3738)
  %3740 = trunc i32 %3739 to i8
  %3741 = and i8 %3740, 1
  %3742 = xor i8 %3741, 1
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3742, i8* %3743, align 1
  %3744 = xor i64 %3728, %3727
  %3745 = xor i64 %3744, %3731
  %3746 = lshr i64 %3745, 4
  %3747 = trunc i64 %3746 to i8
  %3748 = and i8 %3747, 1
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3748, i8* %3749, align 1
  %3750 = icmp eq i64 %3731, 0
  %3751 = zext i1 %3750 to i8
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3751, i8* %3752, align 1
  %3753 = lshr i64 %3731, 63
  %3754 = trunc i64 %3753 to i8
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3754, i8* %3755, align 1
  %3756 = lshr i64 %3727, 63
  %3757 = lshr i64 %3728, 63
  %3758 = xor i64 %3753, %3756
  %3759 = xor i64 %3753, %3757
  %3760 = add i64 %3758, %3759
  %3761 = icmp eq i64 %3760, 2
  %3762 = zext i1 %3761 to i8
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3762, i8* %3763, align 1
  store %struct.Memory* %loadMem_4a3caa, %struct.Memory** %MEMORY
  %loadMem_4a3cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 33
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3766 to i64*
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 15
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %3769 to i64*
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 17
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %R8.i26 = bitcast %union.anon* %3772 to i64*
  %3773 = load i64, i64* %RBP.i25
  %3774 = sub i64 %3773, 4
  %3775 = load i64, i64* %PC.i24
  %3776 = add i64 %3775, 4
  store i64 %3776, i64* %PC.i24
  %3777 = inttoptr i64 %3774 to i32*
  %3778 = load i32, i32* %3777
  %3779 = sext i32 %3778 to i64
  store i64 %3779, i64* %R8.i26, align 8
  store %struct.Memory* %loadMem_4a3cad, %struct.Memory** %MEMORY
  %loadMem_4a3cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 33
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3782 to i64*
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 7
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3785 to i64*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 9
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 17
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %R8.i = bitcast %union.anon* %3791 to i64*
  %3792 = load i64, i64* %RSI.i
  %3793 = load i64, i64* %R8.i
  %3794 = mul i64 %3793, 8
  %3795 = add i64 %3794, %3792
  %3796 = load i64, i64* %RDX.i
  %3797 = load i64, i64* %PC.i23
  %3798 = add i64 %3797, 4
  store i64 %3798, i64* %PC.i23
  %3799 = inttoptr i64 %3795 to i64*
  store i64 %3796, i64* %3799
  store %struct.Memory* %loadMem_4a3cb1, %struct.Memory** %MEMORY
  %loadMem_4a3cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 33
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 1
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 15
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %3808 to i64*
  %3809 = load i64, i64* %RBP.i22
  %3810 = sub i64 %3809, 4
  %3811 = load i64, i64* %PC.i20
  %3812 = add i64 %3811, 3
  store i64 %3812, i64* %PC.i20
  %3813 = inttoptr i64 %3810 to i32*
  %3814 = load i32, i32* %3813
  %3815 = zext i32 %3814 to i64
  store i64 %3815, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_4a3cb5, %struct.Memory** %MEMORY
  %loadMem_4a3cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 33
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3818 to i64*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 1
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %3821 to i64*
  %3822 = load i64, i64* %RAX.i19
  %3823 = load i64, i64* %PC.i18
  %3824 = add i64 %3823, 3
  store i64 %3824, i64* %PC.i18
  %3825 = trunc i64 %3822 to i32
  %3826 = add i32 1, %3825
  %3827 = zext i32 %3826 to i64
  store i64 %3827, i64* %RAX.i19, align 8
  %3828 = icmp ult i32 %3826, %3825
  %3829 = icmp ult i32 %3826, 1
  %3830 = or i1 %3828, %3829
  %3831 = zext i1 %3830 to i8
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3831, i8* %3832, align 1
  %3833 = and i32 %3826, 255
  %3834 = call i32 @llvm.ctpop.i32(i32 %3833)
  %3835 = trunc i32 %3834 to i8
  %3836 = and i8 %3835, 1
  %3837 = xor i8 %3836, 1
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3837, i8* %3838, align 1
  %3839 = xor i64 1, %3822
  %3840 = trunc i64 %3839 to i32
  %3841 = xor i32 %3840, %3826
  %3842 = lshr i32 %3841, 4
  %3843 = trunc i32 %3842 to i8
  %3844 = and i8 %3843, 1
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3844, i8* %3845, align 1
  %3846 = icmp eq i32 %3826, 0
  %3847 = zext i1 %3846 to i8
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3847, i8* %3848, align 1
  %3849 = lshr i32 %3826, 31
  %3850 = trunc i32 %3849 to i8
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3850, i8* %3851, align 1
  %3852 = lshr i32 %3825, 31
  %3853 = xor i32 %3849, %3852
  %3854 = add i32 %3853, %3849
  %3855 = icmp eq i32 %3854, 2
  %3856 = zext i1 %3855 to i8
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3856, i8* %3857, align 1
  store %struct.Memory* %loadMem_4a3cb8, %struct.Memory** %MEMORY
  %loadMem_4a3cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 33
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3860 to i64*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 1
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %EAX.i16 = bitcast %union.anon* %3863 to i32*
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 15
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %3866 to i64*
  %3867 = load i64, i64* %RBP.i17
  %3868 = sub i64 %3867, 4
  %3869 = load i32, i32* %EAX.i16
  %3870 = zext i32 %3869 to i64
  %3871 = load i64, i64* %PC.i15
  %3872 = add i64 %3871, 3
  store i64 %3872, i64* %PC.i15
  %3873 = inttoptr i64 %3868 to i32*
  store i32 %3869, i32* %3873
  store %struct.Memory* %loadMem_4a3cbb, %struct.Memory** %MEMORY
  %loadMem_4a3cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 33
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3876 to i64*
  %3877 = load i64, i64* %PC.i14
  %3878 = add i64 %3877, -328
  %3879 = load i64, i64* %PC.i14
  %3880 = add i64 %3879, 5
  store i64 %3880, i64* %PC.i14
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3878, i64* %3881, align 8
  store %struct.Memory* %loadMem_4a3cbe, %struct.Memory** %MEMORY
  br label %block_.L_4a3b76

block_.L_4a3cc3:                                  ; preds = %block_.L_4a3b76
  %loadMem_4a3cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 33
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3884 to i64*
  %3885 = load i64, i64* %PC.i13
  %3886 = add i64 %3885, 5
  %3887 = load i64, i64* %PC.i13
  %3888 = add i64 %3887, 5
  store i64 %3888, i64* %PC.i13
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3886, i64* %3889, align 8
  store %struct.Memory* %loadMem_4a3cc3, %struct.Memory** %MEMORY
  br label %block_.L_4a3cc8

block_.L_4a3cc8:                                  ; preds = %block_.L_4a3cc3
  %loadMem_4a3cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 33
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3892 to i64*
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 1
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 15
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %3898 to i64*
  %3899 = load i64, i64* %RBP.i12
  %3900 = sub i64 %3899, 8
  %3901 = load i64, i64* %PC.i10
  %3902 = add i64 %3901, 3
  store i64 %3902, i64* %PC.i10
  %3903 = inttoptr i64 %3900 to i32*
  %3904 = load i32, i32* %3903
  %3905 = zext i32 %3904 to i64
  store i64 %3905, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_4a3cc8, %struct.Memory** %MEMORY
  %loadMem_4a3ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 33
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3908 to i64*
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 1
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3911 to i64*
  %3912 = load i64, i64* %RAX.i
  %3913 = load i64, i64* %PC.i9
  %3914 = add i64 %3913, 3
  store i64 %3914, i64* %PC.i9
  %3915 = trunc i64 %3912 to i32
  %3916 = add i32 1, %3915
  %3917 = zext i32 %3916 to i64
  store i64 %3917, i64* %RAX.i, align 8
  %3918 = icmp ult i32 %3916, %3915
  %3919 = icmp ult i32 %3916, 1
  %3920 = or i1 %3918, %3919
  %3921 = zext i1 %3920 to i8
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3921, i8* %3922, align 1
  %3923 = and i32 %3916, 255
  %3924 = call i32 @llvm.ctpop.i32(i32 %3923)
  %3925 = trunc i32 %3924 to i8
  %3926 = and i8 %3925, 1
  %3927 = xor i8 %3926, 1
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3927, i8* %3928, align 1
  %3929 = xor i64 1, %3912
  %3930 = trunc i64 %3929 to i32
  %3931 = xor i32 %3930, %3916
  %3932 = lshr i32 %3931, 4
  %3933 = trunc i32 %3932 to i8
  %3934 = and i8 %3933, 1
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3934, i8* %3935, align 1
  %3936 = icmp eq i32 %3916, 0
  %3937 = zext i1 %3936 to i8
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3937, i8* %3938, align 1
  %3939 = lshr i32 %3916, 31
  %3940 = trunc i32 %3939 to i8
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3940, i8* %3941, align 1
  %3942 = lshr i32 %3915, 31
  %3943 = xor i32 %3939, %3942
  %3944 = add i32 %3943, %3939
  %3945 = icmp eq i32 %3944, 2
  %3946 = zext i1 %3945 to i8
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3946, i8* %3947, align 1
  store %struct.Memory* %loadMem_4a3ccb, %struct.Memory** %MEMORY
  %loadMem_4a3cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 33
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3950 to i64*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 1
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3953 to i32*
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 15
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %3956 to i64*
  %3957 = load i64, i64* %RBP.i8
  %3958 = sub i64 %3957, 8
  %3959 = load i32, i32* %EAX.i
  %3960 = zext i32 %3959 to i64
  %3961 = load i64, i64* %PC.i7
  %3962 = add i64 %3961, 3
  store i64 %3962, i64* %PC.i7
  %3963 = inttoptr i64 %3958 to i32*
  store i32 %3959, i32* %3963
  store %struct.Memory* %loadMem_4a3cce, %struct.Memory** %MEMORY
  %loadMem_4a3cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 33
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3966 to i64*
  %3967 = load i64, i64* %PC.i6
  %3968 = add i64 %3967, -364
  %3969 = load i64, i64* %PC.i6
  %3970 = add i64 %3969, 5
  store i64 %3970, i64* %PC.i6
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3968, i64* %3971, align 8
  store %struct.Memory* %loadMem_4a3cd1, %struct.Memory** %MEMORY
  br label %block_.L_4a3b65

block_.L_4a3cd6:                                  ; preds = %block_.L_4a3b65
  %loadMem_4a3cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 33
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3974 to i64*
  %3975 = load i64, i64* %PC.i5
  %3976 = add i64 %3975, 5
  %3977 = load i64, i64* %PC.i5
  %3978 = add i64 %3977, 5
  store i64 %3978, i64* %PC.i5
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3976, i64* %3979, align 8
  store %struct.Memory* %loadMem_4a3cd6, %struct.Memory** %MEMORY
  br label %block_.L_4a3cdb

block_.L_4a3cdb:                                  ; preds = %block_.L_4a3cd6, %block_4a3b4c
  %loadMem_4a3cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 33
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3982 to i64*
  %3983 = load i64, i64* %PC.i4
  %3984 = add i64 %3983, 5
  %3985 = load i64, i64* %PC.i4
  %3986 = add i64 %3985, 5
  store i64 %3986, i64* %PC.i4
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3984, i64* %3987, align 8
  store %struct.Memory* %loadMem_4a3cdb, %struct.Memory** %MEMORY
  br label %block_.L_4a3ce0

block_.L_4a3ce0:                                  ; preds = %block_.L_4a3cdb, %block_.L_4a3b37
  %loadMem_4a3ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 33
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3990 to i64*
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 15
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3993 to i64*
  %3994 = load i64, i64* %PC.i2
  %3995 = add i64 %3994, 1
  store i64 %3995, i64* %PC.i2
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3997 = load i64, i64* %3996, align 8
  %3998 = add i64 %3997, 8
  %3999 = inttoptr i64 %3997 to i64*
  %4000 = load i64, i64* %3999
  store i64 %4000, i64* %RBP.i3, align 8
  store i64 %3998, i64* %3996, align 8
  store %struct.Memory* %loadMem_4a3ce0, %struct.Memory** %MEMORY
  %loadMem_4a3ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 33
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4003 to i64*
  %4004 = load i64, i64* %PC.i1
  %4005 = add i64 %4004, 1
  store i64 %4005, i64* %PC.i1
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4008 = load i64, i64* %4007, align 8
  %4009 = inttoptr i64 %4008 to i64*
  %4010 = load i64, i64* %4009
  store i64 %4010, i64* %4006, align 8
  %4011 = add i64 %4008, 8
  store i64 %4011, i64* %4007, align 8
  store %struct.Memory* %loadMem_4a3ce1, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4a3ce1
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

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*)
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

define %struct.Memory* @routine_jge_.L_4a3a3c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rdx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x2____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 2
  %15 = icmp ult i32 %13, 2
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
  %24 = xor i32 %13, 2
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

define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  %19 = load i64, i64* %RAX, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
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

define %struct.Memory* @routine_movslq__edi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x70fcf0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__0x18__rsi__r8_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 24
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RDX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 5
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %19 to i64*
  store i64 %20, i64* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__0x648__rsi__r8_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 1608
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RDX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %19 to i64*
  store i64 %20, i64* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__0xc78__rsi__r8_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 3192
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RDX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %19 to i64*
  store i64 %20, i64* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 12
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

define %struct.Memory* @routine_movq__rdx__0x12a8__rsi__r8_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 4776
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RDX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %19 to i64*
  store i64 %20, i64* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_4a394b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*)
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

define %struct.Memory* @routine_jge_.L_4a3b37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x722b28___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__0x120__rsi__r8_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 288
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RDX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %19 to i64*
  store i64 %20, i64* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__0x750__rsi__r8_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 1872
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RDX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %19 to i64*
  store i64 %20, i64* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__0xd80__rsi__r8_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 3456
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RDX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %19 to i64*
  store i64 %20, i64* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__0x13b0__rsi__r8_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 5040
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RDX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %19 to i64*
  store i64 %20, i64* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a3a43(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x47c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1148
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

define %struct.Memory* @routine_jne_.L_4a3ce0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4a3cdb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x6__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 6
  %16 = icmp ult i32 %14, 6
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
  %25 = xor i32 %14, 6
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

define %struct.Memory* @routine_jge_.L_4a3cd6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 7489456
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %12, %20
  %22 = icmp ult i32 %12, %20
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %21, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %20, %12
  %32 = xor i32 %31, %21
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %21, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %21, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %12, 31
  %44 = lshr i32 %20, 31
  %45 = xor i32 %44, %43
  %46 = xor i32 %40, %43
  %47 = add i32 %46, %45
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4a3cc3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x722b20___rdx_8____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 7482144
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x18___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 24, %9
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 24
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
  %25 = xor i64 24, %9
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x108___r8___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 264, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %R8, align 8
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

define %struct.Memory* @routine_addq__r8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rdx____rsi__r8_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RDX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x648___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 1608, %9
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1608
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
  %25 = xor i64 1608, %9
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

define %struct.Memory* @routine_addq__0xc78___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 3192, %9
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 3192
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
  %25 = xor i64 3192, %9
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

define %struct.Memory* @routine_addq__0x12a8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 4776, %9
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 4776
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
  %25 = xor i64 4776, %9
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

define %struct.Memory* @routine_jmpq_.L_4a3b76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a3cc8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a3b65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a3cdb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a3ce0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
