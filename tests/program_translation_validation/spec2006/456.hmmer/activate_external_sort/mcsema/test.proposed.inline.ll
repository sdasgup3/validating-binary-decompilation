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
%G__0x45a5e7_type = type <{ [8 x i8] }>
%G__0x45a9a9_type = type <{ [8 x i8] }>
%G__0x45a9bc_type = type <{ [8 x i8] }>
%G__0x45a9d1_type = type <{ [8 x i8] }>
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
@G__0x45a5e7 = global %G__0x45a5e7_type zeroinitializer
@G__0x45a9a9 = global %G__0x45a9a9_type zeroinitializer
@G__0x45a9bc = global %G__0x45a9bc_type zeroinitializer
@G__0x45a9d1 = global %G__0x45a9d1_type zeroinitializer

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

declare %struct.Memory* @sub_416700.FileExists(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401640.fopen_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @activate_external_sort(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_448930 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_448930, %struct.Memory** %MEMORY
  %loadMem_448931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i25 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i25
  %27 = load i64, i64* %PC.i24
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i24
  store i64 %26, i64* %RBP.i26, align 8
  store %struct.Memory* %loadMem_448931, %struct.Memory** %MEMORY
  %loadMem_448934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i42 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i42
  %36 = load i64, i64* %PC.i41
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i41
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i42, align 8
  %39 = icmp ult i64 %35, 48
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
  %49 = xor i64 48, %35
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
  store %struct.Memory* %loadMem_448934, %struct.Memory** %MEMORY
  %loadMem_448938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i67 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i68
  %77 = sub i64 %76, 16
  %78 = load i64, i64* %RDI.i67
  %79 = load i64, i64* %PC.i66
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i66
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_448938, %struct.Memory** %MEMORY
  %loadMem_44893c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 11
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RDI.i107 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i108
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %PC.i106
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC.i106
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95
  store i64 %96, i64* %RDI.i107, align 8
  store %struct.Memory* %loadMem_44893c, %struct.Memory** %MEMORY
  %loadMem_448940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 11
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RDI.i148 = bitcast %union.anon* %102 to i64*
  %103 = load i64, i64* %RDI.i148
  %104 = add i64 %103, 8
  %105 = load i64, i64* %PC.i147
  %106 = add i64 %105, 4
  store i64 %106, i64* %PC.i147
  %107 = inttoptr i64 %104 to i32*
  %108 = load i32, i32* %107
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %109, align 1
  %110 = and i32 %108, 255
  %111 = call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %114, i8* %115, align 1
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %116, align 1
  %117 = icmp eq i32 %108, 0
  %118 = zext i1 %117 to i8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %118, i8* %119, align 1
  %120 = lshr i32 %108, 31
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %121, i8* %122, align 1
  %123 = lshr i32 %108, 31
  %124 = xor i32 %120, %123
  %125 = add i32 %124, %123
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %127, i8* %128, align 1
  store %struct.Memory* %loadMem_448940, %struct.Memory** %MEMORY
  %loadMem_448944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %PC.i190
  %133 = add i64 %132, 18
  %134 = load i64, i64* %PC.i190
  %135 = add i64 %134, 6
  %136 = load i64, i64* %PC.i190
  %137 = add i64 %136, 6
  store i64 %137, i64* %PC.i190
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %139 = load i8, i8* %138, align 1
  store i8 %139, i8* %BRANCH_TAKEN, align 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %141 = icmp ne i8 %139, 0
  %142 = select i1 %141, i64 %133, i64 %135
  store i64 %142, i64* %140, align 8
  store %struct.Memory* %loadMem_448944, %struct.Memory** %MEMORY
  %loadBr_448944 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448944 = icmp eq i8 %loadBr_448944, 1
  br i1 %cmpBr_448944, label %block_.L_448956, label %block_44894a

block_44894a:                                     ; preds = %entry
  %loadMem_44894a = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 15
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %RBP.i257
  %150 = sub i64 %149, 4
  %151 = load i64, i64* %PC.i256
  %152 = add i64 %151, 7
  store i64 %152, i64* %PC.i256
  %153 = inttoptr i64 %150 to i32*
  store i32 0, i32* %153
  store %struct.Memory* %loadMem_44894a, %struct.Memory** %MEMORY
  %loadMem_448951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %156 to i64*
  %157 = load i64, i64* %PC.i355
  %158 = add i64 %157, 947
  %159 = load i64, i64* %PC.i355
  %160 = add i64 %159, 5
  store i64 %160, i64* %PC.i355
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %158, i64* %161, align 8
  store %struct.Memory* %loadMem_448951, %struct.Memory** %MEMORY
  br label %block_.L_448d04

block_.L_448956:                                  ; preds = %entry
  %loadMem_448956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 15
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %170 to i64*
  %171 = load i64, i64* %RBP.i539
  %172 = sub i64 %171, 16
  %173 = load i64, i64* %PC.i537
  %174 = add i64 %173, 4
  store i64 %174, i64* %PC.i537
  %175 = inttoptr i64 %172 to i64*
  %176 = load i64, i64* %175
  store i64 %176, i64* %RAX.i538, align 8
  store %struct.Memory* %loadMem_448956, %struct.Memory** %MEMORY
  %loadMem_44895a = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 11
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RDI.i536 = bitcast %union.anon* %185 to i64*
  %186 = load i64, i64* %RAX.i535
  %187 = add i64 %186, 72
  %188 = load i64, i64* %PC.i534
  %189 = add i64 %188, 4
  store i64 %189, i64* %PC.i534
  %190 = inttoptr i64 %187 to i64*
  %191 = load i64, i64* %190
  store i64 %191, i64* %RDI.i536, align 8
  store %struct.Memory* %loadMem_44895a, %struct.Memory** %MEMORY
  %loadMem1_44895e = load %struct.Memory*, %struct.Memory** %MEMORY
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 33
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %194 to i64*
  %195 = load i64, i64* %PC.i533
  %196 = add i64 %195, -205406
  %197 = load i64, i64* %PC.i533
  %198 = add i64 %197, 5
  %199 = load i64, i64* %PC.i533
  %200 = add i64 %199, 5
  store i64 %200, i64* %PC.i533
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, -8
  %204 = inttoptr i64 %203 to i64*
  store i64 %198, i64* %204
  store i64 %203, i64* %201, align 8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %196, i64* %205, align 8
  store %struct.Memory* %loadMem1_44895e, %struct.Memory** %MEMORY
  %loadMem2_44895e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44895e = load i64, i64* %3
  %call2_44895e = call %struct.Memory* @sub_416700.FileExists(%struct.State* %0, i64 %loadPC_44895e, %struct.Memory* %loadMem2_44895e)
  store %struct.Memory* %call2_44895e, %struct.Memory** %MEMORY
  %loadMem_448963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %EAX.i532 = bitcast %union.anon* %211 to i32*
  %212 = load i32, i32* %EAX.i532
  %213 = zext i32 %212 to i64
  %214 = load i64, i64* %PC.i531
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC.i531
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %216, align 1
  %217 = and i32 %212, 255
  %218 = call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %221, i8* %222, align 1
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %223, align 1
  %224 = icmp eq i32 %212, 0
  %225 = zext i1 %224 to i8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %225, i8* %226, align 1
  %227 = lshr i32 %212, 31
  %228 = trunc i32 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %228, i8* %229, align 1
  %230 = lshr i32 %212, 31
  %231 = xor i32 %227, %230
  %232 = add i32 %231, %230
  %233 = icmp eq i32 %232, 2
  %234 = zext i1 %233 to i8
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %234, i8* %235, align 1
  store %struct.Memory* %loadMem_448963, %struct.Memory** %MEMORY
  %loadMem_448966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %238 to i64*
  %239 = load i64, i64* %PC.i530
  %240 = add i64 %239, 18
  %241 = load i64, i64* %PC.i530
  %242 = add i64 %241, 6
  %243 = load i64, i64* %PC.i530
  %244 = add i64 %243, 6
  store i64 %244, i64* %PC.i530
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %246 = load i8, i8* %245, align 1
  store i8 %246, i8* %BRANCH_TAKEN, align 1
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %248 = icmp ne i8 %246, 0
  %249 = select i1 %248, i64 %240, i64 %242
  store i64 %249, i64* %247, align 8
  store %struct.Memory* %loadMem_448966, %struct.Memory** %MEMORY
  %loadBr_448966 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448966 = icmp eq i8 %loadBr_448966, 1
  br i1 %cmpBr_448966, label %block_.L_448978, label %block_44896c

block_44896c:                                     ; preds = %block_.L_448956
  %loadMem_44896c = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 15
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %255 to i64*
  %256 = load i64, i64* %RBP.i529
  %257 = sub i64 %256, 4
  %258 = load i64, i64* %PC.i528
  %259 = add i64 %258, 7
  store i64 %259, i64* %PC.i528
  %260 = inttoptr i64 %257 to i32*
  store i32 1, i32* %260
  store %struct.Memory* %loadMem_44896c, %struct.Memory** %MEMORY
  %loadMem_448973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 33
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %263 to i64*
  %264 = load i64, i64* %PC.i527
  %265 = add i64 %264, 913
  %266 = load i64, i64* %PC.i527
  %267 = add i64 %266, 5
  store i64 %267, i64* %PC.i527
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %265, i64* %268, align 8
  store %struct.Memory* %loadMem_448973, %struct.Memory** %MEMORY
  br label %block_.L_448d04

block_.L_448978:                                  ; preds = %block_.L_448956
  %loadMem_448978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 15
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %277 to i64*
  %278 = load i64, i64* %RBP.i526
  %279 = sub i64 %278, 16
  %280 = load i64, i64* %PC.i524
  %281 = add i64 %280, 4
  store i64 %281, i64* %PC.i524
  %282 = inttoptr i64 %279 to i64*
  %283 = load i64, i64* %282
  store i64 %283, i64* %RAX.i525, align 8
  store %struct.Memory* %loadMem_448978, %struct.Memory** %MEMORY
  %loadMem_44897c = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RAX.i522 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 11
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RDI.i523 = bitcast %union.anon* %292 to i64*
  %293 = load i64, i64* %RAX.i522
  %294 = add i64 %293, 104
  %295 = load i64, i64* %PC.i521
  %296 = add i64 %295, 4
  store i64 %296, i64* %PC.i521
  %297 = inttoptr i64 %294 to i64*
  %298 = load i64, i64* %297
  store i64 %298, i64* %RDI.i523, align 8
  store %struct.Memory* %loadMem_44897c, %struct.Memory** %MEMORY
  %loadMem1_448980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 33
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %301 to i64*
  %302 = load i64, i64* %PC.i520
  %303 = add i64 %302, -205440
  %304 = load i64, i64* %PC.i520
  %305 = add i64 %304, 5
  %306 = load i64, i64* %PC.i520
  %307 = add i64 %306, 5
  store i64 %307, i64* %PC.i520
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = add i64 %309, -8
  %311 = inttoptr i64 %310 to i64*
  store i64 %305, i64* %311
  store i64 %310, i64* %308, align 8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %303, i64* %312, align 8
  store %struct.Memory* %loadMem1_448980, %struct.Memory** %MEMORY
  %loadMem2_448980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448980 = load i64, i64* %3
  %call2_448980 = call %struct.Memory* @sub_416700.FileExists(%struct.State* %0, i64 %loadPC_448980, %struct.Memory* %loadMem2_448980)
  store %struct.Memory* %call2_448980, %struct.Memory** %MEMORY
  %loadMem_448985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %EAX.i519 = bitcast %union.anon* %318 to i32*
  %319 = load i32, i32* %EAX.i519
  %320 = zext i32 %319 to i64
  %321 = load i64, i64* %PC.i518
  %322 = add i64 %321, 3
  store i64 %322, i64* %PC.i518
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %323, align 1
  %324 = and i32 %319, 255
  %325 = call i32 @llvm.ctpop.i32(i32 %324)
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %328, i8* %329, align 1
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %330, align 1
  %331 = icmp eq i32 %319, 0
  %332 = zext i1 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %332, i8* %333, align 1
  %334 = lshr i32 %319, 31
  %335 = trunc i32 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %335, i8* %336, align 1
  %337 = lshr i32 %319, 31
  %338 = xor i32 %334, %337
  %339 = add i32 %338, %337
  %340 = icmp eq i32 %339, 2
  %341 = zext i1 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %341, i8* %342, align 1
  store %struct.Memory* %loadMem_448985, %struct.Memory** %MEMORY
  %loadMem_448988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 33
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %345 to i64*
  %346 = load i64, i64* %PC.i517
  %347 = add i64 %346, 18
  %348 = load i64, i64* %PC.i517
  %349 = add i64 %348, 6
  %350 = load i64, i64* %PC.i517
  %351 = add i64 %350, 6
  store i64 %351, i64* %PC.i517
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %353 = load i8, i8* %352, align 1
  store i8 %353, i8* %BRANCH_TAKEN, align 1
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %355 = icmp ne i8 %353, 0
  %356 = select i1 %355, i64 %347, i64 %349
  store i64 %356, i64* %354, align 8
  store %struct.Memory* %loadMem_448988, %struct.Memory** %MEMORY
  %loadBr_448988 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448988 = icmp eq i8 %loadBr_448988, 1
  br i1 %cmpBr_448988, label %block_.L_44899a, label %block_44898e

block_44898e:                                     ; preds = %block_.L_448978
  %loadMem_44898e = load %struct.Memory*, %struct.Memory** %MEMORY
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 33
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 15
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %362 to i64*
  %363 = load i64, i64* %RBP.i516
  %364 = sub i64 %363, 4
  %365 = load i64, i64* %PC.i515
  %366 = add i64 %365, 7
  store i64 %366, i64* %PC.i515
  %367 = inttoptr i64 %364 to i32*
  store i32 1, i32* %367
  store %struct.Memory* %loadMem_44898e, %struct.Memory** %MEMORY
  %loadMem_448995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %370 to i64*
  %371 = load i64, i64* %PC.i514
  %372 = add i64 %371, 879
  %373 = load i64, i64* %PC.i514
  %374 = add i64 %373, 5
  store i64 %374, i64* %PC.i514
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %372, i64* %375, align 8
  store %struct.Memory* %loadMem_448995, %struct.Memory** %MEMORY
  br label %block_.L_448d04

block_.L_44899a:                                  ; preds = %block_.L_448978
  %loadMem_44899a = load %struct.Memory*, %struct.Memory** %MEMORY
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 33
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 9
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RSI.i513 = bitcast %union.anon* %381 to i64*
  %382 = load i64, i64* %PC.i512
  %383 = add i64 %382, 10
  store i64 %383, i64* %PC.i512
  store i64 ptrtoint (%G__0x45a5e7_type* @G__0x45a5e7 to i64), i64* %RSI.i513, align 8
  store %struct.Memory* %loadMem_44899a, %struct.Memory** %MEMORY
  %loadMem_4489a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 15
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %392 to i64*
  %393 = load i64, i64* %RBP.i511
  %394 = sub i64 %393, 16
  %395 = load i64, i64* %PC.i509
  %396 = add i64 %395, 4
  store i64 %396, i64* %PC.i509
  %397 = inttoptr i64 %394 to i64*
  %398 = load i64, i64* %397
  store i64 %398, i64* %RAX.i510, align 8
  store %struct.Memory* %loadMem_4489a4, %struct.Memory** %MEMORY
  %loadMem_4489a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %404 to i64*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 11
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RDI.i508 = bitcast %union.anon* %407 to i64*
  %408 = load i64, i64* %RAX.i507
  %409 = add i64 %408, 72
  %410 = load i64, i64* %PC.i506
  %411 = add i64 %410, 4
  store i64 %411, i64* %PC.i506
  %412 = inttoptr i64 %409 to i64*
  %413 = load i64, i64* %412
  store i64 %413, i64* %RDI.i508, align 8
  store %struct.Memory* %loadMem_4489a8, %struct.Memory** %MEMORY
  %loadMem1_4489ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 33
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %PC.i505
  %418 = add i64 %417, -291692
  %419 = load i64, i64* %PC.i505
  %420 = add i64 %419, 5
  %421 = load i64, i64* %PC.i505
  %422 = add i64 %421, 5
  store i64 %422, i64* %PC.i505
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = add i64 %424, -8
  %426 = inttoptr i64 %425 to i64*
  store i64 %420, i64* %426
  store i64 %425, i64* %423, align 8
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %418, i64* %427, align 8
  store %struct.Memory* %loadMem1_4489ac, %struct.Memory** %MEMORY
  %loadMem2_4489ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4489ac = load i64, i64* %3
  %call2_4489ac = call %struct.Memory* @sub_401640.fopen_plt(%struct.State* %0, i64 %loadPC_4489ac, %struct.Memory* %loadMem2_4489ac)
  store %struct.Memory* %call2_4489ac, %struct.Memory** %MEMORY
  %loadMem_4489b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 9
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RSI.i503 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 15
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %436 to i64*
  %437 = load i64, i64* %RBP.i504
  %438 = sub i64 %437, 16
  %439 = load i64, i64* %PC.i502
  %440 = add i64 %439, 4
  store i64 %440, i64* %PC.i502
  %441 = inttoptr i64 %438 to i64*
  %442 = load i64, i64* %441
  store i64 %442, i64* %RSI.i503, align 8
  store %struct.Memory* %loadMem_4489b1, %struct.Memory** %MEMORY
  %loadMem_4489b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 33
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 9
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %RSI.i501 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %RSI.i501
  %453 = add i64 %452, 80
  %454 = load i64, i64* %RAX.i500
  %455 = load i64, i64* %PC.i499
  %456 = add i64 %455, 4
  store i64 %456, i64* %PC.i499
  %457 = inttoptr i64 %453 to i64*
  store i64 %454, i64* %457
  store %struct.Memory* %loadMem_4489b5, %struct.Memory** %MEMORY
  %loadMem_4489b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 33
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %463 to i64*
  %464 = load i64, i64* %RAX.i498
  %465 = load i64, i64* %PC.i497
  %466 = add i64 %465, 4
  store i64 %466, i64* %PC.i497
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %467, align 1
  %468 = trunc i64 %464 to i32
  %469 = and i32 %468, 255
  %470 = call i32 @llvm.ctpop.i32(i32 %469)
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %473, i8* %474, align 1
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %475, align 1
  %476 = icmp eq i64 %464, 0
  %477 = zext i1 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %477, i8* %478, align 1
  %479 = lshr i64 %464, 63
  %480 = trunc i64 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %480, i8* %481, align 1
  %482 = lshr i64 %464, 63
  %483 = xor i64 %479, %482
  %484 = add i64 %483, %482
  %485 = icmp eq i64 %484, 2
  %486 = zext i1 %485 to i8
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %486, i8* %487, align 1
  store %struct.Memory* %loadMem_4489b9, %struct.Memory** %MEMORY
  %loadMem_4489bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 33
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %490 to i64*
  %491 = load i64, i64* %PC.i496
  %492 = add i64 %491, 18
  %493 = load i64, i64* %PC.i496
  %494 = add i64 %493, 6
  %495 = load i64, i64* %PC.i496
  %496 = add i64 %495, 6
  store i64 %496, i64* %PC.i496
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %498 = load i8, i8* %497, align 1
  %499 = icmp eq i8 %498, 0
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %BRANCH_TAKEN, align 1
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %502 = select i1 %499, i64 %492, i64 %494
  store i64 %502, i64* %501, align 8
  store %struct.Memory* %loadMem_4489bd, %struct.Memory** %MEMORY
  %loadBr_4489bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4489bd = icmp eq i8 %loadBr_4489bd, 1
  br i1 %cmpBr_4489bd, label %block_.L_4489cf, label %block_4489c3

block_4489c3:                                     ; preds = %block_.L_44899a
  %loadMem_4489c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 15
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %RBP.i495
  %510 = sub i64 %509, 4
  %511 = load i64, i64* %PC.i494
  %512 = add i64 %511, 7
  store i64 %512, i64* %PC.i494
  %513 = inttoptr i64 %510 to i32*
  store i32 1, i32* %513
  store %struct.Memory* %loadMem_4489c3, %struct.Memory** %MEMORY
  %loadMem_4489ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 33
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %516 to i64*
  %517 = load i64, i64* %PC.i493
  %518 = add i64 %517, 826
  %519 = load i64, i64* %PC.i493
  %520 = add i64 %519, 5
  store i64 %520, i64* %PC.i493
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %518, i64* %521, align 8
  store %struct.Memory* %loadMem_4489ca, %struct.Memory** %MEMORY
  br label %block_.L_448d04

block_.L_4489cf:                                  ; preds = %block_.L_44899a
  %loadMem_4489cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 33
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 9
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %RSI.i492 = bitcast %union.anon* %527 to i64*
  %528 = load i64, i64* %PC.i491
  %529 = add i64 %528, 10
  store i64 %529, i64* %PC.i491
  store i64 ptrtoint (%G__0x45a5e7_type* @G__0x45a5e7 to i64), i64* %RSI.i492, align 8
  store %struct.Memory* %loadMem_4489cf, %struct.Memory** %MEMORY
  %loadMem_4489d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 15
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %538 to i64*
  %539 = load i64, i64* %RBP.i490
  %540 = sub i64 %539, 16
  %541 = load i64, i64* %PC.i488
  %542 = add i64 %541, 4
  store i64 %542, i64* %PC.i488
  %543 = inttoptr i64 %540 to i64*
  %544 = load i64, i64* %543
  store i64 %544, i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_4489d9, %struct.Memory** %MEMORY
  %loadMem_4489dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 1
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 11
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RDI.i487 = bitcast %union.anon* %553 to i64*
  %554 = load i64, i64* %RAX.i486
  %555 = add i64 %554, 104
  %556 = load i64, i64* %PC.i485
  %557 = add i64 %556, 4
  store i64 %557, i64* %PC.i485
  %558 = inttoptr i64 %555 to i64*
  %559 = load i64, i64* %558
  store i64 %559, i64* %RDI.i487, align 8
  store %struct.Memory* %loadMem_4489dd, %struct.Memory** %MEMORY
  %loadMem1_4489e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %PC.i484
  %564 = add i64 %563, -291745
  %565 = load i64, i64* %PC.i484
  %566 = add i64 %565, 5
  %567 = load i64, i64* %PC.i484
  %568 = add i64 %567, 5
  store i64 %568, i64* %PC.i484
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %570 = load i64, i64* %569, align 8
  %571 = add i64 %570, -8
  %572 = inttoptr i64 %571 to i64*
  store i64 %566, i64* %572
  store i64 %571, i64* %569, align 8
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %564, i64* %573, align 8
  store %struct.Memory* %loadMem1_4489e1, %struct.Memory** %MEMORY
  %loadMem2_4489e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4489e1 = load i64, i64* %3
  %call2_4489e1 = call %struct.Memory* @sub_401640.fopen_plt(%struct.State* %0, i64 %loadPC_4489e1, %struct.Memory* %loadMem2_4489e1)
  store %struct.Memory* %call2_4489e1, %struct.Memory** %MEMORY
  %loadMem_4489e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 33
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 9
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RSI.i482 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 15
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %582 to i64*
  %583 = load i64, i64* %RBP.i483
  %584 = sub i64 %583, 16
  %585 = load i64, i64* %PC.i481
  %586 = add i64 %585, 4
  store i64 %586, i64* %PC.i481
  %587 = inttoptr i64 %584 to i64*
  %588 = load i64, i64* %587
  store i64 %588, i64* %RSI.i482, align 8
  store %struct.Memory* %loadMem_4489e6, %struct.Memory** %MEMORY
  %loadMem_4489ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 1
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %594 to i64*
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 9
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %RSI.i480 = bitcast %union.anon* %597 to i64*
  %598 = load i64, i64* %RSI.i480
  %599 = add i64 %598, 112
  %600 = load i64, i64* %RAX.i479
  %601 = load i64, i64* %PC.i478
  %602 = add i64 %601, 4
  store i64 %602, i64* %PC.i478
  %603 = inttoptr i64 %599 to i64*
  store i64 %600, i64* %603
  store %struct.Memory* %loadMem_4489ea, %struct.Memory** %MEMORY
  %loadMem_4489ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 1
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %609 to i64*
  %610 = load i64, i64* %RAX.i477
  %611 = load i64, i64* %PC.i476
  %612 = add i64 %611, 4
  store i64 %612, i64* %PC.i476
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %613, align 1
  %614 = trunc i64 %610 to i32
  %615 = and i32 %614, 255
  %616 = call i32 @llvm.ctpop.i32(i32 %615)
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  %619 = xor i8 %618, 1
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %619, i8* %620, align 1
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %621, align 1
  %622 = icmp eq i64 %610, 0
  %623 = zext i1 %622 to i8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %623, i8* %624, align 1
  %625 = lshr i64 %610, 63
  %626 = trunc i64 %625 to i8
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %626, i8* %627, align 1
  %628 = lshr i64 %610, 63
  %629 = xor i64 %625, %628
  %630 = add i64 %629, %628
  %631 = icmp eq i64 %630, 2
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %632, i8* %633, align 1
  store %struct.Memory* %loadMem_4489ee, %struct.Memory** %MEMORY
  %loadMem_4489f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %636 to i64*
  %637 = load i64, i64* %PC.i475
  %638 = add i64 %637, 18
  %639 = load i64, i64* %PC.i475
  %640 = add i64 %639, 6
  %641 = load i64, i64* %PC.i475
  %642 = add i64 %641, 6
  store i64 %642, i64* %PC.i475
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %644 = load i8, i8* %643, align 1
  %645 = icmp eq i8 %644, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %BRANCH_TAKEN, align 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %648 = select i1 %645, i64 %638, i64 %640
  store i64 %648, i64* %647, align 8
  store %struct.Memory* %loadMem_4489f2, %struct.Memory** %MEMORY
  %loadBr_4489f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4489f2 = icmp eq i8 %loadBr_4489f2, 1
  br i1 %cmpBr_4489f2, label %block_.L_448a04, label %block_4489f8

block_4489f8:                                     ; preds = %block_.L_4489cf
  %loadMem_4489f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 15
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %654 to i64*
  %655 = load i64, i64* %RBP.i474
  %656 = sub i64 %655, 4
  %657 = load i64, i64* %PC.i473
  %658 = add i64 %657, 7
  store i64 %658, i64* %PC.i473
  %659 = inttoptr i64 %656 to i32*
  store i32 1, i32* %659
  store %struct.Memory* %loadMem_4489f8, %struct.Memory** %MEMORY
  %loadMem_4489ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %662 to i64*
  %663 = load i64, i64* %PC.i472
  %664 = add i64 %663, 773
  %665 = load i64, i64* %PC.i472
  %666 = add i64 %665, 5
  store i64 %666, i64* %PC.i472
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %664, i64* %667, align 8
  store %struct.Memory* %loadMem_4489ff, %struct.Memory** %MEMORY
  br label %block_.L_448d04

block_.L_448a04:                                  ; preds = %block_.L_4489cf
  %loadMem_448a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 15
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %673 to i64*
  %674 = load i64, i64* %RBP.i471
  %675 = sub i64 %674, 20
  %676 = load i64, i64* %PC.i470
  %677 = add i64 %676, 7
  store i64 %677, i64* %PC.i470
  %678 = inttoptr i64 %675 to i32*
  store i32 0, i32* %678
  store %struct.Memory* %loadMem_448a04, %struct.Memory** %MEMORY
  br label %block_.L_448a0b

block_.L_448a0b:                                  ; preds = %block_.L_448b5f, %block_.L_448a04
  %loadMem_448a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 1
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 15
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %687 to i64*
  %688 = load i64, i64* %RBP.i469
  %689 = sub i64 %688, 20
  %690 = load i64, i64* %PC.i467
  %691 = add i64 %690, 3
  store i64 %691, i64* %PC.i467
  %692 = inttoptr i64 %689 to i32*
  %693 = load i32, i32* %692
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RAX.i468, align 8
  store %struct.Memory* %loadMem_448a0b, %struct.Memory** %MEMORY
  %loadMem_448a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 5
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 15
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %703 to i64*
  %704 = load i64, i64* %RBP.i466
  %705 = sub i64 %704, 16
  %706 = load i64, i64* %PC.i464
  %707 = add i64 %706, 4
  store i64 %707, i64* %PC.i464
  %708 = inttoptr i64 %705 to i64*
  %709 = load i64, i64* %708
  store i64 %709, i64* %RCX.i465, align 8
  store %struct.Memory* %loadMem_448a0e, %struct.Memory** %MEMORY
  %loadMem_448a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 1
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %EAX.i462 = bitcast %union.anon* %715 to i32*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 5
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %718 to i64*
  %719 = load i32, i32* %EAX.i462
  %720 = zext i32 %719 to i64
  %721 = load i64, i64* %RCX.i463
  %722 = add i64 %721, 68
  %723 = load i64, i64* %PC.i461
  %724 = add i64 %723, 3
  store i64 %724, i64* %PC.i461
  %725 = inttoptr i64 %722 to i32*
  %726 = load i32, i32* %725
  %727 = sub i32 %719, %726
  %728 = icmp ult i32 %719, %726
  %729 = zext i1 %728 to i8
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %729, i8* %730, align 1
  %731 = and i32 %727, 255
  %732 = call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %735, i8* %736, align 1
  %737 = xor i32 %726, %719
  %738 = xor i32 %737, %727
  %739 = lshr i32 %738, 4
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %741, i8* %742, align 1
  %743 = icmp eq i32 %727, 0
  %744 = zext i1 %743 to i8
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %744, i8* %745, align 1
  %746 = lshr i32 %727, 31
  %747 = trunc i32 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %747, i8* %748, align 1
  %749 = lshr i32 %719, 31
  %750 = lshr i32 %726, 31
  %751 = xor i32 %750, %749
  %752 = xor i32 %746, %749
  %753 = add i32 %752, %751
  %754 = icmp eq i32 %753, 2
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %755, i8* %756, align 1
  store %struct.Memory* %loadMem_448a12, %struct.Memory** %MEMORY
  %loadMem_448a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 33
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %PC.i460
  %761 = add i64 %760, 344
  %762 = load i64, i64* %PC.i460
  %763 = add i64 %762, 6
  %764 = load i64, i64* %PC.i460
  %765 = add i64 %764, 6
  store i64 %765, i64* %PC.i460
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %767 = load i8, i8* %766, align 1
  %768 = icmp eq i8 %767, 0
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %BRANCH_TAKEN, align 1
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %771 = select i1 %768, i64 %761, i64 %763
  store i64 %771, i64* %770, align 8
  store %struct.Memory* %loadMem_448a15, %struct.Memory** %MEMORY
  %loadBr_448a15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448a15 = icmp eq i8 %loadBr_448a15, 1
  br i1 %cmpBr_448a15, label %block_.L_448b6d, label %block_448a1b

block_448a1b:                                     ; preds = %block_.L_448a0b
  %loadMem_448a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 33
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 1
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %777 to i64*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 15
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %780 to i64*
  %781 = load i64, i64* %RBP.i459
  %782 = sub i64 %781, 16
  %783 = load i64, i64* %PC.i457
  %784 = add i64 %783, 4
  store i64 %784, i64* %PC.i457
  %785 = inttoptr i64 %782 to i64*
  %786 = load i64, i64* %785
  store i64 %786, i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_448a1b, %struct.Memory** %MEMORY
  %loadMem_448a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 33
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 1
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %792 to i64*
  %793 = load i64, i64* %RAX.i456
  %794 = load i64, i64* %PC.i455
  %795 = add i64 %794, 3
  store i64 %795, i64* %PC.i455
  %796 = inttoptr i64 %793 to i32*
  %797 = load i32, i32* %796
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %798, align 1
  %799 = and i32 %797, 255
  %800 = call i32 @llvm.ctpop.i32(i32 %799)
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %803, i8* %804, align 1
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %805, align 1
  %806 = icmp eq i32 %797, 0
  %807 = zext i1 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %807, i8* %808, align 1
  %809 = lshr i32 %797, 31
  %810 = trunc i32 %809 to i8
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %810, i8* %811, align 1
  %812 = lshr i32 %797, 31
  %813 = xor i32 %809, %812
  %814 = add i32 %813, %812
  %815 = icmp eq i32 %814, 2
  %816 = zext i1 %815 to i8
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %816, i8* %817, align 1
  store %struct.Memory* %loadMem_448a1f, %struct.Memory** %MEMORY
  %loadMem_448a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %PC.i454
  %822 = add i64 %821, 163
  %823 = load i64, i64* %PC.i454
  %824 = add i64 %823, 6
  %825 = load i64, i64* %PC.i454
  %826 = add i64 %825, 6
  store i64 %826, i64* %PC.i454
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %828 = load i8, i8* %827, align 1
  %829 = icmp eq i8 %828, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %BRANCH_TAKEN, align 1
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %832 = select i1 %829, i64 %822, i64 %824
  store i64 %832, i64* %831, align 8
  store %struct.Memory* %loadMem_448a22, %struct.Memory** %MEMORY
  %loadBr_448a22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448a22 = icmp eq i8 %loadBr_448a22, 1
  br i1 %cmpBr_448a22, label %block_.L_448ac5, label %block_448a28

block_448a28:                                     ; preds = %block_448a1b
  %loadMem_448a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 33
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 9
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %RSI.i453 = bitcast %union.anon* %838 to i64*
  %839 = load i64, i64* %PC.i452
  %840 = add i64 %839, 10
  store i64 %840, i64* %PC.i452
  store i64 ptrtoint (%G__0x45a9a9_type* @G__0x45a9a9 to i64), i64* %RSI.i453, align 8
  store %struct.Memory* %loadMem_448a28, %struct.Memory** %MEMORY
  %loadMem_448a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 1
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 15
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %RBP.i451
  %851 = sub i64 %850, 16
  %852 = load i64, i64* %PC.i449
  %853 = add i64 %852, 4
  store i64 %853, i64* %PC.i449
  %854 = inttoptr i64 %851 to i64*
  %855 = load i64, i64* %854
  store i64 %855, i64* %RAX.i450, align 8
  store %struct.Memory* %loadMem_448a32, %struct.Memory** %MEMORY
  %loadMem_448a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 1
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 11
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RDI.i448 = bitcast %union.anon* %864 to i64*
  %865 = load i64, i64* %RAX.i447
  %866 = add i64 %865, 80
  %867 = load i64, i64* %PC.i446
  %868 = add i64 %867, 4
  store i64 %868, i64* %PC.i446
  %869 = inttoptr i64 %866 to i64*
  %870 = load i64, i64* %869
  store i64 %870, i64* %RDI.i448, align 8
  store %struct.Memory* %loadMem_448a36, %struct.Memory** %MEMORY
  %loadMem_448a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 33
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 1
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 15
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %879 to i64*
  %880 = load i64, i64* %RBP.i445
  %881 = sub i64 %880, 16
  %882 = load i64, i64* %PC.i443
  %883 = add i64 %882, 4
  store i64 %883, i64* %PC.i443
  %884 = inttoptr i64 %881 to i64*
  %885 = load i64, i64* %884
  store i64 %885, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_448a3a, %struct.Memory** %MEMORY
  %loadMem_448a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 1
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RAX.i442
  %893 = add i64 %892, 56
  %894 = load i64, i64* %PC.i441
  %895 = add i64 %894, 4
  store i64 %895, i64* %PC.i441
  %896 = inttoptr i64 %893 to i64*
  %897 = load i64, i64* %896
  store i64 %897, i64* %RAX.i442, align 8
  store %struct.Memory* %loadMem_448a3e, %struct.Memory** %MEMORY
  %loadMem_448a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 5
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 15
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %RBP.i440
  %908 = sub i64 %907, 20
  %909 = load i64, i64* %PC.i438
  %910 = add i64 %909, 4
  store i64 %910, i64* %PC.i438
  %911 = inttoptr i64 %908 to i32*
  %912 = load i32, i32* %911
  %913 = sext i32 %912 to i64
  store i64 %913, i64* %RCX.i439, align 8
  store %struct.Memory* %loadMem_448a42, %struct.Memory** %MEMORY
  %loadMem_448a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 5
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %919 to i64*
  %920 = load i64, i64* %RCX.i437
  %921 = load i64, i64* %PC.i436
  %922 = add i64 %921, 4
  store i64 %922, i64* %PC.i436
  %923 = sext i64 %920 to i128
  %924 = and i128 %923, -18446744073709551616
  %925 = zext i64 %920 to i128
  %926 = or i128 %924, %925
  %927 = mul i128 56, %926
  %928 = trunc i128 %927 to i64
  store i64 %928, i64* %RCX.i437, align 8
  %929 = sext i64 %928 to i128
  %930 = icmp ne i128 %929, %927
  %931 = zext i1 %930 to i8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %931, i8* %932, align 1
  %933 = trunc i128 %927 to i32
  %934 = and i32 %933, 255
  %935 = call i32 @llvm.ctpop.i32(i32 %934)
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  %938 = xor i8 %937, 1
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %938, i8* %939, align 1
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %940, align 1
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %941, align 1
  %942 = lshr i64 %928, 63
  %943 = trunc i64 %942 to i8
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %943, i8* %944, align 1
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %931, i8* %945, align 1
  store %struct.Memory* %loadMem_448a46, %struct.Memory** %MEMORY
  %loadMem_448a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 1
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 5
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %954 to i64*
  %955 = load i64, i64* %RAX.i434
  %956 = load i64, i64* %RCX.i435
  %957 = load i64, i64* %PC.i433
  %958 = add i64 %957, 3
  store i64 %958, i64* %PC.i433
  %959 = add i64 %956, %955
  store i64 %959, i64* %RAX.i434, align 8
  %960 = icmp ult i64 %959, %955
  %961 = icmp ult i64 %959, %956
  %962 = or i1 %960, %961
  %963 = zext i1 %962 to i8
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %963, i8* %964, align 1
  %965 = trunc i64 %959 to i32
  %966 = and i32 %965, 255
  %967 = call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %970, i8* %971, align 1
  %972 = xor i64 %956, %955
  %973 = xor i64 %972, %959
  %974 = lshr i64 %973, 4
  %975 = trunc i64 %974 to i8
  %976 = and i8 %975, 1
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %976, i8* %977, align 1
  %978 = icmp eq i64 %959, 0
  %979 = zext i1 %978 to i8
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %979, i8* %980, align 1
  %981 = lshr i64 %959, 63
  %982 = trunc i64 %981 to i8
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %982, i8* %983, align 1
  %984 = lshr i64 %955, 63
  %985 = lshr i64 %956, 63
  %986 = xor i64 %981, %984
  %987 = xor i64 %981, %985
  %988 = add i64 %986, %987
  %989 = icmp eq i64 %988, 2
  %990 = zext i1 %989 to i8
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %990, i8* %991, align 1
  store %struct.Memory* %loadMem_448a4a, %struct.Memory** %MEMORY
  %loadMem_448a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 1
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 7
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RDX.i432 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %RAX.i431
  %1002 = load i64, i64* %PC.i430
  %1003 = add i64 %1002, 3
  store i64 %1003, i64* %PC.i430
  %1004 = inttoptr i64 %1001 to i64*
  %1005 = load i64, i64* %1004
  store i64 %1005, i64* %RDX.i432, align 8
  store %struct.Memory* %loadMem_448a4d, %struct.Memory** %MEMORY
  %loadMem_448a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 33
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1008 to i64*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 1
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 15
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %1014 to i64*
  %1015 = load i64, i64* %RBP.i429
  %1016 = sub i64 %1015, 16
  %1017 = load i64, i64* %PC.i427
  %1018 = add i64 %1017, 4
  store i64 %1018, i64* %PC.i427
  %1019 = inttoptr i64 %1016 to i64*
  %1020 = load i64, i64* %1019
  store i64 %1020, i64* %RAX.i428, align 8
  store %struct.Memory* %loadMem_448a50, %struct.Memory** %MEMORY
  %loadMem_448a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 1
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %1026 to i64*
  %1027 = load i64, i64* %RAX.i426
  %1028 = add i64 %1027, 56
  %1029 = load i64, i64* %PC.i425
  %1030 = add i64 %1029, 4
  store i64 %1030, i64* %PC.i425
  %1031 = inttoptr i64 %1028 to i64*
  %1032 = load i64, i64* %1031
  store i64 %1032, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_448a54, %struct.Memory** %MEMORY
  %loadMem_448a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 5
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 15
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %1041 to i64*
  %1042 = load i64, i64* %RBP.i424
  %1043 = sub i64 %1042, 20
  %1044 = load i64, i64* %PC.i422
  %1045 = add i64 %1044, 4
  store i64 %1045, i64* %PC.i422
  %1046 = inttoptr i64 %1043 to i32*
  %1047 = load i32, i32* %1046
  %1048 = sext i32 %1047 to i64
  store i64 %1048, i64* %RCX.i423, align 8
  store %struct.Memory* %loadMem_448a58, %struct.Memory** %MEMORY
  %loadMem_448a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 33
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 5
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RCX.i421 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RCX.i421
  %1056 = load i64, i64* %PC.i420
  %1057 = add i64 %1056, 4
  store i64 %1057, i64* %PC.i420
  %1058 = sext i64 %1055 to i128
  %1059 = and i128 %1058, -18446744073709551616
  %1060 = zext i64 %1055 to i128
  %1061 = or i128 %1059, %1060
  %1062 = mul i128 56, %1061
  %1063 = trunc i128 %1062 to i64
  store i64 %1063, i64* %RCX.i421, align 8
  %1064 = sext i64 %1063 to i128
  %1065 = icmp ne i128 %1064, %1062
  %1066 = zext i1 %1065 to i8
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1066, i8* %1067, align 1
  %1068 = trunc i128 %1062 to i32
  %1069 = and i32 %1068, 255
  %1070 = call i32 @llvm.ctpop.i32(i32 %1069)
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = xor i8 %1072, 1
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1073, i8* %1074, align 1
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1075, align 1
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1076, align 1
  %1077 = lshr i64 %1063, 63
  %1078 = trunc i64 %1077 to i8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1078, i8* %1079, align 1
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1066, i8* %1080, align 1
  store %struct.Memory* %loadMem_448a5c, %struct.Memory** %MEMORY
  %loadMem_448a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 1
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 5
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RCX.i419 = bitcast %union.anon* %1089 to i64*
  %1090 = load i64, i64* %RAX.i418
  %1091 = load i64, i64* %RCX.i419
  %1092 = load i64, i64* %PC.i417
  %1093 = add i64 %1092, 3
  store i64 %1093, i64* %PC.i417
  %1094 = add i64 %1091, %1090
  store i64 %1094, i64* %RAX.i418, align 8
  %1095 = icmp ult i64 %1094, %1090
  %1096 = icmp ult i64 %1094, %1091
  %1097 = or i1 %1095, %1096
  %1098 = zext i1 %1097 to i8
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1098, i8* %1099, align 1
  %1100 = trunc i64 %1094 to i32
  %1101 = and i32 %1100, 255
  %1102 = call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1105, i8* %1106, align 1
  %1107 = xor i64 %1091, %1090
  %1108 = xor i64 %1107, %1094
  %1109 = lshr i64 %1108, 4
  %1110 = trunc i64 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1111, i8* %1112, align 1
  %1113 = icmp eq i64 %1094, 0
  %1114 = zext i1 %1113 to i8
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1114, i8* %1115, align 1
  %1116 = lshr i64 %1094, 63
  %1117 = trunc i64 %1116 to i8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1117, i8* %1118, align 1
  %1119 = lshr i64 %1090, 63
  %1120 = lshr i64 %1091, 63
  %1121 = xor i64 %1116, %1119
  %1122 = xor i64 %1116, %1120
  %1123 = add i64 %1121, %1122
  %1124 = icmp eq i64 %1123, 2
  %1125 = zext i1 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1125, i8* %1126, align 1
  store %struct.Memory* %loadMem_448a60, %struct.Memory** %MEMORY
  %loadMem_448a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 1
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 5
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %1135 to i64*
  %1136 = load i64, i64* %RAX.i415
  %1137 = add i64 %1136, 8
  %1138 = load i64, i64* %PC.i414
  %1139 = add i64 %1138, 4
  store i64 %1139, i64* %PC.i414
  %1140 = inttoptr i64 %1137 to i16*
  %1141 = load i16, i16* %1140
  %1142 = zext i16 %1141 to i64
  store i64 %1142, i64* %RCX.i416, align 8
  store %struct.Memory* %loadMem_448a63, %struct.Memory** %MEMORY
  %loadMem_448a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 33
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 1
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %1148 to i64*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 15
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %1151 to i64*
  %1152 = load i64, i64* %RBP.i413
  %1153 = sub i64 %1152, 16
  %1154 = load i64, i64* %PC.i411
  %1155 = add i64 %1154, 4
  store i64 %1155, i64* %PC.i411
  %1156 = inttoptr i64 %1153 to i64*
  %1157 = load i64, i64* %1156
  store i64 %1157, i64* %RAX.i412, align 8
  store %struct.Memory* %loadMem_448a67, %struct.Memory** %MEMORY
  %loadMem_448a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 33
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 1
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %1163 to i64*
  %1164 = load i64, i64* %RAX.i410
  %1165 = add i64 %1164, 56
  %1166 = load i64, i64* %PC.i409
  %1167 = add i64 %1166, 4
  store i64 %1167, i64* %PC.i409
  %1168 = inttoptr i64 %1165 to i64*
  %1169 = load i64, i64* %1168
  store i64 %1169, i64* %RAX.i410, align 8
  store %struct.Memory* %loadMem_448a6b, %struct.Memory** %MEMORY
  %loadMem_448a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 33
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 15
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %1175 to i64*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 17
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %R8.i408 = bitcast %union.anon* %1178 to i64*
  %1179 = load i64, i64* %RBP.i407
  %1180 = sub i64 %1179, 20
  %1181 = load i64, i64* %PC.i406
  %1182 = add i64 %1181, 4
  store i64 %1182, i64* %PC.i406
  %1183 = inttoptr i64 %1180 to i32*
  %1184 = load i32, i32* %1183
  %1185 = sext i32 %1184 to i64
  store i64 %1185, i64* %R8.i408, align 8
  store %struct.Memory* %loadMem_448a6f, %struct.Memory** %MEMORY
  %loadMem_448a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 33
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %1188 to i64*
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 17
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %R8.i405 = bitcast %union.anon* %1191 to i64*
  %1192 = load i64, i64* %R8.i405
  %1193 = load i64, i64* %PC.i404
  %1194 = add i64 %1193, 4
  store i64 %1194, i64* %PC.i404
  %1195 = sext i64 %1192 to i128
  %1196 = and i128 %1195, -18446744073709551616
  %1197 = zext i64 %1192 to i128
  %1198 = or i128 %1196, %1197
  %1199 = mul i128 56, %1198
  %1200 = trunc i128 %1199 to i64
  store i64 %1200, i64* %R8.i405, align 8
  %1201 = sext i64 %1200 to i128
  %1202 = icmp ne i128 %1201, %1199
  %1203 = zext i1 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1203, i8* %1204, align 1
  %1205 = trunc i128 %1199 to i32
  %1206 = and i32 %1205, 255
  %1207 = call i32 @llvm.ctpop.i32(i32 %1206)
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = xor i8 %1209, 1
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1210, i8* %1211, align 1
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1212, align 1
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1213, align 1
  %1214 = lshr i64 %1200, 63
  %1215 = trunc i64 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1215, i8* %1216, align 1
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1203, i8* %1217, align 1
  store %struct.Memory* %loadMem_448a73, %struct.Memory** %MEMORY
  %loadMem_448a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 1
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %1223 to i64*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 17
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %R8.i403 = bitcast %union.anon* %1226 to i64*
  %1227 = load i64, i64* %RAX.i402
  %1228 = load i64, i64* %R8.i403
  %1229 = load i64, i64* %PC.i401
  %1230 = add i64 %1229, 3
  store i64 %1230, i64* %PC.i401
  %1231 = add i64 %1228, %1227
  store i64 %1231, i64* %RAX.i402, align 8
  %1232 = icmp ult i64 %1231, %1227
  %1233 = icmp ult i64 %1231, %1228
  %1234 = or i1 %1232, %1233
  %1235 = zext i1 %1234 to i8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1235, i8* %1236, align 1
  %1237 = trunc i64 %1231 to i32
  %1238 = and i32 %1237, 255
  %1239 = call i32 @llvm.ctpop.i32(i32 %1238)
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1242, i8* %1243, align 1
  %1244 = xor i64 %1228, %1227
  %1245 = xor i64 %1244, %1231
  %1246 = lshr i64 %1245, 4
  %1247 = trunc i64 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1248, i8* %1249, align 1
  %1250 = icmp eq i64 %1231, 0
  %1251 = zext i1 %1250 to i8
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1251, i8* %1252, align 1
  %1253 = lshr i64 %1231, 63
  %1254 = trunc i64 %1253 to i8
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1254, i8* %1255, align 1
  %1256 = lshr i64 %1227, 63
  %1257 = lshr i64 %1228, 63
  %1258 = xor i64 %1253, %1256
  %1259 = xor i64 %1253, %1257
  %1260 = add i64 %1258, %1259
  %1261 = icmp eq i64 %1260, 2
  %1262 = zext i1 %1261 to i8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1262, i8* %1263, align 1
  store %struct.Memory* %loadMem_448a77, %struct.Memory** %MEMORY
  %loadMem_448a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 19
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %R9D.i399 = bitcast %union.anon* %1269 to i32*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 1
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %1272 to i64*
  %1273 = bitcast i32* %R9D.i399 to i64*
  %1274 = load i64, i64* %RAX.i400
  %1275 = add i64 %1274, 24
  %1276 = load i64, i64* %PC.i398
  %1277 = add i64 %1276, 4
  store i64 %1277, i64* %PC.i398
  %1278 = inttoptr i64 %1275 to i32*
  %1279 = load i32, i32* %1278
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %1273, align 8
  store %struct.Memory* %loadMem_448a7a, %struct.Memory** %MEMORY
  %loadMem_448a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 17
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1286 to i32*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 19
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %R9D.i397 = bitcast %union.anon* %1289 to i32*
  %1290 = bitcast i32* %R8D.i to i64*
  %1291 = load i32, i32* %R9D.i397
  %1292 = zext i32 %1291 to i64
  %1293 = load i64, i64* %PC.i396
  %1294 = add i64 %1293, 3
  store i64 %1294, i64* %PC.i396
  %1295 = and i64 %1292, 4294967295
  store i64 %1295, i64* %1290, align 8
  store %struct.Memory* %loadMem_448a7e, %struct.Memory** %MEMORY
  %loadMem_448a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 1
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 15
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %1304 to i64*
  %1305 = load i64, i64* %RBP.i395
  %1306 = sub i64 %1305, 16
  %1307 = load i64, i64* %PC.i393
  %1308 = add i64 %1307, 4
  store i64 %1308, i64* %PC.i393
  %1309 = inttoptr i64 %1306 to i64*
  %1310 = load i64, i64* %1309
  store i64 %1310, i64* %RAX.i394, align 8
  store %struct.Memory* %loadMem_448a81, %struct.Memory** %MEMORY
  %loadMem_448a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 33
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 1
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %1316 to i64*
  %1317 = load i64, i64* %RAX.i392
  %1318 = add i64 %1317, 56
  %1319 = load i64, i64* %PC.i391
  %1320 = add i64 %1319, 4
  store i64 %1320, i64* %PC.i391
  %1321 = inttoptr i64 %1318 to i64*
  %1322 = load i64, i64* %1321
  store i64 %1322, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_448a85, %struct.Memory** %MEMORY
  %loadMem_448a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 33
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1325 to i64*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 15
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %1328 to i64*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 21
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %R10.i390 = bitcast %union.anon* %1331 to i64*
  %1332 = load i64, i64* %RBP.i389
  %1333 = sub i64 %1332, 20
  %1334 = load i64, i64* %PC.i388
  %1335 = add i64 %1334, 4
  store i64 %1335, i64* %PC.i388
  %1336 = inttoptr i64 %1333 to i32*
  %1337 = load i32, i32* %1336
  %1338 = sext i32 %1337 to i64
  store i64 %1338, i64* %R10.i390, align 8
  store %struct.Memory* %loadMem_448a89, %struct.Memory** %MEMORY
  %loadMem_448a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 33
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 21
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %R10.i387 = bitcast %union.anon* %1344 to i64*
  %1345 = load i64, i64* %R10.i387
  %1346 = load i64, i64* %PC.i386
  %1347 = add i64 %1346, 4
  store i64 %1347, i64* %PC.i386
  %1348 = sext i64 %1345 to i128
  %1349 = and i128 %1348, -18446744073709551616
  %1350 = zext i64 %1345 to i128
  %1351 = or i128 %1349, %1350
  %1352 = mul i128 56, %1351
  %1353 = trunc i128 %1352 to i64
  store i64 %1353, i64* %R10.i387, align 8
  %1354 = sext i64 %1353 to i128
  %1355 = icmp ne i128 %1354, %1352
  %1356 = zext i1 %1355 to i8
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1356, i8* %1357, align 1
  %1358 = trunc i128 %1352 to i32
  %1359 = and i32 %1358, 255
  %1360 = call i32 @llvm.ctpop.i32(i32 %1359)
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  %1363 = xor i8 %1362, 1
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1363, i8* %1364, align 1
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1365, align 1
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1366, align 1
  %1367 = lshr i64 %1353, 63
  %1368 = trunc i64 %1367 to i8
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1368, i8* %1369, align 1
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1356, i8* %1370, align 1
  store %struct.Memory* %loadMem_448a8d, %struct.Memory** %MEMORY
  %loadMem_448a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 1
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 21
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %R10.i385 = bitcast %union.anon* %1379 to i64*
  %1380 = load i64, i64* %RAX.i384
  %1381 = load i64, i64* %R10.i385
  %1382 = load i64, i64* %PC.i383
  %1383 = add i64 %1382, 3
  store i64 %1383, i64* %PC.i383
  %1384 = add i64 %1381, %1380
  store i64 %1384, i64* %RAX.i384, align 8
  %1385 = icmp ult i64 %1384, %1380
  %1386 = icmp ult i64 %1384, %1381
  %1387 = or i1 %1385, %1386
  %1388 = zext i1 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1388, i8* %1389, align 1
  %1390 = trunc i64 %1384 to i32
  %1391 = and i32 %1390, 255
  %1392 = call i32 @llvm.ctpop.i32(i32 %1391)
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1395, i8* %1396, align 1
  %1397 = xor i64 %1381, %1380
  %1398 = xor i64 %1397, %1384
  %1399 = lshr i64 %1398, 4
  %1400 = trunc i64 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1401, i8* %1402, align 1
  %1403 = icmp eq i64 %1384, 0
  %1404 = zext i1 %1403 to i8
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1404, i8* %1405, align 1
  %1406 = lshr i64 %1384, 63
  %1407 = trunc i64 %1406 to i8
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1407, i8* %1408, align 1
  %1409 = lshr i64 %1380, 63
  %1410 = lshr i64 %1381, 63
  %1411 = xor i64 %1406, %1409
  %1412 = xor i64 %1406, %1410
  %1413 = add i64 %1411, %1412
  %1414 = icmp eq i64 %1413, 2
  %1415 = zext i1 %1414 to i8
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1415, i8* %1416, align 1
  store %struct.Memory* %loadMem_448a91, %struct.Memory** %MEMORY
  %loadMem_448a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 33
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 19
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %1422 to i32*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 1
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %1425 to i64*
  %1426 = bitcast i32* %R9D.i to i64*
  %1427 = load i64, i64* %RAX.i382
  %1428 = add i64 %1427, 40
  %1429 = load i64, i64* %PC.i381
  %1430 = add i64 %1429, 4
  store i64 %1430, i64* %PC.i381
  %1431 = inttoptr i64 %1428 to i32*
  %1432 = load i32, i32* %1431
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %1426, align 8
  store %struct.Memory* %loadMem_448a94, %struct.Memory** %MEMORY
  %loadMem_448a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 33
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 1
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 15
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %1442 to i64*
  %1443 = load i64, i64* %RBP.i380
  %1444 = sub i64 %1443, 16
  %1445 = load i64, i64* %PC.i378
  %1446 = add i64 %1445, 4
  store i64 %1446, i64* %PC.i378
  %1447 = inttoptr i64 %1444 to i64*
  %1448 = load i64, i64* %1447
  store i64 %1448, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_448a98, %struct.Memory** %MEMORY
  %loadMem_448a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 1
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %RAX.i377
  %1456 = add i64 %1455, 56
  %1457 = load i64, i64* %PC.i376
  %1458 = add i64 %1457, 4
  store i64 %1458, i64* %PC.i376
  %1459 = inttoptr i64 %1456 to i64*
  %1460 = load i64, i64* %1459
  store i64 %1460, i64* %RAX.i377, align 8
  store %struct.Memory* %loadMem_448a9c, %struct.Memory** %MEMORY
  %loadMem_448aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1463 to i64*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 15
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 21
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %R10.i375 = bitcast %union.anon* %1469 to i64*
  %1470 = load i64, i64* %RBP.i374
  %1471 = sub i64 %1470, 20
  %1472 = load i64, i64* %PC.i373
  %1473 = add i64 %1472, 4
  store i64 %1473, i64* %PC.i373
  %1474 = inttoptr i64 %1471 to i32*
  %1475 = load i32, i32* %1474
  %1476 = sext i32 %1475 to i64
  store i64 %1476, i64* %R10.i375, align 8
  store %struct.Memory* %loadMem_448aa0, %struct.Memory** %MEMORY
  %loadMem_448aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 33
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 21
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %R10.i372 = bitcast %union.anon* %1482 to i64*
  %1483 = load i64, i64* %R10.i372
  %1484 = load i64, i64* %PC.i371
  %1485 = add i64 %1484, 4
  store i64 %1485, i64* %PC.i371
  %1486 = sext i64 %1483 to i128
  %1487 = and i128 %1486, -18446744073709551616
  %1488 = zext i64 %1483 to i128
  %1489 = or i128 %1487, %1488
  %1490 = mul i128 56, %1489
  %1491 = trunc i128 %1490 to i64
  store i64 %1491, i64* %R10.i372, align 8
  %1492 = sext i64 %1491 to i128
  %1493 = icmp ne i128 %1492, %1490
  %1494 = zext i1 %1493 to i8
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1494, i8* %1495, align 1
  %1496 = trunc i128 %1490 to i32
  %1497 = and i32 %1496, 255
  %1498 = call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1501, i8* %1502, align 1
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1503, align 1
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1504, align 1
  %1505 = lshr i64 %1491, 63
  %1506 = trunc i64 %1505 to i8
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1506, i8* %1507, align 1
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1494, i8* %1508, align 1
  store %struct.Memory* %loadMem_448aa4, %struct.Memory** %MEMORY
  %loadMem_448aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 1
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %1514 to i64*
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 21
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %R10.i370 = bitcast %union.anon* %1517 to i64*
  %1518 = load i64, i64* %RAX.i369
  %1519 = load i64, i64* %R10.i370
  %1520 = load i64, i64* %PC.i368
  %1521 = add i64 %1520, 3
  store i64 %1521, i64* %PC.i368
  %1522 = add i64 %1519, %1518
  store i64 %1522, i64* %RAX.i369, align 8
  %1523 = icmp ult i64 %1522, %1518
  %1524 = icmp ult i64 %1522, %1519
  %1525 = or i1 %1523, %1524
  %1526 = zext i1 %1525 to i8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1526, i8* %1527, align 1
  %1528 = trunc i64 %1522 to i32
  %1529 = and i32 %1528, 255
  %1530 = call i32 @llvm.ctpop.i32(i32 %1529)
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1533, i8* %1534, align 1
  %1535 = xor i64 %1519, %1518
  %1536 = xor i64 %1535, %1522
  %1537 = lshr i64 %1536, 4
  %1538 = trunc i64 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1539, i8* %1540, align 1
  %1541 = icmp eq i64 %1522, 0
  %1542 = zext i1 %1541 to i8
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1542, i8* %1543, align 1
  %1544 = lshr i64 %1522, 63
  %1545 = trunc i64 %1544 to i8
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1545, i8* %1546, align 1
  %1547 = lshr i64 %1518, 63
  %1548 = lshr i64 %1519, 63
  %1549 = xor i64 %1544, %1547
  %1550 = xor i64 %1544, %1548
  %1551 = add i64 %1549, %1550
  %1552 = icmp eq i64 %1551, 2
  %1553 = zext i1 %1552 to i8
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1553, i8* %1554, align 1
  store %struct.Memory* %loadMem_448aa8, %struct.Memory** %MEMORY
  %loadMem_448aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 23
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %R11D.i366 = bitcast %union.anon* %1560 to i32*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 1
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RAX.i367 = bitcast %union.anon* %1563 to i64*
  %1564 = bitcast i32* %R11D.i366 to i64*
  %1565 = load i64, i64* %RAX.i367
  %1566 = add i64 %1565, 48
  %1567 = load i64, i64* %PC.i365
  %1568 = add i64 %1567, 4
  store i64 %1568, i64* %PC.i365
  %1569 = inttoptr i64 %1566 to i32*
  %1570 = load i32, i32* %1569
  %1571 = zext i32 %1570 to i64
  store i64 %1571, i64* %1564, align 8
  store %struct.Memory* %loadMem_448aab, %struct.Memory** %MEMORY
  %loadMem_448aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 23
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %R11D.i363 = bitcast %union.anon* %1577 to i32*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 1
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %1580 to i64*
  %1581 = load i32, i32* %R11D.i363
  %1582 = zext i32 %1581 to i64
  %1583 = load i64, i64* %PC.i362
  %1584 = add i64 %1583, 3
  store i64 %1584, i64* %PC.i362
  %1585 = and i64 %1582, 4294967295
  store i64 %1585, i64* %RAX.i364, align 8
  store %struct.Memory* %loadMem_448aaf, %struct.Memory** %MEMORY
  %loadMem_448ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 1
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %1591 to i64*
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 13
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %RSP.i361 = bitcast %union.anon* %1594 to i64*
  %1595 = load i64, i64* %RSP.i361
  %1596 = load i64, i64* %RAX.i360
  %1597 = load i64, i64* %PC.i359
  %1598 = add i64 %1597, 4
  store i64 %1598, i64* %PC.i359
  %1599 = inttoptr i64 %1595 to i64*
  store i64 %1596, i64* %1599
  store %struct.Memory* %loadMem_448ab2, %struct.Memory** %MEMORY
  %loadMem_448ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 33
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 1
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %1606 = bitcast %union.anon* %1605 to %struct.anon.2*
  %AL.i358 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1606, i32 0, i32 0
  %1607 = load i64, i64* %PC.i357
  %1608 = add i64 %1607, 2
  store i64 %1608, i64* %PC.i357
  store i8 0, i8* %AL.i358, align 1
  store %struct.Memory* %loadMem_448ab6, %struct.Memory** %MEMORY
  %loadMem1_448ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 33
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1611 to i64*
  %1612 = load i64, i64* %PC.i356
  %1613 = add i64 %1612, -292168
  %1614 = load i64, i64* %PC.i356
  %1615 = add i64 %1614, 5
  %1616 = load i64, i64* %PC.i356
  %1617 = add i64 %1616, 5
  store i64 %1617, i64* %PC.i356
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1619 = load i64, i64* %1618, align 8
  %1620 = add i64 %1619, -8
  %1621 = inttoptr i64 %1620 to i64*
  store i64 %1615, i64* %1621
  store i64 %1620, i64* %1618, align 8
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1613, i64* %1622, align 8
  store %struct.Memory* %loadMem1_448ab8, %struct.Memory** %MEMORY
  %loadMem2_448ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448ab8 = load i64, i64* %3
  %1623 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_448ab8)
  store %struct.Memory* %1623, %struct.Memory** %MEMORY
  %loadMem_448abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 1
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %EAX.i353 = bitcast %union.anon* %1629 to i32*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 15
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %RBP.i354
  %1634 = sub i64 %1633, 24
  %1635 = load i32, i32* %EAX.i353
  %1636 = zext i32 %1635 to i64
  %1637 = load i64, i64* %PC.i352
  %1638 = add i64 %1637, 3
  store i64 %1638, i64* %PC.i352
  %1639 = inttoptr i64 %1634 to i32*
  store i32 %1635, i32* %1639
  store %struct.Memory* %loadMem_448abd, %struct.Memory** %MEMORY
  %loadMem_448ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1642 to i64*
  %1643 = load i64, i64* %PC.i351
  %1644 = add i64 %1643, 154
  %1645 = load i64, i64* %PC.i351
  %1646 = add i64 %1645, 5
  store i64 %1646, i64* %PC.i351
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1644, i64* %1647, align 8
  store %struct.Memory* %loadMem_448ac0, %struct.Memory** %MEMORY
  br label %block_.L_448b5a

block_.L_448ac5:                                  ; preds = %block_448a1b
  %loadMem_448ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 33
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 9
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %RSI.i350 = bitcast %union.anon* %1653 to i64*
  %1654 = load i64, i64* %PC.i349
  %1655 = add i64 %1654, 10
  store i64 %1655, i64* %PC.i349
  store i64 ptrtoint (%G__0x45a9bc_type* @G__0x45a9bc to i64), i64* %RSI.i350, align 8
  store %struct.Memory* %loadMem_448ac5, %struct.Memory** %MEMORY
  %loadMem_448acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 33
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1658 to i64*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 1
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %1661 to i64*
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 15
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %1664 to i64*
  %1665 = load i64, i64* %RBP.i348
  %1666 = sub i64 %1665, 16
  %1667 = load i64, i64* %PC.i346
  %1668 = add i64 %1667, 4
  store i64 %1668, i64* %PC.i346
  %1669 = inttoptr i64 %1666 to i64*
  %1670 = load i64, i64* %1669
  store i64 %1670, i64* %RAX.i347, align 8
  store %struct.Memory* %loadMem_448acf, %struct.Memory** %MEMORY
  %loadMem_448ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 33
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 1
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 11
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %RDI.i345 = bitcast %union.anon* %1679 to i64*
  %1680 = load i64, i64* %RAX.i344
  %1681 = add i64 %1680, 80
  %1682 = load i64, i64* %PC.i343
  %1683 = add i64 %1682, 4
  store i64 %1683, i64* %PC.i343
  %1684 = inttoptr i64 %1681 to i64*
  %1685 = load i64, i64* %1684
  store i64 %1685, i64* %RDI.i345, align 8
  store %struct.Memory* %loadMem_448ad3, %struct.Memory** %MEMORY
  %loadMem_448ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 33
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1688 to i64*
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 1
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %1691 to i64*
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 15
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %1694 to i64*
  %1695 = load i64, i64* %RBP.i342
  %1696 = sub i64 %1695, 16
  %1697 = load i64, i64* %PC.i340
  %1698 = add i64 %1697, 4
  store i64 %1698, i64* %PC.i340
  %1699 = inttoptr i64 %1696 to i64*
  %1700 = load i64, i64* %1699
  store i64 %1700, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_448ad7, %struct.Memory** %MEMORY
  %loadMem_448adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 33
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 1
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %1706 to i64*
  %1707 = load i64, i64* %RAX.i339
  %1708 = add i64 %1707, 56
  %1709 = load i64, i64* %PC.i338
  %1710 = add i64 %1709, 4
  store i64 %1710, i64* %PC.i338
  %1711 = inttoptr i64 %1708 to i64*
  %1712 = load i64, i64* %1711
  store i64 %1712, i64* %RAX.i339, align 8
  store %struct.Memory* %loadMem_448adb, %struct.Memory** %MEMORY
  %loadMem_448adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 5
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 15
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %RBP.i337
  %1723 = sub i64 %1722, 20
  %1724 = load i64, i64* %PC.i335
  %1725 = add i64 %1724, 4
  store i64 %1725, i64* %PC.i335
  %1726 = inttoptr i64 %1723 to i32*
  %1727 = load i32, i32* %1726
  %1728 = sext i32 %1727 to i64
  store i64 %1728, i64* %RCX.i336, align 8
  store %struct.Memory* %loadMem_448adf, %struct.Memory** %MEMORY
  %loadMem_448ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 5
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %1734 to i64*
  %1735 = load i64, i64* %RCX.i334
  %1736 = load i64, i64* %PC.i333
  %1737 = add i64 %1736, 4
  store i64 %1737, i64* %PC.i333
  %1738 = sext i64 %1735 to i128
  %1739 = and i128 %1738, -18446744073709551616
  %1740 = zext i64 %1735 to i128
  %1741 = or i128 %1739, %1740
  %1742 = mul i128 56, %1741
  %1743 = trunc i128 %1742 to i64
  store i64 %1743, i64* %RCX.i334, align 8
  %1744 = sext i64 %1743 to i128
  %1745 = icmp ne i128 %1744, %1742
  %1746 = zext i1 %1745 to i8
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1746, i8* %1747, align 1
  %1748 = trunc i128 %1742 to i32
  %1749 = and i32 %1748, 255
  %1750 = call i32 @llvm.ctpop.i32(i32 %1749)
  %1751 = trunc i32 %1750 to i8
  %1752 = and i8 %1751, 1
  %1753 = xor i8 %1752, 1
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1753, i8* %1754, align 1
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1755, align 1
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1756, align 1
  %1757 = lshr i64 %1743, 63
  %1758 = trunc i64 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1758, i8* %1759, align 1
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1746, i8* %1760, align 1
  store %struct.Memory* %loadMem_448ae3, %struct.Memory** %MEMORY
  %loadMem_448ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 33
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1763 to i64*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 1
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 5
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %1769 to i64*
  %1770 = load i64, i64* %RAX.i331
  %1771 = load i64, i64* %RCX.i332
  %1772 = load i64, i64* %PC.i330
  %1773 = add i64 %1772, 3
  store i64 %1773, i64* %PC.i330
  %1774 = add i64 %1771, %1770
  store i64 %1774, i64* %RAX.i331, align 8
  %1775 = icmp ult i64 %1774, %1770
  %1776 = icmp ult i64 %1774, %1771
  %1777 = or i1 %1775, %1776
  %1778 = zext i1 %1777 to i8
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1778, i8* %1779, align 1
  %1780 = trunc i64 %1774 to i32
  %1781 = and i32 %1780, 255
  %1782 = call i32 @llvm.ctpop.i32(i32 %1781)
  %1783 = trunc i32 %1782 to i8
  %1784 = and i8 %1783, 1
  %1785 = xor i8 %1784, 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1785, i8* %1786, align 1
  %1787 = xor i64 %1771, %1770
  %1788 = xor i64 %1787, %1774
  %1789 = lshr i64 %1788, 4
  %1790 = trunc i64 %1789 to i8
  %1791 = and i8 %1790, 1
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1791, i8* %1792, align 1
  %1793 = icmp eq i64 %1774, 0
  %1794 = zext i1 %1793 to i8
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1794, i8* %1795, align 1
  %1796 = lshr i64 %1774, 63
  %1797 = trunc i64 %1796 to i8
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1797, i8* %1798, align 1
  %1799 = lshr i64 %1770, 63
  %1800 = lshr i64 %1771, 63
  %1801 = xor i64 %1796, %1799
  %1802 = xor i64 %1796, %1800
  %1803 = add i64 %1801, %1802
  %1804 = icmp eq i64 %1803, 2
  %1805 = zext i1 %1804 to i8
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1805, i8* %1806, align 1
  store %struct.Memory* %loadMem_448ae7, %struct.Memory** %MEMORY
  %loadMem_448aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 1
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 7
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %1815 to i64*
  %1816 = load i64, i64* %RAX.i328
  %1817 = load i64, i64* %PC.i327
  %1818 = add i64 %1817, 3
  store i64 %1818, i64* %PC.i327
  %1819 = inttoptr i64 %1816 to i64*
  %1820 = load i64, i64* %1819
  store i64 %1820, i64* %RDX.i329, align 8
  store %struct.Memory* %loadMem_448aea, %struct.Memory** %MEMORY
  %loadMem_448aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 1
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 15
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %RBP.i326
  %1831 = sub i64 %1830, 16
  %1832 = load i64, i64* %PC.i324
  %1833 = add i64 %1832, 4
  store i64 %1833, i64* %PC.i324
  %1834 = inttoptr i64 %1831 to i64*
  %1835 = load i64, i64* %1834
  store i64 %1835, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_448aed, %struct.Memory** %MEMORY
  %loadMem_448af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 1
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %1841 to i64*
  %1842 = load i64, i64* %RAX.i323
  %1843 = add i64 %1842, 56
  %1844 = load i64, i64* %PC.i322
  %1845 = add i64 %1844, 4
  store i64 %1845, i64* %PC.i322
  %1846 = inttoptr i64 %1843 to i64*
  %1847 = load i64, i64* %1846
  store i64 %1847, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_448af1, %struct.Memory** %MEMORY
  %loadMem_448af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 33
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 5
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 15
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %1856 to i64*
  %1857 = load i64, i64* %RBP.i321
  %1858 = sub i64 %1857, 20
  %1859 = load i64, i64* %PC.i319
  %1860 = add i64 %1859, 4
  store i64 %1860, i64* %PC.i319
  %1861 = inttoptr i64 %1858 to i32*
  %1862 = load i32, i32* %1861
  %1863 = sext i32 %1862 to i64
  store i64 %1863, i64* %RCX.i320, align 8
  store %struct.Memory* %loadMem_448af5, %struct.Memory** %MEMORY
  %loadMem_448af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 33
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 5
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %1869 to i64*
  %1870 = load i64, i64* %RCX.i318
  %1871 = load i64, i64* %PC.i317
  %1872 = add i64 %1871, 4
  store i64 %1872, i64* %PC.i317
  %1873 = sext i64 %1870 to i128
  %1874 = and i128 %1873, -18446744073709551616
  %1875 = zext i64 %1870 to i128
  %1876 = or i128 %1874, %1875
  %1877 = mul i128 56, %1876
  %1878 = trunc i128 %1877 to i64
  store i64 %1878, i64* %RCX.i318, align 8
  %1879 = sext i64 %1878 to i128
  %1880 = icmp ne i128 %1879, %1877
  %1881 = zext i1 %1880 to i8
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1881, i8* %1882, align 1
  %1883 = trunc i128 %1877 to i32
  %1884 = and i32 %1883, 255
  %1885 = call i32 @llvm.ctpop.i32(i32 %1884)
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  %1888 = xor i8 %1887, 1
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1888, i8* %1889, align 1
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1890, align 1
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1891, align 1
  %1892 = lshr i64 %1878, 63
  %1893 = trunc i64 %1892 to i8
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1893, i8* %1894, align 1
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1881, i8* %1895, align 1
  store %struct.Memory* %loadMem_448af9, %struct.Memory** %MEMORY
  %loadMem_448afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 1
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 5
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %RCX.i316 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %RAX.i315
  %1906 = load i64, i64* %RCX.i316
  %1907 = load i64, i64* %PC.i314
  %1908 = add i64 %1907, 3
  store i64 %1908, i64* %PC.i314
  %1909 = add i64 %1906, %1905
  store i64 %1909, i64* %RAX.i315, align 8
  %1910 = icmp ult i64 %1909, %1905
  %1911 = icmp ult i64 %1909, %1906
  %1912 = or i1 %1910, %1911
  %1913 = zext i1 %1912 to i8
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1913, i8* %1914, align 1
  %1915 = trunc i64 %1909 to i32
  %1916 = and i32 %1915, 255
  %1917 = call i32 @llvm.ctpop.i32(i32 %1916)
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  %1920 = xor i8 %1919, 1
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1920, i8* %1921, align 1
  %1922 = xor i64 %1906, %1905
  %1923 = xor i64 %1922, %1909
  %1924 = lshr i64 %1923, 4
  %1925 = trunc i64 %1924 to i8
  %1926 = and i8 %1925, 1
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1926, i8* %1927, align 1
  %1928 = icmp eq i64 %1909, 0
  %1929 = zext i1 %1928 to i8
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1929, i8* %1930, align 1
  %1931 = lshr i64 %1909, 63
  %1932 = trunc i64 %1931 to i8
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1932, i8* %1933, align 1
  %1934 = lshr i64 %1905, 63
  %1935 = lshr i64 %1906, 63
  %1936 = xor i64 %1931, %1934
  %1937 = xor i64 %1931, %1935
  %1938 = add i64 %1936, %1937
  %1939 = icmp eq i64 %1938, 2
  %1940 = zext i1 %1939 to i8
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1940, i8* %1941, align 1
  store %struct.Memory* %loadMem_448afd, %struct.Memory** %MEMORY
  %loadMem_448b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 33
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 1
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 5
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %1950 to i64*
  %1951 = load i64, i64* %RAX.i312
  %1952 = add i64 %1951, 8
  %1953 = load i64, i64* %PC.i311
  %1954 = add i64 %1953, 4
  store i64 %1954, i64* %PC.i311
  %1955 = inttoptr i64 %1952 to i16*
  %1956 = load i16, i16* %1955
  %1957 = zext i16 %1956 to i64
  store i64 %1957, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_448b00, %struct.Memory** %MEMORY
  %loadMem_448b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 33
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %1960 to i64*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 1
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 15
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %1966 to i64*
  %1967 = load i64, i64* %RBP.i310
  %1968 = sub i64 %1967, 16
  %1969 = load i64, i64* %PC.i308
  %1970 = add i64 %1969, 4
  store i64 %1970, i64* %PC.i308
  %1971 = inttoptr i64 %1968 to i64*
  %1972 = load i64, i64* %1971
  store i64 %1972, i64* %RAX.i309, align 8
  store %struct.Memory* %loadMem_448b04, %struct.Memory** %MEMORY
  %loadMem_448b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 1
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %1978 to i64*
  %1979 = load i64, i64* %RAX.i307
  %1980 = add i64 %1979, 56
  %1981 = load i64, i64* %PC.i306
  %1982 = add i64 %1981, 4
  store i64 %1982, i64* %PC.i306
  %1983 = inttoptr i64 %1980 to i64*
  %1984 = load i64, i64* %1983
  store i64 %1984, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_448b08, %struct.Memory** %MEMORY
  %loadMem_448b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 33
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1987 to i64*
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 15
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %1990 to i64*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 17
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %R8.i305 = bitcast %union.anon* %1993 to i64*
  %1994 = load i64, i64* %RBP.i304
  %1995 = sub i64 %1994, 20
  %1996 = load i64, i64* %PC.i303
  %1997 = add i64 %1996, 4
  store i64 %1997, i64* %PC.i303
  %1998 = inttoptr i64 %1995 to i32*
  %1999 = load i32, i32* %1998
  %2000 = sext i32 %1999 to i64
  store i64 %2000, i64* %R8.i305, align 8
  store %struct.Memory* %loadMem_448b0c, %struct.Memory** %MEMORY
  %loadMem_448b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 33
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 17
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %R8.i302 = bitcast %union.anon* %2006 to i64*
  %2007 = load i64, i64* %R8.i302
  %2008 = load i64, i64* %PC.i301
  %2009 = add i64 %2008, 4
  store i64 %2009, i64* %PC.i301
  %2010 = sext i64 %2007 to i128
  %2011 = and i128 %2010, -18446744073709551616
  %2012 = zext i64 %2007 to i128
  %2013 = or i128 %2011, %2012
  %2014 = mul i128 56, %2013
  %2015 = trunc i128 %2014 to i64
  store i64 %2015, i64* %R8.i302, align 8
  %2016 = sext i64 %2015 to i128
  %2017 = icmp ne i128 %2016, %2014
  %2018 = zext i1 %2017 to i8
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2018, i8* %2019, align 1
  %2020 = trunc i128 %2014 to i32
  %2021 = and i32 %2020, 255
  %2022 = call i32 @llvm.ctpop.i32(i32 %2021)
  %2023 = trunc i32 %2022 to i8
  %2024 = and i8 %2023, 1
  %2025 = xor i8 %2024, 1
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2025, i8* %2026, align 1
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2027, align 1
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2028, align 1
  %2029 = lshr i64 %2015, 63
  %2030 = trunc i64 %2029 to i8
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2030, i8* %2031, align 1
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2018, i8* %2032, align 1
  store %struct.Memory* %loadMem_448b10, %struct.Memory** %MEMORY
  %loadMem_448b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 33
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %2035 to i64*
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 1
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %2038 to i64*
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 17
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %R8.i300 = bitcast %union.anon* %2041 to i64*
  %2042 = load i64, i64* %RAX.i299
  %2043 = load i64, i64* %R8.i300
  %2044 = load i64, i64* %PC.i298
  %2045 = add i64 %2044, 3
  store i64 %2045, i64* %PC.i298
  %2046 = add i64 %2043, %2042
  store i64 %2046, i64* %RAX.i299, align 8
  %2047 = icmp ult i64 %2046, %2042
  %2048 = icmp ult i64 %2046, %2043
  %2049 = or i1 %2047, %2048
  %2050 = zext i1 %2049 to i8
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2050, i8* %2051, align 1
  %2052 = trunc i64 %2046 to i32
  %2053 = and i32 %2052, 255
  %2054 = call i32 @llvm.ctpop.i32(i32 %2053)
  %2055 = trunc i32 %2054 to i8
  %2056 = and i8 %2055, 1
  %2057 = xor i8 %2056, 1
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2057, i8* %2058, align 1
  %2059 = xor i64 %2043, %2042
  %2060 = xor i64 %2059, %2046
  %2061 = lshr i64 %2060, 4
  %2062 = trunc i64 %2061 to i8
  %2063 = and i8 %2062, 1
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2063, i8* %2064, align 1
  %2065 = icmp eq i64 %2046, 0
  %2066 = zext i1 %2065 to i8
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2066, i8* %2067, align 1
  %2068 = lshr i64 %2046, 63
  %2069 = trunc i64 %2068 to i8
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2069, i8* %2070, align 1
  %2071 = lshr i64 %2042, 63
  %2072 = lshr i64 %2043, 63
  %2073 = xor i64 %2068, %2071
  %2074 = xor i64 %2068, %2072
  %2075 = add i64 %2073, %2074
  %2076 = icmp eq i64 %2075, 2
  %2077 = zext i1 %2076 to i8
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2077, i8* %2078, align 1
  store %struct.Memory* %loadMem_448b14, %struct.Memory** %MEMORY
  %loadMem_448b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 33
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 1
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 17
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %R8.i = bitcast %union.anon* %2087 to i64*
  %2088 = load i64, i64* %RAX.i297
  %2089 = add i64 %2088, 24
  %2090 = load i64, i64* %PC.i296
  %2091 = add i64 %2090, 4
  store i64 %2091, i64* %PC.i296
  %2092 = inttoptr i64 %2089 to i64*
  %2093 = load i64, i64* %2092
  store i64 %2093, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_448b17, %struct.Memory** %MEMORY
  %loadMem_448b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 1
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 15
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %RBP.i295
  %2104 = sub i64 %2103, 16
  %2105 = load i64, i64* %PC.i293
  %2106 = add i64 %2105, 4
  store i64 %2106, i64* %PC.i293
  %2107 = inttoptr i64 %2104 to i64*
  %2108 = load i64, i64* %2107
  store i64 %2108, i64* %RAX.i294, align 8
  store %struct.Memory* %loadMem_448b1b, %struct.Memory** %MEMORY
  %loadMem_448b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 1
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %2114 to i64*
  %2115 = load i64, i64* %RAX.i292
  %2116 = add i64 %2115, 56
  %2117 = load i64, i64* %PC.i291
  %2118 = add i64 %2117, 4
  store i64 %2118, i64* %PC.i291
  %2119 = inttoptr i64 %2116 to i64*
  %2120 = load i64, i64* %2119
  store i64 %2120, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_448b1f, %struct.Memory** %MEMORY
  %loadMem_448b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 15
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 19
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %R9.i290 = bitcast %union.anon* %2129 to i64*
  %2130 = load i64, i64* %RBP.i289
  %2131 = sub i64 %2130, 20
  %2132 = load i64, i64* %PC.i288
  %2133 = add i64 %2132, 4
  store i64 %2133, i64* %PC.i288
  %2134 = inttoptr i64 %2131 to i32*
  %2135 = load i32, i32* %2134
  %2136 = sext i32 %2135 to i64
  store i64 %2136, i64* %R9.i290, align 8
  store %struct.Memory* %loadMem_448b23, %struct.Memory** %MEMORY
  %loadMem_448b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 33
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 19
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %R9.i287 = bitcast %union.anon* %2142 to i64*
  %2143 = load i64, i64* %R9.i287
  %2144 = load i64, i64* %PC.i286
  %2145 = add i64 %2144, 4
  store i64 %2145, i64* %PC.i286
  %2146 = sext i64 %2143 to i128
  %2147 = and i128 %2146, -18446744073709551616
  %2148 = zext i64 %2143 to i128
  %2149 = or i128 %2147, %2148
  %2150 = mul i128 56, %2149
  %2151 = trunc i128 %2150 to i64
  store i64 %2151, i64* %R9.i287, align 8
  %2152 = sext i64 %2151 to i128
  %2153 = icmp ne i128 %2152, %2150
  %2154 = zext i1 %2153 to i8
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2154, i8* %2155, align 1
  %2156 = trunc i128 %2150 to i32
  %2157 = and i32 %2156, 255
  %2158 = call i32 @llvm.ctpop.i32(i32 %2157)
  %2159 = trunc i32 %2158 to i8
  %2160 = and i8 %2159, 1
  %2161 = xor i8 %2160, 1
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2161, i8* %2162, align 1
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2163, align 1
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2164, align 1
  %2165 = lshr i64 %2151, 63
  %2166 = trunc i64 %2165 to i8
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2166, i8* %2167, align 1
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2154, i8* %2168, align 1
  store %struct.Memory* %loadMem_448b27, %struct.Memory** %MEMORY
  %loadMem_448b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 33
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2171 to i64*
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 1
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 19
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %R9.i285 = bitcast %union.anon* %2177 to i64*
  %2178 = load i64, i64* %RAX.i284
  %2179 = load i64, i64* %R9.i285
  %2180 = load i64, i64* %PC.i283
  %2181 = add i64 %2180, 3
  store i64 %2181, i64* %PC.i283
  %2182 = add i64 %2179, %2178
  store i64 %2182, i64* %RAX.i284, align 8
  %2183 = icmp ult i64 %2182, %2178
  %2184 = icmp ult i64 %2182, %2179
  %2185 = or i1 %2183, %2184
  %2186 = zext i1 %2185 to i8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2186, i8* %2187, align 1
  %2188 = trunc i64 %2182 to i32
  %2189 = and i32 %2188, 255
  %2190 = call i32 @llvm.ctpop.i32(i32 %2189)
  %2191 = trunc i32 %2190 to i8
  %2192 = and i8 %2191, 1
  %2193 = xor i8 %2192, 1
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2193, i8* %2194, align 1
  %2195 = xor i64 %2179, %2178
  %2196 = xor i64 %2195, %2182
  %2197 = lshr i64 %2196, 4
  %2198 = trunc i64 %2197 to i8
  %2199 = and i8 %2198, 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2199, i8* %2200, align 1
  %2201 = icmp eq i64 %2182, 0
  %2202 = zext i1 %2201 to i8
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2202, i8* %2203, align 1
  %2204 = lshr i64 %2182, 63
  %2205 = trunc i64 %2204 to i8
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2205, i8* %2206, align 1
  %2207 = lshr i64 %2178, 63
  %2208 = lshr i64 %2179, 63
  %2209 = xor i64 %2204, %2207
  %2210 = xor i64 %2204, %2208
  %2211 = add i64 %2209, %2210
  %2212 = icmp eq i64 %2211, 2
  %2213 = zext i1 %2212 to i8
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2213, i8* %2214, align 1
  store %struct.Memory* %loadMem_448b2b, %struct.Memory** %MEMORY
  %loadMem_448b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 33
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 1
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 19
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %R9.i = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %RAX.i282
  %2225 = add i64 %2224, 40
  %2226 = load i64, i64* %PC.i281
  %2227 = add i64 %2226, 4
  store i64 %2227, i64* %PC.i281
  %2228 = inttoptr i64 %2225 to i64*
  %2229 = load i64, i64* %2228
  store i64 %2229, i64* %R9.i, align 8
  store %struct.Memory* %loadMem_448b2e, %struct.Memory** %MEMORY
  %loadMem_448b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 33
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2232 to i64*
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 1
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 15
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %2238 to i64*
  %2239 = load i64, i64* %RBP.i280
  %2240 = sub i64 %2239, 16
  %2241 = load i64, i64* %PC.i278
  %2242 = add i64 %2241, 4
  store i64 %2242, i64* %PC.i278
  %2243 = inttoptr i64 %2240 to i64*
  %2244 = load i64, i64* %2243
  store i64 %2244, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_448b32, %struct.Memory** %MEMORY
  %loadMem_448b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 33
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2247 to i64*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 1
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %2250 to i64*
  %2251 = load i64, i64* %RAX.i277
  %2252 = add i64 %2251, 56
  %2253 = load i64, i64* %PC.i276
  %2254 = add i64 %2253, 4
  store i64 %2254, i64* %PC.i276
  %2255 = inttoptr i64 %2252 to i64*
  %2256 = load i64, i64* %2255
  store i64 %2256, i64* %RAX.i277, align 8
  store %struct.Memory* %loadMem_448b36, %struct.Memory** %MEMORY
  %loadMem_448b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 15
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 21
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %R10.i275 = bitcast %union.anon* %2265 to i64*
  %2266 = load i64, i64* %RBP.i274
  %2267 = sub i64 %2266, 20
  %2268 = load i64, i64* %PC.i273
  %2269 = add i64 %2268, 4
  store i64 %2269, i64* %PC.i273
  %2270 = inttoptr i64 %2267 to i32*
  %2271 = load i32, i32* %2270
  %2272 = sext i32 %2271 to i64
  store i64 %2272, i64* %R10.i275, align 8
  store %struct.Memory* %loadMem_448b3a, %struct.Memory** %MEMORY
  %loadMem_448b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 21
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %R10.i272 = bitcast %union.anon* %2278 to i64*
  %2279 = load i64, i64* %R10.i272
  %2280 = load i64, i64* %PC.i271
  %2281 = add i64 %2280, 4
  store i64 %2281, i64* %PC.i271
  %2282 = sext i64 %2279 to i128
  %2283 = and i128 %2282, -18446744073709551616
  %2284 = zext i64 %2279 to i128
  %2285 = or i128 %2283, %2284
  %2286 = mul i128 56, %2285
  %2287 = trunc i128 %2286 to i64
  store i64 %2287, i64* %R10.i272, align 8
  %2288 = sext i64 %2287 to i128
  %2289 = icmp ne i128 %2288, %2286
  %2290 = zext i1 %2289 to i8
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2290, i8* %2291, align 1
  %2292 = trunc i128 %2286 to i32
  %2293 = and i32 %2292, 255
  %2294 = call i32 @llvm.ctpop.i32(i32 %2293)
  %2295 = trunc i32 %2294 to i8
  %2296 = and i8 %2295, 1
  %2297 = xor i8 %2296, 1
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2297, i8* %2298, align 1
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2299, align 1
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2300, align 1
  %2301 = lshr i64 %2287, 63
  %2302 = trunc i64 %2301 to i8
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2302, i8* %2303, align 1
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2290, i8* %2304, align 1
  store %struct.Memory* %loadMem_448b3e, %struct.Memory** %MEMORY
  %loadMem_448b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 1
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 21
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %R10.i = bitcast %union.anon* %2313 to i64*
  %2314 = load i64, i64* %RAX.i270
  %2315 = load i64, i64* %R10.i
  %2316 = load i64, i64* %PC.i269
  %2317 = add i64 %2316, 3
  store i64 %2317, i64* %PC.i269
  %2318 = add i64 %2315, %2314
  store i64 %2318, i64* %RAX.i270, align 8
  %2319 = icmp ult i64 %2318, %2314
  %2320 = icmp ult i64 %2318, %2315
  %2321 = or i1 %2319, %2320
  %2322 = zext i1 %2321 to i8
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2322, i8* %2323, align 1
  %2324 = trunc i64 %2318 to i32
  %2325 = and i32 %2324, 255
  %2326 = call i32 @llvm.ctpop.i32(i32 %2325)
  %2327 = trunc i32 %2326 to i8
  %2328 = and i8 %2327, 1
  %2329 = xor i8 %2328, 1
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2329, i8* %2330, align 1
  %2331 = xor i64 %2315, %2314
  %2332 = xor i64 %2331, %2318
  %2333 = lshr i64 %2332, 4
  %2334 = trunc i64 %2333 to i8
  %2335 = and i8 %2334, 1
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2335, i8* %2336, align 1
  %2337 = icmp eq i64 %2318, 0
  %2338 = zext i1 %2337 to i8
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2338, i8* %2339, align 1
  %2340 = lshr i64 %2318, 63
  %2341 = trunc i64 %2340 to i8
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2341, i8* %2342, align 1
  %2343 = lshr i64 %2314, 63
  %2344 = lshr i64 %2315, 63
  %2345 = xor i64 %2340, %2343
  %2346 = xor i64 %2340, %2344
  %2347 = add i64 %2345, %2346
  %2348 = icmp eq i64 %2347, 2
  %2349 = zext i1 %2348 to i8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2349, i8* %2350, align 1
  store %struct.Memory* %loadMem_448b42, %struct.Memory** %MEMORY
  %loadMem_448b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 33
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 23
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %R11D.i267 = bitcast %union.anon* %2356 to i32*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 1
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %2359 to i64*
  %2360 = bitcast i32* %R11D.i267 to i64*
  %2361 = load i64, i64* %RAX.i268
  %2362 = add i64 %2361, 48
  %2363 = load i64, i64* %PC.i266
  %2364 = add i64 %2363, 4
  store i64 %2364, i64* %PC.i266
  %2365 = inttoptr i64 %2362 to i32*
  %2366 = load i32, i32* %2365
  %2367 = zext i32 %2366 to i64
  store i64 %2367, i64* %2360, align 8
  store %struct.Memory* %loadMem_448b45, %struct.Memory** %MEMORY
  %loadMem_448b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 33
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 23
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %2373 to i32*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 1
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %2376 to i64*
  %2377 = load i32, i32* %R11D.i
  %2378 = zext i32 %2377 to i64
  %2379 = load i64, i64* %PC.i264
  %2380 = add i64 %2379, 3
  store i64 %2380, i64* %PC.i264
  %2381 = and i64 %2378, 4294967295
  store i64 %2381, i64* %RAX.i265, align 8
  store %struct.Memory* %loadMem_448b49, %struct.Memory** %MEMORY
  %loadMem_448b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 33
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2384 to i64*
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 1
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %2387 to i64*
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 13
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %RSP.i263 = bitcast %union.anon* %2390 to i64*
  %2391 = load i64, i64* %RSP.i263
  %2392 = load i64, i64* %RAX.i262
  %2393 = load i64, i64* %PC.i261
  %2394 = add i64 %2393, 4
  store i64 %2394, i64* %PC.i261
  %2395 = inttoptr i64 %2391 to i64*
  store i64 %2392, i64* %2395
  store %struct.Memory* %loadMem_448b4c, %struct.Memory** %MEMORY
  %loadMem_448b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 33
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 1
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %2402 = bitcast %union.anon* %2401 to %struct.anon.2*
  %AL.i260 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2402, i32 0, i32 0
  %2403 = load i64, i64* %PC.i259
  %2404 = add i64 %2403, 2
  store i64 %2404, i64* %PC.i259
  store i8 0, i8* %AL.i260, align 1
  store %struct.Memory* %loadMem_448b50, %struct.Memory** %MEMORY
  %loadMem1_448b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 33
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2407 to i64*
  %2408 = load i64, i64* %PC.i258
  %2409 = add i64 %2408, -292322
  %2410 = load i64, i64* %PC.i258
  %2411 = add i64 %2410, 5
  %2412 = load i64, i64* %PC.i258
  %2413 = add i64 %2412, 5
  store i64 %2413, i64* %PC.i258
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2415 = load i64, i64* %2414, align 8
  %2416 = add i64 %2415, -8
  %2417 = inttoptr i64 %2416 to i64*
  store i64 %2411, i64* %2417
  store i64 %2416, i64* %2414, align 8
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2409, i64* %2418, align 8
  store %struct.Memory* %loadMem1_448b52, %struct.Memory** %MEMORY
  %loadMem2_448b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448b52 = load i64, i64* %3
  %2419 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_448b52)
  store %struct.Memory* %2419, %struct.Memory** %MEMORY
  %loadMem_448b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 1
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %EAX.i254 = bitcast %union.anon* %2425 to i32*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 15
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %2428 to i64*
  %2429 = load i64, i64* %RBP.i255
  %2430 = sub i64 %2429, 28
  %2431 = load i32, i32* %EAX.i254
  %2432 = zext i32 %2431 to i64
  %2433 = load i64, i64* %PC.i253
  %2434 = add i64 %2433, 3
  store i64 %2434, i64* %PC.i253
  %2435 = inttoptr i64 %2430 to i32*
  store i32 %2431, i32* %2435
  store %struct.Memory* %loadMem_448b57, %struct.Memory** %MEMORY
  br label %block_.L_448b5a

