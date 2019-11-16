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
%G__0x455f2a_type = type <{ [8 x i8] }>
%G__0x455fe1_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G__0x455f2a = global %G__0x455f2a_type zeroinitializer
@G__0x455fe1 = global %G__0x455fe1_type zeroinitializer

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

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @CreatePlan7Matrix(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_407130 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_407130, %struct.Memory** %MEMORY
  %loadMem_407131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i510 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i510
  %27 = load i64, i64* %PC.i509
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i509
  store i64 %26, i64* %RBP.i511, align 8
  store %struct.Memory* %loadMem_407131, %struct.Memory** %MEMORY
  %loadMem_407134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i508 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i508
  %36 = load i64, i64* %PC.i507
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i507
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i508, align 8
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
  store %struct.Memory* %loadMem_407134, %struct.Memory** %MEMORY
  %loadMem_407138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i506 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i505
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i505
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RAX.i506, align 8
  store %struct.Memory* %loadMem_407138, %struct.Memory** %MEMORY
  %loadMem_407142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 17
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %R8D.i504 = bitcast %union.anon* %80 to i32*
  %81 = bitcast i32* %R8D.i504 to i64*
  %82 = load i64, i64* %PC.i503
  %83 = add i64 %82, 6
  store i64 %83, i64* %PC.i503
  store i64 66, i64* %81, align 8
  store %struct.Memory* %loadMem_407142, %struct.Memory** %MEMORY
  %loadMem_407148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 33
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 19
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %R9D.i502 = bitcast %union.anon* %89 to i32*
  %90 = bitcast i32* %R9D.i502 to i64*
  %91 = load i64, i64* %PC.i501
  %92 = add i64 %91, 6
  store i64 %92, i64* %PC.i501
  store i64 80, i64* %90, align 8
  store %struct.Memory* %loadMem_407148, %struct.Memory** %MEMORY
  %loadMem_40714e = load %struct.Memory*, %struct.Memory** %MEMORY
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 33
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 19
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %98 to i32*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 21
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %101 to i32*
  %102 = bitcast i32* %R10D.i to i64*
  %103 = load i32, i32* %R9D.i
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %PC.i500
  %106 = add i64 %105, 3
  store i64 %106, i64* %PC.i500
  %107 = and i64 %104, 4294967295
  store i64 %107, i64* %102, align 8
  store %struct.Memory* %loadMem_40714e, %struct.Memory** %MEMORY
  %loadMem_407151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 33
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %110 to i64*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 11
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %EDI.i498 = bitcast %union.anon* %113 to i32*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 15
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %116 to i64*
  %117 = load i64, i64* %RBP.i499
  %118 = sub i64 %117, 4
  %119 = load i32, i32* %EDI.i498
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* %PC.i497
  %122 = add i64 %121, 3
  store i64 %122, i64* %PC.i497
  %123 = inttoptr i64 %118 to i32*
  store i32 %119, i32* %123
  store %struct.Memory* %loadMem_407151, %struct.Memory** %MEMORY
  %loadMem_407154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 33
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 9
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %129 to i32*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 15
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %132 to i64*
  %133 = load i64, i64* %RBP.i496
  %134 = sub i64 %133, 8
  %135 = load i32, i32* %ESI.i
  %136 = zext i32 %135 to i64
  %137 = load i64, i64* %PC.i495
  %138 = add i64 %137, 3
  store i64 %138, i64* %PC.i495
  %139 = inttoptr i64 %134 to i32*
  store i32 %135, i32* %139
  store %struct.Memory* %loadMem_407154, %struct.Memory** %MEMORY
  %loadMem_407157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %145 to i32*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 15
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %RBP.i494
  %150 = sub i64 %149, 12
  %151 = load i32, i32* %EDX.i
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %PC.i493
  %154 = add i64 %153, 3
  store i64 %154, i64* %PC.i493
  %155 = inttoptr i64 %150 to i32*
  store i32 %151, i32* %155
  store %struct.Memory* %loadMem_407157, %struct.Memory** %MEMORY
  %loadMem_40715a = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %ECX.i491 = bitcast %union.anon* %161 to i32*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 15
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %164 to i64*
  %165 = load i64, i64* %RBP.i492
  %166 = sub i64 %165, 16
  %167 = load i32, i32* %ECX.i491
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* %PC.i490
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC.i490
  %171 = inttoptr i64 %166 to i32*
  store i32 %167, i32* %171
  store %struct.Memory* %loadMem_40715a, %struct.Memory** %MEMORY
  %loadMem_40715d = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 11
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %RDI.i489 = bitcast %union.anon* %180 to i64*
  %181 = load i64, i64* %RAX.i488
  %182 = load i64, i64* %PC.i487
  %183 = add i64 %182, 3
  store i64 %183, i64* %PC.i487
  store i64 %181, i64* %RDI.i489, align 8
  store %struct.Memory* %loadMem_40715d, %struct.Memory** %MEMORY
  %loadMem_407160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 17
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %R8D.i485 = bitcast %union.anon* %189 to i32*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 9
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RSI.i486 = bitcast %union.anon* %192 to i64*
  %193 = load i32, i32* %R8D.i485
  %194 = zext i32 %193 to i64
  %195 = load i64, i64* %PC.i484
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC.i484
  %197 = and i64 %194, 4294967295
  store i64 %197, i64* %RSI.i486, align 8
  store %struct.Memory* %loadMem_407160, %struct.Memory** %MEMORY
  %loadMem_407163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 7
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RDX.i483 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 21
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %R10.i = bitcast %union.anon* %206 to i64*
  %207 = load i64, i64* %R10.i
  %208 = load i64, i64* %PC.i482
  %209 = add i64 %208, 3
  store i64 %209, i64* %PC.i482
  store i64 %207, i64* %RDX.i483, align 8
  store %struct.Memory* %loadMem_407163, %struct.Memory** %MEMORY
  %loadMem1_407166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %212 to i64*
  %213 = load i64, i64* %PC.i481
  %214 = add i64 %213, 257786
  %215 = load i64, i64* %PC.i481
  %216 = add i64 %215, 5
  %217 = load i64, i64* %PC.i481
  %218 = add i64 %217, 5
  store i64 %218, i64* %PC.i481
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = add i64 %220, -8
  %222 = inttoptr i64 %221 to i64*
  store i64 %216, i64* %222
  store i64 %221, i64* %219, align 8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %214, i64* %223, align 8
  store %struct.Memory* %loadMem1_407166, %struct.Memory** %MEMORY
  %loadMem2_407166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407166 = load i64, i64* %3
  %call2_407166 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_407166, %struct.Memory* %loadMem2_407166)
  store %struct.Memory* %call2_407166, %struct.Memory** %MEMORY
  %loadMem_40716b = load %struct.Memory*, %struct.Memory** %MEMORY
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 33
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 11
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %RDI.i480 = bitcast %union.anon* %229 to i64*
  %230 = load i64, i64* %PC.i479
  %231 = add i64 %230, 10
  store i64 %231, i64* %PC.i479
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i480, align 8
  store %struct.Memory* %loadMem_40716b, %struct.Memory** %MEMORY
  %loadMem_407175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 9
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %RSI.i478 = bitcast %union.anon* %237 to i64*
  %238 = load i64, i64* %PC.i477
  %239 = add i64 %238, 5
  store i64 %239, i64* %PC.i477
  store i64 67, i64* %RSI.i478, align 8
  store %struct.Memory* %loadMem_407175, %struct.Memory** %MEMORY
  %loadMem_40717a = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 15
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %248 to i64*
  %249 = load i64, i64* %RBP.i476
  %250 = sub i64 %249, 24
  %251 = load i64, i64* %RAX.i475
  %252 = load i64, i64* %PC.i474
  %253 = add i64 %252, 4
  store i64 %253, i64* %PC.i474
  %254 = inttoptr i64 %250 to i64*
  store i64 %251, i64* %254
  store %struct.Memory* %loadMem_40717a, %struct.Memory** %MEMORY
  %loadMem_40717e = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RCX.i472 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 15
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %263 to i64*
  %264 = load i64, i64* %RBP.i473
  %265 = sub i64 %264, 4
  %266 = load i64, i64* %PC.i471
  %267 = add i64 %266, 3
  store i64 %267, i64* %PC.i471
  %268 = inttoptr i64 %265 to i32*
  %269 = load i32, i32* %268
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RCX.i472, align 8
  store %struct.Memory* %loadMem_40717e, %struct.Memory** %MEMORY
  %loadMem_407181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 33
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %276 to i64*
  %277 = load i64, i64* %RCX.i470
  %278 = load i64, i64* %PC.i469
  %279 = add i64 %278, 3
  store i64 %279, i64* %PC.i469
  %280 = trunc i64 %277 to i32
  %281 = add i32 1, %280
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RCX.i470, align 8
  %283 = icmp ult i32 %281, %280
  %284 = icmp ult i32 %281, 1
  %285 = or i1 %283, %284
  %286 = zext i1 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %286, i8* %287, align 1
  %288 = and i32 %281, 255
  %289 = call i32 @llvm.ctpop.i32(i32 %288)
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  %292 = xor i8 %291, 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %292, i8* %293, align 1
  %294 = xor i64 1, %277
  %295 = trunc i64 %294 to i32
  %296 = xor i32 %295, %281
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %299, i8* %300, align 1
  %301 = icmp eq i32 %281, 0
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %302, i8* %303, align 1
  %304 = lshr i32 %281, 31
  %305 = trunc i32 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %305, i8* %306, align 1
  %307 = lshr i32 %280, 31
  %308 = xor i32 %304, %307
  %309 = add i32 %308, %304
  %310 = icmp eq i32 %309, 2
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %311, i8* %312, align 1
  store %struct.Memory* %loadMem_407181, %struct.Memory** %MEMORY
  %loadMem_407184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 5
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %ECX.i467 = bitcast %union.anon* %318 to i32*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %321 to i64*
  %322 = load i32, i32* %ECX.i467
  %323 = zext i32 %322 to i64
  %324 = load i64, i64* %PC.i466
  %325 = add i64 %324, 3
  store i64 %325, i64* %PC.i466
  %326 = shl i64 %323, 32
  %327 = ashr exact i64 %326, 32
  store i64 %327, i64* %RAX.i468, align 8
  store %struct.Memory* %loadMem_407184, %struct.Memory** %MEMORY
  %loadMem_407187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %RAX.i465
  %335 = load i64, i64* %PC.i464
  %336 = add i64 %335, 4
  store i64 %336, i64* %PC.i464
  %337 = shl i64 %334, 2
  %338 = icmp slt i64 %337, 0
  %339 = shl i64 %337, 1
  store i64 %339, i64* %RAX.i465, align 8
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %341 = zext i1 %338 to i8
  store i8 %341, i8* %340, align 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %343 = trunc i64 %339 to i32
  %344 = and i32 %343, 254
  %345 = call i32 @llvm.ctpop.i32(i32 %344)
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %342, align 1
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %349, align 1
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %351 = icmp eq i64 %339, 0
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %350, align 1
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %354 = lshr i64 %339, 63
  %355 = trunc i64 %354 to i8
  store i8 %355, i8* %353, align 1
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %356, align 1
  store %struct.Memory* %loadMem_407187, %struct.Memory** %MEMORY
  %loadMem_40718b = load %struct.Memory*, %struct.Memory** %MEMORY
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 33
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 7
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RDX.i463 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %RAX.i462
  %367 = load i64, i64* %PC.i461
  %368 = add i64 %367, 3
  store i64 %368, i64* %PC.i461
  store i64 %366, i64* %RDX.i463, align 8
  store %struct.Memory* %loadMem_40718b, %struct.Memory** %MEMORY
  %loadMem1_40718e = load %struct.Memory*, %struct.Memory** %MEMORY
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 33
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %371 to i64*
  %372 = load i64, i64* %PC.i460
  %373 = add i64 %372, 257746
  %374 = load i64, i64* %PC.i460
  %375 = add i64 %374, 5
  %376 = load i64, i64* %PC.i460
  %377 = add i64 %376, 5
  store i64 %377, i64* %PC.i460
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = add i64 %379, -8
  %381 = inttoptr i64 %380 to i64*
  store i64 %375, i64* %381
  store i64 %380, i64* %378, align 8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %373, i64* %382, align 8
  store %struct.Memory* %loadMem1_40718e, %struct.Memory** %MEMORY
  %loadMem2_40718e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40718e = load i64, i64* %3
  %call2_40718e = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_40718e, %struct.Memory* %loadMem2_40718e)
  store %struct.Memory* %call2_40718e, %struct.Memory** %MEMORY
  %loadMem_407193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 11
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RDI.i459 = bitcast %union.anon* %388 to i64*
  %389 = load i64, i64* %PC.i458
  %390 = add i64 %389, 10
  store i64 %390, i64* %PC.i458
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i459, align 8
  store %struct.Memory* %loadMem_407193, %struct.Memory** %MEMORY
  %loadMem_40719d = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 9
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RSI.i457 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %PC.i456
  %398 = add i64 %397, 5
  store i64 %398, i64* %PC.i456
  store i64 68, i64* %RSI.i457, align 8
  store %struct.Memory* %loadMem_40719d, %struct.Memory** %MEMORY
  %loadMem_4071a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 7
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %RDX.i454 = bitcast %union.anon* %404 to i64*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 15
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %407 to i64*
  %408 = load i64, i64* %RBP.i455
  %409 = sub i64 %408, 24
  %410 = load i64, i64* %PC.i453
  %411 = add i64 %410, 4
  store i64 %411, i64* %PC.i453
  %412 = inttoptr i64 %409 to i64*
  %413 = load i64, i64* %412
  store i64 %413, i64* %RDX.i454, align 8
  store %struct.Memory* %loadMem_4071a2, %struct.Memory** %MEMORY
  %loadMem_4071a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 33
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %416 to i64*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 7
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %RDX.i452 = bitcast %union.anon* %422 to i64*
  %423 = load i64, i64* %RDX.i452
  %424 = load i64, i64* %RAX.i451
  %425 = load i64, i64* %PC.i450
  %426 = add i64 %425, 3
  store i64 %426, i64* %PC.i450
  %427 = inttoptr i64 %423 to i64*
  store i64 %424, i64* %427
  store %struct.Memory* %loadMem_4071a6, %struct.Memory** %MEMORY
  %loadMem_4071a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 5
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RCX.i448 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 15
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %436 to i64*
  %437 = load i64, i64* %RBP.i449
  %438 = sub i64 %437, 4
  %439 = load i64, i64* %PC.i447
  %440 = add i64 %439, 3
  store i64 %440, i64* %PC.i447
  %441 = inttoptr i64 %438 to i32*
  %442 = load i32, i32* %441
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RCX.i448, align 8
  store %struct.Memory* %loadMem_4071a9, %struct.Memory** %MEMORY
  %loadMem_4071ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 33
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 5
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %449 to i64*
  %450 = load i64, i64* %RCX.i446
  %451 = load i64, i64* %PC.i445
  %452 = add i64 %451, 3
  store i64 %452, i64* %PC.i445
  %453 = trunc i64 %450 to i32
  %454 = add i32 1, %453
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RCX.i446, align 8
  %456 = icmp ult i32 %454, %453
  %457 = icmp ult i32 %454, 1
  %458 = or i1 %456, %457
  %459 = zext i1 %458 to i8
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %459, i8* %460, align 1
  %461 = and i32 %454, 255
  %462 = call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %465, i8* %466, align 1
  %467 = xor i64 1, %450
  %468 = trunc i64 %467 to i32
  %469 = xor i32 %468, %454
  %470 = lshr i32 %469, 4
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %472, i8* %473, align 1
  %474 = icmp eq i32 %454, 0
  %475 = zext i1 %474 to i8
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %475, i8* %476, align 1
  %477 = lshr i32 %454, 31
  %478 = trunc i32 %477 to i8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %478, i8* %479, align 1
  %480 = lshr i32 %453, 31
  %481 = xor i32 %477, %480
  %482 = add i32 %481, %477
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %484, i8* %485, align 1
  store %struct.Memory* %loadMem_4071ac, %struct.Memory** %MEMORY
  %loadMem_4071af = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 5
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %ECX.i443 = bitcast %union.anon* %491 to i32*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %494 to i64*
  %495 = load i32, i32* %ECX.i443
  %496 = zext i32 %495 to i64
  %497 = load i64, i64* %PC.i442
  %498 = add i64 %497, 3
  store i64 %498, i64* %PC.i442
  %499 = shl i64 %496, 32
  %500 = ashr exact i64 %499, 32
  store i64 %500, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_4071af, %struct.Memory** %MEMORY
  %loadMem_4071b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 33
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RAX.i441
  %508 = load i64, i64* %PC.i440
  %509 = add i64 %508, 4
  store i64 %509, i64* %PC.i440
  %510 = shl i64 %507, 2
  %511 = icmp slt i64 %510, 0
  %512 = shl i64 %510, 1
  store i64 %512, i64* %RAX.i441, align 8
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %514 = zext i1 %511 to i8
  store i8 %514, i8* %513, align 1
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %516 = trunc i64 %512 to i32
  %517 = and i32 %516, 254
  %518 = call i32 @llvm.ctpop.i32(i32 %517)
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = xor i8 %520, 1
  store i8 %521, i8* %515, align 1
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %522, align 1
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %524 = icmp eq i64 %512, 0
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %523, align 1
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %527 = lshr i64 %512, 63
  %528 = trunc i64 %527 to i8
  store i8 %528, i8* %526, align 1
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %529, align 1
  store %struct.Memory* %loadMem_4071b2, %struct.Memory** %MEMORY
  %loadMem_4071b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 7
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RDX.i439 = bitcast %union.anon* %538 to i64*
  %539 = load i64, i64* %RAX.i438
  %540 = load i64, i64* %PC.i437
  %541 = add i64 %540, 3
  store i64 %541, i64* %PC.i437
  store i64 %539, i64* %RDX.i439, align 8
  store %struct.Memory* %loadMem_4071b6, %struct.Memory** %MEMORY
  %loadMem1_4071b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 33
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %544 to i64*
  %545 = load i64, i64* %PC.i436
  %546 = add i64 %545, 257703
  %547 = load i64, i64* %PC.i436
  %548 = add i64 %547, 5
  %549 = load i64, i64* %PC.i436
  %550 = add i64 %549, 5
  store i64 %550, i64* %PC.i436
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = add i64 %552, -8
  %554 = inttoptr i64 %553 to i64*
  store i64 %548, i64* %554
  store i64 %553, i64* %551, align 8
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %546, i64* %555, align 8
  store %struct.Memory* %loadMem1_4071b9, %struct.Memory** %MEMORY
  %loadMem2_4071b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4071b9 = load i64, i64* %3
  %call2_4071b9 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4071b9, %struct.Memory* %loadMem2_4071b9)
  store %struct.Memory* %call2_4071b9, %struct.Memory** %MEMORY
  %loadMem_4071be = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 11
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RDI.i435 = bitcast %union.anon* %561 to i64*
  %562 = load i64, i64* %PC.i434
  %563 = add i64 %562, 10
  store i64 %563, i64* %PC.i434
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i435, align 8
  store %struct.Memory* %loadMem_4071be, %struct.Memory** %MEMORY
  %loadMem_4071c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 33
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %566 to i64*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 9
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %RSI.i433 = bitcast %union.anon* %569 to i64*
  %570 = load i64, i64* %PC.i432
  %571 = add i64 %570, 5
  store i64 %571, i64* %PC.i432
  store i64 69, i64* %RSI.i433, align 8
  store %struct.Memory* %loadMem_4071c8, %struct.Memory** %MEMORY
  %loadMem_4071cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 7
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RDX.i430 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 15
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %580 to i64*
  %581 = load i64, i64* %RBP.i431
  %582 = sub i64 %581, 24
  %583 = load i64, i64* %PC.i429
  %584 = add i64 %583, 4
  store i64 %584, i64* %PC.i429
  %585 = inttoptr i64 %582 to i64*
  %586 = load i64, i64* %585
  store i64 %586, i64* %RDX.i430, align 8
  store %struct.Memory* %loadMem_4071cd, %struct.Memory** %MEMORY
  %loadMem_4071d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 33
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 1
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %592 to i64*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 7
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %RDX.i428 = bitcast %union.anon* %595 to i64*
  %596 = load i64, i64* %RDX.i428
  %597 = add i64 %596, 8
  %598 = load i64, i64* %RAX.i427
  %599 = load i64, i64* %PC.i426
  %600 = add i64 %599, 4
  store i64 %600, i64* %PC.i426
  %601 = inttoptr i64 %597 to i64*
  store i64 %598, i64* %601
  store %struct.Memory* %loadMem_4071d1, %struct.Memory** %MEMORY
  %loadMem_4071d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 33
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 5
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 15
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %610 to i64*
  %611 = load i64, i64* %RBP.i425
  %612 = sub i64 %611, 4
  %613 = load i64, i64* %PC.i423
  %614 = add i64 %613, 3
  store i64 %614, i64* %PC.i423
  %615 = inttoptr i64 %612 to i32*
  %616 = load i32, i32* %615
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RCX.i424, align 8
  store %struct.Memory* %loadMem_4071d5, %struct.Memory** %MEMORY
  %loadMem_4071d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 33
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %620 to i64*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 5
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %623 to i64*
  %624 = load i64, i64* %RCX.i422
  %625 = load i64, i64* %PC.i421
  %626 = add i64 %625, 3
  store i64 %626, i64* %PC.i421
  %627 = trunc i64 %624 to i32
  %628 = add i32 1, %627
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RCX.i422, align 8
  %630 = icmp ult i32 %628, %627
  %631 = icmp ult i32 %628, 1
  %632 = or i1 %630, %631
  %633 = zext i1 %632 to i8
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %633, i8* %634, align 1
  %635 = and i32 %628, 255
  %636 = call i32 @llvm.ctpop.i32(i32 %635)
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %639, i8* %640, align 1
  %641 = xor i64 1, %624
  %642 = trunc i64 %641 to i32
  %643 = xor i32 %642, %628
  %644 = lshr i32 %643, 4
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %646, i8* %647, align 1
  %648 = icmp eq i32 %628, 0
  %649 = zext i1 %648 to i8
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %649, i8* %650, align 1
  %651 = lshr i32 %628, 31
  %652 = trunc i32 %651 to i8
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %652, i8* %653, align 1
  %654 = lshr i32 %627, 31
  %655 = xor i32 %651, %654
  %656 = add i32 %655, %651
  %657 = icmp eq i32 %656, 2
  %658 = zext i1 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %658, i8* %659, align 1
  store %struct.Memory* %loadMem_4071d8, %struct.Memory** %MEMORY
  %loadMem_4071db = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 5
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %ECX.i419 = bitcast %union.anon* %665 to i32*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 1
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %668 to i64*
  %669 = load i32, i32* %ECX.i419
  %670 = zext i32 %669 to i64
  %671 = load i64, i64* %PC.i418
  %672 = add i64 %671, 3
  store i64 %672, i64* %PC.i418
  %673 = shl i64 %670, 32
  %674 = ashr exact i64 %673, 32
  store i64 %674, i64* %RAX.i420, align 8
  store %struct.Memory* %loadMem_4071db, %struct.Memory** %MEMORY
  %loadMem_4071de = load %struct.Memory*, %struct.Memory** %MEMORY
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 33
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 1
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %680 to i64*
  %681 = load i64, i64* %RAX.i417
  %682 = load i64, i64* %PC.i416
  %683 = add i64 %682, 4
  store i64 %683, i64* %PC.i416
  %684 = shl i64 %681, 2
  %685 = icmp slt i64 %684, 0
  %686 = shl i64 %684, 1
  store i64 %686, i64* %RAX.i417, align 8
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %688 = zext i1 %685 to i8
  store i8 %688, i8* %687, align 1
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %690 = trunc i64 %686 to i32
  %691 = and i32 %690, 254
  %692 = call i32 @llvm.ctpop.i32(i32 %691)
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = xor i8 %694, 1
  store i8 %695, i8* %689, align 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %696, align 1
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %698 = icmp eq i64 %686, 0
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %697, align 1
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %701 = lshr i64 %686, 63
  %702 = trunc i64 %701 to i8
  store i8 %702, i8* %700, align 1
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %703, align 1
  store %struct.Memory* %loadMem_4071de, %struct.Memory** %MEMORY
  %loadMem_4071e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 33
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 1
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 7
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %RDX.i415 = bitcast %union.anon* %712 to i64*
  %713 = load i64, i64* %RAX.i414
  %714 = load i64, i64* %PC.i413
  %715 = add i64 %714, 3
  store i64 %715, i64* %PC.i413
  store i64 %713, i64* %RDX.i415, align 8
  store %struct.Memory* %loadMem_4071e2, %struct.Memory** %MEMORY
  %loadMem1_4071e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 33
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %718 to i64*
  %719 = load i64, i64* %PC.i412
  %720 = add i64 %719, 257659
  %721 = load i64, i64* %PC.i412
  %722 = add i64 %721, 5
  %723 = load i64, i64* %PC.i412
  %724 = add i64 %723, 5
  store i64 %724, i64* %PC.i412
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %726 = load i64, i64* %725, align 8
  %727 = add i64 %726, -8
  %728 = inttoptr i64 %727 to i64*
  store i64 %722, i64* %728
  store i64 %727, i64* %725, align 8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %720, i64* %729, align 8
  store %struct.Memory* %loadMem1_4071e5, %struct.Memory** %MEMORY
  %loadMem2_4071e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4071e5 = load i64, i64* %3
  %call2_4071e5 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4071e5, %struct.Memory* %loadMem2_4071e5)
  store %struct.Memory* %call2_4071e5, %struct.Memory** %MEMORY
  %loadMem_4071ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 11
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %RDI.i411 = bitcast %union.anon* %735 to i64*
  %736 = load i64, i64* %PC.i410
  %737 = add i64 %736, 10
  store i64 %737, i64* %PC.i410
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i411, align 8
  store %struct.Memory* %loadMem_4071ea, %struct.Memory** %MEMORY
  %loadMem_4071f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 9
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RSI.i409 = bitcast %union.anon* %743 to i64*
  %744 = load i64, i64* %PC.i408
  %745 = add i64 %744, 5
  store i64 %745, i64* %PC.i408
  store i64 70, i64* %RSI.i409, align 8
  store %struct.Memory* %loadMem_4071f4, %struct.Memory** %MEMORY
  %loadMem_4071f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 33
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %748 to i64*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 7
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %RDX.i406 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 15
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %754 to i64*
  %755 = load i64, i64* %RBP.i407
  %756 = sub i64 %755, 24
  %757 = load i64, i64* %PC.i405
  %758 = add i64 %757, 4
  store i64 %758, i64* %PC.i405
  %759 = inttoptr i64 %756 to i64*
  %760 = load i64, i64* %759
  store i64 %760, i64* %RDX.i406, align 8
  store %struct.Memory* %loadMem_4071f9, %struct.Memory** %MEMORY
  %loadMem_4071fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 33
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %763 to i64*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 1
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 7
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %769 to i64*
  %770 = load i64, i64* %RDX.i404
  %771 = add i64 %770, 16
  %772 = load i64, i64* %RAX.i403
  %773 = load i64, i64* %PC.i402
  %774 = add i64 %773, 4
  store i64 %774, i64* %PC.i402
  %775 = inttoptr i64 %771 to i64*
  store i64 %772, i64* %775
  store %struct.Memory* %loadMem_4071fd, %struct.Memory** %MEMORY
  %loadMem_407201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 33
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %778 to i64*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 5
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 15
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %784 to i64*
  %785 = load i64, i64* %RBP.i401
  %786 = sub i64 %785, 4
  %787 = load i64, i64* %PC.i399
  %788 = add i64 %787, 3
  store i64 %788, i64* %PC.i399
  %789 = inttoptr i64 %786 to i32*
  %790 = load i32, i32* %789
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RCX.i400, align 8
  store %struct.Memory* %loadMem_407201, %struct.Memory** %MEMORY
  %loadMem_407204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 5
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %RCX.i398
  %799 = load i64, i64* %PC.i397
  %800 = add i64 %799, 3
  store i64 %800, i64* %PC.i397
  %801 = trunc i64 %798 to i32
  %802 = add i32 1, %801
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RCX.i398, align 8
  %804 = icmp ult i32 %802, %801
  %805 = icmp ult i32 %802, 1
  %806 = or i1 %804, %805
  %807 = zext i1 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %807, i8* %808, align 1
  %809 = and i32 %802, 255
  %810 = call i32 @llvm.ctpop.i32(i32 %809)
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %813, i8* %814, align 1
  %815 = xor i64 1, %798
  %816 = trunc i64 %815 to i32
  %817 = xor i32 %816, %802
  %818 = lshr i32 %817, 4
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %820, i8* %821, align 1
  %822 = icmp eq i32 %802, 0
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %823, i8* %824, align 1
  %825 = lshr i32 %802, 31
  %826 = trunc i32 %825 to i8
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %826, i8* %827, align 1
  %828 = lshr i32 %801, 31
  %829 = xor i32 %825, %828
  %830 = add i32 %829, %825
  %831 = icmp eq i32 %830, 2
  %832 = zext i1 %831 to i8
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %832, i8* %833, align 1
  store %struct.Memory* %loadMem_407204, %struct.Memory** %MEMORY
  %loadMem_407207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 33
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 5
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %ECX.i395 = bitcast %union.anon* %839 to i32*
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 1
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %842 to i64*
  %843 = load i32, i32* %ECX.i395
  %844 = zext i32 %843 to i64
  %845 = load i64, i64* %PC.i394
  %846 = add i64 %845, 3
  store i64 %846, i64* %PC.i394
  %847 = shl i64 %844, 32
  %848 = ashr exact i64 %847, 32
  store i64 %848, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_407207, %struct.Memory** %MEMORY
  %loadMem_40720a = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 1
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %854 to i64*
  %855 = load i64, i64* %RAX.i393
  %856 = load i64, i64* %PC.i392
  %857 = add i64 %856, 4
  store i64 %857, i64* %PC.i392
  %858 = shl i64 %855, 2
  %859 = icmp slt i64 %858, 0
  %860 = shl i64 %858, 1
  store i64 %860, i64* %RAX.i393, align 8
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %862 = zext i1 %859 to i8
  store i8 %862, i8* %861, align 1
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %864 = trunc i64 %860 to i32
  %865 = and i32 %864, 254
  %866 = call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %863, align 1
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %870, align 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %872 = icmp eq i64 %860, 0
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %871, align 1
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %875 = lshr i64 %860, 63
  %876 = trunc i64 %875 to i8
  store i8 %876, i8* %874, align 1
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %877, align 1
  store %struct.Memory* %loadMem_40720a, %struct.Memory** %MEMORY
  %loadMem_40720e = load %struct.Memory*, %struct.Memory** %MEMORY
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 33
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 1
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 7
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RDX.i391 = bitcast %union.anon* %886 to i64*
  %887 = load i64, i64* %RAX.i390
  %888 = load i64, i64* %PC.i389
  %889 = add i64 %888, 3
  store i64 %889, i64* %PC.i389
  store i64 %887, i64* %RDX.i391, align 8
  store %struct.Memory* %loadMem_40720e, %struct.Memory** %MEMORY
  %loadMem1_407211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 33
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %PC.i388
  %894 = add i64 %893, 257615
  %895 = load i64, i64* %PC.i388
  %896 = add i64 %895, 5
  %897 = load i64, i64* %PC.i388
  %898 = add i64 %897, 5
  store i64 %898, i64* %PC.i388
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %900 = load i64, i64* %899, align 8
  %901 = add i64 %900, -8
  %902 = inttoptr i64 %901 to i64*
  store i64 %896, i64* %902
  store i64 %901, i64* %899, align 8
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %894, i64* %903, align 8
  store %struct.Memory* %loadMem1_407211, %struct.Memory** %MEMORY
  %loadMem2_407211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407211 = load i64, i64* %3
  %call2_407211 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_407211, %struct.Memory* %loadMem2_407211)
  store %struct.Memory* %call2_407211, %struct.Memory** %MEMORY
  %loadMem_407216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 11
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RDI.i387 = bitcast %union.anon* %909 to i64*
  %910 = load i64, i64* %PC.i386
  %911 = add i64 %910, 10
  store i64 %911, i64* %PC.i386
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i387, align 8
  store %struct.Memory* %loadMem_407216, %struct.Memory** %MEMORY
  %loadMem_407220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 9
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %RSI.i385 = bitcast %union.anon* %917 to i64*
  %918 = load i64, i64* %PC.i384
  %919 = add i64 %918, 5
  store i64 %919, i64* %PC.i384
  store i64 71, i64* %RSI.i385, align 8
  store %struct.Memory* %loadMem_407220, %struct.Memory** %MEMORY
  %loadMem_407225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 7
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RDX.i382 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 15
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %928 to i64*
  %929 = load i64, i64* %RBP.i383
  %930 = sub i64 %929, 24
  %931 = load i64, i64* %PC.i381
  %932 = add i64 %931, 4
  store i64 %932, i64* %PC.i381
  %933 = inttoptr i64 %930 to i64*
  %934 = load i64, i64* %933
  store i64 %934, i64* %RDX.i382, align 8
  store %struct.Memory* %loadMem_407225, %struct.Memory** %MEMORY
  %loadMem_407229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 1
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %940 to i64*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 7
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RDX.i380 = bitcast %union.anon* %943 to i64*
  %944 = load i64, i64* %RDX.i380
  %945 = add i64 %944, 24
  %946 = load i64, i64* %RAX.i379
  %947 = load i64, i64* %PC.i378
  %948 = add i64 %947, 4
  store i64 %948, i64* %PC.i378
  %949 = inttoptr i64 %945 to i64*
  store i64 %946, i64* %949
  store %struct.Memory* %loadMem_407229, %struct.Memory** %MEMORY
  %loadMem_40722d = load %struct.Memory*, %struct.Memory** %MEMORY
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 33
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 5
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 15
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %958 to i64*
  %959 = load i64, i64* %RBP.i377
  %960 = sub i64 %959, 4
  %961 = load i64, i64* %PC.i375
  %962 = add i64 %961, 3
  store i64 %962, i64* %PC.i375
  %963 = inttoptr i64 %960 to i32*
  %964 = load i32, i32* %963
  %965 = zext i32 %964 to i64
  store i64 %965, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_40722d, %struct.Memory** %MEMORY
  %loadMem_407230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 33
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 5
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %971 to i64*
  %972 = load i64, i64* %RCX.i374
  %973 = load i64, i64* %PC.i373
  %974 = add i64 %973, 3
  store i64 %974, i64* %PC.i373
  %975 = trunc i64 %972 to i32
  %976 = add i32 1, %975
  %977 = zext i32 %976 to i64
  store i64 %977, i64* %RCX.i374, align 8
  %978 = icmp ult i32 %976, %975
  %979 = icmp ult i32 %976, 1
  %980 = or i1 %978, %979
  %981 = zext i1 %980 to i8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %981, i8* %982, align 1
  %983 = and i32 %976, 255
  %984 = call i32 @llvm.ctpop.i32(i32 %983)
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  %987 = xor i8 %986, 1
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %987, i8* %988, align 1
  %989 = xor i64 1, %972
  %990 = trunc i64 %989 to i32
  %991 = xor i32 %990, %976
  %992 = lshr i32 %991, 4
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %994, i8* %995, align 1
  %996 = icmp eq i32 %976, 0
  %997 = zext i1 %996 to i8
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %997, i8* %998, align 1
  %999 = lshr i32 %976, 31
  %1000 = trunc i32 %999 to i8
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1000, i8* %1001, align 1
  %1002 = lshr i32 %975, 31
  %1003 = xor i32 %999, %1002
  %1004 = add i32 %1003, %999
  %1005 = icmp eq i32 %1004, 2
  %1006 = zext i1 %1005 to i8
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1006, i8* %1007, align 1
  store %struct.Memory* %loadMem_407230, %struct.Memory** %MEMORY
  %loadMem_407233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 33
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 5
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %ECX.i371 = bitcast %union.anon* %1013 to i32*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 5
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %1016 to i64*
  %1017 = load i32, i32* %ECX.i371
  %1018 = zext i32 %1017 to i64
  %1019 = load i64, i64* %PC.i370
  %1020 = add i64 %1019, 3
  store i64 %1020, i64* %PC.i370
  %1021 = shl i64 %1018, 32
  %1022 = ashr exact i64 %1021, 32
  %1023 = mul i64 5, %1022
  %1024 = trunc i64 %1023 to i32
  %1025 = and i64 %1023, 4294967295
  store i64 %1025, i64* %RCX.i372, align 8
  %1026 = shl i64 %1023, 32
  %1027 = ashr exact i64 %1026, 32
  %1028 = icmp ne i64 %1027, %1023
  %1029 = zext i1 %1028 to i8
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1029, i8* %1030, align 1
  %1031 = and i32 %1024, 255
  %1032 = call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1035, i8* %1036, align 1
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1037, align 1
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1038, align 1
  %1039 = lshr i32 %1024, 31
  %1040 = trunc i32 %1039 to i8
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1040, i8* %1041, align 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1029, i8* %1042, align 1
  store %struct.Memory* %loadMem_407233, %struct.Memory** %MEMORY
  %loadMem_407236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 33
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1045 to i64*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 5
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %ECX.i368 = bitcast %union.anon* %1048 to i32*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 1
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %1051 to i64*
  %1052 = load i32, i32* %ECX.i368
  %1053 = zext i32 %1052 to i64
  %1054 = load i64, i64* %PC.i367
  %1055 = add i64 %1054, 3
  store i64 %1055, i64* %PC.i367
  %1056 = shl i64 %1053, 32
  %1057 = ashr exact i64 %1056, 32
  store i64 %1057, i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_407236, %struct.Memory** %MEMORY
  %loadMem_407239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 1
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %1063 to i64*
  %1064 = load i64, i64* %RAX.i366
  %1065 = load i64, i64* %PC.i365
  %1066 = add i64 %1065, 4
  store i64 %1066, i64* %PC.i365
  %1067 = shl i64 %1064, 1
  %1068 = icmp slt i64 %1067, 0
  %1069 = shl i64 %1067, 1
  store i64 %1069, i64* %RAX.i366, align 8
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1071 = zext i1 %1068 to i8
  store i8 %1071, i8* %1070, align 1
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1073 = trunc i64 %1069 to i32
  %1074 = and i32 %1073, 254
  %1075 = call i32 @llvm.ctpop.i32(i32 %1074)
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  store i8 %1078, i8* %1072, align 1
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1079, align 1
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1081 = icmp eq i64 %1069, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %1080, align 1
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1084 = lshr i64 %1069, 63
  %1085 = trunc i64 %1084 to i8
  store i8 %1085, i8* %1083, align 1
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1086, align 1
  store %struct.Memory* %loadMem_407239, %struct.Memory** %MEMORY
  %loadMem_40723d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 33
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 1
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 7
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %1095 to i64*
  %1096 = load i64, i64* %RAX.i363
  %1097 = load i64, i64* %PC.i362
  %1098 = add i64 %1097, 3
  store i64 %1098, i64* %PC.i362
  store i64 %1096, i64* %RDX.i364, align 8
  store %struct.Memory* %loadMem_40723d, %struct.Memory** %MEMORY
  %loadMem1_407240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 33
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1101 to i64*
  %1102 = load i64, i64* %PC.i361
  %1103 = add i64 %1102, 257568
  %1104 = load i64, i64* %PC.i361
  %1105 = add i64 %1104, 5
  %1106 = load i64, i64* %PC.i361
  %1107 = add i64 %1106, 5
  store i64 %1107, i64* %PC.i361
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1109 = load i64, i64* %1108, align 8
  %1110 = add i64 %1109, -8
  %1111 = inttoptr i64 %1110 to i64*
  store i64 %1105, i64* %1111
  store i64 %1110, i64* %1108, align 8
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1103, i64* %1112, align 8
  store %struct.Memory* %loadMem1_407240, %struct.Memory** %MEMORY
  %loadMem2_407240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407240 = load i64, i64* %3
  %call2_407240 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_407240, %struct.Memory* %loadMem2_407240)
  store %struct.Memory* %call2_407240, %struct.Memory** %MEMORY
  %loadMem_407245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 33
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 11
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %RDI.i360 = bitcast %union.anon* %1118 to i64*
  %1119 = load i64, i64* %PC.i359
  %1120 = add i64 %1119, 10
  store i64 %1120, i64* %PC.i359
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i360, align 8
  store %struct.Memory* %loadMem_407245, %struct.Memory** %MEMORY
  %loadMem_40724f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 9
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RSI.i358 = bitcast %union.anon* %1126 to i64*
  %1127 = load i64, i64* %PC.i357
  %1128 = add i64 %1127, 5
  store i64 %1128, i64* %PC.i357
  store i64 72, i64* %RSI.i358, align 8
  store %struct.Memory* %loadMem_40724f, %struct.Memory** %MEMORY
  %loadMem_407254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 33
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 7
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %RDX.i355 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 15
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %1137 to i64*
  %1138 = load i64, i64* %RBP.i356
  %1139 = sub i64 %1138, 24
  %1140 = load i64, i64* %PC.i354
  %1141 = add i64 %1140, 4
  store i64 %1141, i64* %PC.i354
  %1142 = inttoptr i64 %1139 to i64*
  %1143 = load i64, i64* %1142
  store i64 %1143, i64* %RDX.i355, align 8
  store %struct.Memory* %loadMem_407254, %struct.Memory** %MEMORY
  %loadMem_407258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 33
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 1
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 7
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %RDX.i353 = bitcast %union.anon* %1152 to i64*
  %1153 = load i64, i64* %RDX.i353
  %1154 = add i64 %1153, 32
  %1155 = load i64, i64* %RAX.i352
  %1156 = load i64, i64* %PC.i351
  %1157 = add i64 %1156, 4
  store i64 %1157, i64* %PC.i351
  %1158 = inttoptr i64 %1154 to i64*
  store i64 %1155, i64* %1158
  store %struct.Memory* %loadMem_407258, %struct.Memory** %MEMORY
  %loadMem_40725c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 5
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %1164 to i64*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 15
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %1167 to i64*
  %1168 = load i64, i64* %RBP.i350
  %1169 = sub i64 %1168, 4
  %1170 = load i64, i64* %PC.i348
  %1171 = add i64 %1170, 3
  store i64 %1171, i64* %PC.i348
  %1172 = inttoptr i64 %1169 to i32*
  %1173 = load i32, i32* %1172
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_40725c, %struct.Memory** %MEMORY
  %loadMem_40725f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 5
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %1180 to i64*
  %1181 = load i64, i64* %RCX.i347
  %1182 = load i64, i64* %PC.i346
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %PC.i346
  %1184 = trunc i64 %1181 to i32
  %1185 = add i32 1, %1184
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RCX.i347, align 8
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
  store %struct.Memory* %loadMem_40725f, %struct.Memory** %MEMORY
  %loadMem_407262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 33
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1219 to i64*
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 17
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %R8D.i344 = bitcast %union.anon* %1222 to i32*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 15
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %1225 to i64*
  %1226 = bitcast i32* %R8D.i344 to i64*
  %1227 = load i64, i64* %RBP.i345
  %1228 = sub i64 %1227, 8
  %1229 = load i64, i64* %PC.i343
  %1230 = add i64 %1229, 4
  store i64 %1230, i64* %PC.i343
  %1231 = inttoptr i64 %1228 to i32*
  %1232 = load i32, i32* %1231
  %1233 = zext i32 %1232 to i64
  store i64 %1233, i64* %1226, align 8
  store %struct.Memory* %loadMem_407262, %struct.Memory** %MEMORY
  %loadMem_407266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 33
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 17
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %R8D.i342 = bitcast %union.anon* %1239 to i32*
  %1240 = bitcast i32* %R8D.i342 to i64*
  %1241 = load i32, i32* %R8D.i342
  %1242 = zext i32 %1241 to i64
  %1243 = load i64, i64* %PC.i341
  %1244 = add i64 %1243, 4
  store i64 %1244, i64* %PC.i341
  %1245 = add i32 2, %1241
  %1246 = zext i32 %1245 to i64
  store i64 %1246, i64* %1240, align 8
  %1247 = icmp ult i32 %1245, %1241
  %1248 = icmp ult i32 %1245, 2
  %1249 = or i1 %1247, %1248
  %1250 = zext i1 %1249 to i8
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1250, i8* %1251, align 1
  %1252 = and i32 %1245, 255
  %1253 = call i32 @llvm.ctpop.i32(i32 %1252)
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1256, i8* %1257, align 1
  %1258 = xor i64 2, %1242
  %1259 = trunc i64 %1258 to i32
  %1260 = xor i32 %1259, %1245
  %1261 = lshr i32 %1260, 4
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1263, i8* %1264, align 1
  %1265 = icmp eq i32 %1245, 0
  %1266 = zext i1 %1265 to i8
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1266, i8* %1267, align 1
  %1268 = lshr i32 %1245, 31
  %1269 = trunc i32 %1268 to i8
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1269, i8* %1270, align 1
  %1271 = lshr i32 %1241, 31
  %1272 = xor i32 %1268, %1271
  %1273 = add i32 %1272, %1268
  %1274 = icmp eq i32 %1273, 2
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1275, i8* %1276, align 1
  store %struct.Memory* %loadMem_407266, %struct.Memory** %MEMORY
  %loadMem_40726a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 17
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %R8D.i339 = bitcast %union.anon* %1282 to i32*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 5
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RCX.i340 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %RCX.i340
  %1287 = load i32, i32* %R8D.i339
  %1288 = zext i32 %1287 to i64
  %1289 = load i64, i64* %PC.i338
  %1290 = add i64 %1289, 4
  store i64 %1290, i64* %PC.i338
  %1291 = shl i64 %1286, 32
  %1292 = ashr exact i64 %1291, 32
  %1293 = shl i64 %1288, 32
  %1294 = ashr exact i64 %1293, 32
  %1295 = mul i64 %1294, %1292
  %1296 = trunc i64 %1295 to i32
  %1297 = and i64 %1295, 4294967295
  store i64 %1297, i64* %RCX.i340, align 8
  %1298 = shl i64 %1295, 32
  %1299 = ashr exact i64 %1298, 32
  %1300 = icmp ne i64 %1299, %1295
  %1301 = zext i1 %1300 to i8
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1301, i8* %1302, align 1
  %1303 = and i32 %1296, 255
  %1304 = call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1307, i8* %1308, align 1
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1309, align 1
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1310, align 1
  %1311 = lshr i32 %1296, 31
  %1312 = trunc i32 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1312, i8* %1313, align 1
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1301, i8* %1314, align 1
  store %struct.Memory* %loadMem_40726a, %struct.Memory** %MEMORY
  %loadMem_40726e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 5
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %ECX.i336 = bitcast %union.anon* %1320 to i32*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 1
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %1323 to i64*
  %1324 = load i32, i32* %ECX.i336
  %1325 = zext i32 %1324 to i64
  %1326 = load i64, i64* %PC.i335
  %1327 = add i64 %1326, 3
  store i64 %1327, i64* %PC.i335
  %1328 = shl i64 %1325, 32
  %1329 = ashr exact i64 %1328, 32
  store i64 %1329, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_40726e, %struct.Memory** %MEMORY
  %loadMem_407271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 33
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 1
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %1335 to i64*
  %1336 = load i64, i64* %RAX.i334
  %1337 = load i64, i64* %PC.i333
  %1338 = add i64 %1337, 4
  store i64 %1338, i64* %PC.i333
  %1339 = shl i64 %1336, 1
  %1340 = icmp slt i64 %1339, 0
  %1341 = shl i64 %1339, 1
  store i64 %1341, i64* %RAX.i334, align 8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1343 = zext i1 %1340 to i8
  store i8 %1343, i8* %1342, align 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1345 = trunc i64 %1341 to i32
  %1346 = and i32 %1345, 254
  %1347 = call i32 @llvm.ctpop.i32(i32 %1346)
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  %1350 = xor i8 %1349, 1
  store i8 %1350, i8* %1344, align 1
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1351, align 1
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1353 = icmp eq i64 %1341, 0
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %1352, align 1
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1356 = lshr i64 %1341, 63
  %1357 = trunc i64 %1356 to i8
  store i8 %1357, i8* %1355, align 1
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1358, align 1
  store %struct.Memory* %loadMem_407271, %struct.Memory** %MEMORY
  %loadMem_407275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 1
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 7
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RDX.i332 = bitcast %union.anon* %1367 to i64*
  %1368 = load i64, i64* %RAX.i331
  %1369 = load i64, i64* %PC.i330
  %1370 = add i64 %1369, 3
  store i64 %1370, i64* %PC.i330
  store i64 %1368, i64* %RDX.i332, align 8
  store %struct.Memory* %loadMem_407275, %struct.Memory** %MEMORY
  %loadMem1_407278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1373 to i64*
  %1374 = load i64, i64* %PC.i329
  %1375 = add i64 %1374, 257512
  %1376 = load i64, i64* %PC.i329
  %1377 = add i64 %1376, 5
  %1378 = load i64, i64* %PC.i329
  %1379 = add i64 %1378, 5
  store i64 %1379, i64* %PC.i329
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1381 = load i64, i64* %1380, align 8
  %1382 = add i64 %1381, -8
  %1383 = inttoptr i64 %1382 to i64*
  store i64 %1377, i64* %1383
  store i64 %1382, i64* %1380, align 8
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1375, i64* %1384, align 8
  store %struct.Memory* %loadMem1_407278, %struct.Memory** %MEMORY
  %loadMem2_407278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407278 = load i64, i64* %3
  %call2_407278 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_407278, %struct.Memory* %loadMem2_407278)
  store %struct.Memory* %call2_407278, %struct.Memory** %MEMORY
  %loadMem_40727d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 33
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1387 to i64*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 11
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %RDI.i328 = bitcast %union.anon* %1390 to i64*
  %1391 = load i64, i64* %PC.i327
  %1392 = add i64 %1391, 10
  store i64 %1392, i64* %PC.i327
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i328, align 8
  store %struct.Memory* %loadMem_40727d, %struct.Memory** %MEMORY
  %loadMem_407287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 33
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 9
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %RSI.i326 = bitcast %union.anon* %1398 to i64*
  %1399 = load i64, i64* %PC.i325
  %1400 = add i64 %1399, 5
  store i64 %1400, i64* %PC.i325
  store i64 73, i64* %RSI.i326, align 8
  store %struct.Memory* %loadMem_407287, %struct.Memory** %MEMORY
  %loadMem_40728c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 7
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RDX.i323 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 15
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %1409 to i64*
  %1410 = load i64, i64* %RBP.i324
  %1411 = sub i64 %1410, 24
  %1412 = load i64, i64* %PC.i322
  %1413 = add i64 %1412, 4
  store i64 %1413, i64* %PC.i322
  %1414 = inttoptr i64 %1411 to i64*
  %1415 = load i64, i64* %1414
  store i64 %1415, i64* %RDX.i323, align 8
  store %struct.Memory* %loadMem_40728c, %struct.Memory** %MEMORY
  %loadMem_407290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 1
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %1421 to i64*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 7
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %1424 to i64*
  %1425 = load i64, i64* %RDX.i321
  %1426 = add i64 %1425, 40
  %1427 = load i64, i64* %RAX.i320
  %1428 = load i64, i64* %PC.i319
  %1429 = add i64 %1428, 4
  store i64 %1429, i64* %PC.i319
  %1430 = inttoptr i64 %1426 to i64*
  store i64 %1427, i64* %1430
  store %struct.Memory* %loadMem_407290, %struct.Memory** %MEMORY
  %loadMem_407294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 33
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1433 to i64*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 5
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 15
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %RBP.i318
  %1441 = sub i64 %1440, 4
  %1442 = load i64, i64* %PC.i316
  %1443 = add i64 %1442, 3
  store i64 %1443, i64* %PC.i316
  %1444 = inttoptr i64 %1441 to i32*
  %1445 = load i32, i32* %1444
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RCX.i317, align 8
  store %struct.Memory* %loadMem_407294, %struct.Memory** %MEMORY
  %loadMem_407297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 33
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 5
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %1452 to i64*
  %1453 = load i64, i64* %RCX.i315
  %1454 = load i64, i64* %PC.i314
  %1455 = add i64 %1454, 3
  store i64 %1455, i64* %PC.i314
  %1456 = trunc i64 %1453 to i32
  %1457 = add i32 1, %1456
  %1458 = zext i32 %1457 to i64
  store i64 %1458, i64* %RCX.i315, align 8
  %1459 = icmp ult i32 %1457, %1456
  %1460 = icmp ult i32 %1457, 1
  %1461 = or i1 %1459, %1460
  %1462 = zext i1 %1461 to i8
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1462, i8* %1463, align 1
  %1464 = and i32 %1457, 255
  %1465 = call i32 @llvm.ctpop.i32(i32 %1464)
  %1466 = trunc i32 %1465 to i8
  %1467 = and i8 %1466, 1
  %1468 = xor i8 %1467, 1
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1468, i8* %1469, align 1
  %1470 = xor i64 1, %1453
  %1471 = trunc i64 %1470 to i32
  %1472 = xor i32 %1471, %1457
  %1473 = lshr i32 %1472, 4
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1475, i8* %1476, align 1
  %1477 = icmp eq i32 %1457, 0
  %1478 = zext i1 %1477 to i8
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1478, i8* %1479, align 1
  %1480 = lshr i32 %1457, 31
  %1481 = trunc i32 %1480 to i8
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1481, i8* %1482, align 1
  %1483 = lshr i32 %1456, 31
  %1484 = xor i32 %1480, %1483
  %1485 = add i32 %1484, %1480
  %1486 = icmp eq i32 %1485, 2
  %1487 = zext i1 %1486 to i8
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1487, i8* %1488, align 1
  store %struct.Memory* %loadMem_407297, %struct.Memory** %MEMORY
  %loadMem_40729a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 33
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1491 to i64*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 17
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %R8D.i312 = bitcast %union.anon* %1494 to i32*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 15
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %1497 to i64*
  %1498 = bitcast i32* %R8D.i312 to i64*
  %1499 = load i64, i64* %RBP.i313
  %1500 = sub i64 %1499, 8
  %1501 = load i64, i64* %PC.i311
  %1502 = add i64 %1501, 4
  store i64 %1502, i64* %PC.i311
  %1503 = inttoptr i64 %1500 to i32*
  %1504 = load i32, i32* %1503
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %1498, align 8
  store %struct.Memory* %loadMem_40729a, %struct.Memory** %MEMORY
  %loadMem_40729e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 33
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 17
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %R8D.i310 = bitcast %union.anon* %1511 to i32*
  %1512 = bitcast i32* %R8D.i310 to i64*
  %1513 = load i32, i32* %R8D.i310
  %1514 = zext i32 %1513 to i64
  %1515 = load i64, i64* %PC.i309
  %1516 = add i64 %1515, 4
  store i64 %1516, i64* %PC.i309
  %1517 = add i32 2, %1513
  %1518 = zext i32 %1517 to i64
  store i64 %1518, i64* %1512, align 8
  %1519 = icmp ult i32 %1517, %1513
  %1520 = icmp ult i32 %1517, 2
  %1521 = or i1 %1519, %1520
  %1522 = zext i1 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1522, i8* %1523, align 1
  %1524 = and i32 %1517, 255
  %1525 = call i32 @llvm.ctpop.i32(i32 %1524)
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  %1528 = xor i8 %1527, 1
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1528, i8* %1529, align 1
  %1530 = xor i64 2, %1514
  %1531 = trunc i64 %1530 to i32
  %1532 = xor i32 %1531, %1517
  %1533 = lshr i32 %1532, 4
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1535, i8* %1536, align 1
  %1537 = icmp eq i32 %1517, 0
  %1538 = zext i1 %1537 to i8
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1538, i8* %1539, align 1
  %1540 = lshr i32 %1517, 31
  %1541 = trunc i32 %1540 to i8
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1541, i8* %1542, align 1
  %1543 = lshr i32 %1513, 31
  %1544 = xor i32 %1540, %1543
  %1545 = add i32 %1544, %1540
  %1546 = icmp eq i32 %1545, 2
  %1547 = zext i1 %1546 to i8
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1547, i8* %1548, align 1
  store %struct.Memory* %loadMem_40729e, %struct.Memory** %MEMORY
  %loadMem_4072a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 33
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1551 to i64*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 17
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %R8D.i307 = bitcast %union.anon* %1554 to i32*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 5
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %1557 to i64*
  %1558 = load i64, i64* %RCX.i308
  %1559 = load i32, i32* %R8D.i307
  %1560 = zext i32 %1559 to i64
  %1561 = load i64, i64* %PC.i306
  %1562 = add i64 %1561, 4
  store i64 %1562, i64* %PC.i306
  %1563 = shl i64 %1558, 32
  %1564 = ashr exact i64 %1563, 32
  %1565 = shl i64 %1560, 32
  %1566 = ashr exact i64 %1565, 32
  %1567 = mul i64 %1566, %1564
  %1568 = trunc i64 %1567 to i32
  %1569 = and i64 %1567, 4294967295
  store i64 %1569, i64* %RCX.i308, align 8
  %1570 = shl i64 %1567, 32
  %1571 = ashr exact i64 %1570, 32
  %1572 = icmp ne i64 %1571, %1567
  %1573 = zext i1 %1572 to i8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1573, i8* %1574, align 1
  %1575 = and i32 %1568, 255
  %1576 = call i32 @llvm.ctpop.i32(i32 %1575)
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1579, i8* %1580, align 1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1581, align 1
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1582, align 1
  %1583 = lshr i32 %1568, 31
  %1584 = trunc i32 %1583 to i8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1584, i8* %1585, align 1
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1573, i8* %1586, align 1
  store %struct.Memory* %loadMem_4072a2, %struct.Memory** %MEMORY
  %loadMem_4072a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 5
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %ECX.i304 = bitcast %union.anon* %1592 to i32*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 1
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %1595 to i64*
  %1596 = load i32, i32* %ECX.i304
  %1597 = zext i32 %1596 to i64
  %1598 = load i64, i64* %PC.i303
  %1599 = add i64 %1598, 3
  store i64 %1599, i64* %PC.i303
  %1600 = shl i64 %1597, 32
  %1601 = ashr exact i64 %1600, 32
  store i64 %1601, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_4072a6, %struct.Memory** %MEMORY
  %loadMem_4072a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 33
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1604 to i64*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 1
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %1607 to i64*
  %1608 = load i64, i64* %RAX.i302
  %1609 = load i64, i64* %PC.i301
  %1610 = add i64 %1609, 4
  store i64 %1610, i64* %PC.i301
  %1611 = shl i64 %1608, 1
  %1612 = icmp slt i64 %1611, 0
  %1613 = shl i64 %1611, 1
  store i64 %1613, i64* %RAX.i302, align 8
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1615 = zext i1 %1612 to i8
  store i8 %1615, i8* %1614, align 1
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1617 = trunc i64 %1613 to i32
  %1618 = and i32 %1617, 254
  %1619 = call i32 @llvm.ctpop.i32(i32 %1618)
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  %1622 = xor i8 %1621, 1
  store i8 %1622, i8* %1616, align 1
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1623, align 1
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1625 = icmp eq i64 %1613, 0
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %1624, align 1
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1628 = lshr i64 %1613, 63
  %1629 = trunc i64 %1628 to i8
  store i8 %1629, i8* %1627, align 1
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1630, align 1
  store %struct.Memory* %loadMem_4072a9, %struct.Memory** %MEMORY
  %loadMem_4072ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 33
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 1
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 7
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RDX.i300 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %RAX.i299
  %1641 = load i64, i64* %PC.i298
  %1642 = add i64 %1641, 3
  store i64 %1642, i64* %PC.i298
  store i64 %1640, i64* %RDX.i300, align 8
  store %struct.Memory* %loadMem_4072ad, %struct.Memory** %MEMORY
  %loadMem1_4072b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 33
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1645 to i64*
  %1646 = load i64, i64* %PC.i297
  %1647 = add i64 %1646, 257456
  %1648 = load i64, i64* %PC.i297
  %1649 = add i64 %1648, 5
  %1650 = load i64, i64* %PC.i297
  %1651 = add i64 %1650, 5
  store i64 %1651, i64* %PC.i297
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1653 = load i64, i64* %1652, align 8
  %1654 = add i64 %1653, -8
  %1655 = inttoptr i64 %1654 to i64*
  store i64 %1649, i64* %1655
  store i64 %1654, i64* %1652, align 8
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1647, i64* %1656, align 8
  store %struct.Memory* %loadMem1_4072b0, %struct.Memory** %MEMORY
  %loadMem2_4072b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4072b0 = load i64, i64* %3
  %call2_4072b0 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4072b0, %struct.Memory* %loadMem2_4072b0)
  store %struct.Memory* %call2_4072b0, %struct.Memory** %MEMORY
  %loadMem_4072b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 11
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RDI.i296 = bitcast %union.anon* %1662 to i64*
  %1663 = load i64, i64* %PC.i295
  %1664 = add i64 %1663, 10
  store i64 %1664, i64* %PC.i295
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i296, align 8
  store %struct.Memory* %loadMem_4072b5, %struct.Memory** %MEMORY
  %loadMem_4072bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 9
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RSI.i294 = bitcast %union.anon* %1670 to i64*
  %1671 = load i64, i64* %PC.i293
  %1672 = add i64 %1671, 5
  store i64 %1672, i64* %PC.i293
  store i64 74, i64* %RSI.i294, align 8
  store %struct.Memory* %loadMem_4072bf, %struct.Memory** %MEMORY
  %loadMem_4072c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 33
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1675 to i64*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 7
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %RDX.i291 = bitcast %union.anon* %1678 to i64*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 15
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %1681 to i64*
  %1682 = load i64, i64* %RBP.i292
  %1683 = sub i64 %1682, 24
  %1684 = load i64, i64* %PC.i290
  %1685 = add i64 %1684, 4
  store i64 %1685, i64* %PC.i290
  %1686 = inttoptr i64 %1683 to i64*
  %1687 = load i64, i64* %1686
  store i64 %1687, i64* %RDX.i291, align 8
  store %struct.Memory* %loadMem_4072c4, %struct.Memory** %MEMORY
  %loadMem_4072c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 33
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 1
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %1693 to i64*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 7
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %RDX.i289 = bitcast %union.anon* %1696 to i64*
  %1697 = load i64, i64* %RDX.i289
  %1698 = add i64 %1697, 48
  %1699 = load i64, i64* %RAX.i288
  %1700 = load i64, i64* %PC.i287
  %1701 = add i64 %1700, 4
  store i64 %1701, i64* %PC.i287
  %1702 = inttoptr i64 %1698 to i64*
  store i64 %1699, i64* %1702
  store %struct.Memory* %loadMem_4072c8, %struct.Memory** %MEMORY
  %loadMem_4072cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 33
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1705 to i64*
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 5
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 15
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %1711 to i64*
  %1712 = load i64, i64* %RBP.i286
  %1713 = sub i64 %1712, 4
  %1714 = load i64, i64* %PC.i284
  %1715 = add i64 %1714, 3
  store i64 %1715, i64* %PC.i284
  %1716 = inttoptr i64 %1713 to i32*
  %1717 = load i32, i32* %1716
  %1718 = zext i32 %1717 to i64
  store i64 %1718, i64* %RCX.i285, align 8
  store %struct.Memory* %loadMem_4072cc, %struct.Memory** %MEMORY
  %loadMem_4072cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 5
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %1724 to i64*
  %1725 = load i64, i64* %RCX.i283
  %1726 = load i64, i64* %PC.i282
  %1727 = add i64 %1726, 3
  store i64 %1727, i64* %PC.i282
  %1728 = trunc i64 %1725 to i32
  %1729 = add i32 1, %1728
  %1730 = zext i32 %1729 to i64
  store i64 %1730, i64* %RCX.i283, align 8
  %1731 = icmp ult i32 %1729, %1728
  %1732 = icmp ult i32 %1729, 1
  %1733 = or i1 %1731, %1732
  %1734 = zext i1 %1733 to i8
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1734, i8* %1735, align 1
  %1736 = and i32 %1729, 255
  %1737 = call i32 @llvm.ctpop.i32(i32 %1736)
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  %1740 = xor i8 %1739, 1
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1740, i8* %1741, align 1
  %1742 = xor i64 1, %1725
  %1743 = trunc i64 %1742 to i32
  %1744 = xor i32 %1743, %1729
  %1745 = lshr i32 %1744, 4
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1747, i8* %1748, align 1
  %1749 = icmp eq i32 %1729, 0
  %1750 = zext i1 %1749 to i8
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1750, i8* %1751, align 1
  %1752 = lshr i32 %1729, 31
  %1753 = trunc i32 %1752 to i8
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1753, i8* %1754, align 1
  %1755 = lshr i32 %1728, 31
  %1756 = xor i32 %1752, %1755
  %1757 = add i32 %1756, %1752
  %1758 = icmp eq i32 %1757, 2
  %1759 = zext i1 %1758 to i8
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1759, i8* %1760, align 1
  store %struct.Memory* %loadMem_4072cf, %struct.Memory** %MEMORY
  %loadMem_4072d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 33
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1763 to i64*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 17
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %R8D.i280 = bitcast %union.anon* %1766 to i32*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 15
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %1769 to i64*
  %1770 = bitcast i32* %R8D.i280 to i64*
  %1771 = load i64, i64* %RBP.i281
  %1772 = sub i64 %1771, 8
  %1773 = load i64, i64* %PC.i279
  %1774 = add i64 %1773, 4
  store i64 %1774, i64* %PC.i279
  %1775 = inttoptr i64 %1772 to i32*
  %1776 = load i32, i32* %1775
  %1777 = zext i32 %1776 to i64
  store i64 %1777, i64* %1770, align 8
  store %struct.Memory* %loadMem_4072d2, %struct.Memory** %MEMORY
  %loadMem_4072d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 33
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 17
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %R8D.i278 = bitcast %union.anon* %1783 to i32*
  %1784 = bitcast i32* %R8D.i278 to i64*
  %1785 = load i32, i32* %R8D.i278
  %1786 = zext i32 %1785 to i64
  %1787 = load i64, i64* %PC.i277
  %1788 = add i64 %1787, 4
  store i64 %1788, i64* %PC.i277
  %1789 = add i32 2, %1785
  %1790 = zext i32 %1789 to i64
  store i64 %1790, i64* %1784, align 8
  %1791 = icmp ult i32 %1789, %1785
  %1792 = icmp ult i32 %1789, 2
  %1793 = or i1 %1791, %1792
  %1794 = zext i1 %1793 to i8
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1794, i8* %1795, align 1
  %1796 = and i32 %1789, 255
  %1797 = call i32 @llvm.ctpop.i32(i32 %1796)
  %1798 = trunc i32 %1797 to i8
  %1799 = and i8 %1798, 1
  %1800 = xor i8 %1799, 1
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1800, i8* %1801, align 1
  %1802 = xor i64 2, %1786
  %1803 = trunc i64 %1802 to i32
  %1804 = xor i32 %1803, %1789
  %1805 = lshr i32 %1804, 4
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1807, i8* %1808, align 1
  %1809 = icmp eq i32 %1789, 0
  %1810 = zext i1 %1809 to i8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1810, i8* %1811, align 1
  %1812 = lshr i32 %1789, 31
  %1813 = trunc i32 %1812 to i8
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1813, i8* %1814, align 1
  %1815 = lshr i32 %1785, 31
  %1816 = xor i32 %1812, %1815
  %1817 = add i32 %1816, %1812
  %1818 = icmp eq i32 %1817, 2
  %1819 = zext i1 %1818 to i8
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1819, i8* %1820, align 1
  store %struct.Memory* %loadMem_4072d6, %struct.Memory** %MEMORY
  %loadMem_4072da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 17
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1826 to i32*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 5
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %RCX.i276
  %1831 = load i32, i32* %R8D.i
  %1832 = zext i32 %1831 to i64
  %1833 = load i64, i64* %PC.i275
  %1834 = add i64 %1833, 4
  store i64 %1834, i64* %PC.i275
  %1835 = shl i64 %1830, 32
  %1836 = ashr exact i64 %1835, 32
  %1837 = shl i64 %1832, 32
  %1838 = ashr exact i64 %1837, 32
  %1839 = mul i64 %1838, %1836
  %1840 = trunc i64 %1839 to i32
  %1841 = and i64 %1839, 4294967295
  store i64 %1841, i64* %RCX.i276, align 8
  %1842 = shl i64 %1839, 32
  %1843 = ashr exact i64 %1842, 32
  %1844 = icmp ne i64 %1843, %1839
  %1845 = zext i1 %1844 to i8
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1845, i8* %1846, align 1
  %1847 = and i32 %1840, 255
  %1848 = call i32 @llvm.ctpop.i32(i32 %1847)
  %1849 = trunc i32 %1848 to i8
  %1850 = and i8 %1849, 1
  %1851 = xor i8 %1850, 1
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1851, i8* %1852, align 1
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1853, align 1
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1854, align 1
  %1855 = lshr i32 %1840, 31
  %1856 = trunc i32 %1855 to i8
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1856, i8* %1857, align 1
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1845, i8* %1858, align 1
  store %struct.Memory* %loadMem_4072da, %struct.Memory** %MEMORY
  %loadMem_4072de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 33
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 5
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %ECX.i273 = bitcast %union.anon* %1864 to i32*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 1
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %1867 to i64*
  %1868 = load i32, i32* %ECX.i273
  %1869 = zext i32 %1868 to i64
  %1870 = load i64, i64* %PC.i272
  %1871 = add i64 %1870, 3
  store i64 %1871, i64* %PC.i272
  %1872 = shl i64 %1869, 32
  %1873 = ashr exact i64 %1872, 32
  store i64 %1873, i64* %RAX.i274, align 8
  store %struct.Memory* %loadMem_4072de, %struct.Memory** %MEMORY
  %loadMem_4072e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 1
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %1879 to i64*
  %1880 = load i64, i64* %RAX.i271
  %1881 = load i64, i64* %PC.i270
  %1882 = add i64 %1881, 4
  store i64 %1882, i64* %PC.i270
  %1883 = shl i64 %1880, 1
  %1884 = icmp slt i64 %1883, 0
  %1885 = shl i64 %1883, 1
  store i64 %1885, i64* %RAX.i271, align 8
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1887 = zext i1 %1884 to i8
  store i8 %1887, i8* %1886, align 1
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1889 = trunc i64 %1885 to i32
  %1890 = and i32 %1889, 254
  %1891 = call i32 @llvm.ctpop.i32(i32 %1890)
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = xor i8 %1893, 1
  store i8 %1894, i8* %1888, align 1
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1895, align 1
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1897 = icmp eq i64 %1885, 0
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %1896, align 1
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1900 = lshr i64 %1885, 63
  %1901 = trunc i64 %1900 to i8
  store i8 %1901, i8* %1899, align 1
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1902, align 1
  store %struct.Memory* %loadMem_4072e1, %struct.Memory** %MEMORY
  %loadMem_4072e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 33
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 1
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 7
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %RDX.i269 = bitcast %union.anon* %1911 to i64*
  %1912 = load i64, i64* %RAX.i268
  %1913 = load i64, i64* %PC.i267
  %1914 = add i64 %1913, 3
  store i64 %1914, i64* %PC.i267
  store i64 %1912, i64* %RDX.i269, align 8
  store %struct.Memory* %loadMem_4072e5, %struct.Memory** %MEMORY
  %loadMem1_4072e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 33
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1917 to i64*
  %1918 = load i64, i64* %PC.i266
  %1919 = add i64 %1918, 257400
  %1920 = load i64, i64* %PC.i266
  %1921 = add i64 %1920, 5
  %1922 = load i64, i64* %PC.i266
  %1923 = add i64 %1922, 5
  store i64 %1923, i64* %PC.i266
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1925 = load i64, i64* %1924, align 8
  %1926 = add i64 %1925, -8
  %1927 = inttoptr i64 %1926 to i64*
  store i64 %1921, i64* %1927
  store i64 %1926, i64* %1924, align 8
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1919, i64* %1928, align 8
  store %struct.Memory* %loadMem1_4072e8, %struct.Memory** %MEMORY
  %loadMem2_4072e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4072e8 = load i64, i64* %3
  %call2_4072e8 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4072e8, %struct.Memory* %loadMem2_4072e8)
  store %struct.Memory* %call2_4072e8, %struct.Memory** %MEMORY
  %loadMem_4072ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 33
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 7
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RDX.i264 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 15
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %1937 to i64*
  %1938 = load i64, i64* %RBP.i265
  %1939 = sub i64 %1938, 24
  %1940 = load i64, i64* %PC.i263
  %1941 = add i64 %1940, 4
  store i64 %1941, i64* %PC.i263
  %1942 = inttoptr i64 %1939 to i64*
  %1943 = load i64, i64* %1942
  store i64 %1943, i64* %RDX.i264, align 8
  store %struct.Memory* %loadMem_4072ed, %struct.Memory** %MEMORY
  %loadMem_4072f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 1
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 7
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RDX.i262 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %RDX.i262
  %1954 = add i64 %1953, 56
  %1955 = load i64, i64* %RAX.i261
  %1956 = load i64, i64* %PC.i260
  %1957 = add i64 %1956, 4
  store i64 %1957, i64* %PC.i260
  %1958 = inttoptr i64 %1954 to i64*
  store i64 %1955, i64* %1958
  store %struct.Memory* %loadMem_4072f1, %struct.Memory** %MEMORY
  %loadMem_4072f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 33
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 1
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 15
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %RBP.i259
  %1969 = sub i64 %1968, 24
  %1970 = load i64, i64* %PC.i257
  %1971 = add i64 %1970, 4
  store i64 %1971, i64* %PC.i257
  %1972 = inttoptr i64 %1969 to i64*
  %1973 = load i64, i64* %1972
  store i64 %1973, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_4072f5, %struct.Memory** %MEMORY
  %loadMem_4072f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 1
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %RAX.i256
  %1981 = add i64 %1980, 32
  %1982 = load i64, i64* %PC.i255
  %1983 = add i64 %1982, 4
  store i64 %1983, i64* %PC.i255
  %1984 = inttoptr i64 %1981 to i64*
  %1985 = load i64, i64* %1984
  store i64 %1985, i64* %RAX.i256, align 8
  store %struct.Memory* %loadMem_4072f9, %struct.Memory** %MEMORY
  %loadMem_4072fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 33
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1988 to i64*
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 7
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %RDX.i253 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 15
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %1994 to i64*
  %1995 = load i64, i64* %RBP.i254
  %1996 = sub i64 %1995, 24
  %1997 = load i64, i64* %PC.i252
  %1998 = add i64 %1997, 4
  store i64 %1998, i64* %PC.i252
  %1999 = inttoptr i64 %1996 to i64*
  %2000 = load i64, i64* %1999
  store i64 %2000, i64* %RDX.i253, align 8
  store %struct.Memory* %loadMem_4072fd, %struct.Memory** %MEMORY
  %loadMem_407301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 33
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 7
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RDX.i251 = bitcast %union.anon* %2006 to i64*
  %2007 = load i64, i64* %RDX.i251
  %2008 = load i64, i64* %PC.i250
  %2009 = add i64 %2008, 3
  store i64 %2009, i64* %PC.i250
  %2010 = inttoptr i64 %2007 to i64*
  %2011 = load i64, i64* %2010
  store i64 %2011, i64* %RDX.i251, align 8
  store %struct.Memory* %loadMem_407301, %struct.Memory** %MEMORY
  %loadMem_407304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 1
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 7
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RDX.i249 = bitcast %union.anon* %2020 to i64*
  %2021 = load i64, i64* %RDX.i249
  %2022 = load i64, i64* %RAX.i248
  %2023 = load i64, i64* %PC.i247
  %2024 = add i64 %2023, 3
  store i64 %2024, i64* %PC.i247
  %2025 = inttoptr i64 %2021 to i64*
  store i64 %2022, i64* %2025
  store %struct.Memory* %loadMem_407304, %struct.Memory** %MEMORY
  %loadMem_407307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 1
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 15
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %RBP.i246
  %2036 = sub i64 %2035, 24
  %2037 = load i64, i64* %PC.i244
  %2038 = add i64 %2037, 4
  store i64 %2038, i64* %PC.i244
  %2039 = inttoptr i64 %2036 to i64*
  %2040 = load i64, i64* %2039
  store i64 %2040, i64* %RAX.i245, align 8
  store %struct.Memory* %loadMem_407307, %struct.Memory** %MEMORY
  %loadMem_40730b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 1
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %2046 to i64*
  %2047 = load i64, i64* %RAX.i243
  %2048 = add i64 %2047, 40
  %2049 = load i64, i64* %PC.i242
  %2050 = add i64 %2049, 4
  store i64 %2050, i64* %PC.i242
  %2051 = inttoptr i64 %2048 to i64*
  %2052 = load i64, i64* %2051
  store i64 %2052, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_40730b, %struct.Memory** %MEMORY
  %loadMem_40730f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 7
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RDX.i240 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 15
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %2061 to i64*
  %2062 = load i64, i64* %RBP.i241
  %2063 = sub i64 %2062, 24
  %2064 = load i64, i64* %PC.i239
  %2065 = add i64 %2064, 4
  store i64 %2065, i64* %PC.i239
  %2066 = inttoptr i64 %2063 to i64*
  %2067 = load i64, i64* %2066
  store i64 %2067, i64* %RDX.i240, align 8
  store %struct.Memory* %loadMem_40730f, %struct.Memory** %MEMORY
  %loadMem_407313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 33
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 7
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %RDX.i238 = bitcast %union.anon* %2073 to i64*
  %2074 = load i64, i64* %RDX.i238
  %2075 = add i64 %2074, 8
  %2076 = load i64, i64* %PC.i237
  %2077 = add i64 %2076, 4
  store i64 %2077, i64* %PC.i237
  %2078 = inttoptr i64 %2075 to i64*
  %2079 = load i64, i64* %2078
  store i64 %2079, i64* %RDX.i238, align 8
  store %struct.Memory* %loadMem_407313, %struct.Memory** %MEMORY
  %loadMem_407317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 33
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2082 to i64*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 1
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 7
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RDX.i236 = bitcast %union.anon* %2088 to i64*
  %2089 = load i64, i64* %RDX.i236
  %2090 = load i64, i64* %RAX.i235
  %2091 = load i64, i64* %PC.i234
  %2092 = add i64 %2091, 3
  store i64 %2092, i64* %PC.i234
  %2093 = inttoptr i64 %2089 to i64*
  store i64 %2090, i64* %2093
  store %struct.Memory* %loadMem_407317, %struct.Memory** %MEMORY
  %loadMem_40731a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 1
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 15
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %RBP.i233
  %2104 = sub i64 %2103, 24
  %2105 = load i64, i64* %PC.i231
  %2106 = add i64 %2105, 4
  store i64 %2106, i64* %PC.i231
  %2107 = inttoptr i64 %2104 to i64*
  %2108 = load i64, i64* %2107
  store i64 %2108, i64* %RAX.i232, align 8
  store %struct.Memory* %loadMem_40731a, %struct.Memory** %MEMORY
  %loadMem_40731e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 1
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %2114 to i64*
  %2115 = load i64, i64* %RAX.i230
  %2116 = add i64 %2115, 48
  %2117 = load i64, i64* %PC.i229
  %2118 = add i64 %2117, 4
  store i64 %2118, i64* %PC.i229
  %2119 = inttoptr i64 %2116 to i64*
  %2120 = load i64, i64* %2119
  store i64 %2120, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_40731e, %struct.Memory** %MEMORY
  %loadMem_407322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 7
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RDX.i227 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 15
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %2129 to i64*
  %2130 = load i64, i64* %RBP.i228
  %2131 = sub i64 %2130, 24
  %2132 = load i64, i64* %PC.i226
  %2133 = add i64 %2132, 4
  store i64 %2133, i64* %PC.i226
  %2134 = inttoptr i64 %2131 to i64*
  %2135 = load i64, i64* %2134
  store i64 %2135, i64* %RDX.i227, align 8
  store %struct.Memory* %loadMem_407322, %struct.Memory** %MEMORY
  %loadMem_407326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 7
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RDX.i225 = bitcast %union.anon* %2141 to i64*
  %2142 = load i64, i64* %RDX.i225
  %2143 = add i64 %2142, 16
  %2144 = load i64, i64* %PC.i224
  %2145 = add i64 %2144, 4
  store i64 %2145, i64* %PC.i224
  %2146 = inttoptr i64 %2143 to i64*
  %2147 = load i64, i64* %2146
  store i64 %2147, i64* %RDX.i225, align 8
  store %struct.Memory* %loadMem_407326, %struct.Memory** %MEMORY
  %loadMem_40732a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 33
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2150 to i64*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 1
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 7
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %RDX.i223 = bitcast %union.anon* %2156 to i64*
  %2157 = load i64, i64* %RDX.i223
  %2158 = load i64, i64* %RAX.i222
  %2159 = load i64, i64* %PC.i221
  %2160 = add i64 %2159, 3
  store i64 %2160, i64* %PC.i221
  %2161 = inttoptr i64 %2157 to i64*
  store i64 %2158, i64* %2161
  store %struct.Memory* %loadMem_40732a, %struct.Memory** %MEMORY
  %loadMem_40732d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 1
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 15
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %2170 to i64*
  %2171 = load i64, i64* %RBP.i220
  %2172 = sub i64 %2171, 24
  %2173 = load i64, i64* %PC.i218
  %2174 = add i64 %2173, 4
  store i64 %2174, i64* %PC.i218
  %2175 = inttoptr i64 %2172 to i64*
  %2176 = load i64, i64* %2175
  store i64 %2176, i64* %RAX.i219, align 8
  store %struct.Memory* %loadMem_40732d, %struct.Memory** %MEMORY
  %loadMem_407331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 1
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %2182 to i64*
  %2183 = load i64, i64* %RAX.i217
  %2184 = add i64 %2183, 56
  %2185 = load i64, i64* %PC.i216
  %2186 = add i64 %2185, 4
  store i64 %2186, i64* %PC.i216
  %2187 = inttoptr i64 %2184 to i64*
  %2188 = load i64, i64* %2187
  store i64 %2188, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_407331, %struct.Memory** %MEMORY
  %loadMem_407335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 7
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RDX.i214 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 15
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %2197 to i64*
  %2198 = load i64, i64* %RBP.i215
  %2199 = sub i64 %2198, 24
  %2200 = load i64, i64* %PC.i213
  %2201 = add i64 %2200, 4
  store i64 %2201, i64* %PC.i213
  %2202 = inttoptr i64 %2199 to i64*
  %2203 = load i64, i64* %2202
  store i64 %2203, i64* %RDX.i214, align 8
  store %struct.Memory* %loadMem_407335, %struct.Memory** %MEMORY
  %loadMem_407339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 7
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RDX.i212 = bitcast %union.anon* %2209 to i64*
  %2210 = load i64, i64* %RDX.i212
  %2211 = add i64 %2210, 24
  %2212 = load i64, i64* %PC.i211
  %2213 = add i64 %2212, 4
  store i64 %2213, i64* %PC.i211
  %2214 = inttoptr i64 %2211 to i64*
  %2215 = load i64, i64* %2214
  store i64 %2215, i64* %RDX.i212, align 8
  store %struct.Memory* %loadMem_407339, %struct.Memory** %MEMORY
  %loadMem_40733d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 1
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 7
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %2224 to i64*
  %2225 = load i64, i64* %RDX.i210
  %2226 = load i64, i64* %RAX.i209
  %2227 = load i64, i64* %PC.i208
  %2228 = add i64 %2227, 3
  store i64 %2228, i64* %PC.i208
  %2229 = inttoptr i64 %2225 to i64*
  store i64 %2226, i64* %2229
  store %struct.Memory* %loadMem_40733d, %struct.Memory** %MEMORY
  %loadMem_407340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 33
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2232 to i64*
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 15
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %2235 to i64*
  %2236 = load i64, i64* %RBP.i207
  %2237 = sub i64 %2236, 28
  %2238 = load i64, i64* %PC.i206
  %2239 = add i64 %2238, 7
  store i64 %2239, i64* %PC.i206
  %2240 = inttoptr i64 %2237 to i32*
  store i32 1, i32* %2240
  store %struct.Memory* %loadMem_407340, %struct.Memory** %MEMORY
  br label %block_.L_407347

