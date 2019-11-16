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
%G_0xaf2774_type = type <{ [1 x i8] }>
%G_0xaf2788_type = type <{ [1 x i8] }>
%G_0xaf279c_type = type <{ [1 x i8] }>
%G_0xaf28cc_type = type <{ [4 x i8] }>
%G__0xaf2760_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0xaf2774 = global %G_0xaf2774_type zeroinitializer
@G_0xaf2788 = global %G_0xaf2788_type zeroinitializer
@G_0xaf279c = global %G_0xaf279c_type zeroinitializer
@G_0xaf28cc = global %G_0xaf28cc_type zeroinitializer
@G__0xaf2760 = global %G__0xaf2760_type zeroinitializer

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
define %struct.Memory* @set_handicap_spots(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_492410 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_492410, %struct.Memory** %MEMORY
  %loadMem_492411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i12 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i12
  %27 = load i64, i64* %PC.i11
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i11
  store i64 %26, i64* %RBP.i13, align 8
  store %struct.Memory* %loadMem_492411, %struct.Memory** %MEMORY
  %loadMem_492414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i29 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i29
  %36 = load i64, i64* %PC.i28
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i28
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i29, align 8
  %39 = icmp ult i64 %35, 32
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
  %49 = xor i64 32, %35
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
  store %struct.Memory* %loadMem_492414, %struct.Memory** %MEMORY
  %loadMem_492418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i43
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i42
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i42
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_492418, %struct.Memory** %MEMORY
  %loadMem_49241b = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 11
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RDI.i90 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %PC.i89
  %90 = add i64 %89, 7
  store i64 %90, i64* %PC.i89
  %91 = load i32, i32* bitcast (%G_0xaf28cc_type* @G_0xaf28cc to i32*)
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %RDI.i90, align 8
  store %struct.Memory* %loadMem_49241b, %struct.Memory** %MEMORY
  %loadMem_492422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 33
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 11
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %EDI.i112 = bitcast %union.anon* %98 to i32*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 15
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %101 to i64*
  %102 = load i32, i32* %EDI.i112
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %RBP.i113
  %105 = sub i64 %104, 4
  %106 = load i64, i64* %PC.i111
  %107 = add i64 %106, 3
  store i64 %107, i64* %PC.i111
  %108 = inttoptr i64 %105 to i32*
  %109 = load i32, i32* %108
  %110 = sub i32 %102, %109
  %111 = icmp ult i32 %102, %109
  %112 = zext i1 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %112, i8* %113, align 1
  %114 = and i32 %110, 255
  %115 = call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %118, i8* %119, align 1
  %120 = xor i32 %109, %102
  %121 = xor i32 %120, %110
  %122 = lshr i32 %121, 4
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %124, i8* %125, align 1
  %126 = icmp eq i32 %110, 0
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %127, i8* %128, align 1
  %129 = lshr i32 %110, 31
  %130 = trunc i32 %129 to i8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %130, i8* %131, align 1
  %132 = lshr i32 %102, 31
  %133 = lshr i32 %109, 31
  %134 = xor i32 %133, %132
  %135 = xor i32 %129, %132
  %136 = add i32 %135, %134
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %138, i8* %139, align 1
  store %struct.Memory* %loadMem_492422, %struct.Memory** %MEMORY
  %loadMem_492425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %PC.i126
  %144 = add i64 %143, 11
  %145 = load i64, i64* %PC.i126
  %146 = add i64 %145, 6
  %147 = load i64, i64* %PC.i126
  %148 = add i64 %147, 6
  store i64 %148, i64* %PC.i126
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %150 = load i8, i8* %149, align 1
  %151 = icmp eq i8 %150, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %BRANCH_TAKEN, align 1
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %154 = select i1 %151, i64 %144, i64 %146
  store i64 %154, i64* %153, align 8
  store %struct.Memory* %loadMem_492425, %struct.Memory** %MEMORY
  %loadBr_492425 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_492425 = icmp eq i8 %loadBr_492425, 1
  br i1 %cmpBr_492425, label %block_.L_492430, label %block_49242b

block_49242b:                                     ; preds = %entry
  %loadMem_49242b = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %157 to i64*
  %158 = load i64, i64* %PC.i208
  %159 = add i64 %158, 837
  %160 = load i64, i64* %PC.i208
  %161 = add i64 %160, 5
  store i64 %161, i64* %PC.i208
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %159, i64* %162, align 8
  store %struct.Memory* %loadMem_49242b, %struct.Memory** %MEMORY
  br label %block_.L_492770

block_.L_492430:                                  ; preds = %entry
  %loadMem_492430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 33
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 11
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RDI.i225 = bitcast %union.anon* %168 to i64*
  %169 = load i64, i64* %PC.i224
  %170 = add i64 %169, 10
  store i64 %170, i64* %PC.i224
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RDI.i225, align 8
  store %struct.Memory* %loadMem_492430, %struct.Memory** %MEMORY
  %loadMem_49243a = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 9
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RSI.i428 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %PC.i427
  %178 = add i64 %177, 5
  store i64 %178, i64* %PC.i427
  store i64 46, i64* %RSI.i428, align 8
  store %struct.Memory* %loadMem_49243a, %struct.Memory** %MEMORY
  %loadMem_49243f = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %184 to i64*
  %185 = load i64, i64* %PC.i454
  %186 = add i64 %185, 5
  store i64 %186, i64* %PC.i454
  store i64 361, i64* %RAX.i455, align 8
  store %struct.Memory* %loadMem_49243f, %struct.Memory** %MEMORY
  %loadMem_492444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %EAX.i472 = bitcast %union.anon* %192 to i32*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RDX.i473 = bitcast %union.anon* %195 to i64*
  %196 = load i32, i32* %EAX.i472
  %197 = zext i32 %196 to i64
  %198 = load i64, i64* %PC.i471
  %199 = add i64 %198, 2
  store i64 %199, i64* %PC.i471
  %200 = and i64 %197, 4294967295
  store i64 %200, i64* %RDX.i473, align 8
  store %struct.Memory* %loadMem_492444, %struct.Memory** %MEMORY
  %loadMem_492446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 33
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 15
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %209 to i64*
  %210 = load i64, i64* %RBP.i552
  %211 = sub i64 %210, 4
  %212 = load i64, i64* %PC.i550
  %213 = add i64 %212, 3
  store i64 %213, i64* %PC.i550
  %214 = inttoptr i64 %211 to i32*
  %215 = load i32, i32* %214
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RAX.i551, align 8
  store %struct.Memory* %loadMem_492446, %struct.Memory** %MEMORY
  %loadMem_492449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 33
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %219 to i64*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %EAX.i555 = bitcast %union.anon* %222 to i32*
  %223 = load i32, i32* %EAX.i555
  %224 = zext i32 %223 to i64
  %225 = load i64, i64* %PC.i554
  %226 = add i64 %225, 7
  store i64 %226, i64* %PC.i554
  store i32 %223, i32* bitcast (%G_0xaf28cc_type* @G_0xaf28cc to i32*)
  store %struct.Memory* %loadMem_492449, %struct.Memory** %MEMORY
  %loadMem1_492450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %229 to i64*
  %230 = load i64, i64* %PC.i553
  %231 = add i64 %230, -594912
  %232 = load i64, i64* %PC.i553
  %233 = add i64 %232, 5
  %234 = load i64, i64* %PC.i553
  %235 = add i64 %234, 5
  store i64 %235, i64* %PC.i553
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = add i64 %237, -8
  %239 = inttoptr i64 %238 to i64*
  store i64 %233, i64* %239
  store i64 %238, i64* %236, align 8
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %231, i64* %240, align 8
  store %struct.Memory* %loadMem1_492450, %struct.Memory** %MEMORY
  %loadMem2_492450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_492450 = load i64, i64* %3
  %241 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_492450)
  store %struct.Memory* %241, %struct.Memory** %MEMORY
  %loadMem_492455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 15
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %RBP.i549
  %249 = sub i64 %248, 4
  %250 = load i64, i64* %PC.i548
  %251 = add i64 %250, 4
  store i64 %251, i64* %PC.i548
  %252 = inttoptr i64 %249 to i32*
  %253 = load i32, i32* %252
  %254 = sub i32 %253, 5
  %255 = icmp ult i32 %253, 5
  %256 = zext i1 %255 to i8
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %256, i8* %257, align 1
  %258 = and i32 %254, 255
  %259 = call i32 @llvm.ctpop.i32(i32 %258)
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %262, i8* %263, align 1
  %264 = xor i32 %253, 5
  %265 = xor i32 %264, %254
  %266 = lshr i32 %265, 4
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %268, i8* %269, align 1
  %270 = icmp eq i32 %254, 0
  %271 = zext i1 %270 to i8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %271, i8* %272, align 1
  %273 = lshr i32 %254, 31
  %274 = trunc i32 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %274, i8* %275, align 1
  %276 = lshr i32 %253, 31
  %277 = xor i32 %273, %276
  %278 = add i32 %277, %276
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %280, i8* %281, align 1
  store %struct.Memory* %loadMem_492455, %struct.Memory** %MEMORY
  %loadMem_492459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %284 to i64*
  %285 = load i64, i64* %PC.i547
  %286 = add i64 %285, 146
  %287 = load i64, i64* %PC.i547
  %288 = add i64 %287, 6
  %289 = load i64, i64* %PC.i547
  %290 = add i64 %289, 6
  store i64 %290, i64* %PC.i547
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %292 = load i8, i8* %291, align 1
  %293 = icmp eq i8 %292, 0
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %BRANCH_TAKEN, align 1
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %296 = select i1 %293, i64 %286, i64 %288
  store i64 %296, i64* %295, align 8
  store %struct.Memory* %loadMem_492459, %struct.Memory** %MEMORY
  %loadBr_492459 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_492459 = icmp eq i8 %loadBr_492459, 1
  br i1 %cmpBr_492459, label %block_.L_4924eb, label %block_49245f

block_49245f:                                     ; preds = %block_.L_492430
  %loadMem_49245f = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %302 to i64*
  %303 = load i64, i64* %PC.i545
  %304 = add i64 %303, 5
  store i64 %304, i64* %PC.i545
  store i64 2, i64* %RAX.i546, align 8
  store %struct.Memory* %loadMem_49245f, %struct.Memory** %MEMORY
  %loadMem_492464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 5
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %310 to i64*
  %311 = load i64, i64* %PC.i543
  %312 = add i64 %311, 10
  store i64 %312, i64* %PC.i543
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RCX.i544, align 8
  store %struct.Memory* %loadMem_492464, %struct.Memory** %MEMORY
  %loadMem_49246e = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %315 to i64*
  %316 = load i64, i64* %PC.i542
  %317 = add i64 %316, 8
  store i64 %317, i64* %PC.i542
  store i8 43, i8* getelementptr inbounds (%G_0xaf2774_type, %G_0xaf2774_type* @G_0xaf2774, i32 0, i32 0, i32 0)
  store %struct.Memory* %loadMem_49246e, %struct.Memory** %MEMORY
  %loadMem_492476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 7
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %RDX.i540 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 15
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %326 to i64*
  %327 = load i64, i64* %RBP.i541
  %328 = sub i64 %327, 4
  %329 = load i64, i64* %PC.i539
  %330 = add i64 %329, 3
  store i64 %330, i64* %PC.i539
  %331 = inttoptr i64 %328 to i32*
  %332 = load i32, i32* %331
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RDX.i540, align 8
  store %struct.Memory* %loadMem_492476, %struct.Memory** %MEMORY
  %loadMem_492479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 33
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %336 to i64*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 7
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %RDX.i538 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %RDX.i538
  %341 = load i64, i64* %PC.i537
  %342 = add i64 %341, 3
  store i64 %342, i64* %PC.i537
  %343 = trunc i64 %340 to i32
  %344 = sub i32 %343, 2
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RDX.i538, align 8
  %346 = icmp ult i32 %343, 2
  %347 = zext i1 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %347, i8* %348, align 1
  %349 = and i32 %344, 255
  %350 = call i32 @llvm.ctpop.i32(i32 %349)
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %353, i8* %354, align 1
  %355 = xor i64 2, %340
  %356 = trunc i64 %355 to i32
  %357 = xor i32 %356, %344
  %358 = lshr i32 %357, 4
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %360, i8* %361, align 1
  %362 = icmp eq i32 %344, 0
  %363 = zext i1 %362 to i8
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %363, i8* %364, align 1
  %365 = lshr i32 %344, 31
  %366 = trunc i32 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %366, i8* %367, align 1
  %368 = lshr i32 %343, 31
  %369 = xor i32 %365, %368
  %370 = add i32 %369, %368
  %371 = icmp eq i32 %370, 2
  %372 = zext i1 %371 to i8
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %372, i8* %373, align 1
  store %struct.Memory* %loadMem_492479, %struct.Memory** %MEMORY
  %loadMem_49247c = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 7
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %EDX.i535 = bitcast %union.anon* %379 to i32*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 9
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RSI.i536 = bitcast %union.anon* %382 to i64*
  %383 = load i32, i32* %EDX.i535
  %384 = zext i32 %383 to i64
  %385 = load i64, i64* %PC.i534
  %386 = add i64 %385, 3
  store i64 %386, i64* %PC.i534
  %387 = shl i64 %384, 32
  %388 = ashr exact i64 %387, 32
  store i64 %388, i64* %RSI.i536, align 8
  store %struct.Memory* %loadMem_49247c, %struct.Memory** %MEMORY
  %loadMem_49247f = load %struct.Memory*, %struct.Memory** %MEMORY
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 33
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 9
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %RSI.i533 = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %RSI.i533
  %396 = load i64, i64* %PC.i532
  %397 = add i64 %396, 4
  store i64 %397, i64* %PC.i532
  %398 = sext i64 %395 to i128
  %399 = and i128 %398, -18446744073709551616
  %400 = zext i64 %395 to i128
  %401 = or i128 %399, %400
  %402 = mul i128 19, %401
  %403 = trunc i128 %402 to i64
  store i64 %403, i64* %RSI.i533, align 8
  %404 = sext i64 %403 to i128
  %405 = icmp ne i128 %404, %402
  %406 = zext i1 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %406, i8* %407, align 1
  %408 = trunc i128 %402 to i32
  %409 = and i32 %408, 255
  %410 = call i32 @llvm.ctpop.i32(i32 %409)
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %413, i8* %414, align 1
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %415, align 1
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %416, align 1
  %417 = lshr i64 %403, 63
  %418 = trunc i64 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %418, i8* %419, align 1
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %406, i8* %420, align 1
  store %struct.Memory* %loadMem_49247f, %struct.Memory** %MEMORY
  %loadMem_492483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 5
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 11
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RDI.i531 = bitcast %union.anon* %429 to i64*
  %430 = load i64, i64* %RCX.i530
  %431 = load i64, i64* %PC.i529
  %432 = add i64 %431, 3
  store i64 %432, i64* %PC.i529
  store i64 %430, i64* %RDI.i531, align 8
  store %struct.Memory* %loadMem_492483, %struct.Memory** %MEMORY
  %loadMem_492486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 33
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 9
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RSI.i527 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 11
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RDI.i528 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %RDI.i528
  %443 = load i64, i64* %RSI.i527
  %444 = load i64, i64* %PC.i526
  %445 = add i64 %444, 3
  store i64 %445, i64* %PC.i526
  %446 = add i64 %443, %442
  store i64 %446, i64* %RDI.i528, align 8
  %447 = icmp ult i64 %446, %442
  %448 = icmp ult i64 %446, %443
  %449 = or i1 %447, %448
  %450 = zext i1 %449 to i8
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %450, i8* %451, align 1
  %452 = trunc i64 %446 to i32
  %453 = and i32 %452, 255
  %454 = call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %457, i8* %458, align 1
  %459 = xor i64 %443, %442
  %460 = xor i64 %459, %446
  %461 = lshr i64 %460, 4
  %462 = trunc i64 %461 to i8
  %463 = and i8 %462, 1
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %463, i8* %464, align 1
  %465 = icmp eq i64 %446, 0
  %466 = zext i1 %465 to i8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %466, i8* %467, align 1
  %468 = lshr i64 %446, 63
  %469 = trunc i64 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %469, i8* %470, align 1
  %471 = lshr i64 %442, 63
  %472 = lshr i64 %443, 63
  %473 = xor i64 %468, %471
  %474 = xor i64 %468, %472
  %475 = add i64 %473, %474
  %476 = icmp eq i64 %475, 2
  %477 = zext i1 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %477, i8* %478, align 1
  store %struct.Memory* %loadMem_492486, %struct.Memory** %MEMORY
  %loadMem_492489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 33
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %481 to i64*
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 11
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %RDI.i525 = bitcast %union.anon* %484 to i64*
  %485 = load i64, i64* %RDI.i525
  %486 = add i64 %485, 1
  %487 = load i64, i64* %PC.i524
  %488 = add i64 %487, 4
  store i64 %488, i64* %PC.i524
  %489 = inttoptr i64 %486 to i8*
  store i8 43, i8* %489
  store %struct.Memory* %loadMem_492489, %struct.Memory** %MEMORY
  %loadMem_49248d = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 7
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RDX.i522 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 15
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %498 to i64*
  %499 = load i64, i64* %RBP.i523
  %500 = sub i64 %499, 4
  %501 = load i64, i64* %PC.i521
  %502 = add i64 %501, 3
  store i64 %502, i64* %PC.i521
  %503 = inttoptr i64 %500 to i32*
  %504 = load i32, i32* %503
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RDX.i522, align 8
  store %struct.Memory* %loadMem_49248d, %struct.Memory** %MEMORY
  %loadMem_492490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 33
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 7
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RDX.i520 = bitcast %union.anon* %511 to i64*
  %512 = load i64, i64* %RDX.i520
  %513 = load i64, i64* %PC.i519
  %514 = add i64 %513, 3
  store i64 %514, i64* %PC.i519
  %515 = trunc i64 %512 to i32
  %516 = sub i32 %515, 2
  %517 = zext i32 %516 to i64
  store i64 %517, i64* %RDX.i520, align 8
  %518 = icmp ult i32 %515, 2
  %519 = zext i1 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %519, i8* %520, align 1
  %521 = and i32 %516, 255
  %522 = call i32 @llvm.ctpop.i32(i32 %521)
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %525, i8* %526, align 1
  %527 = xor i64 2, %512
  %528 = trunc i64 %527 to i32
  %529 = xor i32 %528, %516
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %532, i8* %533, align 1
  %534 = icmp eq i32 %516, 0
  %535 = zext i1 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %535, i8* %536, align 1
  %537 = lshr i32 %516, 31
  %538 = trunc i32 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %538, i8* %539, align 1
  %540 = lshr i32 %515, 31
  %541 = xor i32 %537, %540
  %542 = add i32 %541, %540
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %544, i8* %545, align 1
  store %struct.Memory* %loadMem_492490, %struct.Memory** %MEMORY
  %loadMem_492493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 7
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %EDX.i517 = bitcast %union.anon* %551 to i32*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 9
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RSI.i518 = bitcast %union.anon* %554 to i64*
  %555 = load i32, i32* %EDX.i517
  %556 = zext i32 %555 to i64
  %557 = load i64, i64* %PC.i516
  %558 = add i64 %557, 3
  store i64 %558, i64* %PC.i516
  %559 = shl i64 %556, 32
  %560 = ashr exact i64 %559, 32
  store i64 %560, i64* %RSI.i518, align 8
  store %struct.Memory* %loadMem_492493, %struct.Memory** %MEMORY
  %loadMem_492496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 33
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 9
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %RSI.i515 = bitcast %union.anon* %566 to i64*
  %567 = load i64, i64* %RSI.i515
  %568 = add i64 %567, 11478899
  %569 = load i64, i64* %PC.i514
  %570 = add i64 %569, 8
  store i64 %570, i64* %PC.i514
  %571 = inttoptr i64 %568 to i8*
  store i8 43, i8* %571
  store %struct.Memory* %loadMem_492496, %struct.Memory** %MEMORY
  %loadMem_49249e = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 7
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RDX.i512 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 15
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %580 to i64*
  %581 = load i64, i64* %RBP.i513
  %582 = sub i64 %581, 4
  %583 = load i64, i64* %PC.i511
  %584 = add i64 %583, 3
  store i64 %584, i64* %PC.i511
  %585 = inttoptr i64 %582 to i32*
  %586 = load i32, i32* %585
  %587 = zext i32 %586 to i64
  store i64 %587, i64* %RDX.i512, align 8
  store %struct.Memory* %loadMem_49249e, %struct.Memory** %MEMORY
  %loadMem_4924a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 7
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RDX.i510 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %RDX.i510
  %595 = load i64, i64* %PC.i509
  %596 = add i64 %595, 3
  store i64 %596, i64* %PC.i509
  %597 = trunc i64 %594 to i32
  %598 = sub i32 %597, 2
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %RDX.i510, align 8
  %600 = icmp ult i32 %597, 2
  %601 = zext i1 %600 to i8
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %601, i8* %602, align 1
  %603 = and i32 %598, 255
  %604 = call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %607, i8* %608, align 1
  %609 = xor i64 2, %594
  %610 = trunc i64 %609 to i32
  %611 = xor i32 %610, %598
  %612 = lshr i32 %611, 4
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %614, i8* %615, align 1
  %616 = icmp eq i32 %598, 0
  %617 = zext i1 %616 to i8
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %617, i8* %618, align 1
  %619 = lshr i32 %598, 31
  %620 = trunc i32 %619 to i8
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %620, i8* %621, align 1
  %622 = lshr i32 %597, 31
  %623 = xor i32 %619, %622
  %624 = add i32 %623, %622
  %625 = icmp eq i32 %624, 2
  %626 = zext i1 %625 to i8
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %626, i8* %627, align 1
  store %struct.Memory* %loadMem_4924a1, %struct.Memory** %MEMORY
  %loadMem_4924a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 7
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %EDX.i507 = bitcast %union.anon* %633 to i32*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 9
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RSI.i508 = bitcast %union.anon* %636 to i64*
  %637 = load i32, i32* %EDX.i507
  %638 = zext i32 %637 to i64
  %639 = load i64, i64* %PC.i506
  %640 = add i64 %639, 3
  store i64 %640, i64* %PC.i506
  %641 = shl i64 %638, 32
  %642 = ashr exact i64 %641, 32
  store i64 %642, i64* %RSI.i508, align 8
  store %struct.Memory* %loadMem_4924a4, %struct.Memory** %MEMORY
  %loadMem_4924a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 33
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 9
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %RSI.i505 = bitcast %union.anon* %648 to i64*
  %649 = load i64, i64* %RSI.i505
  %650 = load i64, i64* %PC.i504
  %651 = add i64 %650, 4
  store i64 %651, i64* %PC.i504
  %652 = sext i64 %649 to i128
  %653 = and i128 %652, -18446744073709551616
  %654 = zext i64 %649 to i128
  %655 = or i128 %653, %654
  %656 = mul i128 19, %655
  %657 = trunc i128 %656 to i64
  store i64 %657, i64* %RSI.i505, align 8
  %658 = sext i64 %657 to i128
  %659 = icmp ne i128 %658, %656
  %660 = zext i1 %659 to i8
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %660, i8* %661, align 1
  %662 = trunc i128 %656 to i32
  %663 = and i32 %662, 255
  %664 = call i32 @llvm.ctpop.i32(i32 %663)
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = xor i8 %666, 1
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %667, i8* %668, align 1
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %669, align 1
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %670, align 1
  %671 = lshr i64 %657, 63
  %672 = trunc i64 %671 to i8
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %672, i8* %673, align 1
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %660, i8* %674, align 1
  store %struct.Memory* %loadMem_4924a7, %struct.Memory** %MEMORY
  %loadMem_4924ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 33
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 5
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RCX.i502 = bitcast %union.anon* %680 to i64*
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 11
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %RDI.i503 = bitcast %union.anon* %683 to i64*
  %684 = load i64, i64* %RCX.i502
  %685 = load i64, i64* %PC.i501
  %686 = add i64 %685, 3
  store i64 %686, i64* %PC.i501
  store i64 %684, i64* %RDI.i503, align 8
  store %struct.Memory* %loadMem_4924ab, %struct.Memory** %MEMORY
  %loadMem_4924ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 9
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RSI.i499 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 11
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RDI.i500 = bitcast %union.anon* %695 to i64*
  %696 = load i64, i64* %RDI.i500
  %697 = load i64, i64* %RSI.i499
  %698 = load i64, i64* %PC.i498
  %699 = add i64 %698, 3
  store i64 %699, i64* %PC.i498
  %700 = add i64 %697, %696
  store i64 %700, i64* %RDI.i500, align 8
  %701 = icmp ult i64 %700, %696
  %702 = icmp ult i64 %700, %697
  %703 = or i1 %701, %702
  %704 = zext i1 %703 to i8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %704, i8* %705, align 1
  %706 = trunc i64 %700 to i32
  %707 = and i32 %706, 255
  %708 = call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %711, i8* %712, align 1
  %713 = xor i64 %697, %696
  %714 = xor i64 %713, %700
  %715 = lshr i64 %714, 4
  %716 = trunc i64 %715 to i8
  %717 = and i8 %716, 1
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %717, i8* %718, align 1
  %719 = icmp eq i64 %700, 0
  %720 = zext i1 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %720, i8* %721, align 1
  %722 = lshr i64 %700, 63
  %723 = trunc i64 %722 to i8
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %723, i8* %724, align 1
  %725 = lshr i64 %696, 63
  %726 = lshr i64 %697, 63
  %727 = xor i64 %722, %725
  %728 = xor i64 %722, %726
  %729 = add i64 %727, %728
  %730 = icmp eq i64 %729, 2
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %731, i8* %732, align 1
  store %struct.Memory* %loadMem_4924ae, %struct.Memory** %MEMORY
  %loadMem_4924b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 7
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RDX.i496 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 15
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RBP.i497
  %743 = sub i64 %742, 4
  %744 = load i64, i64* %PC.i495
  %745 = add i64 %744, 3
  store i64 %745, i64* %PC.i495
  %746 = inttoptr i64 %743 to i32*
  %747 = load i32, i32* %746
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RDX.i496, align 8
  store %struct.Memory* %loadMem_4924b1, %struct.Memory** %MEMORY
  %loadMem_4924b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 33
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 7
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RDX.i494 = bitcast %union.anon* %754 to i64*
  %755 = load i64, i64* %RDX.i494
  %756 = load i64, i64* %PC.i493
  %757 = add i64 %756, 3
  store i64 %757, i64* %PC.i493
  %758 = trunc i64 %755 to i32
  %759 = sub i32 %758, 2
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RDX.i494, align 8
  %761 = icmp ult i32 %758, 2
  %762 = zext i1 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %762, i8* %763, align 1
  %764 = and i32 %759, 255
  %765 = call i32 @llvm.ctpop.i32(i32 %764)
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %768, i8* %769, align 1
  %770 = xor i64 2, %755
  %771 = trunc i64 %770 to i32
  %772 = xor i32 %771, %759
  %773 = lshr i32 %772, 4
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %775, i8* %776, align 1
  %777 = icmp eq i32 %759, 0
  %778 = zext i1 %777 to i8
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %778, i8* %779, align 1
  %780 = lshr i32 %759, 31
  %781 = trunc i32 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %781, i8* %782, align 1
  %783 = lshr i32 %758, 31
  %784 = xor i32 %780, %783
  %785 = add i32 %784, %783
  %786 = icmp eq i32 %785, 2
  %787 = zext i1 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %787, i8* %788, align 1
  store %struct.Memory* %loadMem_4924b4, %struct.Memory** %MEMORY
  %loadMem_4924b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 33
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 7
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %EDX.i491 = bitcast %union.anon* %794 to i32*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 9
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RSI.i492 = bitcast %union.anon* %797 to i64*
  %798 = load i32, i32* %EDX.i491
  %799 = zext i32 %798 to i64
  %800 = load i64, i64* %PC.i490
  %801 = add i64 %800, 3
  store i64 %801, i64* %PC.i490
  %802 = shl i64 %799, 32
  %803 = ashr exact i64 %802, 32
  store i64 %803, i64* %RSI.i492, align 8
  store %struct.Memory* %loadMem_4924b7, %struct.Memory** %MEMORY
  %loadMem_4924ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 9
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %RSI.i488 = bitcast %union.anon* %809 to i64*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 11
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RDI.i489 = bitcast %union.anon* %812 to i64*
  %813 = load i64, i64* %RDI.i489
  %814 = load i64, i64* %RSI.i488
  %815 = add i64 %814, %813
  %816 = load i64, i64* %PC.i487
  %817 = add i64 %816, 4
  store i64 %817, i64* %PC.i487
  %818 = inttoptr i64 %815 to i8*
  store i8 43, i8* %818
  store %struct.Memory* %loadMem_4924ba, %struct.Memory** %MEMORY
  %loadMem_4924be = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 7
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RDX.i485 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 15
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %827 to i64*
  %828 = load i64, i64* %RBP.i486
  %829 = sub i64 %828, 4
  %830 = load i64, i64* %PC.i484
  %831 = add i64 %830, 3
  store i64 %831, i64* %PC.i484
  %832 = inttoptr i64 %829 to i32*
  %833 = load i32, i32* %832
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RDX.i485, align 8
  store %struct.Memory* %loadMem_4924be, %struct.Memory** %MEMORY
  %loadMem_4924c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 1
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %EAX.i482 = bitcast %union.anon* %840 to i32*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 15
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %843 to i64*
  %844 = load i64, i64* %RBP.i483
  %845 = sub i64 %844, 8
  %846 = load i32, i32* %EAX.i482
  %847 = zext i32 %846 to i64
  %848 = load i64, i64* %PC.i481
  %849 = add i64 %848, 3
  store i64 %849, i64* %PC.i481
  %850 = inttoptr i64 %845 to i32*
  store i32 %846, i32* %850
  store %struct.Memory* %loadMem_4924c1, %struct.Memory** %MEMORY
  %loadMem_4924c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 7
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %EDX.i479 = bitcast %union.anon* %856 to i32*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 1
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %859 to i64*
  %860 = load i32, i32* %EDX.i479
  %861 = zext i32 %860 to i64
  %862 = load i64, i64* %PC.i478
  %863 = add i64 %862, 2
  store i64 %863, i64* %PC.i478
  %864 = and i64 %861, 4294967295
  store i64 %864, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_4924c4, %struct.Memory** %MEMORY
  %loadMem_4924c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 33
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %867 to i64*
  %868 = load i64, i64* %PC.i477
  %869 = add i64 %868, 1
  store i64 %869, i64* %PC.i477
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %872 = bitcast %union.anon* %871 to i32*
  %873 = load i32, i32* %872, align 8
  %874 = sext i32 %873 to i64
  %875 = lshr i64 %874, 32
  store i64 %875, i64* %870, align 8
  store %struct.Memory* %loadMem_4924c6, %struct.Memory** %MEMORY
  %loadMem_4924c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 33
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 17
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %R8D.i475 = bitcast %union.anon* %881 to i32*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 15
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %884 to i64*
  %885 = bitcast i32* %R8D.i475 to i64*
  %886 = load i64, i64* %RBP.i476
  %887 = sub i64 %886, 8
  %888 = load i64, i64* %PC.i474
  %889 = add i64 %888, 4
  store i64 %889, i64* %PC.i474
  %890 = inttoptr i64 %887 to i32*
  %891 = load i32, i32* %890
  %892 = zext i32 %891 to i64
  store i64 %892, i64* %885, align 8
  store %struct.Memory* %loadMem_4924c7, %struct.Memory** %MEMORY
  %loadMem_4924cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 17
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %R8D.i469 = bitcast %union.anon* %898 to i32*
  %899 = load i32, i32* %R8D.i469
  %900 = zext i32 %899 to i64
  %901 = load i64, i64* %PC.i468
  %902 = add i64 %901, 3
  store i64 %902, i64* %PC.i468
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %904 = bitcast %union.anon* %903 to i32*
  %905 = load i32, i32* %904, align 8
  %906 = zext i32 %905 to i64
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %908 = bitcast %union.anon* %907 to i32*
  %909 = load i32, i32* %908, align 8
  %910 = zext i32 %909 to i64
  %911 = shl i64 %900, 32
  %912 = ashr exact i64 %911, 32
  %913 = shl i64 %910, 32
  %914 = or i64 %913, %906
  %915 = sdiv i64 %914, %912
  %916 = shl i64 %915, 32
  %917 = ashr exact i64 %916, 32
  %918 = icmp eq i64 %915, %917
  br i1 %918, label %923, label %919