block_.L_448b5a:                                  ; preds = %block_.L_448ac5, %block_448a28
  %loadMem_448b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 33
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2438 to i64*
  %2439 = load i64, i64* %PC.i252
  %2440 = add i64 %2439, 5
  %2441 = load i64, i64* %PC.i252
  %2442 = add i64 %2441, 5
  store i64 %2442, i64* %PC.i252
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2440, i64* %2443, align 8
  store %struct.Memory* %loadMem_448b5a, %struct.Memory** %MEMORY
  br label %block_.L_448b5f

block_.L_448b5f:                                  ; preds = %block_.L_448b5a
  %loadMem_448b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 33
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2446 to i64*
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 1
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 15
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %2452 to i64*
  %2453 = load i64, i64* %RBP.i251
  %2454 = sub i64 %2453, 20
  %2455 = load i64, i64* %PC.i249
  %2456 = add i64 %2455, 3
  store i64 %2456, i64* %PC.i249
  %2457 = inttoptr i64 %2454 to i32*
  %2458 = load i32, i32* %2457
  %2459 = zext i32 %2458 to i64
  store i64 %2459, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_448b5f, %struct.Memory** %MEMORY
  %loadMem_448b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %2462 to i64*
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 1
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %2465 to i64*
  %2466 = load i64, i64* %RAX.i248
  %2467 = load i64, i64* %PC.i247
  %2468 = add i64 %2467, 3
  store i64 %2468, i64* %PC.i247
  %2469 = trunc i64 %2466 to i32
  %2470 = add i32 1, %2469
  %2471 = zext i32 %2470 to i64
  store i64 %2471, i64* %RAX.i248, align 8
  %2472 = icmp ult i32 %2470, %2469
  %2473 = icmp ult i32 %2470, 1
  %2474 = or i1 %2472, %2473
  %2475 = zext i1 %2474 to i8
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2475, i8* %2476, align 1
  %2477 = and i32 %2470, 255
  %2478 = call i32 @llvm.ctpop.i32(i32 %2477)
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  %2481 = xor i8 %2480, 1
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2481, i8* %2482, align 1
  %2483 = xor i64 1, %2466
  %2484 = trunc i64 %2483 to i32
  %2485 = xor i32 %2484, %2470
  %2486 = lshr i32 %2485, 4
  %2487 = trunc i32 %2486 to i8
  %2488 = and i8 %2487, 1
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2488, i8* %2489, align 1
  %2490 = icmp eq i32 %2470, 0
  %2491 = zext i1 %2490 to i8
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2491, i8* %2492, align 1
  %2493 = lshr i32 %2470, 31
  %2494 = trunc i32 %2493 to i8
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2494, i8* %2495, align 1
  %2496 = lshr i32 %2469, 31
  %2497 = xor i32 %2493, %2496
  %2498 = add i32 %2497, %2493
  %2499 = icmp eq i32 %2498, 2
  %2500 = zext i1 %2499 to i8
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2500, i8* %2501, align 1
  store %struct.Memory* %loadMem_448b62, %struct.Memory** %MEMORY
  %loadMem_448b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 33
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 1
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %EAX.i245 = bitcast %union.anon* %2507 to i32*
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 15
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %2510 to i64*
  %2511 = load i64, i64* %RBP.i246
  %2512 = sub i64 %2511, 20
  %2513 = load i32, i32* %EAX.i245
  %2514 = zext i32 %2513 to i64
  %2515 = load i64, i64* %PC.i244
  %2516 = add i64 %2515, 3
  store i64 %2516, i64* %PC.i244
  %2517 = inttoptr i64 %2512 to i32*
  store i32 %2513, i32* %2517
  store %struct.Memory* %loadMem_448b65, %struct.Memory** %MEMORY
  %loadMem_448b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 33
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2520 to i64*
  %2521 = load i64, i64* %PC.i243
  %2522 = add i64 %2521, -349
  %2523 = load i64, i64* %PC.i243
  %2524 = add i64 %2523, 5
  store i64 %2524, i64* %PC.i243
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2522, i64* %2525, align 8
  store %struct.Memory* %loadMem_448b68, %struct.Memory** %MEMORY
  br label %block_.L_448a0b