block_.L_407347:                                  ; preds = %block_407353, %entry
  %loadMem_407347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 33
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2243 to i64*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 1
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 15
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2249 to i64*
  %2250 = load i64, i64* %RBP.i205
  %2251 = sub i64 %2250, 28
  %2252 = load i64, i64* %PC.i203
  %2253 = add i64 %2252, 3
  store i64 %2253, i64* %PC.i203
  %2254 = inttoptr i64 %2251 to i32*
  %2255 = load i32, i32* %2254
  %2256 = zext i32 %2255 to i64
  store i64 %2256, i64* %RAX.i204, align 8
  store %struct.Memory* %loadMem_407347, %struct.Memory** %MEMORY
  %loadMem_40734a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 1
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %EAX.i201 = bitcast %union.anon* %2262 to i32*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 15
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %2265 to i64*
  %2266 = load i32, i32* %EAX.i201
  %2267 = zext i32 %2266 to i64
  %2268 = load i64, i64* %RBP.i202
  %2269 = sub i64 %2268, 4
  %2270 = load i64, i64* %PC.i200
  %2271 = add i64 %2270, 3
  store i64 %2271, i64* %PC.i200
  %2272 = inttoptr i64 %2269 to i32*
  %2273 = load i32, i32* %2272
  %2274 = sub i32 %2266, %2273
  %2275 = icmp ult i32 %2266, %2273
  %2276 = zext i1 %2275 to i8
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2276, i8* %2277, align 1
  %2278 = and i32 %2274, 255
  %2279 = call i32 @llvm.ctpop.i32(i32 %2278)
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  %2282 = xor i8 %2281, 1
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2282, i8* %2283, align 1
  %2284 = xor i32 %2273, %2266
  %2285 = xor i32 %2284, %2274
  %2286 = lshr i32 %2285, 4
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2288, i8* %2289, align 1
  %2290 = icmp eq i32 %2274, 0
  %2291 = zext i1 %2290 to i8
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2291, i8* %2292, align 1
  %2293 = lshr i32 %2274, 31
  %2294 = trunc i32 %2293 to i8
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2294, i8* %2295, align 1
  %2296 = lshr i32 %2266, 31
  %2297 = lshr i32 %2273, 31
  %2298 = xor i32 %2297, %2296
  %2299 = xor i32 %2293, %2296
  %2300 = add i32 %2299, %2298
  %2301 = icmp eq i32 %2300, 2
  %2302 = zext i1 %2301 to i8
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2302, i8* %2303, align 1
  store %struct.Memory* %loadMem_40734a, %struct.Memory** %MEMORY
  %loadMem_40734d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 33
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2306 to i64*
  %2307 = load i64, i64* %PC.i199
  %2308 = add i64 %2307, 206
  %2309 = load i64, i64* %PC.i199
  %2310 = add i64 %2309, 6
  %2311 = load i64, i64* %PC.i199
  %2312 = add i64 %2311, 6
  store i64 %2312, i64* %PC.i199
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2314 = load i8, i8* %2313, align 1
  %2315 = icmp eq i8 %2314, 0
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2317 = load i8, i8* %2316, align 1
  %2318 = icmp ne i8 %2317, 0
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2320 = load i8, i8* %2319, align 1
  %2321 = icmp ne i8 %2320, 0
  %2322 = xor i1 %2318, %2321
  %2323 = xor i1 %2322, true
  %2324 = and i1 %2315, %2323
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %BRANCH_TAKEN, align 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2327 = select i1 %2324, i64 %2308, i64 %2310
  store i64 %2327, i64* %2326, align 8
  store %struct.Memory* %loadMem_40734d, %struct.Memory** %MEMORY
  %loadBr_40734d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40734d = icmp eq i8 %loadBr_40734d, 1
  br i1 %cmpBr_40734d, label %block_.L_40741b, label %block_407353