; <label>:919:                                    ; preds = %block_49245f
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %921 = load i64, i64* %920, align 8
  %922 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %921, %struct.Memory* %loadMem_4924cb)
  br label %routine_idivl__r8d.exit470

; <label>:923:                                    ; preds = %block_49245f
  %924 = srem i64 %914, %912
  %925 = getelementptr inbounds %union.anon, %union.anon* %903, i64 0, i32 0
  %926 = and i64 %915, 4294967295
  store i64 %926, i64* %925, align 8
  %927 = getelementptr inbounds %union.anon, %union.anon* %907, i64 0, i32 0
  %928 = and i64 %924, 4294967295
  store i64 %928, i64* %927, align 8
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %929, align 1
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %930, align 1
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %931, align 1
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %932, align 1
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %933, align 1
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %934, align 1
  br label %routine_idivl__r8d.exit470

routine_idivl__r8d.exit470:                       ; preds = %919, %923
  %935 = phi %struct.Memory* [ %922, %919 ], [ %loadMem_4924cb, %923 ]
  store %struct.Memory* %935, %struct.Memory** %MEMORY
  %loadMem_4924ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 33
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 1
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %EAX.i466 = bitcast %union.anon* %941 to i32*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 9
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RSI.i467 = bitcast %union.anon* %944 to i64*
  %945 = load i32, i32* %EAX.i466
  %946 = zext i32 %945 to i64
  %947 = load i64, i64* %PC.i465
  %948 = add i64 %947, 3
  store i64 %948, i64* %PC.i465
  %949 = shl i64 %946, 32
  %950 = ashr exact i64 %949, 32
  store i64 %950, i64* %RSI.i467, align 8
  store %struct.Memory* %loadMem_4924ce, %struct.Memory** %MEMORY
  %loadMem_4924d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 9
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RSI.i464 = bitcast %union.anon* %956 to i64*
  %957 = load i64, i64* %RSI.i464
  %958 = load i64, i64* %PC.i463
  %959 = add i64 %958, 4
  store i64 %959, i64* %PC.i463
  %960 = sext i64 %957 to i128
  %961 = and i128 %960, -18446744073709551616
  %962 = zext i64 %957 to i128
  %963 = or i128 %961, %962
  %964 = mul i128 19, %963
  %965 = trunc i128 %964 to i64
  store i64 %965, i64* %RSI.i464, align 8
  %966 = sext i64 %965 to i128
  %967 = icmp ne i128 %966, %964
  %968 = zext i1 %967 to i8
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %968, i8* %969, align 1
  %970 = trunc i128 %964 to i32
  %971 = and i32 %970, 255
  %972 = call i32 @llvm.ctpop.i32(i32 %971)
  %973 = trunc i32 %972 to i8
  %974 = and i8 %973, 1
  %975 = xor i8 %974, 1
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %975, i8* %976, align 1
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %977, align 1
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %978, align 1
  %979 = lshr i64 %965, 63
  %980 = trunc i64 %979 to i8
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %980, i8* %981, align 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %968, i8* %982, align 1
  store %struct.Memory* %loadMem_4924d1, %struct.Memory** %MEMORY
  %loadMem_4924d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 5
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 9
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RSI.i462 = bitcast %union.anon* %991 to i64*
  %992 = load i64, i64* %RCX.i461
  %993 = load i64, i64* %RSI.i462
  %994 = load i64, i64* %PC.i460
  %995 = add i64 %994, 3
  store i64 %995, i64* %PC.i460
  %996 = add i64 %993, %992
  store i64 %996, i64* %RCX.i461, align 8
  %997 = icmp ult i64 %996, %992
  %998 = icmp ult i64 %996, %993
  %999 = or i1 %997, %998
  %1000 = zext i1 %999 to i8
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1000, i8* %1001, align 1
  %1002 = trunc i64 %996 to i32
  %1003 = and i32 %1002, 255
  %1004 = call i32 @llvm.ctpop.i32(i32 %1003)
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1007, i8* %1008, align 1
  %1009 = xor i64 %993, %992
  %1010 = xor i64 %1009, %996
  %1011 = lshr i64 %1010, 4
  %1012 = trunc i64 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1013, i8* %1014, align 1
  %1015 = icmp eq i64 %996, 0
  %1016 = zext i1 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1016, i8* %1017, align 1
  %1018 = lshr i64 %996, 63
  %1019 = trunc i64 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1019, i8* %1020, align 1
  %1021 = lshr i64 %992, 63
  %1022 = lshr i64 %993, 63
  %1023 = xor i64 %1018, %1021
  %1024 = xor i64 %1018, %1022
  %1025 = add i64 %1023, %1024
  %1026 = icmp eq i64 %1025, 2
  %1027 = zext i1 %1026 to i8
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1027, i8* %1028, align 1
  store %struct.Memory* %loadMem_4924d5, %struct.Memory** %MEMORY
  %loadMem_4924d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 33
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 1
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 15
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %1037 to i64*
  %1038 = load i64, i64* %RBP.i459
  %1039 = sub i64 %1038, 4
  %1040 = load i64, i64* %PC.i457
  %1041 = add i64 %1040, 3
  store i64 %1041, i64* %PC.i457
  %1042 = inttoptr i64 %1039 to i32*
  %1043 = load i32, i32* %1042
  %1044 = zext i32 %1043 to i64
  store i64 %1044, i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_4924d8, %struct.Memory** %MEMORY
  %loadMem_4924db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 33
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %1047 to i64*
  %1048 = load i64, i64* %PC.i456
  %1049 = add i64 %1048, 1
  store i64 %1049, i64* %PC.i456
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1052 = bitcast %union.anon* %1051 to i32*
  %1053 = load i32, i32* %1052, align 8
  %1054 = sext i32 %1053 to i64
  %1055 = lshr i64 %1054, 32
  store i64 %1055, i64* %1050, align 8
  store %struct.Memory* %loadMem_4924db, %struct.Memory** %MEMORY
  %loadMem_4924dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 17
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %R8D.i452 = bitcast %union.anon* %1061 to i32*
  %1062 = load i32, i32* %R8D.i452
  %1063 = zext i32 %1062 to i64
  %1064 = load i64, i64* %PC.i451
  %1065 = add i64 %1064, 3
  store i64 %1065, i64* %PC.i451
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1067 = bitcast %union.anon* %1066 to i32*
  %1068 = load i32, i32* %1067, align 8
  %1069 = zext i32 %1068 to i64
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1071 = bitcast %union.anon* %1070 to i32*
  %1072 = load i32, i32* %1071, align 8
  %1073 = zext i32 %1072 to i64
  %1074 = shl i64 %1063, 32
  %1075 = ashr exact i64 %1074, 32
  %1076 = shl i64 %1073, 32
  %1077 = or i64 %1076, %1069
  %1078 = sdiv i64 %1077, %1075
  %1079 = shl i64 %1078, 32
  %1080 = ashr exact i64 %1079, 32
  %1081 = icmp eq i64 %1078, %1080
  br i1 %1081, label %1086, label %1082

; <label>:1082:                                   ; preds = %routine_idivl__r8d.exit470
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1084 = load i64, i64* %1083, align 8
  %1085 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1084, %struct.Memory* %loadMem_4924dc)
  br label %routine_idivl__r8d.exit453

; <label>:1086:                                   ; preds = %routine_idivl__r8d.exit470
  %1087 = srem i64 %1077, %1075
  %1088 = getelementptr inbounds %union.anon, %union.anon* %1066, i64 0, i32 0
  %1089 = and i64 %1078, 4294967295
  store i64 %1089, i64* %1088, align 8
  %1090 = getelementptr inbounds %union.anon, %union.anon* %1070, i64 0, i32 0
  %1091 = and i64 %1087, 4294967295
  store i64 %1091, i64* %1090, align 8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1092, align 1
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1093, align 1
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1094, align 1
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1095, align 1
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1096, align 1
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1097, align 1
  br label %routine_idivl__r8d.exit453

routine_idivl__r8d.exit453:                       ; preds = %1082, %1086
  %1098 = phi %struct.Memory* [ %1085, %1082 ], [ %loadMem_4924dc, %1086 ]
  store %struct.Memory* %1098, %struct.Memory** %MEMORY
  %loadMem_4924df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 33
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 1
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %EAX.i449 = bitcast %union.anon* %1104 to i32*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 9
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RSI.i450 = bitcast %union.anon* %1107 to i64*
  %1108 = load i32, i32* %EAX.i449
  %1109 = zext i32 %1108 to i64
  %1110 = load i64, i64* %PC.i448
  %1111 = add i64 %1110, 3
  store i64 %1111, i64* %PC.i448
  %1112 = shl i64 %1109, 32
  %1113 = ashr exact i64 %1112, 32
  store i64 %1113, i64* %RSI.i450, align 8
  store %struct.Memory* %loadMem_4924df, %struct.Memory** %MEMORY
  %loadMem_4924e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 33
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 5
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 9
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RSI.i447 = bitcast %union.anon* %1122 to i64*
  %1123 = load i64, i64* %RCX.i446
  %1124 = load i64, i64* %RSI.i447
  %1125 = add i64 %1124, %1123
  %1126 = load i64, i64* %PC.i445
  %1127 = add i64 %1126, 4
  store i64 %1127, i64* %PC.i445
  %1128 = inttoptr i64 %1125 to i8*
  store i8 43, i8* %1128
  store %struct.Memory* %loadMem_4924e2, %struct.Memory** %MEMORY
  %loadMem_4924e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 33
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1131 to i64*
  %1132 = load i64, i64* %PC.i444
  %1133 = add i64 %1132, 650
  %1134 = load i64, i64* %PC.i444
  %1135 = add i64 %1134, 5
  store i64 %1135, i64* %PC.i444
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1133, i64* %1136, align 8
  store %struct.Memory* %loadMem_4924e6, %struct.Memory** %MEMORY
  br label %block_.L_492770

block_.L_4924eb:                                  ; preds = %block_.L_492430
  %loadMem_4924eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 33
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 1
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %1142 to i64*
  %1143 = load i64, i64* %PC.i442
  %1144 = add i64 %1143, 5
  store i64 %1144, i64* %PC.i442
  store i64 2, i64* %RAX.i443, align 8
  store %struct.Memory* %loadMem_4924eb, %struct.Memory** %MEMORY
  %loadMem_4924f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 33
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 5
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 15
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %1153 to i64*
  %1154 = load i64, i64* %RBP.i441
  %1155 = sub i64 %1154, 4
  %1156 = load i64, i64* %PC.i439
  %1157 = add i64 %1156, 3
  store i64 %1157, i64* %PC.i439
  %1158 = inttoptr i64 %1155 to i32*
  %1159 = load i32, i32* %1158
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RCX.i440, align 8
  store %struct.Memory* %loadMem_4924f0, %struct.Memory** %MEMORY
  %loadMem_4924f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 33
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1163 to i64*
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 1
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %EAX.i437 = bitcast %union.anon* %1166 to i32*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 15
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %RBP.i438
  %1171 = sub i64 %1170, 12
  %1172 = load i32, i32* %EAX.i437
  %1173 = zext i32 %1172 to i64
  %1174 = load i64, i64* %PC.i436
  %1175 = add i64 %1174, 3
  store i64 %1175, i64* %PC.i436
  %1176 = inttoptr i64 %1171 to i32*
  store i32 %1172, i32* %1176
  store %struct.Memory* %loadMem_4924f3, %struct.Memory** %MEMORY
  %loadMem_4924f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 5
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %ECX.i434 = bitcast %union.anon* %1182 to i32*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 1
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %1185 to i64*
  %1186 = load i32, i32* %ECX.i434
  %1187 = zext i32 %1186 to i64
  %1188 = load i64, i64* %PC.i433
  %1189 = add i64 %1188, 2
  store i64 %1189, i64* %PC.i433
  %1190 = and i64 %1187, 4294967295
  store i64 %1190, i64* %RAX.i435, align 8
  store %struct.Memory* %loadMem_4924f6, %struct.Memory** %MEMORY
  %loadMem_4924f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 33
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %PC.i432
  %1195 = add i64 %1194, 1
  store i64 %1195, i64* %PC.i432
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1198 = bitcast %union.anon* %1197 to i32*
  %1199 = load i32, i32* %1198, align 8
  %1200 = sext i32 %1199 to i64
  %1201 = lshr i64 %1200, 32
  store i64 %1201, i64* %1196, align 8
  store %struct.Memory* %loadMem_4924f8, %struct.Memory** %MEMORY
  %loadMem_4924f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 33
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1204 to i64*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 5
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %1207 to i64*
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 15
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %1210 to i64*
  %1211 = load i64, i64* %RBP.i431
  %1212 = sub i64 %1211, 12
  %1213 = load i64, i64* %PC.i429
  %1214 = add i64 %1213, 3
  store i64 %1214, i64* %PC.i429
  %1215 = inttoptr i64 %1212 to i32*
  %1216 = load i32, i32* %1215
  %1217 = zext i32 %1216 to i64
  store i64 %1217, i64* %RCX.i430, align 8
  store %struct.Memory* %loadMem_4924f9, %struct.Memory** %MEMORY
  %loadMem_4924fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 5
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %ECX.i426 = bitcast %union.anon* %1223 to i32*
  %1224 = load i32, i32* %ECX.i426
  %1225 = zext i32 %1224 to i64
  %1226 = load i64, i64* %PC.i425
  %1227 = add i64 %1226, 2
  store i64 %1227, i64* %PC.i425
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1229 = bitcast %union.anon* %1228 to i32*
  %1230 = load i32, i32* %1229, align 8
  %1231 = zext i32 %1230 to i64
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1233 = bitcast %union.anon* %1232 to i32*
  %1234 = load i32, i32* %1233, align 8
  %1235 = zext i32 %1234 to i64
  %1236 = shl i64 %1225, 32
  %1237 = ashr exact i64 %1236, 32
  %1238 = shl i64 %1235, 32
  %1239 = or i64 %1238, %1231
  %1240 = sdiv i64 %1239, %1237
  %1241 = shl i64 %1240, 32
  %1242 = ashr exact i64 %1241, 32
  %1243 = icmp eq i64 %1240, %1242
  br i1 %1243, label %1248, label %1244

; <label>:1244:                                   ; preds = %block_.L_4924eb
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1246 = load i64, i64* %1245, align 8
  %1247 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1246, %struct.Memory* %loadMem_4924fc)
  br label %routine_idivl__ecx.exit

; <label>:1248:                                   ; preds = %block_.L_4924eb
  %1249 = srem i64 %1239, %1237
  %1250 = getelementptr inbounds %union.anon, %union.anon* %1228, i64 0, i32 0
  %1251 = and i64 %1240, 4294967295
  store i64 %1251, i64* %1250, align 8
  %1252 = getelementptr inbounds %union.anon, %union.anon* %1232, i64 0, i32 0
  %1253 = and i64 %1249, 4294967295
  store i64 %1253, i64* %1252, align 8
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1254, align 1
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1255, align 1
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1256, align 1
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1257, align 1
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1258, align 1
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1259, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1244, %1248
  %1260 = phi %struct.Memory* [ %1247, %1244 ], [ %loadMem_4924fc, %1248 ]
  store %struct.Memory* %1260, %struct.Memory** %MEMORY
  %loadMem_4924fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 33
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 7
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %EDX.i424 = bitcast %union.anon* %1266 to i32*
  %1267 = load i32, i32* %EDX.i424
  %1268 = zext i32 %1267 to i64
  %1269 = load i64, i64* %PC.i423
  %1270 = add i64 %1269, 3
  store i64 %1270, i64* %PC.i423
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1271, align 1
  %1272 = and i32 %1267, 255
  %1273 = call i32 @llvm.ctpop.i32(i32 %1272)
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  %1276 = xor i8 %1275, 1
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1276, i8* %1277, align 1
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1278, align 1
  %1279 = icmp eq i32 %1267, 0
  %1280 = zext i1 %1279 to i8
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1280, i8* %1281, align 1
  %1282 = lshr i32 %1267, 31
  %1283 = trunc i32 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1283, i8* %1284, align 1
  %1285 = lshr i32 %1267, 31
  %1286 = xor i32 %1282, %1285
  %1287 = add i32 %1286, %1285
  %1288 = icmp eq i32 %1287, 2
  %1289 = zext i1 %1288 to i8
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1289, i8* %1290, align 1
  store %struct.Memory* %loadMem_4924fe, %struct.Memory** %MEMORY
  %loadMem_492501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1293 to i64*
  %1294 = load i64, i64* %PC.i422
  %1295 = add i64 %1294, 210
  %1296 = load i64, i64* %PC.i422
  %1297 = add i64 %1296, 6
  %1298 = load i64, i64* %PC.i422
  %1299 = add i64 %1298, 6
  store i64 %1299, i64* %PC.i422
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1301 = load i8, i8* %1300, align 1
  %1302 = icmp eq i8 %1301, 0
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %BRANCH_TAKEN, align 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1305 = select i1 %1302, i64 %1295, i64 %1297
  store i64 %1305, i64* %1304, align 8
  store %struct.Memory* %loadMem_492501, %struct.Memory** %MEMORY
  %loadBr_492501 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_492501 = icmp eq i8 %loadBr_492501, 1
  br i1 %cmpBr_492501, label %block_.L_4925d3, label %block_492507

block_492507:                                     ; preds = %routine_idivl__ecx.exit
  %loadMem_492507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 15
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %1311 to i64*
  %1312 = load i64, i64* %RBP.i421
  %1313 = sub i64 %1312, 4
  %1314 = load i64, i64* %PC.i420
  %1315 = add i64 %1314, 4
  store i64 %1315, i64* %PC.i420
  %1316 = inttoptr i64 %1313 to i32*
  %1317 = load i32, i32* %1316
  %1318 = sub i32 %1317, 2
  %1319 = icmp ult i32 %1317, 2
  %1320 = zext i1 %1319 to i8
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1320, i8* %1321, align 1
  %1322 = and i32 %1318, 255
  %1323 = call i32 @llvm.ctpop.i32(i32 %1322)
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1326, i8* %1327, align 1
  %1328 = xor i32 %1317, 2
  %1329 = xor i32 %1328, %1318
  %1330 = lshr i32 %1329, 4
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1332, i8* %1333, align 1
  %1334 = icmp eq i32 %1318, 0
  %1335 = zext i1 %1334 to i8
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1335, i8* %1336, align 1
  %1337 = lshr i32 %1318, 31
  %1338 = trunc i32 %1337 to i8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1338, i8* %1339, align 1
  %1340 = lshr i32 %1317, 31
  %1341 = xor i32 %1337, %1340
  %1342 = add i32 %1341, %1340
  %1343 = icmp eq i32 %1342, 2
  %1344 = zext i1 %1343 to i8
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1344, i8* %1345, align 1
  store %struct.Memory* %loadMem_492507, %struct.Memory** %MEMORY
  %loadMem_49250b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1348 to i64*
  %1349 = load i64, i64* %PC.i419
  %1350 = add i64 %1349, 108
  %1351 = load i64, i64* %PC.i419
  %1352 = add i64 %1351, 6
  %1353 = load i64, i64* %PC.i419
  %1354 = add i64 %1353, 6
  store i64 %1354, i64* %PC.i419
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1356 = load i8, i8* %1355, align 1
  %1357 = icmp ne i8 %1356, 0
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1359 = load i8, i8* %1358, align 1
  %1360 = icmp ne i8 %1359, 0
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1362 = load i8, i8* %1361, align 1
  %1363 = icmp ne i8 %1362, 0
  %1364 = xor i1 %1360, %1363
  %1365 = or i1 %1357, %1364
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %BRANCH_TAKEN, align 1
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1368 = select i1 %1365, i64 %1350, i64 %1352
  store i64 %1368, i64* %1367, align 8
  store %struct.Memory* %loadMem_49250b, %struct.Memory** %MEMORY
  %loadBr_49250b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49250b = icmp eq i8 %loadBr_49250b, 1
  br i1 %cmpBr_49250b, label %block_.L_492577, label %block_492511

block_492511:                                     ; preds = %block_492507
  %loadMem_492511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 33
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1371 to i64*
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 15
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %1374 to i64*
  %1375 = load i64, i64* %RBP.i418
  %1376 = sub i64 %1375, 4
  %1377 = load i64, i64* %PC.i417
  %1378 = add i64 %1377, 4
  store i64 %1378, i64* %PC.i417
  %1379 = inttoptr i64 %1376 to i32*
  %1380 = load i32, i32* %1379
  %1381 = sub i32 %1380, 12
  %1382 = icmp ult i32 %1380, 12
  %1383 = zext i1 %1382 to i8
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1383, i8* %1384, align 1
  %1385 = and i32 %1381, 255
  %1386 = call i32 @llvm.ctpop.i32(i32 %1385)
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  %1389 = xor i8 %1388, 1
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1389, i8* %1390, align 1
  %1391 = xor i32 %1380, 12
  %1392 = xor i32 %1391, %1381
  %1393 = lshr i32 %1392, 4
  %1394 = trunc i32 %1393 to i8
  %1395 = and i8 %1394, 1
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1395, i8* %1396, align 1
  %1397 = icmp eq i32 %1381, 0
  %1398 = zext i1 %1397 to i8
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1398, i8* %1399, align 1
  %1400 = lshr i32 %1381, 31
  %1401 = trunc i32 %1400 to i8
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1401, i8* %1402, align 1
  %1403 = lshr i32 %1380, 31
  %1404 = xor i32 %1400, %1403
  %1405 = add i32 %1404, %1403
  %1406 = icmp eq i32 %1405, 2
  %1407 = zext i1 %1406 to i8
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1407, i8* %1408, align 1
  store %struct.Memory* %loadMem_492511, %struct.Memory** %MEMORY
  %loadMem_492515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1411 to i64*
  %1412 = load i64, i64* %PC.i416
  %1413 = add i64 %1412, 98
  %1414 = load i64, i64* %PC.i416
  %1415 = add i64 %1414, 6
  %1416 = load i64, i64* %PC.i416
  %1417 = add i64 %1416, 6
  store i64 %1417, i64* %PC.i416
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1419 = load i8, i8* %1418, align 1
  %1420 = icmp ne i8 %1419, 0
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1422 = load i8, i8* %1421, align 1
  %1423 = icmp ne i8 %1422, 0
  %1424 = xor i1 %1420, %1423
  %1425 = xor i1 %1424, true
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %BRANCH_TAKEN, align 1
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1428 = select i1 %1424, i64 %1415, i64 %1413
  store i64 %1428, i64* %1427, align 8
  store %struct.Memory* %loadMem_492515, %struct.Memory** %MEMORY
  %loadBr_492515 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_492515 = icmp eq i8 %loadBr_492515, 1
  br i1 %cmpBr_492515, label %block_.L_492577, label %block_49251b