block_.L_448b6d:                                  ; preds = %block_.L_448a0b
  %loadMem_448b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 15
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %2531 to i64*
  %2532 = load i64, i64* %RBP.i242
  %2533 = sub i64 %2532, 20
  %2534 = load i64, i64* %PC.i241
  %2535 = add i64 %2534, 7
  store i64 %2535, i64* %PC.i241
  %2536 = inttoptr i64 %2533 to i32*
  store i32 0, i32* %2536
  store %struct.Memory* %loadMem_448b6d, %struct.Memory** %MEMORY
  br label %block_.L_448b74

block_.L_448b74:                                  ; preds = %block_448b84, %block_.L_448b6d
  %loadMem_448b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 33
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 1
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 15
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %RBP.i240
  %2547 = sub i64 %2546, 20
  %2548 = load i64, i64* %PC.i238
  %2549 = add i64 %2548, 3
  store i64 %2549, i64* %PC.i238
  %2550 = inttoptr i64 %2547 to i32*
  %2551 = load i32, i32* %2550
  %2552 = zext i32 %2551 to i64
  store i64 %2552, i64* %RAX.i239, align 8
  store %struct.Memory* %loadMem_448b74, %struct.Memory** %MEMORY
  %loadMem_448b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 33
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 5
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 15
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %RBP.i237
  %2563 = sub i64 %2562, 16
  %2564 = load i64, i64* %PC.i235
  %2565 = add i64 %2564, 4
  store i64 %2565, i64* %PC.i235
  %2566 = inttoptr i64 %2563 to i64*
  %2567 = load i64, i64* %2566
  store i64 %2567, i64* %RCX.i236, align 8
  store %struct.Memory* %loadMem_448b77, %struct.Memory** %MEMORY
  %loadMem_448b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 33
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 1
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %EAX.i233 = bitcast %union.anon* %2573 to i32*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 5
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %RCX.i234 = bitcast %union.anon* %2576 to i64*
  %2577 = load i32, i32* %EAX.i233
  %2578 = zext i32 %2577 to i64
  %2579 = load i64, i64* %RCX.i234
  %2580 = add i64 %2579, 100
  %2581 = load i64, i64* %PC.i232
  %2582 = add i64 %2581, 3
  store i64 %2582, i64* %PC.i232
  %2583 = inttoptr i64 %2580 to i32*
  %2584 = load i32, i32* %2583
  %2585 = sub i32 %2577, %2584
  %2586 = icmp ult i32 %2577, %2584
  %2587 = zext i1 %2586 to i8
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2587, i8* %2588, align 1
  %2589 = and i32 %2585, 255
  %2590 = call i32 @llvm.ctpop.i32(i32 %2589)
  %2591 = trunc i32 %2590 to i8
  %2592 = and i8 %2591, 1
  %2593 = xor i8 %2592, 1
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2593, i8* %2594, align 1
  %2595 = xor i32 %2584, %2577
  %2596 = xor i32 %2595, %2585
  %2597 = lshr i32 %2596, 4
  %2598 = trunc i32 %2597 to i8
  %2599 = and i8 %2598, 1
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2599, i8* %2600, align 1
  %2601 = icmp eq i32 %2585, 0
  %2602 = zext i1 %2601 to i8
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2602, i8* %2603, align 1
  %2604 = lshr i32 %2585, 31
  %2605 = trunc i32 %2604 to i8
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2605, i8* %2606, align 1
  %2607 = lshr i32 %2577, 31
  %2608 = lshr i32 %2584, 31
  %2609 = xor i32 %2608, %2607
  %2610 = xor i32 %2604, %2607
  %2611 = add i32 %2610, %2609
  %2612 = icmp eq i32 %2611, 2
  %2613 = zext i1 %2612 to i8
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2613, i8* %2614, align 1
  store %struct.Memory* %loadMem_448b7b, %struct.Memory** %MEMORY
  %loadMem_448b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 33
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2617 to i64*
  %2618 = load i64, i64* %PC.i231
  %2619 = add i64 %2618, 93
  %2620 = load i64, i64* %PC.i231
  %2621 = add i64 %2620, 6
  %2622 = load i64, i64* %PC.i231
  %2623 = add i64 %2622, 6
  store i64 %2623, i64* %PC.i231
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2625 = load i8, i8* %2624, align 1
  %2626 = icmp eq i8 %2625, 0
  %2627 = zext i1 %2626 to i8
  store i8 %2627, i8* %BRANCH_TAKEN, align 1
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2629 = select i1 %2626, i64 %2619, i64 %2621
  store i64 %2629, i64* %2628, align 8
  store %struct.Memory* %loadMem_448b7e, %struct.Memory** %MEMORY
  %loadBr_448b7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448b7e = icmp eq i8 %loadBr_448b7e, 1
  br i1 %cmpBr_448b7e, label %block_.L_448bdb, label %block_448b84