block_407353:                                     ; preds = %block_.L_407347
  %loadMem_407353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 33
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2330 to i64*
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 1
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 15
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %2336 to i64*
  %2337 = load i64, i64* %RBP.i198
  %2338 = sub i64 %2337, 24
  %2339 = load i64, i64* %PC.i196
  %2340 = add i64 %2339, 4
  store i64 %2340, i64* %PC.i196
  %2341 = inttoptr i64 %2338 to i64*
  %2342 = load i64, i64* %2341
  store i64 %2342, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_407353, %struct.Memory** %MEMORY
  %loadMem_407357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 33
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 1
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %2348 to i64*
  %2349 = load i64, i64* %RAX.i195
  %2350 = load i64, i64* %PC.i194
  %2351 = add i64 %2350, 3
  store i64 %2351, i64* %PC.i194
  %2352 = inttoptr i64 %2349 to i64*
  %2353 = load i64, i64* %2352
  store i64 %2353, i64* %RAX.i195, align 8
  store %struct.Memory* %loadMem_407357, %struct.Memory** %MEMORY
  %loadMem_40735a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 33
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2356 to i64*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 1
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %2359 to i64*
  %2360 = load i64, i64* %RAX.i193
  %2361 = load i64, i64* %PC.i192
  %2362 = add i64 %2361, 3
  store i64 %2362, i64* %PC.i192
  %2363 = inttoptr i64 %2360 to i64*
  %2364 = load i64, i64* %2363
  store i64 %2364, i64* %RAX.i193, align 8
  store %struct.Memory* %loadMem_40735a, %struct.Memory** %MEMORY
  %loadMem_40735d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 33
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 5
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 15
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %2373 to i64*
  %2374 = load i64, i64* %RBP.i191
  %2375 = sub i64 %2374, 28
  %2376 = load i64, i64* %PC.i189
  %2377 = add i64 %2376, 4
  store i64 %2377, i64* %PC.i189
  %2378 = inttoptr i64 %2375 to i32*
  %2379 = load i32, i32* %2378
  %2380 = sext i32 %2379 to i64
  %2381 = mul i64 %2380, 5
  %2382 = trunc i64 %2381 to i32
  %2383 = and i64 %2381, 4294967295
  store i64 %2383, i64* %RCX.i190, align 8
  %2384 = shl i64 %2381, 32
  %2385 = ashr exact i64 %2384, 32
  %2386 = icmp ne i64 %2385, %2381
  %2387 = zext i1 %2386 to i8
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2387, i8* %2388, align 1
  %2389 = and i32 %2382, 255
  %2390 = call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2393, i8* %2394, align 1
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2395, align 1
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2396, align 1
  %2397 = lshr i32 %2382, 31
  %2398 = trunc i32 %2397 to i8
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2398, i8* %2399, align 1
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2387, i8* %2400, align 1
  store %struct.Memory* %loadMem_40735d, %struct.Memory** %MEMORY
  %loadMem_407361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 5
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %ECX.i187 = bitcast %union.anon* %2406 to i32*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 7
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RDX.i188 = bitcast %union.anon* %2409 to i64*
  %2410 = load i32, i32* %ECX.i187
  %2411 = zext i32 %2410 to i64
  %2412 = load i64, i64* %PC.i186
  %2413 = add i64 %2412, 3
  store i64 %2413, i64* %PC.i186
  %2414 = shl i64 %2411, 32
  %2415 = ashr exact i64 %2414, 32
  store i64 %2415, i64* %RDX.i188, align 8
  store %struct.Memory* %loadMem_407361, %struct.Memory** %MEMORY
  %loadMem_407364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 7
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RDX.i185 = bitcast %union.anon* %2421 to i64*
  %2422 = load i64, i64* %RDX.i185
  %2423 = load i64, i64* %PC.i184
  %2424 = add i64 %2423, 4
  store i64 %2424, i64* %PC.i184
  %2425 = shl i64 %2422, 1
  %2426 = icmp slt i64 %2425, 0
  %2427 = shl i64 %2425, 1
  store i64 %2427, i64* %RDX.i185, align 8
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2429 = zext i1 %2426 to i8
  store i8 %2429, i8* %2428, align 1
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2431 = trunc i64 %2427 to i32
  %2432 = and i32 %2431, 254
  %2433 = call i32 @llvm.ctpop.i32(i32 %2432)
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  store i8 %2436, i8* %2430, align 1
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2437, align 1
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2439 = icmp eq i64 %2427, 0
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %2438, align 1
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2442 = lshr i64 %2427, 63
  %2443 = trunc i64 %2442 to i8
  store i8 %2443, i8* %2441, align 1
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2444, align 1
  store %struct.Memory* %loadMem_407364, %struct.Memory** %MEMORY
  %loadMem_407368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 33
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2447 to i64*
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 1
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %2450 to i64*
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 7
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %RDX.i183 = bitcast %union.anon* %2453 to i64*
  %2454 = load i64, i64* %RAX.i182
  %2455 = load i64, i64* %RDX.i183
  %2456 = load i64, i64* %PC.i181
  %2457 = add i64 %2456, 3
  store i64 %2457, i64* %PC.i181
  %2458 = add i64 %2455, %2454
  store i64 %2458, i64* %RAX.i182, align 8
  %2459 = icmp ult i64 %2458, %2454
  %2460 = icmp ult i64 %2458, %2455
  %2461 = or i1 %2459, %2460
  %2462 = zext i1 %2461 to i8
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2462, i8* %2463, align 1
  %2464 = trunc i64 %2458 to i32
  %2465 = and i32 %2464, 255
  %2466 = call i32 @llvm.ctpop.i32(i32 %2465)
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  %2469 = xor i8 %2468, 1
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2469, i8* %2470, align 1
  %2471 = xor i64 %2455, %2454
  %2472 = xor i64 %2471, %2458
  %2473 = lshr i64 %2472, 4
  %2474 = trunc i64 %2473 to i8
  %2475 = and i8 %2474, 1
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2475, i8* %2476, align 1
  %2477 = icmp eq i64 %2458, 0
  %2478 = zext i1 %2477 to i8
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2478, i8* %2479, align 1
  %2480 = lshr i64 %2458, 63
  %2481 = trunc i64 %2480 to i8
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2481, i8* %2482, align 1
  %2483 = lshr i64 %2454, 63
  %2484 = lshr i64 %2455, 63
  %2485 = xor i64 %2480, %2483
  %2486 = xor i64 %2480, %2484
  %2487 = add i64 %2485, %2486
  %2488 = icmp eq i64 %2487, 2
  %2489 = zext i1 %2488 to i8
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2489, i8* %2490, align 1
  store %struct.Memory* %loadMem_407368, %struct.Memory** %MEMORY
  %loadMem_40736b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 33
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %2493 to i64*
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 7
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %RDX.i179 = bitcast %union.anon* %2496 to i64*
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 15
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %2499 to i64*
  %2500 = load i64, i64* %RBP.i180
  %2501 = sub i64 %2500, 24
  %2502 = load i64, i64* %PC.i178
  %2503 = add i64 %2502, 4
  store i64 %2503, i64* %PC.i178
  %2504 = inttoptr i64 %2501 to i64*
  %2505 = load i64, i64* %2504
  store i64 %2505, i64* %RDX.i179, align 8
  store %struct.Memory* %loadMem_40736b, %struct.Memory** %MEMORY
  %loadMem_40736f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 7
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RDX.i177 = bitcast %union.anon* %2511 to i64*
  %2512 = load i64, i64* %RDX.i177
  %2513 = load i64, i64* %PC.i176
  %2514 = add i64 %2513, 3
  store i64 %2514, i64* %PC.i176
  %2515 = inttoptr i64 %2512 to i64*
  %2516 = load i64, i64* %2515
  store i64 %2516, i64* %RDX.i177, align 8
  store %struct.Memory* %loadMem_40736f, %struct.Memory** %MEMORY
  %loadMem_407372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 33
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 9
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %RSI.i174 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 15
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %2525 to i64*
  %2526 = load i64, i64* %RBP.i175
  %2527 = sub i64 %2526, 28
  %2528 = load i64, i64* %PC.i173
  %2529 = add i64 %2528, 4
  store i64 %2529, i64* %PC.i173
  %2530 = inttoptr i64 %2527 to i32*
  %2531 = load i32, i32* %2530
  %2532 = sext i32 %2531 to i64
  store i64 %2532, i64* %RSI.i174, align 8
  store %struct.Memory* %loadMem_407372, %struct.Memory** %MEMORY
  %loadMem_407376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 33
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %2535 to i64*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 1
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %2538 to i64*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 7
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %RDX.i171 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 9
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %RSI.i172 = bitcast %union.anon* %2544 to i64*
  %2545 = load i64, i64* %RDX.i171
  %2546 = load i64, i64* %RSI.i172
  %2547 = mul i64 %2546, 8
  %2548 = add i64 %2547, %2545
  %2549 = load i64, i64* %RAX.i170
  %2550 = load i64, i64* %PC.i169
  %2551 = add i64 %2550, 4
  store i64 %2551, i64* %PC.i169
  %2552 = inttoptr i64 %2548 to i64*
  store i64 %2549, i64* %2552
  store %struct.Memory* %loadMem_407376, %struct.Memory** %MEMORY
  %loadMem_40737a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 33
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 1
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 15
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %RBP.i168
  %2563 = sub i64 %2562, 24
  %2564 = load i64, i64* %PC.i166
  %2565 = add i64 %2564, 4
  store i64 %2565, i64* %PC.i166
  %2566 = inttoptr i64 %2563 to i64*
  %2567 = load i64, i64* %2566
  store i64 %2567, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_40737a, %struct.Memory** %MEMORY
  %loadMem_40737e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 33
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 1
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %2573 to i64*
  %2574 = load i64, i64* %RAX.i165
  %2575 = add i64 %2574, 8
  %2576 = load i64, i64* %PC.i164
  %2577 = add i64 %2576, 4
  store i64 %2577, i64* %PC.i164
  %2578 = inttoptr i64 %2575 to i64*
  %2579 = load i64, i64* %2578
  store i64 %2579, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_40737e, %struct.Memory** %MEMORY
  %loadMem_407382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 1
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %2585 to i64*
  %2586 = load i64, i64* %RAX.i163
  %2587 = load i64, i64* %PC.i162
  %2588 = add i64 %2587, 3
  store i64 %2588, i64* %PC.i162
  %2589 = inttoptr i64 %2586 to i64*
  %2590 = load i64, i64* %2589
  store i64 %2590, i64* %RAX.i163, align 8
  store %struct.Memory* %loadMem_407382, %struct.Memory** %MEMORY
  %loadMem_407385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 33
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 5
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 15
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %2599 to i64*
  %2600 = load i64, i64* %RBP.i161
  %2601 = sub i64 %2600, 28
  %2602 = load i64, i64* %PC.i159
  %2603 = add i64 %2602, 3
  store i64 %2603, i64* %PC.i159
  %2604 = inttoptr i64 %2601 to i32*
  %2605 = load i32, i32* %2604
  %2606 = zext i32 %2605 to i64
  store i64 %2606, i64* %RCX.i160, align 8
  store %struct.Memory* %loadMem_407385, %struct.Memory** %MEMORY
  %loadMem_407388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 33
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 11
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RDI.i157 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 15
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %2615 to i64*
  %2616 = load i64, i64* %RBP.i158
  %2617 = sub i64 %2616, 8
  %2618 = load i64, i64* %PC.i156
  %2619 = add i64 %2618, 3
  store i64 %2619, i64* %PC.i156
  %2620 = inttoptr i64 %2617 to i32*
  %2621 = load i32, i32* %2620
  %2622 = zext i32 %2621 to i64
  store i64 %2622, i64* %RDI.i157, align 8
  store %struct.Memory* %loadMem_407388, %struct.Memory** %MEMORY
  %loadMem_40738b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 11
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RDI.i155 = bitcast %union.anon* %2628 to i64*
  %2629 = load i64, i64* %RDI.i155
  %2630 = load i64, i64* %PC.i154
  %2631 = add i64 %2630, 3
  store i64 %2631, i64* %PC.i154
  %2632 = trunc i64 %2629 to i32
  %2633 = add i32 2, %2632
  %2634 = zext i32 %2633 to i64
  store i64 %2634, i64* %RDI.i155, align 8
  %2635 = icmp ult i32 %2633, %2632
  %2636 = icmp ult i32 %2633, 2
  %2637 = or i1 %2635, %2636
  %2638 = zext i1 %2637 to i8
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2638, i8* %2639, align 1
  %2640 = and i32 %2633, 255
  %2641 = call i32 @llvm.ctpop.i32(i32 %2640)
  %2642 = trunc i32 %2641 to i8
  %2643 = and i8 %2642, 1
  %2644 = xor i8 %2643, 1
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2644, i8* %2645, align 1
  %2646 = xor i64 2, %2629
  %2647 = trunc i64 %2646 to i32
  %2648 = xor i32 %2647, %2633
  %2649 = lshr i32 %2648, 4
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2651, i8* %2652, align 1
  %2653 = icmp eq i32 %2633, 0
  %2654 = zext i1 %2653 to i8
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2654, i8* %2655, align 1
  %2656 = lshr i32 %2633, 31
  %2657 = trunc i32 %2656 to i8
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2657, i8* %2658, align 1
  %2659 = lshr i32 %2632, 31
  %2660 = xor i32 %2656, %2659
  %2661 = add i32 %2660, %2656
  %2662 = icmp eq i32 %2661, 2
  %2663 = zext i1 %2662 to i8
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2663, i8* %2664, align 1
  store %struct.Memory* %loadMem_40738b, %struct.Memory** %MEMORY
  %loadMem_40738e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 33
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2667 to i64*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 11
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %EDI.i152 = bitcast %union.anon* %2670 to i32*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 5
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %2673 to i64*
  %2674 = load i64, i64* %RCX.i153
  %2675 = load i32, i32* %EDI.i152
  %2676 = zext i32 %2675 to i64
  %2677 = load i64, i64* %PC.i151
  %2678 = add i64 %2677, 3
  store i64 %2678, i64* %PC.i151
  %2679 = shl i64 %2674, 32
  %2680 = ashr exact i64 %2679, 32
  %2681 = shl i64 %2676, 32
  %2682 = ashr exact i64 %2681, 32
  %2683 = mul i64 %2682, %2680
  %2684 = trunc i64 %2683 to i32
  %2685 = and i64 %2683, 4294967295
  store i64 %2685, i64* %RCX.i153, align 8
  %2686 = shl i64 %2683, 32
  %2687 = ashr exact i64 %2686, 32
  %2688 = icmp ne i64 %2687, %2683
  %2689 = zext i1 %2688 to i8
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2689, i8* %2690, align 1
  %2691 = and i32 %2684, 255
  %2692 = call i32 @llvm.ctpop.i32(i32 %2691)
  %2693 = trunc i32 %2692 to i8
  %2694 = and i8 %2693, 1
  %2695 = xor i8 %2694, 1
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2695, i8* %2696, align 1
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2697, align 1
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2698, align 1
  %2699 = lshr i32 %2684, 31
  %2700 = trunc i32 %2699 to i8
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2700, i8* %2701, align 1
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2689, i8* %2702, align 1
  store %struct.Memory* %loadMem_40738e, %struct.Memory** %MEMORY
  %loadMem_407391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 33
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2705 to i64*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 5
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %ECX.i149 = bitcast %union.anon* %2708 to i32*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 7
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %2711 to i64*
  %2712 = load i32, i32* %ECX.i149
  %2713 = zext i32 %2712 to i64
  %2714 = load i64, i64* %PC.i148
  %2715 = add i64 %2714, 3
  store i64 %2715, i64* %PC.i148
  %2716 = shl i64 %2713, 32
  %2717 = ashr exact i64 %2716, 32
  store i64 %2717, i64* %RDX.i150, align 8
  store %struct.Memory* %loadMem_407391, %struct.Memory** %MEMORY
  %loadMem_407394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 33
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2720 to i64*
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 7
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %RDX.i147 = bitcast %union.anon* %2723 to i64*
  %2724 = load i64, i64* %RDX.i147
  %2725 = load i64, i64* %PC.i146
  %2726 = add i64 %2725, 4
  store i64 %2726, i64* %PC.i146
  %2727 = shl i64 %2724, 1
  %2728 = icmp slt i64 %2727, 0
  %2729 = shl i64 %2727, 1
  store i64 %2729, i64* %RDX.i147, align 8
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2731 = zext i1 %2728 to i8
  store i8 %2731, i8* %2730, align 1
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2733 = trunc i64 %2729 to i32
  %2734 = and i32 %2733, 254
  %2735 = call i32 @llvm.ctpop.i32(i32 %2734)
  %2736 = trunc i32 %2735 to i8
  %2737 = and i8 %2736, 1
  %2738 = xor i8 %2737, 1
  store i8 %2738, i8* %2732, align 1
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2739, align 1
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2741 = icmp eq i64 %2729, 0
  %2742 = zext i1 %2741 to i8
  store i8 %2742, i8* %2740, align 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2744 = lshr i64 %2729, 63
  %2745 = trunc i64 %2744 to i8
  store i8 %2745, i8* %2743, align 1
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2746, align 1
  store %struct.Memory* %loadMem_407394, %struct.Memory** %MEMORY
  %loadMem_407398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 33
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2749 to i64*
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 1
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %2752 to i64*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 7
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %RDX.i145 = bitcast %union.anon* %2755 to i64*
  %2756 = load i64, i64* %RAX.i144
  %2757 = load i64, i64* %RDX.i145
  %2758 = load i64, i64* %PC.i143
  %2759 = add i64 %2758, 3
  store i64 %2759, i64* %PC.i143
  %2760 = add i64 %2757, %2756
  store i64 %2760, i64* %RAX.i144, align 8
  %2761 = icmp ult i64 %2760, %2756
  %2762 = icmp ult i64 %2760, %2757
  %2763 = or i1 %2761, %2762
  %2764 = zext i1 %2763 to i8
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2764, i8* %2765, align 1
  %2766 = trunc i64 %2760 to i32
  %2767 = and i32 %2766, 255
  %2768 = call i32 @llvm.ctpop.i32(i32 %2767)
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  %2771 = xor i8 %2770, 1
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2771, i8* %2772, align 1
  %2773 = xor i64 %2757, %2756
  %2774 = xor i64 %2773, %2760
  %2775 = lshr i64 %2774, 4
  %2776 = trunc i64 %2775 to i8
  %2777 = and i8 %2776, 1
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2777, i8* %2778, align 1
  %2779 = icmp eq i64 %2760, 0
  %2780 = zext i1 %2779 to i8
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2780, i8* %2781, align 1
  %2782 = lshr i64 %2760, 63
  %2783 = trunc i64 %2782 to i8
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2783, i8* %2784, align 1
  %2785 = lshr i64 %2756, 63
  %2786 = lshr i64 %2757, 63
  %2787 = xor i64 %2782, %2785
  %2788 = xor i64 %2782, %2786
  %2789 = add i64 %2787, %2788
  %2790 = icmp eq i64 %2789, 2
  %2791 = zext i1 %2790 to i8
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2791, i8* %2792, align 1
  store %struct.Memory* %loadMem_407398, %struct.Memory** %MEMORY
  %loadMem_40739b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 33
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2795 to i64*
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 7
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %RDX.i141 = bitcast %union.anon* %2798 to i64*
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 15
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %2801 to i64*
  %2802 = load i64, i64* %RBP.i142
  %2803 = sub i64 %2802, 24
  %2804 = load i64, i64* %PC.i140
  %2805 = add i64 %2804, 4
  store i64 %2805, i64* %PC.i140
  %2806 = inttoptr i64 %2803 to i64*
  %2807 = load i64, i64* %2806
  store i64 %2807, i64* %RDX.i141, align 8
  store %struct.Memory* %loadMem_40739b, %struct.Memory** %MEMORY
  %loadMem_40739f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 33
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 7
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %2813 to i64*
  %2814 = load i64, i64* %RDX.i139
  %2815 = add i64 %2814, 8
  %2816 = load i64, i64* %PC.i138
  %2817 = add i64 %2816, 4
  store i64 %2817, i64* %PC.i138
  %2818 = inttoptr i64 %2815 to i64*
  %2819 = load i64, i64* %2818
  store i64 %2819, i64* %RDX.i139, align 8
  store %struct.Memory* %loadMem_40739f, %struct.Memory** %MEMORY
  %loadMem_4073a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 33
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 9
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %RSI.i136 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 15
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %2828 to i64*
  %2829 = load i64, i64* %RBP.i137
  %2830 = sub i64 %2829, 28
  %2831 = load i64, i64* %PC.i135
  %2832 = add i64 %2831, 4
  store i64 %2832, i64* %PC.i135
  %2833 = inttoptr i64 %2830 to i32*
  %2834 = load i32, i32* %2833
  %2835 = sext i32 %2834 to i64
  store i64 %2835, i64* %RSI.i136, align 8
  store %struct.Memory* %loadMem_4073a3, %struct.Memory** %MEMORY
  %loadMem_4073a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 33
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 1
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %2841 to i64*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 7
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %RDX.i133 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 9
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %RSI.i134 = bitcast %union.anon* %2847 to i64*
  %2848 = load i64, i64* %RDX.i133
  %2849 = load i64, i64* %RSI.i134
  %2850 = mul i64 %2849, 8
  %2851 = add i64 %2850, %2848
  %2852 = load i64, i64* %RAX.i132
  %2853 = load i64, i64* %PC.i131
  %2854 = add i64 %2853, 4
  store i64 %2854, i64* %PC.i131
  %2855 = inttoptr i64 %2851 to i64*
  store i64 %2852, i64* %2855
  store %struct.Memory* %loadMem_4073a7, %struct.Memory** %MEMORY
  %loadMem_4073ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 1
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %2861 to i64*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 15
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %2864 to i64*
  %2865 = load i64, i64* %RBP.i130
  %2866 = sub i64 %2865, 24
  %2867 = load i64, i64* %PC.i128
  %2868 = add i64 %2867, 4
  store i64 %2868, i64* %PC.i128
  %2869 = inttoptr i64 %2866 to i64*
  %2870 = load i64, i64* %2869
  store i64 %2870, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_4073ab, %struct.Memory** %MEMORY
  %loadMem_4073af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 1
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %2876 to i64*
  %2877 = load i64, i64* %RAX.i127
  %2878 = add i64 %2877, 16
  %2879 = load i64, i64* %PC.i126
  %2880 = add i64 %2879, 4
  store i64 %2880, i64* %PC.i126
  %2881 = inttoptr i64 %2878 to i64*
  %2882 = load i64, i64* %2881
  store i64 %2882, i64* %RAX.i127, align 8
  store %struct.Memory* %loadMem_4073af, %struct.Memory** %MEMORY
  %loadMem_4073b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 1
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %2888 to i64*
  %2889 = load i64, i64* %RAX.i125
  %2890 = load i64, i64* %PC.i124
  %2891 = add i64 %2890, 3
  store i64 %2891, i64* %PC.i124
  %2892 = inttoptr i64 %2889 to i64*
  %2893 = load i64, i64* %2892
  store i64 %2893, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_4073b3, %struct.Memory** %MEMORY
  %loadMem_4073b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 33
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 5
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 15
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %RBP.i123
  %2904 = sub i64 %2903, 28
  %2905 = load i64, i64* %PC.i121
  %2906 = add i64 %2905, 3
  store i64 %2906, i64* %PC.i121
  %2907 = inttoptr i64 %2904 to i32*
  %2908 = load i32, i32* %2907
  %2909 = zext i32 %2908 to i64
  store i64 %2909, i64* %RCX.i122, align 8
  store %struct.Memory* %loadMem_4073b6, %struct.Memory** %MEMORY
  %loadMem_4073b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 11
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RDI.i119 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 15
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %2918 to i64*
  %2919 = load i64, i64* %RBP.i120
  %2920 = sub i64 %2919, 8
  %2921 = load i64, i64* %PC.i118
  %2922 = add i64 %2921, 3
  store i64 %2922, i64* %PC.i118
  %2923 = inttoptr i64 %2920 to i32*
  %2924 = load i32, i32* %2923
  %2925 = zext i32 %2924 to i64
  store i64 %2925, i64* %RDI.i119, align 8
  store %struct.Memory* %loadMem_4073b9, %struct.Memory** %MEMORY
  %loadMem_4073bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 33
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 11
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RDI.i117 = bitcast %union.anon* %2931 to i64*
  %2932 = load i64, i64* %RDI.i117
  %2933 = load i64, i64* %PC.i116
  %2934 = add i64 %2933, 3
  store i64 %2934, i64* %PC.i116
  %2935 = trunc i64 %2932 to i32
  %2936 = add i32 2, %2935
  %2937 = zext i32 %2936 to i64
  store i64 %2937, i64* %RDI.i117, align 8
  %2938 = icmp ult i32 %2936, %2935
  %2939 = icmp ult i32 %2936, 2
  %2940 = or i1 %2938, %2939
  %2941 = zext i1 %2940 to i8
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2941, i8* %2942, align 1
  %2943 = and i32 %2936, 255
  %2944 = call i32 @llvm.ctpop.i32(i32 %2943)
  %2945 = trunc i32 %2944 to i8
  %2946 = and i8 %2945, 1
  %2947 = xor i8 %2946, 1
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2947, i8* %2948, align 1
  %2949 = xor i64 2, %2932
  %2950 = trunc i64 %2949 to i32
  %2951 = xor i32 %2950, %2936
  %2952 = lshr i32 %2951, 4
  %2953 = trunc i32 %2952 to i8
  %2954 = and i8 %2953, 1
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2954, i8* %2955, align 1
  %2956 = icmp eq i32 %2936, 0
  %2957 = zext i1 %2956 to i8
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2957, i8* %2958, align 1
  %2959 = lshr i32 %2936, 31
  %2960 = trunc i32 %2959 to i8
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2960, i8* %2961, align 1
  %2962 = lshr i32 %2935, 31
  %2963 = xor i32 %2959, %2962
  %2964 = add i32 %2963, %2959
  %2965 = icmp eq i32 %2964, 2
  %2966 = zext i1 %2965 to i8
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2966, i8* %2967, align 1
  store %struct.Memory* %loadMem_4073bc, %struct.Memory** %MEMORY
  %loadMem_4073bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2970 to i64*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 11
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %EDI.i114 = bitcast %union.anon* %2973 to i32*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 5
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %RCX.i115
  %2978 = load i32, i32* %EDI.i114
  %2979 = zext i32 %2978 to i64
  %2980 = load i64, i64* %PC.i113
  %2981 = add i64 %2980, 3
  store i64 %2981, i64* %PC.i113
  %2982 = shl i64 %2977, 32
  %2983 = ashr exact i64 %2982, 32
  %2984 = shl i64 %2979, 32
  %2985 = ashr exact i64 %2984, 32
  %2986 = mul i64 %2985, %2983
  %2987 = trunc i64 %2986 to i32
  %2988 = and i64 %2986, 4294967295
  store i64 %2988, i64* %RCX.i115, align 8
  %2989 = shl i64 %2986, 32
  %2990 = ashr exact i64 %2989, 32
  %2991 = icmp ne i64 %2990, %2986
  %2992 = zext i1 %2991 to i8
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2992, i8* %2993, align 1
  %2994 = and i32 %2987, 255
  %2995 = call i32 @llvm.ctpop.i32(i32 %2994)
  %2996 = trunc i32 %2995 to i8
  %2997 = and i8 %2996, 1
  %2998 = xor i8 %2997, 1
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2998, i8* %2999, align 1
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3000, align 1
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3001, align 1
  %3002 = lshr i32 %2987, 31
  %3003 = trunc i32 %3002 to i8
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3003, i8* %3004, align 1
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2992, i8* %3005, align 1
  store %struct.Memory* %loadMem_4073bf, %struct.Memory** %MEMORY
  %loadMem_4073c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 33
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3008 to i64*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 5
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %ECX.i111 = bitcast %union.anon* %3011 to i32*
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 7
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %RDX.i112 = bitcast %union.anon* %3014 to i64*
  %3015 = load i32, i32* %ECX.i111
  %3016 = zext i32 %3015 to i64
  %3017 = load i64, i64* %PC.i110
  %3018 = add i64 %3017, 3
  store i64 %3018, i64* %PC.i110
  %3019 = shl i64 %3016, 32
  %3020 = ashr exact i64 %3019, 32
  store i64 %3020, i64* %RDX.i112, align 8
  store %struct.Memory* %loadMem_4073c2, %struct.Memory** %MEMORY
  %loadMem_4073c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 33
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %3023 to i64*
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 7
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %RDX.i109 = bitcast %union.anon* %3026 to i64*
  %3027 = load i64, i64* %RDX.i109
  %3028 = load i64, i64* %PC.i108
  %3029 = add i64 %3028, 4
  store i64 %3029, i64* %PC.i108
  %3030 = shl i64 %3027, 1
  %3031 = icmp slt i64 %3030, 0
  %3032 = shl i64 %3030, 1
  store i64 %3032, i64* %RDX.i109, align 8
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3034 = zext i1 %3031 to i8
  store i8 %3034, i8* %3033, align 1
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3036 = trunc i64 %3032 to i32
  %3037 = and i32 %3036, 254
  %3038 = call i32 @llvm.ctpop.i32(i32 %3037)
  %3039 = trunc i32 %3038 to i8
  %3040 = and i8 %3039, 1
  %3041 = xor i8 %3040, 1
  store i8 %3041, i8* %3035, align 1
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3042, align 1
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3044 = icmp eq i64 %3032, 0
  %3045 = zext i1 %3044 to i8
  store i8 %3045, i8* %3043, align 1
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3047 = lshr i64 %3032, 63
  %3048 = trunc i64 %3047 to i8
  store i8 %3048, i8* %3046, align 1
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3049, align 1
  store %struct.Memory* %loadMem_4073c5, %struct.Memory** %MEMORY
  %loadMem_4073c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 33
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 1
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %3055 to i64*
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 7
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %RDX.i107 = bitcast %union.anon* %3058 to i64*
  %3059 = load i64, i64* %RAX.i106
  %3060 = load i64, i64* %RDX.i107
  %3061 = load i64, i64* %PC.i105
  %3062 = add i64 %3061, 3
  store i64 %3062, i64* %PC.i105
  %3063 = add i64 %3060, %3059
  store i64 %3063, i64* %RAX.i106, align 8
  %3064 = icmp ult i64 %3063, %3059
  %3065 = icmp ult i64 %3063, %3060
  %3066 = or i1 %3064, %3065
  %3067 = zext i1 %3066 to i8
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3067, i8* %3068, align 1
  %3069 = trunc i64 %3063 to i32
  %3070 = and i32 %3069, 255
  %3071 = call i32 @llvm.ctpop.i32(i32 %3070)
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  %3074 = xor i8 %3073, 1
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3074, i8* %3075, align 1
  %3076 = xor i64 %3060, %3059
  %3077 = xor i64 %3076, %3063
  %3078 = lshr i64 %3077, 4
  %3079 = trunc i64 %3078 to i8
  %3080 = and i8 %3079, 1
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3080, i8* %3081, align 1
  %3082 = icmp eq i64 %3063, 0
  %3083 = zext i1 %3082 to i8
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3083, i8* %3084, align 1
  %3085 = lshr i64 %3063, 63
  %3086 = trunc i64 %3085 to i8
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3086, i8* %3087, align 1
  %3088 = lshr i64 %3059, 63
  %3089 = lshr i64 %3060, 63
  %3090 = xor i64 %3085, %3088
  %3091 = xor i64 %3085, %3089
  %3092 = add i64 %3090, %3091
  %3093 = icmp eq i64 %3092, 2
  %3094 = zext i1 %3093 to i8
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3094, i8* %3095, align 1
  store %struct.Memory* %loadMem_4073c9, %struct.Memory** %MEMORY
  %loadMem_4073cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 7
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 15
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %3104 to i64*
  %3105 = load i64, i64* %RBP.i104
  %3106 = sub i64 %3105, 24
  %3107 = load i64, i64* %PC.i102
  %3108 = add i64 %3107, 4
  store i64 %3108, i64* %PC.i102
  %3109 = inttoptr i64 %3106 to i64*
  %3110 = load i64, i64* %3109
  store i64 %3110, i64* %RDX.i103, align 8
  store %struct.Memory* %loadMem_4073cc, %struct.Memory** %MEMORY
  %loadMem_4073d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 33
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3113 to i64*
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 7
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %RDX.i101 = bitcast %union.anon* %3116 to i64*
  %3117 = load i64, i64* %RDX.i101
  %3118 = add i64 %3117, 16
  %3119 = load i64, i64* %PC.i100
  %3120 = add i64 %3119, 4
  store i64 %3120, i64* %PC.i100
  %3121 = inttoptr i64 %3118 to i64*
  %3122 = load i64, i64* %3121
  store i64 %3122, i64* %RDX.i101, align 8
  store %struct.Memory* %loadMem_4073d0, %struct.Memory** %MEMORY
  %loadMem_4073d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 33
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 9
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %RSI.i98 = bitcast %union.anon* %3128 to i64*
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 15
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %3131 to i64*
  %3132 = load i64, i64* %RBP.i99
  %3133 = sub i64 %3132, 28
  %3134 = load i64, i64* %PC.i97
  %3135 = add i64 %3134, 4
  store i64 %3135, i64* %PC.i97
  %3136 = inttoptr i64 %3133 to i32*
  %3137 = load i32, i32* %3136
  %3138 = sext i32 %3137 to i64
  store i64 %3138, i64* %RSI.i98, align 8
  store %struct.Memory* %loadMem_4073d4, %struct.Memory** %MEMORY
  %loadMem_4073d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 33
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 1
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %3144 to i64*
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 7
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %RDX.i95 = bitcast %union.anon* %3147 to i64*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 9
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %RSI.i96 = bitcast %union.anon* %3150 to i64*
  %3151 = load i64, i64* %RDX.i95
  %3152 = load i64, i64* %RSI.i96
  %3153 = mul i64 %3152, 8
  %3154 = add i64 %3153, %3151
  %3155 = load i64, i64* %RAX.i94
  %3156 = load i64, i64* %PC.i93
  %3157 = add i64 %3156, 4
  store i64 %3157, i64* %PC.i93
  %3158 = inttoptr i64 %3154 to i64*
  store i64 %3155, i64* %3158
  store %struct.Memory* %loadMem_4073d8, %struct.Memory** %MEMORY
  %loadMem_4073dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 33
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3161 to i64*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 1
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %3164 to i64*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 15
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %3167 to i64*
  %3168 = load i64, i64* %RBP.i92
  %3169 = sub i64 %3168, 24
  %3170 = load i64, i64* %PC.i90
  %3171 = add i64 %3170, 4
  store i64 %3171, i64* %PC.i90
  %3172 = inttoptr i64 %3169 to i64*
  %3173 = load i64, i64* %3172
  store i64 %3173, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_4073dc, %struct.Memory** %MEMORY
  %loadMem_4073e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 1
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %RAX.i89
  %3181 = add i64 %3180, 24
  %3182 = load i64, i64* %PC.i88
  %3183 = add i64 %3182, 4
  store i64 %3183, i64* %PC.i88
  %3184 = inttoptr i64 %3181 to i64*
  %3185 = load i64, i64* %3184
  store i64 %3185, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_4073e0, %struct.Memory** %MEMORY
  %loadMem_4073e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 33
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 1
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %RAX.i87
  %3193 = load i64, i64* %PC.i86
  %3194 = add i64 %3193, 3
  store i64 %3194, i64* %PC.i86
  %3195 = inttoptr i64 %3192 to i64*
  %3196 = load i64, i64* %3195
  store i64 %3196, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_4073e4, %struct.Memory** %MEMORY
  %loadMem_4073e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 33
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %3199 to i64*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 5
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 15
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %3205 to i64*
  %3206 = load i64, i64* %RBP.i85
  %3207 = sub i64 %3206, 28
  %3208 = load i64, i64* %PC.i83
  %3209 = add i64 %3208, 3
  store i64 %3209, i64* %PC.i83
  %3210 = inttoptr i64 %3207 to i32*
  %3211 = load i32, i32* %3210
  %3212 = zext i32 %3211 to i64
  store i64 %3212, i64* %RCX.i84, align 8
  store %struct.Memory* %loadMem_4073e7, %struct.Memory** %MEMORY
  %loadMem_4073ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 33
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %3215 to i64*
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 11
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %RDI.i81 = bitcast %union.anon* %3218 to i64*
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 15
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %3221 to i64*
  %3222 = load i64, i64* %RBP.i82
  %3223 = sub i64 %3222, 8
  %3224 = load i64, i64* %PC.i80
  %3225 = add i64 %3224, 3
  store i64 %3225, i64* %PC.i80
  %3226 = inttoptr i64 %3223 to i32*
  %3227 = load i32, i32* %3226
  %3228 = zext i32 %3227 to i64
  store i64 %3228, i64* %RDI.i81, align 8
  store %struct.Memory* %loadMem_4073ea, %struct.Memory** %MEMORY
  %loadMem_4073ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 33
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 11
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RDI.i79 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %RDI.i79
  %3236 = load i64, i64* %PC.i78
  %3237 = add i64 %3236, 3
  store i64 %3237, i64* %PC.i78
  %3238 = trunc i64 %3235 to i32
  %3239 = add i32 2, %3238
  %3240 = zext i32 %3239 to i64
  store i64 %3240, i64* %RDI.i79, align 8
  %3241 = icmp ult i32 %3239, %3238
  %3242 = icmp ult i32 %3239, 2
  %3243 = or i1 %3241, %3242
  %3244 = zext i1 %3243 to i8
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3244, i8* %3245, align 1
  %3246 = and i32 %3239, 255
  %3247 = call i32 @llvm.ctpop.i32(i32 %3246)
  %3248 = trunc i32 %3247 to i8
  %3249 = and i8 %3248, 1
  %3250 = xor i8 %3249, 1
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3250, i8* %3251, align 1
  %3252 = xor i64 2, %3235
  %3253 = trunc i64 %3252 to i32
  %3254 = xor i32 %3253, %3239
  %3255 = lshr i32 %3254, 4
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3257, i8* %3258, align 1
  %3259 = icmp eq i32 %3239, 0
  %3260 = zext i1 %3259 to i8
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3260, i8* %3261, align 1
  %3262 = lshr i32 %3239, 31
  %3263 = trunc i32 %3262 to i8
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3263, i8* %3264, align 1
  %3265 = lshr i32 %3238, 31
  %3266 = xor i32 %3262, %3265
  %3267 = add i32 %3266, %3262
  %3268 = icmp eq i32 %3267, 2
  %3269 = zext i1 %3268 to i8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3269, i8* %3270, align 1
  store %struct.Memory* %loadMem_4073ed, %struct.Memory** %MEMORY
  %loadMem_4073f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3273 to i64*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 11
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %3276 to i32*
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 5
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %3279 to i64*
  %3280 = load i64, i64* %RCX.i77
  %3281 = load i32, i32* %EDI.i
  %3282 = zext i32 %3281 to i64
  %3283 = load i64, i64* %PC.i76
  %3284 = add i64 %3283, 3
  store i64 %3284, i64* %PC.i76
  %3285 = shl i64 %3280, 32
  %3286 = ashr exact i64 %3285, 32
  %3287 = shl i64 %3282, 32
  %3288 = ashr exact i64 %3287, 32
  %3289 = mul i64 %3288, %3286
  %3290 = trunc i64 %3289 to i32
  %3291 = and i64 %3289, 4294967295
  store i64 %3291, i64* %RCX.i77, align 8
  %3292 = shl i64 %3289, 32
  %3293 = ashr exact i64 %3292, 32
  %3294 = icmp ne i64 %3293, %3289
  %3295 = zext i1 %3294 to i8
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3295, i8* %3296, align 1
  %3297 = and i32 %3290, 255
  %3298 = call i32 @llvm.ctpop.i32(i32 %3297)
  %3299 = trunc i32 %3298 to i8
  %3300 = and i8 %3299, 1
  %3301 = xor i8 %3300, 1
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3301, i8* %3302, align 1
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3303, align 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3304, align 1
  %3305 = lshr i32 %3290, 31
  %3306 = trunc i32 %3305 to i8
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3306, i8* %3307, align 1
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3295, i8* %3308, align 1
  store %struct.Memory* %loadMem_4073f0, %struct.Memory** %MEMORY
  %loadMem_4073f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 33
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 5
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3314 to i32*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 7
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RDX.i75 = bitcast %union.anon* %3317 to i64*
  %3318 = load i32, i32* %ECX.i
  %3319 = zext i32 %3318 to i64
  %3320 = load i64, i64* %PC.i74
  %3321 = add i64 %3320, 3
  store i64 %3321, i64* %PC.i74
  %3322 = shl i64 %3319, 32
  %3323 = ashr exact i64 %3322, 32
  store i64 %3323, i64* %RDX.i75, align 8
  store %struct.Memory* %loadMem_4073f3, %struct.Memory** %MEMORY
  %loadMem_4073f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 7
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RDX.i73 = bitcast %union.anon* %3329 to i64*
  %3330 = load i64, i64* %RDX.i73
  %3331 = load i64, i64* %PC.i72
  %3332 = add i64 %3331, 4
  store i64 %3332, i64* %PC.i72
  %3333 = shl i64 %3330, 1
  %3334 = icmp slt i64 %3333, 0
  %3335 = shl i64 %3333, 1
  store i64 %3335, i64* %RDX.i73, align 8
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3337 = zext i1 %3334 to i8
  store i8 %3337, i8* %3336, align 1
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3339 = trunc i64 %3335 to i32
  %3340 = and i32 %3339, 254
  %3341 = call i32 @llvm.ctpop.i32(i32 %3340)
  %3342 = trunc i32 %3341 to i8
  %3343 = and i8 %3342, 1
  %3344 = xor i8 %3343, 1
  store i8 %3344, i8* %3338, align 1
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3345, align 1
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3347 = icmp eq i64 %3335, 0
  %3348 = zext i1 %3347 to i8
  store i8 %3348, i8* %3346, align 1
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3350 = lshr i64 %3335, 63
  %3351 = trunc i64 %3350 to i8
  store i8 %3351, i8* %3349, align 1
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3352, align 1
  store %struct.Memory* %loadMem_4073f6, %struct.Memory** %MEMORY
  %loadMem_4073fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 33
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 1
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 7
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RDX.i71 = bitcast %union.anon* %3361 to i64*
  %3362 = load i64, i64* %RAX.i70
  %3363 = load i64, i64* %RDX.i71
  %3364 = load i64, i64* %PC.i69
  %3365 = add i64 %3364, 3
  store i64 %3365, i64* %PC.i69
  %3366 = add i64 %3363, %3362
  store i64 %3366, i64* %RAX.i70, align 8
  %3367 = icmp ult i64 %3366, %3362
  %3368 = icmp ult i64 %3366, %3363
  %3369 = or i1 %3367, %3368
  %3370 = zext i1 %3369 to i8
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3370, i8* %3371, align 1
  %3372 = trunc i64 %3366 to i32
  %3373 = and i32 %3372, 255
  %3374 = call i32 @llvm.ctpop.i32(i32 %3373)
  %3375 = trunc i32 %3374 to i8
  %3376 = and i8 %3375, 1
  %3377 = xor i8 %3376, 1
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3377, i8* %3378, align 1
  %3379 = xor i64 %3363, %3362
  %3380 = xor i64 %3379, %3366
  %3381 = lshr i64 %3380, 4
  %3382 = trunc i64 %3381 to i8
  %3383 = and i8 %3382, 1
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3383, i8* %3384, align 1
  %3385 = icmp eq i64 %3366, 0
  %3386 = zext i1 %3385 to i8
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3386, i8* %3387, align 1
  %3388 = lshr i64 %3366, 63
  %3389 = trunc i64 %3388 to i8
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3389, i8* %3390, align 1
  %3391 = lshr i64 %3362, 63
  %3392 = lshr i64 %3363, 63
  %3393 = xor i64 %3388, %3391
  %3394 = xor i64 %3388, %3392
  %3395 = add i64 %3393, %3394
  %3396 = icmp eq i64 %3395, 2
  %3397 = zext i1 %3396 to i8
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3397, i8* %3398, align 1
  store %struct.Memory* %loadMem_4073fa, %struct.Memory** %MEMORY
  %loadMem_4073fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 33
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 7
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RDX.i67 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 15
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %3407 to i64*
  %3408 = load i64, i64* %RBP.i68
  %3409 = sub i64 %3408, 24
  %3410 = load i64, i64* %PC.i66
  %3411 = add i64 %3410, 4
  store i64 %3411, i64* %PC.i66
  %3412 = inttoptr i64 %3409 to i64*
  %3413 = load i64, i64* %3412
  store i64 %3413, i64* %RDX.i67, align 8
  store %struct.Memory* %loadMem_4073fd, %struct.Memory** %MEMORY
  %loadMem_407401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 33
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 7
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %3419 to i64*
  %3420 = load i64, i64* %RDX.i65
  %3421 = add i64 %3420, 24
  %3422 = load i64, i64* %PC.i64
  %3423 = add i64 %3422, 4
  store i64 %3423, i64* %PC.i64
  %3424 = inttoptr i64 %3421 to i64*
  %3425 = load i64, i64* %3424
  store i64 %3425, i64* %RDX.i65, align 8
  store %struct.Memory* %loadMem_407401, %struct.Memory** %MEMORY
  %loadMem_407405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3428 to i64*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 9
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %RSI.i62 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 15
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %3434 to i64*
  %3435 = load i64, i64* %RBP.i63
  %3436 = sub i64 %3435, 28
  %3437 = load i64, i64* %PC.i61
  %3438 = add i64 %3437, 4
  store i64 %3438, i64* %PC.i61
  %3439 = inttoptr i64 %3436 to i32*
  %3440 = load i32, i32* %3439
  %3441 = sext i32 %3440 to i64
  store i64 %3441, i64* %RSI.i62, align 8
  store %struct.Memory* %loadMem_407405, %struct.Memory** %MEMORY
  %loadMem_407409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 33
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %3444 to i64*
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 1
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 7
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 9
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3453 to i64*
  %3454 = load i64, i64* %RDX.i
  %3455 = load i64, i64* %RSI.i
  %3456 = mul i64 %3455, 8
  %3457 = add i64 %3456, %3454
  %3458 = load i64, i64* %RAX.i60
  %3459 = load i64, i64* %PC.i59
  %3460 = add i64 %3459, 4
  store i64 %3460, i64* %PC.i59
  %3461 = inttoptr i64 %3457 to i64*
  store i64 %3458, i64* %3461
  store %struct.Memory* %loadMem_407409, %struct.Memory** %MEMORY
  %loadMem_40740d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 33
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3464 to i64*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 1
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 15
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %3470 to i64*
  %3471 = load i64, i64* %RBP.i58
  %3472 = sub i64 %3471, 28
  %3473 = load i64, i64* %PC.i56
  %3474 = add i64 %3473, 3
  store i64 %3474, i64* %PC.i56
  %3475 = inttoptr i64 %3472 to i32*
  %3476 = load i32, i32* %3475
  %3477 = zext i32 %3476 to i64
  store i64 %3477, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_40740d, %struct.Memory** %MEMORY
  %loadMem_407410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 33
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 1
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %RAX.i55
  %3485 = load i64, i64* %PC.i54
  %3486 = add i64 %3485, 3
  store i64 %3486, i64* %PC.i54
  %3487 = trunc i64 %3484 to i32
  %3488 = add i32 1, %3487
  %3489 = zext i32 %3488 to i64
  store i64 %3489, i64* %RAX.i55, align 8
  %3490 = icmp ult i32 %3488, %3487
  %3491 = icmp ult i32 %3488, 1
  %3492 = or i1 %3490, %3491
  %3493 = zext i1 %3492 to i8
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3493, i8* %3494, align 1
  %3495 = and i32 %3488, 255
  %3496 = call i32 @llvm.ctpop.i32(i32 %3495)
  %3497 = trunc i32 %3496 to i8
  %3498 = and i8 %3497, 1
  %3499 = xor i8 %3498, 1
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3499, i8* %3500, align 1
  %3501 = xor i64 1, %3484
  %3502 = trunc i64 %3501 to i32
  %3503 = xor i32 %3502, %3488
  %3504 = lshr i32 %3503, 4
  %3505 = trunc i32 %3504 to i8
  %3506 = and i8 %3505, 1
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3506, i8* %3507, align 1
  %3508 = icmp eq i32 %3488, 0
  %3509 = zext i1 %3508 to i8
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3509, i8* %3510, align 1
  %3511 = lshr i32 %3488, 31
  %3512 = trunc i32 %3511 to i8
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3512, i8* %3513, align 1
  %3514 = lshr i32 %3487, 31
  %3515 = xor i32 %3511, %3514
  %3516 = add i32 %3515, %3511
  %3517 = icmp eq i32 %3516, 2
  %3518 = zext i1 %3517 to i8
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3518, i8* %3519, align 1
  store %struct.Memory* %loadMem_407410, %struct.Memory** %MEMORY
  %loadMem_407413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 33
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3522 to i64*
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 1
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %EAX.i52 = bitcast %union.anon* %3525 to i32*
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 15
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %3528 to i64*
  %3529 = load i64, i64* %RBP.i53
  %3530 = sub i64 %3529, 28
  %3531 = load i32, i32* %EAX.i52
  %3532 = zext i32 %3531 to i64
  %3533 = load i64, i64* %PC.i51
  %3534 = add i64 %3533, 3
  store i64 %3534, i64* %PC.i51
  %3535 = inttoptr i64 %3530 to i32*
  store i32 %3531, i32* %3535
  store %struct.Memory* %loadMem_407413, %struct.Memory** %MEMORY
  %loadMem_407416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 33
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3538 to i64*
  %3539 = load i64, i64* %PC.i50
  %3540 = add i64 %3539, -207
  %3541 = load i64, i64* %PC.i50
  %3542 = add i64 %3541, 5
  store i64 %3542, i64* %PC.i50
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3540, i64* %3543, align 8
  store %struct.Memory* %loadMem_407416, %struct.Memory** %MEMORY
  br label %block_.L_407347