block_49251b:                                     ; preds = %block_492511
  %loadMem_49251b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 1
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %1434 to i64*
  %1435 = load i64, i64* %PC.i414
  %1436 = add i64 %1435, 10
  store i64 %1436, i64* %PC.i414
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RAX.i415, align 8
  store %struct.Memory* %loadMem_49251b, %struct.Memory** %MEMORY
  %loadMem_492525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %PC.i413
  %1441 = add i64 %1440, 8
  store i64 %1441, i64* %PC.i413
  store i8 43, i8* getelementptr inbounds (%G_0xaf2788_type, %G_0xaf2788_type* @G_0xaf2788, i32 0, i32 0, i32 0)
  store %struct.Memory* %loadMem_492525, %struct.Memory** %MEMORY
  %loadMem_49252d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 33
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %1444 to i64*
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 5
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %RCX.i411 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 15
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %1450 to i64*
  %1451 = load i64, i64* %RBP.i412
  %1452 = sub i64 %1451, 4
  %1453 = load i64, i64* %PC.i410
  %1454 = add i64 %1453, 3
  store i64 %1454, i64* %PC.i410
  %1455 = inttoptr i64 %1452 to i32*
  %1456 = load i32, i32* %1455
  %1457 = zext i32 %1456 to i64
  store i64 %1457, i64* %RCX.i411, align 8
  store %struct.Memory* %loadMem_49252d, %struct.Memory** %MEMORY
  %loadMem_492530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 33
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 5
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %RCX.i409 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %RCX.i409
  %1465 = load i64, i64* %PC.i408
  %1466 = add i64 %1465, 3
  store i64 %1466, i64* %PC.i408
  %1467 = trunc i64 %1464 to i32
  %1468 = sub i32 %1467, 3
  %1469 = zext i32 %1468 to i64
  store i64 %1469, i64* %RCX.i409, align 8
  %1470 = icmp ult i32 %1467, 3
  %1471 = zext i1 %1470 to i8
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1471, i8* %1472, align 1
  %1473 = and i32 %1468, 255
  %1474 = call i32 @llvm.ctpop.i32(i32 %1473)
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = xor i8 %1476, 1
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1477, i8* %1478, align 1
  %1479 = xor i64 3, %1464
  %1480 = trunc i64 %1479 to i32
  %1481 = xor i32 %1480, %1468
  %1482 = lshr i32 %1481, 4
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1484, i8* %1485, align 1
  %1486 = icmp eq i32 %1468, 0
  %1487 = zext i1 %1486 to i8
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1487, i8* %1488, align 1
  %1489 = lshr i32 %1468, 31
  %1490 = trunc i32 %1489 to i8
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1490, i8* %1491, align 1
  %1492 = lshr i32 %1467, 31
  %1493 = xor i32 %1489, %1492
  %1494 = add i32 %1493, %1492
  %1495 = icmp eq i32 %1494, 2
  %1496 = zext i1 %1495 to i8
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1496, i8* %1497, align 1
  store %struct.Memory* %loadMem_492530, %struct.Memory** %MEMORY
  %loadMem_492533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 33
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 5
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %ECX.i406 = bitcast %union.anon* %1503 to i32*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 7
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %RDX.i407 = bitcast %union.anon* %1506 to i64*
  %1507 = load i32, i32* %ECX.i406
  %1508 = zext i32 %1507 to i64
  %1509 = load i64, i64* %PC.i405
  %1510 = add i64 %1509, 3
  store i64 %1510, i64* %PC.i405
  %1511 = shl i64 %1508, 32
  %1512 = ashr exact i64 %1511, 32
  store i64 %1512, i64* %RDX.i407, align 8
  store %struct.Memory* %loadMem_492533, %struct.Memory** %MEMORY
  %loadMem_492536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 7
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RDX.i404
  %1520 = load i64, i64* %PC.i403
  %1521 = add i64 %1520, 4
  store i64 %1521, i64* %PC.i403
  %1522 = sext i64 %1519 to i128
  %1523 = and i128 %1522, -18446744073709551616
  %1524 = zext i64 %1519 to i128
  %1525 = or i128 %1523, %1524
  %1526 = mul i128 19, %1525
  %1527 = trunc i128 %1526 to i64
  store i64 %1527, i64* %RDX.i404, align 8
  %1528 = sext i64 %1527 to i128
  %1529 = icmp ne i128 %1528, %1526
  %1530 = zext i1 %1529 to i8
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1530, i8* %1531, align 1
  %1532 = trunc i128 %1526 to i32
  %1533 = and i32 %1532, 255
  %1534 = call i32 @llvm.ctpop.i32(i32 %1533)
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  %1537 = xor i8 %1536, 1
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1537, i8* %1538, align 1
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1539, align 1
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1540, align 1
  %1541 = lshr i64 %1527, 63
  %1542 = trunc i64 %1541 to i8
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1542, i8* %1543, align 1
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1530, i8* %1544, align 1
  store %struct.Memory* %loadMem_492536, %struct.Memory** %MEMORY
  %loadMem_49253a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 1
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 9
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RSI.i402 = bitcast %union.anon* %1553 to i64*
  %1554 = load i64, i64* %RAX.i401
  %1555 = load i64, i64* %PC.i400
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %PC.i400
  store i64 %1554, i64* %RSI.i402, align 8
  store %struct.Memory* %loadMem_49253a, %struct.Memory** %MEMORY
  %loadMem_49253d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 7
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 9
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %RSI.i399 = bitcast %union.anon* %1565 to i64*
  %1566 = load i64, i64* %RSI.i399
  %1567 = load i64, i64* %RDX.i398
  %1568 = load i64, i64* %PC.i397
  %1569 = add i64 %1568, 3
  store i64 %1569, i64* %PC.i397
  %1570 = add i64 %1567, %1566
  store i64 %1570, i64* %RSI.i399, align 8
  %1571 = icmp ult i64 %1570, %1566
  %1572 = icmp ult i64 %1570, %1567
  %1573 = or i1 %1571, %1572
  %1574 = zext i1 %1573 to i8
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1574, i8* %1575, align 1
  %1576 = trunc i64 %1570 to i32
  %1577 = and i32 %1576, 255
  %1578 = call i32 @llvm.ctpop.i32(i32 %1577)
  %1579 = trunc i32 %1578 to i8
  %1580 = and i8 %1579, 1
  %1581 = xor i8 %1580, 1
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1581, i8* %1582, align 1
  %1583 = xor i64 %1567, %1566
  %1584 = xor i64 %1583, %1570
  %1585 = lshr i64 %1584, 4
  %1586 = trunc i64 %1585 to i8
  %1587 = and i8 %1586, 1
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1587, i8* %1588, align 1
  %1589 = icmp eq i64 %1570, 0
  %1590 = zext i1 %1589 to i8
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1590, i8* %1591, align 1
  %1592 = lshr i64 %1570, 63
  %1593 = trunc i64 %1592 to i8
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1593, i8* %1594, align 1
  %1595 = lshr i64 %1566, 63
  %1596 = lshr i64 %1567, 63
  %1597 = xor i64 %1592, %1595
  %1598 = xor i64 %1592, %1596
  %1599 = add i64 %1597, %1598
  %1600 = icmp eq i64 %1599, 2
  %1601 = zext i1 %1600 to i8
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1601, i8* %1602, align 1
  store %struct.Memory* %loadMem_49253d, %struct.Memory** %MEMORY
  %loadMem_492540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 33
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 9
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %RSI.i396 = bitcast %union.anon* %1608 to i64*
  %1609 = load i64, i64* %RSI.i396
  %1610 = add i64 %1609, 2
  %1611 = load i64, i64* %PC.i395
  %1612 = add i64 %1611, 4
  store i64 %1612, i64* %PC.i395
  %1613 = inttoptr i64 %1610 to i8*
  store i8 43, i8* %1613
  store %struct.Memory* %loadMem_492540, %struct.Memory** %MEMORY
  %loadMem_492544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 5
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 15
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %1622 to i64*
  %1623 = load i64, i64* %RBP.i394
  %1624 = sub i64 %1623, 4
  %1625 = load i64, i64* %PC.i392
  %1626 = add i64 %1625, 3
  store i64 %1626, i64* %PC.i392
  %1627 = inttoptr i64 %1624 to i32*
  %1628 = load i32, i32* %1627
  %1629 = zext i32 %1628 to i64
  store i64 %1629, i64* %RCX.i393, align 8
  store %struct.Memory* %loadMem_492544, %struct.Memory** %MEMORY
  %loadMem_492547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 5
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %1635 to i64*
  %1636 = load i64, i64* %RCX.i391
  %1637 = load i64, i64* %PC.i390
  %1638 = add i64 %1637, 3
  store i64 %1638, i64* %PC.i390
  %1639 = trunc i64 %1636 to i32
  %1640 = sub i32 %1639, 3
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RCX.i391, align 8
  %1642 = icmp ult i32 %1639, 3
  %1643 = zext i1 %1642 to i8
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1643, i8* %1644, align 1
  %1645 = and i32 %1640, 255
  %1646 = call i32 @llvm.ctpop.i32(i32 %1645)
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  %1649 = xor i8 %1648, 1
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1649, i8* %1650, align 1
  %1651 = xor i64 3, %1636
  %1652 = trunc i64 %1651 to i32
  %1653 = xor i32 %1652, %1640
  %1654 = lshr i32 %1653, 4
  %1655 = trunc i32 %1654 to i8
  %1656 = and i8 %1655, 1
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1656, i8* %1657, align 1
  %1658 = icmp eq i32 %1640, 0
  %1659 = zext i1 %1658 to i8
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1659, i8* %1660, align 1
  %1661 = lshr i32 %1640, 31
  %1662 = trunc i32 %1661 to i8
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1662, i8* %1663, align 1
  %1664 = lshr i32 %1639, 31
  %1665 = xor i32 %1661, %1664
  %1666 = add i32 %1665, %1664
  %1667 = icmp eq i32 %1666, 2
  %1668 = zext i1 %1667 to i8
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1668, i8* %1669, align 1
  store %struct.Memory* %loadMem_492547, %struct.Memory** %MEMORY
  %loadMem_49254a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 33
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1672 to i64*
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 5
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %ECX.i388 = bitcast %union.anon* %1675 to i32*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 7
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %RDX.i389 = bitcast %union.anon* %1678 to i64*
  %1679 = load i32, i32* %ECX.i388
  %1680 = zext i32 %1679 to i64
  %1681 = load i64, i64* %PC.i387
  %1682 = add i64 %1681, 3
  store i64 %1682, i64* %PC.i387
  %1683 = shl i64 %1680, 32
  %1684 = ashr exact i64 %1683, 32
  store i64 %1684, i64* %RDX.i389, align 8
  store %struct.Memory* %loadMem_49254a, %struct.Memory** %MEMORY
  %loadMem_49254d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 33
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %1687 to i64*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 7
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %RDX.i386 = bitcast %union.anon* %1690 to i64*
  %1691 = load i64, i64* %RDX.i386
  %1692 = add i64 %1691, 11478918
  %1693 = load i64, i64* %PC.i385
  %1694 = add i64 %1693, 8
  store i64 %1694, i64* %PC.i385
  %1695 = inttoptr i64 %1692 to i8*
  store i8 43, i8* %1695
  store %struct.Memory* %loadMem_49254d, %struct.Memory** %MEMORY
  %loadMem_492555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 5
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %1701 to i64*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 15
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %RBP.i384
  %1706 = sub i64 %1705, 4
  %1707 = load i64, i64* %PC.i382
  %1708 = add i64 %1707, 3
  store i64 %1708, i64* %PC.i382
  %1709 = inttoptr i64 %1706 to i32*
  %1710 = load i32, i32* %1709
  %1711 = zext i32 %1710 to i64
  store i64 %1711, i64* %RCX.i383, align 8
  store %struct.Memory* %loadMem_492555, %struct.Memory** %MEMORY
  %loadMem_492558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 5
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %1717 to i64*
  %1718 = load i64, i64* %RCX.i381
  %1719 = load i64, i64* %PC.i380
  %1720 = add i64 %1719, 3
  store i64 %1720, i64* %PC.i380
  %1721 = trunc i64 %1718 to i32
  %1722 = sub i32 %1721, 3
  %1723 = zext i32 %1722 to i64
  store i64 %1723, i64* %RCX.i381, align 8
  %1724 = icmp ult i32 %1721, 3
  %1725 = zext i1 %1724 to i8
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1725, i8* %1726, align 1
  %1727 = and i32 %1722, 255
  %1728 = call i32 @llvm.ctpop.i32(i32 %1727)
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = xor i8 %1730, 1
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1731, i8* %1732, align 1
  %1733 = xor i64 3, %1718
  %1734 = trunc i64 %1733 to i32
  %1735 = xor i32 %1734, %1722
  %1736 = lshr i32 %1735, 4
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1738, i8* %1739, align 1
  %1740 = icmp eq i32 %1722, 0
  %1741 = zext i1 %1740 to i8
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1741, i8* %1742, align 1
  %1743 = lshr i32 %1722, 31
  %1744 = trunc i32 %1743 to i8
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1744, i8* %1745, align 1
  %1746 = lshr i32 %1721, 31
  %1747 = xor i32 %1743, %1746
  %1748 = add i32 %1747, %1746
  %1749 = icmp eq i32 %1748, 2
  %1750 = zext i1 %1749 to i8
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1750, i8* %1751, align 1
  store %struct.Memory* %loadMem_492558, %struct.Memory** %MEMORY
  %loadMem_49255b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 33
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %1754 to i64*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 5
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %ECX.i378 = bitcast %union.anon* %1757 to i32*
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 7
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %RDX.i379 = bitcast %union.anon* %1760 to i64*
  %1761 = load i32, i32* %ECX.i378
  %1762 = zext i32 %1761 to i64
  %1763 = load i64, i64* %PC.i377
  %1764 = add i64 %1763, 3
  store i64 %1764, i64* %PC.i377
  %1765 = shl i64 %1762, 32
  %1766 = ashr exact i64 %1765, 32
  store i64 %1766, i64* %RDX.i379, align 8
  store %struct.Memory* %loadMem_49255b, %struct.Memory** %MEMORY
  %loadMem_49255e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 33
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1769 to i64*
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 7
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %RDX.i376 = bitcast %union.anon* %1772 to i64*
  %1773 = load i64, i64* %RDX.i376
  %1774 = load i64, i64* %PC.i375
  %1775 = add i64 %1774, 4
  store i64 %1775, i64* %PC.i375
  %1776 = sext i64 %1773 to i128
  %1777 = and i128 %1776, -18446744073709551616
  %1778 = zext i64 %1773 to i128
  %1779 = or i128 %1777, %1778
  %1780 = mul i128 19, %1779
  %1781 = trunc i128 %1780 to i64
  store i64 %1781, i64* %RDX.i376, align 8
  %1782 = sext i64 %1781 to i128
  %1783 = icmp ne i128 %1782, %1780
  %1784 = zext i1 %1783 to i8
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1784, i8* %1785, align 1
  %1786 = trunc i128 %1780 to i32
  %1787 = and i32 %1786, 255
  %1788 = call i32 @llvm.ctpop.i32(i32 %1787)
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  %1791 = xor i8 %1790, 1
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1791, i8* %1792, align 1
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1793, align 1
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1794, align 1
  %1795 = lshr i64 %1781, 63
  %1796 = trunc i64 %1795 to i8
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1796, i8* %1797, align 1
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1784, i8* %1798, align 1
  store %struct.Memory* %loadMem_49255e, %struct.Memory** %MEMORY
  %loadMem_492562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 33
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 1
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %1804 to i64*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 7
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RDX.i374 = bitcast %union.anon* %1807 to i64*
  %1808 = load i64, i64* %RAX.i373
  %1809 = load i64, i64* %RDX.i374
  %1810 = load i64, i64* %PC.i372
  %1811 = add i64 %1810, 3
  store i64 %1811, i64* %PC.i372
  %1812 = add i64 %1809, %1808
  store i64 %1812, i64* %RAX.i373, align 8
  %1813 = icmp ult i64 %1812, %1808
  %1814 = icmp ult i64 %1812, %1809
  %1815 = or i1 %1813, %1814
  %1816 = zext i1 %1815 to i8
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1816, i8* %1817, align 1
  %1818 = trunc i64 %1812 to i32
  %1819 = and i32 %1818, 255
  %1820 = call i32 @llvm.ctpop.i32(i32 %1819)
  %1821 = trunc i32 %1820 to i8
  %1822 = and i8 %1821, 1
  %1823 = xor i8 %1822, 1
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1823, i8* %1824, align 1
  %1825 = xor i64 %1809, %1808
  %1826 = xor i64 %1825, %1812
  %1827 = lshr i64 %1826, 4
  %1828 = trunc i64 %1827 to i8
  %1829 = and i8 %1828, 1
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1829, i8* %1830, align 1
  %1831 = icmp eq i64 %1812, 0
  %1832 = zext i1 %1831 to i8
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1832, i8* %1833, align 1
  %1834 = lshr i64 %1812, 63
  %1835 = trunc i64 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1835, i8* %1836, align 1
  %1837 = lshr i64 %1808, 63
  %1838 = lshr i64 %1809, 63
  %1839 = xor i64 %1834, %1837
  %1840 = xor i64 %1834, %1838
  %1841 = add i64 %1839, %1840
  %1842 = icmp eq i64 %1841, 2
  %1843 = zext i1 %1842 to i8
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1843, i8* %1844, align 1
  store %struct.Memory* %loadMem_492562, %struct.Memory** %MEMORY
  %loadMem_492565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 33
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 5
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 15
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %1853 to i64*
  %1854 = load i64, i64* %RBP.i371
  %1855 = sub i64 %1854, 4
  %1856 = load i64, i64* %PC.i369
  %1857 = add i64 %1856, 3
  store i64 %1857, i64* %PC.i369
  %1858 = inttoptr i64 %1855 to i32*
  %1859 = load i32, i32* %1858
  %1860 = zext i32 %1859 to i64
  store i64 %1860, i64* %RCX.i370, align 8
  store %struct.Memory* %loadMem_492565, %struct.Memory** %MEMORY
  %loadMem_492568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 33
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1863 to i64*
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 5
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %1866 to i64*
  %1867 = load i64, i64* %RCX.i368
  %1868 = load i64, i64* %PC.i367
  %1869 = add i64 %1868, 3
  store i64 %1869, i64* %PC.i367
  %1870 = trunc i64 %1867 to i32
  %1871 = sub i32 %1870, 3
  %1872 = zext i32 %1871 to i64
  store i64 %1872, i64* %RCX.i368, align 8
  %1873 = icmp ult i32 %1870, 3
  %1874 = zext i1 %1873 to i8
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1874, i8* %1875, align 1
  %1876 = and i32 %1871, 255
  %1877 = call i32 @llvm.ctpop.i32(i32 %1876)
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  %1880 = xor i8 %1879, 1
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1880, i8* %1881, align 1
  %1882 = xor i64 3, %1867
  %1883 = trunc i64 %1882 to i32
  %1884 = xor i32 %1883, %1871
  %1885 = lshr i32 %1884, 4
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1887, i8* %1888, align 1
  %1889 = icmp eq i32 %1871, 0
  %1890 = zext i1 %1889 to i8
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1890, i8* %1891, align 1
  %1892 = lshr i32 %1871, 31
  %1893 = trunc i32 %1892 to i8
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1893, i8* %1894, align 1
  %1895 = lshr i32 %1870, 31
  %1896 = xor i32 %1892, %1895
  %1897 = add i32 %1896, %1895
  %1898 = icmp eq i32 %1897, 2
  %1899 = zext i1 %1898 to i8
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1899, i8* %1900, align 1
  store %struct.Memory* %loadMem_492568, %struct.Memory** %MEMORY
  %loadMem_49256b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 33
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1903 to i64*
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 5
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %ECX.i365 = bitcast %union.anon* %1906 to i32*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 7
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RDX.i366 = bitcast %union.anon* %1909 to i64*
  %1910 = load i32, i32* %ECX.i365
  %1911 = zext i32 %1910 to i64
  %1912 = load i64, i64* %PC.i364
  %1913 = add i64 %1912, 3
  store i64 %1913, i64* %PC.i364
  %1914 = shl i64 %1911, 32
  %1915 = ashr exact i64 %1914, 32
  store i64 %1915, i64* %RDX.i366, align 8
  store %struct.Memory* %loadMem_49256b, %struct.Memory** %MEMORY
  %loadMem_49256e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 33
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 1
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %1921 to i64*
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 7
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %RDX.i363 = bitcast %union.anon* %1924 to i64*
  %1925 = load i64, i64* %RAX.i362
  %1926 = load i64, i64* %RDX.i363
  %1927 = add i64 %1926, %1925
  %1928 = load i64, i64* %PC.i361
  %1929 = add i64 %1928, 4
  store i64 %1929, i64* %PC.i361
  %1930 = inttoptr i64 %1927 to i8*
  store i8 43, i8* %1930
  store %struct.Memory* %loadMem_49256e, %struct.Memory** %MEMORY
  %loadMem_492572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %1933 to i64*
  %1934 = load i64, i64* %PC.i360
  %1935 = add i64 %1934, 92
  %1936 = load i64, i64* %PC.i360
  %1937 = add i64 %1936, 5
  store i64 %1937, i64* %PC.i360
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1935, i64* %1938, align 8
  store %struct.Memory* %loadMem_492572, %struct.Memory** %MEMORY
  br label %block_.L_4925ce