block_448b84:                                     ; preds = %block_.L_448b74
  %loadMem_448b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 33
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2632 to i64*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 9
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2635 to i64*
  %2636 = load i64, i64* %PC.i230
  %2637 = add i64 %2636, 10
  store i64 %2637, i64* %PC.i230
  store i64 ptrtoint (%G__0x45a9d1_type* @G__0x45a9d1 to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_448b84, %struct.Memory** %MEMORY
  %loadMem_448b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 33
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 1
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %2643 to i64*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 15
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2646 to i64*
  %2647 = load i64, i64* %RBP.i229
  %2648 = sub i64 %2647, 16
  %2649 = load i64, i64* %PC.i227
  %2650 = add i64 %2649, 4
  store i64 %2650, i64* %PC.i227
  %2651 = inttoptr i64 %2648 to i64*
  %2652 = load i64, i64* %2651
  store i64 %2652, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_448b8e, %struct.Memory** %MEMORY
  %loadMem_448b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2655 to i64*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 1
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 11
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RDI.i226 = bitcast %union.anon* %2661 to i64*
  %2662 = load i64, i64* %RAX.i225
  %2663 = add i64 %2662, 112
  %2664 = load i64, i64* %PC.i224
  %2665 = add i64 %2664, 4
  store i64 %2665, i64* %PC.i224
  %2666 = inttoptr i64 %2663 to i64*
  %2667 = load i64, i64* %2666
  store i64 %2667, i64* %RDI.i226, align 8
  store %struct.Memory* %loadMem_448b92, %struct.Memory** %MEMORY
  %loadMem_448b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 33
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2670 to i64*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 1
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 15
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %2676 to i64*
  %2677 = load i64, i64* %RBP.i223
  %2678 = sub i64 %2677, 16
  %2679 = load i64, i64* %PC.i221
  %2680 = add i64 %2679, 4
  store i64 %2680, i64* %PC.i221
  %2681 = inttoptr i64 %2678 to i64*
  %2682 = load i64, i64* %2681
  store i64 %2682, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_448b96, %struct.Memory** %MEMORY
  %loadMem_448b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 33
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2685 to i64*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 1
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %2688 to i64*
  %2689 = load i64, i64* %RAX.i220
  %2690 = add i64 %2689, 88
  %2691 = load i64, i64* %PC.i219
  %2692 = add i64 %2691, 4
  store i64 %2692, i64* %PC.i219
  %2693 = inttoptr i64 %2690 to i64*
  %2694 = load i64, i64* %2693
  store i64 %2694, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_448b9a, %struct.Memory** %MEMORY
  %loadMem_448b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 33
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 5
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 15
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %2703 to i64*
  %2704 = load i64, i64* %RBP.i218
  %2705 = sub i64 %2704, 20
  %2706 = load i64, i64* %PC.i216
  %2707 = add i64 %2706, 4
  store i64 %2707, i64* %PC.i216
  %2708 = inttoptr i64 %2705 to i32*
  %2709 = load i32, i32* %2708
  %2710 = sext i32 %2709 to i64
  store i64 %2710, i64* %RCX.i217, align 8
  store %struct.Memory* %loadMem_448b9e, %struct.Memory** %MEMORY
  %loadMem_448ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 5
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %2716 to i64*
  %2717 = load i64, i64* %RCX.i215
  %2718 = load i64, i64* %PC.i214
  %2719 = add i64 %2718, 4
  store i64 %2719, i64* %PC.i214
  %2720 = shl i64 %2717, 3
  %2721 = icmp slt i64 %2720, 0
  %2722 = shl i64 %2720, 1
  store i64 %2722, i64* %RCX.i215, align 8
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2724 = zext i1 %2721 to i8
  store i8 %2724, i8* %2723, align 1
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2726 = trunc i64 %2722 to i32
  %2727 = and i32 %2726, 254
  %2728 = call i32 @llvm.ctpop.i32(i32 %2727)
  %2729 = trunc i32 %2728 to i8
  %2730 = and i8 %2729, 1
  %2731 = xor i8 %2730, 1
  store i8 %2731, i8* %2725, align 1
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2732, align 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2734 = icmp eq i64 %2722, 0
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %2733, align 1
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2737 = lshr i64 %2722, 63
  %2738 = trunc i64 %2737 to i8
  store i8 %2738, i8* %2736, align 1
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2739, align 1
  store %struct.Memory* %loadMem_448ba2, %struct.Memory** %MEMORY
  %loadMem_448ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 33
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 1
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %2745 to i64*
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 5
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %2748 to i64*
  %2749 = load i64, i64* %RAX.i212
  %2750 = load i64, i64* %RCX.i213
  %2751 = load i64, i64* %PC.i211
  %2752 = add i64 %2751, 3
  store i64 %2752, i64* %PC.i211
  %2753 = add i64 %2750, %2749
  store i64 %2753, i64* %RAX.i212, align 8
  %2754 = icmp ult i64 %2753, %2749
  %2755 = icmp ult i64 %2753, %2750
  %2756 = or i1 %2754, %2755
  %2757 = zext i1 %2756 to i8
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2757, i8* %2758, align 1
  %2759 = trunc i64 %2753 to i32
  %2760 = and i32 %2759, 255
  %2761 = call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2764, i8* %2765, align 1
  %2766 = xor i64 %2750, %2749
  %2767 = xor i64 %2766, %2753
  %2768 = lshr i64 %2767, 4
  %2769 = trunc i64 %2768 to i8
  %2770 = and i8 %2769, 1
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2770, i8* %2771, align 1
  %2772 = icmp eq i64 %2753, 0
  %2773 = zext i1 %2772 to i8
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2773, i8* %2774, align 1
  %2775 = lshr i64 %2753, 63
  %2776 = trunc i64 %2775 to i8
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2776, i8* %2777, align 1
  %2778 = lshr i64 %2749, 63
  %2779 = lshr i64 %2750, 63
  %2780 = xor i64 %2775, %2778
  %2781 = xor i64 %2775, %2779
  %2782 = add i64 %2780, %2781
  %2783 = icmp eq i64 %2782, 2
  %2784 = zext i1 %2783 to i8
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2784, i8* %2785, align 1
  store %struct.Memory* %loadMem_448ba6, %struct.Memory** %MEMORY
  %loadMem_448ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 1
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 7
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2794 to i64*
  %2795 = load i64, i64* %RAX.i210
  %2796 = load i64, i64* %PC.i209
  %2797 = add i64 %2796, 3
  store i64 %2797, i64* %PC.i209
  %2798 = inttoptr i64 %2795 to i64*
  %2799 = load i64, i64* %2798
  store i64 %2799, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_448ba9, %struct.Memory** %MEMORY
  %loadMem_448bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 33
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2802 to i64*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 1
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %2805 to i64*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 15
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %2808 to i64*
  %2809 = load i64, i64* %RBP.i208
  %2810 = sub i64 %2809, 16
  %2811 = load i64, i64* %PC.i206
  %2812 = add i64 %2811, 4
  store i64 %2812, i64* %PC.i206
  %2813 = inttoptr i64 %2810 to i64*
  %2814 = load i64, i64* %2813
  store i64 %2814, i64* %RAX.i207, align 8
  store %struct.Memory* %loadMem_448bac, %struct.Memory** %MEMORY
  %loadMem_448bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 33
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 1
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %2820 to i64*
  %2821 = load i64, i64* %RAX.i205
  %2822 = add i64 %2821, 88
  %2823 = load i64, i64* %PC.i204
  %2824 = add i64 %2823, 4
  store i64 %2824, i64* %PC.i204
  %2825 = inttoptr i64 %2822 to i64*
  %2826 = load i64, i64* %2825
  store i64 %2826, i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_448bb0, %struct.Memory** %MEMORY
  %loadMem_448bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 33
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2829 to i64*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 5
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %2832 to i64*
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 15
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %2835 to i64*
  %2836 = load i64, i64* %RBP.i203
  %2837 = sub i64 %2836, 20
  %2838 = load i64, i64* %PC.i201
  %2839 = add i64 %2838, 4
  store i64 %2839, i64* %PC.i201
  %2840 = inttoptr i64 %2837 to i32*
  %2841 = load i32, i32* %2840
  %2842 = sext i32 %2841 to i64
  store i64 %2842, i64* %RCX.i202, align 8
  store %struct.Memory* %loadMem_448bb4, %struct.Memory** %MEMORY
  %loadMem_448bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 33
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 5
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %2848 to i64*
  %2849 = load i64, i64* %RCX.i200
  %2850 = load i64, i64* %PC.i199
  %2851 = add i64 %2850, 4
  store i64 %2851, i64* %PC.i199
  %2852 = shl i64 %2849, 3
  %2853 = icmp slt i64 %2852, 0
  %2854 = shl i64 %2852, 1
  store i64 %2854, i64* %RCX.i200, align 8
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2856 = zext i1 %2853 to i8
  store i8 %2856, i8* %2855, align 1
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2858 = trunc i64 %2854 to i32
  %2859 = and i32 %2858, 254
  %2860 = call i32 @llvm.ctpop.i32(i32 %2859)
  %2861 = trunc i32 %2860 to i8
  %2862 = and i8 %2861, 1
  %2863 = xor i8 %2862, 1
  store i8 %2863, i8* %2857, align 1
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2864, align 1
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2866 = icmp eq i64 %2854, 0
  %2867 = zext i1 %2866 to i8
  store i8 %2867, i8* %2865, align 1
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2869 = lshr i64 %2854, 63
  %2870 = trunc i64 %2869 to i8
  store i8 %2870, i8* %2868, align 1
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2871, align 1
  store %struct.Memory* %loadMem_448bb8, %struct.Memory** %MEMORY
  %loadMem_448bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 33
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2874 to i64*
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 1
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 5
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %2880 to i64*
  %2881 = load i64, i64* %RAX.i197
  %2882 = load i64, i64* %RCX.i198
  %2883 = load i64, i64* %PC.i196
  %2884 = add i64 %2883, 3
  store i64 %2884, i64* %PC.i196
  %2885 = add i64 %2882, %2881
  store i64 %2885, i64* %RAX.i197, align 8
  %2886 = icmp ult i64 %2885, %2881
  %2887 = icmp ult i64 %2885, %2882
  %2888 = or i1 %2886, %2887
  %2889 = zext i1 %2888 to i8
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2889, i8* %2890, align 1
  %2891 = trunc i64 %2885 to i32
  %2892 = and i32 %2891, 255
  %2893 = call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2896, i8* %2897, align 1
  %2898 = xor i64 %2882, %2881
  %2899 = xor i64 %2898, %2885
  %2900 = lshr i64 %2899, 4
  %2901 = trunc i64 %2900 to i8
  %2902 = and i8 %2901, 1
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2902, i8* %2903, align 1
  %2904 = icmp eq i64 %2885, 0
  %2905 = zext i1 %2904 to i8
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2905, i8* %2906, align 1
  %2907 = lshr i64 %2885, 63
  %2908 = trunc i64 %2907 to i8
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2908, i8* %2909, align 1
  %2910 = lshr i64 %2881, 63
  %2911 = lshr i64 %2882, 63
  %2912 = xor i64 %2907, %2910
  %2913 = xor i64 %2907, %2911
  %2914 = add i64 %2912, %2913
  %2915 = icmp eq i64 %2914, 2
  %2916 = zext i1 %2915 to i8
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2916, i8* %2917, align 1
  store %struct.Memory* %loadMem_448bbc, %struct.Memory** %MEMORY
  %loadMem_448bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 1
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %2923 to i64*
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 5
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %2926 to i64*
  %2927 = load i64, i64* %RAX.i194
  %2928 = add i64 %2927, 8
  %2929 = load i64, i64* %PC.i193
  %2930 = add i64 %2929, 4
  store i64 %2930, i64* %PC.i193
  %2931 = inttoptr i64 %2928 to i64*
  %2932 = load i64, i64* %2931
  store i64 %2932, i64* %RCX.i195, align 8
  store %struct.Memory* %loadMem_448bbf, %struct.Memory** %MEMORY
  %loadMem_448bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 33
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2935 to i64*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 1
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %2939 = bitcast %union.anon* %2938 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2939, i32 0, i32 0
  %2940 = load i64, i64* %PC.i192
  %2941 = add i64 %2940, 2
  store i64 %2941, i64* %PC.i192
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_448bc3, %struct.Memory** %MEMORY
  %loadMem1_448bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 33
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2944 to i64*
  %2945 = load i64, i64* %PC.i191
  %2946 = add i64 %2945, -292437
  %2947 = load i64, i64* %PC.i191
  %2948 = add i64 %2947, 5
  %2949 = load i64, i64* %PC.i191
  %2950 = add i64 %2949, 5
  store i64 %2950, i64* %PC.i191
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2952 = load i64, i64* %2951, align 8
  %2953 = add i64 %2952, -8
  %2954 = inttoptr i64 %2953 to i64*
  store i64 %2948, i64* %2954
  store i64 %2953, i64* %2951, align 8
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2946, i64* %2955, align 8
  store %struct.Memory* %loadMem1_448bc5, %struct.Memory** %MEMORY
  %loadMem2_448bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448bc5 = load i64, i64* %3
  %2956 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_448bc5)
  store %struct.Memory* %2956, %struct.Memory** %MEMORY
  %loadMem_448bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 33
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 1
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %EAX.i188 = bitcast %union.anon* %2962 to i32*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 15
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %2965 to i64*
  %2966 = load i64, i64* %RBP.i189
  %2967 = sub i64 %2966, 32
  %2968 = load i32, i32* %EAX.i188
  %2969 = zext i32 %2968 to i64
  %2970 = load i64, i64* %PC.i187
  %2971 = add i64 %2970, 3
  store i64 %2971, i64* %PC.i187
  %2972 = inttoptr i64 %2967 to i32*
  store i32 %2968, i32* %2972
  store %struct.Memory* %loadMem_448bca, %struct.Memory** %MEMORY
  %loadMem_448bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 33
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 1
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 15
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %2981 to i64*
  %2982 = load i64, i64* %RBP.i186
  %2983 = sub i64 %2982, 20
  %2984 = load i64, i64* %PC.i184
  %2985 = add i64 %2984, 3
  store i64 %2985, i64* %PC.i184
  %2986 = inttoptr i64 %2983 to i32*
  %2987 = load i32, i32* %2986
  %2988 = zext i32 %2987 to i64
  store i64 %2988, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_448bcd, %struct.Memory** %MEMORY
  %loadMem_448bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 1
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %2994 to i64*
  %2995 = load i64, i64* %RAX.i183
  %2996 = load i64, i64* %PC.i182
  %2997 = add i64 %2996, 3
  store i64 %2997, i64* %PC.i182
  %2998 = trunc i64 %2995 to i32
  %2999 = add i32 1, %2998
  %3000 = zext i32 %2999 to i64
  store i64 %3000, i64* %RAX.i183, align 8
  %3001 = icmp ult i32 %2999, %2998
  %3002 = icmp ult i32 %2999, 1
  %3003 = or i1 %3001, %3002
  %3004 = zext i1 %3003 to i8
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3004, i8* %3005, align 1
  %3006 = and i32 %2999, 255
  %3007 = call i32 @llvm.ctpop.i32(i32 %3006)
  %3008 = trunc i32 %3007 to i8
  %3009 = and i8 %3008, 1
  %3010 = xor i8 %3009, 1
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3010, i8* %3011, align 1
  %3012 = xor i64 1, %2995
  %3013 = trunc i64 %3012 to i32
  %3014 = xor i32 %3013, %2999
  %3015 = lshr i32 %3014, 4
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3017, i8* %3018, align 1
  %3019 = icmp eq i32 %2999, 0
  %3020 = zext i1 %3019 to i8
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3020, i8* %3021, align 1
  %3022 = lshr i32 %2999, 31
  %3023 = trunc i32 %3022 to i8
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3023, i8* %3024, align 1
  %3025 = lshr i32 %2998, 31
  %3026 = xor i32 %3022, %3025
  %3027 = add i32 %3026, %3022
  %3028 = icmp eq i32 %3027, 2
  %3029 = zext i1 %3028 to i8
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3029, i8* %3030, align 1
  store %struct.Memory* %loadMem_448bd0, %struct.Memory** %MEMORY
  %loadMem_448bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 1
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %3036 to i32*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 15
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %3039 to i64*
  %3040 = load i64, i64* %RBP.i181
  %3041 = sub i64 %3040, 20
  %3042 = load i32, i32* %EAX.i180
  %3043 = zext i32 %3042 to i64
  %3044 = load i64, i64* %PC.i179
  %3045 = add i64 %3044, 3
  store i64 %3045, i64* %PC.i179
  %3046 = inttoptr i64 %3041 to i32*
  store i32 %3042, i32* %3046
  store %struct.Memory* %loadMem_448bd3, %struct.Memory** %MEMORY
  %loadMem_448bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 33
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3049 to i64*
  %3050 = load i64, i64* %PC.i178
  %3051 = add i64 %3050, -98
  %3052 = load i64, i64* %PC.i178
  %3053 = add i64 %3052, 5
  store i64 %3053, i64* %PC.i178
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3051, i64* %3054, align 8
  store %struct.Memory* %loadMem_448bd6, %struct.Memory** %MEMORY
  br label %block_.L_448b74