block_.L_40741b:                                  ; preds = %block_.L_407347
  %loadMem_40741b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 15
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %3549 to i64*
  %3550 = load i64, i64* %RBP.i49
  %3551 = sub i64 %3550, 16
  %3552 = load i64, i64* %PC.i48
  %3553 = add i64 %3552, 4
  store i64 %3553, i64* %PC.i48
  %3554 = inttoptr i64 %3551 to i32*
  %3555 = load i32, i32* %3554
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3556, align 1
  %3557 = and i32 %3555, 255
  %3558 = call i32 @llvm.ctpop.i32(i32 %3557)
  %3559 = trunc i32 %3558 to i8
  %3560 = and i8 %3559, 1
  %3561 = xor i8 %3560, 1
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3561, i8* %3562, align 1
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3563, align 1
  %3564 = icmp eq i32 %3555, 0
  %3565 = zext i1 %3564 to i8
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3565, i8* %3566, align 1
  %3567 = lshr i32 %3555, 31
  %3568 = trunc i32 %3567 to i8
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3568, i8* %3569, align 1
  %3570 = lshr i32 %3555, 31
  %3571 = xor i32 %3567, %3570
  %3572 = add i32 %3571, %3570
  %3573 = icmp eq i32 %3572, 2
  %3574 = zext i1 %3573 to i8
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3574, i8* %3575, align 1
  store %struct.Memory* %loadMem_40741b, %struct.Memory** %MEMORY
  %loadMem_40741f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 33
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3578 to i64*
  %3579 = load i64, i64* %PC.i47
  %3580 = add i64 %3579, 33
  %3581 = load i64, i64* %PC.i47
  %3582 = add i64 %3581, 6
  %3583 = load i64, i64* %PC.i47
  %3584 = add i64 %3583, 6
  store i64 %3584, i64* %PC.i47
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3586 = load i8, i8* %3585, align 1
  %3587 = icmp ne i8 %3586, 0
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3589 = load i8, i8* %3588, align 1
  %3590 = icmp ne i8 %3589, 0
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3592 = load i8, i8* %3591, align 1
  %3593 = icmp ne i8 %3592, 0
  %3594 = xor i1 %3590, %3593
  %3595 = or i1 %3587, %3594
  %3596 = zext i1 %3595 to i8
  store i8 %3596, i8* %BRANCH_TAKEN, align 1
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3598 = select i1 %3595, i64 %3580, i64 %3582
  store i64 %3598, i64* %3597, align 8
  store %struct.Memory* %loadMem_40741f, %struct.Memory** %MEMORY
  %loadBr_40741f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40741f = icmp eq i8 %loadBr_40741f, 1
  br i1 %cmpBr_40741f, label %block_.L_407440, label %block_407425