block_.L_492577:                                  ; preds = %block_492511, %block_492507
  %loadMem_492577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 1
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %1944 to i64*
  %1945 = load i64, i64* %PC.i358
  %1946 = add i64 %1945, 10
  store i64 %1946, i64* %PC.i358
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RAX.i359, align 8
  store %struct.Memory* %loadMem_492577, %struct.Memory** %MEMORY
  %loadMem_492581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1949 to i64*
  %1950 = load i64, i64* %PC.i357
  %1951 = add i64 %1950, 8
  store i64 %1951, i64* %PC.i357
  store i8 43, i8* getelementptr inbounds (%G_0xaf279c_type, %G_0xaf279c_type* @G_0xaf279c, i32 0, i32 0, i32 0)
  store %struct.Memory* %loadMem_492581, %struct.Memory** %MEMORY
  %loadMem_492589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 33
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1954 to i64*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 5
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %1957 to i64*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 15
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %1960 to i64*
  %1961 = load i64, i64* %RBP.i356
  %1962 = sub i64 %1961, 4
  %1963 = load i64, i64* %PC.i354
  %1964 = add i64 %1963, 3
  store i64 %1964, i64* %PC.i354
  %1965 = inttoptr i64 %1962 to i32*
  %1966 = load i32, i32* %1965
  %1967 = zext i32 %1966 to i64
  store i64 %1967, i64* %RCX.i355, align 8
  store %struct.Memory* %loadMem_492589, %struct.Memory** %MEMORY
  %loadMem_49258c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 33
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1970 to i64*
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 5
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %1973 to i64*
  %1974 = load i64, i64* %RCX.i353
  %1975 = load i64, i64* %PC.i352
  %1976 = add i64 %1975, 3
  store i64 %1976, i64* %PC.i352
  %1977 = trunc i64 %1974 to i32
  %1978 = sub i32 %1977, 4
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RCX.i353, align 8
  %1980 = icmp ult i32 %1977, 4
  %1981 = zext i1 %1980 to i8
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1981, i8* %1982, align 1
  %1983 = and i32 %1978, 255
  %1984 = call i32 @llvm.ctpop.i32(i32 %1983)
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  %1987 = xor i8 %1986, 1
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1987, i8* %1988, align 1
  %1989 = xor i64 4, %1974
  %1990 = trunc i64 %1989 to i32
  %1991 = xor i32 %1990, %1978
  %1992 = lshr i32 %1991, 4
  %1993 = trunc i32 %1992 to i8
  %1994 = and i8 %1993, 1
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1994, i8* %1995, align 1
  %1996 = icmp eq i32 %1978, 0
  %1997 = zext i1 %1996 to i8
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1997, i8* %1998, align 1
  %1999 = lshr i32 %1978, 31
  %2000 = trunc i32 %1999 to i8
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2000, i8* %2001, align 1
  %2002 = lshr i32 %1977, 31
  %2003 = xor i32 %1999, %2002
  %2004 = add i32 %2003, %2002
  %2005 = icmp eq i32 %2004, 2
  %2006 = zext i1 %2005 to i8
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2006, i8* %2007, align 1
  store %struct.Memory* %loadMem_49258c, %struct.Memory** %MEMORY
  %loadMem_49258f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 33
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2010 to i64*
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 5
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %ECX.i350 = bitcast %union.anon* %2013 to i32*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 7
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RDX.i351 = bitcast %union.anon* %2016 to i64*
  %2017 = load i32, i32* %ECX.i350
  %2018 = zext i32 %2017 to i64
  %2019 = load i64, i64* %PC.i349
  %2020 = add i64 %2019, 3
  store i64 %2020, i64* %PC.i349
  %2021 = shl i64 %2018, 32
  %2022 = ashr exact i64 %2021, 32
  store i64 %2022, i64* %RDX.i351, align 8
  store %struct.Memory* %loadMem_49258f, %struct.Memory** %MEMORY
  %loadMem_492592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 33
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 7
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %RDX.i348 = bitcast %union.anon* %2028 to i64*
  %2029 = load i64, i64* %RDX.i348
  %2030 = load i64, i64* %PC.i347
  %2031 = add i64 %2030, 4
  store i64 %2031, i64* %PC.i347
  %2032 = sext i64 %2029 to i128
  %2033 = and i128 %2032, -18446744073709551616
  %2034 = zext i64 %2029 to i128
  %2035 = or i128 %2033, %2034
  %2036 = mul i128 19, %2035
  %2037 = trunc i128 %2036 to i64
  store i64 %2037, i64* %RDX.i348, align 8
  %2038 = sext i64 %2037 to i128
  %2039 = icmp ne i128 %2038, %2036
  %2040 = zext i1 %2039 to i8
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2040, i8* %2041, align 1
  %2042 = trunc i128 %2036 to i32
  %2043 = and i32 %2042, 255
  %2044 = call i32 @llvm.ctpop.i32(i32 %2043)
  %2045 = trunc i32 %2044 to i8
  %2046 = and i8 %2045, 1
  %2047 = xor i8 %2046, 1
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2047, i8* %2048, align 1
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2049, align 1
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2050, align 1
  %2051 = lshr i64 %2037, 63
  %2052 = trunc i64 %2051 to i8
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2052, i8* %2053, align 1
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2040, i8* %2054, align 1
  store %struct.Memory* %loadMem_492592, %struct.Memory** %MEMORY
  %loadMem_492596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %2057 to i64*
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 1
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %2060 to i64*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 9
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %RSI.i346 = bitcast %union.anon* %2063 to i64*
  %2064 = load i64, i64* %RAX.i345
  %2065 = load i64, i64* %PC.i344
  %2066 = add i64 %2065, 3
  store i64 %2066, i64* %PC.i344
  store i64 %2064, i64* %RSI.i346, align 8
  store %struct.Memory* %loadMem_492596, %struct.Memory** %MEMORY
  %loadMem_492599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 33
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 7
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RDX.i342 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 9
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %RSI.i343 = bitcast %union.anon* %2075 to i64*
  %2076 = load i64, i64* %RSI.i343
  %2077 = load i64, i64* %RDX.i342
  %2078 = load i64, i64* %PC.i341
  %2079 = add i64 %2078, 3
  store i64 %2079, i64* %PC.i341
  %2080 = add i64 %2077, %2076
  store i64 %2080, i64* %RSI.i343, align 8
  %2081 = icmp ult i64 %2080, %2076
  %2082 = icmp ult i64 %2080, %2077
  %2083 = or i1 %2081, %2082
  %2084 = zext i1 %2083 to i8
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2084, i8* %2085, align 1
  %2086 = trunc i64 %2080 to i32
  %2087 = and i32 %2086, 255
  %2088 = call i32 @llvm.ctpop.i32(i32 %2087)
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  %2091 = xor i8 %2090, 1
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2091, i8* %2092, align 1
  %2093 = xor i64 %2077, %2076
  %2094 = xor i64 %2093, %2080
  %2095 = lshr i64 %2094, 4
  %2096 = trunc i64 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2097, i8* %2098, align 1
  %2099 = icmp eq i64 %2080, 0
  %2100 = zext i1 %2099 to i8
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2100, i8* %2101, align 1
  %2102 = lshr i64 %2080, 63
  %2103 = trunc i64 %2102 to i8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2103, i8* %2104, align 1
  %2105 = lshr i64 %2076, 63
  %2106 = lshr i64 %2077, 63
  %2107 = xor i64 %2102, %2105
  %2108 = xor i64 %2102, %2106
  %2109 = add i64 %2107, %2108
  %2110 = icmp eq i64 %2109, 2
  %2111 = zext i1 %2110 to i8
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2111, i8* %2112, align 1
  store %struct.Memory* %loadMem_492599, %struct.Memory** %MEMORY
  %loadMem_49259c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 9
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RSI.i340 = bitcast %union.anon* %2118 to i64*
  %2119 = load i64, i64* %RSI.i340
  %2120 = add i64 %2119, 3
  %2121 = load i64, i64* %PC.i339
  %2122 = add i64 %2121, 4
  store i64 %2122, i64* %PC.i339
  %2123 = inttoptr i64 %2120 to i8*
  store i8 43, i8* %2123
  store %struct.Memory* %loadMem_49259c, %struct.Memory** %MEMORY
  %loadMem_4925a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 5
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 15
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RBP.i338
  %2134 = sub i64 %2133, 4
  %2135 = load i64, i64* %PC.i336
  %2136 = add i64 %2135, 3
  store i64 %2136, i64* %PC.i336
  %2137 = inttoptr i64 %2134 to i32*
  %2138 = load i32, i32* %2137
  %2139 = zext i32 %2138 to i64
  store i64 %2139, i64* %RCX.i337, align 8
  store %struct.Memory* %loadMem_4925a0, %struct.Memory** %MEMORY
  %loadMem_4925a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 33
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 5
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %2145 to i64*
  %2146 = load i64, i64* %RCX.i335
  %2147 = load i64, i64* %PC.i334
  %2148 = add i64 %2147, 3
  store i64 %2148, i64* %PC.i334
  %2149 = trunc i64 %2146 to i32
  %2150 = sub i32 %2149, 4
  %2151 = zext i32 %2150 to i64
  store i64 %2151, i64* %RCX.i335, align 8
  %2152 = icmp ult i32 %2149, 4
  %2153 = zext i1 %2152 to i8
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2153, i8* %2154, align 1
  %2155 = and i32 %2150, 255
  %2156 = call i32 @llvm.ctpop.i32(i32 %2155)
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = xor i8 %2158, 1
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2159, i8* %2160, align 1
  %2161 = xor i64 4, %2146
  %2162 = trunc i64 %2161 to i32
  %2163 = xor i32 %2162, %2150
  %2164 = lshr i32 %2163, 4
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2166, i8* %2167, align 1
  %2168 = icmp eq i32 %2150, 0
  %2169 = zext i1 %2168 to i8
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2169, i8* %2170, align 1
  %2171 = lshr i32 %2150, 31
  %2172 = trunc i32 %2171 to i8
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2172, i8* %2173, align 1
  %2174 = lshr i32 %2149, 31
  %2175 = xor i32 %2171, %2174
  %2176 = add i32 %2175, %2174
  %2177 = icmp eq i32 %2176, 2
  %2178 = zext i1 %2177 to i8
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2178, i8* %2179, align 1
  store %struct.Memory* %loadMem_4925a3, %struct.Memory** %MEMORY
  %loadMem_4925a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 5
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %ECX.i332 = bitcast %union.anon* %2185 to i32*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 7
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %RDX.i333 = bitcast %union.anon* %2188 to i64*
  %2189 = load i32, i32* %ECX.i332
  %2190 = zext i32 %2189 to i64
  %2191 = load i64, i64* %PC.i331
  %2192 = add i64 %2191, 3
  store i64 %2192, i64* %PC.i331
  %2193 = shl i64 %2190, 32
  %2194 = ashr exact i64 %2193, 32
  store i64 %2194, i64* %RDX.i333, align 8
  store %struct.Memory* %loadMem_4925a6, %struct.Memory** %MEMORY
  %loadMem_4925a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 33
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 7
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RDX.i330 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %RDX.i330
  %2202 = add i64 %2201, 11478937
  %2203 = load i64, i64* %PC.i329
  %2204 = add i64 %2203, 8
  store i64 %2204, i64* %PC.i329
  %2205 = inttoptr i64 %2202 to i8*
  store i8 43, i8* %2205
  store %struct.Memory* %loadMem_4925a9, %struct.Memory** %MEMORY
  %loadMem_4925b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 33
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2208 to i64*
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 5
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 15
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %2214 to i64*
  %2215 = load i64, i64* %RBP.i328
  %2216 = sub i64 %2215, 4
  %2217 = load i64, i64* %PC.i326
  %2218 = add i64 %2217, 3
  store i64 %2218, i64* %PC.i326
  %2219 = inttoptr i64 %2216 to i32*
  %2220 = load i32, i32* %2219
  %2221 = zext i32 %2220 to i64
  store i64 %2221, i64* %RCX.i327, align 8
  store %struct.Memory* %loadMem_4925b1, %struct.Memory** %MEMORY
  %loadMem_4925b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 33
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %2224 to i64*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 5
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %2227 to i64*
  %2228 = load i64, i64* %RCX.i325
  %2229 = load i64, i64* %PC.i324
  %2230 = add i64 %2229, 3
  store i64 %2230, i64* %PC.i324
  %2231 = trunc i64 %2228 to i32
  %2232 = sub i32 %2231, 4
  %2233 = zext i32 %2232 to i64
  store i64 %2233, i64* %RCX.i325, align 8
  %2234 = icmp ult i32 %2231, 4
  %2235 = zext i1 %2234 to i8
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2235, i8* %2236, align 1
  %2237 = and i32 %2232, 255
  %2238 = call i32 @llvm.ctpop.i32(i32 %2237)
  %2239 = trunc i32 %2238 to i8
  %2240 = and i8 %2239, 1
  %2241 = xor i8 %2240, 1
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2241, i8* %2242, align 1
  %2243 = xor i64 4, %2228
  %2244 = trunc i64 %2243 to i32
  %2245 = xor i32 %2244, %2232
  %2246 = lshr i32 %2245, 4
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2248, i8* %2249, align 1
  %2250 = icmp eq i32 %2232, 0
  %2251 = zext i1 %2250 to i8
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2251, i8* %2252, align 1
  %2253 = lshr i32 %2232, 31
  %2254 = trunc i32 %2253 to i8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2254, i8* %2255, align 1
  %2256 = lshr i32 %2231, 31
  %2257 = xor i32 %2253, %2256
  %2258 = add i32 %2257, %2256
  %2259 = icmp eq i32 %2258, 2
  %2260 = zext i1 %2259 to i8
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2260, i8* %2261, align 1
  store %struct.Memory* %loadMem_4925b4, %struct.Memory** %MEMORY
  %loadMem_4925b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 33
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %2264 to i64*
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 5
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %ECX.i322 = bitcast %union.anon* %2267 to i32*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 7
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %RDX.i323 = bitcast %union.anon* %2270 to i64*
  %2271 = load i32, i32* %ECX.i322
  %2272 = zext i32 %2271 to i64
  %2273 = load i64, i64* %PC.i321
  %2274 = add i64 %2273, 3
  store i64 %2274, i64* %PC.i321
  %2275 = shl i64 %2272, 32
  %2276 = ashr exact i64 %2275, 32
  store i64 %2276, i64* %RDX.i323, align 8
  store %struct.Memory* %loadMem_4925b7, %struct.Memory** %MEMORY
  %loadMem_4925ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 33
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 7
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %RDX.i320 = bitcast %union.anon* %2282 to i64*
  %2283 = load i64, i64* %RDX.i320
  %2284 = load i64, i64* %PC.i319
  %2285 = add i64 %2284, 4
  store i64 %2285, i64* %PC.i319
  %2286 = sext i64 %2283 to i128
  %2287 = and i128 %2286, -18446744073709551616
  %2288 = zext i64 %2283 to i128
  %2289 = or i128 %2287, %2288
  %2290 = mul i128 19, %2289
  %2291 = trunc i128 %2290 to i64
  store i64 %2291, i64* %RDX.i320, align 8
  %2292 = sext i64 %2291 to i128
  %2293 = icmp ne i128 %2292, %2290
  %2294 = zext i1 %2293 to i8
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2294, i8* %2295, align 1
  %2296 = trunc i128 %2290 to i32
  %2297 = and i32 %2296, 255
  %2298 = call i32 @llvm.ctpop.i32(i32 %2297)
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = xor i8 %2300, 1
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2301, i8* %2302, align 1
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2303, align 1
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2304, align 1
  %2305 = lshr i64 %2291, 63
  %2306 = trunc i64 %2305 to i8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2306, i8* %2307, align 1
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2294, i8* %2308, align 1
  store %struct.Memory* %loadMem_4925ba, %struct.Memory** %MEMORY
  %loadMem_4925be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 33
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %2311 to i64*
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 1
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %2314 to i64*
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 7
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %RDX.i318 = bitcast %union.anon* %2317 to i64*
  %2318 = load i64, i64* %RAX.i317
  %2319 = load i64, i64* %RDX.i318
  %2320 = load i64, i64* %PC.i316
  %2321 = add i64 %2320, 3
  store i64 %2321, i64* %PC.i316
  %2322 = add i64 %2319, %2318
  store i64 %2322, i64* %RAX.i317, align 8
  %2323 = icmp ult i64 %2322, %2318
  %2324 = icmp ult i64 %2322, %2319
  %2325 = or i1 %2323, %2324
  %2326 = zext i1 %2325 to i8
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2326, i8* %2327, align 1
  %2328 = trunc i64 %2322 to i32
  %2329 = and i32 %2328, 255
  %2330 = call i32 @llvm.ctpop.i32(i32 %2329)
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  %2333 = xor i8 %2332, 1
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2333, i8* %2334, align 1
  %2335 = xor i64 %2319, %2318
  %2336 = xor i64 %2335, %2322
  %2337 = lshr i64 %2336, 4
  %2338 = trunc i64 %2337 to i8
  %2339 = and i8 %2338, 1
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2339, i8* %2340, align 1
  %2341 = icmp eq i64 %2322, 0
  %2342 = zext i1 %2341 to i8
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2342, i8* %2343, align 1
  %2344 = lshr i64 %2322, 63
  %2345 = trunc i64 %2344 to i8
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2345, i8* %2346, align 1
  %2347 = lshr i64 %2318, 63
  %2348 = lshr i64 %2319, 63
  %2349 = xor i64 %2344, %2347
  %2350 = xor i64 %2344, %2348
  %2351 = add i64 %2349, %2350
  %2352 = icmp eq i64 %2351, 2
  %2353 = zext i1 %2352 to i8
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2353, i8* %2354, align 1
  store %struct.Memory* %loadMem_4925be, %struct.Memory** %MEMORY
  %loadMem_4925c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 33
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 5
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %2360 to i64*
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 15
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %2363 to i64*
  %2364 = load i64, i64* %RBP.i315
  %2365 = sub i64 %2364, 4
  %2366 = load i64, i64* %PC.i313
  %2367 = add i64 %2366, 3
  store i64 %2367, i64* %PC.i313
  %2368 = inttoptr i64 %2365 to i32*
  %2369 = load i32, i32* %2368
  %2370 = zext i32 %2369 to i64
  store i64 %2370, i64* %RCX.i314, align 8
  store %struct.Memory* %loadMem_4925c1, %struct.Memory** %MEMORY
  %loadMem_4925c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 33
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2373 to i64*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 5
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %2376 to i64*
  %2377 = load i64, i64* %RCX.i312
  %2378 = load i64, i64* %PC.i311
  %2379 = add i64 %2378, 3
  store i64 %2379, i64* %PC.i311
  %2380 = trunc i64 %2377 to i32
  %2381 = sub i32 %2380, 4
  %2382 = zext i32 %2381 to i64
  store i64 %2382, i64* %RCX.i312, align 8
  %2383 = icmp ult i32 %2380, 4
  %2384 = zext i1 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2384, i8* %2385, align 1
  %2386 = and i32 %2381, 255
  %2387 = call i32 @llvm.ctpop.i32(i32 %2386)
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = xor i8 %2389, 1
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2390, i8* %2391, align 1
  %2392 = xor i64 4, %2377
  %2393 = trunc i64 %2392 to i32
  %2394 = xor i32 %2393, %2381
  %2395 = lshr i32 %2394, 4
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2397, i8* %2398, align 1
  %2399 = icmp eq i32 %2381, 0
  %2400 = zext i1 %2399 to i8
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2400, i8* %2401, align 1
  %2402 = lshr i32 %2381, 31
  %2403 = trunc i32 %2402 to i8
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2403, i8* %2404, align 1
  %2405 = lshr i32 %2380, 31
  %2406 = xor i32 %2402, %2405
  %2407 = add i32 %2406, %2405
  %2408 = icmp eq i32 %2407, 2
  %2409 = zext i1 %2408 to i8
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2409, i8* %2410, align 1
  store %struct.Memory* %loadMem_4925c4, %struct.Memory** %MEMORY
  %loadMem_4925c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 5
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2416 to i32*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 7
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %RDX.i310 = bitcast %union.anon* %2419 to i64*
  %2420 = load i32, i32* %ECX.i
  %2421 = zext i32 %2420 to i64
  %2422 = load i64, i64* %PC.i309
  %2423 = add i64 %2422, 3
  store i64 %2423, i64* %PC.i309
  %2424 = shl i64 %2421, 32
  %2425 = ashr exact i64 %2424, 32
  store i64 %2425, i64* %RDX.i310, align 8
  store %struct.Memory* %loadMem_4925c7, %struct.Memory** %MEMORY
  %loadMem_4925ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 33
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 1
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 7
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RDX.i308 = bitcast %union.anon* %2434 to i64*
  %2435 = load i64, i64* %RAX.i307
  %2436 = load i64, i64* %RDX.i308
  %2437 = add i64 %2436, %2435
  %2438 = load i64, i64* %PC.i306
  %2439 = add i64 %2438, 4
  store i64 %2439, i64* %PC.i306
  %2440 = inttoptr i64 %2437 to i8*
  store i8 43, i8* %2440
  store %struct.Memory* %loadMem_4925ca, %struct.Memory** %MEMORY
  br label %block_.L_4925ce

block_.L_4925ce:                                  ; preds = %block_.L_492577, %block_49251b
  %loadMem_4925ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 33
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %PC.i305
  %2445 = add i64 %2444, 413
  %2446 = load i64, i64* %PC.i305
  %2447 = add i64 %2446, 5
  store i64 %2447, i64* %PC.i305
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2445, i64* %2448, align 8
  store %struct.Memory* %loadMem_4925ce, %struct.Memory** %MEMORY
  br label %block_.L_49276b

block_.L_4925d3:                                  ; preds = %routine_idivl__ecx.exit
  %loadMem_4925d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 33
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 15
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %2454 to i64*
  %2455 = load i64, i64* %RBP.i304
  %2456 = sub i64 %2455, 4
  %2457 = load i64, i64* %PC.i303
  %2458 = add i64 %2457, 4
  store i64 %2458, i64* %PC.i303
  %2459 = inttoptr i64 %2456 to i32*
  %2460 = load i32, i32* %2459
  %2461 = sub i32 %2460, 2
  %2462 = icmp ult i32 %2460, 2
  %2463 = zext i1 %2462 to i8
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2463, i8* %2464, align 1
  %2465 = and i32 %2461, 255
  %2466 = call i32 @llvm.ctpop.i32(i32 %2465)
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  %2469 = xor i8 %2468, 1
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2469, i8* %2470, align 1
  %2471 = xor i32 %2460, 2
  %2472 = xor i32 %2471, %2461
  %2473 = lshr i32 %2472, 4
  %2474 = trunc i32 %2473 to i8
  %2475 = and i8 %2474, 1
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2475, i8* %2476, align 1
  %2477 = icmp eq i32 %2461, 0
  %2478 = zext i1 %2477 to i8
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2478, i8* %2479, align 1
  %2480 = lshr i32 %2461, 31
  %2481 = trunc i32 %2480 to i8
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2481, i8* %2482, align 1
  %2483 = lshr i32 %2460, 31
  %2484 = xor i32 %2480, %2483
  %2485 = add i32 %2484, %2483
  %2486 = icmp eq i32 %2485, 2
  %2487 = zext i1 %2486 to i8
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2487, i8* %2488, align 1
  store %struct.Memory* %loadMem_4925d3, %struct.Memory** %MEMORY
  %loadMem_4925d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 33
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2491 to i64*
  %2492 = load i64, i64* %PC.i302
  %2493 = add i64 %2492, 156
  %2494 = load i64, i64* %PC.i302
  %2495 = add i64 %2494, 6
  %2496 = load i64, i64* %PC.i302
  %2497 = add i64 %2496, 6
  store i64 %2497, i64* %PC.i302
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2499 = load i8, i8* %2498, align 1
  %2500 = icmp ne i8 %2499, 0
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2502 = load i8, i8* %2501, align 1
  %2503 = icmp ne i8 %2502, 0
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2505 = load i8, i8* %2504, align 1
  %2506 = icmp ne i8 %2505, 0
  %2507 = xor i1 %2503, %2506
  %2508 = or i1 %2500, %2507
  %2509 = zext i1 %2508 to i8
  store i8 %2509, i8* %BRANCH_TAKEN, align 1
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2511 = select i1 %2508, i64 %2493, i64 %2495
  store i64 %2511, i64* %2510, align 8
  store %struct.Memory* %loadMem_4925d7, %struct.Memory** %MEMORY
  %loadBr_4925d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4925d7 = icmp eq i8 %loadBr_4925d7, 1
  br i1 %cmpBr_4925d7, label %block_.L_492673, label %block_4925dd

block_4925dd:                                     ; preds = %block_.L_4925d3
  %loadMem_4925dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 33
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 15
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2517 to i64*
  %2518 = load i64, i64* %RBP.i301
  %2519 = sub i64 %2518, 4
  %2520 = load i64, i64* %PC.i300
  %2521 = add i64 %2520, 4
  store i64 %2521, i64* %PC.i300
  %2522 = inttoptr i64 %2519 to i32*
  %2523 = load i32, i32* %2522
  %2524 = sub i32 %2523, 12
  %2525 = icmp ult i32 %2523, 12
  %2526 = zext i1 %2525 to i8
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2526, i8* %2527, align 1
  %2528 = and i32 %2524, 255
  %2529 = call i32 @llvm.ctpop.i32(i32 %2528)
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2532, i8* %2533, align 1
  %2534 = xor i32 %2523, 12
  %2535 = xor i32 %2534, %2524
  %2536 = lshr i32 %2535, 4
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2538, i8* %2539, align 1
  %2540 = icmp eq i32 %2524, 0
  %2541 = zext i1 %2540 to i8
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2541, i8* %2542, align 1
  %2543 = lshr i32 %2524, 31
  %2544 = trunc i32 %2543 to i8
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2544, i8* %2545, align 1
  %2546 = lshr i32 %2523, 31
  %2547 = xor i32 %2543, %2546
  %2548 = add i32 %2547, %2546
  %2549 = icmp eq i32 %2548, 2
  %2550 = zext i1 %2549 to i8
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2550, i8* %2551, align 1
  store %struct.Memory* %loadMem_4925dd, %struct.Memory** %MEMORY
  %loadMem_4925e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 33
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2554 to i64*
  %2555 = load i64, i64* %PC.i299
  %2556 = add i64 %2555, 146
  %2557 = load i64, i64* %PC.i299
  %2558 = add i64 %2557, 6
  %2559 = load i64, i64* %PC.i299
  %2560 = add i64 %2559, 6
  store i64 %2560, i64* %PC.i299
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2562 = load i8, i8* %2561, align 1
  %2563 = icmp ne i8 %2562, 0
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2565 = load i8, i8* %2564, align 1
  %2566 = icmp ne i8 %2565, 0
  %2567 = xor i1 %2563, %2566
  %2568 = xor i1 %2567, true
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %BRANCH_TAKEN, align 1
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2571 = select i1 %2567, i64 %2558, i64 %2556
  store i64 %2571, i64* %2570, align 8
  store %struct.Memory* %loadMem_4925e1, %struct.Memory** %MEMORY
  %loadBr_4925e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4925e1 = icmp eq i8 %loadBr_4925e1, 1
  br i1 %cmpBr_4925e1, label %block_.L_492673, label %block_4925e7