block_.L_448bdb:                                  ; preds = %block_.L_448b74
  %loadMem_448bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 33
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3057 to i64*
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 15
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %3060 to i64*
  %3061 = load i64, i64* %RBP.i177
  %3062 = sub i64 %3061, 20
  %3063 = load i64, i64* %PC.i176
  %3064 = add i64 %3063, 7
  store i64 %3064, i64* %PC.i176
  %3065 = inttoptr i64 %3062 to i32*
  store i32 0, i32* %3065
  store %struct.Memory* %loadMem_448bdb, %struct.Memory** %MEMORY
  br label %block_.L_448be2

block_.L_448be2:                                  ; preds = %block_448bf2, %block_.L_448bdb
  %loadMem_448be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 33
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %3068 to i64*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 1
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %3071 to i64*
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 15
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %3074 to i64*
  %3075 = load i64, i64* %RBP.i175
  %3076 = sub i64 %3075, 20
  %3077 = load i64, i64* %PC.i173
  %3078 = add i64 %3077, 3
  store i64 %3078, i64* %PC.i173
  %3079 = inttoptr i64 %3076 to i32*
  %3080 = load i32, i32* %3079
  %3081 = zext i32 %3080 to i64
  store i64 %3081, i64* %RAX.i174, align 8
  store %struct.Memory* %loadMem_448be2, %struct.Memory** %MEMORY
  %loadMem_448be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 5
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %3087 to i64*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 15
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %3090 to i64*
  %3091 = load i64, i64* %RBP.i172
  %3092 = sub i64 %3091, 16
  %3093 = load i64, i64* %PC.i170
  %3094 = add i64 %3093, 4
  store i64 %3094, i64* %PC.i170
  %3095 = inttoptr i64 %3092 to i64*
  %3096 = load i64, i64* %3095
  store i64 %3096, i64* %RCX.i171, align 8
  store %struct.Memory* %loadMem_448be5, %struct.Memory** %MEMORY
  %loadMem_448be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 33
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 1
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %EAX.i168 = bitcast %union.anon* %3102 to i32*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 5
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %3105 to i64*
  %3106 = load i32, i32* %EAX.i168
  %3107 = zext i32 %3106 to i64
  %3108 = load i64, i64* %RCX.i169
  %3109 = add i64 %3108, 68
  %3110 = load i64, i64* %PC.i167
  %3111 = add i64 %3110, 3
  store i64 %3111, i64* %PC.i167
  %3112 = inttoptr i64 %3109 to i32*
  %3113 = load i32, i32* %3112
  %3114 = sub i32 %3106, %3113
  %3115 = icmp ult i32 %3106, %3113
  %3116 = zext i1 %3115 to i8
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3116, i8* %3117, align 1
  %3118 = and i32 %3114, 255
  %3119 = call i32 @llvm.ctpop.i32(i32 %3118)
  %3120 = trunc i32 %3119 to i8
  %3121 = and i8 %3120, 1
  %3122 = xor i8 %3121, 1
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3122, i8* %3123, align 1
  %3124 = xor i32 %3113, %3106
  %3125 = xor i32 %3124, %3114
  %3126 = lshr i32 %3125, 4
  %3127 = trunc i32 %3126 to i8
  %3128 = and i8 %3127, 1
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3128, i8* %3129, align 1
  %3130 = icmp eq i32 %3114, 0
  %3131 = zext i1 %3130 to i8
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3131, i8* %3132, align 1
  %3133 = lshr i32 %3114, 31
  %3134 = trunc i32 %3133 to i8
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3134, i8* %3135, align 1
  %3136 = lshr i32 %3106, 31
  %3137 = lshr i32 %3113, 31
  %3138 = xor i32 %3137, %3136
  %3139 = xor i32 %3133, %3136
  %3140 = add i32 %3139, %3138
  %3141 = icmp eq i32 %3140, 2
  %3142 = zext i1 %3141 to i8
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3142, i8* %3143, align 1
  store %struct.Memory* %loadMem_448be9, %struct.Memory** %MEMORY
  %loadMem_448bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 33
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3146 to i64*
  %3147 = load i64, i64* %PC.i166
  %3148 = add i64 %3147, 47
  %3149 = load i64, i64* %PC.i166
  %3150 = add i64 %3149, 6
  %3151 = load i64, i64* %PC.i166
  %3152 = add i64 %3151, 6
  store i64 %3152, i64* %PC.i166
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3154 = load i8, i8* %3153, align 1
  %3155 = icmp eq i8 %3154, 0
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %BRANCH_TAKEN, align 1
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3158 = select i1 %3155, i64 %3148, i64 %3150
  store i64 %3158, i64* %3157, align 8
  store %struct.Memory* %loadMem_448bec, %struct.Memory** %MEMORY
  %loadBr_448bec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448bec = icmp eq i8 %loadBr_448bec, 1
  br i1 %cmpBr_448bec, label %block_.L_448c1b, label %block_448bf2