block_407425:                                     ; preds = %block_.L_40741b
  %loadMem_407425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 33
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3601 to i64*
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 15
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %3604 to i64*
  %3605 = load i64, i64* %RBP.i46
  %3606 = sub i64 %3605, 12
  %3607 = load i64, i64* %PC.i45
  %3608 = add i64 %3607, 4
  store i64 %3608, i64* %PC.i45
  %3609 = inttoptr i64 %3606 to i32*
  %3610 = load i32, i32* %3609
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3611, align 1
  %3612 = and i32 %3610, 255
  %3613 = call i32 @llvm.ctpop.i32(i32 %3612)
  %3614 = trunc i32 %3613 to i8
  %3615 = and i8 %3614, 1
  %3616 = xor i8 %3615, 1
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3616, i8* %3617, align 1
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3618, align 1
  %3619 = icmp eq i32 %3610, 0
  %3620 = zext i1 %3619 to i8
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3620, i8* %3621, align 1
  %3622 = lshr i32 %3610, 31
  %3623 = trunc i32 %3622 to i8
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3623, i8* %3624, align 1
  %3625 = lshr i32 %3610, 31
  %3626 = xor i32 %3622, %3625
  %3627 = add i32 %3626, %3625
  %3628 = icmp eq i32 %3627, 2
  %3629 = zext i1 %3628 to i8
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3629, i8* %3630, align 1
  store %struct.Memory* %loadMem_407425, %struct.Memory** %MEMORY
  %loadMem_407429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 33
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3633 to i64*
  %3634 = load i64, i64* %PC.i44
  %3635 = add i64 %3634, 23
  %3636 = load i64, i64* %PC.i44
  %3637 = add i64 %3636, 6
  %3638 = load i64, i64* %PC.i44
  %3639 = add i64 %3638, 6
  store i64 %3639, i64* %PC.i44
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3641 = load i8, i8* %3640, align 1
  %3642 = icmp ne i8 %3641, 0
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3644 = load i8, i8* %3643, align 1
  %3645 = icmp ne i8 %3644, 0
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3647 = load i8, i8* %3646, align 1
  %3648 = icmp ne i8 %3647, 0
  %3649 = xor i1 %3645, %3648
  %3650 = or i1 %3642, %3649
  %3651 = zext i1 %3650 to i8
  store i8 %3651, i8* %BRANCH_TAKEN, align 1
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3653 = select i1 %3650, i64 %3635, i64 %3637
  store i64 %3653, i64* %3652, align 8
  store %struct.Memory* %loadMem_407429, %struct.Memory** %MEMORY
  %loadBr_407429 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407429 = icmp eq i8 %loadBr_407429, 1
  br i1 %cmpBr_407429, label %block_.L_407440, label %block_40742f