block_4925e7:                                     ; preds = %block_4925dd
  %loadMem_4925e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 33
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 1
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %2577 to i64*
  %2578 = load i64, i64* %PC.i297
  %2579 = add i64 %2578, 5
  store i64 %2579, i64* %PC.i297
  store i64 2, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_4925e7, %struct.Memory** %MEMORY
  %loadMem_4925ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 5
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %2585 to i64*
  %2586 = load i64, i64* %PC.i295
  %2587 = add i64 %2586, 10
  store i64 %2587, i64* %PC.i295
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RCX.i296, align 8
  store %struct.Memory* %loadMem_4925ec, %struct.Memory** %MEMORY
  %loadMem_4925f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 33
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2590 to i64*
  %2591 = load i64, i64* %PC.i294
  %2592 = add i64 %2591, 8
  store i64 %2592, i64* %PC.i294
  store i8 43, i8* getelementptr inbounds (%G_0xaf2788_type, %G_0xaf2788_type* @G_0xaf2788, i32 0, i32 0, i32 0)
  store %struct.Memory* %loadMem_4925f6, %struct.Memory** %MEMORY
  %loadMem_4925fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 33
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2595 to i64*
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 7
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %RDX.i292 = bitcast %union.anon* %2598 to i64*
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 15
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %2601 to i64*
  %2602 = load i64, i64* %RBP.i293
  %2603 = sub i64 %2602, 4
  %2604 = load i64, i64* %PC.i291
  %2605 = add i64 %2604, 3
  store i64 %2605, i64* %PC.i291
  %2606 = inttoptr i64 %2603 to i32*
  %2607 = load i32, i32* %2606
  %2608 = zext i32 %2607 to i64
  store i64 %2608, i64* %RDX.i292, align 8
  store %struct.Memory* %loadMem_4925fe, %struct.Memory** %MEMORY
  %loadMem_492601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 33
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 7
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RDX.i290 = bitcast %union.anon* %2614 to i64*
  %2615 = load i64, i64* %RDX.i290
  %2616 = load i64, i64* %PC.i289
  %2617 = add i64 %2616, 3
  store i64 %2617, i64* %PC.i289
  %2618 = trunc i64 %2615 to i32
  %2619 = sub i32 %2618, 3
  %2620 = zext i32 %2619 to i64
  store i64 %2620, i64* %RDX.i290, align 8
  %2621 = icmp ult i32 %2618, 3
  %2622 = zext i1 %2621 to i8
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2622, i8* %2623, align 1
  %2624 = and i32 %2619, 255
  %2625 = call i32 @llvm.ctpop.i32(i32 %2624)
  %2626 = trunc i32 %2625 to i8
  %2627 = and i8 %2626, 1
  %2628 = xor i8 %2627, 1
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2628, i8* %2629, align 1
  %2630 = xor i64 3, %2615
  %2631 = trunc i64 %2630 to i32
  %2632 = xor i32 %2631, %2619
  %2633 = lshr i32 %2632, 4
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2635, i8* %2636, align 1
  %2637 = icmp eq i32 %2619, 0
  %2638 = zext i1 %2637 to i8
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2638, i8* %2639, align 1
  %2640 = lshr i32 %2619, 31
  %2641 = trunc i32 %2640 to i8
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2641, i8* %2642, align 1
  %2643 = lshr i32 %2618, 31
  %2644 = xor i32 %2640, %2643
  %2645 = add i32 %2644, %2643
  %2646 = icmp eq i32 %2645, 2
  %2647 = zext i1 %2646 to i8
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2647, i8* %2648, align 1
  store %struct.Memory* %loadMem_492601, %struct.Memory** %MEMORY
  %loadMem_492604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 33
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 7
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %EDX.i287 = bitcast %union.anon* %2654 to i32*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 9
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %RSI.i288 = bitcast %union.anon* %2657 to i64*
  %2658 = load i32, i32* %EDX.i287
  %2659 = zext i32 %2658 to i64
  %2660 = load i64, i64* %PC.i286
  %2661 = add i64 %2660, 3
  store i64 %2661, i64* %PC.i286
  %2662 = shl i64 %2659, 32
  %2663 = ashr exact i64 %2662, 32
  store i64 %2663, i64* %RSI.i288, align 8
  store %struct.Memory* %loadMem_492604, %struct.Memory** %MEMORY
  %loadMem_492607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 9
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RSI.i285 = bitcast %union.anon* %2669 to i64*
  %2670 = load i64, i64* %RSI.i285
  %2671 = load i64, i64* %PC.i284
  %2672 = add i64 %2671, 4
  store i64 %2672, i64* %PC.i284
  %2673 = sext i64 %2670 to i128
  %2674 = and i128 %2673, -18446744073709551616
  %2675 = zext i64 %2670 to i128
  %2676 = or i128 %2674, %2675
  %2677 = mul i128 19, %2676
  %2678 = trunc i128 %2677 to i64
  store i64 %2678, i64* %RSI.i285, align 8
  %2679 = sext i64 %2678 to i128
  %2680 = icmp ne i128 %2679, %2677
  %2681 = zext i1 %2680 to i8
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2681, i8* %2682, align 1
  %2683 = trunc i128 %2677 to i32
  %2684 = and i32 %2683, 255
  %2685 = call i32 @llvm.ctpop.i32(i32 %2684)
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  %2688 = xor i8 %2687, 1
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2688, i8* %2689, align 1
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2690, align 1
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2691, align 1
  %2692 = lshr i64 %2678, 63
  %2693 = trunc i64 %2692 to i8
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2693, i8* %2694, align 1
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2681, i8* %2695, align 1
  store %struct.Memory* %loadMem_492607, %struct.Memory** %MEMORY
  %loadMem_49260b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 33
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 5
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 11
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RDI.i283 = bitcast %union.anon* %2704 to i64*
  %2705 = load i64, i64* %RCX.i282
  %2706 = load i64, i64* %PC.i281
  %2707 = add i64 %2706, 3
  store i64 %2707, i64* %PC.i281
  store i64 %2705, i64* %RDI.i283, align 8
  store %struct.Memory* %loadMem_49260b, %struct.Memory** %MEMORY
  %loadMem_49260e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 33
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2710 to i64*
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 9
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %RSI.i279 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 11
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %RDI.i280 = bitcast %union.anon* %2716 to i64*
  %2717 = load i64, i64* %RDI.i280
  %2718 = load i64, i64* %RSI.i279
  %2719 = load i64, i64* %PC.i278
  %2720 = add i64 %2719, 3
  store i64 %2720, i64* %PC.i278
  %2721 = add i64 %2718, %2717
  store i64 %2721, i64* %RDI.i280, align 8
  %2722 = icmp ult i64 %2721, %2717
  %2723 = icmp ult i64 %2721, %2718
  %2724 = or i1 %2722, %2723
  %2725 = zext i1 %2724 to i8
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2725, i8* %2726, align 1
  %2727 = trunc i64 %2721 to i32
  %2728 = and i32 %2727, 255
  %2729 = call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2732, i8* %2733, align 1
  %2734 = xor i64 %2718, %2717
  %2735 = xor i64 %2734, %2721
  %2736 = lshr i64 %2735, 4
  %2737 = trunc i64 %2736 to i8
  %2738 = and i8 %2737, 1
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2738, i8* %2739, align 1
  %2740 = icmp eq i64 %2721, 0
  %2741 = zext i1 %2740 to i8
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2741, i8* %2742, align 1
  %2743 = lshr i64 %2721, 63
  %2744 = trunc i64 %2743 to i8
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2744, i8* %2745, align 1
  %2746 = lshr i64 %2717, 63
  %2747 = lshr i64 %2718, 63
  %2748 = xor i64 %2743, %2746
  %2749 = xor i64 %2743, %2747
  %2750 = add i64 %2748, %2749
  %2751 = icmp eq i64 %2750, 2
  %2752 = zext i1 %2751 to i8
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2752, i8* %2753, align 1
  store %struct.Memory* %loadMem_49260e, %struct.Memory** %MEMORY
  %loadMem_492611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 11
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %RDI.i277 = bitcast %union.anon* %2759 to i64*
  %2760 = load i64, i64* %RDI.i277
  %2761 = add i64 %2760, 2
  %2762 = load i64, i64* %PC.i276
  %2763 = add i64 %2762, 4
  store i64 %2763, i64* %PC.i276
  %2764 = inttoptr i64 %2761 to i8*
  store i8 43, i8* %2764
  store %struct.Memory* %loadMem_492611, %struct.Memory** %MEMORY
  %loadMem_492615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 33
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %2767 to i64*
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 7
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %RDX.i274 = bitcast %union.anon* %2770 to i64*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 15
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %2773 to i64*
  %2774 = load i64, i64* %RBP.i275
  %2775 = sub i64 %2774, 4
  %2776 = load i64, i64* %PC.i273
  %2777 = add i64 %2776, 3
  store i64 %2777, i64* %PC.i273
  %2778 = inttoptr i64 %2775 to i32*
  %2779 = load i32, i32* %2778
  %2780 = zext i32 %2779 to i64
  store i64 %2780, i64* %RDX.i274, align 8
  store %struct.Memory* %loadMem_492615, %struct.Memory** %MEMORY
  %loadMem_492618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 7
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RDX.i272 = bitcast %union.anon* %2786 to i64*
  %2787 = load i64, i64* %RDX.i272
  %2788 = load i64, i64* %PC.i271
  %2789 = add i64 %2788, 3
  store i64 %2789, i64* %PC.i271
  %2790 = trunc i64 %2787 to i32
  %2791 = sub i32 %2790, 3
  %2792 = zext i32 %2791 to i64
  store i64 %2792, i64* %RDX.i272, align 8
  %2793 = icmp ult i32 %2790, 3
  %2794 = zext i1 %2793 to i8
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2794, i8* %2795, align 1
  %2796 = and i32 %2791, 255
  %2797 = call i32 @llvm.ctpop.i32(i32 %2796)
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = xor i8 %2799, 1
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2800, i8* %2801, align 1
  %2802 = xor i64 3, %2787
  %2803 = trunc i64 %2802 to i32
  %2804 = xor i32 %2803, %2791
  %2805 = lshr i32 %2804, 4
  %2806 = trunc i32 %2805 to i8
  %2807 = and i8 %2806, 1
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2807, i8* %2808, align 1
  %2809 = icmp eq i32 %2791, 0
  %2810 = zext i1 %2809 to i8
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2810, i8* %2811, align 1
  %2812 = lshr i32 %2791, 31
  %2813 = trunc i32 %2812 to i8
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2813, i8* %2814, align 1
  %2815 = lshr i32 %2790, 31
  %2816 = xor i32 %2812, %2815
  %2817 = add i32 %2816, %2815
  %2818 = icmp eq i32 %2817, 2
  %2819 = zext i1 %2818 to i8
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2819, i8* %2820, align 1
  store %struct.Memory* %loadMem_492618, %struct.Memory** %MEMORY
  %loadMem_49261b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 7
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %EDX.i269 = bitcast %union.anon* %2826 to i32*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 9
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RSI.i270 = bitcast %union.anon* %2829 to i64*
  %2830 = load i32, i32* %EDX.i269
  %2831 = zext i32 %2830 to i64
  %2832 = load i64, i64* %PC.i268
  %2833 = add i64 %2832, 3
  store i64 %2833, i64* %PC.i268
  %2834 = shl i64 %2831, 32
  %2835 = ashr exact i64 %2834, 32
  store i64 %2835, i64* %RSI.i270, align 8
  store %struct.Memory* %loadMem_49261b, %struct.Memory** %MEMORY
  %loadMem_49261e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 33
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 9
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %RSI.i267 = bitcast %union.anon* %2841 to i64*
  %2842 = load i64, i64* %RSI.i267
  %2843 = add i64 %2842, 11478918
  %2844 = load i64, i64* %PC.i266
  %2845 = add i64 %2844, 8
  store i64 %2845, i64* %PC.i266
  %2846 = inttoptr i64 %2843 to i8*
  store i8 43, i8* %2846
  store %struct.Memory* %loadMem_49261e, %struct.Memory** %MEMORY
  %loadMem_492626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 33
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 7
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RDX.i264 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 15
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %2855 to i64*
  %2856 = load i64, i64* %RBP.i265
  %2857 = sub i64 %2856, 4
  %2858 = load i64, i64* %PC.i263
  %2859 = add i64 %2858, 3
  store i64 %2859, i64* %PC.i263
  %2860 = inttoptr i64 %2857 to i32*
  %2861 = load i32, i32* %2860
  %2862 = zext i32 %2861 to i64
  store i64 %2862, i64* %RDX.i264, align 8
  store %struct.Memory* %loadMem_492626, %struct.Memory** %MEMORY
  %loadMem_492629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 7
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RDX.i262 = bitcast %union.anon* %2868 to i64*
  %2869 = load i64, i64* %RDX.i262
  %2870 = load i64, i64* %PC.i261
  %2871 = add i64 %2870, 3
  store i64 %2871, i64* %PC.i261
  %2872 = trunc i64 %2869 to i32
  %2873 = sub i32 %2872, 3
  %2874 = zext i32 %2873 to i64
  store i64 %2874, i64* %RDX.i262, align 8
  %2875 = icmp ult i32 %2872, 3
  %2876 = zext i1 %2875 to i8
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2876, i8* %2877, align 1
  %2878 = and i32 %2873, 255
  %2879 = call i32 @llvm.ctpop.i32(i32 %2878)
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  %2882 = xor i8 %2881, 1
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2882, i8* %2883, align 1
  %2884 = xor i64 3, %2869
  %2885 = trunc i64 %2884 to i32
  %2886 = xor i32 %2885, %2873
  %2887 = lshr i32 %2886, 4
  %2888 = trunc i32 %2887 to i8
  %2889 = and i8 %2888, 1
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2889, i8* %2890, align 1
  %2891 = icmp eq i32 %2873, 0
  %2892 = zext i1 %2891 to i8
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2892, i8* %2893, align 1
  %2894 = lshr i32 %2873, 31
  %2895 = trunc i32 %2894 to i8
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2895, i8* %2896, align 1
  %2897 = lshr i32 %2872, 31
  %2898 = xor i32 %2894, %2897
  %2899 = add i32 %2898, %2897
  %2900 = icmp eq i32 %2899, 2
  %2901 = zext i1 %2900 to i8
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2901, i8* %2902, align 1
  store %struct.Memory* %loadMem_492629, %struct.Memory** %MEMORY
  %loadMem_49262c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 7
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %EDX.i259 = bitcast %union.anon* %2908 to i32*
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 9
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %RSI.i260 = bitcast %union.anon* %2911 to i64*
  %2912 = load i32, i32* %EDX.i259
  %2913 = zext i32 %2912 to i64
  %2914 = load i64, i64* %PC.i258
  %2915 = add i64 %2914, 3
  store i64 %2915, i64* %PC.i258
  %2916 = shl i64 %2913, 32
  %2917 = ashr exact i64 %2916, 32
  store i64 %2917, i64* %RSI.i260, align 8
  store %struct.Memory* %loadMem_49262c, %struct.Memory** %MEMORY
  %loadMem_49262f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 9
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %RSI.i257 = bitcast %union.anon* %2923 to i64*
  %2924 = load i64, i64* %RSI.i257
  %2925 = load i64, i64* %PC.i256
  %2926 = add i64 %2925, 4
  store i64 %2926, i64* %PC.i256
  %2927 = sext i64 %2924 to i128
  %2928 = and i128 %2927, -18446744073709551616
  %2929 = zext i64 %2924 to i128
  %2930 = or i128 %2928, %2929
  %2931 = mul i128 19, %2930
  %2932 = trunc i128 %2931 to i64
  store i64 %2932, i64* %RSI.i257, align 8
  %2933 = sext i64 %2932 to i128
  %2934 = icmp ne i128 %2933, %2931
  %2935 = zext i1 %2934 to i8
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2935, i8* %2936, align 1
  %2937 = trunc i128 %2931 to i32
  %2938 = and i32 %2937, 255
  %2939 = call i32 @llvm.ctpop.i32(i32 %2938)
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  %2942 = xor i8 %2941, 1
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2942, i8* %2943, align 1
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2944, align 1
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2945, align 1
  %2946 = lshr i64 %2932, 63
  %2947 = trunc i64 %2946 to i8
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2947, i8* %2948, align 1
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2935, i8* %2949, align 1
  store %struct.Memory* %loadMem_49262f, %struct.Memory** %MEMORY
  %loadMem_492633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 33
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 5
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 11
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %RDI.i255 = bitcast %union.anon* %2958 to i64*
  %2959 = load i64, i64* %RCX.i254
  %2960 = load i64, i64* %PC.i253
  %2961 = add i64 %2960, 3
  store i64 %2961, i64* %PC.i253
  store i64 %2959, i64* %RDI.i255, align 8
  store %struct.Memory* %loadMem_492633, %struct.Memory** %MEMORY
  %loadMem_492636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 9
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RSI.i251 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 11
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %RDI.i252 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %RDI.i252
  %2972 = load i64, i64* %RSI.i251
  %2973 = load i64, i64* %PC.i250
  %2974 = add i64 %2973, 3
  store i64 %2974, i64* %PC.i250
  %2975 = add i64 %2972, %2971
  store i64 %2975, i64* %RDI.i252, align 8
  %2976 = icmp ult i64 %2975, %2971
  %2977 = icmp ult i64 %2975, %2972
  %2978 = or i1 %2976, %2977
  %2979 = zext i1 %2978 to i8
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2979, i8* %2980, align 1
  %2981 = trunc i64 %2975 to i32
  %2982 = and i32 %2981, 255
  %2983 = call i32 @llvm.ctpop.i32(i32 %2982)
  %2984 = trunc i32 %2983 to i8
  %2985 = and i8 %2984, 1
  %2986 = xor i8 %2985, 1
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2986, i8* %2987, align 1
  %2988 = xor i64 %2972, %2971
  %2989 = xor i64 %2988, %2975
  %2990 = lshr i64 %2989, 4
  %2991 = trunc i64 %2990 to i8
  %2992 = and i8 %2991, 1
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2992, i8* %2993, align 1
  %2994 = icmp eq i64 %2975, 0
  %2995 = zext i1 %2994 to i8
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2995, i8* %2996, align 1
  %2997 = lshr i64 %2975, 63
  %2998 = trunc i64 %2997 to i8
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2998, i8* %2999, align 1
  %3000 = lshr i64 %2971, 63
  %3001 = lshr i64 %2972, 63
  %3002 = xor i64 %2997, %3000
  %3003 = xor i64 %2997, %3001
  %3004 = add i64 %3002, %3003
  %3005 = icmp eq i64 %3004, 2
  %3006 = zext i1 %3005 to i8
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3006, i8* %3007, align 1
  store %struct.Memory* %loadMem_492636, %struct.Memory** %MEMORY
  %loadMem_492639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 33
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3010 to i64*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 7
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %RDX.i248 = bitcast %union.anon* %3013 to i64*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 15
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %3016 to i64*
  %3017 = load i64, i64* %RBP.i249
  %3018 = sub i64 %3017, 4
  %3019 = load i64, i64* %PC.i247
  %3020 = add i64 %3019, 3
  store i64 %3020, i64* %PC.i247
  %3021 = inttoptr i64 %3018 to i32*
  %3022 = load i32, i32* %3021
  %3023 = zext i32 %3022 to i64
  store i64 %3023, i64* %RDX.i248, align 8
  store %struct.Memory* %loadMem_492639, %struct.Memory** %MEMORY
  %loadMem_49263c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 33
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3026 to i64*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 7
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %RDX.i246 = bitcast %union.anon* %3029 to i64*
  %3030 = load i64, i64* %RDX.i246
  %3031 = load i64, i64* %PC.i245
  %3032 = add i64 %3031, 3
  store i64 %3032, i64* %PC.i245
  %3033 = trunc i64 %3030 to i32
  %3034 = sub i32 %3033, 3
  %3035 = zext i32 %3034 to i64
  store i64 %3035, i64* %RDX.i246, align 8
  %3036 = icmp ult i32 %3033, 3
  %3037 = zext i1 %3036 to i8
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3037, i8* %3038, align 1
  %3039 = and i32 %3034, 255
  %3040 = call i32 @llvm.ctpop.i32(i32 %3039)
  %3041 = trunc i32 %3040 to i8
  %3042 = and i8 %3041, 1
  %3043 = xor i8 %3042, 1
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3043, i8* %3044, align 1
  %3045 = xor i64 3, %3030
  %3046 = trunc i64 %3045 to i32
  %3047 = xor i32 %3046, %3034
  %3048 = lshr i32 %3047, 4
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3050, i8* %3051, align 1
  %3052 = icmp eq i32 %3034, 0
  %3053 = zext i1 %3052 to i8
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3053, i8* %3054, align 1
  %3055 = lshr i32 %3034, 31
  %3056 = trunc i32 %3055 to i8
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3056, i8* %3057, align 1
  %3058 = lshr i32 %3033, 31
  %3059 = xor i32 %3055, %3058
  %3060 = add i32 %3059, %3058
  %3061 = icmp eq i32 %3060, 2
  %3062 = zext i1 %3061 to i8
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3062, i8* %3063, align 1
  store %struct.Memory* %loadMem_49263c, %struct.Memory** %MEMORY
  %loadMem_49263f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 33
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3066 to i64*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 7
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %EDX.i243 = bitcast %union.anon* %3069 to i32*
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 9
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %RSI.i244 = bitcast %union.anon* %3072 to i64*
  %3073 = load i32, i32* %EDX.i243
  %3074 = zext i32 %3073 to i64
  %3075 = load i64, i64* %PC.i242
  %3076 = add i64 %3075, 3
  store i64 %3076, i64* %PC.i242
  %3077 = shl i64 %3074, 32
  %3078 = ashr exact i64 %3077, 32
  store i64 %3078, i64* %RSI.i244, align 8
  store %struct.Memory* %loadMem_49263f, %struct.Memory** %MEMORY
  %loadMem_492642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 33
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3081 to i64*
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 9
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %RSI.i240 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 11
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RDI.i241 = bitcast %union.anon* %3087 to i64*
  %3088 = load i64, i64* %RDI.i241
  %3089 = load i64, i64* %RSI.i240
  %3090 = add i64 %3089, %3088
  %3091 = load i64, i64* %PC.i239
  %3092 = add i64 %3091, 4
  store i64 %3092, i64* %PC.i239
  %3093 = inttoptr i64 %3090 to i8*
  store i8 43, i8* %3093
  store %struct.Memory* %loadMem_492642, %struct.Memory** %MEMORY
  %loadMem_492646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 33
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 7
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %RDX.i237 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 15
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3102 to i64*
  %3103 = load i64, i64* %RBP.i238
  %3104 = sub i64 %3103, 4
  %3105 = load i64, i64* %PC.i236
  %3106 = add i64 %3105, 3
  store i64 %3106, i64* %PC.i236
  %3107 = inttoptr i64 %3104 to i32*
  %3108 = load i32, i32* %3107
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RDX.i237, align 8
  store %struct.Memory* %loadMem_492646, %struct.Memory** %MEMORY
  %loadMem_492649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 1
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %EAX.i234 = bitcast %union.anon* %3115 to i32*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 15
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %3118 to i64*
  %3119 = load i64, i64* %RBP.i235
  %3120 = sub i64 %3119, 16
  %3121 = load i32, i32* %EAX.i234
  %3122 = zext i32 %3121 to i64
  %3123 = load i64, i64* %PC.i233
  %3124 = add i64 %3123, 3
  store i64 %3124, i64* %PC.i233
  %3125 = inttoptr i64 %3120 to i32*
  store i32 %3121, i32* %3125
  store %struct.Memory* %loadMem_492649, %struct.Memory** %MEMORY
  %loadMem_49264c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 33
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3128 to i64*
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 7
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %EDX.i231 = bitcast %union.anon* %3131 to i32*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 1
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %3134 to i64*
  %3135 = load i32, i32* %EDX.i231
  %3136 = zext i32 %3135 to i64
  %3137 = load i64, i64* %PC.i230
  %3138 = add i64 %3137, 2
  store i64 %3138, i64* %PC.i230
  %3139 = and i64 %3136, 4294967295
  store i64 %3139, i64* %RAX.i232, align 8
  store %struct.Memory* %loadMem_49264c, %struct.Memory** %MEMORY
  %loadMem_49264e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3142 to i64*
  %3143 = load i64, i64* %PC.i229
  %3144 = add i64 %3143, 1
  store i64 %3144, i64* %PC.i229
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3147 = bitcast %union.anon* %3146 to i32*
  %3148 = load i32, i32* %3147, align 8
  %3149 = sext i32 %3148 to i64
  %3150 = lshr i64 %3149, 32
  store i64 %3150, i64* %3145, align 8
  store %struct.Memory* %loadMem_49264e, %struct.Memory** %MEMORY
  %loadMem_49264f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 33
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 17
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %R8D.i227 = bitcast %union.anon* %3156 to i32*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 15
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %3159 to i64*
  %3160 = bitcast i32* %R8D.i227 to i64*
  %3161 = load i64, i64* %RBP.i228
  %3162 = sub i64 %3161, 16
  %3163 = load i64, i64* %PC.i226
  %3164 = add i64 %3163, 4
  store i64 %3164, i64* %PC.i226
  %3165 = inttoptr i64 %3162 to i32*
  %3166 = load i32, i32* %3165
  %3167 = zext i32 %3166 to i64
  store i64 %3167, i64* %3160, align 8
  store %struct.Memory* %loadMem_49264f, %struct.Memory** %MEMORY
  %loadMem_492653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 33
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3170 to i64*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 17
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %R8D.i222 = bitcast %union.anon* %3173 to i32*
  %3174 = load i32, i32* %R8D.i222
  %3175 = zext i32 %3174 to i64
  %3176 = load i64, i64* %PC.i221
  %3177 = add i64 %3176, 3
  store i64 %3177, i64* %PC.i221
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3179 = bitcast %union.anon* %3178 to i32*
  %3180 = load i32, i32* %3179, align 8
  %3181 = zext i32 %3180 to i64
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3183 = bitcast %union.anon* %3182 to i32*
  %3184 = load i32, i32* %3183, align 8
  %3185 = zext i32 %3184 to i64
  %3186 = shl i64 %3175, 32
  %3187 = ashr exact i64 %3186, 32
  %3188 = shl i64 %3185, 32
  %3189 = or i64 %3188, %3181
  %3190 = sdiv i64 %3189, %3187
  %3191 = shl i64 %3190, 32
  %3192 = ashr exact i64 %3191, 32
  %3193 = icmp eq i64 %3190, %3192
  br i1 %3193, label %3198, label %3194

; <label>:3194:                                   ; preds = %block_4925e7
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3196 = load i64, i64* %3195, align 8
  %3197 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3196, %struct.Memory* %loadMem_492653)
  br label %routine_idivl__r8d.exit223

; <label>:3198:                                   ; preds = %block_4925e7
  %3199 = srem i64 %3189, %3187
  %3200 = getelementptr inbounds %union.anon, %union.anon* %3178, i64 0, i32 0
  %3201 = and i64 %3190, 4294967295
  store i64 %3201, i64* %3200, align 8
  %3202 = getelementptr inbounds %union.anon, %union.anon* %3182, i64 0, i32 0
  %3203 = and i64 %3199, 4294967295
  store i64 %3203, i64* %3202, align 8
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3204, align 1
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3205, align 1
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3206, align 1
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3207, align 1
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3208, align 1
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3209, align 1
  br label %routine_idivl__r8d.exit223

routine_idivl__r8d.exit223:                       ; preds = %3194, %3198
  %3210 = phi %struct.Memory* [ %3197, %3194 ], [ %loadMem_492653, %3198 ]
  store %struct.Memory* %3210, %struct.Memory** %MEMORY
  %loadMem_492656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 33
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 1
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %EAX.i219 = bitcast %union.anon* %3216 to i32*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 9
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RSI.i220 = bitcast %union.anon* %3219 to i64*
  %3220 = load i32, i32* %EAX.i219
  %3221 = zext i32 %3220 to i64
  %3222 = load i64, i64* %PC.i218
  %3223 = add i64 %3222, 3
  store i64 %3223, i64* %PC.i218
  %3224 = shl i64 %3221, 32
  %3225 = ashr exact i64 %3224, 32
  store i64 %3225, i64* %RSI.i220, align 8
  store %struct.Memory* %loadMem_492656, %struct.Memory** %MEMORY
  %loadMem_492659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 33
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 9
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %RSI.i217 = bitcast %union.anon* %3231 to i64*
  %3232 = load i64, i64* %RSI.i217
  %3233 = load i64, i64* %PC.i216
  %3234 = add i64 %3233, 4
  store i64 %3234, i64* %PC.i216
  %3235 = sext i64 %3232 to i128
  %3236 = and i128 %3235, -18446744073709551616
  %3237 = zext i64 %3232 to i128
  %3238 = or i128 %3236, %3237
  %3239 = mul i128 19, %3238
  %3240 = trunc i128 %3239 to i64
  store i64 %3240, i64* %RSI.i217, align 8
  %3241 = sext i64 %3240 to i128
  %3242 = icmp ne i128 %3241, %3239
  %3243 = zext i1 %3242 to i8
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3243, i8* %3244, align 1
  %3245 = trunc i128 %3239 to i32
  %3246 = and i32 %3245, 255
  %3247 = call i32 @llvm.ctpop.i32(i32 %3246)
  %3248 = trunc i32 %3247 to i8
  %3249 = and i8 %3248, 1
  %3250 = xor i8 %3249, 1
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3250, i8* %3251, align 1
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3252, align 1
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3253, align 1
  %3254 = lshr i64 %3240, 63
  %3255 = trunc i64 %3254 to i8
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3255, i8* %3256, align 1
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3243, i8* %3257, align 1
  store %struct.Memory* %loadMem_492659, %struct.Memory** %MEMORY
  %loadMem_49265d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 33
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 5
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %3263 to i64*
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 9
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %RSI.i215 = bitcast %union.anon* %3266 to i64*
  %3267 = load i64, i64* %RCX.i214
  %3268 = load i64, i64* %RSI.i215
  %3269 = load i64, i64* %PC.i213
  %3270 = add i64 %3269, 3
  store i64 %3270, i64* %PC.i213
  %3271 = add i64 %3268, %3267
  store i64 %3271, i64* %RCX.i214, align 8
  %3272 = icmp ult i64 %3271, %3267
  %3273 = icmp ult i64 %3271, %3268
  %3274 = or i1 %3272, %3273
  %3275 = zext i1 %3274 to i8
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3275, i8* %3276, align 1
  %3277 = trunc i64 %3271 to i32
  %3278 = and i32 %3277, 255
  %3279 = call i32 @llvm.ctpop.i32(i32 %3278)
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  %3282 = xor i8 %3281, 1
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3282, i8* %3283, align 1
  %3284 = xor i64 %3268, %3267
  %3285 = xor i64 %3284, %3271
  %3286 = lshr i64 %3285, 4
  %3287 = trunc i64 %3286 to i8
  %3288 = and i8 %3287, 1
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3288, i8* %3289, align 1
  %3290 = icmp eq i64 %3271, 0
  %3291 = zext i1 %3290 to i8
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3291, i8* %3292, align 1
  %3293 = lshr i64 %3271, 63
  %3294 = trunc i64 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3294, i8* %3295, align 1
  %3296 = lshr i64 %3267, 63
  %3297 = lshr i64 %3268, 63
  %3298 = xor i64 %3293, %3296
  %3299 = xor i64 %3293, %3297
  %3300 = add i64 %3298, %3299
  %3301 = icmp eq i64 %3300, 2
  %3302 = zext i1 %3301 to i8
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3302, i8* %3303, align 1
  store %struct.Memory* %loadMem_49265d, %struct.Memory** %MEMORY
  %loadMem_492660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 33
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 1
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %3309 to i64*
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 15
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %3312 to i64*
  %3313 = load i64, i64* %RBP.i212
  %3314 = sub i64 %3313, 4
  %3315 = load i64, i64* %PC.i210
  %3316 = add i64 %3315, 3
  store i64 %3316, i64* %PC.i210
  %3317 = inttoptr i64 %3314 to i32*
  %3318 = load i32, i32* %3317
  %3319 = zext i32 %3318 to i64
  store i64 %3319, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_492660, %struct.Memory** %MEMORY
  %loadMem_492663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 33
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3322 to i64*
  %3323 = load i64, i64* %PC.i209
  %3324 = add i64 %3323, 1
  store i64 %3324, i64* %PC.i209
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3327 = bitcast %union.anon* %3326 to i32*
  %3328 = load i32, i32* %3327, align 8
  %3329 = sext i32 %3328 to i64
  %3330 = lshr i64 %3329, 32
  store i64 %3330, i64* %3325, align 8
  store %struct.Memory* %loadMem_492663, %struct.Memory** %MEMORY
  %loadMem_492664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 33
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 17
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %R8D.i206 = bitcast %union.anon* %3336 to i32*
  %3337 = load i32, i32* %R8D.i206
  %3338 = zext i32 %3337 to i64
  %3339 = load i64, i64* %PC.i205
  %3340 = add i64 %3339, 3
  store i64 %3340, i64* %PC.i205
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3342 = bitcast %union.anon* %3341 to i32*
  %3343 = load i32, i32* %3342, align 8
  %3344 = zext i32 %3343 to i64
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3346 = bitcast %union.anon* %3345 to i32*
  %3347 = load i32, i32* %3346, align 8
  %3348 = zext i32 %3347 to i64
  %3349 = shl i64 %3338, 32
  %3350 = ashr exact i64 %3349, 32
  %3351 = shl i64 %3348, 32
  %3352 = or i64 %3351, %3344
  %3353 = sdiv i64 %3352, %3350
  %3354 = shl i64 %3353, 32
  %3355 = ashr exact i64 %3354, 32
  %3356 = icmp eq i64 %3353, %3355
  br i1 %3356, label %3361, label %3357

; <label>:3357:                                   ; preds = %routine_idivl__r8d.exit223
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3359 = load i64, i64* %3358, align 8
  %3360 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3359, %struct.Memory* %loadMem_492664)
  br label %routine_idivl__r8d.exit207

; <label>:3361:                                   ; preds = %routine_idivl__r8d.exit223
  %3362 = srem i64 %3352, %3350
  %3363 = getelementptr inbounds %union.anon, %union.anon* %3341, i64 0, i32 0
  %3364 = and i64 %3353, 4294967295
  store i64 %3364, i64* %3363, align 8
  %3365 = getelementptr inbounds %union.anon, %union.anon* %3345, i64 0, i32 0
  %3366 = and i64 %3362, 4294967295
  store i64 %3366, i64* %3365, align 8
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3367, align 1
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3368, align 1
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3369, align 1
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3370, align 1
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3371, align 1
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3372, align 1
  br label %routine_idivl__r8d.exit207

routine_idivl__r8d.exit207:                       ; preds = %3357, %3361
  %3373 = phi %struct.Memory* [ %3360, %3357 ], [ %loadMem_492664, %3361 ]
  store %struct.Memory* %3373, %struct.Memory** %MEMORY
  %loadMem_492667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 33
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3376 to i64*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 1
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %EAX.i203 = bitcast %union.anon* %3379 to i32*
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 9
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %RSI.i204 = bitcast %union.anon* %3382 to i64*
  %3383 = load i32, i32* %EAX.i203
  %3384 = zext i32 %3383 to i64
  %3385 = load i64, i64* %PC.i202
  %3386 = add i64 %3385, 3
  store i64 %3386, i64* %PC.i202
  %3387 = shl i64 %3384, 32
  %3388 = ashr exact i64 %3387, 32
  store i64 %3388, i64* %RSI.i204, align 8
  store %struct.Memory* %loadMem_492667, %struct.Memory** %MEMORY
  %loadMem_49266a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 5
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 9
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RSI.i201 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %RCX.i200
  %3399 = load i64, i64* %RSI.i201
  %3400 = add i64 %3399, %3398
  %3401 = load i64, i64* %PC.i199
  %3402 = add i64 %3401, 4
  store i64 %3402, i64* %PC.i199
  %3403 = inttoptr i64 %3400 to i8*
  store i8 43, i8* %3403
  store %struct.Memory* %loadMem_49266a, %struct.Memory** %MEMORY
  %loadMem_49266e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 33
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3406 to i64*
  %3407 = load i64, i64* %PC.i198
  %3408 = add i64 %3407, 248
  %3409 = load i64, i64* %PC.i198
  %3410 = add i64 %3409, 5
  store i64 %3410, i64* %PC.i198
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3408, i64* %3411, align 8
  store %struct.Memory* %loadMem_49266e, %struct.Memory** %MEMORY
  br label %block_.L_492766