block_448bf2:                                     ; preds = %block_.L_448be2
  %loadMem_448bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 33
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3161 to i64*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 1
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %3164 to i64*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 15
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %3167 to i64*
  %3168 = load i64, i64* %RBP.i165
  %3169 = sub i64 %3168, 16
  %3170 = load i64, i64* %PC.i163
  %3171 = add i64 %3170, 4
  store i64 %3171, i64* %PC.i163
  %3172 = inttoptr i64 %3169 to i64*
  %3173 = load i64, i64* %3172
  store i64 %3173, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_448bf2, %struct.Memory** %MEMORY
  %loadMem_448bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 1
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %RAX.i162
  %3181 = add i64 %3180, 56
  %3182 = load i64, i64* %PC.i161
  %3183 = add i64 %3182, 4
  store i64 %3183, i64* %PC.i161
  %3184 = inttoptr i64 %3181 to i64*
  %3185 = load i64, i64* %3184
  store i64 %3185, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_448bf6, %struct.Memory** %MEMORY
  %loadMem_448bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 33
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 5
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %3191 to i64*
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 15
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %3194 to i64*
  %3195 = load i64, i64* %RBP.i160
  %3196 = sub i64 %3195, 20
  %3197 = load i64, i64* %PC.i158
  %3198 = add i64 %3197, 4
  store i64 %3198, i64* %PC.i158
  %3199 = inttoptr i64 %3196 to i32*
  %3200 = load i32, i32* %3199
  %3201 = sext i32 %3200 to i64
  store i64 %3201, i64* %RCX.i159, align 8
  store %struct.Memory* %loadMem_448bfa, %struct.Memory** %MEMORY
  %loadMem_448bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 33
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %3204 to i64*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 5
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %3207 to i64*
  %3208 = load i64, i64* %RCX.i157
  %3209 = load i64, i64* %PC.i156
  %3210 = add i64 %3209, 4
  store i64 %3210, i64* %PC.i156
  %3211 = sext i64 %3208 to i128
  %3212 = and i128 %3211, -18446744073709551616
  %3213 = zext i64 %3208 to i128
  %3214 = or i128 %3212, %3213
  %3215 = mul i128 56, %3214
  %3216 = trunc i128 %3215 to i64
  store i64 %3216, i64* %RCX.i157, align 8
  %3217 = sext i64 %3216 to i128
  %3218 = icmp ne i128 %3217, %3215
  %3219 = zext i1 %3218 to i8
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3219, i8* %3220, align 1
  %3221 = trunc i128 %3215 to i32
  %3222 = and i32 %3221, 255
  %3223 = call i32 @llvm.ctpop.i32(i32 %3222)
  %3224 = trunc i32 %3223 to i8
  %3225 = and i8 %3224, 1
  %3226 = xor i8 %3225, 1
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3226, i8* %3227, align 1
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3228, align 1
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3229, align 1
  %3230 = lshr i64 %3216, 63
  %3231 = trunc i64 %3230 to i8
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3231, i8* %3232, align 1
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3219, i8* %3233, align 1
  store %struct.Memory* %loadMem_448bfe, %struct.Memory** %MEMORY
  %loadMem_448c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 33
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 1
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 5
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %3242 to i64*
  %3243 = load i64, i64* %RAX.i154
  %3244 = load i64, i64* %RCX.i155
  %3245 = load i64, i64* %PC.i153
  %3246 = add i64 %3245, 3
  store i64 %3246, i64* %PC.i153
  %3247 = add i64 %3244, %3243
  store i64 %3247, i64* %RAX.i154, align 8
  %3248 = icmp ult i64 %3247, %3243
  %3249 = icmp ult i64 %3247, %3244
  %3250 = or i1 %3248, %3249
  %3251 = zext i1 %3250 to i8
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3251, i8* %3252, align 1
  %3253 = trunc i64 %3247 to i32
  %3254 = and i32 %3253, 255
  %3255 = call i32 @llvm.ctpop.i32(i32 %3254)
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  %3258 = xor i8 %3257, 1
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3258, i8* %3259, align 1
  %3260 = xor i64 %3244, %3243
  %3261 = xor i64 %3260, %3247
  %3262 = lshr i64 %3261, 4
  %3263 = trunc i64 %3262 to i8
  %3264 = and i8 %3263, 1
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3264, i8* %3265, align 1
  %3266 = icmp eq i64 %3247, 0
  %3267 = zext i1 %3266 to i8
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3267, i8* %3268, align 1
  %3269 = lshr i64 %3247, 63
  %3270 = trunc i64 %3269 to i8
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3270, i8* %3271, align 1
  %3272 = lshr i64 %3243, 63
  %3273 = lshr i64 %3244, 63
  %3274 = xor i64 %3269, %3272
  %3275 = xor i64 %3269, %3273
  %3276 = add i64 %3274, %3275
  %3277 = icmp eq i64 %3276, 2
  %3278 = zext i1 %3277 to i8
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3278, i8* %3279, align 1
  store %struct.Memory* %loadMem_448c02, %struct.Memory** %MEMORY
  %loadMem_448c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 33
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3282 to i64*
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 1
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %3285 to i64*
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 11
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %RDI.i152 = bitcast %union.anon* %3288 to i64*
  %3289 = load i64, i64* %RAX.i151
  %3290 = load i64, i64* %PC.i150
  %3291 = add i64 %3290, 3
  store i64 %3291, i64* %PC.i150
  %3292 = inttoptr i64 %3289 to i64*
  %3293 = load i64, i64* %3292
  store i64 %3293, i64* %RDI.i152, align 8
  store %struct.Memory* %loadMem_448c05, %struct.Memory** %MEMORY
  %loadMem1_448c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 33
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3296 to i64*
  %3297 = load i64, i64* %PC.i149
  %3298 = add i64 %3297, -293000
  %3299 = load i64, i64* %PC.i149
  %3300 = add i64 %3299, 5
  %3301 = load i64, i64* %PC.i149
  %3302 = add i64 %3301, 5
  store i64 %3302, i64* %PC.i149
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3304 = load i64, i64* %3303, align 8
  %3305 = add i64 %3304, -8
  %3306 = inttoptr i64 %3305 to i64*
  store i64 %3300, i64* %3306
  store i64 %3305, i64* %3303, align 8
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3298, i64* %3307, align 8
  store %struct.Memory* %loadMem1_448c08, %struct.Memory** %MEMORY
  %loadMem2_448c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448c08 = load i64, i64* %3
  %3308 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_448c08)
  store %struct.Memory* %3308, %struct.Memory** %MEMORY
  %loadMem_448c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 33
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 1
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 15
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %3317 to i64*
  %3318 = load i64, i64* %RBP.i146
  %3319 = sub i64 %3318, 20
  %3320 = load i64, i64* %PC.i144
  %3321 = add i64 %3320, 3
  store i64 %3321, i64* %PC.i144
  %3322 = inttoptr i64 %3319 to i32*
  %3323 = load i32, i32* %3322
  %3324 = zext i32 %3323 to i64
  store i64 %3324, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_448c0d, %struct.Memory** %MEMORY
  %loadMem_448c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 1
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %3330 to i64*
  %3331 = load i64, i64* %RAX.i143
  %3332 = load i64, i64* %PC.i142
  %3333 = add i64 %3332, 3
  store i64 %3333, i64* %PC.i142
  %3334 = trunc i64 %3331 to i32
  %3335 = add i32 1, %3334
  %3336 = zext i32 %3335 to i64
  store i64 %3336, i64* %RAX.i143, align 8
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
  store %struct.Memory* %loadMem_448c10, %struct.Memory** %MEMORY
  %loadMem_448c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 33
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3369 to i64*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 1
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %EAX.i140 = bitcast %union.anon* %3372 to i32*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 15
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %3375 to i64*
  %3376 = load i64, i64* %RBP.i141
  %3377 = sub i64 %3376, 20
  %3378 = load i32, i32* %EAX.i140
  %3379 = zext i32 %3378 to i64
  %3380 = load i64, i64* %PC.i139
  %3381 = add i64 %3380, 3
  store i64 %3381, i64* %PC.i139
  %3382 = inttoptr i64 %3377 to i32*
  store i32 %3378, i32* %3382
  store %struct.Memory* %loadMem_448c13, %struct.Memory** %MEMORY
  %loadMem_448c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 33
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3385 to i64*
  %3386 = load i64, i64* %PC.i138
  %3387 = add i64 %3386, -52
  %3388 = load i64, i64* %PC.i138
  %3389 = add i64 %3388, 5
  store i64 %3389, i64* %PC.i138
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3387, i64* %3390, align 8
  store %struct.Memory* %loadMem_448c16, %struct.Memory** %MEMORY
  br label %block_.L_448be2

block_.L_448c1b:                                  ; preds = %block_.L_448be2
  %loadMem_448c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 33
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3393 to i64*
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 15
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %3396 to i64*
  %3397 = load i64, i64* %RBP.i137
  %3398 = sub i64 %3397, 20
  %3399 = load i64, i64* %PC.i136
  %3400 = add i64 %3399, 7
  store i64 %3400, i64* %PC.i136
  %3401 = inttoptr i64 %3398 to i32*
  store i32 0, i32* %3401
  store %struct.Memory* %loadMem_448c1b, %struct.Memory** %MEMORY
  br label %block_.L_448c22

block_.L_448c22:                                  ; preds = %block_448c32, %block_.L_448c1b
  %loadMem_448c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 33
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 1
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 15
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %RBP.i135
  %3412 = sub i64 %3411, 20
  %3413 = load i64, i64* %PC.i133
  %3414 = add i64 %3413, 3
  store i64 %3414, i64* %PC.i133
  %3415 = inttoptr i64 %3412 to i32*
  %3416 = load i32, i32* %3415
  %3417 = zext i32 %3416 to i64
  store i64 %3417, i64* %RAX.i134, align 8
  store %struct.Memory* %loadMem_448c22, %struct.Memory** %MEMORY
  %loadMem_448c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 5
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 15
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %RBP.i132
  %3428 = sub i64 %3427, 16
  %3429 = load i64, i64* %PC.i130
  %3430 = add i64 %3429, 4
  store i64 %3430, i64* %PC.i130
  %3431 = inttoptr i64 %3428 to i64*
  %3432 = load i64, i64* %3431
  store i64 %3432, i64* %RCX.i131, align 8
  store %struct.Memory* %loadMem_448c25, %struct.Memory** %MEMORY
  %loadMem_448c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 33
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 1
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %EAX.i128 = bitcast %union.anon* %3438 to i32*
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 5
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %3441 to i64*
  %3442 = load i32, i32* %EAX.i128
  %3443 = zext i32 %3442 to i64
  %3444 = load i64, i64* %RCX.i129
  %3445 = add i64 %3444, 100
  %3446 = load i64, i64* %PC.i127
  %3447 = add i64 %3446, 3
  store i64 %3447, i64* %PC.i127
  %3448 = inttoptr i64 %3445 to i32*
  %3449 = load i32, i32* %3448
  %3450 = sub i32 %3442, %3449
  %3451 = icmp ult i32 %3442, %3449
  %3452 = zext i1 %3451 to i8
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3452, i8* %3453, align 1
  %3454 = and i32 %3450, 255
  %3455 = call i32 @llvm.ctpop.i32(i32 %3454)
  %3456 = trunc i32 %3455 to i8
  %3457 = and i8 %3456, 1
  %3458 = xor i8 %3457, 1
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3458, i8* %3459, align 1
  %3460 = xor i32 %3449, %3442
  %3461 = xor i32 %3460, %3450
  %3462 = lshr i32 %3461, 4
  %3463 = trunc i32 %3462 to i8
  %3464 = and i8 %3463, 1
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3464, i8* %3465, align 1
  %3466 = icmp eq i32 %3450, 0
  %3467 = zext i1 %3466 to i8
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3467, i8* %3468, align 1
  %3469 = lshr i32 %3450, 31
  %3470 = trunc i32 %3469 to i8
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3470, i8* %3471, align 1
  %3472 = lshr i32 %3442, 31
  %3473 = lshr i32 %3449, 31
  %3474 = xor i32 %3473, %3472
  %3475 = xor i32 %3469, %3472
  %3476 = add i32 %3475, %3474
  %3477 = icmp eq i32 %3476, 2
  %3478 = zext i1 %3477 to i8
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3478, i8* %3479, align 1
  store %struct.Memory* %loadMem_448c29, %struct.Memory** %MEMORY
  %loadMem_448c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 33
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3482 to i64*
  %3483 = load i64, i64* %PC.i126
  %3484 = add i64 %3483, 47
  %3485 = load i64, i64* %PC.i126
  %3486 = add i64 %3485, 6
  %3487 = load i64, i64* %PC.i126
  %3488 = add i64 %3487, 6
  store i64 %3488, i64* %PC.i126
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3490 = load i8, i8* %3489, align 1
  %3491 = icmp eq i8 %3490, 0
  %3492 = zext i1 %3491 to i8
  store i8 %3492, i8* %BRANCH_TAKEN, align 1
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3494 = select i1 %3491, i64 %3484, i64 %3486
  store i64 %3494, i64* %3493, align 8
  store %struct.Memory* %loadMem_448c2c, %struct.Memory** %MEMORY
  %loadBr_448c2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448c2c = icmp eq i8 %loadBr_448c2c, 1
  br i1 %cmpBr_448c2c, label %block_.L_448c5b, label %block_448c32