block_40742f:                                     ; preds = %block_407425
  %loadMem_40742f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 33
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %3656 to i64*
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 11
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3659 to i64*
  %3660 = load i64, i64* %PC.i43
  %3661 = add i64 %3660, 10
  store i64 %3661, i64* %PC.i43
  store i64 ptrtoint (%G__0x455fe1_type* @G__0x455fe1 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_40742f, %struct.Memory** %MEMORY
  %loadMem_407439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 33
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3664 to i64*
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 1
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %3668 = bitcast %union.anon* %3667 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3668, i32 0, i32 0
  %3669 = load i64, i64* %PC.i42
  %3670 = add i64 %3669, 2
  store i64 %3670, i64* %PC.i42
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_407439, %struct.Memory** %MEMORY
  %loadMem1_40743b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 33
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3673 to i64*
  %3674 = load i64, i64* %PC.i41
  %3675 = add i64 %3674, 226773
  %3676 = load i64, i64* %PC.i41
  %3677 = add i64 %3676, 5
  %3678 = load i64, i64* %PC.i41
  %3679 = add i64 %3678, 5
  store i64 %3679, i64* %PC.i41
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3681 = load i64, i64* %3680, align 8
  %3682 = add i64 %3681, -8
  %3683 = inttoptr i64 %3682 to i64*
  store i64 %3677, i64* %3683
  store i64 %3682, i64* %3680, align 8
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3675, i64* %3684, align 8
  store %struct.Memory* %loadMem1_40743b, %struct.Memory** %MEMORY
  %loadMem2_40743b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40743b = load i64, i64* %3
  %call2_40743b = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_40743b, %struct.Memory* %loadMem2_40743b)
  store %struct.Memory* %call2_40743b, %struct.Memory** %MEMORY
  br label %block_.L_407440