block_.L_492673:                                  ; preds = %block_4925dd, %block_.L_4925d3
  %loadMem_492673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 33
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3414 to i64*
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 1
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %3417 to i64*
  %3418 = load i64, i64* %PC.i196
  %3419 = add i64 %3418, 5
  store i64 %3419, i64* %PC.i196
  store i64 2, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_492673, %struct.Memory** %MEMORY
  %loadMem_492678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 33
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3422 to i64*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 5
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %3425 to i64*
  %3426 = load i64, i64* %PC.i194
  %3427 = add i64 %3426, 10
  store i64 %3427, i64* %PC.i194
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RCX.i195, align 8
  store %struct.Memory* %loadMem_492678, %struct.Memory** %MEMORY
  %loadMem_492682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 33
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3430 to i64*
  %3431 = load i64, i64* %PC.i193
  %3432 = add i64 %3431, 8
  store i64 %3432, i64* %PC.i193
  store i8 43, i8* getelementptr inbounds (%G_0xaf279c_type, %G_0xaf279c_type* @G_0xaf279c, i32 0, i32 0, i32 0)
  store %struct.Memory* %loadMem_492682, %struct.Memory** %MEMORY
  %loadMem_49268a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 33
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 7
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %RDX.i191 = bitcast %union.anon* %3438 to i64*
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 15
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %3441 to i64*
  %3442 = load i64, i64* %RBP.i192
  %3443 = sub i64 %3442, 4
  %3444 = load i64, i64* %PC.i190
  %3445 = add i64 %3444, 3
  store i64 %3445, i64* %PC.i190
  %3446 = inttoptr i64 %3443 to i32*
  %3447 = load i32, i32* %3446
  %3448 = zext i32 %3447 to i64
  store i64 %3448, i64* %RDX.i191, align 8
  store %struct.Memory* %loadMem_49268a, %struct.Memory** %MEMORY
  %loadMem_49268d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 33
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 7
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %RDX.i189 = bitcast %union.anon* %3454 to i64*
  %3455 = load i64, i64* %RDX.i189
  %3456 = load i64, i64* %PC.i188
  %3457 = add i64 %3456, 3
  store i64 %3457, i64* %PC.i188
  %3458 = trunc i64 %3455 to i32
  %3459 = sub i32 %3458, 4
  %3460 = zext i32 %3459 to i64
  store i64 %3460, i64* %RDX.i189, align 8
  %3461 = icmp ult i32 %3458, 4
  %3462 = zext i1 %3461 to i8
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3462, i8* %3463, align 1
  %3464 = and i32 %3459, 255
  %3465 = call i32 @llvm.ctpop.i32(i32 %3464)
  %3466 = trunc i32 %3465 to i8
  %3467 = and i8 %3466, 1
  %3468 = xor i8 %3467, 1
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3468, i8* %3469, align 1
  %3470 = xor i64 4, %3455
  %3471 = trunc i64 %3470 to i32
  %3472 = xor i32 %3471, %3459
  %3473 = lshr i32 %3472, 4
  %3474 = trunc i32 %3473 to i8
  %3475 = and i8 %3474, 1
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3475, i8* %3476, align 1
  %3477 = icmp eq i32 %3459, 0
  %3478 = zext i1 %3477 to i8
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3478, i8* %3479, align 1
  %3480 = lshr i32 %3459, 31
  %3481 = trunc i32 %3480 to i8
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3481, i8* %3482, align 1
  %3483 = lshr i32 %3458, 31
  %3484 = xor i32 %3480, %3483
  %3485 = add i32 %3484, %3483
  %3486 = icmp eq i32 %3485, 2
  %3487 = zext i1 %3486 to i8
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3487, i8* %3488, align 1
  store %struct.Memory* %loadMem_49268d, %struct.Memory** %MEMORY
  %loadMem_492690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 33
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 7
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %EDX.i186 = bitcast %union.anon* %3494 to i32*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 9
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %RSI.i187 = bitcast %union.anon* %3497 to i64*
  %3498 = load i32, i32* %EDX.i186
  %3499 = zext i32 %3498 to i64
  %3500 = load i64, i64* %PC.i185
  %3501 = add i64 %3500, 3
  store i64 %3501, i64* %PC.i185
  %3502 = shl i64 %3499, 32
  %3503 = ashr exact i64 %3502, 32
  store i64 %3503, i64* %RSI.i187, align 8
  store %struct.Memory* %loadMem_492690, %struct.Memory** %MEMORY
  %loadMem_492693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 33
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %3506 to i64*
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 9
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %RSI.i184 = bitcast %union.anon* %3509 to i64*
  %3510 = load i64, i64* %RSI.i184
  %3511 = load i64, i64* %PC.i183
  %3512 = add i64 %3511, 4
  store i64 %3512, i64* %PC.i183
  %3513 = sext i64 %3510 to i128
  %3514 = and i128 %3513, -18446744073709551616
  %3515 = zext i64 %3510 to i128
  %3516 = or i128 %3514, %3515
  %3517 = mul i128 19, %3516
  %3518 = trunc i128 %3517 to i64
  store i64 %3518, i64* %RSI.i184, align 8
  %3519 = sext i64 %3518 to i128
  %3520 = icmp ne i128 %3519, %3517
  %3521 = zext i1 %3520 to i8
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3521, i8* %3522, align 1
  %3523 = trunc i128 %3517 to i32
  %3524 = and i32 %3523, 255
  %3525 = call i32 @llvm.ctpop.i32(i32 %3524)
  %3526 = trunc i32 %3525 to i8
  %3527 = and i8 %3526, 1
  %3528 = xor i8 %3527, 1
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3528, i8* %3529, align 1
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3530, align 1
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3531, align 1
  %3532 = lshr i64 %3518, 63
  %3533 = trunc i64 %3532 to i8
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3533, i8* %3534, align 1
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3521, i8* %3535, align 1
  store %struct.Memory* %loadMem_492693, %struct.Memory** %MEMORY
  %loadMem_492697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 33
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3538 to i64*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 5
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 11
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %RDI.i182 = bitcast %union.anon* %3544 to i64*
  %3545 = load i64, i64* %RCX.i181
  %3546 = load i64, i64* %PC.i180
  %3547 = add i64 %3546, 3
  store i64 %3547, i64* %PC.i180
  store i64 %3545, i64* %RDI.i182, align 8
  store %struct.Memory* %loadMem_492697, %struct.Memory** %MEMORY
  %loadMem_49269a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 9
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %RSI.i178 = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 11
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %RDI.i179 = bitcast %union.anon* %3556 to i64*
  %3557 = load i64, i64* %RDI.i179
  %3558 = load i64, i64* %RSI.i178
  %3559 = load i64, i64* %PC.i177
  %3560 = add i64 %3559, 3
  store i64 %3560, i64* %PC.i177
  %3561 = add i64 %3558, %3557
  store i64 %3561, i64* %RDI.i179, align 8
  %3562 = icmp ult i64 %3561, %3557
  %3563 = icmp ult i64 %3561, %3558
  %3564 = or i1 %3562, %3563
  %3565 = zext i1 %3564 to i8
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3565, i8* %3566, align 1
  %3567 = trunc i64 %3561 to i32
  %3568 = and i32 %3567, 255
  %3569 = call i32 @llvm.ctpop.i32(i32 %3568)
  %3570 = trunc i32 %3569 to i8
  %3571 = and i8 %3570, 1
  %3572 = xor i8 %3571, 1
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3572, i8* %3573, align 1
  %3574 = xor i64 %3558, %3557
  %3575 = xor i64 %3574, %3561
  %3576 = lshr i64 %3575, 4
  %3577 = trunc i64 %3576 to i8
  %3578 = and i8 %3577, 1
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3578, i8* %3579, align 1
  %3580 = icmp eq i64 %3561, 0
  %3581 = zext i1 %3580 to i8
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3581, i8* %3582, align 1
  %3583 = lshr i64 %3561, 63
  %3584 = trunc i64 %3583 to i8
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3584, i8* %3585, align 1
  %3586 = lshr i64 %3557, 63
  %3587 = lshr i64 %3558, 63
  %3588 = xor i64 %3583, %3586
  %3589 = xor i64 %3583, %3587
  %3590 = add i64 %3588, %3589
  %3591 = icmp eq i64 %3590, 2
  %3592 = zext i1 %3591 to i8
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3592, i8* %3593, align 1
  store %struct.Memory* %loadMem_49269a, %struct.Memory** %MEMORY
  %loadMem_49269d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 11
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RDI.i176 = bitcast %union.anon* %3599 to i64*
  %3600 = load i64, i64* %RDI.i176
  %3601 = add i64 %3600, 3
  %3602 = load i64, i64* %PC.i175
  %3603 = add i64 %3602, 4
  store i64 %3603, i64* %PC.i175
  %3604 = inttoptr i64 %3601 to i8*
  store i8 43, i8* %3604
  store %struct.Memory* %loadMem_49269d, %struct.Memory** %MEMORY
  %loadMem_4926a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3606 = getelementptr inbounds %struct.GPR, %struct.GPR* %3605, i32 0, i32 33
  %3607 = getelementptr inbounds %struct.Reg, %struct.Reg* %3606, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3607 to i64*
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 7
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %RDX.i173 = bitcast %union.anon* %3610 to i64*
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 15
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %3613 to i64*
  %3614 = load i64, i64* %RBP.i174
  %3615 = sub i64 %3614, 4
  %3616 = load i64, i64* %PC.i172
  %3617 = add i64 %3616, 3
  store i64 %3617, i64* %PC.i172
  %3618 = inttoptr i64 %3615 to i32*
  %3619 = load i32, i32* %3618
  %3620 = zext i32 %3619 to i64
  store i64 %3620, i64* %RDX.i173, align 8
  store %struct.Memory* %loadMem_4926a1, %struct.Memory** %MEMORY
  %loadMem_4926a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 33
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3623 to i64*
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 7
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %RDX.i171 = bitcast %union.anon* %3626 to i64*
  %3627 = load i64, i64* %RDX.i171
  %3628 = load i64, i64* %PC.i170
  %3629 = add i64 %3628, 3
  store i64 %3629, i64* %PC.i170
  %3630 = trunc i64 %3627 to i32
  %3631 = sub i32 %3630, 4
  %3632 = zext i32 %3631 to i64
  store i64 %3632, i64* %RDX.i171, align 8
  %3633 = icmp ult i32 %3630, 4
  %3634 = zext i1 %3633 to i8
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3634, i8* %3635, align 1
  %3636 = and i32 %3631, 255
  %3637 = call i32 @llvm.ctpop.i32(i32 %3636)
  %3638 = trunc i32 %3637 to i8
  %3639 = and i8 %3638, 1
  %3640 = xor i8 %3639, 1
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3640, i8* %3641, align 1
  %3642 = xor i64 4, %3627
  %3643 = trunc i64 %3642 to i32
  %3644 = xor i32 %3643, %3631
  %3645 = lshr i32 %3644, 4
  %3646 = trunc i32 %3645 to i8
  %3647 = and i8 %3646, 1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3647, i8* %3648, align 1
  %3649 = icmp eq i32 %3631, 0
  %3650 = zext i1 %3649 to i8
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3650, i8* %3651, align 1
  %3652 = lshr i32 %3631, 31
  %3653 = trunc i32 %3652 to i8
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3653, i8* %3654, align 1
  %3655 = lshr i32 %3630, 31
  %3656 = xor i32 %3652, %3655
  %3657 = add i32 %3656, %3655
  %3658 = icmp eq i32 %3657, 2
  %3659 = zext i1 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3659, i8* %3660, align 1
  store %struct.Memory* %loadMem_4926a4, %struct.Memory** %MEMORY
  %loadMem_4926a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 33
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3663 to i64*
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 7
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %EDX.i168 = bitcast %union.anon* %3666 to i32*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 9
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %RSI.i169 = bitcast %union.anon* %3669 to i64*
  %3670 = load i32, i32* %EDX.i168
  %3671 = zext i32 %3670 to i64
  %3672 = load i64, i64* %PC.i167
  %3673 = add i64 %3672, 3
  store i64 %3673, i64* %PC.i167
  %3674 = shl i64 %3671, 32
  %3675 = ashr exact i64 %3674, 32
  store i64 %3675, i64* %RSI.i169, align 8
  store %struct.Memory* %loadMem_4926a7, %struct.Memory** %MEMORY
  %loadMem_4926aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 33
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %3678 to i64*
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 9
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %RSI.i166 = bitcast %union.anon* %3681 to i64*
  %3682 = load i64, i64* %RSI.i166
  %3683 = add i64 %3682, 11478937
  %3684 = load i64, i64* %PC.i165
  %3685 = add i64 %3684, 8
  store i64 %3685, i64* %PC.i165
  %3686 = inttoptr i64 %3683 to i8*
  store i8 43, i8* %3686
  store %struct.Memory* %loadMem_4926aa, %struct.Memory** %MEMORY
  %loadMem_4926b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 33
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 7
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RDX.i163 = bitcast %union.anon* %3692 to i64*
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 15
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %3695 to i64*
  %3696 = load i64, i64* %RBP.i164
  %3697 = sub i64 %3696, 4
  %3698 = load i64, i64* %PC.i162
  %3699 = add i64 %3698, 3
  store i64 %3699, i64* %PC.i162
  %3700 = inttoptr i64 %3697 to i32*
  %3701 = load i32, i32* %3700
  %3702 = zext i32 %3701 to i64
  store i64 %3702, i64* %RDX.i163, align 8
  store %struct.Memory* %loadMem_4926b2, %struct.Memory** %MEMORY
  %loadMem_4926b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 33
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 7
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RDX.i161 = bitcast %union.anon* %3708 to i64*
  %3709 = load i64, i64* %RDX.i161
  %3710 = load i64, i64* %PC.i160
  %3711 = add i64 %3710, 3
  store i64 %3711, i64* %PC.i160
  %3712 = trunc i64 %3709 to i32
  %3713 = sub i32 %3712, 4
  %3714 = zext i32 %3713 to i64
  store i64 %3714, i64* %RDX.i161, align 8
  %3715 = icmp ult i32 %3712, 4
  %3716 = zext i1 %3715 to i8
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3716, i8* %3717, align 1
  %3718 = and i32 %3713, 255
  %3719 = call i32 @llvm.ctpop.i32(i32 %3718)
  %3720 = trunc i32 %3719 to i8
  %3721 = and i8 %3720, 1
  %3722 = xor i8 %3721, 1
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3722, i8* %3723, align 1
  %3724 = xor i64 4, %3709
  %3725 = trunc i64 %3724 to i32
  %3726 = xor i32 %3725, %3713
  %3727 = lshr i32 %3726, 4
  %3728 = trunc i32 %3727 to i8
  %3729 = and i8 %3728, 1
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3729, i8* %3730, align 1
  %3731 = icmp eq i32 %3713, 0
  %3732 = zext i1 %3731 to i8
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3732, i8* %3733, align 1
  %3734 = lshr i32 %3713, 31
  %3735 = trunc i32 %3734 to i8
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3735, i8* %3736, align 1
  %3737 = lshr i32 %3712, 31
  %3738 = xor i32 %3734, %3737
  %3739 = add i32 %3738, %3737
  %3740 = icmp eq i32 %3739, 2
  %3741 = zext i1 %3740 to i8
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3741, i8* %3742, align 1
  store %struct.Memory* %loadMem_4926b5, %struct.Memory** %MEMORY
  %loadMem_4926b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 33
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3745 to i64*
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 7
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %EDX.i158 = bitcast %union.anon* %3748 to i32*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 9
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %RSI.i159 = bitcast %union.anon* %3751 to i64*
  %3752 = load i32, i32* %EDX.i158
  %3753 = zext i32 %3752 to i64
  %3754 = load i64, i64* %PC.i157
  %3755 = add i64 %3754, 3
  store i64 %3755, i64* %PC.i157
  %3756 = shl i64 %3753, 32
  %3757 = ashr exact i64 %3756, 32
  store i64 %3757, i64* %RSI.i159, align 8
  store %struct.Memory* %loadMem_4926b8, %struct.Memory** %MEMORY
  %loadMem_4926bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 33
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3760 to i64*
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 9
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %RSI.i156 = bitcast %union.anon* %3763 to i64*
  %3764 = load i64, i64* %RSI.i156
  %3765 = load i64, i64* %PC.i155
  %3766 = add i64 %3765, 4
  store i64 %3766, i64* %PC.i155
  %3767 = sext i64 %3764 to i128
  %3768 = and i128 %3767, -18446744073709551616
  %3769 = zext i64 %3764 to i128
  %3770 = or i128 %3768, %3769
  %3771 = mul i128 19, %3770
  %3772 = trunc i128 %3771 to i64
  store i64 %3772, i64* %RSI.i156, align 8
  %3773 = sext i64 %3772 to i128
  %3774 = icmp ne i128 %3773, %3771
  %3775 = zext i1 %3774 to i8
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3775, i8* %3776, align 1
  %3777 = trunc i128 %3771 to i32
  %3778 = and i32 %3777, 255
  %3779 = call i32 @llvm.ctpop.i32(i32 %3778)
  %3780 = trunc i32 %3779 to i8
  %3781 = and i8 %3780, 1
  %3782 = xor i8 %3781, 1
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3782, i8* %3783, align 1
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3784, align 1
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3785, align 1
  %3786 = lshr i64 %3772, 63
  %3787 = trunc i64 %3786 to i8
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3787, i8* %3788, align 1
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3775, i8* %3789, align 1
  store %struct.Memory* %loadMem_4926bb, %struct.Memory** %MEMORY
  %loadMem_4926bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 33
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3792 to i64*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 5
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %3795 to i64*
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 11
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %RDI.i154 = bitcast %union.anon* %3798 to i64*
  %3799 = load i64, i64* %RCX.i153
  %3800 = load i64, i64* %PC.i152
  %3801 = add i64 %3800, 3
  store i64 %3801, i64* %PC.i152
  store i64 %3799, i64* %RDI.i154, align 8
  store %struct.Memory* %loadMem_4926bf, %struct.Memory** %MEMORY
  %loadMem_4926c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 33
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3804 to i64*
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 9
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %RSI.i150 = bitcast %union.anon* %3807 to i64*
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 11
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %RDI.i151 = bitcast %union.anon* %3810 to i64*
  %3811 = load i64, i64* %RDI.i151
  %3812 = load i64, i64* %RSI.i150
  %3813 = load i64, i64* %PC.i149
  %3814 = add i64 %3813, 3
  store i64 %3814, i64* %PC.i149
  %3815 = add i64 %3812, %3811
  store i64 %3815, i64* %RDI.i151, align 8
  %3816 = icmp ult i64 %3815, %3811
  %3817 = icmp ult i64 %3815, %3812
  %3818 = or i1 %3816, %3817
  %3819 = zext i1 %3818 to i8
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3819, i8* %3820, align 1
  %3821 = trunc i64 %3815 to i32
  %3822 = and i32 %3821, 255
  %3823 = call i32 @llvm.ctpop.i32(i32 %3822)
  %3824 = trunc i32 %3823 to i8
  %3825 = and i8 %3824, 1
  %3826 = xor i8 %3825, 1
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3826, i8* %3827, align 1
  %3828 = xor i64 %3812, %3811
  %3829 = xor i64 %3828, %3815
  %3830 = lshr i64 %3829, 4
  %3831 = trunc i64 %3830 to i8
  %3832 = and i8 %3831, 1
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3832, i8* %3833, align 1
  %3834 = icmp eq i64 %3815, 0
  %3835 = zext i1 %3834 to i8
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3835, i8* %3836, align 1
  %3837 = lshr i64 %3815, 63
  %3838 = trunc i64 %3837 to i8
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3838, i8* %3839, align 1
  %3840 = lshr i64 %3811, 63
  %3841 = lshr i64 %3812, 63
  %3842 = xor i64 %3837, %3840
  %3843 = xor i64 %3837, %3841
  %3844 = add i64 %3842, %3843
  %3845 = icmp eq i64 %3844, 2
  %3846 = zext i1 %3845 to i8
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3846, i8* %3847, align 1
  store %struct.Memory* %loadMem_4926c2, %struct.Memory** %MEMORY
  %loadMem_4926c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 33
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3850 to i64*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 7
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %RDX.i147 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 15
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %3856 to i64*
  %3857 = load i64, i64* %RBP.i148
  %3858 = sub i64 %3857, 4
  %3859 = load i64, i64* %PC.i146
  %3860 = add i64 %3859, 3
  store i64 %3860, i64* %PC.i146
  %3861 = inttoptr i64 %3858 to i32*
  %3862 = load i32, i32* %3861
  %3863 = zext i32 %3862 to i64
  store i64 %3863, i64* %RDX.i147, align 8
  store %struct.Memory* %loadMem_4926c5, %struct.Memory** %MEMORY
  %loadMem_4926c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 33
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3866 to i64*
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 7
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %RDX.i145 = bitcast %union.anon* %3869 to i64*
  %3870 = load i64, i64* %RDX.i145
  %3871 = load i64, i64* %PC.i144
  %3872 = add i64 %3871, 3
  store i64 %3872, i64* %PC.i144
  %3873 = trunc i64 %3870 to i32
  %3874 = sub i32 %3873, 4
  %3875 = zext i32 %3874 to i64
  store i64 %3875, i64* %RDX.i145, align 8
  %3876 = icmp ult i32 %3873, 4
  %3877 = zext i1 %3876 to i8
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3877, i8* %3878, align 1
  %3879 = and i32 %3874, 255
  %3880 = call i32 @llvm.ctpop.i32(i32 %3879)
  %3881 = trunc i32 %3880 to i8
  %3882 = and i8 %3881, 1
  %3883 = xor i8 %3882, 1
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3883, i8* %3884, align 1
  %3885 = xor i64 4, %3870
  %3886 = trunc i64 %3885 to i32
  %3887 = xor i32 %3886, %3874
  %3888 = lshr i32 %3887, 4
  %3889 = trunc i32 %3888 to i8
  %3890 = and i8 %3889, 1
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3890, i8* %3891, align 1
  %3892 = icmp eq i32 %3874, 0
  %3893 = zext i1 %3892 to i8
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3893, i8* %3894, align 1
  %3895 = lshr i32 %3874, 31
  %3896 = trunc i32 %3895 to i8
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3896, i8* %3897, align 1
  %3898 = lshr i32 %3873, 31
  %3899 = xor i32 %3895, %3898
  %3900 = add i32 %3899, %3898
  %3901 = icmp eq i32 %3900, 2
  %3902 = zext i1 %3901 to i8
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3902, i8* %3903, align 1
  store %struct.Memory* %loadMem_4926c8, %struct.Memory** %MEMORY
  %loadMem_4926cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 7
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %EDX.i142 = bitcast %union.anon* %3909 to i32*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 9
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %RSI.i143 = bitcast %union.anon* %3912 to i64*
  %3913 = load i32, i32* %EDX.i142
  %3914 = zext i32 %3913 to i64
  %3915 = load i64, i64* %PC.i141
  %3916 = add i64 %3915, 3
  store i64 %3916, i64* %PC.i141
  %3917 = shl i64 %3914, 32
  %3918 = ashr exact i64 %3917, 32
  store i64 %3918, i64* %RSI.i143, align 8
  store %struct.Memory* %loadMem_4926cb, %struct.Memory** %MEMORY
  %loadMem_4926ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3920 = getelementptr inbounds %struct.GPR, %struct.GPR* %3919, i32 0, i32 33
  %3921 = getelementptr inbounds %struct.Reg, %struct.Reg* %3920, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3921 to i64*
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3923 = getelementptr inbounds %struct.GPR, %struct.GPR* %3922, i32 0, i32 9
  %3924 = getelementptr inbounds %struct.Reg, %struct.Reg* %3923, i32 0, i32 0
  %RSI.i139 = bitcast %union.anon* %3924 to i64*
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3926 = getelementptr inbounds %struct.GPR, %struct.GPR* %3925, i32 0, i32 11
  %3927 = getelementptr inbounds %struct.Reg, %struct.Reg* %3926, i32 0, i32 0
  %RDI.i140 = bitcast %union.anon* %3927 to i64*
  %3928 = load i64, i64* %RDI.i140
  %3929 = load i64, i64* %RSI.i139
  %3930 = add i64 %3929, %3928
  %3931 = load i64, i64* %PC.i138
  %3932 = add i64 %3931, 4
  store i64 %3932, i64* %PC.i138
  %3933 = inttoptr i64 %3930 to i8*
  store i8 43, i8* %3933
  store %struct.Memory* %loadMem_4926ce, %struct.Memory** %MEMORY
  %loadMem_4926d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 33
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3936 to i64*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 7
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3939 to i64*
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 15
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %3942 to i64*
  %3943 = load i64, i64* %RBP.i137
  %3944 = sub i64 %3943, 4
  %3945 = load i64, i64* %PC.i136
  %3946 = add i64 %3945, 3
  store i64 %3946, i64* %PC.i136
  %3947 = inttoptr i64 %3944 to i32*
  %3948 = load i32, i32* %3947
  %3949 = zext i32 %3948 to i64
  store i64 %3949, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4926d2, %struct.Memory** %MEMORY
  %loadMem_4926d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 33
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3952 to i64*
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 1
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %EAX.i134 = bitcast %union.anon* %3955 to i32*
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 15
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %3958 to i64*
  %3959 = load i64, i64* %RBP.i135
  %3960 = sub i64 %3959, 20
  %3961 = load i32, i32* %EAX.i134
  %3962 = zext i32 %3961 to i64
  %3963 = load i64, i64* %PC.i133
  %3964 = add i64 %3963, 3
  store i64 %3964, i64* %PC.i133
  %3965 = inttoptr i64 %3960 to i32*
  store i32 %3961, i32* %3965
  store %struct.Memory* %loadMem_4926d5, %struct.Memory** %MEMORY
  %loadMem_4926d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 33
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3968 to i64*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 7
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3971 to i32*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 1
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %3974 to i64*
  %3975 = load i32, i32* %EDX.i
  %3976 = zext i32 %3975 to i64
  %3977 = load i64, i64* %PC.i131
  %3978 = add i64 %3977, 2
  store i64 %3978, i64* %PC.i131
  %3979 = and i64 %3976, 4294967295
  store i64 %3979, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_4926d8, %struct.Memory** %MEMORY
  %loadMem_4926da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 33
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3982 to i64*
  %3983 = load i64, i64* %PC.i130
  %3984 = add i64 %3983, 1
  store i64 %3984, i64* %PC.i130
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3987 = bitcast %union.anon* %3986 to i32*
  %3988 = load i32, i32* %3987, align 8
  %3989 = sext i32 %3988 to i64
  %3990 = lshr i64 %3989, 32
  store i64 %3990, i64* %3985, align 8
  store %struct.Memory* %loadMem_4926da, %struct.Memory** %MEMORY
  %loadMem_4926db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 33
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 17
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %R8D.i128 = bitcast %union.anon* %3996 to i32*
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 15
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %3999 to i64*
  %4000 = bitcast i32* %R8D.i128 to i64*
  %4001 = load i64, i64* %RBP.i129
  %4002 = sub i64 %4001, 20
  %4003 = load i64, i64* %PC.i127
  %4004 = add i64 %4003, 4
  store i64 %4004, i64* %PC.i127
  %4005 = inttoptr i64 %4002 to i32*
  %4006 = load i32, i32* %4005
  %4007 = zext i32 %4006 to i64
  store i64 %4007, i64* %4000, align 8
  store %struct.Memory* %loadMem_4926db, %struct.Memory** %MEMORY
  %loadMem_4926df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 33
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 17
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %R8D.i124 = bitcast %union.anon* %4013 to i32*
  %4014 = load i32, i32* %R8D.i124
  %4015 = zext i32 %4014 to i64
  %4016 = load i64, i64* %PC.i123
  %4017 = add i64 %4016, 3
  store i64 %4017, i64* %PC.i123
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4019 = bitcast %union.anon* %4018 to i32*
  %4020 = load i32, i32* %4019, align 8
  %4021 = zext i32 %4020 to i64
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4023 = bitcast %union.anon* %4022 to i32*
  %4024 = load i32, i32* %4023, align 8
  %4025 = zext i32 %4024 to i64
  %4026 = shl i64 %4015, 32
  %4027 = ashr exact i64 %4026, 32
  %4028 = shl i64 %4025, 32
  %4029 = or i64 %4028, %4021
  %4030 = sdiv i64 %4029, %4027
  %4031 = shl i64 %4030, 32
  %4032 = ashr exact i64 %4031, 32
  %4033 = icmp eq i64 %4030, %4032
  br i1 %4033, label %4038, label %4034

; <label>:4034:                                   ; preds = %block_.L_492673
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4036 = load i64, i64* %4035, align 8
  %4037 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4036, %struct.Memory* %loadMem_4926df)
  br label %routine_idivl__r8d.exit125