block_448c32:                                     ; preds = %block_.L_448c22
  %loadMem_448c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 33
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3497 to i64*
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 1
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 15
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %3503 to i64*
  %3504 = load i64, i64* %RBP.i125
  %3505 = sub i64 %3504, 16
  %3506 = load i64, i64* %PC.i123
  %3507 = add i64 %3506, 4
  store i64 %3507, i64* %PC.i123
  %3508 = inttoptr i64 %3505 to i64*
  %3509 = load i64, i64* %3508
  store i64 %3509, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_448c32, %struct.Memory** %MEMORY
  %loadMem_448c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 33
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 1
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %3515 to i64*
  %3516 = load i64, i64* %RAX.i122
  %3517 = add i64 %3516, 88
  %3518 = load i64, i64* %PC.i121
  %3519 = add i64 %3518, 4
  store i64 %3519, i64* %PC.i121
  %3520 = inttoptr i64 %3517 to i64*
  %3521 = load i64, i64* %3520
  store i64 %3521, i64* %RAX.i122, align 8
  store %struct.Memory* %loadMem_448c36, %struct.Memory** %MEMORY
  %loadMem_448c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 33
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %3524 to i64*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 5
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %3527 to i64*
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 15
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %3530 to i64*
  %3531 = load i64, i64* %RBP.i120
  %3532 = sub i64 %3531, 20
  %3533 = load i64, i64* %PC.i118
  %3534 = add i64 %3533, 4
  store i64 %3534, i64* %PC.i118
  %3535 = inttoptr i64 %3532 to i32*
  %3536 = load i32, i32* %3535
  %3537 = sext i32 %3536 to i64
  store i64 %3537, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_448c3a, %struct.Memory** %MEMORY
  %loadMem_448c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 33
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %3540 to i64*
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 5
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %3543 to i64*
  %3544 = load i64, i64* %RCX.i117
  %3545 = load i64, i64* %PC.i116
  %3546 = add i64 %3545, 4
  store i64 %3546, i64* %PC.i116
  %3547 = shl i64 %3544, 3
  %3548 = icmp slt i64 %3547, 0
  %3549 = shl i64 %3547, 1
  store i64 %3549, i64* %RCX.i117, align 8
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3551 = zext i1 %3548 to i8
  store i8 %3551, i8* %3550, align 1
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3553 = trunc i64 %3549 to i32
  %3554 = and i32 %3553, 254
  %3555 = call i32 @llvm.ctpop.i32(i32 %3554)
  %3556 = trunc i32 %3555 to i8
  %3557 = and i8 %3556, 1
  %3558 = xor i8 %3557, 1
  store i8 %3558, i8* %3552, align 1
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3559, align 1
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3561 = icmp eq i64 %3549, 0
  %3562 = zext i1 %3561 to i8
  store i8 %3562, i8* %3560, align 1
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3564 = lshr i64 %3549, 63
  %3565 = trunc i64 %3564 to i8
  store i8 %3565, i8* %3563, align 1
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3566, align 1
  store %struct.Memory* %loadMem_448c3e, %struct.Memory** %MEMORY
  %loadMem_448c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 33
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %3569 to i64*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 1
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %3572 to i64*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 5
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %3575 to i64*
  %3576 = load i64, i64* %RAX.i114
  %3577 = load i64, i64* %RCX.i115
  %3578 = load i64, i64* %PC.i113
  %3579 = add i64 %3578, 3
  store i64 %3579, i64* %PC.i113
  %3580 = add i64 %3577, %3576
  store i64 %3580, i64* %RAX.i114, align 8
  %3581 = icmp ult i64 %3580, %3576
  %3582 = icmp ult i64 %3580, %3577
  %3583 = or i1 %3581, %3582
  %3584 = zext i1 %3583 to i8
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3584, i8* %3585, align 1
  %3586 = trunc i64 %3580 to i32
  %3587 = and i32 %3586, 255
  %3588 = call i32 @llvm.ctpop.i32(i32 %3587)
  %3589 = trunc i32 %3588 to i8
  %3590 = and i8 %3589, 1
  %3591 = xor i8 %3590, 1
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3591, i8* %3592, align 1
  %3593 = xor i64 %3577, %3576
  %3594 = xor i64 %3593, %3580
  %3595 = lshr i64 %3594, 4
  %3596 = trunc i64 %3595 to i8
  %3597 = and i8 %3596, 1
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3597, i8* %3598, align 1
  %3599 = icmp eq i64 %3580, 0
  %3600 = zext i1 %3599 to i8
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3600, i8* %3601, align 1
  %3602 = lshr i64 %3580, 63
  %3603 = trunc i64 %3602 to i8
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3603, i8* %3604, align 1
  %3605 = lshr i64 %3576, 63
  %3606 = lshr i64 %3577, 63
  %3607 = xor i64 %3602, %3605
  %3608 = xor i64 %3602, %3606
  %3609 = add i64 %3607, %3608
  %3610 = icmp eq i64 %3609, 2
  %3611 = zext i1 %3610 to i8
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3611, i8* %3612, align 1
  store %struct.Memory* %loadMem_448c42, %struct.Memory** %MEMORY
  %loadMem_448c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 33
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3615 to i64*
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 1
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %3618 to i64*
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 11
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %RDI.i112 = bitcast %union.anon* %3621 to i64*
  %3622 = load i64, i64* %RAX.i111
  %3623 = load i64, i64* %PC.i110
  %3624 = add i64 %3623, 3
  store i64 %3624, i64* %PC.i110
  %3625 = inttoptr i64 %3622 to i64*
  %3626 = load i64, i64* %3625
  store i64 %3626, i64* %RDI.i112, align 8
  store %struct.Memory* %loadMem_448c45, %struct.Memory** %MEMORY
  %loadMem1_448c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 33
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3629 to i64*
  %3630 = load i64, i64* %PC.i109
  %3631 = add i64 %3630, -293064
  %3632 = load i64, i64* %PC.i109
  %3633 = add i64 %3632, 5
  %3634 = load i64, i64* %PC.i109
  %3635 = add i64 %3634, 5
  store i64 %3635, i64* %PC.i109
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3637 = load i64, i64* %3636, align 8
  %3638 = add i64 %3637, -8
  %3639 = inttoptr i64 %3638 to i64*
  store i64 %3633, i64* %3639
  store i64 %3638, i64* %3636, align 8
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3631, i64* %3640, align 8
  store %struct.Memory* %loadMem1_448c48, %struct.Memory** %MEMORY
  %loadMem2_448c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448c48 = load i64, i64* %3
  %3641 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_448c48)
  store %struct.Memory* %3641, %struct.Memory** %MEMORY
  %loadMem_448c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 33
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3644 to i64*
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3646 = getelementptr inbounds %struct.GPR, %struct.GPR* %3645, i32 0, i32 1
  %3647 = getelementptr inbounds %struct.Reg, %struct.Reg* %3646, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %3647 to i64*
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3649 = getelementptr inbounds %struct.GPR, %struct.GPR* %3648, i32 0, i32 15
  %3650 = getelementptr inbounds %struct.Reg, %struct.Reg* %3649, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %3650 to i64*
  %3651 = load i64, i64* %RBP.i105
  %3652 = sub i64 %3651, 20
  %3653 = load i64, i64* %PC.i103
  %3654 = add i64 %3653, 3
  store i64 %3654, i64* %PC.i103
  %3655 = inttoptr i64 %3652 to i32*
  %3656 = load i32, i32* %3655
  %3657 = zext i32 %3656 to i64
  store i64 %3657, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_448c4d, %struct.Memory** %MEMORY
  %loadMem_448c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 33
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3660 to i64*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 1
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %3663 to i64*
  %3664 = load i64, i64* %RAX.i102
  %3665 = load i64, i64* %PC.i101
  %3666 = add i64 %3665, 3
  store i64 %3666, i64* %PC.i101
  %3667 = trunc i64 %3664 to i32
  %3668 = add i32 1, %3667
  %3669 = zext i32 %3668 to i64
  store i64 %3669, i64* %RAX.i102, align 8
  %3670 = icmp ult i32 %3668, %3667
  %3671 = icmp ult i32 %3668, 1
  %3672 = or i1 %3670, %3671
  %3673 = zext i1 %3672 to i8
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3673, i8* %3674, align 1
  %3675 = and i32 %3668, 255
  %3676 = call i32 @llvm.ctpop.i32(i32 %3675)
  %3677 = trunc i32 %3676 to i8
  %3678 = and i8 %3677, 1
  %3679 = xor i8 %3678, 1
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3679, i8* %3680, align 1
  %3681 = xor i64 1, %3664
  %3682 = trunc i64 %3681 to i32
  %3683 = xor i32 %3682, %3668
  %3684 = lshr i32 %3683, 4
  %3685 = trunc i32 %3684 to i8
  %3686 = and i8 %3685, 1
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3686, i8* %3687, align 1
  %3688 = icmp eq i32 %3668, 0
  %3689 = zext i1 %3688 to i8
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3689, i8* %3690, align 1
  %3691 = lshr i32 %3668, 31
  %3692 = trunc i32 %3691 to i8
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3692, i8* %3693, align 1
  %3694 = lshr i32 %3667, 31
  %3695 = xor i32 %3691, %3694
  %3696 = add i32 %3695, %3691
  %3697 = icmp eq i32 %3696, 2
  %3698 = zext i1 %3697 to i8
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3698, i8* %3699, align 1
  store %struct.Memory* %loadMem_448c50, %struct.Memory** %MEMORY
  %loadMem_448c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 1
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %EAX.i99 = bitcast %union.anon* %3705 to i32*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 15
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %3708 to i64*
  %3709 = load i64, i64* %RBP.i100
  %3710 = sub i64 %3709, 20
  %3711 = load i32, i32* %EAX.i99
  %3712 = zext i32 %3711 to i64
  %3713 = load i64, i64* %PC.i98
  %3714 = add i64 %3713, 3
  store i64 %3714, i64* %PC.i98
  %3715 = inttoptr i64 %3710 to i32*
  store i32 %3711, i32* %3715
  store %struct.Memory* %loadMem_448c53, %struct.Memory** %MEMORY
  %loadMem_448c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 33
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %3718 to i64*
  %3719 = load i64, i64* %PC.i97
  %3720 = add i64 %3719, -52
  %3721 = load i64, i64* %PC.i97
  %3722 = add i64 %3721, 5
  store i64 %3722, i64* %PC.i97
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3720, i64* %3723, align 8
  store %struct.Memory* %loadMem_448c56, %struct.Memory** %MEMORY
  br label %block_.L_448c22

block_.L_448c5b:                                  ; preds = %block_.L_448c22
  %loadMem_448c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 33
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3726 to i64*
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 15
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %3729 to i64*
  %3730 = load i64, i64* %RBP.i96
  %3731 = sub i64 %3730, 20
  %3732 = load i64, i64* %PC.i95
  %3733 = add i64 %3732, 7
  store i64 %3733, i64* %PC.i95
  %3734 = inttoptr i64 %3731 to i32*
  store i32 0, i32* %3734
  store %struct.Memory* %loadMem_448c5b, %struct.Memory** %MEMORY
  br label %block_.L_448c62

block_.L_448c62:                                  ; preds = %block_448c72, %block_.L_448c5b
  %loadMem_448c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 33
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3737 to i64*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 1
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %3740 to i64*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 15
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %3743 to i64*
  %3744 = load i64, i64* %RBP.i94
  %3745 = sub i64 %3744, 20
  %3746 = load i64, i64* %PC.i92
  %3747 = add i64 %3746, 3
  store i64 %3747, i64* %PC.i92
  %3748 = inttoptr i64 %3745 to i32*
  %3749 = load i32, i32* %3748
  %3750 = zext i32 %3749 to i64
  store i64 %3750, i64* %RAX.i93, align 8
  store %struct.Memory* %loadMem_448c62, %struct.Memory** %MEMORY
  %loadMem_448c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 33
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 5
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 15
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %3759 to i64*
  %3760 = load i64, i64* %RBP.i91
  %3761 = sub i64 %3760, 16
  %3762 = load i64, i64* %PC.i89
  %3763 = add i64 %3762, 4
  store i64 %3763, i64* %PC.i89
  %3764 = inttoptr i64 %3761 to i64*
  %3765 = load i64, i64* %3764
  store i64 %3765, i64* %RCX.i90, align 8
  store %struct.Memory* %loadMem_448c65, %struct.Memory** %MEMORY
  %loadMem_448c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 33
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3768 to i64*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 1
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %EAX.i87 = bitcast %union.anon* %3771 to i32*
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 5
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %3774 to i64*
  %3775 = load i32, i32* %EAX.i87
  %3776 = zext i32 %3775 to i64
  %3777 = load i64, i64* %RCX.i88
  %3778 = add i64 %3777, 100
  %3779 = load i64, i64* %PC.i86
  %3780 = add i64 %3779, 3
  store i64 %3780, i64* %PC.i86
  %3781 = inttoptr i64 %3778 to i32*
  %3782 = load i32, i32* %3781
  %3783 = sub i32 %3775, %3782
  %3784 = icmp ult i32 %3775, %3782
  %3785 = zext i1 %3784 to i8
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3785, i8* %3786, align 1
  %3787 = and i32 %3783, 255
  %3788 = call i32 @llvm.ctpop.i32(i32 %3787)
  %3789 = trunc i32 %3788 to i8
  %3790 = and i8 %3789, 1
  %3791 = xor i8 %3790, 1
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3791, i8* %3792, align 1
  %3793 = xor i32 %3782, %3775
  %3794 = xor i32 %3793, %3783
  %3795 = lshr i32 %3794, 4
  %3796 = trunc i32 %3795 to i8
  %3797 = and i8 %3796, 1
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3797, i8* %3798, align 1
  %3799 = icmp eq i32 %3783, 0
  %3800 = zext i1 %3799 to i8
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3800, i8* %3801, align 1
  %3802 = lshr i32 %3783, 31
  %3803 = trunc i32 %3802 to i8
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3803, i8* %3804, align 1
  %3805 = lshr i32 %3775, 31
  %3806 = lshr i32 %3782, 31
  %3807 = xor i32 %3806, %3805
  %3808 = xor i32 %3802, %3805
  %3809 = add i32 %3808, %3807
  %3810 = icmp eq i32 %3809, 2
  %3811 = zext i1 %3810 to i8
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3811, i8* %3812, align 1
  store %struct.Memory* %loadMem_448c69, %struct.Memory** %MEMORY
  %loadMem_448c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 33
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %3815 to i64*
  %3816 = load i64, i64* %PC.i85
  %3817 = add i64 %3816, 48
  %3818 = load i64, i64* %PC.i85
  %3819 = add i64 %3818, 6
  %3820 = load i64, i64* %PC.i85
  %3821 = add i64 %3820, 6
  store i64 %3821, i64* %PC.i85
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3823 = load i8, i8* %3822, align 1
  %3824 = icmp eq i8 %3823, 0
  %3825 = zext i1 %3824 to i8
  store i8 %3825, i8* %BRANCH_TAKEN, align 1
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3827 = select i1 %3824, i64 %3817, i64 %3819
  store i64 %3827, i64* %3826, align 8
  store %struct.Memory* %loadMem_448c6c, %struct.Memory** %MEMORY
  %loadBr_448c6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448c6c = icmp eq i8 %loadBr_448c6c, 1
  br i1 %cmpBr_448c6c, label %block_.L_448c9c, label %block_448c72

block_448c72:                                     ; preds = %block_.L_448c62
  %loadMem_448c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 33
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3830 to i64*
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 1
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %3833 to i64*
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 15
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %3836 to i64*
  %3837 = load i64, i64* %RBP.i84
  %3838 = sub i64 %3837, 16
  %3839 = load i64, i64* %PC.i82
  %3840 = add i64 %3839, 4
  store i64 %3840, i64* %PC.i82
  %3841 = inttoptr i64 %3838 to i64*
  %3842 = load i64, i64* %3841
  store i64 %3842, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_448c72, %struct.Memory** %MEMORY
  %loadMem_448c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 33
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %3845 to i64*
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 1
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %3848 to i64*
  %3849 = load i64, i64* %RAX.i81
  %3850 = add i64 %3849, 88
  %3851 = load i64, i64* %PC.i80
  %3852 = add i64 %3851, 4
  store i64 %3852, i64* %PC.i80
  %3853 = inttoptr i64 %3850 to i64*
  %3854 = load i64, i64* %3853
  store i64 %3854, i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_448c76, %struct.Memory** %MEMORY
  %loadMem_448c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 33
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %3857 to i64*
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 5
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %3860 to i64*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 15
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %3863 to i64*
  %3864 = load i64, i64* %RBP.i79
  %3865 = sub i64 %3864, 20
  %3866 = load i64, i64* %PC.i77
  %3867 = add i64 %3866, 4
  store i64 %3867, i64* %PC.i77
  %3868 = inttoptr i64 %3865 to i32*
  %3869 = load i32, i32* %3868
  %3870 = sext i32 %3869 to i64
  store i64 %3870, i64* %RCX.i78, align 8
  store %struct.Memory* %loadMem_448c7a, %struct.Memory** %MEMORY
  %loadMem_448c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 33
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3873 to i64*
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 5
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %3876 to i64*
  %3877 = load i64, i64* %RCX.i76
  %3878 = load i64, i64* %PC.i75
  %3879 = add i64 %3878, 4
  store i64 %3879, i64* %PC.i75
  %3880 = shl i64 %3877, 3
  %3881 = icmp slt i64 %3880, 0
  %3882 = shl i64 %3880, 1
  store i64 %3882, i64* %RCX.i76, align 8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3884 = zext i1 %3881 to i8
  store i8 %3884, i8* %3883, align 1
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3886 = trunc i64 %3882 to i32
  %3887 = and i32 %3886, 254
  %3888 = call i32 @llvm.ctpop.i32(i32 %3887)
  %3889 = trunc i32 %3888 to i8
  %3890 = and i8 %3889, 1
  %3891 = xor i8 %3890, 1
  store i8 %3891, i8* %3885, align 1
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3892, align 1
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3894 = icmp eq i64 %3882, 0
  %3895 = zext i1 %3894 to i8
  store i8 %3895, i8* %3893, align 1
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3897 = lshr i64 %3882, 63
  %3898 = trunc i64 %3897 to i8
  store i8 %3898, i8* %3896, align 1
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3899, align 1
  store %struct.Memory* %loadMem_448c7e, %struct.Memory** %MEMORY
  %loadMem_448c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 33
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3902 to i64*
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3904 = getelementptr inbounds %struct.GPR, %struct.GPR* %3903, i32 0, i32 1
  %3905 = getelementptr inbounds %struct.Reg, %struct.Reg* %3904, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %3905 to i64*
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 5
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3908 to i64*
  %3909 = load i64, i64* %RAX.i74
  %3910 = load i64, i64* %RCX.i
  %3911 = load i64, i64* %PC.i73
  %3912 = add i64 %3911, 3
  store i64 %3912, i64* %PC.i73
  %3913 = add i64 %3910, %3909
  store i64 %3913, i64* %RAX.i74, align 8
  %3914 = icmp ult i64 %3913, %3909
  %3915 = icmp ult i64 %3913, %3910
  %3916 = or i1 %3914, %3915
  %3917 = zext i1 %3916 to i8
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3917, i8* %3918, align 1
  %3919 = trunc i64 %3913 to i32
  %3920 = and i32 %3919, 255
  %3921 = call i32 @llvm.ctpop.i32(i32 %3920)
  %3922 = trunc i32 %3921 to i8
  %3923 = and i8 %3922, 1
  %3924 = xor i8 %3923, 1
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3924, i8* %3925, align 1
  %3926 = xor i64 %3910, %3909
  %3927 = xor i64 %3926, %3913
  %3928 = lshr i64 %3927, 4
  %3929 = trunc i64 %3928 to i8
  %3930 = and i8 %3929, 1
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3930, i8* %3931, align 1
  %3932 = icmp eq i64 %3913, 0
  %3933 = zext i1 %3932 to i8
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3933, i8* %3934, align 1
  %3935 = lshr i64 %3913, 63
  %3936 = trunc i64 %3935 to i8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3936, i8* %3937, align 1
  %3938 = lshr i64 %3909, 63
  %3939 = lshr i64 %3910, 63
  %3940 = xor i64 %3935, %3938
  %3941 = xor i64 %3935, %3939
  %3942 = add i64 %3940, %3941
  %3943 = icmp eq i64 %3942, 2
  %3944 = zext i1 %3943 to i8
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3944, i8* %3945, align 1
  store %struct.Memory* %loadMem_448c82, %struct.Memory** %MEMORY
  %loadMem_448c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 33
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3948 to i64*
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 1
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %3951 to i64*
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 11
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %RDI.i72 = bitcast %union.anon* %3954 to i64*
  %3955 = load i64, i64* %RAX.i71
  %3956 = add i64 %3955, 8
  %3957 = load i64, i64* %PC.i70
  %3958 = add i64 %3957, 4
  store i64 %3958, i64* %PC.i70
  %3959 = inttoptr i64 %3956 to i64*
  %3960 = load i64, i64* %3959
  store i64 %3960, i64* %RDI.i72, align 8
  store %struct.Memory* %loadMem_448c85, %struct.Memory** %MEMORY
  %loadMem1_448c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 33
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3963 to i64*
  %3964 = load i64, i64* %PC.i69
  %3965 = add i64 %3964, -293129
  %3966 = load i64, i64* %PC.i69
  %3967 = add i64 %3966, 5
  %3968 = load i64, i64* %PC.i69
  %3969 = add i64 %3968, 5
  store i64 %3969, i64* %PC.i69
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3971 = load i64, i64* %3970, align 8
  %3972 = add i64 %3971, -8
  %3973 = inttoptr i64 %3972 to i64*
  store i64 %3967, i64* %3973
  store i64 %3972, i64* %3970, align 8
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3965, i64* %3974, align 8
  store %struct.Memory* %loadMem1_448c89, %struct.Memory** %MEMORY
  %loadMem2_448c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448c89 = load i64, i64* %3
  %3975 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_448c89)
  store %struct.Memory* %3975, %struct.Memory** %MEMORY
  %loadMem_448c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 33
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3978 to i64*
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 1
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %3981 to i64*
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 15
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %3984 to i64*
  %3985 = load i64, i64* %RBP.i65
  %3986 = sub i64 %3985, 20
  %3987 = load i64, i64* %PC.i63
  %3988 = add i64 %3987, 3
  store i64 %3988, i64* %PC.i63
  %3989 = inttoptr i64 %3986 to i32*
  %3990 = load i32, i32* %3989
  %3991 = zext i32 %3990 to i64
  store i64 %3991, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_448c8e, %struct.Memory** %MEMORY
  %loadMem_448c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 33
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 1
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %3997 to i64*
  %3998 = load i64, i64* %RAX.i62
  %3999 = load i64, i64* %PC.i61
  %4000 = add i64 %3999, 3
  store i64 %4000, i64* %PC.i61
  %4001 = trunc i64 %3998 to i32
  %4002 = add i32 1, %4001
  %4003 = zext i32 %4002 to i64
  store i64 %4003, i64* %RAX.i62, align 8
  %4004 = icmp ult i32 %4002, %4001
  %4005 = icmp ult i32 %4002, 1
  %4006 = or i1 %4004, %4005
  %4007 = zext i1 %4006 to i8
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4007, i8* %4008, align 1
  %4009 = and i32 %4002, 255
  %4010 = call i32 @llvm.ctpop.i32(i32 %4009)
  %4011 = trunc i32 %4010 to i8
  %4012 = and i8 %4011, 1
  %4013 = xor i8 %4012, 1
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4013, i8* %4014, align 1
  %4015 = xor i64 1, %3998
  %4016 = trunc i64 %4015 to i32
  %4017 = xor i32 %4016, %4002
  %4018 = lshr i32 %4017, 4
  %4019 = trunc i32 %4018 to i8
  %4020 = and i8 %4019, 1
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4020, i8* %4021, align 1
  %4022 = icmp eq i32 %4002, 0
  %4023 = zext i1 %4022 to i8
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4023, i8* %4024, align 1
  %4025 = lshr i32 %4002, 31
  %4026 = trunc i32 %4025 to i8
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4026, i8* %4027, align 1
  %4028 = lshr i32 %4001, 31
  %4029 = xor i32 %4025, %4028
  %4030 = add i32 %4029, %4025
  %4031 = icmp eq i32 %4030, 2
  %4032 = zext i1 %4031 to i8
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4032, i8* %4033, align 1
  store %struct.Memory* %loadMem_448c91, %struct.Memory** %MEMORY
  %loadMem_448c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 33
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4036 to i64*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 1
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4039 to i32*
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4041 = getelementptr inbounds %struct.GPR, %struct.GPR* %4040, i32 0, i32 15
  %4042 = getelementptr inbounds %struct.Reg, %struct.Reg* %4041, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %4042 to i64*
  %4043 = load i64, i64* %RBP.i60
  %4044 = sub i64 %4043, 20
  %4045 = load i32, i32* %EAX.i
  %4046 = zext i32 %4045 to i64
  %4047 = load i64, i64* %PC.i59
  %4048 = add i64 %4047, 3
  store i64 %4048, i64* %PC.i59
  %4049 = inttoptr i64 %4044 to i32*
  store i32 %4045, i32* %4049
  store %struct.Memory* %loadMem_448c94, %struct.Memory** %MEMORY
  %loadMem_448c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 33
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4052 to i64*
  %4053 = load i64, i64* %PC.i58
  %4054 = add i64 %4053, -53
  %4055 = load i64, i64* %PC.i58
  %4056 = add i64 %4055, 5
  store i64 %4056, i64* %PC.i58
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4054, i64* %4057, align 8
  store %struct.Memory* %loadMem_448c97, %struct.Memory** %MEMORY
  br label %block_.L_448c62