block_.L_407440:                                  ; preds = %block_40742f, %block_407425, %block_.L_40741b
  %loadMem_407440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 33
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 1
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 15
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %RBP.i40
  %3695 = sub i64 %3694, 4
  %3696 = load i64, i64* %PC.i38
  %3697 = add i64 %3696, 3
  store i64 %3697, i64* %PC.i38
  %3698 = inttoptr i64 %3695 to i32*
  %3699 = load i32, i32* %3698
  %3700 = zext i32 %3699 to i64
  store i64 %3700, i64* %RAX.i39, align 8
  store %struct.Memory* %loadMem_407440, %struct.Memory** %MEMORY
  %loadMem_407443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 33
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3703 to i64*
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3705 = getelementptr inbounds %struct.GPR, %struct.GPR* %3704, i32 0, i32 5
  %3706 = getelementptr inbounds %struct.Reg, %struct.Reg* %3705, i32 0, i32 0
  %RCX.i36 = bitcast %union.anon* %3706 to i64*
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 15
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %3709 to i64*
  %3710 = load i64, i64* %RBP.i37
  %3711 = sub i64 %3710, 24
  %3712 = load i64, i64* %PC.i35
  %3713 = add i64 %3712, 4
  store i64 %3713, i64* %PC.i35
  %3714 = inttoptr i64 %3711 to i64*
  %3715 = load i64, i64* %3714
  store i64 %3715, i64* %RCX.i36, align 8
  store %struct.Memory* %loadMem_407443, %struct.Memory** %MEMORY
  %loadMem_407447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 33
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 1
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %EAX.i33 = bitcast %union.anon* %3721 to i32*
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 5
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %3724 to i64*
  %3725 = load i64, i64* %RCX.i34
  %3726 = add i64 %3725, 64
  %3727 = load i32, i32* %EAX.i33
  %3728 = zext i32 %3727 to i64
  %3729 = load i64, i64* %PC.i32
  %3730 = add i64 %3729, 3
  store i64 %3730, i64* %PC.i32
  %3731 = inttoptr i64 %3726 to i32*
  store i32 %3727, i32* %3731
  store %struct.Memory* %loadMem_407447, %struct.Memory** %MEMORY
  %loadMem_40744a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 33
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 1
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %3737 to i64*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 15
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %3740 to i64*
  %3741 = load i64, i64* %RBP.i31
  %3742 = sub i64 %3741, 8
  %3743 = load i64, i64* %PC.i29
  %3744 = add i64 %3743, 3
  store i64 %3744, i64* %PC.i29
  %3745 = inttoptr i64 %3742 to i32*
  %3746 = load i32, i32* %3745
  %3747 = zext i32 %3746 to i64
  store i64 %3747, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_40744a, %struct.Memory** %MEMORY
  %loadMem_40744d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 33
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3750 to i64*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 5
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 15
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %3756 to i64*
  %3757 = load i64, i64* %RBP.i28
  %3758 = sub i64 %3757, 24
  %3759 = load i64, i64* %PC.i26
  %3760 = add i64 %3759, 4
  store i64 %3760, i64* %PC.i26
  %3761 = inttoptr i64 %3758 to i64*
  %3762 = load i64, i64* %3761
  store i64 %3762, i64* %RCX.i27, align 8
  store %struct.Memory* %loadMem_40744d, %struct.Memory** %MEMORY
  %loadMem_407451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 33
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3765 to i64*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 1
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %3768 to i32*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 5
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %3771 to i64*
  %3772 = load i64, i64* %RCX.i25
  %3773 = add i64 %3772, 68
  %3774 = load i32, i32* %EAX.i24
  %3775 = zext i32 %3774 to i64
  %3776 = load i64, i64* %PC.i23
  %3777 = add i64 %3776, 3
  store i64 %3777, i64* %PC.i23
  %3778 = inttoptr i64 %3773 to i32*
  store i32 %3774, i32* %3778
  store %struct.Memory* %loadMem_407451, %struct.Memory** %MEMORY
  %loadMem_407454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 33
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3781 to i64*
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 1
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 15
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %3787 to i64*
  %3788 = load i64, i64* %RBP.i22
  %3789 = sub i64 %3788, 12
  %3790 = load i64, i64* %PC.i20
  %3791 = add i64 %3790, 3
  store i64 %3791, i64* %PC.i20
  %3792 = inttoptr i64 %3789 to i32*
  %3793 = load i32, i32* %3792
  %3794 = zext i32 %3793 to i64
  store i64 %3794, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_407454, %struct.Memory** %MEMORY
  %loadMem_407457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 33
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3797 to i64*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 5
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %RCX.i18 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 15
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %3803 to i64*
  %3804 = load i64, i64* %RBP.i19
  %3805 = sub i64 %3804, 24
  %3806 = load i64, i64* %PC.i17
  %3807 = add i64 %3806, 4
  store i64 %3807, i64* %PC.i17
  %3808 = inttoptr i64 %3805 to i64*
  %3809 = load i64, i64* %3808
  store i64 %3809, i64* %RCX.i18, align 8
  store %struct.Memory* %loadMem_407457, %struct.Memory** %MEMORY
  %loadMem_40745b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 33
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3812 to i64*
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 1
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %3815 to i32*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 5
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %RCX.i16 = bitcast %union.anon* %3818 to i64*
  %3819 = load i64, i64* %RCX.i16
  %3820 = add i64 %3819, 72
  %3821 = load i32, i32* %EAX.i15
  %3822 = zext i32 %3821 to i64
  %3823 = load i64, i64* %PC.i14
  %3824 = add i64 %3823, 3
  store i64 %3824, i64* %PC.i14
  %3825 = inttoptr i64 %3820 to i32*
  store i32 %3821, i32* %3825
  store %struct.Memory* %loadMem_40745b, %struct.Memory** %MEMORY
  %loadMem_40745e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 33
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3828 to i64*
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 1
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 15
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %3834 to i64*
  %3835 = load i64, i64* %RBP.i13
  %3836 = sub i64 %3835, 16
  %3837 = load i64, i64* %PC.i11
  %3838 = add i64 %3837, 3
  store i64 %3838, i64* %PC.i11
  %3839 = inttoptr i64 %3836 to i32*
  %3840 = load i32, i32* %3839
  %3841 = zext i32 %3840 to i64
  store i64 %3841, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_40745e, %struct.Memory** %MEMORY
  %loadMem_407461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 33
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3844 to i64*
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 5
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %RCX.i9 = bitcast %union.anon* %3847 to i64*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 15
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %3850 to i64*
  %3851 = load i64, i64* %RBP.i10
  %3852 = sub i64 %3851, 24
  %3853 = load i64, i64* %PC.i8
  %3854 = add i64 %3853, 4
  store i64 %3854, i64* %PC.i8
  %3855 = inttoptr i64 %3852 to i64*
  %3856 = load i64, i64* %3855
  store i64 %3856, i64* %RCX.i9, align 8
  store %struct.Memory* %loadMem_407461, %struct.Memory** %MEMORY
  %loadMem_407465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 33
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3859 to i64*
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 1
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3862 to i32*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 5
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3865 to i64*
  %3866 = load i64, i64* %RCX.i
  %3867 = add i64 %3866, 76
  %3868 = load i32, i32* %EAX.i
  %3869 = zext i32 %3868 to i64
  %3870 = load i64, i64* %PC.i7
  %3871 = add i64 %3870, 3
  store i64 %3871, i64* %PC.i7
  %3872 = inttoptr i64 %3867 to i32*
  store i32 %3868, i32* %3872
  store %struct.Memory* %loadMem_407465, %struct.Memory** %MEMORY
  %loadMem_407468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 33
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3875 to i64*
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3877 = getelementptr inbounds %struct.GPR, %struct.GPR* %3876, i32 0, i32 1
  %3878 = getelementptr inbounds %struct.Reg, %struct.Reg* %3877, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3878 to i64*
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 15
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3881 to i64*
  %3882 = load i64, i64* %RBP.i6
  %3883 = sub i64 %3882, 24
  %3884 = load i64, i64* %PC.i5
  %3885 = add i64 %3884, 4
  store i64 %3885, i64* %PC.i5
  %3886 = inttoptr i64 %3883 to i64*
  %3887 = load i64, i64* %3886
  store i64 %3887, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_407468, %struct.Memory** %MEMORY
  %loadMem_40746c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3889 = getelementptr inbounds %struct.GPR, %struct.GPR* %3888, i32 0, i32 33
  %3890 = getelementptr inbounds %struct.Reg, %struct.Reg* %3889, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3890 to i64*
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 13
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3893 to i64*
  %3894 = load i64, i64* %RSP.i
  %3895 = load i64, i64* %PC.i4
  %3896 = add i64 %3895, 4
  store i64 %3896, i64* %PC.i4
  %3897 = add i64 32, %3894
  store i64 %3897, i64* %RSP.i, align 8
  %3898 = icmp ult i64 %3897, %3894
  %3899 = icmp ult i64 %3897, 32
  %3900 = or i1 %3898, %3899
  %3901 = zext i1 %3900 to i8
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3901, i8* %3902, align 1
  %3903 = trunc i64 %3897 to i32
  %3904 = and i32 %3903, 255
  %3905 = call i32 @llvm.ctpop.i32(i32 %3904)
  %3906 = trunc i32 %3905 to i8
  %3907 = and i8 %3906, 1
  %3908 = xor i8 %3907, 1
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3908, i8* %3909, align 1
  %3910 = xor i64 32, %3894
  %3911 = xor i64 %3910, %3897
  %3912 = lshr i64 %3911, 4
  %3913 = trunc i64 %3912 to i8
  %3914 = and i8 %3913, 1
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3914, i8* %3915, align 1
  %3916 = icmp eq i64 %3897, 0
  %3917 = zext i1 %3916 to i8
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3917, i8* %3918, align 1
  %3919 = lshr i64 %3897, 63
  %3920 = trunc i64 %3919 to i8
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3920, i8* %3921, align 1
  %3922 = lshr i64 %3894, 63
  %3923 = xor i64 %3919, %3922
  %3924 = add i64 %3923, %3919
  %3925 = icmp eq i64 %3924, 2
  %3926 = zext i1 %3925 to i8
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3926, i8* %3927, align 1
  store %struct.Memory* %loadMem_40746c, %struct.Memory** %MEMORY
  %loadMem_407470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 33
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3930 to i64*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 15
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3933 to i64*
  %3934 = load i64, i64* %PC.i2
  %3935 = add i64 %3934, 1
  store i64 %3935, i64* %PC.i2
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3937 = load i64, i64* %3936, align 8
  %3938 = add i64 %3937, 8
  %3939 = inttoptr i64 %3937 to i64*
  %3940 = load i64, i64* %3939
  store i64 %3940, i64* %RBP.i3, align 8
  store i64 %3938, i64* %3936, align 8
  store %struct.Memory* %loadMem_407470, %struct.Memory** %MEMORY
  %loadMem_407471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 33
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3943 to i64*
  %3944 = load i64, i64* %PC.i1
  %3945 = add i64 %3944, 1
  store i64 %3945, i64* %PC.i1
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3948 = load i64, i64* %3947, align 8
  %3949 = inttoptr i64 %3948 to i64*
  %3950 = load i64, i64* %3949
  store i64 %3950, i64* %3946, align 8
  %3951 = add i64 %3948, 8
  store i64 %3951, i64* %3947, align 8
  store %struct.Memory* %loadMem_407471, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_407471
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