; <label>:4038:                                   ; preds = %block_.L_492673
  %4039 = srem i64 %4029, %4027
  %4040 = getelementptr inbounds %union.anon, %union.anon* %4018, i64 0, i32 0
  %4041 = and i64 %4030, 4294967295
  store i64 %4041, i64* %4040, align 8
  %4042 = getelementptr inbounds %union.anon, %union.anon* %4022, i64 0, i32 0
  %4043 = and i64 %4039, 4294967295
  store i64 %4043, i64* %4042, align 8
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4044, align 1
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4045, align 1
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4046, align 1
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4047, align 1
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4048, align 1
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4049, align 1
  br label %routine_idivl__r8d.exit125

routine_idivl__r8d.exit125:                       ; preds = %4034, %4038
  %4050 = phi %struct.Memory* [ %4037, %4034 ], [ %loadMem_4926df, %4038 ]
  store %struct.Memory* %4050, %struct.Memory** %MEMORY
  %loadMem_4926e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 33
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4053 to i64*
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 1
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %EAX.i121 = bitcast %union.anon* %4056 to i32*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 9
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RSI.i122 = bitcast %union.anon* %4059 to i64*
  %4060 = load i32, i32* %EAX.i121
  %4061 = zext i32 %4060 to i64
  %4062 = load i64, i64* %PC.i120
  %4063 = add i64 %4062, 3
  store i64 %4063, i64* %PC.i120
  %4064 = shl i64 %4061, 32
  %4065 = ashr exact i64 %4064, 32
  store i64 %4065, i64* %RSI.i122, align 8
  store %struct.Memory* %loadMem_4926e2, %struct.Memory** %MEMORY
  %loadMem_4926e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 33
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4068 to i64*
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 9
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %RSI.i119 = bitcast %union.anon* %4071 to i64*
  %4072 = load i64, i64* %RSI.i119
  %4073 = add i64 %4072, 11478937
  %4074 = load i64, i64* %PC.i118
  %4075 = add i64 %4074, 8
  store i64 %4075, i64* %PC.i118
  %4076 = inttoptr i64 %4073 to i8*
  store i8 43, i8* %4076
  store %struct.Memory* %loadMem_4926e5, %struct.Memory** %MEMORY
  %loadMem_4926ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 33
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 1
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %4082 to i64*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 15
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %4085 to i64*
  %4086 = load i64, i64* %RBP.i117
  %4087 = sub i64 %4086, 4
  %4088 = load i64, i64* %PC.i115
  %4089 = add i64 %4088, 3
  store i64 %4089, i64* %PC.i115
  %4090 = inttoptr i64 %4087 to i32*
  %4091 = load i32, i32* %4090
  %4092 = zext i32 %4091 to i64
  store i64 %4092, i64* %RAX.i116, align 8
  store %struct.Memory* %loadMem_4926ed, %struct.Memory** %MEMORY
  %loadMem_4926f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 33
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4095 to i64*
  %4096 = load i64, i64* %PC.i114
  %4097 = add i64 %4096, 1
  store i64 %4097, i64* %PC.i114
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4100 = bitcast %union.anon* %4099 to i32*
  %4101 = load i32, i32* %4100, align 8
  %4102 = sext i32 %4101 to i64
  %4103 = lshr i64 %4102, 32
  store i64 %4103, i64* %4098, align 8
  store %struct.Memory* %loadMem_4926f0, %struct.Memory** %MEMORY
  %loadMem_4926f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 33
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 17
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %R8D.i109 = bitcast %union.anon* %4109 to i32*
  %4110 = load i32, i32* %R8D.i109
  %4111 = zext i32 %4110 to i64
  %4112 = load i64, i64* %PC.i108
  %4113 = add i64 %4112, 3
  store i64 %4113, i64* %PC.i108
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4115 = bitcast %union.anon* %4114 to i32*
  %4116 = load i32, i32* %4115, align 8
  %4117 = zext i32 %4116 to i64
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4119 = bitcast %union.anon* %4118 to i32*
  %4120 = load i32, i32* %4119, align 8
  %4121 = zext i32 %4120 to i64
  %4122 = shl i64 %4111, 32
  %4123 = ashr exact i64 %4122, 32
  %4124 = shl i64 %4121, 32
  %4125 = or i64 %4124, %4117
  %4126 = sdiv i64 %4125, %4123
  %4127 = shl i64 %4126, 32
  %4128 = ashr exact i64 %4127, 32
  %4129 = icmp eq i64 %4126, %4128
  br i1 %4129, label %4134, label %4130

; <label>:4130:                                   ; preds = %routine_idivl__r8d.exit125
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4132 = load i64, i64* %4131, align 8
  %4133 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4132, %struct.Memory* %loadMem_4926f1)
  br label %routine_idivl__r8d.exit110

; <label>:4134:                                   ; preds = %routine_idivl__r8d.exit125
  %4135 = srem i64 %4125, %4123
  %4136 = getelementptr inbounds %union.anon, %union.anon* %4114, i64 0, i32 0
  %4137 = and i64 %4126, 4294967295
  store i64 %4137, i64* %4136, align 8
  %4138 = getelementptr inbounds %union.anon, %union.anon* %4118, i64 0, i32 0
  %4139 = and i64 %4135, 4294967295
  store i64 %4139, i64* %4138, align 8
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4140, align 1
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4141, align 1
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4142, align 1
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4143, align 1
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4144, align 1
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4145, align 1
  br label %routine_idivl__r8d.exit110

routine_idivl__r8d.exit110:                       ; preds = %4130, %4134
  %4146 = phi %struct.Memory* [ %4133, %4130 ], [ %loadMem_4926f1, %4134 ]
  store %struct.Memory* %4146, %struct.Memory** %MEMORY
  %loadMem_4926f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 1
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %EAX.i106 = bitcast %union.anon* %4152 to i32*
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 9
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %RSI.i107 = bitcast %union.anon* %4155 to i64*
  %4156 = load i32, i32* %EAX.i106
  %4157 = zext i32 %4156 to i64
  %4158 = load i64, i64* %PC.i105
  %4159 = add i64 %4158, 3
  store i64 %4159, i64* %PC.i105
  %4160 = shl i64 %4157, 32
  %4161 = ashr exact i64 %4160, 32
  store i64 %4161, i64* %RSI.i107, align 8
  store %struct.Memory* %loadMem_4926f4, %struct.Memory** %MEMORY
  %loadMem_4926f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 33
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4164 to i64*
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 9
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %RSI.i104 = bitcast %union.anon* %4167 to i64*
  %4168 = load i64, i64* %RSI.i104
  %4169 = load i64, i64* %PC.i103
  %4170 = add i64 %4169, 4
  store i64 %4170, i64* %PC.i103
  %4171 = sext i64 %4168 to i128
  %4172 = and i128 %4171, -18446744073709551616
  %4173 = zext i64 %4168 to i128
  %4174 = or i128 %4172, %4173
  %4175 = mul i128 19, %4174
  %4176 = trunc i128 %4175 to i64
  store i64 %4176, i64* %RSI.i104, align 8
  %4177 = sext i64 %4176 to i128
  %4178 = icmp ne i128 %4177, %4175
  %4179 = zext i1 %4178 to i8
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4179, i8* %4180, align 1
  %4181 = trunc i128 %4175 to i32
  %4182 = and i32 %4181, 255
  %4183 = call i32 @llvm.ctpop.i32(i32 %4182)
  %4184 = trunc i32 %4183 to i8
  %4185 = and i8 %4184, 1
  %4186 = xor i8 %4185, 1
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4186, i8* %4187, align 1
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4188, align 1
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4189, align 1
  %4190 = lshr i64 %4176, 63
  %4191 = trunc i64 %4190 to i8
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4191, i8* %4192, align 1
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4179, i8* %4193, align 1
  store %struct.Memory* %loadMem_4926f7, %struct.Memory** %MEMORY
  %loadMem_4926fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 33
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 5
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %4199 to i64*
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 11
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %RDI.i102 = bitcast %union.anon* %4202 to i64*
  %4203 = load i64, i64* %RCX.i101
  %4204 = load i64, i64* %PC.i100
  %4205 = add i64 %4204, 3
  store i64 %4205, i64* %PC.i100
  store i64 %4203, i64* %RDI.i102, align 8
  store %struct.Memory* %loadMem_4926fb, %struct.Memory** %MEMORY
  %loadMem_4926fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 33
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4208 to i64*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 9
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %RSI.i98 = bitcast %union.anon* %4211 to i64*
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 11
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %RDI.i99 = bitcast %union.anon* %4214 to i64*
  %4215 = load i64, i64* %RDI.i99
  %4216 = load i64, i64* %RSI.i98
  %4217 = load i64, i64* %PC.i97
  %4218 = add i64 %4217, 3
  store i64 %4218, i64* %PC.i97
  %4219 = add i64 %4216, %4215
  store i64 %4219, i64* %RDI.i99, align 8
  %4220 = icmp ult i64 %4219, %4215
  %4221 = icmp ult i64 %4219, %4216
  %4222 = or i1 %4220, %4221
  %4223 = zext i1 %4222 to i8
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4223, i8* %4224, align 1
  %4225 = trunc i64 %4219 to i32
  %4226 = and i32 %4225, 255
  %4227 = call i32 @llvm.ctpop.i32(i32 %4226)
  %4228 = trunc i32 %4227 to i8
  %4229 = and i8 %4228, 1
  %4230 = xor i8 %4229, 1
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4230, i8* %4231, align 1
  %4232 = xor i64 %4216, %4215
  %4233 = xor i64 %4232, %4219
  %4234 = lshr i64 %4233, 4
  %4235 = trunc i64 %4234 to i8
  %4236 = and i8 %4235, 1
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4236, i8* %4237, align 1
  %4238 = icmp eq i64 %4219, 0
  %4239 = zext i1 %4238 to i8
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4239, i8* %4240, align 1
  %4241 = lshr i64 %4219, 63
  %4242 = trunc i64 %4241 to i8
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4242, i8* %4243, align 1
  %4244 = lshr i64 %4215, 63
  %4245 = lshr i64 %4216, 63
  %4246 = xor i64 %4241, %4244
  %4247 = xor i64 %4241, %4245
  %4248 = add i64 %4246, %4247
  %4249 = icmp eq i64 %4248, 2
  %4250 = zext i1 %4249 to i8
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4250, i8* %4251, align 1
  store %struct.Memory* %loadMem_4926fe, %struct.Memory** %MEMORY
  %loadMem_492701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 33
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %4254 to i64*
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 11
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %RDI.i96 = bitcast %union.anon* %4257 to i64*
  %4258 = load i64, i64* %RDI.i96
  %4259 = add i64 %4258, 3
  %4260 = load i64, i64* %PC.i95
  %4261 = add i64 %4260, 4
  store i64 %4261, i64* %PC.i95
  %4262 = inttoptr i64 %4259 to i8*
  store i8 43, i8* %4262
  store %struct.Memory* %loadMem_492701, %struct.Memory** %MEMORY
  %loadMem_492705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 33
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4265 to i64*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 1
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %4268 to i64*
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 15
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %4271 to i64*
  %4272 = load i64, i64* %RBP.i94
  %4273 = sub i64 %4272, 4
  %4274 = load i64, i64* %PC.i92
  %4275 = add i64 %4274, 3
  store i64 %4275, i64* %PC.i92
  %4276 = inttoptr i64 %4273 to i32*
  %4277 = load i32, i32* %4276
  %4278 = zext i32 %4277 to i64
  store i64 %4278, i64* %RAX.i93, align 8
  store %struct.Memory* %loadMem_492705, %struct.Memory** %MEMORY
  %loadMem_492708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 33
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4281 to i64*
  %4282 = load i64, i64* %PC.i91
  %4283 = add i64 %4282, 1
  store i64 %4283, i64* %PC.i91
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4286 = bitcast %union.anon* %4285 to i32*
  %4287 = load i32, i32* %4286, align 8
  %4288 = sext i32 %4287 to i64
  %4289 = lshr i64 %4288, 32
  store i64 %4289, i64* %4284, align 8
  store %struct.Memory* %loadMem_492708, %struct.Memory** %MEMORY
  %loadMem_492709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4291 = getelementptr inbounds %struct.GPR, %struct.GPR* %4290, i32 0, i32 33
  %4292 = getelementptr inbounds %struct.Reg, %struct.Reg* %4291, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4292 to i64*
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 17
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %R8D.i87 = bitcast %union.anon* %4295 to i32*
  %4296 = load i32, i32* %R8D.i87
  %4297 = zext i32 %4296 to i64
  %4298 = load i64, i64* %PC.i86
  %4299 = add i64 %4298, 3
  store i64 %4299, i64* %PC.i86
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4301 = bitcast %union.anon* %4300 to i32*
  %4302 = load i32, i32* %4301, align 8
  %4303 = zext i32 %4302 to i64
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4305 = bitcast %union.anon* %4304 to i32*
  %4306 = load i32, i32* %4305, align 8
  %4307 = zext i32 %4306 to i64
  %4308 = shl i64 %4297, 32
  %4309 = ashr exact i64 %4308, 32
  %4310 = shl i64 %4307, 32
  %4311 = or i64 %4310, %4303
  %4312 = sdiv i64 %4311, %4309
  %4313 = shl i64 %4312, 32
  %4314 = ashr exact i64 %4313, 32
  %4315 = icmp eq i64 %4312, %4314
  br i1 %4315, label %4320, label %4316

; <label>:4316:                                   ; preds = %routine_idivl__r8d.exit110
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4318 = load i64, i64* %4317, align 8
  %4319 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4318, %struct.Memory* %loadMem_492709)
  br label %routine_idivl__r8d.exit88

; <label>:4320:                                   ; preds = %routine_idivl__r8d.exit110
  %4321 = srem i64 %4311, %4309
  %4322 = getelementptr inbounds %union.anon, %union.anon* %4300, i64 0, i32 0
  %4323 = and i64 %4312, 4294967295
  store i64 %4323, i64* %4322, align 8
  %4324 = getelementptr inbounds %union.anon, %union.anon* %4304, i64 0, i32 0
  %4325 = and i64 %4321, 4294967295
  store i64 %4325, i64* %4324, align 8
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4326, align 1
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4327, align 1
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4328, align 1
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4329, align 1
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4330, align 1
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4331, align 1
  br label %routine_idivl__r8d.exit88

routine_idivl__r8d.exit88:                        ; preds = %4316, %4320
  %4332 = phi %struct.Memory* [ %4319, %4316 ], [ %loadMem_492709, %4320 ]
  store %struct.Memory* %4332, %struct.Memory** %MEMORY
  %loadMem_49270c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 33
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4335 to i64*
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 1
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %EAX.i84 = bitcast %union.anon* %4338 to i32*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 9
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %RSI.i85 = bitcast %union.anon* %4341 to i64*
  %4342 = load i32, i32* %EAX.i84
  %4343 = zext i32 %4342 to i64
  %4344 = load i64, i64* %PC.i83
  %4345 = add i64 %4344, 3
  store i64 %4345, i64* %PC.i83
  %4346 = shl i64 %4343, 32
  %4347 = ashr exact i64 %4346, 32
  store i64 %4347, i64* %RSI.i85, align 8
  store %struct.Memory* %loadMem_49270c, %struct.Memory** %MEMORY
  %loadMem_49270f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 33
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 9
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %RSI.i82 = bitcast %union.anon* %4353 to i64*
  %4354 = load i64, i64* %RSI.i82
  %4355 = load i64, i64* %PC.i81
  %4356 = add i64 %4355, 4
  store i64 %4356, i64* %PC.i81
  %4357 = sext i64 %4354 to i128
  %4358 = and i128 %4357, -18446744073709551616
  %4359 = zext i64 %4354 to i128
  %4360 = or i128 %4358, %4359
  %4361 = mul i128 19, %4360
  %4362 = trunc i128 %4361 to i64
  store i64 %4362, i64* %RSI.i82, align 8
  %4363 = sext i64 %4362 to i128
  %4364 = icmp ne i128 %4363, %4361
  %4365 = zext i1 %4364 to i8
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4365, i8* %4366, align 1
  %4367 = trunc i128 %4361 to i32
  %4368 = and i32 %4367, 255
  %4369 = call i32 @llvm.ctpop.i32(i32 %4368)
  %4370 = trunc i32 %4369 to i8
  %4371 = and i8 %4370, 1
  %4372 = xor i8 %4371, 1
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4372, i8* %4373, align 1
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4374, align 1
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4375, align 1
  %4376 = lshr i64 %4362, 63
  %4377 = trunc i64 %4376 to i8
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4377, i8* %4378, align 1
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4365, i8* %4379, align 1
  store %struct.Memory* %loadMem_49270f, %struct.Memory** %MEMORY
  %loadMem_492713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4381 = getelementptr inbounds %struct.GPR, %struct.GPR* %4380, i32 0, i32 33
  %4382 = getelementptr inbounds %struct.Reg, %struct.Reg* %4381, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4382 to i64*
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 5
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %4385 to i64*
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 11
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %RDI.i80 = bitcast %union.anon* %4388 to i64*
  %4389 = load i64, i64* %RCX.i79
  %4390 = load i64, i64* %PC.i78
  %4391 = add i64 %4390, 3
  store i64 %4391, i64* %PC.i78
  store i64 %4389, i64* %RDI.i80, align 8
  store %struct.Memory* %loadMem_492713, %struct.Memory** %MEMORY
  %loadMem_492716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 33
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4394 to i64*
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 9
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %RSI.i76 = bitcast %union.anon* %4397 to i64*
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 11
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %RDI.i77 = bitcast %union.anon* %4400 to i64*
  %4401 = load i64, i64* %RDI.i77
  %4402 = load i64, i64* %RSI.i76
  %4403 = load i64, i64* %PC.i75
  %4404 = add i64 %4403, 3
  store i64 %4404, i64* %PC.i75
  %4405 = add i64 %4402, %4401
  store i64 %4405, i64* %RDI.i77, align 8
  %4406 = icmp ult i64 %4405, %4401
  %4407 = icmp ult i64 %4405, %4402
  %4408 = or i1 %4406, %4407
  %4409 = zext i1 %4408 to i8
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4409, i8* %4410, align 1
  %4411 = trunc i64 %4405 to i32
  %4412 = and i32 %4411, 255
  %4413 = call i32 @llvm.ctpop.i32(i32 %4412)
  %4414 = trunc i32 %4413 to i8
  %4415 = and i8 %4414, 1
  %4416 = xor i8 %4415, 1
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4416, i8* %4417, align 1
  %4418 = xor i64 %4402, %4401
  %4419 = xor i64 %4418, %4405
  %4420 = lshr i64 %4419, 4
  %4421 = trunc i64 %4420 to i8
  %4422 = and i8 %4421, 1
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4422, i8* %4423, align 1
  %4424 = icmp eq i64 %4405, 0
  %4425 = zext i1 %4424 to i8
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4425, i8* %4426, align 1
  %4427 = lshr i64 %4405, 63
  %4428 = trunc i64 %4427 to i8
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4428, i8* %4429, align 1
  %4430 = lshr i64 %4401, 63
  %4431 = lshr i64 %4402, 63
  %4432 = xor i64 %4427, %4430
  %4433 = xor i64 %4427, %4431
  %4434 = add i64 %4432, %4433
  %4435 = icmp eq i64 %4434, 2
  %4436 = zext i1 %4435 to i8
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4436, i8* %4437, align 1
  store %struct.Memory* %loadMem_492716, %struct.Memory** %MEMORY
  %loadMem_492719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 33
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4440 to i64*
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 1
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %4443 to i64*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 15
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %4446 to i64*
  %4447 = load i64, i64* %RBP.i74
  %4448 = sub i64 %4447, 4
  %4449 = load i64, i64* %PC.i72
  %4450 = add i64 %4449, 3
  store i64 %4450, i64* %PC.i72
  %4451 = inttoptr i64 %4448 to i32*
  %4452 = load i32, i32* %4451
  %4453 = zext i32 %4452 to i64
  store i64 %4453, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_492719, %struct.Memory** %MEMORY
  %loadMem_49271c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 33
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4456 to i64*
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 1
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %4459 to i64*
  %4460 = load i64, i64* %RAX.i71
  %4461 = load i64, i64* %PC.i70
  %4462 = add i64 %4461, 3
  store i64 %4462, i64* %PC.i70
  %4463 = trunc i64 %4460 to i32
  %4464 = sub i32 %4463, 4
  %4465 = zext i32 %4464 to i64
  store i64 %4465, i64* %RAX.i71, align 8
  %4466 = icmp ult i32 %4463, 4
  %4467 = zext i1 %4466 to i8
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4467, i8* %4468, align 1
  %4469 = and i32 %4464, 255
  %4470 = call i32 @llvm.ctpop.i32(i32 %4469)
  %4471 = trunc i32 %4470 to i8
  %4472 = and i8 %4471, 1
  %4473 = xor i8 %4472, 1
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4473, i8* %4474, align 1
  %4475 = xor i64 4, %4460
  %4476 = trunc i64 %4475 to i32
  %4477 = xor i32 %4476, %4464
  %4478 = lshr i32 %4477, 4
  %4479 = trunc i32 %4478 to i8
  %4480 = and i8 %4479, 1
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4480, i8* %4481, align 1
  %4482 = icmp eq i32 %4464, 0
  %4483 = zext i1 %4482 to i8
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4483, i8* %4484, align 1
  %4485 = lshr i32 %4464, 31
  %4486 = trunc i32 %4485 to i8
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4486, i8* %4487, align 1
  %4488 = lshr i32 %4463, 31
  %4489 = xor i32 %4485, %4488
  %4490 = add i32 %4489, %4488
  %4491 = icmp eq i32 %4490, 2
  %4492 = zext i1 %4491 to i8
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4492, i8* %4493, align 1
  store %struct.Memory* %loadMem_49271c, %struct.Memory** %MEMORY
  %loadMem_49271f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 33
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 1
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %EAX.i68 = bitcast %union.anon* %4499 to i32*
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 9
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %RSI.i69 = bitcast %union.anon* %4502 to i64*
  %4503 = load i32, i32* %EAX.i68
  %4504 = zext i32 %4503 to i64
  %4505 = load i64, i64* %PC.i67
  %4506 = add i64 %4505, 3
  store i64 %4506, i64* %PC.i67
  %4507 = shl i64 %4504, 32
  %4508 = ashr exact i64 %4507, 32
  store i64 %4508, i64* %RSI.i69, align 8
  store %struct.Memory* %loadMem_49271f, %struct.Memory** %MEMORY
  %loadMem_492722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 33
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 9
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %RSI.i65 = bitcast %union.anon* %4514 to i64*
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 11
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %RDI.i66 = bitcast %union.anon* %4517 to i64*
  %4518 = load i64, i64* %RDI.i66
  %4519 = load i64, i64* %RSI.i65
  %4520 = add i64 %4519, %4518
  %4521 = load i64, i64* %PC.i64
  %4522 = add i64 %4521, 4
  store i64 %4522, i64* %PC.i64
  %4523 = inttoptr i64 %4520 to i8*
  store i8 43, i8* %4523
  store %struct.Memory* %loadMem_492722, %struct.Memory** %MEMORY
  %loadMem_492726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 33
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 1
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 15
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %4532 to i64*
  %4533 = load i64, i64* %RBP.i63
  %4534 = sub i64 %4533, 4
  %4535 = load i64, i64* %PC.i61
  %4536 = add i64 %4535, 3
  store i64 %4536, i64* %PC.i61
  %4537 = inttoptr i64 %4534 to i32*
  %4538 = load i32, i32* %4537
  %4539 = zext i32 %4538 to i64
  store i64 %4539, i64* %RAX.i62, align 8
  store %struct.Memory* %loadMem_492726, %struct.Memory** %MEMORY
  %loadMem_492729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 33
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4542 to i64*
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 1
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %4545 to i64*
  %4546 = load i64, i64* %RAX.i60
  %4547 = load i64, i64* %PC.i59
  %4548 = add i64 %4547, 3
  store i64 %4548, i64* %PC.i59
  %4549 = trunc i64 %4546 to i32
  %4550 = sub i32 %4549, 4
  %4551 = zext i32 %4550 to i64
  store i64 %4551, i64* %RAX.i60, align 8
  %4552 = icmp ult i32 %4549, 4
  %4553 = zext i1 %4552 to i8
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4553, i8* %4554, align 1
  %4555 = and i32 %4550, 255
  %4556 = call i32 @llvm.ctpop.i32(i32 %4555)
  %4557 = trunc i32 %4556 to i8
  %4558 = and i8 %4557, 1
  %4559 = xor i8 %4558, 1
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4559, i8* %4560, align 1
  %4561 = xor i64 4, %4546
  %4562 = trunc i64 %4561 to i32
  %4563 = xor i32 %4562, %4550
  %4564 = lshr i32 %4563, 4
  %4565 = trunc i32 %4564 to i8
  %4566 = and i8 %4565, 1
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4566, i8* %4567, align 1
  %4568 = icmp eq i32 %4550, 0
  %4569 = zext i1 %4568 to i8
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4569, i8* %4570, align 1
  %4571 = lshr i32 %4550, 31
  %4572 = trunc i32 %4571 to i8
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4572, i8* %4573, align 1
  %4574 = lshr i32 %4549, 31
  %4575 = xor i32 %4571, %4574
  %4576 = add i32 %4575, %4574
  %4577 = icmp eq i32 %4576, 2
  %4578 = zext i1 %4577 to i8
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4578, i8* %4579, align 1
  store %struct.Memory* %loadMem_492729, %struct.Memory** %MEMORY
  %loadMem_49272c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 33
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4582 to i64*
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 1
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %EAX.i57 = bitcast %union.anon* %4585 to i32*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 9
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %RSI.i58 = bitcast %union.anon* %4588 to i64*
  %4589 = load i32, i32* %EAX.i57
  %4590 = zext i32 %4589 to i64
  %4591 = load i64, i64* %PC.i56
  %4592 = add i64 %4591, 3
  store i64 %4592, i64* %PC.i56
  %4593 = shl i64 %4590, 32
  %4594 = ashr exact i64 %4593, 32
  store i64 %4594, i64* %RSI.i58, align 8
  store %struct.Memory* %loadMem_49272c, %struct.Memory** %MEMORY
  %loadMem_49272f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 33
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4597 to i64*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 9
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %RSI.i55 = bitcast %union.anon* %4600 to i64*
  %4601 = load i64, i64* %RSI.i55
  %4602 = load i64, i64* %PC.i54
  %4603 = add i64 %4602, 4
  store i64 %4603, i64* %PC.i54
  %4604 = sext i64 %4601 to i128
  %4605 = and i128 %4604, -18446744073709551616
  %4606 = zext i64 %4601 to i128
  %4607 = or i128 %4605, %4606
  %4608 = mul i128 19, %4607
  %4609 = trunc i128 %4608 to i64
  store i64 %4609, i64* %RSI.i55, align 8
  %4610 = sext i64 %4609 to i128
  %4611 = icmp ne i128 %4610, %4608
  %4612 = zext i1 %4611 to i8
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4612, i8* %4613, align 1
  %4614 = trunc i128 %4608 to i32
  %4615 = and i32 %4614, 255
  %4616 = call i32 @llvm.ctpop.i32(i32 %4615)
  %4617 = trunc i32 %4616 to i8
  %4618 = and i8 %4617, 1
  %4619 = xor i8 %4618, 1
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4619, i8* %4620, align 1
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4621, align 1
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4622, align 1
  %4623 = lshr i64 %4609, 63
  %4624 = trunc i64 %4623 to i8
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4624, i8* %4625, align 1
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4612, i8* %4626, align 1
  store %struct.Memory* %loadMem_49272f, %struct.Memory** %MEMORY
  %loadMem_492733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4628 = getelementptr inbounds %struct.GPR, %struct.GPR* %4627, i32 0, i32 33
  %4629 = getelementptr inbounds %struct.Reg, %struct.Reg* %4628, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4629 to i64*
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 5
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %4632 to i64*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 11
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %RDI.i53 = bitcast %union.anon* %4635 to i64*
  %4636 = load i64, i64* %RCX.i52
  %4637 = load i64, i64* %PC.i51
  %4638 = add i64 %4637, 3
  store i64 %4638, i64* %PC.i51
  store i64 %4636, i64* %RDI.i53, align 8
  store %struct.Memory* %loadMem_492733, %struct.Memory** %MEMORY
  %loadMem_492736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4640 = getelementptr inbounds %struct.GPR, %struct.GPR* %4639, i32 0, i32 33
  %4641 = getelementptr inbounds %struct.Reg, %struct.Reg* %4640, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4641 to i64*
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4643 = getelementptr inbounds %struct.GPR, %struct.GPR* %4642, i32 0, i32 9
  %4644 = getelementptr inbounds %struct.Reg, %struct.Reg* %4643, i32 0, i32 0
  %RSI.i49 = bitcast %union.anon* %4644 to i64*
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 11
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %RDI.i50 = bitcast %union.anon* %4647 to i64*
  %4648 = load i64, i64* %RDI.i50
  %4649 = load i64, i64* %RSI.i49
  %4650 = load i64, i64* %PC.i48
  %4651 = add i64 %4650, 3
  store i64 %4651, i64* %PC.i48
  %4652 = add i64 %4649, %4648
  store i64 %4652, i64* %RDI.i50, align 8
  %4653 = icmp ult i64 %4652, %4648
  %4654 = icmp ult i64 %4652, %4649
  %4655 = or i1 %4653, %4654
  %4656 = zext i1 %4655 to i8
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4656, i8* %4657, align 1
  %4658 = trunc i64 %4652 to i32
  %4659 = and i32 %4658, 255
  %4660 = call i32 @llvm.ctpop.i32(i32 %4659)
  %4661 = trunc i32 %4660 to i8
  %4662 = and i8 %4661, 1
  %4663 = xor i8 %4662, 1
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4663, i8* %4664, align 1
  %4665 = xor i64 %4649, %4648
  %4666 = xor i64 %4665, %4652
  %4667 = lshr i64 %4666, 4
  %4668 = trunc i64 %4667 to i8
  %4669 = and i8 %4668, 1
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4669, i8* %4670, align 1
  %4671 = icmp eq i64 %4652, 0
  %4672 = zext i1 %4671 to i8
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4672, i8* %4673, align 1
  %4674 = lshr i64 %4652, 63
  %4675 = trunc i64 %4674 to i8
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4675, i8* %4676, align 1
  %4677 = lshr i64 %4648, 63
  %4678 = lshr i64 %4649, 63
  %4679 = xor i64 %4674, %4677
  %4680 = xor i64 %4674, %4678
  %4681 = add i64 %4679, %4680
  %4682 = icmp eq i64 %4681, 2
  %4683 = zext i1 %4682 to i8
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4683, i8* %4684, align 1
  store %struct.Memory* %loadMem_492736, %struct.Memory** %MEMORY
  %loadMem_492739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 33
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4687 to i64*
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 1
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %4690 to i64*
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 15
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %4693 to i64*
  %4694 = load i64, i64* %RBP.i47
  %4695 = sub i64 %4694, 4
  %4696 = load i64, i64* %PC.i45
  %4697 = add i64 %4696, 3
  store i64 %4697, i64* %PC.i45
  %4698 = inttoptr i64 %4695 to i32*
  %4699 = load i32, i32* %4698
  %4700 = zext i32 %4699 to i64
  store i64 %4700, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_492739, %struct.Memory** %MEMORY
  %loadMem_49273c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 33
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4703 to i64*
  %4704 = load i64, i64* %PC.i44
  %4705 = add i64 %4704, 1
  store i64 %4705, i64* %PC.i44
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4708 = bitcast %union.anon* %4707 to i32*
  %4709 = load i32, i32* %4708, align 8
  %4710 = sext i32 %4709 to i64
  %4711 = lshr i64 %4710, 32
  store i64 %4711, i64* %4706, align 8
  store %struct.Memory* %loadMem_49273c, %struct.Memory** %MEMORY
  %loadMem_49273d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 33
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4714 to i64*
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 17
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %R8D.i40 = bitcast %union.anon* %4717 to i32*
  %4718 = load i32, i32* %R8D.i40
  %4719 = zext i32 %4718 to i64
  %4720 = load i64, i64* %PC.i39
  %4721 = add i64 %4720, 3
  store i64 %4721, i64* %PC.i39
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4723 = bitcast %union.anon* %4722 to i32*
  %4724 = load i32, i32* %4723, align 8
  %4725 = zext i32 %4724 to i64
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4727 = bitcast %union.anon* %4726 to i32*
  %4728 = load i32, i32* %4727, align 8
  %4729 = zext i32 %4728 to i64
  %4730 = shl i64 %4719, 32
  %4731 = ashr exact i64 %4730, 32
  %4732 = shl i64 %4729, 32
  %4733 = or i64 %4732, %4725
  %4734 = sdiv i64 %4733, %4731
  %4735 = shl i64 %4734, 32
  %4736 = ashr exact i64 %4735, 32
  %4737 = icmp eq i64 %4734, %4736
  br i1 %4737, label %4742, label %4738