block_.L_448c9c:                                  ; preds = %block_.L_448c62
  %loadMem_448c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 33
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %4060 to i64*
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 1
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 15
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %4066 to i64*
  %4067 = load i64, i64* %RBP.i57
  %4068 = sub i64 %4067, 16
  %4069 = load i64, i64* %PC.i55
  %4070 = add i64 %4069, 4
  store i64 %4070, i64* %PC.i55
  %4071 = inttoptr i64 %4068 to i64*
  %4072 = load i64, i64* %4071
  store i64 %4072, i64* %RAX.i56, align 8
  store %struct.Memory* %loadMem_448c9c, %struct.Memory** %MEMORY
  %loadMem_448ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 33
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4075 to i64*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 1
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %4078 to i64*
  %4079 = load i64, i64* %RAX.i54
  %4080 = add i64 %4079, 56
  %4081 = load i64, i64* %PC.i53
  %4082 = add i64 %4081, 5
  store i64 %4082, i64* %PC.i53
  %4083 = inttoptr i64 %4080 to i64*
  %4084 = load i64, i64* %4083
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4085, align 1
  %4086 = trunc i64 %4084 to i32
  %4087 = and i32 %4086, 255
  %4088 = call i32 @llvm.ctpop.i32(i32 %4087)
  %4089 = trunc i32 %4088 to i8
  %4090 = and i8 %4089, 1
  %4091 = xor i8 %4090, 1
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4091, i8* %4092, align 1
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4093, align 1
  %4094 = icmp eq i64 %4084, 0
  %4095 = zext i1 %4094 to i8
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4095, i8* %4096, align 1
  %4097 = lshr i64 %4084, 63
  %4098 = trunc i64 %4097 to i8
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4098, i8* %4099, align 1
  %4100 = lshr i64 %4084, 63
  %4101 = xor i64 %4097, %4100
  %4102 = add i64 %4101, %4100
  %4103 = icmp eq i64 %4102, 2
  %4104 = zext i1 %4103 to i8
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4104, i8* %4105, align 1
  store %struct.Memory* %loadMem_448ca0, %struct.Memory** %MEMORY
  %loadMem_448ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 33
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %4108 to i64*
  %4109 = load i64, i64* %PC.i52
  %4110 = add i64 %4109, 22
  %4111 = load i64, i64* %PC.i52
  %4112 = add i64 %4111, 6
  %4113 = load i64, i64* %PC.i52
  %4114 = add i64 %4113, 6
  store i64 %4114, i64* %PC.i52
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4116 = load i8, i8* %4115, align 1
  store i8 %4116, i8* %BRANCH_TAKEN, align 1
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4118 = icmp ne i8 %4116, 0
  %4119 = select i1 %4118, i64 %4110, i64 %4112
  store i64 %4119, i64* %4117, align 8
  store %struct.Memory* %loadMem_448ca5, %struct.Memory** %MEMORY
  %loadBr_448ca5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448ca5 = icmp eq i8 %loadBr_448ca5, 1
  br i1 %cmpBr_448ca5, label %block_.L_448cbb, label %block_448cab

block_448cab:                                     ; preds = %block_.L_448c9c
  %loadMem_448cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 33
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4122 to i64*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 1
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %4125 to i64*
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 15
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %4128 to i64*
  %4129 = load i64, i64* %RBP.i51
  %4130 = sub i64 %4129, 16
  %4131 = load i64, i64* %PC.i49
  %4132 = add i64 %4131, 4
  store i64 %4132, i64* %PC.i49
  %4133 = inttoptr i64 %4130 to i64*
  %4134 = load i64, i64* %4133
  store i64 %4134, i64* %RAX.i50, align 8
  store %struct.Memory* %loadMem_448cab, %struct.Memory** %MEMORY
  %loadMem_448caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4136 = getelementptr inbounds %struct.GPR, %struct.GPR* %4135, i32 0, i32 33
  %4137 = getelementptr inbounds %struct.Reg, %struct.Reg* %4136, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4137 to i64*
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 1
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %4140 to i64*
  %4141 = load i64, i64* %RAX.i48
  %4142 = add i64 %4141, 56
  %4143 = load i64, i64* %PC.i47
  %4144 = add i64 %4143, 4
  store i64 %4144, i64* %PC.i47
  %4145 = inttoptr i64 %4142 to i64*
  %4146 = load i64, i64* %4145
  store i64 %4146, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_448caf, %struct.Memory** %MEMORY
  %loadMem_448cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 1
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %4152 to i64*
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 11
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %RDI.i46 = bitcast %union.anon* %4155 to i64*
  %4156 = load i64, i64* %RAX.i45
  %4157 = load i64, i64* %PC.i44
  %4158 = add i64 %4157, 3
  store i64 %4158, i64* %PC.i44
  store i64 %4156, i64* %RDI.i46, align 8
  store %struct.Memory* %loadMem_448cb3, %struct.Memory** %MEMORY
  %loadMem1_448cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 33
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %4161 to i64*
  %4162 = load i64, i64* %PC.i43
  %4163 = add i64 %4162, -293174
  %4164 = load i64, i64* %PC.i43
  %4165 = add i64 %4164, 5
  %4166 = load i64, i64* %PC.i43
  %4167 = add i64 %4166, 5
  store i64 %4167, i64* %PC.i43
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4169 = load i64, i64* %4168, align 8
  %4170 = add i64 %4169, -8
  %4171 = inttoptr i64 %4170 to i64*
  store i64 %4165, i64* %4171
  store i64 %4170, i64* %4168, align 8
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4163, i64* %4172, align 8
  store %struct.Memory* %loadMem1_448cb6, %struct.Memory** %MEMORY
  %loadMem2_448cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448cb6 = load i64, i64* %3
  %4173 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_448cb6)
  store %struct.Memory* %4173, %struct.Memory** %MEMORY
  br label %block_.L_448cbb

block_.L_448cbb:                                  ; preds = %block_448cab, %block_.L_448c9c
  %loadMem_448cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 33
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %4176 to i64*
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 1
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %4179 to i64*
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 15
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %4182 to i64*
  %4183 = load i64, i64* %RBP.i40
  %4184 = sub i64 %4183, 16
  %4185 = load i64, i64* %PC.i38
  %4186 = add i64 %4185, 4
  store i64 %4186, i64* %PC.i38
  %4187 = inttoptr i64 %4184 to i64*
  %4188 = load i64, i64* %4187
  store i64 %4188, i64* %RAX.i39, align 8
  store %struct.Memory* %loadMem_448cbb, %struct.Memory** %MEMORY
  %loadMem_448cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 33
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4191 to i64*
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 1
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %4194 to i64*
  %4195 = load i64, i64* %RAX.i37
  %4196 = add i64 %4195, 88
  %4197 = load i64, i64* %PC.i36
  %4198 = add i64 %4197, 5
  store i64 %4198, i64* %PC.i36
  %4199 = inttoptr i64 %4196 to i64*
  %4200 = load i64, i64* %4199
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4201, align 1
  %4202 = trunc i64 %4200 to i32
  %4203 = and i32 %4202, 255
  %4204 = call i32 @llvm.ctpop.i32(i32 %4203)
  %4205 = trunc i32 %4204 to i8
  %4206 = and i8 %4205, 1
  %4207 = xor i8 %4206, 1
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4207, i8* %4208, align 1
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4209, align 1
  %4210 = icmp eq i64 %4200, 0
  %4211 = zext i1 %4210 to i8
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4211, i8* %4212, align 1
  %4213 = lshr i64 %4200, 63
  %4214 = trunc i64 %4213 to i8
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4214, i8* %4215, align 1
  %4216 = lshr i64 %4200, 63
  %4217 = xor i64 %4213, %4216
  %4218 = add i64 %4217, %4216
  %4219 = icmp eq i64 %4218, 2
  %4220 = zext i1 %4219 to i8
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4220, i8* %4221, align 1
  store %struct.Memory* %loadMem_448cbf, %struct.Memory** %MEMORY
  %loadMem_448cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 33
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %4224 to i64*
  %4225 = load i64, i64* %PC.i35
  %4226 = add i64 %4225, 22
  %4227 = load i64, i64* %PC.i35
  %4228 = add i64 %4227, 6
  %4229 = load i64, i64* %PC.i35
  %4230 = add i64 %4229, 6
  store i64 %4230, i64* %PC.i35
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4232 = load i8, i8* %4231, align 1
  store i8 %4232, i8* %BRANCH_TAKEN, align 1
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4234 = icmp ne i8 %4232, 0
  %4235 = select i1 %4234, i64 %4226, i64 %4228
  store i64 %4235, i64* %4233, align 8
  store %struct.Memory* %loadMem_448cc4, %struct.Memory** %MEMORY
  %loadBr_448cc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448cc4 = icmp eq i8 %loadBr_448cc4, 1
  br i1 %cmpBr_448cc4, label %block_.L_448cda, label %block_448cca

block_448cca:                                     ; preds = %block_.L_448cbb
  %loadMem_448cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 33
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4238 to i64*
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 1
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %4241 to i64*
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 15
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %4244 to i64*
  %4245 = load i64, i64* %RBP.i34
  %4246 = sub i64 %4245, 16
  %4247 = load i64, i64* %PC.i32
  %4248 = add i64 %4247, 4
  store i64 %4248, i64* %PC.i32
  %4249 = inttoptr i64 %4246 to i64*
  %4250 = load i64, i64* %4249
  store i64 %4250, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_448cca, %struct.Memory** %MEMORY
  %loadMem_448cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 33
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %4253 to i64*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 1
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %4256 to i64*
  %4257 = load i64, i64* %RAX.i31
  %4258 = add i64 %4257, 88
  %4259 = load i64, i64* %PC.i30
  %4260 = add i64 %4259, 4
  store i64 %4260, i64* %PC.i30
  %4261 = inttoptr i64 %4258 to i64*
  %4262 = load i64, i64* %4261
  store i64 %4262, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_448cce, %struct.Memory** %MEMORY
  %loadMem_448cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 33
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4265 to i64*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 1
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %4268 to i64*
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 11
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4271 to i64*
  %4272 = load i64, i64* %RAX.i29
  %4273 = load i64, i64* %PC.i28
  %4274 = add i64 %4273, 3
  store i64 %4274, i64* %PC.i28
  store i64 %4272, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_448cd2, %struct.Memory** %MEMORY
  %loadMem1_448cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 33
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %4277 to i64*
  %4278 = load i64, i64* %PC.i27
  %4279 = add i64 %4278, -293205
  %4280 = load i64, i64* %PC.i27
  %4281 = add i64 %4280, 5
  %4282 = load i64, i64* %PC.i27
  %4283 = add i64 %4282, 5
  store i64 %4283, i64* %PC.i27
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4285 = load i64, i64* %4284, align 8
  %4286 = add i64 %4285, -8
  %4287 = inttoptr i64 %4286 to i64*
  store i64 %4281, i64* %4287
  store i64 %4286, i64* %4284, align 8
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4279, i64* %4288, align 8
  store %struct.Memory* %loadMem1_448cd5, %struct.Memory** %MEMORY
  %loadMem2_448cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448cd5 = load i64, i64* %3
  %4289 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_448cd5)
  store %struct.Memory* %4289, %struct.Memory** %MEMORY
  br label %block_.L_448cda

block_.L_448cda:                                  ; preds = %block_448cca, %block_.L_448cbb
  %loadMem_448cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4291 = getelementptr inbounds %struct.GPR, %struct.GPR* %4290, i32 0, i32 33
  %4292 = getelementptr inbounds %struct.Reg, %struct.Reg* %4291, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4292 to i64*
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 1
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %4295 to i64*
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 15
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %4298 to i64*
  %4299 = load i64, i64* %RBP.i23
  %4300 = sub i64 %4299, 16
  %4301 = load i64, i64* %PC.i21
  %4302 = add i64 %4301, 4
  store i64 %4302, i64* %PC.i21
  %4303 = inttoptr i64 %4300 to i64*
  %4304 = load i64, i64* %4303
  store i64 %4304, i64* %RAX.i22, align 8
  store %struct.Memory* %loadMem_448cda, %struct.Memory** %MEMORY
  %loadMem_448cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4306 = getelementptr inbounds %struct.GPR, %struct.GPR* %4305, i32 0, i32 33
  %4307 = getelementptr inbounds %struct.Reg, %struct.Reg* %4306, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %4307 to i64*
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 1
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %4310 to i64*
  %4311 = load i64, i64* %RAX.i20
  %4312 = add i64 %4311, 56
  %4313 = load i64, i64* %PC.i19
  %4314 = add i64 %4313, 8
  store i64 %4314, i64* %PC.i19
  %4315 = inttoptr i64 %4312 to i64*
  store i64 0, i64* %4315
  store %struct.Memory* %loadMem_448cde, %struct.Memory** %MEMORY
  %loadMem_448ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 1
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %4321 to i64*
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 15
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %4324 to i64*
  %4325 = load i64, i64* %RBP.i18
  %4326 = sub i64 %4325, 16
  %4327 = load i64, i64* %PC.i16
  %4328 = add i64 %4327, 4
  store i64 %4328, i64* %PC.i16
  %4329 = inttoptr i64 %4326 to i64*
  %4330 = load i64, i64* %4329
  store i64 %4330, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_448ce6, %struct.Memory** %MEMORY
  %loadMem_448cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 33
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4333 to i64*
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 1
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %4336 to i64*
  %4337 = load i64, i64* %RAX.i15
  %4338 = add i64 %4337, 88
  %4339 = load i64, i64* %PC.i14
  %4340 = add i64 %4339, 8
  store i64 %4340, i64* %PC.i14
  %4341 = inttoptr i64 %4338 to i64*
  store i64 0, i64* %4341
  store %struct.Memory* %loadMem_448cea, %struct.Memory** %MEMORY
  %loadMem_448cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 33
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4344 to i64*
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 1
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %4347 to i64*
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 15
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %4350 to i64*
  %4351 = load i64, i64* %RBP.i13
  %4352 = sub i64 %4351, 16
  %4353 = load i64, i64* %PC.i11
  %4354 = add i64 %4353, 4
  store i64 %4354, i64* %PC.i11
  %4355 = inttoptr i64 %4352 to i64*
  %4356 = load i64, i64* %4355
  store i64 %4356, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_448cf2, %struct.Memory** %MEMORY
  %loadMem_448cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 33
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 1
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %4362 to i64*
  %4363 = load i64, i64* %RAX.i10
  %4364 = add i64 %4363, 8
  %4365 = load i64, i64* %PC.i9
  %4366 = add i64 %4365, 7
  store i64 %4366, i64* %PC.i9
  %4367 = inttoptr i64 %4364 to i32*
  store i32 1, i32* %4367
  store %struct.Memory* %loadMem_448cf6, %struct.Memory** %MEMORY
  %loadMem_448cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 33
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 15
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4373 to i64*
  %4374 = load i64, i64* %RBP.i8
  %4375 = sub i64 %4374, 4
  %4376 = load i64, i64* %PC.i7
  %4377 = add i64 %4376, 7
  store i64 %4377, i64* %PC.i7
  %4378 = inttoptr i64 %4375 to i32*
  store i32 0, i32* %4378
  store %struct.Memory* %loadMem_448cfd, %struct.Memory** %MEMORY
  br label %block_.L_448d04

block_.L_448d04:                                  ; preds = %block_.L_448cda, %block_4489f8, %block_4489c3, %block_44898e, %block_44896c, %block_44894a
  %loadMem_448d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 33
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4381 to i64*
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4383 = getelementptr inbounds %struct.GPR, %struct.GPR* %4382, i32 0, i32 1
  %4384 = getelementptr inbounds %struct.Reg, %struct.Reg* %4383, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4384 to i64*
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 15
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4387 to i64*
  %4388 = load i64, i64* %RBP.i6
  %4389 = sub i64 %4388, 4
  %4390 = load i64, i64* %PC.i5
  %4391 = add i64 %4390, 3
  store i64 %4391, i64* %PC.i5
  %4392 = inttoptr i64 %4389 to i32*
  %4393 = load i32, i32* %4392
  %4394 = zext i32 %4393 to i64
  store i64 %4394, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_448d04, %struct.Memory** %MEMORY
  %loadMem_448d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 33
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4397 to i64*
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 13
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4400 to i64*
  %4401 = load i64, i64* %RSP.i
  %4402 = load i64, i64* %PC.i4
  %4403 = add i64 %4402, 4
  store i64 %4403, i64* %PC.i4
  %4404 = add i64 48, %4401
  store i64 %4404, i64* %RSP.i, align 8
  %4405 = icmp ult i64 %4404, %4401
  %4406 = icmp ult i64 %4404, 48
  %4407 = or i1 %4405, %4406
  %4408 = zext i1 %4407 to i8
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4408, i8* %4409, align 1
  %4410 = trunc i64 %4404 to i32
  %4411 = and i32 %4410, 255
  %4412 = call i32 @llvm.ctpop.i32(i32 %4411)
  %4413 = trunc i32 %4412 to i8
  %4414 = and i8 %4413, 1
  %4415 = xor i8 %4414, 1
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4415, i8* %4416, align 1
  %4417 = xor i64 48, %4401
  %4418 = xor i64 %4417, %4404
  %4419 = lshr i64 %4418, 4
  %4420 = trunc i64 %4419 to i8
  %4421 = and i8 %4420, 1
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4421, i8* %4422, align 1
  %4423 = icmp eq i64 %4404, 0
  %4424 = zext i1 %4423 to i8
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4424, i8* %4425, align 1
  %4426 = lshr i64 %4404, 63
  %4427 = trunc i64 %4426 to i8
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4427, i8* %4428, align 1
  %4429 = lshr i64 %4401, 63
  %4430 = xor i64 %4426, %4429
  %4431 = add i64 %4430, %4426
  %4432 = icmp eq i64 %4431, 2
  %4433 = zext i1 %4432 to i8
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4433, i8* %4434, align 1
  store %struct.Memory* %loadMem_448d07, %struct.Memory** %MEMORY
  %loadMem_448d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 33
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4437 to i64*
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 15
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4440 to i64*
  %4441 = load i64, i64* %PC.i2
  %4442 = add i64 %4441, 1
  store i64 %4442, i64* %PC.i2
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4444 = load i64, i64* %4443, align 8
  %4445 = add i64 %4444, 8
  %4446 = inttoptr i64 %4444 to i64*
  %4447 = load i64, i64* %4446
  store i64 %4447, i64* %RBP.i3, align 8
  store i64 %4445, i64* %4443, align 8
  store %struct.Memory* %loadMem_448d0b, %struct.Memory** %MEMORY
  %loadMem_448d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 33
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4450 to i64*
  %4451 = load i64, i64* %PC.i1
  %4452 = add i64 %4451, 1
  store i64 %4452, i64* %PC.i1
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4455 = load i64, i64* %4454, align 8
  %4456 = inttoptr i64 %4455 to i64*
  %4457 = load i64, i64* %4456
  store i64 %4457, i64* %4453, align 8
  %4458 = add i64 %4455, 8
  store i64 %4458, i64* %4454, align 8
  store %struct.Memory* %loadMem_448d0c, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_448d0c
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 48
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 48
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
  %23 = xor i64 48, %9
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

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x8__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
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

define %struct.Memory* @routine_je_.L_448956(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_448d04(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x48__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.FileExists(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_448978(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x68__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44899a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45a5e7___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x45a5e7_type* @G__0x45a5e7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fopen_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x50__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 80
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = icmp eq i64 %9, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %9, 63
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %9, 63
  %28 = xor i64 %24, %27
  %29 = add i64 %28, %27
  %30 = icmp eq i64 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4489cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__0x70__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_448a04(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x44__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 68
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

define %struct.Memory* @routine_jae_.L_448b6d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = xor i32 %25, %28
  %30 = add i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_448ac5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45a9a9___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x45a9a9_type* @G__0x45a9a9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x50__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x38___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 56, %15
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

define %struct.Memory* @routine_movq___rax____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = zext i16 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x38___r8___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 56, %15
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

define %struct.Memory* @routine_addq__r8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %R8
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

define %struct.Memory* @routine_movl_0x18__rax____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x38___r10___r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R10
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 56, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %R10, align 8
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

define %struct.Memory* @routine_addq__r10___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %R10
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

define %struct.Memory* @routine_movl_0x28__rax____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x30__rax____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
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

define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_448b5a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x45a9bc___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x45a9bc_type* @G__0x45a9bc to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rax____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x38___r9___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R9
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 56, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %R9, align 8
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

define %struct.Memory* @routine_addq__r9___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %R9
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

define %struct.Memory* @routine_movq_0x28__rax____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
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

define %struct.Memory* @routine_jmpq_.L_448b5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_448a0b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0x64__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 100
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

define %struct.Memory* @routine_jae_.L_448bdb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45a9d1___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x45a9d1_type* @G__0x45a9d1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x70__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 3
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_448b74(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jae_.L_448c1b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq___rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_448be2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jae_.L_448c5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_448c22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jae_.L_448c9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x8__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_448c62(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_448cbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_448cda(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x0__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x58__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 48, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 48
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
  %25 = xor i64 48, %9
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