define %struct.Memory* @routine_movq__0x455f2a___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x42___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 66, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x50___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 80, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
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

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x455f2a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x43___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 67, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 2
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x44___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 68, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x45___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 69, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x8__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x46___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 70, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x10__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x47___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 71, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x18__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x5___ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = mul i64 5, %17
  %19 = trunc i64 %18 to i32
  %20 = and i64 %18, 4294967295
  store i64 %20, i64* %RCX, align 8
  %21 = shl i64 %18, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp ne i64 %22, %18
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %19, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %24, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x48___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 72, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x20__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_addl__0x2___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i32 2, %10
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = icmp ult i32 %14, %10
  %17 = icmp ult i32 %14, 2
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 2, %11
  %28 = trunc i64 %27 to i32
  %29 = xor i32 %28, %14
  %30 = lshr i32 %29, 4
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %32, i8* %33, align 1
  %34 = icmp eq i32 %14, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %14, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %10, 31
  %41 = xor i32 %37, %40
  %42 = add i32 %41, %37
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__r8d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__0x49___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 73, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x28__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4a___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 74, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x30__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x38__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jg_.L_40741b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x5__MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = mul i64 %18, 5
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RCX, align 8
  %22 = shl i64 %19, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp ne i64 %23, %19
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %25, i8* %38, align 1
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

define %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x2___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 2
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
  %26 = xor i64 2, %9
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

define %struct.Memory* @routine_imull__edi___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDI
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
  store i64 %23, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_407347(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
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

define %struct.Memory* @routine_jle_.L_407440(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
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

define %struct.Memory* @routine_movq__0x455fe1___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x455fe1_type* @G__0x455fe1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Die(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__eax__0x44__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x48__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x4c__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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