; <label>:4738:                                   ; preds = %routine_idivl__r8d.exit88
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4740 = load i64, i64* %4739, align 8
  %4741 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4740, %struct.Memory* %loadMem_49273d)
  br label %routine_idivl__r8d.exit41

; <label>:4742:                                   ; preds = %routine_idivl__r8d.exit88
  %4743 = srem i64 %4733, %4731
  %4744 = getelementptr inbounds %union.anon, %union.anon* %4722, i64 0, i32 0
  %4745 = and i64 %4734, 4294967295
  store i64 %4745, i64* %4744, align 8
  %4746 = getelementptr inbounds %union.anon, %union.anon* %4726, i64 0, i32 0
  %4747 = and i64 %4743, 4294967295
  store i64 %4747, i64* %4746, align 8
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4748, align 1
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4749, align 1
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4750, align 1
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4751, align 1
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4752, align 1
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4753, align 1
  br label %routine_idivl__r8d.exit41

routine_idivl__r8d.exit41:                        ; preds = %4738, %4742
  %4754 = phi %struct.Memory* [ %4741, %4738 ], [ %loadMem_49273d, %4742 ]
  store %struct.Memory* %4754, %struct.Memory** %MEMORY
  %loadMem_492740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 33
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4757 to i64*
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 1
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %EAX.i37 = bitcast %union.anon* %4760 to i32*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 9
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %RSI.i38 = bitcast %union.anon* %4763 to i64*
  %4764 = load i32, i32* %EAX.i37
  %4765 = zext i32 %4764 to i64
  %4766 = load i64, i64* %PC.i36
  %4767 = add i64 %4766, 3
  store i64 %4767, i64* %PC.i36
  %4768 = shl i64 %4765, 32
  %4769 = ashr exact i64 %4768, 32
  store i64 %4769, i64* %RSI.i38, align 8
  store %struct.Memory* %loadMem_492740, %struct.Memory** %MEMORY
  %loadMem_492743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 33
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4772 to i64*
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 9
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %RSI.i35 = bitcast %union.anon* %4775 to i64*
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 11
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4778 to i64*
  %4779 = load i64, i64* %RDI.i
  %4780 = load i64, i64* %RSI.i35
  %4781 = add i64 %4780, %4779
  %4782 = load i64, i64* %PC.i34
  %4783 = add i64 %4782, 4
  store i64 %4783, i64* %PC.i34
  %4784 = inttoptr i64 %4781 to i8*
  store i8 43, i8* %4784
  store %struct.Memory* %loadMem_492743, %struct.Memory** %MEMORY
  %loadMem_492747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 33
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4787 to i64*
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 1
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %4790 to i64*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 15
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %4793 to i64*
  %4794 = load i64, i64* %RBP.i33
  %4795 = sub i64 %4794, 4
  %4796 = load i64, i64* %PC.i31
  %4797 = add i64 %4796, 3
  store i64 %4797, i64* %PC.i31
  %4798 = inttoptr i64 %4795 to i32*
  %4799 = load i32, i32* %4798
  %4800 = zext i32 %4799 to i64
  store i64 %4800, i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_492747, %struct.Memory** %MEMORY
  %loadMem_49274a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4802 = getelementptr inbounds %struct.GPR, %struct.GPR* %4801, i32 0, i32 33
  %4803 = getelementptr inbounds %struct.Reg, %struct.Reg* %4802, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %4803 to i64*
  %4804 = load i64, i64* %PC.i30
  %4805 = add i64 %4804, 1
  store i64 %4805, i64* %PC.i30
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4808 = bitcast %union.anon* %4807 to i32*
  %4809 = load i32, i32* %4808, align 8
  %4810 = sext i32 %4809 to i64
  %4811 = lshr i64 %4810, 32
  store i64 %4811, i64* %4806, align 8
  store %struct.Memory* %loadMem_49274a, %struct.Memory** %MEMORY
  %loadMem_49274b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4813 = getelementptr inbounds %struct.GPR, %struct.GPR* %4812, i32 0, i32 33
  %4814 = getelementptr inbounds %struct.Reg, %struct.Reg* %4813, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4814 to i64*
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 17
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %R8D.i26 = bitcast %union.anon* %4817 to i32*
  %4818 = load i32, i32* %R8D.i26
  %4819 = zext i32 %4818 to i64
  %4820 = load i64, i64* %PC.i25
  %4821 = add i64 %4820, 3
  store i64 %4821, i64* %PC.i25
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4823 = bitcast %union.anon* %4822 to i32*
  %4824 = load i32, i32* %4823, align 8
  %4825 = zext i32 %4824 to i64
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4827 = bitcast %union.anon* %4826 to i32*
  %4828 = load i32, i32* %4827, align 8
  %4829 = zext i32 %4828 to i64
  %4830 = shl i64 %4819, 32
  %4831 = ashr exact i64 %4830, 32
  %4832 = shl i64 %4829, 32
  %4833 = or i64 %4832, %4825
  %4834 = sdiv i64 %4833, %4831
  %4835 = shl i64 %4834, 32
  %4836 = ashr exact i64 %4835, 32
  %4837 = icmp eq i64 %4834, %4836
  br i1 %4837, label %4842, label %4838

; <label>:4838:                                   ; preds = %routine_idivl__r8d.exit41
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4840 = load i64, i64* %4839, align 8
  %4841 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4840, %struct.Memory* %loadMem_49274b)
  br label %routine_idivl__r8d.exit27

; <label>:4842:                                   ; preds = %routine_idivl__r8d.exit41
  %4843 = srem i64 %4833, %4831
  %4844 = getelementptr inbounds %union.anon, %union.anon* %4822, i64 0, i32 0
  %4845 = and i64 %4834, 4294967295
  store i64 %4845, i64* %4844, align 8
  %4846 = getelementptr inbounds %union.anon, %union.anon* %4826, i64 0, i32 0
  %4847 = and i64 %4843, 4294967295
  store i64 %4847, i64* %4846, align 8
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4848, align 1
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4849, align 1
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4850, align 1
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4851, align 1
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4852, align 1
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4853, align 1
  br label %routine_idivl__r8d.exit27

routine_idivl__r8d.exit27:                        ; preds = %4838, %4842
  %4854 = phi %struct.Memory* [ %4841, %4838 ], [ %loadMem_49274b, %4842 ]
  store %struct.Memory* %4854, %struct.Memory** %MEMORY
  %loadMem_49274e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 33
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4857 to i64*
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 1
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %EAX.i23 = bitcast %union.anon* %4860 to i32*
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 9
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %RSI.i24 = bitcast %union.anon* %4863 to i64*
  %4864 = load i32, i32* %EAX.i23
  %4865 = zext i32 %4864 to i64
  %4866 = load i64, i64* %PC.i22
  %4867 = add i64 %4866, 3
  store i64 %4867, i64* %PC.i22
  %4868 = shl i64 %4865, 32
  %4869 = ashr exact i64 %4868, 32
  store i64 %4869, i64* %RSI.i24, align 8
  store %struct.Memory* %loadMem_49274e, %struct.Memory** %MEMORY
  %loadMem_492751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4871 = getelementptr inbounds %struct.GPR, %struct.GPR* %4870, i32 0, i32 33
  %4872 = getelementptr inbounds %struct.Reg, %struct.Reg* %4871, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4872 to i64*
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 9
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %RSI.i21 = bitcast %union.anon* %4875 to i64*
  %4876 = load i64, i64* %RSI.i21
  %4877 = load i64, i64* %PC.i20
  %4878 = add i64 %4877, 4
  store i64 %4878, i64* %PC.i20
  %4879 = sext i64 %4876 to i128
  %4880 = and i128 %4879, -18446744073709551616
  %4881 = zext i64 %4876 to i128
  %4882 = or i128 %4880, %4881
  %4883 = mul i128 19, %4882
  %4884 = trunc i128 %4883 to i64
  store i64 %4884, i64* %RSI.i21, align 8
  %4885 = sext i64 %4884 to i128
  %4886 = icmp ne i128 %4885, %4883
  %4887 = zext i1 %4886 to i8
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4887, i8* %4888, align 1
  %4889 = trunc i128 %4883 to i32
  %4890 = and i32 %4889, 255
  %4891 = call i32 @llvm.ctpop.i32(i32 %4890)
  %4892 = trunc i32 %4891 to i8
  %4893 = and i8 %4892, 1
  %4894 = xor i8 %4893, 1
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4894, i8* %4895, align 1
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4896, align 1
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4897, align 1
  %4898 = lshr i64 %4884, 63
  %4899 = trunc i64 %4898 to i8
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4899, i8* %4900, align 1
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4887, i8* %4901, align 1
  store %struct.Memory* %loadMem_492751, %struct.Memory** %MEMORY
  %loadMem_492755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4903 = getelementptr inbounds %struct.GPR, %struct.GPR* %4902, i32 0, i32 33
  %4904 = getelementptr inbounds %struct.Reg, %struct.Reg* %4903, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4904 to i64*
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4906 = getelementptr inbounds %struct.GPR, %struct.GPR* %4905, i32 0, i32 5
  %4907 = getelementptr inbounds %struct.Reg, %struct.Reg* %4906, i32 0, i32 0
  %RCX.i18 = bitcast %union.anon* %4907 to i64*
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 9
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %RSI.i19 = bitcast %union.anon* %4910 to i64*
  %4911 = load i64, i64* %RCX.i18
  %4912 = load i64, i64* %RSI.i19
  %4913 = load i64, i64* %PC.i17
  %4914 = add i64 %4913, 3
  store i64 %4914, i64* %PC.i17
  %4915 = add i64 %4912, %4911
  store i64 %4915, i64* %RCX.i18, align 8
  %4916 = icmp ult i64 %4915, %4911
  %4917 = icmp ult i64 %4915, %4912
  %4918 = or i1 %4916, %4917
  %4919 = zext i1 %4918 to i8
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4919, i8* %4920, align 1
  %4921 = trunc i64 %4915 to i32
  %4922 = and i32 %4921, 255
  %4923 = call i32 @llvm.ctpop.i32(i32 %4922)
  %4924 = trunc i32 %4923 to i8
  %4925 = and i8 %4924, 1
  %4926 = xor i8 %4925, 1
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4926, i8* %4927, align 1
  %4928 = xor i64 %4912, %4911
  %4929 = xor i64 %4928, %4915
  %4930 = lshr i64 %4929, 4
  %4931 = trunc i64 %4930 to i8
  %4932 = and i8 %4931, 1
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4932, i8* %4933, align 1
  %4934 = icmp eq i64 %4915, 0
  %4935 = zext i1 %4934 to i8
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4935, i8* %4936, align 1
  %4937 = lshr i64 %4915, 63
  %4938 = trunc i64 %4937 to i8
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4938, i8* %4939, align 1
  %4940 = lshr i64 %4911, 63
  %4941 = lshr i64 %4912, 63
  %4942 = xor i64 %4937, %4940
  %4943 = xor i64 %4937, %4941
  %4944 = add i64 %4942, %4943
  %4945 = icmp eq i64 %4944, 2
  %4946 = zext i1 %4945 to i8
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4946, i8* %4947, align 1
  store %struct.Memory* %loadMem_492755, %struct.Memory** %MEMORY
  %loadMem_492758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4949 = getelementptr inbounds %struct.GPR, %struct.GPR* %4948, i32 0, i32 33
  %4950 = getelementptr inbounds %struct.Reg, %struct.Reg* %4949, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4950 to i64*
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 1
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4953 to i64*
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 15
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %4956 to i64*
  %4957 = load i64, i64* %RBP.i16
  %4958 = sub i64 %4957, 4
  %4959 = load i64, i64* %PC.i15
  %4960 = add i64 %4959, 3
  store i64 %4960, i64* %PC.i15
  %4961 = inttoptr i64 %4958 to i32*
  %4962 = load i32, i32* %4961
  %4963 = zext i32 %4962 to i64
  store i64 %4963, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_492758, %struct.Memory** %MEMORY
  %loadMem_49275b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4965 = getelementptr inbounds %struct.GPR, %struct.GPR* %4964, i32 0, i32 33
  %4966 = getelementptr inbounds %struct.Reg, %struct.Reg* %4965, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4966 to i64*
  %4967 = load i64, i64* %PC.i14
  %4968 = add i64 %4967, 1
  store i64 %4968, i64* %PC.i14
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4971 = bitcast %union.anon* %4970 to i32*
  %4972 = load i32, i32* %4971, align 8
  %4973 = sext i32 %4972 to i64
  %4974 = lshr i64 %4973, 32
  store i64 %4974, i64* %4969, align 8
  store %struct.Memory* %loadMem_49275b, %struct.Memory** %MEMORY
  %loadMem_49275c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 33
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4977 to i64*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 17
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %4980 to i32*
  %4981 = load i32, i32* %R8D.i
  %4982 = zext i32 %4981 to i64
  %4983 = load i64, i64* %PC.i10
  %4984 = add i64 %4983, 3
  store i64 %4984, i64* %PC.i10
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4986 = bitcast %union.anon* %4985 to i32*
  %4987 = load i32, i32* %4986, align 8
  %4988 = zext i32 %4987 to i64
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4990 = bitcast %union.anon* %4989 to i32*
  %4991 = load i32, i32* %4990, align 8
  %4992 = zext i32 %4991 to i64
  %4993 = shl i64 %4982, 32
  %4994 = ashr exact i64 %4993, 32
  %4995 = shl i64 %4992, 32
  %4996 = or i64 %4995, %4988
  %4997 = sdiv i64 %4996, %4994
  %4998 = shl i64 %4997, 32
  %4999 = ashr exact i64 %4998, 32
  %5000 = icmp eq i64 %4997, %4999
  br i1 %5000, label %5005, label %5001

; <label>:5001:                                   ; preds = %routine_idivl__r8d.exit27
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5003 = load i64, i64* %5002, align 8
  %5004 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5003, %struct.Memory* %loadMem_49275c)
  br label %routine_idivl__r8d.exit

; <label>:5005:                                   ; preds = %routine_idivl__r8d.exit27
  %5006 = srem i64 %4996, %4994
  %5007 = getelementptr inbounds %union.anon, %union.anon* %4985, i64 0, i32 0
  %5008 = and i64 %4997, 4294967295
  store i64 %5008, i64* %5007, align 8
  %5009 = getelementptr inbounds %union.anon, %union.anon* %4989, i64 0, i32 0
  %5010 = and i64 %5006, 4294967295
  store i64 %5010, i64* %5009, align 8
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5011, align 1
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5012, align 1
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5013, align 1
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5014, align 1
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5015, align 1
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5016, align 1
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %5001, %5005
  %5017 = phi %struct.Memory* [ %5004, %5001 ], [ %loadMem_49275c, %5005 ]
  store %struct.Memory* %5017, %struct.Memory** %MEMORY
  %loadMem_49275f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 33
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5020 to i64*
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5022 = getelementptr inbounds %struct.GPR, %struct.GPR* %5021, i32 0, i32 1
  %5023 = getelementptr inbounds %struct.Reg, %struct.Reg* %5022, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5023 to i32*
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5025 = getelementptr inbounds %struct.GPR, %struct.GPR* %5024, i32 0, i32 9
  %5026 = getelementptr inbounds %struct.Reg, %struct.Reg* %5025, i32 0, i32 0
  %RSI.i9 = bitcast %union.anon* %5026 to i64*
  %5027 = load i32, i32* %EAX.i
  %5028 = zext i32 %5027 to i64
  %5029 = load i64, i64* %PC.i8
  %5030 = add i64 %5029, 3
  store i64 %5030, i64* %PC.i8
  %5031 = shl i64 %5028, 32
  %5032 = ashr exact i64 %5031, 32
  store i64 %5032, i64* %RSI.i9, align 8
  store %struct.Memory* %loadMem_49275f, %struct.Memory** %MEMORY
  %loadMem_492762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5034 = getelementptr inbounds %struct.GPR, %struct.GPR* %5033, i32 0, i32 33
  %5035 = getelementptr inbounds %struct.Reg, %struct.Reg* %5034, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5035 to i64*
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 5
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5038 to i64*
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 9
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5041 to i64*
  %5042 = load i64, i64* %RCX.i
  %5043 = load i64, i64* %RSI.i
  %5044 = add i64 %5043, %5042
  %5045 = load i64, i64* %PC.i7
  %5046 = add i64 %5045, 4
  store i64 %5046, i64* %PC.i7
  %5047 = inttoptr i64 %5044 to i8*
  store i8 43, i8* %5047
  store %struct.Memory* %loadMem_492762, %struct.Memory** %MEMORY
  br label %block_.L_492766

block_.L_492766:                                  ; preds = %routine_idivl__r8d.exit, %routine_idivl__r8d.exit207
  %loadMem_492766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5049 = getelementptr inbounds %struct.GPR, %struct.GPR* %5048, i32 0, i32 33
  %5050 = getelementptr inbounds %struct.Reg, %struct.Reg* %5049, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5050 to i64*
  %5051 = load i64, i64* %PC.i6
  %5052 = add i64 %5051, 5
  %5053 = load i64, i64* %PC.i6
  %5054 = add i64 %5053, 5
  store i64 %5054, i64* %PC.i6
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5052, i64* %5055, align 8
  store %struct.Memory* %loadMem_492766, %struct.Memory** %MEMORY
  br label %block_.L_49276b

block_.L_49276b:                                  ; preds = %block_.L_492766, %block_.L_4925ce
  %loadMem_49276b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 33
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5058 to i64*
  %5059 = load i64, i64* %PC.i5
  %5060 = add i64 %5059, 5
  %5061 = load i64, i64* %PC.i5
  %5062 = add i64 %5061, 5
  store i64 %5062, i64* %PC.i5
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5060, i64* %5063, align 8
  store %struct.Memory* %loadMem_49276b, %struct.Memory** %MEMORY
  br label %block_.L_492770

block_.L_492770:                                  ; preds = %block_.L_49276b, %routine_idivl__r8d.exit453, %block_49242b
  %loadMem_492770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 33
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5066 to i64*
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 13
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5069 to i64*
  %5070 = load i64, i64* %RSP.i
  %5071 = load i64, i64* %PC.i4
  %5072 = add i64 %5071, 4
  store i64 %5072, i64* %PC.i4
  %5073 = add i64 32, %5070
  store i64 %5073, i64* %RSP.i, align 8
  %5074 = icmp ult i64 %5073, %5070
  %5075 = icmp ult i64 %5073, 32
  %5076 = or i1 %5074, %5075
  %5077 = zext i1 %5076 to i8
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5077, i8* %5078, align 1
  %5079 = trunc i64 %5073 to i32
  %5080 = and i32 %5079, 255
  %5081 = call i32 @llvm.ctpop.i32(i32 %5080)
  %5082 = trunc i32 %5081 to i8
  %5083 = and i8 %5082, 1
  %5084 = xor i8 %5083, 1
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5084, i8* %5085, align 1
  %5086 = xor i64 32, %5070
  %5087 = xor i64 %5086, %5073
  %5088 = lshr i64 %5087, 4
  %5089 = trunc i64 %5088 to i8
  %5090 = and i8 %5089, 1
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5090, i8* %5091, align 1
  %5092 = icmp eq i64 %5073, 0
  %5093 = zext i1 %5092 to i8
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5093, i8* %5094, align 1
  %5095 = lshr i64 %5073, 63
  %5096 = trunc i64 %5095 to i8
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5096, i8* %5097, align 1
  %5098 = lshr i64 %5070, 63
  %5099 = xor i64 %5095, %5098
  %5100 = add i64 %5099, %5095
  %5101 = icmp eq i64 %5100, 2
  %5102 = zext i1 %5101 to i8
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5102, i8* %5103, align 1
  store %struct.Memory* %loadMem_492770, %struct.Memory** %MEMORY
  %loadMem_492774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 33
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5106 to i64*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 15
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5109 to i64*
  %5110 = load i64, i64* %PC.i2
  %5111 = add i64 %5110, 1
  store i64 %5111, i64* %PC.i2
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5113 = load i64, i64* %5112, align 8
  %5114 = add i64 %5113, 8
  %5115 = inttoptr i64 %5113 to i64*
  %5116 = load i64, i64* %5115
  store i64 %5116, i64* %RBP.i3, align 8
  store i64 %5114, i64* %5112, align 8
  store %struct.Memory* %loadMem_492774, %struct.Memory** %MEMORY
  %loadMem_492775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 33
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5119 to i64*
  %5120 = load i64, i64* %PC.i1
  %5121 = add i64 %5120, 1
  store i64 %5121, i64* %PC.i1
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5124 = load i64, i64* %5123, align 8
  %5125 = inttoptr i64 %5124 to i64*
  %5126 = load i64, i64* %5125
  store i64 %5126, i64* %5122, align 8
  %5127 = add i64 %5124, 8
  store i64 %5127, i64* %5123, align 8
  store %struct.Memory* %loadMem_492775, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_492775
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 32
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 32
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
  %23 = xor i64 32, %9
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

define %struct.Memory* @routine_movl_0xaf28cc___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0xaf28cc_type* @G_0xaf28cc to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDI
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

define %struct.Memory* @routine_jne_.L_492430(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_492770(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0xaf2760___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2e___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 46, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x169___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 361, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__0xaf28cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xaf28cc_type* @G_0xaf28cc to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_jne_.L_4924eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xaf2760___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2b__0xaf2774(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  store i8 43, i8* getelementptr inbounds (%G_0xaf2774_type, %G_0xaf2774_type* @G_0xaf2774, i32 0, i32 0, i32 0)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 2
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %12, 2
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
  %24 = xor i64 2, %9
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

define %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 19, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rsi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movb__0x2b__0x1__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 43, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2b__0xaf2773___rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 11478899
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 43, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2b____rdi__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RSI
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 43, i8* %17
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R8D
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

define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RCX, align 8
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

define %struct.Memory* @routine_movb__0x2b____rcx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 43, i8* %17
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

define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDX
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

define %struct.Memory* @routine_jne_.L_4925d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_492577(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xc__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 12
  %16 = icmp ult i32 %14, 12
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
  %25 = xor i32 %14, 12
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

define %struct.Memory* @routine_jge_.L_492577(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xaf2760___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2b__0xaf2788(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  store i8 43, i8* getelementptr inbounds (%G_0xaf2788_type, %G_0xaf2788_type* @G_0xaf2788, i32 0, i32 0, i32 0)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 3
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 3
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
  %24 = xor i64 3, %9
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

define %struct.Memory* @routine_imulq__0x13___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 19, %15
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

define %struct.Memory* @routine_movq__rax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movb__0x2b__0x2__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 43, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2b__0xaf2786___rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 11478918
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 43, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movb__0x2b____rax__rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 43, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4925ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movb__0x2b__0xaf279c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  store i8 43, i8* getelementptr inbounds (%G_0xaf279c_type, %G_0xaf279c_type* @G_0xaf279c, i32 0, i32 0, i32 0)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 4
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 4
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
  %24 = xor i64 4, %9
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

define %struct.Memory* @routine_movb__0x2b__0x3__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 43, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2b__0xaf2799___rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 11478937
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 43, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_49276b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jle_.L_492673(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_492673(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 3
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %12, 3
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
  %24 = xor i64 3, %9
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

define %struct.Memory* @routine_movb__0x2b__0x2__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 43, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2b__0xaf2786___rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 11478918
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 43, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_492766(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 4
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %12, 4
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
  %24 = xor i64 4, %9
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

define %struct.Memory* @routine_movb__0x2b__0x3__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 43, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2b__0xaf2799___rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 11478937
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 43, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 4
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 4
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
  %24 = xor i64 4, %9
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

define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 32, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 32
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
  %25 = xor i64 32, %9
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
