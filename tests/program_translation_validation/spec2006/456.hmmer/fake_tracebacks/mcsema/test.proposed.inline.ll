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
%G__0x45863c_type = type <{ [8 x i8] }>
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
@G__0x45863c = global %G__0x45863c_type zeroinitializer

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

declare %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42a6c0.trace_doctor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @fake_tracebacks(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4295b0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4295b0, %struct.Memory** %MEMORY
  %loadMem_4295b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i1415 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i1416 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i1417 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i1416
  %27 = load i64, i64* %PC.i1415
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i1415
  store i64 %26, i64* %RBP.i1417, align 8
  store %struct.Memory* %loadMem_4295b1, %struct.Memory** %MEMORY
  %loadMem_4295b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i1413 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i1414 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i1414
  %36 = load i64, i64* %PC.i1413
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i1413
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i1414, align 8
  %39 = icmp ult i64 %35, 64
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
  %49 = xor i64 64, %35
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
  store %struct.Memory* %loadMem_4295b4, %struct.Memory** %MEMORY
  %loadMem_4295b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i1411 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i1412 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i1411
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i1411
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RAX.i1412, align 8
  store %struct.Memory* %loadMem_4295b8, %struct.Memory** %MEMORY
  %loadMem_4295c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i1409 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 19
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %R9D.i1410 = bitcast %union.anon* %80 to i32*
  %81 = bitcast i32* %R9D.i1410 to i64*
  %82 = load i64, i64* %PC.i1409
  %83 = add i64 %82, 6
  store i64 %83, i64* %PC.i1409
  store i64 607, i64* %81, align 8
  store %struct.Memory* %loadMem_4295c2, %struct.Memory** %MEMORY
  %loadMem_4295c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 33
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %PC.i1406 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 11
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %RDI.i1407 = bitcast %union.anon* %89 to i64*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 15
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %RBP.i1408 = bitcast %union.anon* %92 to i64*
  %93 = load i64, i64* %RBP.i1408
  %94 = sub i64 %93, 8
  %95 = load i64, i64* %RDI.i1407
  %96 = load i64, i64* %PC.i1406
  %97 = add i64 %96, 4
  store i64 %97, i64* %PC.i1406
  %98 = inttoptr i64 %94 to i64*
  store i64 %95, i64* %98
  store %struct.Memory* %loadMem_4295c8, %struct.Memory** %MEMORY
  %loadMem_4295cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i1404 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %104 to i32*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i1405 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i1405
  %109 = sub i64 %108, 12
  %110 = load i32, i32* %ESI.i
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %PC.i1404
  %113 = add i64 %112, 3
  store i64 %113, i64* %PC.i1404
  %114 = inttoptr i64 %109 to i32*
  store i32 %110, i32* %114
  store %struct.Memory* %loadMem_4295cc, %struct.Memory** %MEMORY
  %loadMem_4295cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i1401 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %EDX.i1402 = bitcast %union.anon* %120 to i32*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RBP.i1403 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %RBP.i1403
  %125 = sub i64 %124, 16
  %126 = load i32, i32* %EDX.i1402
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* %PC.i1401
  %129 = add i64 %128, 3
  store i64 %129, i64* %PC.i1401
  %130 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %130
  store %struct.Memory* %loadMem_4295cf, %struct.Memory** %MEMORY
  %loadMem_4295d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i1398 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RCX.i1399 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 15
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RBP.i1400 = bitcast %union.anon* %139 to i64*
  %140 = load i64, i64* %RBP.i1400
  %141 = sub i64 %140, 24
  %142 = load i64, i64* %RCX.i1399
  %143 = load i64, i64* %PC.i1398
  %144 = add i64 %143, 4
  store i64 %144, i64* %PC.i1398
  %145 = inttoptr i64 %141 to i64*
  store i64 %142, i64* %145
  store %struct.Memory* %loadMem_4295d2, %struct.Memory** %MEMORY
  %loadMem_4295d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 33
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %PC.i1396 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 15
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RBP.i1397 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 17
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %R8.i = bitcast %union.anon* %154 to i64*
  %155 = load i64, i64* %RBP.i1397
  %156 = sub i64 %155, 32
  %157 = load i64, i64* %R8.i
  %158 = load i64, i64* %PC.i1396
  %159 = add i64 %158, 4
  store i64 %159, i64* %PC.i1396
  %160 = inttoptr i64 %156 to i64*
  store i64 %157, i64* %160
  store %struct.Memory* %loadMem_4295d6, %struct.Memory** %MEMORY
  %loadMem_4295da = load %struct.Memory*, %struct.Memory** %MEMORY
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 33
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %PC.i1393 = bitcast %union.anon* %163 to i64*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %RCX.i1394 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 15
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RBP.i1395 = bitcast %union.anon* %169 to i64*
  %170 = load i64, i64* %RBP.i1395
  %171 = sub i64 %170, 12
  %172 = load i64, i64* %PC.i1393
  %173 = add i64 %172, 4
  store i64 %173, i64* %PC.i1393
  %174 = inttoptr i64 %171 to i32*
  %175 = load i32, i32* %174
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %RCX.i1394, align 8
  store %struct.Memory* %loadMem_4295da, %struct.Memory** %MEMORY
  %loadMem_4295de = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i1391 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RCX.i1392 = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %RCX.i1392
  %184 = load i64, i64* %PC.i1391
  %185 = add i64 %184, 4
  store i64 %185, i64* %PC.i1391
  %186 = shl i64 %183, 2
  %187 = icmp slt i64 %186, 0
  %188 = shl i64 %186, 1
  store i64 %188, i64* %RCX.i1392, align 8
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %190 = zext i1 %187 to i8
  store i8 %190, i8* %189, align 1
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %192 = trunc i64 %188 to i32
  %193 = and i32 %192, 254
  %194 = call i32 @llvm.ctpop.i32(i32 %193)
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %191, align 1
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %198, align 1
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %200 = icmp eq i64 %188, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %199, align 1
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %203 = lshr i64 %188, 63
  %204 = trunc i64 %203 to i8
  store i8 %204, i8* %202, align 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %205, align 1
  store %struct.Memory* %loadMem_4295de, %struct.Memory** %MEMORY
  %loadMem_4295e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i1388 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RAX.i1389 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 11
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %RDI.i1390 = bitcast %union.anon* %214 to i64*
  %215 = load i64, i64* %RAX.i1389
  %216 = load i64, i64* %PC.i1388
  %217 = add i64 %216, 3
  store i64 %217, i64* %PC.i1388
  store i64 %215, i64* %RDI.i1390, align 8
  store %struct.Memory* %loadMem_4295e2, %struct.Memory** %MEMORY
  %loadMem_4295e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i1386 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 19
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %223 to i32*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 9
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RSI.i1387 = bitcast %union.anon* %226 to i64*
  %227 = load i32, i32* %R9D.i
  %228 = zext i32 %227 to i64
  %229 = load i64, i64* %PC.i1386
  %230 = add i64 %229, 3
  store i64 %230, i64* %PC.i1386
  %231 = and i64 %228, 4294967295
  store i64 %231, i64* %RSI.i1387, align 8
  store %struct.Memory* %loadMem_4295e5, %struct.Memory** %MEMORY
  %loadMem_4295e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i1383 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %RCX.i1384 = bitcast %union.anon* %237 to i64*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 7
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RDX.i1385 = bitcast %union.anon* %240 to i64*
  %241 = load i64, i64* %RCX.i1384
  %242 = load i64, i64* %PC.i1383
  %243 = add i64 %242, 3
  store i64 %243, i64* %PC.i1383
  store i64 %241, i64* %RDX.i1385, align 8
  store %struct.Memory* %loadMem_4295e8, %struct.Memory** %MEMORY
  %loadMem1_4295eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 33
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %PC.i1382 = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %PC.i1382
  %248 = add i64 %247, 117365
  %249 = load i64, i64* %PC.i1382
  %250 = add i64 %249, 5
  %251 = load i64, i64* %PC.i1382
  %252 = add i64 %251, 5
  store i64 %252, i64* %PC.i1382
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = add i64 %254, -8
  %256 = inttoptr i64 %255 to i64*
  store i64 %250, i64* %256
  store i64 %255, i64* %253, align 8
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %248, i64* %257, align 8
  store %struct.Memory* %loadMem1_4295eb, %struct.Memory** %MEMORY
  %loadMem2_4295eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4295eb = load i64, i64* %3
  %call2_4295eb = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4295eb, %struct.Memory* %loadMem2_4295eb)
  store %struct.Memory* %call2_4295eb, %struct.Memory** %MEMORY
  %loadMem_4295f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i1379 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RAX.i1380 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 15
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RBP.i1381 = bitcast %union.anon* %266 to i64*
  %267 = load i64, i64* %RBP.i1381
  %268 = sub i64 %267, 40
  %269 = load i64, i64* %RAX.i1380
  %270 = load i64, i64* %PC.i1379
  %271 = add i64 %270, 4
  store i64 %271, i64* %PC.i1379
  %272 = inttoptr i64 %268 to i64*
  store i64 %269, i64* %272
  store %struct.Memory* %loadMem_4295f0, %struct.Memory** %MEMORY
  %loadMem_4295f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i1377 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 15
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RBP.i1378 = bitcast %union.anon* %278 to i64*
  %279 = load i64, i64* %RBP.i1378
  %280 = sub i64 %279, 44
  %281 = load i64, i64* %PC.i1377
  %282 = add i64 %281, 7
  store i64 %282, i64* %PC.i1377
  %283 = inttoptr i64 %280 to i32*
  store i32 0, i32* %283
  store %struct.Memory* %loadMem_4295f4, %struct.Memory** %MEMORY
  br label %block_.L_4295fb

block_.L_4295fb:                                  ; preds = %block_.L_429d54, %entry
  %loadMem_4295fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i1374 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RAX.i1375 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 15
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RBP.i1376 = bitcast %union.anon* %292 to i64*
  %293 = load i64, i64* %RBP.i1376
  %294 = sub i64 %293, 44
  %295 = load i64, i64* %PC.i1374
  %296 = add i64 %295, 3
  store i64 %296, i64* %PC.i1374
  %297 = inttoptr i64 %294 to i32*
  %298 = load i32, i32* %297
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RAX.i1375, align 8
  store %struct.Memory* %loadMem_4295fb, %struct.Memory** %MEMORY
  %loadMem_4295fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 33
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %PC.i1371 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %EAX.i1372 = bitcast %union.anon* %305 to i32*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 15
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %RBP.i1373 = bitcast %union.anon* %308 to i64*
  %309 = load i32, i32* %EAX.i1372
  %310 = zext i32 %309 to i64
  %311 = load i64, i64* %RBP.i1373
  %312 = sub i64 %311, 12
  %313 = load i64, i64* %PC.i1371
  %314 = add i64 %313, 3
  store i64 %314, i64* %PC.i1371
  %315 = inttoptr i64 %312 to i32*
  %316 = load i32, i32* %315
  %317 = sub i32 %309, %316
  %318 = icmp ult i32 %309, %316
  %319 = zext i1 %318 to i8
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %319, i8* %320, align 1
  %321 = and i32 %317, 255
  %322 = call i32 @llvm.ctpop.i32(i32 %321)
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %325, i8* %326, align 1
  %327 = xor i32 %316, %309
  %328 = xor i32 %327, %317
  %329 = lshr i32 %328, 4
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %331, i8* %332, align 1
  %333 = icmp eq i32 %317, 0
  %334 = zext i1 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %334, i8* %335, align 1
  %336 = lshr i32 %317, 31
  %337 = trunc i32 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %337, i8* %338, align 1
  %339 = lshr i32 %309, 31
  %340 = lshr i32 %316, 31
  %341 = xor i32 %340, %339
  %342 = xor i32 %336, %339
  %343 = add i32 %342, %341
  %344 = icmp eq i32 %343, 2
  %345 = zext i1 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %345, i8* %346, align 1
  store %struct.Memory* %loadMem_4295fe, %struct.Memory** %MEMORY
  %loadMem_429601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i1370 = bitcast %union.anon* %349 to i64*
  %350 = load i64, i64* %PC.i1370
  %351 = add i64 %350, 2017
  %352 = load i64, i64* %PC.i1370
  %353 = add i64 %352, 6
  %354 = load i64, i64* %PC.i1370
  %355 = add i64 %354, 6
  store i64 %355, i64* %PC.i1370
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %357 = load i8, i8* %356, align 1
  %358 = icmp ne i8 %357, 0
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %360 = load i8, i8* %359, align 1
  %361 = icmp ne i8 %360, 0
  %362 = xor i1 %358, %361
  %363 = xor i1 %362, true
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %BRANCH_TAKEN, align 1
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %366 = select i1 %362, i64 %353, i64 %351
  store i64 %366, i64* %365, align 8
  store %struct.Memory* %loadMem_429601, %struct.Memory** %MEMORY
  %loadBr_429601 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429601 = icmp eq i8 %loadBr_429601, 1
  br i1 %cmpBr_429601, label %block_.L_429de2, label %block_429607

block_429607:                                     ; preds = %block_.L_4295fb
  %loadMem_429607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 33
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %PC.i1367 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RAX.i1368 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 15
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RBP.i1369 = bitcast %union.anon* %375 to i64*
  %376 = load i64, i64* %RBP.i1369
  %377 = sub i64 %376, 16
  %378 = load i64, i64* %PC.i1367
  %379 = add i64 %378, 3
  store i64 %379, i64* %PC.i1367
  %380 = inttoptr i64 %377 to i32*
  %381 = load i32, i32* %380
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RAX.i1368, align 8
  store %struct.Memory* %loadMem_429607, %struct.Memory** %MEMORY
  %loadMem_42960a = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i1365 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RAX.i1366 = bitcast %union.anon* %388 to i64*
  %389 = load i64, i64* %RAX.i1366
  %390 = load i64, i64* %PC.i1365
  %391 = add i64 %390, 3
  store i64 %391, i64* %PC.i1365
  %392 = trunc i64 %389 to i32
  %393 = add i32 6, %392
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RAX.i1366, align 8
  %395 = icmp ult i32 %393, %392
  %396 = icmp ult i32 %393, 6
  %397 = or i1 %395, %396
  %398 = zext i1 %397 to i8
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %398, i8* %399, align 1
  %400 = and i32 %393, 255
  %401 = call i32 @llvm.ctpop.i32(i32 %400)
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %404, i8* %405, align 1
  %406 = xor i64 6, %389
  %407 = trunc i64 %406 to i32
  %408 = xor i32 %407, %393
  %409 = lshr i32 %408, 4
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %411, i8* %412, align 1
  %413 = icmp eq i32 %393, 0
  %414 = zext i1 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %414, i8* %415, align 1
  %416 = lshr i32 %393, 31
  %417 = trunc i32 %416 to i8
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %417, i8* %418, align 1
  %419 = lshr i32 %392, 31
  %420 = xor i32 %416, %419
  %421 = add i32 %420, %416
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %423, i8* %424, align 1
  store %struct.Memory* %loadMem_42960a, %struct.Memory** %MEMORY
  %loadMem_42960d = load %struct.Memory*, %struct.Memory** %MEMORY
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 33
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %PC.i1362 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 5
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RCX.i1363 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 15
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RBP.i1364 = bitcast %union.anon* %433 to i64*
  %434 = load i64, i64* %RBP.i1364
  %435 = sub i64 %434, 40
  %436 = load i64, i64* %PC.i1362
  %437 = add i64 %436, 4
  store i64 %437, i64* %PC.i1362
  %438 = inttoptr i64 %435 to i64*
  %439 = load i64, i64* %438
  store i64 %439, i64* %RCX.i1363, align 8
  store %struct.Memory* %loadMem_42960d, %struct.Memory** %MEMORY
  %loadMem_429611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i1359 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 7
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RDX.i1360 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 15
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RBP.i1361 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RBP.i1361
  %450 = sub i64 %449, 44
  %451 = load i64, i64* %PC.i1359
  %452 = add i64 %451, 4
  store i64 %452, i64* %PC.i1359
  %453 = inttoptr i64 %450 to i32*
  %454 = load i32, i32* %453
  %455 = sext i32 %454 to i64
  store i64 %455, i64* %RDX.i1360, align 8
  store %struct.Memory* %loadMem_429611, %struct.Memory** %MEMORY
  %loadMem_429615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i1357 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 7
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RDX.i1358 = bitcast %union.anon* %461 to i64*
  %462 = load i64, i64* %RDX.i1358
  %463 = load i64, i64* %PC.i1357
  %464 = add i64 %463, 4
  store i64 %464, i64* %PC.i1357
  %465 = shl i64 %462, 2
  %466 = icmp slt i64 %465, 0
  %467 = shl i64 %465, 1
  store i64 %467, i64* %RDX.i1358, align 8
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %469 = zext i1 %466 to i8
  store i8 %469, i8* %468, align 1
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %471 = trunc i64 %467 to i32
  %472 = and i32 %471, 254
  %473 = call i32 @llvm.ctpop.i32(i32 %472)
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  %476 = xor i8 %475, 1
  store i8 %476, i8* %470, align 1
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %477, align 1
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %479 = icmp eq i64 %467, 0
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %478, align 1
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %482 = lshr i64 %467, 63
  %483 = trunc i64 %482 to i8
  store i8 %483, i8* %481, align 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %484, align 1
  store %struct.Memory* %loadMem_429615, %struct.Memory** %MEMORY
  %loadMem_429619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 33
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %PC.i1354 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 5
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RCX.i1355 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 7
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %RDX.i1356 = bitcast %union.anon* %493 to i64*
  %494 = load i64, i64* %RCX.i1355
  %495 = load i64, i64* %RDX.i1356
  %496 = load i64, i64* %PC.i1354
  %497 = add i64 %496, 3
  store i64 %497, i64* %PC.i1354
  %498 = add i64 %495, %494
  store i64 %498, i64* %RCX.i1355, align 8
  %499 = icmp ult i64 %498, %494
  %500 = icmp ult i64 %498, %495
  %501 = or i1 %499, %500
  %502 = zext i1 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %502, i8* %503, align 1
  %504 = trunc i64 %498 to i32
  %505 = and i32 %504, 255
  %506 = call i32 @llvm.ctpop.i32(i32 %505)
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %509, i8* %510, align 1
  %511 = xor i64 %495, %494
  %512 = xor i64 %511, %498
  %513 = lshr i64 %512, 4
  %514 = trunc i64 %513 to i8
  %515 = and i8 %514, 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %515, i8* %516, align 1
  %517 = icmp eq i64 %498, 0
  %518 = zext i1 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %518, i8* %519, align 1
  %520 = lshr i64 %498, 63
  %521 = trunc i64 %520 to i8
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %521, i8* %522, align 1
  %523 = lshr i64 %494, 63
  %524 = lshr i64 %495, 63
  %525 = xor i64 %520, %523
  %526 = xor i64 %520, %524
  %527 = add i64 %525, %526
  %528 = icmp eq i64 %527, 2
  %529 = zext i1 %528 to i8
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %529, i8* %530, align 1
  store %struct.Memory* %loadMem_429619, %struct.Memory** %MEMORY
  %loadMem_42961c = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i1351 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %EAX.i1352 = bitcast %union.anon* %536 to i32*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 11
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %RDI.i1353 = bitcast %union.anon* %539 to i64*
  %540 = load i32, i32* %EAX.i1352
  %541 = zext i32 %540 to i64
  %542 = load i64, i64* %PC.i1351
  %543 = add i64 %542, 2
  store i64 %543, i64* %PC.i1351
  %544 = and i64 %541, 4294967295
  store i64 %544, i64* %RDI.i1353, align 8
  store %struct.Memory* %loadMem_42961c, %struct.Memory** %MEMORY
  %loadMem_42961e = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i1348 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 5
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RCX.i1349 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 9
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RSI.i1350 = bitcast %union.anon* %553 to i64*
  %554 = load i64, i64* %RCX.i1349
  %555 = load i64, i64* %PC.i1348
  %556 = add i64 %555, 3
  store i64 %556, i64* %PC.i1348
  store i64 %554, i64* %RSI.i1350, align 8
  store %struct.Memory* %loadMem_42961e, %struct.Memory** %MEMORY
  %loadMem1_429621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i1347 = bitcast %union.anon* %559 to i64*
  %560 = load i64, i64* %PC.i1347
  %561 = add i64 %560, 147359
  %562 = load i64, i64* %PC.i1347
  %563 = add i64 %562, 5
  %564 = load i64, i64* %PC.i1347
  %565 = add i64 %564, 5
  store i64 %565, i64* %PC.i1347
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  %568 = add i64 %567, -8
  %569 = inttoptr i64 %568 to i64*
  store i64 %563, i64* %569
  store i64 %568, i64* %566, align 8
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %561, i64* %570, align 8
  store %struct.Memory* %loadMem1_429621, %struct.Memory** %MEMORY
  %loadMem2_429621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_429621 = load i64, i64* %3
  %call2_429621 = call %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* %0, i64 %loadPC_429621, %struct.Memory* %loadMem2_429621)
  store %struct.Memory* %call2_429621, %struct.Memory** %MEMORY
  %loadMem_429626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i1344 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 5
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RCX.i1345 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 15
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RBP.i1346 = bitcast %union.anon* %579 to i64*
  %580 = load i64, i64* %RBP.i1346
  %581 = sub i64 %580, 40
  %582 = load i64, i64* %PC.i1344
  %583 = add i64 %582, 4
  store i64 %583, i64* %PC.i1344
  %584 = inttoptr i64 %581 to i64*
  %585 = load i64, i64* %584
  store i64 %585, i64* %RCX.i1345, align 8
  store %struct.Memory* %loadMem_429626, %struct.Memory** %MEMORY
  %loadMem_42962a = load %struct.Memory*, %struct.Memory** %MEMORY
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 33
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %PC.i1341 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 7
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RDX.i1342 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 15
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RBP.i1343 = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %RBP.i1343
  %596 = sub i64 %595, 44
  %597 = load i64, i64* %PC.i1341
  %598 = add i64 %597, 4
  store i64 %598, i64* %PC.i1341
  %599 = inttoptr i64 %596 to i32*
  %600 = load i32, i32* %599
  %601 = sext i32 %600 to i64
  store i64 %601, i64* %RDX.i1342, align 8
  store %struct.Memory* %loadMem_42962a, %struct.Memory** %MEMORY
  %loadMem_42962e = load %struct.Memory*, %struct.Memory** %MEMORY
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 33
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %PC.i1338 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 5
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RCX.i1339 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 7
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %RDX.i1340 = bitcast %union.anon* %610 to i64*
  %611 = load i64, i64* %RCX.i1339
  %612 = load i64, i64* %RDX.i1340
  %613 = mul i64 %612, 8
  %614 = add i64 %613, %611
  %615 = load i64, i64* %PC.i1338
  %616 = add i64 %615, 4
  store i64 %616, i64* %PC.i1338
  %617 = inttoptr i64 %614 to i64*
  %618 = load i64, i64* %617
  store i64 %618, i64* %RCX.i1339, align 8
  store %struct.Memory* %loadMem_42962e, %struct.Memory** %MEMORY
  %loadMem_429632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i1336 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 5
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RCX.i1337 = bitcast %union.anon* %624 to i64*
  %625 = load i64, i64* %RCX.i1337
  %626 = add i64 %625, 8
  %627 = load i64, i64* %PC.i1336
  %628 = add i64 %627, 4
  store i64 %628, i64* %PC.i1336
  %629 = inttoptr i64 %626 to i64*
  %630 = load i64, i64* %629
  store i64 %630, i64* %RCX.i1337, align 8
  store %struct.Memory* %loadMem_429632, %struct.Memory** %MEMORY
  %loadMem_429636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i1334 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 5
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RCX.i1335 = bitcast %union.anon* %636 to i64*
  %637 = load i64, i64* %RCX.i1335
  %638 = load i64, i64* %PC.i1334
  %639 = add i64 %638, 3
  store i64 %639, i64* %PC.i1334
  %640 = inttoptr i64 %637 to i8*
  store i8 4, i8* %640
  store %struct.Memory* %loadMem_429636, %struct.Memory** %MEMORY
  %loadMem_429639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 33
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %PC.i1331 = bitcast %union.anon* %643 to i64*
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 5
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %RCX.i1332 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 15
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %RBP.i1333 = bitcast %union.anon* %649 to i64*
  %650 = load i64, i64* %RBP.i1333
  %651 = sub i64 %650, 40
  %652 = load i64, i64* %PC.i1331
  %653 = add i64 %652, 4
  store i64 %653, i64* %PC.i1331
  %654 = inttoptr i64 %651 to i64*
  %655 = load i64, i64* %654
  store i64 %655, i64* %RCX.i1332, align 8
  store %struct.Memory* %loadMem_429639, %struct.Memory** %MEMORY
  %loadMem_42963d = load %struct.Memory*, %struct.Memory** %MEMORY
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 33
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %PC.i1328 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 7
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %RDX.i1329 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 15
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RBP.i1330 = bitcast %union.anon* %664 to i64*
  %665 = load i64, i64* %RBP.i1330
  %666 = sub i64 %665, 44
  %667 = load i64, i64* %PC.i1328
  %668 = add i64 %667, 4
  store i64 %668, i64* %PC.i1328
  %669 = inttoptr i64 %666 to i32*
  %670 = load i32, i32* %669
  %671 = sext i32 %670 to i64
  store i64 %671, i64* %RDX.i1329, align 8
  store %struct.Memory* %loadMem_42963d, %struct.Memory** %MEMORY
  %loadMem_429641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i1325 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 5
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RCX.i1326 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 7
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RDX.i1327 = bitcast %union.anon* %680 to i64*
  %681 = load i64, i64* %RCX.i1326
  %682 = load i64, i64* %RDX.i1327
  %683 = mul i64 %682, 8
  %684 = add i64 %683, %681
  %685 = load i64, i64* %PC.i1325
  %686 = add i64 %685, 4
  store i64 %686, i64* %PC.i1325
  %687 = inttoptr i64 %684 to i64*
  %688 = load i64, i64* %687
  store i64 %688, i64* %RCX.i1326, align 8
  store %struct.Memory* %loadMem_429641, %struct.Memory** %MEMORY
  %loadMem_429645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 33
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %PC.i1323 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 5
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %RCX.i1324 = bitcast %union.anon* %694 to i64*
  %695 = load i64, i64* %RCX.i1324
  %696 = add i64 %695, 16
  %697 = load i64, i64* %PC.i1323
  %698 = add i64 %697, 4
  store i64 %698, i64* %PC.i1323
  %699 = inttoptr i64 %696 to i64*
  %700 = load i64, i64* %699
  store i64 %700, i64* %RCX.i1324, align 8
  store %struct.Memory* %loadMem_429645, %struct.Memory** %MEMORY
  %loadMem_429649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i1321 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 5
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RCX.i1322 = bitcast %union.anon* %706 to i64*
  %707 = load i64, i64* %RCX.i1322
  %708 = load i64, i64* %PC.i1321
  %709 = add i64 %708, 6
  store i64 %709, i64* %PC.i1321
  %710 = inttoptr i64 %707 to i32*
  store i32 0, i32* %710
  store %struct.Memory* %loadMem_429649, %struct.Memory** %MEMORY
  %loadMem_42964f = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i1318 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 5
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RCX.i1319 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 15
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RBP.i1320 = bitcast %union.anon* %719 to i64*
  %720 = load i64, i64* %RBP.i1320
  %721 = sub i64 %720, 40
  %722 = load i64, i64* %PC.i1318
  %723 = add i64 %722, 4
  store i64 %723, i64* %PC.i1318
  %724 = inttoptr i64 %721 to i64*
  %725 = load i64, i64* %724
  store i64 %725, i64* %RCX.i1319, align 8
  store %struct.Memory* %loadMem_42964f, %struct.Memory** %MEMORY
  %loadMem_429653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i1315 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 7
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RDX.i1316 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 15
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RBP.i1317 = bitcast %union.anon* %734 to i64*
  %735 = load i64, i64* %RBP.i1317
  %736 = sub i64 %735, 44
  %737 = load i64, i64* %PC.i1315
  %738 = add i64 %737, 4
  store i64 %738, i64* %PC.i1315
  %739 = inttoptr i64 %736 to i32*
  %740 = load i32, i32* %739
  %741 = sext i32 %740 to i64
  store i64 %741, i64* %RDX.i1316, align 8
  store %struct.Memory* %loadMem_429653, %struct.Memory** %MEMORY
  %loadMem_429657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 33
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %PC.i1312 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 5
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RCX.i1313 = bitcast %union.anon* %747 to i64*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 7
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %RDX.i1314 = bitcast %union.anon* %750 to i64*
  %751 = load i64, i64* %RCX.i1313
  %752 = load i64, i64* %RDX.i1314
  %753 = mul i64 %752, 8
  %754 = add i64 %753, %751
  %755 = load i64, i64* %PC.i1312
  %756 = add i64 %755, 4
  store i64 %756, i64* %PC.i1312
  %757 = inttoptr i64 %754 to i64*
  %758 = load i64, i64* %757
  store i64 %758, i64* %RCX.i1313, align 8
  store %struct.Memory* %loadMem_429657, %struct.Memory** %MEMORY
  %loadMem_42965b = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i1310 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 5
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %RCX.i1311 = bitcast %union.anon* %764 to i64*
  %765 = load i64, i64* %RCX.i1311
  %766 = add i64 %765, 24
  %767 = load i64, i64* %PC.i1310
  %768 = add i64 %767, 4
  store i64 %768, i64* %PC.i1310
  %769 = inttoptr i64 %766 to i64*
  %770 = load i64, i64* %769
  store i64 %770, i64* %RCX.i1311, align 8
  store %struct.Memory* %loadMem_42965b, %struct.Memory** %MEMORY
  %loadMem_42965f = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i1308 = bitcast %union.anon* %773 to i64*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 5
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %RCX.i1309 = bitcast %union.anon* %776 to i64*
  %777 = load i64, i64* %RCX.i1309
  %778 = load i64, i64* %PC.i1308
  %779 = add i64 %778, 6
  store i64 %779, i64* %PC.i1308
  %780 = inttoptr i64 %777 to i32*
  store i32 0, i32* %780
  store %struct.Memory* %loadMem_42965f, %struct.Memory** %MEMORY
  %loadMem_429665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 33
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %PC.i1305 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 5
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RCX.i1306 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 15
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RBP.i1307 = bitcast %union.anon* %789 to i64*
  %790 = load i64, i64* %RBP.i1307
  %791 = sub i64 %790, 40
  %792 = load i64, i64* %PC.i1305
  %793 = add i64 %792, 4
  store i64 %793, i64* %PC.i1305
  %794 = inttoptr i64 %791 to i64*
  %795 = load i64, i64* %794
  store i64 %795, i64* %RCX.i1306, align 8
  store %struct.Memory* %loadMem_429665, %struct.Memory** %MEMORY
  %loadMem_429669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 33
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %PC.i1302 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 7
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %RDX.i1303 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 15
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RBP.i1304 = bitcast %union.anon* %804 to i64*
  %805 = load i64, i64* %RBP.i1304
  %806 = sub i64 %805, 44
  %807 = load i64, i64* %PC.i1302
  %808 = add i64 %807, 4
  store i64 %808, i64* %PC.i1302
  %809 = inttoptr i64 %806 to i32*
  %810 = load i32, i32* %809
  %811 = sext i32 %810 to i64
  store i64 %811, i64* %RDX.i1303, align 8
  store %struct.Memory* %loadMem_429669, %struct.Memory** %MEMORY
  %loadMem_42966d = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i1299 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 5
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %RCX.i1300 = bitcast %union.anon* %817 to i64*
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 7
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %RDX.i1301 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %RCX.i1300
  %822 = load i64, i64* %RDX.i1301
  %823 = mul i64 %822, 8
  %824 = add i64 %823, %821
  %825 = load i64, i64* %PC.i1299
  %826 = add i64 %825, 4
  store i64 %826, i64* %PC.i1299
  %827 = inttoptr i64 %824 to i64*
  %828 = load i64, i64* %827
  store i64 %828, i64* %RCX.i1300, align 8
  store %struct.Memory* %loadMem_42966d, %struct.Memory** %MEMORY
  %loadMem_429671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 33
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %PC.i1297 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 5
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RCX.i1298 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RCX.i1298
  %836 = add i64 %835, 8
  %837 = load i64, i64* %PC.i1297
  %838 = add i64 %837, 4
  store i64 %838, i64* %PC.i1297
  %839 = inttoptr i64 %836 to i64*
  %840 = load i64, i64* %839
  store i64 %840, i64* %RCX.i1298, align 8
  store %struct.Memory* %loadMem_429671, %struct.Memory** %MEMORY
  %loadMem_429675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i1295 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 5
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RCX.i1296 = bitcast %union.anon* %846 to i64*
  %847 = load i64, i64* %RCX.i1296
  %848 = add i64 %847, 1
  %849 = load i64, i64* %PC.i1295
  %850 = add i64 %849, 4
  store i64 %850, i64* %PC.i1295
  %851 = inttoptr i64 %848 to i8*
  store i8 5, i8* %851
  store %struct.Memory* %loadMem_429675, %struct.Memory** %MEMORY
  %loadMem_429679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 33
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %PC.i1292 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 5
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RCX.i1293 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 15
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %RBP.i1294 = bitcast %union.anon* %860 to i64*
  %861 = load i64, i64* %RBP.i1294
  %862 = sub i64 %861, 40
  %863 = load i64, i64* %PC.i1292
  %864 = add i64 %863, 4
  store i64 %864, i64* %PC.i1292
  %865 = inttoptr i64 %862 to i64*
  %866 = load i64, i64* %865
  store i64 %866, i64* %RCX.i1293, align 8
  store %struct.Memory* %loadMem_429679, %struct.Memory** %MEMORY
  %loadMem_42967d = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i1289 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 7
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RDX.i1290 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 15
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RBP.i1291 = bitcast %union.anon* %875 to i64*
  %876 = load i64, i64* %RBP.i1291
  %877 = sub i64 %876, 44
  %878 = load i64, i64* %PC.i1289
  %879 = add i64 %878, 4
  store i64 %879, i64* %PC.i1289
  %880 = inttoptr i64 %877 to i32*
  %881 = load i32, i32* %880
  %882 = sext i32 %881 to i64
  store i64 %882, i64* %RDX.i1290, align 8
  store %struct.Memory* %loadMem_42967d, %struct.Memory** %MEMORY
  %loadMem_429681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i1286 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 5
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %RCX.i1287 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 7
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RDX.i1288 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RCX.i1287
  %893 = load i64, i64* %RDX.i1288
  %894 = mul i64 %893, 8
  %895 = add i64 %894, %892
  %896 = load i64, i64* %PC.i1286
  %897 = add i64 %896, 4
  store i64 %897, i64* %PC.i1286
  %898 = inttoptr i64 %895 to i64*
  %899 = load i64, i64* %898
  store i64 %899, i64* %RCX.i1287, align 8
  store %struct.Memory* %loadMem_429681, %struct.Memory** %MEMORY
  %loadMem_429685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i1284 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 5
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RCX.i1285 = bitcast %union.anon* %905 to i64*
  %906 = load i64, i64* %RCX.i1285
  %907 = add i64 %906, 16
  %908 = load i64, i64* %PC.i1284
  %909 = add i64 %908, 4
  store i64 %909, i64* %PC.i1284
  %910 = inttoptr i64 %907 to i64*
  %911 = load i64, i64* %910
  store i64 %911, i64* %RCX.i1285, align 8
  store %struct.Memory* %loadMem_429685, %struct.Memory** %MEMORY
  %loadMem_429689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i1282 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 5
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %RCX.i1283 = bitcast %union.anon* %917 to i64*
  %918 = load i64, i64* %RCX.i1283
  %919 = add i64 %918, 4
  %920 = load i64, i64* %PC.i1282
  %921 = add i64 %920, 7
  store i64 %921, i64* %PC.i1282
  %922 = inttoptr i64 %919 to i32*
  store i32 0, i32* %922
  store %struct.Memory* %loadMem_429689, %struct.Memory** %MEMORY
  %loadMem_429690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 33
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %PC.i1279 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 5
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RCX.i1280 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 15
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RBP.i1281 = bitcast %union.anon* %931 to i64*
  %932 = load i64, i64* %RBP.i1281
  %933 = sub i64 %932, 40
  %934 = load i64, i64* %PC.i1279
  %935 = add i64 %934, 4
  store i64 %935, i64* %PC.i1279
  %936 = inttoptr i64 %933 to i64*
  %937 = load i64, i64* %936
  store i64 %937, i64* %RCX.i1280, align 8
  store %struct.Memory* %loadMem_429690, %struct.Memory** %MEMORY
  %loadMem_429694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 33
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %PC.i1276 = bitcast %union.anon* %940 to i64*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 7
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RDX.i1277 = bitcast %union.anon* %943 to i64*
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 15
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %RBP.i1278 = bitcast %union.anon* %946 to i64*
  %947 = load i64, i64* %RBP.i1278
  %948 = sub i64 %947, 44
  %949 = load i64, i64* %PC.i1276
  %950 = add i64 %949, 4
  store i64 %950, i64* %PC.i1276
  %951 = inttoptr i64 %948 to i32*
  %952 = load i32, i32* %951
  %953 = sext i32 %952 to i64
  store i64 %953, i64* %RDX.i1277, align 8
  store %struct.Memory* %loadMem_429694, %struct.Memory** %MEMORY
  %loadMem_429698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 33
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %PC.i1273 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 5
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RCX.i1274 = bitcast %union.anon* %959 to i64*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 7
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %RDX.i1275 = bitcast %union.anon* %962 to i64*
  %963 = load i64, i64* %RCX.i1274
  %964 = load i64, i64* %RDX.i1275
  %965 = mul i64 %964, 8
  %966 = add i64 %965, %963
  %967 = load i64, i64* %PC.i1273
  %968 = add i64 %967, 4
  store i64 %968, i64* %PC.i1273
  %969 = inttoptr i64 %966 to i64*
  %970 = load i64, i64* %969
  store i64 %970, i64* %RCX.i1274, align 8
  store %struct.Memory* %loadMem_429698, %struct.Memory** %MEMORY
  %loadMem_42969c = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i1271 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 5
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RCX.i1272 = bitcast %union.anon* %976 to i64*
  %977 = load i64, i64* %RCX.i1272
  %978 = add i64 %977, 24
  %979 = load i64, i64* %PC.i1271
  %980 = add i64 %979, 4
  store i64 %980, i64* %PC.i1271
  %981 = inttoptr i64 %978 to i64*
  %982 = load i64, i64* %981
  store i64 %982, i64* %RCX.i1272, align 8
  store %struct.Memory* %loadMem_42969c, %struct.Memory** %MEMORY
  %loadMem_4296a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i1269 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 5
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RCX.i1270 = bitcast %union.anon* %988 to i64*
  %989 = load i64, i64* %RCX.i1270
  %990 = add i64 %989, 4
  %991 = load i64, i64* %PC.i1269
  %992 = add i64 %991, 7
  store i64 %992, i64* %PC.i1269
  %993 = inttoptr i64 %990 to i32*
  store i32 0, i32* %993
  store %struct.Memory* %loadMem_4296a0, %struct.Memory** %MEMORY
  %loadMem_4296a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 33
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %PC.i1267 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 15
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %RBP.i1268 = bitcast %union.anon* %999 to i64*
  %1000 = load i64, i64* %RBP.i1268
  %1001 = sub i64 %1000, 48
  %1002 = load i64, i64* %PC.i1267
  %1003 = add i64 %1002, 7
  store i64 %1003, i64* %PC.i1267
  %1004 = inttoptr i64 %1001 to i32*
  store i32 1, i32* %1004
  store %struct.Memory* %loadMem_4296a7, %struct.Memory** %MEMORY
  %loadMem_4296ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i1265 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 15
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RBP.i1266 = bitcast %union.anon* %1010 to i64*
  %1011 = load i64, i64* %RBP.i1266
  %1012 = sub i64 %1011, 52
  %1013 = load i64, i64* %PC.i1265
  %1014 = add i64 %1013, 7
  store i64 %1014, i64* %PC.i1265
  %1015 = inttoptr i64 %1012 to i32*
  store i32 0, i32* %1015
  store %struct.Memory* %loadMem_4296ae, %struct.Memory** %MEMORY
  %loadMem_4296b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i1263 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 15
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %RBP.i1264 = bitcast %union.anon* %1021 to i64*
  %1022 = load i64, i64* %RBP.i1264
  %1023 = sub i64 %1022, 60
  %1024 = load i64, i64* %PC.i1263
  %1025 = add i64 %1024, 7
  store i64 %1025, i64* %PC.i1263
  %1026 = inttoptr i64 %1023 to i32*
  store i32 2, i32* %1026
  store %struct.Memory* %loadMem_4296b5, %struct.Memory** %MEMORY
  %loadMem_4296bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i1261 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 15
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %RBP.i1262 = bitcast %union.anon* %1032 to i64*
  %1033 = load i64, i64* %RBP.i1262
  %1034 = sub i64 %1033, 56
  %1035 = load i64, i64* %PC.i1261
  %1036 = add i64 %1035, 7
  store i64 %1036, i64* %PC.i1261
  %1037 = inttoptr i64 %1034 to i32*
  store i32 0, i32* %1037
  store %struct.Memory* %loadMem_4296bc, %struct.Memory** %MEMORY
  br label %block_.L_4296c3

block_.L_4296c3:                                  ; preds = %block_.L_429d46, %block_429607
  %loadMem_4296c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 33
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %PC.i1258 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 1
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %RAX.i1259 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 15
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RBP.i1260 = bitcast %union.anon* %1046 to i64*
  %1047 = load i64, i64* %RBP.i1260
  %1048 = sub i64 %1047, 56
  %1049 = load i64, i64* %PC.i1258
  %1050 = add i64 %1049, 3
  store i64 %1050, i64* %PC.i1258
  %1051 = inttoptr i64 %1048 to i32*
  %1052 = load i32, i32* %1051
  %1053 = zext i32 %1052 to i64
  store i64 %1053, i64* %RAX.i1259, align 8
  store %struct.Memory* %loadMem_4296c3, %struct.Memory** %MEMORY
  %loadMem_4296c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i1255 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 1
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %EAX.i1256 = bitcast %union.anon* %1059 to i32*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 15
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RBP.i1257 = bitcast %union.anon* %1062 to i64*
  %1063 = load i32, i32* %EAX.i1256
  %1064 = zext i32 %1063 to i64
  %1065 = load i64, i64* %RBP.i1257
  %1066 = sub i64 %1065, 16
  %1067 = load i64, i64* %PC.i1255
  %1068 = add i64 %1067, 3
  store i64 %1068, i64* %PC.i1255
  %1069 = inttoptr i64 %1066 to i32*
  %1070 = load i32, i32* %1069
  %1071 = sub i32 %1063, %1070
  %1072 = icmp ult i32 %1063, %1070
  %1073 = zext i1 %1072 to i8
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1073, i8* %1074, align 1
  %1075 = and i32 %1071, 255
  %1076 = call i32 @llvm.ctpop.i32(i32 %1075)
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  %1079 = xor i8 %1078, 1
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1079, i8* %1080, align 1
  %1081 = xor i32 %1070, %1063
  %1082 = xor i32 %1081, %1071
  %1083 = lshr i32 %1082, 4
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1085, i8* %1086, align 1
  %1087 = icmp eq i32 %1071, 0
  %1088 = zext i1 %1087 to i8
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1088, i8* %1089, align 1
  %1090 = lshr i32 %1071, 31
  %1091 = trunc i32 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1091, i8* %1092, align 1
  %1093 = lshr i32 %1063, 31
  %1094 = lshr i32 %1070, 31
  %1095 = xor i32 %1094, %1093
  %1096 = xor i32 %1090, %1093
  %1097 = add i32 %1096, %1095
  %1098 = icmp eq i32 %1097, 2
  %1099 = zext i1 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1099, i8* %1100, align 1
  store %struct.Memory* %loadMem_4296c6, %struct.Memory** %MEMORY
  %loadMem_4296c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 33
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %PC.i1254 = bitcast %union.anon* %1103 to i64*
  %1104 = load i64, i64* %PC.i1254
  %1105 = add i64 %1104, 1675
  %1106 = load i64, i64* %PC.i1254
  %1107 = add i64 %1106, 6
  %1108 = load i64, i64* %PC.i1254
  %1109 = add i64 %1108, 6
  store i64 %1109, i64* %PC.i1254
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1111 = load i8, i8* %1110, align 1
  %1112 = icmp ne i8 %1111, 0
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1114 = load i8, i8* %1113, align 1
  %1115 = icmp ne i8 %1114, 0
  %1116 = xor i1 %1112, %1115
  %1117 = xor i1 %1116, true
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %BRANCH_TAKEN, align 1
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1120 = select i1 %1116, i64 %1107, i64 %1105
  store i64 %1120, i64* %1119, align 8
  store %struct.Memory* %loadMem_4296c9, %struct.Memory** %MEMORY
  %loadBr_4296c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4296c9 = icmp eq i8 %loadBr_4296c9, 1
  br i1 %cmpBr_4296c9, label %block_.L_429d54, label %block_4296cf

block_4296cf:                                     ; preds = %block_.L_4296c3
  %loadMem_4296cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i1251 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 1
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RAX.i1252 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 15
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %RBP.i1253 = bitcast %union.anon* %1129 to i64*
  %1130 = load i64, i64* %RBP.i1253
  %1131 = sub i64 %1130, 40
  %1132 = load i64, i64* %PC.i1251
  %1133 = add i64 %1132, 4
  store i64 %1133, i64* %PC.i1251
  %1134 = inttoptr i64 %1131 to i64*
  %1135 = load i64, i64* %1134
  store i64 %1135, i64* %RAX.i1252, align 8
  store %struct.Memory* %loadMem_4296cf, %struct.Memory** %MEMORY
  %loadMem_4296d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i1248 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 5
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RCX.i1249 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 15
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RBP.i1250 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %RBP.i1250
  %1146 = sub i64 %1145, 44
  %1147 = load i64, i64* %PC.i1248
  %1148 = add i64 %1147, 4
  store i64 %1148, i64* %PC.i1248
  %1149 = inttoptr i64 %1146 to i32*
  %1150 = load i32, i32* %1149
  %1151 = sext i32 %1150 to i64
  store i64 %1151, i64* %RCX.i1249, align 8
  store %struct.Memory* %loadMem_4296d3, %struct.Memory** %MEMORY
  %loadMem_4296d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i1245 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 1
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RAX.i1246 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 5
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RCX.i1247 = bitcast %union.anon* %1160 to i64*
  %1161 = load i64, i64* %RAX.i1246
  %1162 = load i64, i64* %RCX.i1247
  %1163 = mul i64 %1162, 8
  %1164 = add i64 %1163, %1161
  %1165 = load i64, i64* %PC.i1245
  %1166 = add i64 %1165, 4
  store i64 %1166, i64* %PC.i1245
  %1167 = inttoptr i64 %1164 to i64*
  %1168 = load i64, i64* %1167
  store i64 %1168, i64* %RAX.i1246, align 8
  store %struct.Memory* %loadMem_4296d7, %struct.Memory** %MEMORY
  %loadMem_4296db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i1243 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 1
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RAX.i1244 = bitcast %union.anon* %1174 to i64*
  %1175 = load i64, i64* %RAX.i1244
  %1176 = add i64 %1175, 8
  %1177 = load i64, i64* %PC.i1243
  %1178 = add i64 %1177, 4
  store i64 %1178, i64* %PC.i1243
  %1179 = inttoptr i64 %1176 to i64*
  %1180 = load i64, i64* %1179
  store i64 %1180, i64* %RAX.i1244, align 8
  store %struct.Memory* %loadMem_4296db, %struct.Memory** %MEMORY
  %loadMem_4296df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 33
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %PC.i1240 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 5
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RCX.i1241 = bitcast %union.anon* %1186 to i64*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 15
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %RBP.i1242 = bitcast %union.anon* %1189 to i64*
  %1190 = load i64, i64* %RBP.i1242
  %1191 = sub i64 %1190, 60
  %1192 = load i64, i64* %PC.i1240
  %1193 = add i64 %1192, 4
  store i64 %1193, i64* %PC.i1240
  %1194 = inttoptr i64 %1191 to i32*
  %1195 = load i32, i32* %1194
  %1196 = sext i32 %1195 to i64
  store i64 %1196, i64* %RCX.i1241, align 8
  store %struct.Memory* %loadMem_4296df, %struct.Memory** %MEMORY
  %loadMem_4296e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i1237 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 1
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RAX.i1238 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 5
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RCX.i1239 = bitcast %union.anon* %1205 to i64*
  %1206 = load i64, i64* %RAX.i1238
  %1207 = load i64, i64* %RCX.i1239
  %1208 = add i64 %1207, %1206
  %1209 = load i64, i64* %PC.i1237
  %1210 = add i64 %1209, 4
  store i64 %1210, i64* %PC.i1237
  %1211 = inttoptr i64 %1208 to i8*
  store i8 0, i8* %1211
  store %struct.Memory* %loadMem_4296e3, %struct.Memory** %MEMORY
  %loadMem_4296e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 33
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %PC.i1234 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 1
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RAX.i1235 = bitcast %union.anon* %1217 to i64*
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 15
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %RBP.i1236 = bitcast %union.anon* %1220 to i64*
  %1221 = load i64, i64* %RBP.i1236
  %1222 = sub i64 %1221, 24
  %1223 = load i64, i64* %PC.i1234
  %1224 = add i64 %1223, 4
  store i64 %1224, i64* %PC.i1234
  %1225 = inttoptr i64 %1222 to i64*
  %1226 = load i64, i64* %1225
  store i64 %1226, i64* %RAX.i1235, align 8
  store %struct.Memory* %loadMem_4296e7, %struct.Memory** %MEMORY
  %loadMem_4296eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 33
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %PC.i1231 = bitcast %union.anon* %1229 to i64*
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 7
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %RDX.i1232 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 15
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %RBP.i1233 = bitcast %union.anon* %1235 to i64*
  %1236 = load i64, i64* %RBP.i1233
  %1237 = sub i64 %1236, 56
  %1238 = load i64, i64* %PC.i1231
  %1239 = add i64 %1238, 3
  store i64 %1239, i64* %PC.i1231
  %1240 = inttoptr i64 %1237 to i32*
  %1241 = load i32, i32* %1240
  %1242 = zext i32 %1241 to i64
  store i64 %1242, i64* %RDX.i1232, align 8
  store %struct.Memory* %loadMem_4296eb, %struct.Memory** %MEMORY
  %loadMem_4296ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 33
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %PC.i1229 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 7
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RDX.i1230 = bitcast %union.anon* %1248 to i64*
  %1249 = load i64, i64* %RDX.i1230
  %1250 = load i64, i64* %PC.i1229
  %1251 = add i64 %1250, 3
  store i64 %1251, i64* %PC.i1229
  %1252 = trunc i64 %1249 to i32
  %1253 = add i32 1, %1252
  %1254 = zext i32 %1253 to i64
  store i64 %1254, i64* %RDX.i1230, align 8
  %1255 = icmp ult i32 %1253, %1252
  %1256 = icmp ult i32 %1253, 1
  %1257 = or i1 %1255, %1256
  %1258 = zext i1 %1257 to i8
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1258, i8* %1259, align 1
  %1260 = and i32 %1253, 255
  %1261 = call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1264, i8* %1265, align 1
  %1266 = xor i64 1, %1249
  %1267 = trunc i64 %1266 to i32
  %1268 = xor i32 %1267, %1253
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1271, i8* %1272, align 1
  %1273 = icmp eq i32 %1253, 0
  %1274 = zext i1 %1273 to i8
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1274, i8* %1275, align 1
  %1276 = lshr i32 %1253, 31
  %1277 = trunc i32 %1276 to i8
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1277, i8* %1278, align 1
  %1279 = lshr i32 %1252, 31
  %1280 = xor i32 %1276, %1279
  %1281 = add i32 %1280, %1276
  %1282 = icmp eq i32 %1281, 2
  %1283 = zext i1 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1283, i8* %1284, align 1
  store %struct.Memory* %loadMem_4296ee, %struct.Memory** %MEMORY
  %loadMem_4296f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 33
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %PC.i1226 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 7
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %EDX.i1227 = bitcast %union.anon* %1290 to i32*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 5
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %RCX.i1228 = bitcast %union.anon* %1293 to i64*
  %1294 = load i32, i32* %EDX.i1227
  %1295 = zext i32 %1294 to i64
  %1296 = load i64, i64* %PC.i1226
  %1297 = add i64 %1296, 3
  store i64 %1297, i64* %PC.i1226
  %1298 = shl i64 %1295, 32
  %1299 = ashr exact i64 %1298, 32
  store i64 %1299, i64* %RCX.i1228, align 8
  store %struct.Memory* %loadMem_4296f1, %struct.Memory** %MEMORY
  %loadMem_4296f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 33
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %PC.i1222 = bitcast %union.anon* %1302 to i64*
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 1
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %RAX.i1223 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 5
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %RCX.i1224 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 7
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RDX.i1225 = bitcast %union.anon* %1311 to i64*
  %1312 = load i64, i64* %RAX.i1223
  %1313 = load i64, i64* %RCX.i1224
  %1314 = mul i64 %1313, 4
  %1315 = add i64 %1314, %1312
  %1316 = load i64, i64* %PC.i1222
  %1317 = add i64 %1316, 3
  store i64 %1317, i64* %PC.i1222
  %1318 = inttoptr i64 %1315 to i32*
  %1319 = load i32, i32* %1318
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RDX.i1225, align 8
  store %struct.Memory* %loadMem_4296f4, %struct.Memory** %MEMORY
  %loadMem_4296f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 33
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %PC.i1220 = bitcast %union.anon* %1323 to i64*
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 7
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %RDX.i1221 = bitcast %union.anon* %1326 to i64*
  %1327 = load i64, i64* %RDX.i1221
  %1328 = load i64, i64* %PC.i1220
  %1329 = add i64 %1328, 3
  store i64 %1329, i64* %PC.i1220
  %1330 = and i64 2, %1327
  %1331 = trunc i64 %1330 to i32
  store i64 %1330, i64* %RDX.i1221, align 8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1332, align 1
  %1333 = and i32 %1331, 255
  %1334 = call i32 @llvm.ctpop.i32(i32 %1333)
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1337, i8* %1338, align 1
  %1339 = icmp eq i32 %1331, 0
  %1340 = zext i1 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1340, i8* %1341, align 1
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1342, align 1
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1343, align 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1344, align 1
  store %struct.Memory* %loadMem_4296f7, %struct.Memory** %MEMORY
  %loadMem_4296fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i1218 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 7
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %EDX.i1219 = bitcast %union.anon* %1350 to i32*
  %1351 = load i32, i32* %EDX.i1219
  %1352 = zext i32 %1351 to i64
  %1353 = load i64, i64* %PC.i1218
  %1354 = add i64 %1353, 3
  store i64 %1354, i64* %PC.i1218
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1355, align 1
  %1356 = and i32 %1351, 255
  %1357 = call i32 @llvm.ctpop.i32(i32 %1356)
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = xor i8 %1359, 1
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1360, i8* %1361, align 1
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1362, align 1
  %1363 = icmp eq i32 %1351, 0
  %1364 = zext i1 %1363 to i8
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1364, i8* %1365, align 1
  %1366 = lshr i32 %1351, 31
  %1367 = trunc i32 %1366 to i8
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1367, i8* %1368, align 1
  %1369 = lshr i32 %1351, 31
  %1370 = xor i32 %1366, %1369
  %1371 = add i32 %1370, %1369
  %1372 = icmp eq i32 %1371, 2
  %1373 = zext i1 %1372 to i8
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1373, i8* %1374, align 1
  store %struct.Memory* %loadMem_4296fa, %struct.Memory** %MEMORY
  %loadMem_4296fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i1217 = bitcast %union.anon* %1377 to i64*
  %1378 = load i64, i64* %PC.i1217
  %1379 = add i64 %1378, 93
  %1380 = load i64, i64* %PC.i1217
  %1381 = add i64 %1380, 6
  %1382 = load i64, i64* %PC.i1217
  %1383 = add i64 %1382, 6
  store i64 %1383, i64* %PC.i1217
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1385 = load i8, i8* %1384, align 1
  store i8 %1385, i8* %BRANCH_TAKEN, align 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1387 = icmp ne i8 %1385, 0
  %1388 = select i1 %1387, i64 %1379, i64 %1381
  store i64 %1388, i64* %1386, align 8
  store %struct.Memory* %loadMem_4296fd, %struct.Memory** %MEMORY
  %loadBr_4296fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4296fd = icmp eq i8 %loadBr_4296fd, 1
  br i1 %cmpBr_4296fd, label %block_.L_42975a, label %block_429703

block_429703:                                     ; preds = %block_4296cf
  %loadMem_429703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i1214 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 1
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RAX.i1215 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 15
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RBP.i1216 = bitcast %union.anon* %1397 to i64*
  %1398 = load i64, i64* %RBP.i1216
  %1399 = sub i64 %1398, 40
  %1400 = load i64, i64* %PC.i1214
  %1401 = add i64 %1400, 4
  store i64 %1401, i64* %PC.i1214
  %1402 = inttoptr i64 %1399 to i64*
  %1403 = load i64, i64* %1402
  store i64 %1403, i64* %RAX.i1215, align 8
  store %struct.Memory* %loadMem_429703, %struct.Memory** %MEMORY
  %loadMem_429707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i1211 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 5
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RCX.i1212 = bitcast %union.anon* %1409 to i64*
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 15
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %RBP.i1213 = bitcast %union.anon* %1412 to i64*
  %1413 = load i64, i64* %RBP.i1213
  %1414 = sub i64 %1413, 44
  %1415 = load i64, i64* %PC.i1211
  %1416 = add i64 %1415, 4
  store i64 %1416, i64* %PC.i1211
  %1417 = inttoptr i64 %1414 to i32*
  %1418 = load i32, i32* %1417
  %1419 = sext i32 %1418 to i64
  store i64 %1419, i64* %RCX.i1212, align 8
  store %struct.Memory* %loadMem_429707, %struct.Memory** %MEMORY
  %loadMem_42970b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 33
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %PC.i1208 = bitcast %union.anon* %1422 to i64*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 1
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %RAX.i1209 = bitcast %union.anon* %1425 to i64*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 5
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %RCX.i1210 = bitcast %union.anon* %1428 to i64*
  %1429 = load i64, i64* %RAX.i1209
  %1430 = load i64, i64* %RCX.i1210
  %1431 = mul i64 %1430, 8
  %1432 = add i64 %1431, %1429
  %1433 = load i64, i64* %PC.i1208
  %1434 = add i64 %1433, 4
  store i64 %1434, i64* %PC.i1208
  %1435 = inttoptr i64 %1432 to i64*
  %1436 = load i64, i64* %1435
  store i64 %1436, i64* %RAX.i1209, align 8
  store %struct.Memory* %loadMem_42970b, %struct.Memory** %MEMORY
  %loadMem_42970f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i1206 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 1
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %RAX.i1207 = bitcast %union.anon* %1442 to i64*
  %1443 = load i64, i64* %RAX.i1207
  %1444 = add i64 %1443, 8
  %1445 = load i64, i64* %PC.i1206
  %1446 = add i64 %1445, 4
  store i64 %1446, i64* %PC.i1206
  %1447 = inttoptr i64 %1444 to i64*
  %1448 = load i64, i64* %1447
  store i64 %1448, i64* %RAX.i1207, align 8
  store %struct.Memory* %loadMem_42970f, %struct.Memory** %MEMORY
  %loadMem_429713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i1203 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 5
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RCX.i1204 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 15
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %RBP.i1205 = bitcast %union.anon* %1457 to i64*
  %1458 = load i64, i64* %RBP.i1205
  %1459 = sub i64 %1458, 60
  %1460 = load i64, i64* %PC.i1203
  %1461 = add i64 %1460, 4
  store i64 %1461, i64* %PC.i1203
  %1462 = inttoptr i64 %1459 to i32*
  %1463 = load i32, i32* %1462
  %1464 = sext i32 %1463 to i64
  store i64 %1464, i64* %RCX.i1204, align 8
  store %struct.Memory* %loadMem_429713, %struct.Memory** %MEMORY
  %loadMem_429717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 33
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %PC.i1200 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 1
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RAX.i1201 = bitcast %union.anon* %1470 to i64*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 5
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %RCX.i1202 = bitcast %union.anon* %1473 to i64*
  %1474 = load i64, i64* %RAX.i1201
  %1475 = load i64, i64* %RCX.i1202
  %1476 = add i64 %1475, %1474
  %1477 = load i64, i64* %PC.i1200
  %1478 = add i64 %1477, 4
  store i64 %1478, i64* %PC.i1200
  %1479 = inttoptr i64 %1476 to i8*
  store i8 6, i8* %1479
  store %struct.Memory* %loadMem_429717, %struct.Memory** %MEMORY
  %loadMem_42971b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 33
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %PC.i1197 = bitcast %union.anon* %1482 to i64*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 1
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %RAX.i1198 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 15
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %RBP.i1199 = bitcast %union.anon* %1488 to i64*
  %1489 = load i64, i64* %RBP.i1199
  %1490 = sub i64 %1489, 40
  %1491 = load i64, i64* %PC.i1197
  %1492 = add i64 %1491, 4
  store i64 %1492, i64* %PC.i1197
  %1493 = inttoptr i64 %1490 to i64*
  %1494 = load i64, i64* %1493
  store i64 %1494, i64* %RAX.i1198, align 8
  store %struct.Memory* %loadMem_42971b, %struct.Memory** %MEMORY
  %loadMem_42971f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i1194 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 5
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RCX.i1195 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 15
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %RBP.i1196 = bitcast %union.anon* %1503 to i64*
  %1504 = load i64, i64* %RBP.i1196
  %1505 = sub i64 %1504, 44
  %1506 = load i64, i64* %PC.i1194
  %1507 = add i64 %1506, 4
  store i64 %1507, i64* %PC.i1194
  %1508 = inttoptr i64 %1505 to i32*
  %1509 = load i32, i32* %1508
  %1510 = sext i32 %1509 to i64
  store i64 %1510, i64* %RCX.i1195, align 8
  store %struct.Memory* %loadMem_42971f, %struct.Memory** %MEMORY
  %loadMem_429723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i1191 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 1
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RAX.i1192 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 5
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RCX.i1193 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RAX.i1192
  %1521 = load i64, i64* %RCX.i1193
  %1522 = mul i64 %1521, 8
  %1523 = add i64 %1522, %1520
  %1524 = load i64, i64* %PC.i1191
  %1525 = add i64 %1524, 4
  store i64 %1525, i64* %PC.i1191
  %1526 = inttoptr i64 %1523 to i64*
  %1527 = load i64, i64* %1526
  store i64 %1527, i64* %RAX.i1192, align 8
  store %struct.Memory* %loadMem_429723, %struct.Memory** %MEMORY
  %loadMem_429727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i1189 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 1
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RAX.i1190 = bitcast %union.anon* %1533 to i64*
  %1534 = load i64, i64* %RAX.i1190
  %1535 = add i64 %1534, 16
  %1536 = load i64, i64* %PC.i1189
  %1537 = add i64 %1536, 4
  store i64 %1537, i64* %PC.i1189
  %1538 = inttoptr i64 %1535 to i64*
  %1539 = load i64, i64* %1538
  store i64 %1539, i64* %RAX.i1190, align 8
  store %struct.Memory* %loadMem_429727, %struct.Memory** %MEMORY
  %loadMem_42972b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i1186 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 5
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RCX.i1187 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 15
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RBP.i1188 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %RBP.i1188
  %1550 = sub i64 %1549, 60
  %1551 = load i64, i64* %PC.i1186
  %1552 = add i64 %1551, 4
  store i64 %1552, i64* %PC.i1186
  %1553 = inttoptr i64 %1550 to i32*
  %1554 = load i32, i32* %1553
  %1555 = sext i32 %1554 to i64
  store i64 %1555, i64* %RCX.i1187, align 8
  store %struct.Memory* %loadMem_42972b, %struct.Memory** %MEMORY
  %loadMem_42972f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i1183 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 1
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RAX.i1184 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 5
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RCX.i1185 = bitcast %union.anon* %1564 to i64*
  %1565 = load i64, i64* %RAX.i1184
  %1566 = load i64, i64* %RCX.i1185
  %1567 = mul i64 %1566, 4
  %1568 = add i64 %1567, %1565
  %1569 = load i64, i64* %PC.i1183
  %1570 = add i64 %1569, 7
  store i64 %1570, i64* %PC.i1183
  %1571 = inttoptr i64 %1568 to i32*
  store i32 0, i32* %1571
  store %struct.Memory* %loadMem_42972f, %struct.Memory** %MEMORY
  %loadMem_429736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i1180 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 1
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RAX.i1181 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 15
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RBP.i1182 = bitcast %union.anon* %1580 to i64*
  %1581 = load i64, i64* %RBP.i1182
  %1582 = sub i64 %1581, 40
  %1583 = load i64, i64* %PC.i1180
  %1584 = add i64 %1583, 4
  store i64 %1584, i64* %PC.i1180
  %1585 = inttoptr i64 %1582 to i64*
  %1586 = load i64, i64* %1585
  store i64 %1586, i64* %RAX.i1181, align 8
  store %struct.Memory* %loadMem_429736, %struct.Memory** %MEMORY
  %loadMem_42973a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i1177 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 5
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RCX.i1178 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 15
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RBP.i1179 = bitcast %union.anon* %1595 to i64*
  %1596 = load i64, i64* %RBP.i1179
  %1597 = sub i64 %1596, 44
  %1598 = load i64, i64* %PC.i1177
  %1599 = add i64 %1598, 4
  store i64 %1599, i64* %PC.i1177
  %1600 = inttoptr i64 %1597 to i32*
  %1601 = load i32, i32* %1600
  %1602 = sext i32 %1601 to i64
  store i64 %1602, i64* %RCX.i1178, align 8
  store %struct.Memory* %loadMem_42973a, %struct.Memory** %MEMORY
  %loadMem_42973e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 33
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %PC.i1174 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 1
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %RAX.i1175 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 5
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RCX.i1176 = bitcast %union.anon* %1611 to i64*
  %1612 = load i64, i64* %RAX.i1175
  %1613 = load i64, i64* %RCX.i1176
  %1614 = mul i64 %1613, 8
  %1615 = add i64 %1614, %1612
  %1616 = load i64, i64* %PC.i1174
  %1617 = add i64 %1616, 4
  store i64 %1617, i64* %PC.i1174
  %1618 = inttoptr i64 %1615 to i64*
  %1619 = load i64, i64* %1618
  store i64 %1619, i64* %RAX.i1175, align 8
  store %struct.Memory* %loadMem_42973e, %struct.Memory** %MEMORY
  %loadMem_429742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 33
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %PC.i1172 = bitcast %union.anon* %1622 to i64*
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 1
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %RAX.i1173 = bitcast %union.anon* %1625 to i64*
  %1626 = load i64, i64* %RAX.i1173
  %1627 = add i64 %1626, 24
  %1628 = load i64, i64* %PC.i1172
  %1629 = add i64 %1628, 4
  store i64 %1629, i64* %PC.i1172
  %1630 = inttoptr i64 %1627 to i64*
  %1631 = load i64, i64* %1630
  store i64 %1631, i64* %RAX.i1173, align 8
  store %struct.Memory* %loadMem_429742, %struct.Memory** %MEMORY
  %loadMem_429746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i1169 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 5
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RCX.i1170 = bitcast %union.anon* %1637 to i64*
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 15
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %RBP.i1171 = bitcast %union.anon* %1640 to i64*
  %1641 = load i64, i64* %RBP.i1171
  %1642 = sub i64 %1641, 60
  %1643 = load i64, i64* %PC.i1169
  %1644 = add i64 %1643, 4
  store i64 %1644, i64* %PC.i1169
  %1645 = inttoptr i64 %1642 to i32*
  %1646 = load i32, i32* %1645
  %1647 = sext i32 %1646 to i64
  store i64 %1647, i64* %RCX.i1170, align 8
  store %struct.Memory* %loadMem_429746, %struct.Memory** %MEMORY
  %loadMem_42974a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 33
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %PC.i1166 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 1
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %RAX.i1167 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 5
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %RCX.i1168 = bitcast %union.anon* %1656 to i64*
  %1657 = load i64, i64* %RAX.i1167
  %1658 = load i64, i64* %RCX.i1168
  %1659 = mul i64 %1658, 4
  %1660 = add i64 %1659, %1657
  %1661 = load i64, i64* %PC.i1166
  %1662 = add i64 %1661, 7
  store i64 %1662, i64* %PC.i1166
  %1663 = inttoptr i64 %1660 to i32*
  store i32 0, i32* %1663
  store %struct.Memory* %loadMem_42974a, %struct.Memory** %MEMORY
  %loadMem_429751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 33
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %PC.i1163 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 7
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %RDX.i1164 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 15
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %RBP.i1165 = bitcast %union.anon* %1672 to i64*
  %1673 = load i64, i64* %RBP.i1165
  %1674 = sub i64 %1673, 60
  %1675 = load i64, i64* %PC.i1163
  %1676 = add i64 %1675, 3
  store i64 %1676, i64* %PC.i1163
  %1677 = inttoptr i64 %1674 to i32*
  %1678 = load i32, i32* %1677
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RDX.i1164, align 8
  store %struct.Memory* %loadMem_429751, %struct.Memory** %MEMORY
  %loadMem_429754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 33
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %PC.i1161 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 7
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %RDX.i1162 = bitcast %union.anon* %1685 to i64*
  %1686 = load i64, i64* %RDX.i1162
  %1687 = load i64, i64* %PC.i1161
  %1688 = add i64 %1687, 3
  store i64 %1688, i64* %PC.i1161
  %1689 = trunc i64 %1686 to i32
  %1690 = add i32 1, %1689
  %1691 = zext i32 %1690 to i64
  store i64 %1691, i64* %RDX.i1162, align 8
  %1692 = icmp ult i32 %1690, %1689
  %1693 = icmp ult i32 %1690, 1
  %1694 = or i1 %1692, %1693
  %1695 = zext i1 %1694 to i8
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1695, i8* %1696, align 1
  %1697 = and i32 %1690, 255
  %1698 = call i32 @llvm.ctpop.i32(i32 %1697)
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  %1701 = xor i8 %1700, 1
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1701, i8* %1702, align 1
  %1703 = xor i64 1, %1686
  %1704 = trunc i64 %1703 to i32
  %1705 = xor i32 %1704, %1690
  %1706 = lshr i32 %1705, 4
  %1707 = trunc i32 %1706 to i8
  %1708 = and i8 %1707, 1
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1708, i8* %1709, align 1
  %1710 = icmp eq i32 %1690, 0
  %1711 = zext i1 %1710 to i8
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1711, i8* %1712, align 1
  %1713 = lshr i32 %1690, 31
  %1714 = trunc i32 %1713 to i8
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1714, i8* %1715, align 1
  %1716 = lshr i32 %1689, 31
  %1717 = xor i32 %1713, %1716
  %1718 = add i32 %1717, %1713
  %1719 = icmp eq i32 %1718, 2
  %1720 = zext i1 %1719 to i8
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1720, i8* %1721, align 1
  store %struct.Memory* %loadMem_429754, %struct.Memory** %MEMORY
  %loadMem_429757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i1158 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 7
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %EDX.i1159 = bitcast %union.anon* %1727 to i32*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 15
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RBP.i1160 = bitcast %union.anon* %1730 to i64*
  %1731 = load i64, i64* %RBP.i1160
  %1732 = sub i64 %1731, 60
  %1733 = load i32, i32* %EDX.i1159
  %1734 = zext i32 %1733 to i64
  %1735 = load i64, i64* %PC.i1158
  %1736 = add i64 %1735, 3
  store i64 %1736, i64* %PC.i1158
  %1737 = inttoptr i64 %1732 to i32*
  store i32 %1733, i32* %1737
  store %struct.Memory* %loadMem_429757, %struct.Memory** %MEMORY
  br label %block_.L_42975a

block_.L_42975a:                                  ; preds = %block_429703, %block_4296cf
  %loadMem_42975a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 33
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %PC.i1155 = bitcast %union.anon* %1740 to i64*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 1
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %RAX.i1156 = bitcast %union.anon* %1743 to i64*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 15
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %RBP.i1157 = bitcast %union.anon* %1746 to i64*
  %1747 = load i64, i64* %RBP.i1157
  %1748 = sub i64 %1747, 24
  %1749 = load i64, i64* %PC.i1155
  %1750 = add i64 %1749, 4
  store i64 %1750, i64* %PC.i1155
  %1751 = inttoptr i64 %1748 to i64*
  %1752 = load i64, i64* %1751
  store i64 %1752, i64* %RAX.i1156, align 8
  store %struct.Memory* %loadMem_42975a, %struct.Memory** %MEMORY
  %loadMem_42975e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 33
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %PC.i1152 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 5
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RCX.i1153 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 15
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RBP.i1154 = bitcast %union.anon* %1761 to i64*
  %1762 = load i64, i64* %RBP.i1154
  %1763 = sub i64 %1762, 56
  %1764 = load i64, i64* %PC.i1152
  %1765 = add i64 %1764, 3
  store i64 %1765, i64* %PC.i1152
  %1766 = inttoptr i64 %1763 to i32*
  %1767 = load i32, i32* %1766
  %1768 = zext i32 %1767 to i64
  store i64 %1768, i64* %RCX.i1153, align 8
  store %struct.Memory* %loadMem_42975e, %struct.Memory** %MEMORY
  %loadMem_429761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i1150 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 5
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %RCX.i1151 = bitcast %union.anon* %1774 to i64*
  %1775 = load i64, i64* %RCX.i1151
  %1776 = load i64, i64* %PC.i1150
  %1777 = add i64 %1776, 3
  store i64 %1777, i64* %PC.i1150
  %1778 = trunc i64 %1775 to i32
  %1779 = add i32 1, %1778
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RCX.i1151, align 8
  %1781 = icmp ult i32 %1779, %1778
  %1782 = icmp ult i32 %1779, 1
  %1783 = or i1 %1781, %1782
  %1784 = zext i1 %1783 to i8
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1784, i8* %1785, align 1
  %1786 = and i32 %1779, 255
  %1787 = call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1790, i8* %1791, align 1
  %1792 = xor i64 1, %1775
  %1793 = trunc i64 %1792 to i32
  %1794 = xor i32 %1793, %1779
  %1795 = lshr i32 %1794, 4
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1797, i8* %1798, align 1
  %1799 = icmp eq i32 %1779, 0
  %1800 = zext i1 %1799 to i8
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1800, i8* %1801, align 1
  %1802 = lshr i32 %1779, 31
  %1803 = trunc i32 %1802 to i8
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1803, i8* %1804, align 1
  %1805 = lshr i32 %1778, 31
  %1806 = xor i32 %1802, %1805
  %1807 = add i32 %1806, %1802
  %1808 = icmp eq i32 %1807, 2
  %1809 = zext i1 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1809, i8* %1810, align 1
  store %struct.Memory* %loadMem_429761, %struct.Memory** %MEMORY
  %loadMem_429764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 33
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %PC.i1147 = bitcast %union.anon* %1813 to i64*
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 5
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %ECX.i1148 = bitcast %union.anon* %1816 to i32*
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 7
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %RDX.i1149 = bitcast %union.anon* %1819 to i64*
  %1820 = load i32, i32* %ECX.i1148
  %1821 = zext i32 %1820 to i64
  %1822 = load i64, i64* %PC.i1147
  %1823 = add i64 %1822, 3
  store i64 %1823, i64* %PC.i1147
  %1824 = shl i64 %1821, 32
  %1825 = ashr exact i64 %1824, 32
  store i64 %1825, i64* %RDX.i1149, align 8
  store %struct.Memory* %loadMem_429764, %struct.Memory** %MEMORY
  %loadMem_429767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 33
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %PC.i1143 = bitcast %union.anon* %1828 to i64*
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 1
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %RAX.i1144 = bitcast %union.anon* %1831 to i64*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 5
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %RCX.i1145 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 7
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %RDX.i1146 = bitcast %union.anon* %1837 to i64*
  %1838 = load i64, i64* %RAX.i1144
  %1839 = load i64, i64* %RDX.i1146
  %1840 = mul i64 %1839, 4
  %1841 = add i64 %1840, %1838
  %1842 = load i64, i64* %PC.i1143
  %1843 = add i64 %1842, 3
  store i64 %1843, i64* %PC.i1143
  %1844 = inttoptr i64 %1841 to i32*
  %1845 = load i32, i32* %1844
  %1846 = zext i32 %1845 to i64
  store i64 %1846, i64* %RCX.i1145, align 8
  store %struct.Memory* %loadMem_429767, %struct.Memory** %MEMORY
  %loadMem_42976a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 33
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %PC.i1141 = bitcast %union.anon* %1849 to i64*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 5
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %RCX.i1142 = bitcast %union.anon* %1852 to i64*
  %1853 = load i64, i64* %RCX.i1142
  %1854 = load i64, i64* %PC.i1141
  %1855 = add i64 %1854, 3
  store i64 %1855, i64* %PC.i1141
  %1856 = and i64 1, %1853
  %1857 = trunc i64 %1856 to i32
  store i64 %1856, i64* %RCX.i1142, align 8
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1858, align 1
  %1859 = and i32 %1857, 255
  %1860 = call i32 @llvm.ctpop.i32(i32 %1859)
  %1861 = trunc i32 %1860 to i8
  %1862 = and i8 %1861, 1
  %1863 = xor i8 %1862, 1
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1863, i8* %1864, align 1
  %1865 = icmp eq i32 %1857, 0
  %1866 = zext i1 %1865 to i8
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1866, i8* %1867, align 1
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1868, align 1
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1869, align 1
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1870, align 1
  store %struct.Memory* %loadMem_42976a, %struct.Memory** %MEMORY
  %loadMem_42976d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 33
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %PC.i1139 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 5
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %ECX.i1140 = bitcast %union.anon* %1876 to i32*
  %1877 = load i32, i32* %ECX.i1140
  %1878 = zext i32 %1877 to i64
  %1879 = load i64, i64* %PC.i1139
  %1880 = add i64 %1879, 3
  store i64 %1880, i64* %PC.i1139
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1881, align 1
  %1882 = and i32 %1877, 255
  %1883 = call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1886, i8* %1887, align 1
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1888, align 1
  %1889 = icmp eq i32 %1877, 0
  %1890 = zext i1 %1889 to i8
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1890, i8* %1891, align 1
  %1892 = lshr i32 %1877, 31
  %1893 = trunc i32 %1892 to i8
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1893, i8* %1894, align 1
  %1895 = lshr i32 %1877, 31
  %1896 = xor i32 %1892, %1895
  %1897 = add i32 %1896, %1895
  %1898 = icmp eq i32 %1897, 2
  %1899 = zext i1 %1898 to i8
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1899, i8* %1900, align 1
  store %struct.Memory* %loadMem_42976d, %struct.Memory** %MEMORY
  %loadMem_429770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 33
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %PC.i1138 = bitcast %union.anon* %1903 to i64*
  %1904 = load i64, i64* %PC.i1138
  %1905 = add i64 %1904, 259
  %1906 = load i64, i64* %PC.i1138
  %1907 = add i64 %1906, 6
  %1908 = load i64, i64* %PC.i1138
  %1909 = add i64 %1908, 6
  store i64 %1909, i64* %PC.i1138
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1911 = load i8, i8* %1910, align 1
  store i8 %1911, i8* %BRANCH_TAKEN, align 1
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1913 = icmp ne i8 %1911, 0
  %1914 = select i1 %1913, i64 %1905, i64 %1907
  store i64 %1914, i64* %1912, align 8
  store %struct.Memory* %loadMem_429770, %struct.Memory** %MEMORY
  %loadBr_429770 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429770 = icmp eq i8 %loadBr_429770, 1
  br i1 %cmpBr_429770, label %block_.L_429873, label %block_429776

block_429776:                                     ; preds = %block_.L_42975a
  %loadMem_429776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 33
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %PC.i1135 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 1
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RAX.i1136 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 15
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RBP.i1137 = bitcast %union.anon* %1923 to i64*
  %1924 = load i64, i64* %RBP.i1137
  %1925 = sub i64 %1924, 8
  %1926 = load i64, i64* %PC.i1135
  %1927 = add i64 %1926, 4
  store i64 %1927, i64* %PC.i1135
  %1928 = inttoptr i64 %1925 to i64*
  %1929 = load i64, i64* %1928
  store i64 %1929, i64* %RAX.i1136, align 8
  store %struct.Memory* %loadMem_429776, %struct.Memory** %MEMORY
  %loadMem_42977a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 33
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %PC.i1132 = bitcast %union.anon* %1932 to i64*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 5
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %RCX.i1133 = bitcast %union.anon* %1935 to i64*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 15
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %RBP.i1134 = bitcast %union.anon* %1938 to i64*
  %1939 = load i64, i64* %RBP.i1134
  %1940 = sub i64 %1939, 44
  %1941 = load i64, i64* %PC.i1132
  %1942 = add i64 %1941, 4
  store i64 %1942, i64* %PC.i1132
  %1943 = inttoptr i64 %1940 to i32*
  %1944 = load i32, i32* %1943
  %1945 = sext i32 %1944 to i64
  store i64 %1945, i64* %RCX.i1133, align 8
  store %struct.Memory* %loadMem_42977a, %struct.Memory** %MEMORY
  %loadMem_42977e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 33
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %PC.i1129 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 1
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %RAX.i1130 = bitcast %union.anon* %1951 to i64*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 5
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %RCX.i1131 = bitcast %union.anon* %1954 to i64*
  %1955 = load i64, i64* %RAX.i1130
  %1956 = load i64, i64* %RCX.i1131
  %1957 = mul i64 %1956, 8
  %1958 = add i64 %1957, %1955
  %1959 = load i64, i64* %PC.i1129
  %1960 = add i64 %1959, 4
  store i64 %1960, i64* %PC.i1129
  %1961 = inttoptr i64 %1958 to i64*
  %1962 = load i64, i64* %1961
  store i64 %1962, i64* %RAX.i1130, align 8
  store %struct.Memory* %loadMem_42977e, %struct.Memory** %MEMORY
  %loadMem_429782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i1126 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 5
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RCX.i1127 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 15
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RBP.i1128 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %RBP.i1128
  %1973 = sub i64 %1972, 56
  %1974 = load i64, i64* %PC.i1126
  %1975 = add i64 %1974, 4
  store i64 %1975, i64* %PC.i1126
  %1976 = inttoptr i64 %1973 to i32*
  %1977 = load i32, i32* %1976
  %1978 = sext i32 %1977 to i64
  store i64 %1978, i64* %RCX.i1127, align 8
  store %struct.Memory* %loadMem_429782, %struct.Memory** %MEMORY
  %loadMem_429786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i1122 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 1
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RAX.i1123 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 5
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %RCX.i1124 = bitcast %union.anon* %1987 to i64*
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 7
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %RDX.i1125 = bitcast %union.anon* %1990 to i64*
  %1991 = load i64, i64* %RAX.i1123
  %1992 = load i64, i64* %RCX.i1124
  %1993 = add i64 %1992, %1991
  %1994 = load i64, i64* %PC.i1122
  %1995 = add i64 %1994, 4
  store i64 %1995, i64* %PC.i1122
  %1996 = inttoptr i64 %1993 to i8*
  %1997 = load i8, i8* %1996
  %1998 = sext i8 %1997 to i64
  %1999 = and i64 %1998, 4294967295
  store i64 %1999, i64* %RDX.i1125, align 8
  store %struct.Memory* %loadMem_429786, %struct.Memory** %MEMORY
  %loadMem_42978a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 33
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %PC.i1120 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 7
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %EDX.i1121 = bitcast %union.anon* %2005 to i32*
  %2006 = load i32, i32* %EDX.i1121
  %2007 = zext i32 %2006 to i64
  %2008 = load i64, i64* %PC.i1120
  %2009 = add i64 %2008, 3
  store i64 %2009, i64* %PC.i1120
  %2010 = sub i32 %2006, 32
  %2011 = icmp ult i32 %2006, 32
  %2012 = zext i1 %2011 to i8
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2012, i8* %2013, align 1
  %2014 = and i32 %2010, 255
  %2015 = call i32 @llvm.ctpop.i32(i32 %2014)
  %2016 = trunc i32 %2015 to i8
  %2017 = and i8 %2016, 1
  %2018 = xor i8 %2017, 1
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2018, i8* %2019, align 1
  %2020 = xor i64 32, %2007
  %2021 = trunc i64 %2020 to i32
  %2022 = xor i32 %2021, %2010
  %2023 = lshr i32 %2022, 4
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2025, i8* %2026, align 1
  %2027 = icmp eq i32 %2010, 0
  %2028 = zext i1 %2027 to i8
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2028, i8* %2029, align 1
  %2030 = lshr i32 %2010, 31
  %2031 = trunc i32 %2030 to i8
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2031, i8* %2032, align 1
  %2033 = lshr i32 %2006, 31
  %2034 = xor i32 %2030, %2033
  %2035 = add i32 %2034, %2033
  %2036 = icmp eq i32 %2035, 2
  %2037 = zext i1 %2036 to i8
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2037, i8* %2038, align 1
  store %struct.Memory* %loadMem_42978a, %struct.Memory** %MEMORY
  %loadMem_42978d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 33
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %PC.i1119 = bitcast %union.anon* %2041 to i64*
  %2042 = load i64, i64* %PC.i1119
  %2043 = add i64 %2042, 230
  %2044 = load i64, i64* %PC.i1119
  %2045 = add i64 %2044, 6
  %2046 = load i64, i64* %PC.i1119
  %2047 = add i64 %2046, 6
  store i64 %2047, i64* %PC.i1119
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2049 = load i8, i8* %2048, align 1
  store i8 %2049, i8* %BRANCH_TAKEN, align 1
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2051 = icmp ne i8 %2049, 0
  %2052 = select i1 %2051, i64 %2043, i64 %2045
  store i64 %2052, i64* %2050, align 8
  store %struct.Memory* %loadMem_42978d, %struct.Memory** %MEMORY
  %loadBr_42978d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42978d = icmp eq i8 %loadBr_42978d, 1
  br i1 %cmpBr_42978d, label %block_.L_429873, label %block_429793

block_429793:                                     ; preds = %block_429776
  %loadMem_429793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i1116 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 1
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RAX.i1117 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 15
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %RBP.i1118 = bitcast %union.anon* %2061 to i64*
  %2062 = load i64, i64* %RBP.i1118
  %2063 = sub i64 %2062, 8
  %2064 = load i64, i64* %PC.i1116
  %2065 = add i64 %2064, 4
  store i64 %2065, i64* %PC.i1116
  %2066 = inttoptr i64 %2063 to i64*
  %2067 = load i64, i64* %2066
  store i64 %2067, i64* %RAX.i1117, align 8
  store %struct.Memory* %loadMem_429793, %struct.Memory** %MEMORY
  %loadMem_429797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 33
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %PC.i1113 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 5
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %RCX.i1114 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 15
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RBP.i1115 = bitcast %union.anon* %2076 to i64*
  %2077 = load i64, i64* %RBP.i1115
  %2078 = sub i64 %2077, 44
  %2079 = load i64, i64* %PC.i1113
  %2080 = add i64 %2079, 4
  store i64 %2080, i64* %PC.i1113
  %2081 = inttoptr i64 %2078 to i32*
  %2082 = load i32, i32* %2081
  %2083 = sext i32 %2082 to i64
  store i64 %2083, i64* %RCX.i1114, align 8
  store %struct.Memory* %loadMem_429797, %struct.Memory** %MEMORY
  %loadMem_42979b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 33
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %PC.i1110 = bitcast %union.anon* %2086 to i64*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 1
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %RAX.i1111 = bitcast %union.anon* %2089 to i64*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 5
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %RCX.i1112 = bitcast %union.anon* %2092 to i64*
  %2093 = load i64, i64* %RAX.i1111
  %2094 = load i64, i64* %RCX.i1112
  %2095 = mul i64 %2094, 8
  %2096 = add i64 %2095, %2093
  %2097 = load i64, i64* %PC.i1110
  %2098 = add i64 %2097, 4
  store i64 %2098, i64* %PC.i1110
  %2099 = inttoptr i64 %2096 to i64*
  %2100 = load i64, i64* %2099
  store i64 %2100, i64* %RAX.i1111, align 8
  store %struct.Memory* %loadMem_42979b, %struct.Memory** %MEMORY
  %loadMem_42979f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 33
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %PC.i1107 = bitcast %union.anon* %2103 to i64*
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 5
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %RCX.i1108 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 15
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RBP.i1109 = bitcast %union.anon* %2109 to i64*
  %2110 = load i64, i64* %RBP.i1109
  %2111 = sub i64 %2110, 56
  %2112 = load i64, i64* %PC.i1107
  %2113 = add i64 %2112, 4
  store i64 %2113, i64* %PC.i1107
  %2114 = inttoptr i64 %2111 to i32*
  %2115 = load i32, i32* %2114
  %2116 = sext i32 %2115 to i64
  store i64 %2116, i64* %RCX.i1108, align 8
  store %struct.Memory* %loadMem_42979f, %struct.Memory** %MEMORY
  %loadMem_4297a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 33
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %PC.i1103 = bitcast %union.anon* %2119 to i64*
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 1
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %RAX.i1104 = bitcast %union.anon* %2122 to i64*
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 5
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %RCX.i1105 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 7
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %RDX.i1106 = bitcast %union.anon* %2128 to i64*
  %2129 = load i64, i64* %RAX.i1104
  %2130 = load i64, i64* %RCX.i1105
  %2131 = add i64 %2130, %2129
  %2132 = load i64, i64* %PC.i1103
  %2133 = add i64 %2132, 4
  store i64 %2133, i64* %PC.i1103
  %2134 = inttoptr i64 %2131 to i8*
  %2135 = load i8, i8* %2134
  %2136 = sext i8 %2135 to i64
  %2137 = and i64 %2136, 4294967295
  store i64 %2137, i64* %RDX.i1106, align 8
  store %struct.Memory* %loadMem_4297a3, %struct.Memory** %MEMORY
  %loadMem_4297a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 33
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %PC.i1101 = bitcast %union.anon* %2140 to i64*
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 7
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %EDX.i1102 = bitcast %union.anon* %2143 to i32*
  %2144 = load i32, i32* %EDX.i1102
  %2145 = zext i32 %2144 to i64
  %2146 = load i64, i64* %PC.i1101
  %2147 = add i64 %2146, 3
  store i64 %2147, i64* %PC.i1101
  %2148 = sub i32 %2144, 46
  %2149 = icmp ult i32 %2144, 46
  %2150 = zext i1 %2149 to i8
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2150, i8* %2151, align 1
  %2152 = and i32 %2148, 255
  %2153 = call i32 @llvm.ctpop.i32(i32 %2152)
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  %2156 = xor i8 %2155, 1
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2156, i8* %2157, align 1
  %2158 = xor i64 46, %2145
  %2159 = trunc i64 %2158 to i32
  %2160 = xor i32 %2159, %2148
  %2161 = lshr i32 %2160, 4
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2163, i8* %2164, align 1
  %2165 = icmp eq i32 %2148, 0
  %2166 = zext i1 %2165 to i8
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2166, i8* %2167, align 1
  %2168 = lshr i32 %2148, 31
  %2169 = trunc i32 %2168 to i8
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2169, i8* %2170, align 1
  %2171 = lshr i32 %2144, 31
  %2172 = xor i32 %2168, %2171
  %2173 = add i32 %2172, %2171
  %2174 = icmp eq i32 %2173, 2
  %2175 = zext i1 %2174 to i8
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2175, i8* %2176, align 1
  store %struct.Memory* %loadMem_4297a7, %struct.Memory** %MEMORY
  %loadMem_4297aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i1100 = bitcast %union.anon* %2179 to i64*
  %2180 = load i64, i64* %PC.i1100
  %2181 = add i64 %2180, 201
  %2182 = load i64, i64* %PC.i1100
  %2183 = add i64 %2182, 6
  %2184 = load i64, i64* %PC.i1100
  %2185 = add i64 %2184, 6
  store i64 %2185, i64* %PC.i1100
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2187 = load i8, i8* %2186, align 1
  store i8 %2187, i8* %BRANCH_TAKEN, align 1
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2189 = icmp ne i8 %2187, 0
  %2190 = select i1 %2189, i64 %2181, i64 %2183
  store i64 %2190, i64* %2188, align 8
  store %struct.Memory* %loadMem_4297aa, %struct.Memory** %MEMORY
  %loadBr_4297aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4297aa = icmp eq i8 %loadBr_4297aa, 1
  br i1 %cmpBr_4297aa, label %block_.L_429873, label %block_4297b0

block_4297b0:                                     ; preds = %block_429793
  %loadMem_4297b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 33
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %PC.i1097 = bitcast %union.anon* %2193 to i64*
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 1
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %RAX.i1098 = bitcast %union.anon* %2196 to i64*
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 15
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %RBP.i1099 = bitcast %union.anon* %2199 to i64*
  %2200 = load i64, i64* %RBP.i1099
  %2201 = sub i64 %2200, 8
  %2202 = load i64, i64* %PC.i1097
  %2203 = add i64 %2202, 4
  store i64 %2203, i64* %PC.i1097
  %2204 = inttoptr i64 %2201 to i64*
  %2205 = load i64, i64* %2204
  store i64 %2205, i64* %RAX.i1098, align 8
  store %struct.Memory* %loadMem_4297b0, %struct.Memory** %MEMORY
  %loadMem_4297b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 33
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %PC.i1094 = bitcast %union.anon* %2208 to i64*
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 5
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %RCX.i1095 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 15
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RBP.i1096 = bitcast %union.anon* %2214 to i64*
  %2215 = load i64, i64* %RBP.i1096
  %2216 = sub i64 %2215, 44
  %2217 = load i64, i64* %PC.i1094
  %2218 = add i64 %2217, 4
  store i64 %2218, i64* %PC.i1094
  %2219 = inttoptr i64 %2216 to i32*
  %2220 = load i32, i32* %2219
  %2221 = sext i32 %2220 to i64
  store i64 %2221, i64* %RCX.i1095, align 8
  store %struct.Memory* %loadMem_4297b4, %struct.Memory** %MEMORY
  %loadMem_4297b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 33
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %PC.i1091 = bitcast %union.anon* %2224 to i64*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 1
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %RAX.i1092 = bitcast %union.anon* %2227 to i64*
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 5
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %RCX.i1093 = bitcast %union.anon* %2230 to i64*
  %2231 = load i64, i64* %RAX.i1092
  %2232 = load i64, i64* %RCX.i1093
  %2233 = mul i64 %2232, 8
  %2234 = add i64 %2233, %2231
  %2235 = load i64, i64* %PC.i1091
  %2236 = add i64 %2235, 4
  store i64 %2236, i64* %PC.i1091
  %2237 = inttoptr i64 %2234 to i64*
  %2238 = load i64, i64* %2237
  store i64 %2238, i64* %RAX.i1092, align 8
  store %struct.Memory* %loadMem_4297b8, %struct.Memory** %MEMORY
  %loadMem_4297bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 33
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %PC.i1088 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 5
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %RCX.i1089 = bitcast %union.anon* %2244 to i64*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 15
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %RBP.i1090 = bitcast %union.anon* %2247 to i64*
  %2248 = load i64, i64* %RBP.i1090
  %2249 = sub i64 %2248, 56
  %2250 = load i64, i64* %PC.i1088
  %2251 = add i64 %2250, 4
  store i64 %2251, i64* %PC.i1088
  %2252 = inttoptr i64 %2249 to i32*
  %2253 = load i32, i32* %2252
  %2254 = sext i32 %2253 to i64
  store i64 %2254, i64* %RCX.i1089, align 8
  store %struct.Memory* %loadMem_4297bc, %struct.Memory** %MEMORY
  %loadMem_4297c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 33
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %PC.i1084 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 1
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RAX.i1085 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 5
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %RCX.i1086 = bitcast %union.anon* %2263 to i64*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 7
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %RDX.i1087 = bitcast %union.anon* %2266 to i64*
  %2267 = load i64, i64* %RAX.i1085
  %2268 = load i64, i64* %RCX.i1086
  %2269 = add i64 %2268, %2267
  %2270 = load i64, i64* %PC.i1084
  %2271 = add i64 %2270, 4
  store i64 %2271, i64* %PC.i1084
  %2272 = inttoptr i64 %2269 to i8*
  %2273 = load i8, i8* %2272
  %2274 = sext i8 %2273 to i64
  %2275 = and i64 %2274, 4294967295
  store i64 %2275, i64* %RDX.i1087, align 8
  store %struct.Memory* %loadMem_4297c0, %struct.Memory** %MEMORY
  %loadMem_4297c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 33
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %PC.i1082 = bitcast %union.anon* %2278 to i64*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 7
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %EDX.i1083 = bitcast %union.anon* %2281 to i32*
  %2282 = load i32, i32* %EDX.i1083
  %2283 = zext i32 %2282 to i64
  %2284 = load i64, i64* %PC.i1082
  %2285 = add i64 %2284, 3
  store i64 %2285, i64* %PC.i1082
  %2286 = sub i32 %2282, 95
  %2287 = icmp ult i32 %2282, 95
  %2288 = zext i1 %2287 to i8
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2288, i8* %2289, align 1
  %2290 = and i32 %2286, 255
  %2291 = call i32 @llvm.ctpop.i32(i32 %2290)
  %2292 = trunc i32 %2291 to i8
  %2293 = and i8 %2292, 1
  %2294 = xor i8 %2293, 1
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2294, i8* %2295, align 1
  %2296 = xor i64 95, %2283
  %2297 = trunc i64 %2296 to i32
  %2298 = xor i32 %2297, %2286
  %2299 = lshr i32 %2298, 4
  %2300 = trunc i32 %2299 to i8
  %2301 = and i8 %2300, 1
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2301, i8* %2302, align 1
  %2303 = icmp eq i32 %2286, 0
  %2304 = zext i1 %2303 to i8
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2304, i8* %2305, align 1
  %2306 = lshr i32 %2286, 31
  %2307 = trunc i32 %2306 to i8
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2307, i8* %2308, align 1
  %2309 = lshr i32 %2282, 31
  %2310 = xor i32 %2306, %2309
  %2311 = add i32 %2310, %2309
  %2312 = icmp eq i32 %2311, 2
  %2313 = zext i1 %2312 to i8
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2313, i8* %2314, align 1
  store %struct.Memory* %loadMem_4297c4, %struct.Memory** %MEMORY
  %loadMem_4297c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 33
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %PC.i1081 = bitcast %union.anon* %2317 to i64*
  %2318 = load i64, i64* %PC.i1081
  %2319 = add i64 %2318, 172
  %2320 = load i64, i64* %PC.i1081
  %2321 = add i64 %2320, 6
  %2322 = load i64, i64* %PC.i1081
  %2323 = add i64 %2322, 6
  store i64 %2323, i64* %PC.i1081
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2325 = load i8, i8* %2324, align 1
  store i8 %2325, i8* %BRANCH_TAKEN, align 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2327 = icmp ne i8 %2325, 0
  %2328 = select i1 %2327, i64 %2319, i64 %2321
  store i64 %2328, i64* %2326, align 8
  store %struct.Memory* %loadMem_4297c7, %struct.Memory** %MEMORY
  %loadBr_4297c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4297c7 = icmp eq i8 %loadBr_4297c7, 1
  br i1 %cmpBr_4297c7, label %block_.L_429873, label %block_4297cd

block_4297cd:                                     ; preds = %block_4297b0
  %loadMem_4297cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i1078 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 1
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RAX.i1079 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 15
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RBP.i1080 = bitcast %union.anon* %2337 to i64*
  %2338 = load i64, i64* %RBP.i1080
  %2339 = sub i64 %2338, 8
  %2340 = load i64, i64* %PC.i1078
  %2341 = add i64 %2340, 4
  store i64 %2341, i64* %PC.i1078
  %2342 = inttoptr i64 %2339 to i64*
  %2343 = load i64, i64* %2342
  store i64 %2343, i64* %RAX.i1079, align 8
  store %struct.Memory* %loadMem_4297cd, %struct.Memory** %MEMORY
  %loadMem_4297d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 33
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %PC.i1075 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 5
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %RCX.i1076 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 15
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %RBP.i1077 = bitcast %union.anon* %2352 to i64*
  %2353 = load i64, i64* %RBP.i1077
  %2354 = sub i64 %2353, 44
  %2355 = load i64, i64* %PC.i1075
  %2356 = add i64 %2355, 4
  store i64 %2356, i64* %PC.i1075
  %2357 = inttoptr i64 %2354 to i32*
  %2358 = load i32, i32* %2357
  %2359 = sext i32 %2358 to i64
  store i64 %2359, i64* %RCX.i1076, align 8
  store %struct.Memory* %loadMem_4297d1, %struct.Memory** %MEMORY
  %loadMem_4297d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 33
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %PC.i1072 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 1
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %RAX.i1073 = bitcast %union.anon* %2365 to i64*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 5
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RCX.i1074 = bitcast %union.anon* %2368 to i64*
  %2369 = load i64, i64* %RAX.i1073
  %2370 = load i64, i64* %RCX.i1074
  %2371 = mul i64 %2370, 8
  %2372 = add i64 %2371, %2369
  %2373 = load i64, i64* %PC.i1072
  %2374 = add i64 %2373, 4
  store i64 %2374, i64* %PC.i1072
  %2375 = inttoptr i64 %2372 to i64*
  %2376 = load i64, i64* %2375
  store i64 %2376, i64* %RAX.i1073, align 8
  store %struct.Memory* %loadMem_4297d5, %struct.Memory** %MEMORY
  %loadMem_4297d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 33
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %PC.i1069 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 5
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RCX.i1070 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 15
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RBP.i1071 = bitcast %union.anon* %2385 to i64*
  %2386 = load i64, i64* %RBP.i1071
  %2387 = sub i64 %2386, 56
  %2388 = load i64, i64* %PC.i1069
  %2389 = add i64 %2388, 4
  store i64 %2389, i64* %PC.i1069
  %2390 = inttoptr i64 %2387 to i32*
  %2391 = load i32, i32* %2390
  %2392 = sext i32 %2391 to i64
  store i64 %2392, i64* %RCX.i1070, align 8
  store %struct.Memory* %loadMem_4297d9, %struct.Memory** %MEMORY
  %loadMem_4297dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i1065 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 1
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %RAX.i1066 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 5
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %RCX.i1067 = bitcast %union.anon* %2401 to i64*
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 7
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %RDX.i1068 = bitcast %union.anon* %2404 to i64*
  %2405 = load i64, i64* %RAX.i1066
  %2406 = load i64, i64* %RCX.i1067
  %2407 = add i64 %2406, %2405
  %2408 = load i64, i64* %PC.i1065
  %2409 = add i64 %2408, 4
  store i64 %2409, i64* %PC.i1065
  %2410 = inttoptr i64 %2407 to i8*
  %2411 = load i8, i8* %2410
  %2412 = sext i8 %2411 to i64
  %2413 = and i64 %2412, 4294967295
  store i64 %2413, i64* %RDX.i1068, align 8
  store %struct.Memory* %loadMem_4297dd, %struct.Memory** %MEMORY
  %loadMem_4297e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 33
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %PC.i1063 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 7
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %EDX.i1064 = bitcast %union.anon* %2419 to i32*
  %2420 = load i32, i32* %EDX.i1064
  %2421 = zext i32 %2420 to i64
  %2422 = load i64, i64* %PC.i1063
  %2423 = add i64 %2422, 3
  store i64 %2423, i64* %PC.i1063
  %2424 = sub i32 %2420, 45
  %2425 = icmp ult i32 %2420, 45
  %2426 = zext i1 %2425 to i8
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2426, i8* %2427, align 1
  %2428 = and i32 %2424, 255
  %2429 = call i32 @llvm.ctpop.i32(i32 %2428)
  %2430 = trunc i32 %2429 to i8
  %2431 = and i8 %2430, 1
  %2432 = xor i8 %2431, 1
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2432, i8* %2433, align 1
  %2434 = xor i64 45, %2421
  %2435 = trunc i64 %2434 to i32
  %2436 = xor i32 %2435, %2424
  %2437 = lshr i32 %2436, 4
  %2438 = trunc i32 %2437 to i8
  %2439 = and i8 %2438, 1
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2439, i8* %2440, align 1
  %2441 = icmp eq i32 %2424, 0
  %2442 = zext i1 %2441 to i8
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2442, i8* %2443, align 1
  %2444 = lshr i32 %2424, 31
  %2445 = trunc i32 %2444 to i8
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2445, i8* %2446, align 1
  %2447 = lshr i32 %2420, 31
  %2448 = xor i32 %2444, %2447
  %2449 = add i32 %2448, %2447
  %2450 = icmp eq i32 %2449, 2
  %2451 = zext i1 %2450 to i8
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2451, i8* %2452, align 1
  store %struct.Memory* %loadMem_4297e1, %struct.Memory** %MEMORY
  %loadMem_4297e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 33
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %PC.i1062 = bitcast %union.anon* %2455 to i64*
  %2456 = load i64, i64* %PC.i1062
  %2457 = add i64 %2456, 143
  %2458 = load i64, i64* %PC.i1062
  %2459 = add i64 %2458, 6
  %2460 = load i64, i64* %PC.i1062
  %2461 = add i64 %2460, 6
  store i64 %2461, i64* %PC.i1062
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2463 = load i8, i8* %2462, align 1
  store i8 %2463, i8* %BRANCH_TAKEN, align 1
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2465 = icmp ne i8 %2463, 0
  %2466 = select i1 %2465, i64 %2457, i64 %2459
  store i64 %2466, i64* %2464, align 8
  store %struct.Memory* %loadMem_4297e4, %struct.Memory** %MEMORY
  %loadBr_4297e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4297e4 = icmp eq i8 %loadBr_4297e4, 1
  br i1 %cmpBr_4297e4, label %block_.L_429873, label %block_4297ea

block_4297ea:                                     ; preds = %block_4297cd
  %loadMem_4297ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 33
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %PC.i1059 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 1
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %RAX.i1060 = bitcast %union.anon* %2472 to i64*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 15
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %RBP.i1061 = bitcast %union.anon* %2475 to i64*
  %2476 = load i64, i64* %RBP.i1061
  %2477 = sub i64 %2476, 8
  %2478 = load i64, i64* %PC.i1059
  %2479 = add i64 %2478, 4
  store i64 %2479, i64* %PC.i1059
  %2480 = inttoptr i64 %2477 to i64*
  %2481 = load i64, i64* %2480
  store i64 %2481, i64* %RAX.i1060, align 8
  store %struct.Memory* %loadMem_4297ea, %struct.Memory** %MEMORY
  %loadMem_4297ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 33
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %PC.i1056 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 5
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RCX.i1057 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 15
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RBP.i1058 = bitcast %union.anon* %2490 to i64*
  %2491 = load i64, i64* %RBP.i1058
  %2492 = sub i64 %2491, 44
  %2493 = load i64, i64* %PC.i1056
  %2494 = add i64 %2493, 4
  store i64 %2494, i64* %PC.i1056
  %2495 = inttoptr i64 %2492 to i32*
  %2496 = load i32, i32* %2495
  %2497 = sext i32 %2496 to i64
  store i64 %2497, i64* %RCX.i1057, align 8
  store %struct.Memory* %loadMem_4297ee, %struct.Memory** %MEMORY
  %loadMem_4297f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i1053 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 1
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RAX.i1054 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 5
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %RCX.i1055 = bitcast %union.anon* %2506 to i64*
  %2507 = load i64, i64* %RAX.i1054
  %2508 = load i64, i64* %RCX.i1055
  %2509 = mul i64 %2508, 8
  %2510 = add i64 %2509, %2507
  %2511 = load i64, i64* %PC.i1053
  %2512 = add i64 %2511, 4
  store i64 %2512, i64* %PC.i1053
  %2513 = inttoptr i64 %2510 to i64*
  %2514 = load i64, i64* %2513
  store i64 %2514, i64* %RAX.i1054, align 8
  store %struct.Memory* %loadMem_4297f2, %struct.Memory** %MEMORY
  %loadMem_4297f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 33
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %PC.i1050 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 5
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %RCX.i1051 = bitcast %union.anon* %2520 to i64*
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 15
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %RBP.i1052 = bitcast %union.anon* %2523 to i64*
  %2524 = load i64, i64* %RBP.i1052
  %2525 = sub i64 %2524, 56
  %2526 = load i64, i64* %PC.i1050
  %2527 = add i64 %2526, 4
  store i64 %2527, i64* %PC.i1050
  %2528 = inttoptr i64 %2525 to i32*
  %2529 = load i32, i32* %2528
  %2530 = sext i32 %2529 to i64
  store i64 %2530, i64* %RCX.i1051, align 8
  store %struct.Memory* %loadMem_4297f6, %struct.Memory** %MEMORY
  %loadMem_4297fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 33
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %PC.i1046 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 1
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %RAX.i1047 = bitcast %union.anon* %2536 to i64*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 5
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %RCX.i1048 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 7
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RDX.i1049 = bitcast %union.anon* %2542 to i64*
  %2543 = load i64, i64* %RAX.i1047
  %2544 = load i64, i64* %RCX.i1048
  %2545 = add i64 %2544, %2543
  %2546 = load i64, i64* %PC.i1046
  %2547 = add i64 %2546, 4
  store i64 %2547, i64* %PC.i1046
  %2548 = inttoptr i64 %2545 to i8*
  %2549 = load i8, i8* %2548
  %2550 = sext i8 %2549 to i64
  %2551 = and i64 %2550, 4294967295
  store i64 %2551, i64* %RDX.i1049, align 8
  store %struct.Memory* %loadMem_4297fa, %struct.Memory** %MEMORY
  %loadMem_4297fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 33
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %PC.i1044 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 7
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %EDX.i1045 = bitcast %union.anon* %2557 to i32*
  %2558 = load i32, i32* %EDX.i1045
  %2559 = zext i32 %2558 to i64
  %2560 = load i64, i64* %PC.i1044
  %2561 = add i64 %2560, 3
  store i64 %2561, i64* %PC.i1044
  %2562 = sub i32 %2558, 126
  %2563 = icmp ult i32 %2558, 126
  %2564 = zext i1 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2564, i8* %2565, align 1
  %2566 = and i32 %2562, 255
  %2567 = call i32 @llvm.ctpop.i32(i32 %2566)
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = xor i8 %2569, 1
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2570, i8* %2571, align 1
  %2572 = xor i64 126, %2559
  %2573 = trunc i64 %2572 to i32
  %2574 = xor i32 %2573, %2562
  %2575 = lshr i32 %2574, 4
  %2576 = trunc i32 %2575 to i8
  %2577 = and i8 %2576, 1
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2577, i8* %2578, align 1
  %2579 = icmp eq i32 %2562, 0
  %2580 = zext i1 %2579 to i8
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2580, i8* %2581, align 1
  %2582 = lshr i32 %2562, 31
  %2583 = trunc i32 %2582 to i8
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2583, i8* %2584, align 1
  %2585 = lshr i32 %2558, 31
  %2586 = xor i32 %2582, %2585
  %2587 = add i32 %2586, %2585
  %2588 = icmp eq i32 %2587, 2
  %2589 = zext i1 %2588 to i8
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2589, i8* %2590, align 1
  store %struct.Memory* %loadMem_4297fe, %struct.Memory** %MEMORY
  %loadMem_429801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 33
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %PC.i1043 = bitcast %union.anon* %2593 to i64*
  %2594 = load i64, i64* %PC.i1043
  %2595 = add i64 %2594, 114
  %2596 = load i64, i64* %PC.i1043
  %2597 = add i64 %2596, 6
  %2598 = load i64, i64* %PC.i1043
  %2599 = add i64 %2598, 6
  store i64 %2599, i64* %PC.i1043
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2601 = load i8, i8* %2600, align 1
  store i8 %2601, i8* %BRANCH_TAKEN, align 1
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2603 = icmp ne i8 %2601, 0
  %2604 = select i1 %2603, i64 %2595, i64 %2597
  store i64 %2604, i64* %2602, align 8
  store %struct.Memory* %loadMem_429801, %struct.Memory** %MEMORY
  %loadBr_429801 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429801 = icmp eq i8 %loadBr_429801, 1
  br i1 %cmpBr_429801, label %block_.L_429873, label %block_429807

block_429807:                                     ; preds = %block_4297ea
  %loadMem_429807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i1040 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 1
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RAX.i1041 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 15
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RBP.i1042 = bitcast %union.anon* %2613 to i64*
  %2614 = load i64, i64* %RBP.i1042
  %2615 = sub i64 %2614, 52
  %2616 = load i64, i64* %PC.i1040
  %2617 = add i64 %2616, 3
  store i64 %2617, i64* %PC.i1040
  %2618 = inttoptr i64 %2615 to i32*
  %2619 = load i32, i32* %2618
  %2620 = zext i32 %2619 to i64
  store i64 %2620, i64* %RAX.i1041, align 8
  store %struct.Memory* %loadMem_429807, %struct.Memory** %MEMORY
  %loadMem_42980a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i1038 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 1
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RAX.i1039 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RAX.i1039
  %2628 = load i64, i64* %PC.i1038
  %2629 = add i64 %2628, 3
  store i64 %2629, i64* %PC.i1038
  %2630 = trunc i64 %2627 to i32
  %2631 = add i32 1, %2630
  %2632 = zext i32 %2631 to i64
  store i64 %2632, i64* %RAX.i1039, align 8
  %2633 = icmp ult i32 %2631, %2630
  %2634 = icmp ult i32 %2631, 1
  %2635 = or i1 %2633, %2634
  %2636 = zext i1 %2635 to i8
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2636, i8* %2637, align 1
  %2638 = and i32 %2631, 255
  %2639 = call i32 @llvm.ctpop.i32(i32 %2638)
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  %2642 = xor i8 %2641, 1
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2642, i8* %2643, align 1
  %2644 = xor i64 1, %2627
  %2645 = trunc i64 %2644 to i32
  %2646 = xor i32 %2645, %2631
  %2647 = lshr i32 %2646, 4
  %2648 = trunc i32 %2647 to i8
  %2649 = and i8 %2648, 1
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2649, i8* %2650, align 1
  %2651 = icmp eq i32 %2631, 0
  %2652 = zext i1 %2651 to i8
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2652, i8* %2653, align 1
  %2654 = lshr i32 %2631, 31
  %2655 = trunc i32 %2654 to i8
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2655, i8* %2656, align 1
  %2657 = lshr i32 %2630, 31
  %2658 = xor i32 %2654, %2657
  %2659 = add i32 %2658, %2654
  %2660 = icmp eq i32 %2659, 2
  %2661 = zext i1 %2660 to i8
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2661, i8* %2662, align 1
  store %struct.Memory* %loadMem_42980a, %struct.Memory** %MEMORY
  %loadMem_42980d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i1035 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 1
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %EAX.i1036 = bitcast %union.anon* %2668 to i32*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 15
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %RBP.i1037 = bitcast %union.anon* %2671 to i64*
  %2672 = load i64, i64* %RBP.i1037
  %2673 = sub i64 %2672, 52
  %2674 = load i32, i32* %EAX.i1036
  %2675 = zext i32 %2674 to i64
  %2676 = load i64, i64* %PC.i1035
  %2677 = add i64 %2676, 3
  store i64 %2677, i64* %PC.i1035
  %2678 = inttoptr i64 %2673 to i32*
  store i32 %2674, i32* %2678
  store %struct.Memory* %loadMem_42980d, %struct.Memory** %MEMORY
  %loadMem_429810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i1032 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 5
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %RCX.i1033 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 15
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RBP.i1034 = bitcast %union.anon* %2687 to i64*
  %2688 = load i64, i64* %RBP.i1034
  %2689 = sub i64 %2688, 40
  %2690 = load i64, i64* %PC.i1032
  %2691 = add i64 %2690, 4
  store i64 %2691, i64* %PC.i1032
  %2692 = inttoptr i64 %2689 to i64*
  %2693 = load i64, i64* %2692
  store i64 %2693, i64* %RCX.i1033, align 8
  store %struct.Memory* %loadMem_429810, %struct.Memory** %MEMORY
  %loadMem_429814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 33
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %PC.i1029 = bitcast %union.anon* %2696 to i64*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 7
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %RDX.i1030 = bitcast %union.anon* %2699 to i64*
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 15
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %RBP.i1031 = bitcast %union.anon* %2702 to i64*
  %2703 = load i64, i64* %RBP.i1031
  %2704 = sub i64 %2703, 44
  %2705 = load i64, i64* %PC.i1029
  %2706 = add i64 %2705, 4
  store i64 %2706, i64* %PC.i1029
  %2707 = inttoptr i64 %2704 to i32*
  %2708 = load i32, i32* %2707
  %2709 = sext i32 %2708 to i64
  store i64 %2709, i64* %RDX.i1030, align 8
  store %struct.Memory* %loadMem_429814, %struct.Memory** %MEMORY
  %loadMem_429818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 33
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %PC.i1026 = bitcast %union.anon* %2712 to i64*
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 5
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %RCX.i1027 = bitcast %union.anon* %2715 to i64*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 7
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %RDX.i1028 = bitcast %union.anon* %2718 to i64*
  %2719 = load i64, i64* %RCX.i1027
  %2720 = load i64, i64* %RDX.i1028
  %2721 = mul i64 %2720, 8
  %2722 = add i64 %2721, %2719
  %2723 = load i64, i64* %PC.i1026
  %2724 = add i64 %2723, 4
  store i64 %2724, i64* %PC.i1026
  %2725 = inttoptr i64 %2722 to i64*
  %2726 = load i64, i64* %2725
  store i64 %2726, i64* %RCX.i1027, align 8
  store %struct.Memory* %loadMem_429818, %struct.Memory** %MEMORY
  %loadMem_42981c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 33
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %PC.i1024 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 5
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RCX.i1025 = bitcast %union.anon* %2732 to i64*
  %2733 = load i64, i64* %RCX.i1025
  %2734 = add i64 %2733, 8
  %2735 = load i64, i64* %PC.i1024
  %2736 = add i64 %2735, 4
  store i64 %2736, i64* %PC.i1024
  %2737 = inttoptr i64 %2734 to i64*
  %2738 = load i64, i64* %2737
  store i64 %2738, i64* %RCX.i1025, align 8
  store %struct.Memory* %loadMem_42981c, %struct.Memory** %MEMORY
  %loadMem_429820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 33
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %PC.i1021 = bitcast %union.anon* %2741 to i64*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 7
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RDX.i1022 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 15
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RBP.i1023 = bitcast %union.anon* %2747 to i64*
  %2748 = load i64, i64* %RBP.i1023
  %2749 = sub i64 %2748, 60
  %2750 = load i64, i64* %PC.i1021
  %2751 = add i64 %2750, 4
  store i64 %2751, i64* %PC.i1021
  %2752 = inttoptr i64 %2749 to i32*
  %2753 = load i32, i32* %2752
  %2754 = sext i32 %2753 to i64
  store i64 %2754, i64* %RDX.i1022, align 8
  store %struct.Memory* %loadMem_429820, %struct.Memory** %MEMORY
  %loadMem_429824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 33
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %PC.i1018 = bitcast %union.anon* %2757 to i64*
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 5
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %RCX.i1019 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 7
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %RDX.i1020 = bitcast %union.anon* %2763 to i64*
  %2764 = load i64, i64* %RCX.i1019
  %2765 = load i64, i64* %RDX.i1020
  %2766 = add i64 %2765, %2764
  %2767 = load i64, i64* %PC.i1018
  %2768 = add i64 %2767, 4
  store i64 %2768, i64* %PC.i1018
  %2769 = inttoptr i64 %2766 to i8*
  store i8 1, i8* %2769
  store %struct.Memory* %loadMem_429824, %struct.Memory** %MEMORY
  %loadMem_429828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i1015 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 1
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RAX.i1016 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 15
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RBP.i1017 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %RBP.i1017
  %2780 = sub i64 %2779, 52
  %2781 = load i64, i64* %PC.i1015
  %2782 = add i64 %2781, 3
  store i64 %2782, i64* %PC.i1015
  %2783 = inttoptr i64 %2780 to i32*
  %2784 = load i32, i32* %2783
  %2785 = zext i32 %2784 to i64
  store i64 %2785, i64* %RAX.i1016, align 8
  store %struct.Memory* %loadMem_429828, %struct.Memory** %MEMORY
  %loadMem_42982b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i1012 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 5
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %RCX.i1013 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 15
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RBP.i1014 = bitcast %union.anon* %2794 to i64*
  %2795 = load i64, i64* %RBP.i1014
  %2796 = sub i64 %2795, 40
  %2797 = load i64, i64* %PC.i1012
  %2798 = add i64 %2797, 4
  store i64 %2798, i64* %PC.i1012
  %2799 = inttoptr i64 %2796 to i64*
  %2800 = load i64, i64* %2799
  store i64 %2800, i64* %RCX.i1013, align 8
  store %struct.Memory* %loadMem_42982b, %struct.Memory** %MEMORY
  %loadMem_42982f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i1009 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 7
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %RDX.i1010 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 15
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RBP.i1011 = bitcast %union.anon* %2809 to i64*
  %2810 = load i64, i64* %RBP.i1011
  %2811 = sub i64 %2810, 44
  %2812 = load i64, i64* %PC.i1009
  %2813 = add i64 %2812, 4
  store i64 %2813, i64* %PC.i1009
  %2814 = inttoptr i64 %2811 to i32*
  %2815 = load i32, i32* %2814
  %2816 = sext i32 %2815 to i64
  store i64 %2816, i64* %RDX.i1010, align 8
  store %struct.Memory* %loadMem_42982f, %struct.Memory** %MEMORY
  %loadMem_429833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 33
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %PC.i1006 = bitcast %union.anon* %2819 to i64*
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 5
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %RCX.i1007 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 7
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %RDX.i1008 = bitcast %union.anon* %2825 to i64*
  %2826 = load i64, i64* %RCX.i1007
  %2827 = load i64, i64* %RDX.i1008
  %2828 = mul i64 %2827, 8
  %2829 = add i64 %2828, %2826
  %2830 = load i64, i64* %PC.i1006
  %2831 = add i64 %2830, 4
  store i64 %2831, i64* %PC.i1006
  %2832 = inttoptr i64 %2829 to i64*
  %2833 = load i64, i64* %2832
  store i64 %2833, i64* %RCX.i1007, align 8
  store %struct.Memory* %loadMem_429833, %struct.Memory** %MEMORY
  %loadMem_429837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 33
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %PC.i1004 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 5
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %RCX.i1005 = bitcast %union.anon* %2839 to i64*
  %2840 = load i64, i64* %RCX.i1005
  %2841 = add i64 %2840, 16
  %2842 = load i64, i64* %PC.i1004
  %2843 = add i64 %2842, 4
  store i64 %2843, i64* %PC.i1004
  %2844 = inttoptr i64 %2841 to i64*
  %2845 = load i64, i64* %2844
  store i64 %2845, i64* %RCX.i1005, align 8
  store %struct.Memory* %loadMem_429837, %struct.Memory** %MEMORY
  %loadMem_42983b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 33
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %PC.i1001 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 7
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %RDX.i1002 = bitcast %union.anon* %2851 to i64*
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 15
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %RBP.i1003 = bitcast %union.anon* %2854 to i64*
  %2855 = load i64, i64* %RBP.i1003
  %2856 = sub i64 %2855, 60
  %2857 = load i64, i64* %PC.i1001
  %2858 = add i64 %2857, 4
  store i64 %2858, i64* %PC.i1001
  %2859 = inttoptr i64 %2856 to i32*
  %2860 = load i32, i32* %2859
  %2861 = sext i32 %2860 to i64
  store i64 %2861, i64* %RDX.i1002, align 8
  store %struct.Memory* %loadMem_42983b, %struct.Memory** %MEMORY
  %loadMem_42983f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 33
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %2864 to i64*
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 1
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %EAX.i998 = bitcast %union.anon* %2867 to i32*
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 5
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %RCX.i999 = bitcast %union.anon* %2870 to i64*
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 7
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %RDX.i1000 = bitcast %union.anon* %2873 to i64*
  %2874 = load i64, i64* %RCX.i999
  %2875 = load i64, i64* %RDX.i1000
  %2876 = mul i64 %2875, 4
  %2877 = add i64 %2876, %2874
  %2878 = load i32, i32* %EAX.i998
  %2879 = zext i32 %2878 to i64
  %2880 = load i64, i64* %PC.i997
  %2881 = add i64 %2880, 3
  store i64 %2881, i64* %PC.i997
  %2882 = inttoptr i64 %2877 to i32*
  store i32 %2878, i32* %2882
  store %struct.Memory* %loadMem_42983f, %struct.Memory** %MEMORY
  %loadMem_429842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i994 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 1
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %RAX.i995 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 15
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %RBP.i996 = bitcast %union.anon* %2891 to i64*
  %2892 = load i64, i64* %RBP.i996
  %2893 = sub i64 %2892, 48
  %2894 = load i64, i64* %PC.i994
  %2895 = add i64 %2894, 3
  store i64 %2895, i64* %PC.i994
  %2896 = inttoptr i64 %2893 to i32*
  %2897 = load i32, i32* %2896
  %2898 = zext i32 %2897 to i64
  store i64 %2898, i64* %RAX.i995, align 8
  store %struct.Memory* %loadMem_429842, %struct.Memory** %MEMORY
  %loadMem_429845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i991 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 5
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RCX.i992 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 15
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %RBP.i993 = bitcast %union.anon* %2907 to i64*
  %2908 = load i64, i64* %RBP.i993
  %2909 = sub i64 %2908, 40
  %2910 = load i64, i64* %PC.i991
  %2911 = add i64 %2910, 4
  store i64 %2911, i64* %PC.i991
  %2912 = inttoptr i64 %2909 to i64*
  %2913 = load i64, i64* %2912
  store i64 %2913, i64* %RCX.i992, align 8
  store %struct.Memory* %loadMem_429845, %struct.Memory** %MEMORY
  %loadMem_429849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 33
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %PC.i988 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 7
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RDX.i989 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 15
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RBP.i990 = bitcast %union.anon* %2922 to i64*
  %2923 = load i64, i64* %RBP.i990
  %2924 = sub i64 %2923, 44
  %2925 = load i64, i64* %PC.i988
  %2926 = add i64 %2925, 4
  store i64 %2926, i64* %PC.i988
  %2927 = inttoptr i64 %2924 to i32*
  %2928 = load i32, i32* %2927
  %2929 = sext i32 %2928 to i64
  store i64 %2929, i64* %RDX.i989, align 8
  store %struct.Memory* %loadMem_429849, %struct.Memory** %MEMORY
  %loadMem_42984d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 5
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RCX.i986 = bitcast %union.anon* %2935 to i64*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 7
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %RDX.i987 = bitcast %union.anon* %2938 to i64*
  %2939 = load i64, i64* %RCX.i986
  %2940 = load i64, i64* %RDX.i987
  %2941 = mul i64 %2940, 8
  %2942 = add i64 %2941, %2939
  %2943 = load i64, i64* %PC.i985
  %2944 = add i64 %2943, 4
  store i64 %2944, i64* %PC.i985
  %2945 = inttoptr i64 %2942 to i64*
  %2946 = load i64, i64* %2945
  store i64 %2946, i64* %RCX.i986, align 8
  store %struct.Memory* %loadMem_42984d, %struct.Memory** %MEMORY
  %loadMem_429851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 33
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %2949 to i64*
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 5
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %RCX.i984 = bitcast %union.anon* %2952 to i64*
  %2953 = load i64, i64* %RCX.i984
  %2954 = add i64 %2953, 24
  %2955 = load i64, i64* %PC.i983
  %2956 = add i64 %2955, 4
  store i64 %2956, i64* %PC.i983
  %2957 = inttoptr i64 %2954 to i64*
  %2958 = load i64, i64* %2957
  store i64 %2958, i64* %RCX.i984, align 8
  store %struct.Memory* %loadMem_429851, %struct.Memory** %MEMORY
  %loadMem_429855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 33
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %2961 to i64*
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 7
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %RDX.i981 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 15
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RBP.i982 = bitcast %union.anon* %2967 to i64*
  %2968 = load i64, i64* %RBP.i982
  %2969 = sub i64 %2968, 60
  %2970 = load i64, i64* %PC.i980
  %2971 = add i64 %2970, 4
  store i64 %2971, i64* %PC.i980
  %2972 = inttoptr i64 %2969 to i32*
  %2973 = load i32, i32* %2972
  %2974 = sext i32 %2973 to i64
  store i64 %2974, i64* %RDX.i981, align 8
  store %struct.Memory* %loadMem_429855, %struct.Memory** %MEMORY
  %loadMem_429859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 33
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %2977 to i64*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 1
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %EAX.i977 = bitcast %union.anon* %2980 to i32*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 5
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %RCX.i978 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 7
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RDX.i979 = bitcast %union.anon* %2986 to i64*
  %2987 = load i64, i64* %RCX.i978
  %2988 = load i64, i64* %RDX.i979
  %2989 = mul i64 %2988, 4
  %2990 = add i64 %2989, %2987
  %2991 = load i32, i32* %EAX.i977
  %2992 = zext i32 %2991 to i64
  %2993 = load i64, i64* %PC.i976
  %2994 = add i64 %2993, 3
  store i64 %2994, i64* %PC.i976
  %2995 = inttoptr i64 %2990 to i32*
  store i32 %2991, i32* %2995
  store %struct.Memory* %loadMem_429859, %struct.Memory** %MEMORY
  %loadMem_42985c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i973 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 1
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %RAX.i974 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 15
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RBP.i975 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %RBP.i975
  %3006 = sub i64 %3005, 48
  %3007 = load i64, i64* %PC.i973
  %3008 = add i64 %3007, 3
  store i64 %3008, i64* %PC.i973
  %3009 = inttoptr i64 %3006 to i32*
  %3010 = load i32, i32* %3009
  %3011 = zext i32 %3010 to i64
  store i64 %3011, i64* %RAX.i974, align 8
  store %struct.Memory* %loadMem_42985c, %struct.Memory** %MEMORY
  %loadMem_42985f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 33
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 1
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %RAX.i972 = bitcast %union.anon* %3017 to i64*
  %3018 = load i64, i64* %RAX.i972
  %3019 = load i64, i64* %PC.i971
  %3020 = add i64 %3019, 3
  store i64 %3020, i64* %PC.i971
  %3021 = trunc i64 %3018 to i32
  %3022 = add i32 1, %3021
  %3023 = zext i32 %3022 to i64
  store i64 %3023, i64* %RAX.i972, align 8
  %3024 = icmp ult i32 %3022, %3021
  %3025 = icmp ult i32 %3022, 1
  %3026 = or i1 %3024, %3025
  %3027 = zext i1 %3026 to i8
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3027, i8* %3028, align 1
  %3029 = and i32 %3022, 255
  %3030 = call i32 @llvm.ctpop.i32(i32 %3029)
  %3031 = trunc i32 %3030 to i8
  %3032 = and i8 %3031, 1
  %3033 = xor i8 %3032, 1
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3033, i8* %3034, align 1
  %3035 = xor i64 1, %3018
  %3036 = trunc i64 %3035 to i32
  %3037 = xor i32 %3036, %3022
  %3038 = lshr i32 %3037, 4
  %3039 = trunc i32 %3038 to i8
  %3040 = and i8 %3039, 1
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3040, i8* %3041, align 1
  %3042 = icmp eq i32 %3022, 0
  %3043 = zext i1 %3042 to i8
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3043, i8* %3044, align 1
  %3045 = lshr i32 %3022, 31
  %3046 = trunc i32 %3045 to i8
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3046, i8* %3047, align 1
  %3048 = lshr i32 %3021, 31
  %3049 = xor i32 %3045, %3048
  %3050 = add i32 %3049, %3045
  %3051 = icmp eq i32 %3050, 2
  %3052 = zext i1 %3051 to i8
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3052, i8* %3053, align 1
  store %struct.Memory* %loadMem_42985f, %struct.Memory** %MEMORY
  %loadMem_429862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 33
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %PC.i968 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 1
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %EAX.i969 = bitcast %union.anon* %3059 to i32*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 15
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RBP.i970 = bitcast %union.anon* %3062 to i64*
  %3063 = load i64, i64* %RBP.i970
  %3064 = sub i64 %3063, 48
  %3065 = load i32, i32* %EAX.i969
  %3066 = zext i32 %3065 to i64
  %3067 = load i64, i64* %PC.i968
  %3068 = add i64 %3067, 3
  store i64 %3068, i64* %PC.i968
  %3069 = inttoptr i64 %3064 to i32*
  store i32 %3065, i32* %3069
  store %struct.Memory* %loadMem_429862, %struct.Memory** %MEMORY
  %loadMem_429865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 33
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %PC.i965 = bitcast %union.anon* %3072 to i64*
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 1
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %RAX.i966 = bitcast %union.anon* %3075 to i64*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 15
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %RBP.i967 = bitcast %union.anon* %3078 to i64*
  %3079 = load i64, i64* %RBP.i967
  %3080 = sub i64 %3079, 60
  %3081 = load i64, i64* %PC.i965
  %3082 = add i64 %3081, 3
  store i64 %3082, i64* %PC.i965
  %3083 = inttoptr i64 %3080 to i32*
  %3084 = load i32, i32* %3083
  %3085 = zext i32 %3084 to i64
  store i64 %3085, i64* %RAX.i966, align 8
  store %struct.Memory* %loadMem_429865, %struct.Memory** %MEMORY
  %loadMem_429868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 33
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 1
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %RAX.i964 = bitcast %union.anon* %3091 to i64*
  %3092 = load i64, i64* %RAX.i964
  %3093 = load i64, i64* %PC.i963
  %3094 = add i64 %3093, 3
  store i64 %3094, i64* %PC.i963
  %3095 = trunc i64 %3092 to i32
  %3096 = add i32 1, %3095
  %3097 = zext i32 %3096 to i64
  store i64 %3097, i64* %RAX.i964, align 8
  %3098 = icmp ult i32 %3096, %3095
  %3099 = icmp ult i32 %3096, 1
  %3100 = or i1 %3098, %3099
  %3101 = zext i1 %3100 to i8
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3101, i8* %3102, align 1
  %3103 = and i32 %3096, 255
  %3104 = call i32 @llvm.ctpop.i32(i32 %3103)
  %3105 = trunc i32 %3104 to i8
  %3106 = and i8 %3105, 1
  %3107 = xor i8 %3106, 1
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3107, i8* %3108, align 1
  %3109 = xor i64 1, %3092
  %3110 = trunc i64 %3109 to i32
  %3111 = xor i32 %3110, %3096
  %3112 = lshr i32 %3111, 4
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3114, i8* %3115, align 1
  %3116 = icmp eq i32 %3096, 0
  %3117 = zext i1 %3116 to i8
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3117, i8* %3118, align 1
  %3119 = lshr i32 %3096, 31
  %3120 = trunc i32 %3119 to i8
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3120, i8* %3121, align 1
  %3122 = lshr i32 %3095, 31
  %3123 = xor i32 %3119, %3122
  %3124 = add i32 %3123, %3119
  %3125 = icmp eq i32 %3124, 2
  %3126 = zext i1 %3125 to i8
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3126, i8* %3127, align 1
  store %struct.Memory* %loadMem_429868, %struct.Memory** %MEMORY
  %loadMem_42986b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 33
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %3130 to i64*
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 1
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %EAX.i961 = bitcast %union.anon* %3133 to i32*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 15
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %RBP.i962 = bitcast %union.anon* %3136 to i64*
  %3137 = load i64, i64* %RBP.i962
  %3138 = sub i64 %3137, 60
  %3139 = load i32, i32* %EAX.i961
  %3140 = zext i32 %3139 to i64
  %3141 = load i64, i64* %PC.i960
  %3142 = add i64 %3141, 3
  store i64 %3142, i64* %PC.i960
  %3143 = inttoptr i64 %3138 to i32*
  store i32 %3139, i32* %3143
  store %struct.Memory* %loadMem_42986b, %struct.Memory** %MEMORY
  %loadMem_42986e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 33
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %PC.i959 = bitcast %union.anon* %3146 to i64*
  %3147 = load i64, i64* %PC.i959
  %3148 = add i64 %3147, 976
  %3149 = load i64, i64* %PC.i959
  %3150 = add i64 %3149, 5
  store i64 %3150, i64* %PC.i959
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3148, i64* %3151, align 8
  store %struct.Memory* %loadMem_42986e, %struct.Memory** %MEMORY
  br label %block_.L_429c3e

block_.L_429873:                                  ; preds = %block_4297ea, %block_4297cd, %block_4297b0, %block_429793, %block_429776, %block_.L_42975a
  %loadMem_429873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 33
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %PC.i956 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 1
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %RAX.i957 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 15
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RBP.i958 = bitcast %union.anon* %3160 to i64*
  %3161 = load i64, i64* %RBP.i958
  %3162 = sub i64 %3161, 24
  %3163 = load i64, i64* %PC.i956
  %3164 = add i64 %3163, 4
  store i64 %3164, i64* %PC.i956
  %3165 = inttoptr i64 %3162 to i64*
  %3166 = load i64, i64* %3165
  store i64 %3166, i64* %RAX.i957, align 8
  store %struct.Memory* %loadMem_429873, %struct.Memory** %MEMORY
  %loadMem_429877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 33
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %PC.i953 = bitcast %union.anon* %3169 to i64*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 5
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %RCX.i954 = bitcast %union.anon* %3172 to i64*
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 15
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %RBP.i955 = bitcast %union.anon* %3175 to i64*
  %3176 = load i64, i64* %RBP.i955
  %3177 = sub i64 %3176, 56
  %3178 = load i64, i64* %PC.i953
  %3179 = add i64 %3178, 3
  store i64 %3179, i64* %PC.i953
  %3180 = inttoptr i64 %3177 to i32*
  %3181 = load i32, i32* %3180
  %3182 = zext i32 %3181 to i64
  store i64 %3182, i64* %RCX.i954, align 8
  store %struct.Memory* %loadMem_429877, %struct.Memory** %MEMORY
  %loadMem_42987a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 5
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RCX.i952 = bitcast %union.anon* %3188 to i64*
  %3189 = load i64, i64* %RCX.i952
  %3190 = load i64, i64* %PC.i951
  %3191 = add i64 %3190, 3
  store i64 %3191, i64* %PC.i951
  %3192 = trunc i64 %3189 to i32
  %3193 = add i32 1, %3192
  %3194 = zext i32 %3193 to i64
  store i64 %3194, i64* %RCX.i952, align 8
  %3195 = icmp ult i32 %3193, %3192
  %3196 = icmp ult i32 %3193, 1
  %3197 = or i1 %3195, %3196
  %3198 = zext i1 %3197 to i8
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3198, i8* %3199, align 1
  %3200 = and i32 %3193, 255
  %3201 = call i32 @llvm.ctpop.i32(i32 %3200)
  %3202 = trunc i32 %3201 to i8
  %3203 = and i8 %3202, 1
  %3204 = xor i8 %3203, 1
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3204, i8* %3205, align 1
  %3206 = xor i64 1, %3189
  %3207 = trunc i64 %3206 to i32
  %3208 = xor i32 %3207, %3193
  %3209 = lshr i32 %3208, 4
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3211, i8* %3212, align 1
  %3213 = icmp eq i32 %3193, 0
  %3214 = zext i1 %3213 to i8
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3214, i8* %3215, align 1
  %3216 = lshr i32 %3193, 31
  %3217 = trunc i32 %3216 to i8
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3217, i8* %3218, align 1
  %3219 = lshr i32 %3192, 31
  %3220 = xor i32 %3216, %3219
  %3221 = add i32 %3220, %3216
  %3222 = icmp eq i32 %3221, 2
  %3223 = zext i1 %3222 to i8
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3223, i8* %3224, align 1
  store %struct.Memory* %loadMem_42987a, %struct.Memory** %MEMORY
  %loadMem_42987d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 5
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %ECX.i949 = bitcast %union.anon* %3230 to i32*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 7
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %RDX.i950 = bitcast %union.anon* %3233 to i64*
  %3234 = load i32, i32* %ECX.i949
  %3235 = zext i32 %3234 to i64
  %3236 = load i64, i64* %PC.i948
  %3237 = add i64 %3236, 3
  store i64 %3237, i64* %PC.i948
  %3238 = shl i64 %3235, 32
  %3239 = ashr exact i64 %3238, 32
  store i64 %3239, i64* %RDX.i950, align 8
  store %struct.Memory* %loadMem_42987d, %struct.Memory** %MEMORY
  %loadMem_429880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 1
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RAX.i945 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 5
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %RCX.i946 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 7
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RDX.i947 = bitcast %union.anon* %3251 to i64*
  %3252 = load i64, i64* %RAX.i945
  %3253 = load i64, i64* %RDX.i947
  %3254 = mul i64 %3253, 4
  %3255 = add i64 %3254, %3252
  %3256 = load i64, i64* %PC.i944
  %3257 = add i64 %3256, 3
  store i64 %3257, i64* %PC.i944
  %3258 = inttoptr i64 %3255 to i32*
  %3259 = load i32, i32* %3258
  %3260 = zext i32 %3259 to i64
  store i64 %3260, i64* %RCX.i946, align 8
  store %struct.Memory* %loadMem_429880, %struct.Memory** %MEMORY
  %loadMem_429883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 33
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %3263 to i64*
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 5
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %RCX.i943 = bitcast %union.anon* %3266 to i64*
  %3267 = load i64, i64* %RCX.i943
  %3268 = load i64, i64* %PC.i942
  %3269 = add i64 %3268, 3
  store i64 %3269, i64* %PC.i942
  %3270 = and i64 1, %3267
  %3271 = trunc i64 %3270 to i32
  store i64 %3270, i64* %RCX.i943, align 8
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3272, align 1
  %3273 = and i32 %3271, 255
  %3274 = call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3277, i8* %3278, align 1
  %3279 = icmp eq i32 %3271, 0
  %3280 = zext i1 %3279 to i8
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3280, i8* %3281, align 1
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3282, align 1
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3283, align 1
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3284, align 1
  store %struct.Memory* %loadMem_429883, %struct.Memory** %MEMORY
  %loadMem_429886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 5
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %ECX.i941 = bitcast %union.anon* %3290 to i32*
  %3291 = load i32, i32* %ECX.i941
  %3292 = zext i32 %3291 to i64
  %3293 = load i64, i64* %PC.i940
  %3294 = add i64 %3293, 3
  store i64 %3294, i64* %PC.i940
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3295, align 1
  %3296 = and i32 %3291, 255
  %3297 = call i32 @llvm.ctpop.i32(i32 %3296)
  %3298 = trunc i32 %3297 to i8
  %3299 = and i8 %3298, 1
  %3300 = xor i8 %3299, 1
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3300, i8* %3301, align 1
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3302, align 1
  %3303 = icmp eq i32 %3291, 0
  %3304 = zext i1 %3303 to i8
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3304, i8* %3305, align 1
  %3306 = lshr i32 %3291, 31
  %3307 = trunc i32 %3306 to i8
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3307, i8* %3308, align 1
  %3309 = lshr i32 %3291, 31
  %3310 = xor i32 %3306, %3309
  %3311 = add i32 %3310, %3309
  %3312 = icmp eq i32 %3311, 2
  %3313 = zext i1 %3312 to i8
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3313, i8* %3314, align 1
  store %struct.Memory* %loadMem_429886, %struct.Memory** %MEMORY
  %loadMem_429889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %3317 to i64*
  %3318 = load i64, i64* %PC.i939
  %3319 = add i64 %3318, 144
  %3320 = load i64, i64* %PC.i939
  %3321 = add i64 %3320, 6
  %3322 = load i64, i64* %PC.i939
  %3323 = add i64 %3322, 6
  store i64 %3323, i64* %PC.i939
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3325 = load i8, i8* %3324, align 1
  store i8 %3325, i8* %BRANCH_TAKEN, align 1
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3327 = icmp ne i8 %3325, 0
  %3328 = select i1 %3327, i64 %3319, i64 %3321
  store i64 %3328, i64* %3326, align 8
  store %struct.Memory* %loadMem_429889, %struct.Memory** %MEMORY
  %loadBr_429889 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429889 = icmp eq i8 %loadBr_429889, 1
  br i1 %cmpBr_429889, label %block_.L_429919, label %block_42988f

block_42988f:                                     ; preds = %block_.L_429873
  %loadMem_42988f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 33
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 1
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %RAX.i937 = bitcast %union.anon* %3334 to i64*
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 15
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %RBP.i938 = bitcast %union.anon* %3337 to i64*
  %3338 = load i64, i64* %RBP.i938
  %3339 = sub i64 %3338, 52
  %3340 = load i64, i64* %PC.i936
  %3341 = add i64 %3340, 3
  store i64 %3341, i64* %PC.i936
  %3342 = inttoptr i64 %3339 to i32*
  %3343 = load i32, i32* %3342
  %3344 = zext i32 %3343 to i64
  store i64 %3344, i64* %RAX.i937, align 8
  store %struct.Memory* %loadMem_42988f, %struct.Memory** %MEMORY
  %loadMem_429892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 33
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %3347 to i64*
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 1
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %RAX.i935 = bitcast %union.anon* %3350 to i64*
  %3351 = load i64, i64* %RAX.i935
  %3352 = load i64, i64* %PC.i934
  %3353 = add i64 %3352, 3
  store i64 %3353, i64* %PC.i934
  %3354 = trunc i64 %3351 to i32
  %3355 = add i32 1, %3354
  %3356 = zext i32 %3355 to i64
  store i64 %3356, i64* %RAX.i935, align 8
  %3357 = icmp ult i32 %3355, %3354
  %3358 = icmp ult i32 %3355, 1
  %3359 = or i1 %3357, %3358
  %3360 = zext i1 %3359 to i8
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3360, i8* %3361, align 1
  %3362 = and i32 %3355, 255
  %3363 = call i32 @llvm.ctpop.i32(i32 %3362)
  %3364 = trunc i32 %3363 to i8
  %3365 = and i8 %3364, 1
  %3366 = xor i8 %3365, 1
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3366, i8* %3367, align 1
  %3368 = xor i64 1, %3351
  %3369 = trunc i64 %3368 to i32
  %3370 = xor i32 %3369, %3355
  %3371 = lshr i32 %3370, 4
  %3372 = trunc i32 %3371 to i8
  %3373 = and i8 %3372, 1
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3373, i8* %3374, align 1
  %3375 = icmp eq i32 %3355, 0
  %3376 = zext i1 %3375 to i8
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3376, i8* %3377, align 1
  %3378 = lshr i32 %3355, 31
  %3379 = trunc i32 %3378 to i8
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3379, i8* %3380, align 1
  %3381 = lshr i32 %3354, 31
  %3382 = xor i32 %3378, %3381
  %3383 = add i32 %3382, %3378
  %3384 = icmp eq i32 %3383, 2
  %3385 = zext i1 %3384 to i8
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3385, i8* %3386, align 1
  store %struct.Memory* %loadMem_429892, %struct.Memory** %MEMORY
  %loadMem_429895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 33
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %3389 to i64*
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 1
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %EAX.i932 = bitcast %union.anon* %3392 to i32*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 15
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %RBP.i933 = bitcast %union.anon* %3395 to i64*
  %3396 = load i64, i64* %RBP.i933
  %3397 = sub i64 %3396, 52
  %3398 = load i32, i32* %EAX.i932
  %3399 = zext i32 %3398 to i64
  %3400 = load i64, i64* %PC.i931
  %3401 = add i64 %3400, 3
  store i64 %3401, i64* %PC.i931
  %3402 = inttoptr i64 %3397 to i32*
  store i32 %3398, i32* %3402
  store %struct.Memory* %loadMem_429895, %struct.Memory** %MEMORY
  %loadMem_429898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 33
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %3405 to i64*
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 5
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %RCX.i929 = bitcast %union.anon* %3408 to i64*
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 15
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %RBP.i930 = bitcast %union.anon* %3411 to i64*
  %3412 = load i64, i64* %RBP.i930
  %3413 = sub i64 %3412, 40
  %3414 = load i64, i64* %PC.i928
  %3415 = add i64 %3414, 4
  store i64 %3415, i64* %PC.i928
  %3416 = inttoptr i64 %3413 to i64*
  %3417 = load i64, i64* %3416
  store i64 %3417, i64* %RCX.i929, align 8
  store %struct.Memory* %loadMem_429898, %struct.Memory** %MEMORY
  %loadMem_42989c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 7
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RDX.i926 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 15
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %RBP.i927 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %RBP.i927
  %3428 = sub i64 %3427, 44
  %3429 = load i64, i64* %PC.i925
  %3430 = add i64 %3429, 4
  store i64 %3430, i64* %PC.i925
  %3431 = inttoptr i64 %3428 to i32*
  %3432 = load i32, i32* %3431
  %3433 = sext i32 %3432 to i64
  store i64 %3433, i64* %RDX.i926, align 8
  store %struct.Memory* %loadMem_42989c, %struct.Memory** %MEMORY
  %loadMem_4298a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 5
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RCX.i923 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 7
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RDX.i924 = bitcast %union.anon* %3442 to i64*
  %3443 = load i64, i64* %RCX.i923
  %3444 = load i64, i64* %RDX.i924
  %3445 = mul i64 %3444, 8
  %3446 = add i64 %3445, %3443
  %3447 = load i64, i64* %PC.i922
  %3448 = add i64 %3447, 4
  store i64 %3448, i64* %PC.i922
  %3449 = inttoptr i64 %3446 to i64*
  %3450 = load i64, i64* %3449
  store i64 %3450, i64* %RCX.i923, align 8
  store %struct.Memory* %loadMem_4298a0, %struct.Memory** %MEMORY
  %loadMem_4298a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 33
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %PC.i920 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 5
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %RCX.i921 = bitcast %union.anon* %3456 to i64*
  %3457 = load i64, i64* %RCX.i921
  %3458 = add i64 %3457, 8
  %3459 = load i64, i64* %PC.i920
  %3460 = add i64 %3459, 4
  store i64 %3460, i64* %PC.i920
  %3461 = inttoptr i64 %3458 to i64*
  %3462 = load i64, i64* %3461
  store i64 %3462, i64* %RCX.i921, align 8
  store %struct.Memory* %loadMem_4298a4, %struct.Memory** %MEMORY
  %loadMem_4298a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 33
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %3465 to i64*
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 1
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %RAX.i918 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 15
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RBP.i919 = bitcast %union.anon* %3471 to i64*
  %3472 = load i64, i64* %RBP.i919
  %3473 = sub i64 %3472, 60
  %3474 = load i64, i64* %PC.i917
  %3475 = add i64 %3474, 3
  store i64 %3475, i64* %PC.i917
  %3476 = inttoptr i64 %3473 to i32*
  %3477 = load i32, i32* %3476
  %3478 = zext i32 %3477 to i64
  store i64 %3478, i64* %RAX.i918, align 8
  store %struct.Memory* %loadMem_4298a8, %struct.Memory** %MEMORY
  %loadMem_4298ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 33
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %3481 to i64*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 1
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RAX.i916 = bitcast %union.anon* %3484 to i64*
  %3485 = load i64, i64* %RAX.i916
  %3486 = load i64, i64* %PC.i915
  %3487 = add i64 %3486, 3
  store i64 %3487, i64* %PC.i915
  %3488 = trunc i64 %3485 to i32
  %3489 = sub i32 %3488, 1
  %3490 = zext i32 %3489 to i64
  store i64 %3490, i64* %RAX.i916, align 8
  %3491 = icmp ult i32 %3488, 1
  %3492 = zext i1 %3491 to i8
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3492, i8* %3493, align 1
  %3494 = and i32 %3489, 255
  %3495 = call i32 @llvm.ctpop.i32(i32 %3494)
  %3496 = trunc i32 %3495 to i8
  %3497 = and i8 %3496, 1
  %3498 = xor i8 %3497, 1
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3498, i8* %3499, align 1
  %3500 = xor i64 1, %3485
  %3501 = trunc i64 %3500 to i32
  %3502 = xor i32 %3501, %3489
  %3503 = lshr i32 %3502, 4
  %3504 = trunc i32 %3503 to i8
  %3505 = and i8 %3504, 1
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3505, i8* %3506, align 1
  %3507 = icmp eq i32 %3489, 0
  %3508 = zext i1 %3507 to i8
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3508, i8* %3509, align 1
  %3510 = lshr i32 %3489, 31
  %3511 = trunc i32 %3510 to i8
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3511, i8* %3512, align 1
  %3513 = lshr i32 %3488, 31
  %3514 = xor i32 %3510, %3513
  %3515 = add i32 %3514, %3513
  %3516 = icmp eq i32 %3515, 2
  %3517 = zext i1 %3516 to i8
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3517, i8* %3518, align 1
  store %struct.Memory* %loadMem_4298ab, %struct.Memory** %MEMORY
  %loadMem_4298ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 33
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 1
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %EAX.i913 = bitcast %union.anon* %3524 to i32*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 7
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %RDX.i914 = bitcast %union.anon* %3527 to i64*
  %3528 = load i32, i32* %EAX.i913
  %3529 = zext i32 %3528 to i64
  %3530 = load i64, i64* %PC.i912
  %3531 = add i64 %3530, 3
  store i64 %3531, i64* %PC.i912
  %3532 = shl i64 %3529, 32
  %3533 = ashr exact i64 %3532, 32
  store i64 %3533, i64* %RDX.i914, align 8
  store %struct.Memory* %loadMem_4298ae, %struct.Memory** %MEMORY
  %loadMem_4298b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 33
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %3536 to i64*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 1
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %RAX.i909 = bitcast %union.anon* %3539 to i64*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 5
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %RCX.i910 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 7
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %RDX.i911 = bitcast %union.anon* %3545 to i64*
  %3546 = load i64, i64* %RCX.i910
  %3547 = load i64, i64* %RDX.i911
  %3548 = add i64 %3547, %3546
  %3549 = load i64, i64* %PC.i908
  %3550 = add i64 %3549, 4
  store i64 %3550, i64* %PC.i908
  %3551 = inttoptr i64 %3548 to i8*
  %3552 = load i8, i8* %3551
  %3553 = sext i8 %3552 to i64
  %3554 = and i64 %3553, 4294967295
  store i64 %3554, i64* %RAX.i909, align 8
  store %struct.Memory* %loadMem_4298b1, %struct.Memory** %MEMORY
  %loadMem_4298b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 33
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %PC.i906 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 1
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %EAX.i907 = bitcast %union.anon* %3560 to i32*
  %3561 = load i32, i32* %EAX.i907
  %3562 = zext i32 %3561 to i64
  %3563 = load i64, i64* %PC.i906
  %3564 = add i64 %3563, 3
  store i64 %3564, i64* %PC.i906
  %3565 = sub i32 %3561, 6
  %3566 = icmp ult i32 %3561, 6
  %3567 = zext i1 %3566 to i8
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3567, i8* %3568, align 1
  %3569 = and i32 %3565, 255
  %3570 = call i32 @llvm.ctpop.i32(i32 %3569)
  %3571 = trunc i32 %3570 to i8
  %3572 = and i8 %3571, 1
  %3573 = xor i8 %3572, 1
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3573, i8* %3574, align 1
  %3575 = xor i64 6, %3562
  %3576 = trunc i64 %3575 to i32
  %3577 = xor i32 %3576, %3565
  %3578 = lshr i32 %3577, 4
  %3579 = trunc i32 %3578 to i8
  %3580 = and i8 %3579, 1
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3580, i8* %3581, align 1
  %3582 = icmp eq i32 %3565, 0
  %3583 = zext i1 %3582 to i8
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3583, i8* %3584, align 1
  %3585 = lshr i32 %3565, 31
  %3586 = trunc i32 %3585 to i8
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3586, i8* %3587, align 1
  %3588 = lshr i32 %3561, 31
  %3589 = xor i32 %3585, %3588
  %3590 = add i32 %3589, %3588
  %3591 = icmp eq i32 %3590, 2
  %3592 = zext i1 %3591 to i8
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3592, i8* %3593, align 1
  store %struct.Memory* %loadMem_4298b5, %struct.Memory** %MEMORY
  %loadMem_4298b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %3596 to i64*
  %3597 = load i64, i64* %PC.i905
  %3598 = add i64 %3597, 92
  %3599 = load i64, i64* %PC.i905
  %3600 = add i64 %3599, 6
  %3601 = load i64, i64* %PC.i905
  %3602 = add i64 %3601, 6
  store i64 %3602, i64* %PC.i905
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3604 = load i8, i8* %3603, align 1
  store i8 %3604, i8* %BRANCH_TAKEN, align 1
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3606 = icmp ne i8 %3604, 0
  %3607 = select i1 %3606, i64 %3598, i64 %3600
  store i64 %3607, i64* %3605, align 8
  store %struct.Memory* %loadMem_4298b8, %struct.Memory** %MEMORY
  %loadBr_4298b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4298b8 = icmp eq i8 %loadBr_4298b8, 1
  br i1 %cmpBr_4298b8, label %block_.L_429914, label %block_4298be

block_4298be:                                     ; preds = %block_42988f
  %loadMem_4298be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 33
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %3610 to i64*
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 1
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %RAX.i903 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 15
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %RBP.i904 = bitcast %union.anon* %3616 to i64*
  %3617 = load i64, i64* %RBP.i904
  %3618 = sub i64 %3617, 40
  %3619 = load i64, i64* %PC.i902
  %3620 = add i64 %3619, 4
  store i64 %3620, i64* %PC.i902
  %3621 = inttoptr i64 %3618 to i64*
  %3622 = load i64, i64* %3621
  store i64 %3622, i64* %RAX.i903, align 8
  store %struct.Memory* %loadMem_4298be, %struct.Memory** %MEMORY
  %loadMem_4298c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 5
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %RCX.i900 = bitcast %union.anon* %3628 to i64*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 15
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RBP.i901 = bitcast %union.anon* %3631 to i64*
  %3632 = load i64, i64* %RBP.i901
  %3633 = sub i64 %3632, 44
  %3634 = load i64, i64* %PC.i899
  %3635 = add i64 %3634, 4
  store i64 %3635, i64* %PC.i899
  %3636 = inttoptr i64 %3633 to i32*
  %3637 = load i32, i32* %3636
  %3638 = sext i32 %3637 to i64
  store i64 %3638, i64* %RCX.i900, align 8
  store %struct.Memory* %loadMem_4298c2, %struct.Memory** %MEMORY
  %loadMem_4298c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 33
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %3641 to i64*
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 1
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %RAX.i897 = bitcast %union.anon* %3644 to i64*
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3646 = getelementptr inbounds %struct.GPR, %struct.GPR* %3645, i32 0, i32 5
  %3647 = getelementptr inbounds %struct.Reg, %struct.Reg* %3646, i32 0, i32 0
  %RCX.i898 = bitcast %union.anon* %3647 to i64*
  %3648 = load i64, i64* %RAX.i897
  %3649 = load i64, i64* %RCX.i898
  %3650 = mul i64 %3649, 8
  %3651 = add i64 %3650, %3648
  %3652 = load i64, i64* %PC.i896
  %3653 = add i64 %3652, 4
  store i64 %3653, i64* %PC.i896
  %3654 = inttoptr i64 %3651 to i64*
  %3655 = load i64, i64* %3654
  store i64 %3655, i64* %RAX.i897, align 8
  store %struct.Memory* %loadMem_4298c6, %struct.Memory** %MEMORY
  %loadMem_4298ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 33
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %3658 to i64*
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 1
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %RAX.i895 = bitcast %union.anon* %3661 to i64*
  %3662 = load i64, i64* %RAX.i895
  %3663 = add i64 %3662, 8
  %3664 = load i64, i64* %PC.i894
  %3665 = add i64 %3664, 4
  store i64 %3665, i64* %PC.i894
  %3666 = inttoptr i64 %3663 to i64*
  %3667 = load i64, i64* %3666
  store i64 %3667, i64* %RAX.i895, align 8
  store %struct.Memory* %loadMem_4298ca, %struct.Memory** %MEMORY
  %loadMem_4298ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3669 = getelementptr inbounds %struct.GPR, %struct.GPR* %3668, i32 0, i32 33
  %3670 = getelementptr inbounds %struct.Reg, %struct.Reg* %3669, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %3670 to i64*
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 5
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %RCX.i892 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 15
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %RBP.i893 = bitcast %union.anon* %3676 to i64*
  %3677 = load i64, i64* %RBP.i893
  %3678 = sub i64 %3677, 60
  %3679 = load i64, i64* %PC.i891
  %3680 = add i64 %3679, 4
  store i64 %3680, i64* %PC.i891
  %3681 = inttoptr i64 %3678 to i32*
  %3682 = load i32, i32* %3681
  %3683 = sext i32 %3682 to i64
  store i64 %3683, i64* %RCX.i892, align 8
  store %struct.Memory* %loadMem_4298ce, %struct.Memory** %MEMORY
  %loadMem_4298d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 33
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %3686 to i64*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 1
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %RAX.i889 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 5
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RCX.i890 = bitcast %union.anon* %3692 to i64*
  %3693 = load i64, i64* %RAX.i889
  %3694 = load i64, i64* %RCX.i890
  %3695 = add i64 %3694, %3693
  %3696 = load i64, i64* %PC.i888
  %3697 = add i64 %3696, 4
  store i64 %3697, i64* %PC.i888
  %3698 = inttoptr i64 %3695 to i8*
  store i8 2, i8* %3698
  store %struct.Memory* %loadMem_4298d2, %struct.Memory** %MEMORY
  %loadMem_4298d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 33
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %3701 to i64*
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 7
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %RDX.i886 = bitcast %union.anon* %3704 to i64*
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 15
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %RBP.i887 = bitcast %union.anon* %3707 to i64*
  %3708 = load i64, i64* %RBP.i887
  %3709 = sub i64 %3708, 52
  %3710 = load i64, i64* %PC.i885
  %3711 = add i64 %3710, 3
  store i64 %3711, i64* %PC.i885
  %3712 = inttoptr i64 %3709 to i32*
  %3713 = load i32, i32* %3712
  %3714 = zext i32 %3713 to i64
  store i64 %3714, i64* %RDX.i886, align 8
  store %struct.Memory* %loadMem_4298d6, %struct.Memory** %MEMORY
  %loadMem_4298d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 33
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 1
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %RAX.i883 = bitcast %union.anon* %3720 to i64*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 15
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %RBP.i884 = bitcast %union.anon* %3723 to i64*
  %3724 = load i64, i64* %RBP.i884
  %3725 = sub i64 %3724, 40
  %3726 = load i64, i64* %PC.i882
  %3727 = add i64 %3726, 4
  store i64 %3727, i64* %PC.i882
  %3728 = inttoptr i64 %3725 to i64*
  %3729 = load i64, i64* %3728
  store i64 %3729, i64* %RAX.i883, align 8
  store %struct.Memory* %loadMem_4298d9, %struct.Memory** %MEMORY
  %loadMem_4298dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 33
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %3732 to i64*
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3734 = getelementptr inbounds %struct.GPR, %struct.GPR* %3733, i32 0, i32 5
  %3735 = getelementptr inbounds %struct.Reg, %struct.Reg* %3734, i32 0, i32 0
  %RCX.i880 = bitcast %union.anon* %3735 to i64*
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 15
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %RBP.i881 = bitcast %union.anon* %3738 to i64*
  %3739 = load i64, i64* %RBP.i881
  %3740 = sub i64 %3739, 44
  %3741 = load i64, i64* %PC.i879
  %3742 = add i64 %3741, 4
  store i64 %3742, i64* %PC.i879
  %3743 = inttoptr i64 %3740 to i32*
  %3744 = load i32, i32* %3743
  %3745 = sext i32 %3744 to i64
  store i64 %3745, i64* %RCX.i880, align 8
  store %struct.Memory* %loadMem_4298dd, %struct.Memory** %MEMORY
  %loadMem_4298e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 33
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 1
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %RAX.i877 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 5
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RCX.i878 = bitcast %union.anon* %3754 to i64*
  %3755 = load i64, i64* %RAX.i877
  %3756 = load i64, i64* %RCX.i878
  %3757 = mul i64 %3756, 8
  %3758 = add i64 %3757, %3755
  %3759 = load i64, i64* %PC.i876
  %3760 = add i64 %3759, 4
  store i64 %3760, i64* %PC.i876
  %3761 = inttoptr i64 %3758 to i64*
  %3762 = load i64, i64* %3761
  store i64 %3762, i64* %RAX.i877, align 8
  store %struct.Memory* %loadMem_4298e1, %struct.Memory** %MEMORY
  %loadMem_4298e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 33
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %3765 to i64*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 1
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %RAX.i875 = bitcast %union.anon* %3768 to i64*
  %3769 = load i64, i64* %RAX.i875
  %3770 = add i64 %3769, 16
  %3771 = load i64, i64* %PC.i874
  %3772 = add i64 %3771, 4
  store i64 %3772, i64* %PC.i874
  %3773 = inttoptr i64 %3770 to i64*
  %3774 = load i64, i64* %3773
  store i64 %3774, i64* %RAX.i875, align 8
  store %struct.Memory* %loadMem_4298e5, %struct.Memory** %MEMORY
  %loadMem_4298e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 33
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %3777 to i64*
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 5
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %RCX.i872 = bitcast %union.anon* %3780 to i64*
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 15
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %3783 to i64*
  %3784 = load i64, i64* %RBP.i873
  %3785 = sub i64 %3784, 60
  %3786 = load i64, i64* %PC.i871
  %3787 = add i64 %3786, 4
  store i64 %3787, i64* %PC.i871
  %3788 = inttoptr i64 %3785 to i32*
  %3789 = load i32, i32* %3788
  %3790 = sext i32 %3789 to i64
  store i64 %3790, i64* %RCX.i872, align 8
  store %struct.Memory* %loadMem_4298e9, %struct.Memory** %MEMORY
  %loadMem_4298ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 33
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %3793 to i64*
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 7
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %EDX.i868 = bitcast %union.anon* %3796 to i32*
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 1
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %RAX.i869 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 5
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %RCX.i870 = bitcast %union.anon* %3802 to i64*
  %3803 = load i64, i64* %RAX.i869
  %3804 = load i64, i64* %RCX.i870
  %3805 = mul i64 %3804, 4
  %3806 = add i64 %3805, %3803
  %3807 = load i32, i32* %EDX.i868
  %3808 = zext i32 %3807 to i64
  %3809 = load i64, i64* %PC.i867
  %3810 = add i64 %3809, 3
  store i64 %3810, i64* %PC.i867
  %3811 = inttoptr i64 %3806 to i32*
  store i32 %3807, i32* %3811
  store %struct.Memory* %loadMem_4298ed, %struct.Memory** %MEMORY
  %loadMem_4298f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 33
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %3814 to i64*
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 1
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %RAX.i865 = bitcast %union.anon* %3817 to i64*
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 15
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %RBP.i866 = bitcast %union.anon* %3820 to i64*
  %3821 = load i64, i64* %RBP.i866
  %3822 = sub i64 %3821, 40
  %3823 = load i64, i64* %PC.i864
  %3824 = add i64 %3823, 4
  store i64 %3824, i64* %PC.i864
  %3825 = inttoptr i64 %3822 to i64*
  %3826 = load i64, i64* %3825
  store i64 %3826, i64* %RAX.i865, align 8
  store %struct.Memory* %loadMem_4298f0, %struct.Memory** %MEMORY
  %loadMem_4298f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 33
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %3829 to i64*
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 5
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %RCX.i862 = bitcast %union.anon* %3832 to i64*
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 15
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %RBP.i863 = bitcast %union.anon* %3835 to i64*
  %3836 = load i64, i64* %RBP.i863
  %3837 = sub i64 %3836, 44
  %3838 = load i64, i64* %PC.i861
  %3839 = add i64 %3838, 4
  store i64 %3839, i64* %PC.i861
  %3840 = inttoptr i64 %3837 to i32*
  %3841 = load i32, i32* %3840
  %3842 = sext i32 %3841 to i64
  store i64 %3842, i64* %RCX.i862, align 8
  store %struct.Memory* %loadMem_4298f4, %struct.Memory** %MEMORY
  %loadMem_4298f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 33
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %3845 to i64*
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 1
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %RAX.i859 = bitcast %union.anon* %3848 to i64*
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 5
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %RCX.i860 = bitcast %union.anon* %3851 to i64*
  %3852 = load i64, i64* %RAX.i859
  %3853 = load i64, i64* %RCX.i860
  %3854 = mul i64 %3853, 8
  %3855 = add i64 %3854, %3852
  %3856 = load i64, i64* %PC.i858
  %3857 = add i64 %3856, 4
  store i64 %3857, i64* %PC.i858
  %3858 = inttoptr i64 %3855 to i64*
  %3859 = load i64, i64* %3858
  store i64 %3859, i64* %RAX.i859, align 8
  store %struct.Memory* %loadMem_4298f8, %struct.Memory** %MEMORY
  %loadMem_4298fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %3862 to i64*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 1
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %RAX.i857 = bitcast %union.anon* %3865 to i64*
  %3866 = load i64, i64* %RAX.i857
  %3867 = add i64 %3866, 24
  %3868 = load i64, i64* %PC.i856
  %3869 = add i64 %3868, 4
  store i64 %3869, i64* %PC.i856
  %3870 = inttoptr i64 %3867 to i64*
  %3871 = load i64, i64* %3870
  store i64 %3871, i64* %RAX.i857, align 8
  store %struct.Memory* %loadMem_4298fc, %struct.Memory** %MEMORY
  %loadMem_429900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 33
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %3874 to i64*
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 5
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %RCX.i854 = bitcast %union.anon* %3877 to i64*
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 15
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %3880 to i64*
  %3881 = load i64, i64* %RBP.i855
  %3882 = sub i64 %3881, 60
  %3883 = load i64, i64* %PC.i853
  %3884 = add i64 %3883, 4
  store i64 %3884, i64* %PC.i853
  %3885 = inttoptr i64 %3882 to i32*
  %3886 = load i32, i32* %3885
  %3887 = sext i32 %3886 to i64
  store i64 %3887, i64* %RCX.i854, align 8
  store %struct.Memory* %loadMem_429900, %struct.Memory** %MEMORY
  %loadMem_429904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3889 = getelementptr inbounds %struct.GPR, %struct.GPR* %3888, i32 0, i32 33
  %3890 = getelementptr inbounds %struct.Reg, %struct.Reg* %3889, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %3890 to i64*
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 1
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %RAX.i851 = bitcast %union.anon* %3893 to i64*
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 5
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %RCX.i852 = bitcast %union.anon* %3896 to i64*
  %3897 = load i64, i64* %RAX.i851
  %3898 = load i64, i64* %RCX.i852
  %3899 = mul i64 %3898, 4
  %3900 = add i64 %3899, %3897
  %3901 = load i64, i64* %PC.i850
  %3902 = add i64 %3901, 7
  store i64 %3902, i64* %PC.i850
  %3903 = inttoptr i64 %3900 to i32*
  store i32 0, i32* %3903
  store %struct.Memory* %loadMem_429904, %struct.Memory** %MEMORY
  %loadMem_42990b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 7
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RDX.i848 = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 15
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %RBP.i849 = bitcast %union.anon* %3912 to i64*
  %3913 = load i64, i64* %RBP.i849
  %3914 = sub i64 %3913, 60
  %3915 = load i64, i64* %PC.i847
  %3916 = add i64 %3915, 3
  store i64 %3916, i64* %PC.i847
  %3917 = inttoptr i64 %3914 to i32*
  %3918 = load i32, i32* %3917
  %3919 = zext i32 %3918 to i64
  store i64 %3919, i64* %RDX.i848, align 8
  store %struct.Memory* %loadMem_42990b, %struct.Memory** %MEMORY
  %loadMem_42990e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 33
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 7
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %RDX.i846 = bitcast %union.anon* %3925 to i64*
  %3926 = load i64, i64* %RDX.i846
  %3927 = load i64, i64* %PC.i845
  %3928 = add i64 %3927, 3
  store i64 %3928, i64* %PC.i845
  %3929 = trunc i64 %3926 to i32
  %3930 = add i32 1, %3929
  %3931 = zext i32 %3930 to i64
  store i64 %3931, i64* %RDX.i846, align 8
  %3932 = icmp ult i32 %3930, %3929
  %3933 = icmp ult i32 %3930, 1
  %3934 = or i1 %3932, %3933
  %3935 = zext i1 %3934 to i8
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3935, i8* %3936, align 1
  %3937 = and i32 %3930, 255
  %3938 = call i32 @llvm.ctpop.i32(i32 %3937)
  %3939 = trunc i32 %3938 to i8
  %3940 = and i8 %3939, 1
  %3941 = xor i8 %3940, 1
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3941, i8* %3942, align 1
  %3943 = xor i64 1, %3926
  %3944 = trunc i64 %3943 to i32
  %3945 = xor i32 %3944, %3930
  %3946 = lshr i32 %3945, 4
  %3947 = trunc i32 %3946 to i8
  %3948 = and i8 %3947, 1
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3948, i8* %3949, align 1
  %3950 = icmp eq i32 %3930, 0
  %3951 = zext i1 %3950 to i8
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3951, i8* %3952, align 1
  %3953 = lshr i32 %3930, 31
  %3954 = trunc i32 %3953 to i8
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3954, i8* %3955, align 1
  %3956 = lshr i32 %3929, 31
  %3957 = xor i32 %3953, %3956
  %3958 = add i32 %3957, %3953
  %3959 = icmp eq i32 %3958, 2
  %3960 = zext i1 %3959 to i8
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3960, i8* %3961, align 1
  store %struct.Memory* %loadMem_42990e, %struct.Memory** %MEMORY
  %loadMem_429911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 33
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %3964 to i64*
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 7
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %EDX.i843 = bitcast %union.anon* %3967 to i32*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 15
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %RBP.i844 = bitcast %union.anon* %3970 to i64*
  %3971 = load i64, i64* %RBP.i844
  %3972 = sub i64 %3971, 60
  %3973 = load i32, i32* %EDX.i843
  %3974 = zext i32 %3973 to i64
  %3975 = load i64, i64* %PC.i842
  %3976 = add i64 %3975, 3
  store i64 %3976, i64* %PC.i842
  %3977 = inttoptr i64 %3972 to i32*
  store i32 %3973, i32* %3977
  store %struct.Memory* %loadMem_429911, %struct.Memory** %MEMORY
  br label %block_.L_429914

block_.L_429914:                                  ; preds = %block_4298be, %block_42988f
  %loadMem_429914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 33
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %3980 to i64*
  %3981 = load i64, i64* %PC.i841
  %3982 = add i64 %3981, 805
  %3983 = load i64, i64* %PC.i841
  %3984 = add i64 %3983, 5
  store i64 %3984, i64* %PC.i841
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3982, i64* %3985, align 8
  store %struct.Memory* %loadMem_429914, %struct.Memory** %MEMORY
  br label %block_.L_429c39

block_.L_429919:                                  ; preds = %block_.L_429873
  %loadMem_429919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 33
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %3988 to i64*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 1
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 15
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %3994 to i64*
  %3995 = load i64, i64* %RBP.i840
  %3996 = sub i64 %3995, 24
  %3997 = load i64, i64* %PC.i838
  %3998 = add i64 %3997, 4
  store i64 %3998, i64* %PC.i838
  %3999 = inttoptr i64 %3996 to i64*
  %4000 = load i64, i64* %3999
  store i64 %4000, i64* %RAX.i839, align 8
  store %struct.Memory* %loadMem_429919, %struct.Memory** %MEMORY
  %loadMem_42991d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 33
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %4003 to i64*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 5
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %RCX.i836 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 15
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %4009 to i64*
  %4010 = load i64, i64* %RBP.i837
  %4011 = sub i64 %4010, 56
  %4012 = load i64, i64* %PC.i835
  %4013 = add i64 %4012, 3
  store i64 %4013, i64* %PC.i835
  %4014 = inttoptr i64 %4011 to i32*
  %4015 = load i32, i32* %4014
  %4016 = zext i32 %4015 to i64
  store i64 %4016, i64* %RCX.i836, align 8
  store %struct.Memory* %loadMem_42991d, %struct.Memory** %MEMORY
  %loadMem_429920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 33
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %4019 to i64*
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 5
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %RCX.i834 = bitcast %union.anon* %4022 to i64*
  %4023 = load i64, i64* %RCX.i834
  %4024 = load i64, i64* %PC.i833
  %4025 = add i64 %4024, 3
  store i64 %4025, i64* %PC.i833
  %4026 = trunc i64 %4023 to i32
  %4027 = add i32 1, %4026
  %4028 = zext i32 %4027 to i64
  store i64 %4028, i64* %RCX.i834, align 8
  %4029 = icmp ult i32 %4027, %4026
  %4030 = icmp ult i32 %4027, 1
  %4031 = or i1 %4029, %4030
  %4032 = zext i1 %4031 to i8
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4032, i8* %4033, align 1
  %4034 = and i32 %4027, 255
  %4035 = call i32 @llvm.ctpop.i32(i32 %4034)
  %4036 = trunc i32 %4035 to i8
  %4037 = and i8 %4036, 1
  %4038 = xor i8 %4037, 1
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4038, i8* %4039, align 1
  %4040 = xor i64 1, %4023
  %4041 = trunc i64 %4040 to i32
  %4042 = xor i32 %4041, %4027
  %4043 = lshr i32 %4042, 4
  %4044 = trunc i32 %4043 to i8
  %4045 = and i8 %4044, 1
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4045, i8* %4046, align 1
  %4047 = icmp eq i32 %4027, 0
  %4048 = zext i1 %4047 to i8
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4048, i8* %4049, align 1
  %4050 = lshr i32 %4027, 31
  %4051 = trunc i32 %4050 to i8
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4051, i8* %4052, align 1
  %4053 = lshr i32 %4026, 31
  %4054 = xor i32 %4050, %4053
  %4055 = add i32 %4054, %4050
  %4056 = icmp eq i32 %4055, 2
  %4057 = zext i1 %4056 to i8
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4057, i8* %4058, align 1
  store %struct.Memory* %loadMem_429920, %struct.Memory** %MEMORY
  %loadMem_429923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 33
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %4061 to i64*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 5
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %ECX.i831 = bitcast %union.anon* %4064 to i32*
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4066 = getelementptr inbounds %struct.GPR, %struct.GPR* %4065, i32 0, i32 7
  %4067 = getelementptr inbounds %struct.Reg, %struct.Reg* %4066, i32 0, i32 0
  %RDX.i832 = bitcast %union.anon* %4067 to i64*
  %4068 = load i32, i32* %ECX.i831
  %4069 = zext i32 %4068 to i64
  %4070 = load i64, i64* %PC.i830
  %4071 = add i64 %4070, 3
  store i64 %4071, i64* %PC.i830
  %4072 = shl i64 %4069, 32
  %4073 = ashr exact i64 %4072, 32
  store i64 %4073, i64* %RDX.i832, align 8
  store %struct.Memory* %loadMem_429923, %struct.Memory** %MEMORY
  %loadMem_429926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 33
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %4076 to i64*
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 1
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %RAX.i827 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 5
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %RCX.i828 = bitcast %union.anon* %4082 to i64*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 7
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %RDX.i829 = bitcast %union.anon* %4085 to i64*
  %4086 = load i64, i64* %RAX.i827
  %4087 = load i64, i64* %RDX.i829
  %4088 = mul i64 %4087, 4
  %4089 = add i64 %4088, %4086
  %4090 = load i64, i64* %PC.i826
  %4091 = add i64 %4090, 3
  store i64 %4091, i64* %PC.i826
  %4092 = inttoptr i64 %4089 to i32*
  %4093 = load i32, i32* %4092
  %4094 = zext i32 %4093 to i64
  store i64 %4094, i64* %RCX.i828, align 8
  store %struct.Memory* %loadMem_429926, %struct.Memory** %MEMORY
  %loadMem_429929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 33
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %4097 to i64*
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 5
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %RCX.i825 = bitcast %union.anon* %4100 to i64*
  %4101 = load i64, i64* %RCX.i825
  %4102 = load i64, i64* %PC.i824
  %4103 = add i64 %4102, 3
  store i64 %4103, i64* %PC.i824
  %4104 = and i64 16, %4101
  %4105 = trunc i64 %4104 to i32
  store i64 %4104, i64* %RCX.i825, align 8
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4106, align 1
  %4107 = and i32 %4105, 255
  %4108 = call i32 @llvm.ctpop.i32(i32 %4107)
  %4109 = trunc i32 %4108 to i8
  %4110 = and i8 %4109, 1
  %4111 = xor i8 %4110, 1
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4111, i8* %4112, align 1
  %4113 = icmp eq i32 %4105, 0
  %4114 = zext i1 %4113 to i8
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4114, i8* %4115, align 1
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4116, align 1
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4117, align 1
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4118, align 1
  store %struct.Memory* %loadMem_429929, %struct.Memory** %MEMORY
  %loadMem_42992c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 33
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %4121 to i64*
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 5
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %ECX.i823 = bitcast %union.anon* %4124 to i32*
  %4125 = load i32, i32* %ECX.i823
  %4126 = zext i32 %4125 to i64
  %4127 = load i64, i64* %PC.i822
  %4128 = add i64 %4127, 3
  store i64 %4128, i64* %PC.i822
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4129, align 1
  %4130 = and i32 %4125, 255
  %4131 = call i32 @llvm.ctpop.i32(i32 %4130)
  %4132 = trunc i32 %4131 to i8
  %4133 = and i8 %4132, 1
  %4134 = xor i8 %4133, 1
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4134, i8* %4135, align 1
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4136, align 1
  %4137 = icmp eq i32 %4125, 0
  %4138 = zext i1 %4137 to i8
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4138, i8* %4139, align 1
  %4140 = lshr i32 %4125, 31
  %4141 = trunc i32 %4140 to i8
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4141, i8* %4142, align 1
  %4143 = lshr i32 %4125, 31
  %4144 = xor i32 %4140, %4143
  %4145 = add i32 %4144, %4143
  %4146 = icmp eq i32 %4145, 2
  %4147 = zext i1 %4146 to i8
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4147, i8* %4148, align 1
  store %struct.Memory* %loadMem_42992c, %struct.Memory** %MEMORY
  %loadMem_42992f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 33
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %4151 to i64*
  %4152 = load i64, i64* %PC.i821
  %4153 = add i64 %4152, 251
  %4154 = load i64, i64* %PC.i821
  %4155 = add i64 %4154, 6
  %4156 = load i64, i64* %PC.i821
  %4157 = add i64 %4156, 6
  store i64 %4157, i64* %PC.i821
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4159 = load i8, i8* %4158, align 1
  store i8 %4159, i8* %BRANCH_TAKEN, align 1
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4161 = icmp ne i8 %4159, 0
  %4162 = select i1 %4161, i64 %4153, i64 %4155
  store i64 %4162, i64* %4160, align 8
  store %struct.Memory* %loadMem_42992f, %struct.Memory** %MEMORY
  %loadBr_42992f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42992f = icmp eq i8 %loadBr_42992f, 1
  br i1 %cmpBr_42992f, label %block_.L_429a2a, label %block_429935

block_429935:                                     ; preds = %block_.L_429919
  %loadMem_429935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 1
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RAX.i819 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 15
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RBP.i820 = bitcast %union.anon* %4171 to i64*
  %4172 = load i64, i64* %RBP.i820
  %4173 = sub i64 %4172, 8
  %4174 = load i64, i64* %PC.i818
  %4175 = add i64 %4174, 4
  store i64 %4175, i64* %PC.i818
  %4176 = inttoptr i64 %4173 to i64*
  %4177 = load i64, i64* %4176
  store i64 %4177, i64* %RAX.i819, align 8
  store %struct.Memory* %loadMem_429935, %struct.Memory** %MEMORY
  %loadMem_429939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 33
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 5
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %RCX.i816 = bitcast %union.anon* %4183 to i64*
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 15
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %RBP.i817 = bitcast %union.anon* %4186 to i64*
  %4187 = load i64, i64* %RBP.i817
  %4188 = sub i64 %4187, 44
  %4189 = load i64, i64* %PC.i815
  %4190 = add i64 %4189, 4
  store i64 %4190, i64* %PC.i815
  %4191 = inttoptr i64 %4188 to i32*
  %4192 = load i32, i32* %4191
  %4193 = sext i32 %4192 to i64
  store i64 %4193, i64* %RCX.i816, align 8
  store %struct.Memory* %loadMem_429939, %struct.Memory** %MEMORY
  %loadMem_42993d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 33
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 1
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RAX.i813 = bitcast %union.anon* %4199 to i64*
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 5
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %RCX.i814 = bitcast %union.anon* %4202 to i64*
  %4203 = load i64, i64* %RAX.i813
  %4204 = load i64, i64* %RCX.i814
  %4205 = mul i64 %4204, 8
  %4206 = add i64 %4205, %4203
  %4207 = load i64, i64* %PC.i812
  %4208 = add i64 %4207, 4
  store i64 %4208, i64* %PC.i812
  %4209 = inttoptr i64 %4206 to i64*
  %4210 = load i64, i64* %4209
  store i64 %4210, i64* %RAX.i813, align 8
  store %struct.Memory* %loadMem_42993d, %struct.Memory** %MEMORY
  %loadMem_429941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 33
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %4213 to i64*
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 5
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %RCX.i810 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 15
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %4219 to i64*
  %4220 = load i64, i64* %RBP.i811
  %4221 = sub i64 %4220, 56
  %4222 = load i64, i64* %PC.i809
  %4223 = add i64 %4222, 4
  store i64 %4223, i64* %PC.i809
  %4224 = inttoptr i64 %4221 to i32*
  %4225 = load i32, i32* %4224
  %4226 = sext i32 %4225 to i64
  store i64 %4226, i64* %RCX.i810, align 8
  store %struct.Memory* %loadMem_429941, %struct.Memory** %MEMORY
  %loadMem_429945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 1
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RAX.i806 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 5
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RCX.i807 = bitcast %union.anon* %4235 to i64*
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 7
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %RDX.i808 = bitcast %union.anon* %4238 to i64*
  %4239 = load i64, i64* %RAX.i806
  %4240 = load i64, i64* %RCX.i807
  %4241 = add i64 %4240, %4239
  %4242 = load i64, i64* %PC.i805
  %4243 = add i64 %4242, 4
  store i64 %4243, i64* %PC.i805
  %4244 = inttoptr i64 %4241 to i8*
  %4245 = load i8, i8* %4244
  %4246 = sext i8 %4245 to i64
  %4247 = and i64 %4246, 4294967295
  store i64 %4247, i64* %RDX.i808, align 8
  store %struct.Memory* %loadMem_429945, %struct.Memory** %MEMORY
  %loadMem_429949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 33
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 7
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %EDX.i804 = bitcast %union.anon* %4253 to i32*
  %4254 = load i32, i32* %EDX.i804
  %4255 = zext i32 %4254 to i64
  %4256 = load i64, i64* %PC.i803
  %4257 = add i64 %4256, 3
  store i64 %4257, i64* %PC.i803
  %4258 = sub i32 %4254, 32
  %4259 = icmp ult i32 %4254, 32
  %4260 = zext i1 %4259 to i8
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4260, i8* %4261, align 1
  %4262 = and i32 %4258, 255
  %4263 = call i32 @llvm.ctpop.i32(i32 %4262)
  %4264 = trunc i32 %4263 to i8
  %4265 = and i8 %4264, 1
  %4266 = xor i8 %4265, 1
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4266, i8* %4267, align 1
  %4268 = xor i64 32, %4255
  %4269 = trunc i64 %4268 to i32
  %4270 = xor i32 %4269, %4258
  %4271 = lshr i32 %4270, 4
  %4272 = trunc i32 %4271 to i8
  %4273 = and i8 %4272, 1
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4273, i8* %4274, align 1
  %4275 = icmp eq i32 %4258, 0
  %4276 = zext i1 %4275 to i8
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4276, i8* %4277, align 1
  %4278 = lshr i32 %4258, 31
  %4279 = trunc i32 %4278 to i8
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4279, i8* %4280, align 1
  %4281 = lshr i32 %4254, 31
  %4282 = xor i32 %4278, %4281
  %4283 = add i32 %4282, %4281
  %4284 = icmp eq i32 %4283, 2
  %4285 = zext i1 %4284 to i8
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4285, i8* %4286, align 1
  store %struct.Memory* %loadMem_429949, %struct.Memory** %MEMORY
  %loadMem_42994c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 33
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %4289 to i64*
  %4290 = load i64, i64* %PC.i802
  %4291 = add i64 %4290, 222
  %4292 = load i64, i64* %PC.i802
  %4293 = add i64 %4292, 6
  %4294 = load i64, i64* %PC.i802
  %4295 = add i64 %4294, 6
  store i64 %4295, i64* %PC.i802
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4297 = load i8, i8* %4296, align 1
  store i8 %4297, i8* %BRANCH_TAKEN, align 1
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4299 = icmp ne i8 %4297, 0
  %4300 = select i1 %4299, i64 %4291, i64 %4293
  store i64 %4300, i64* %4298, align 8
  store %struct.Memory* %loadMem_42994c, %struct.Memory** %MEMORY
  %loadBr_42994c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42994c = icmp eq i8 %loadBr_42994c, 1
  br i1 %cmpBr_42994c, label %block_.L_429a2a, label %block_429952

block_429952:                                     ; preds = %block_429935
  %loadMem_429952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 33
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %4303 to i64*
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 1
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %RAX.i800 = bitcast %union.anon* %4306 to i64*
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 15
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %4309 to i64*
  %4310 = load i64, i64* %RBP.i801
  %4311 = sub i64 %4310, 8
  %4312 = load i64, i64* %PC.i799
  %4313 = add i64 %4312, 4
  store i64 %4313, i64* %PC.i799
  %4314 = inttoptr i64 %4311 to i64*
  %4315 = load i64, i64* %4314
  store i64 %4315, i64* %RAX.i800, align 8
  store %struct.Memory* %loadMem_429952, %struct.Memory** %MEMORY
  %loadMem_429956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 5
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %RCX.i797 = bitcast %union.anon* %4321 to i64*
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 15
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %4324 to i64*
  %4325 = load i64, i64* %RBP.i798
  %4326 = sub i64 %4325, 44
  %4327 = load i64, i64* %PC.i796
  %4328 = add i64 %4327, 4
  store i64 %4328, i64* %PC.i796
  %4329 = inttoptr i64 %4326 to i32*
  %4330 = load i32, i32* %4329
  %4331 = sext i32 %4330 to i64
  store i64 %4331, i64* %RCX.i797, align 8
  store %struct.Memory* %loadMem_429956, %struct.Memory** %MEMORY
  %loadMem_42995a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 33
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %4334 to i64*
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 1
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %RAX.i794 = bitcast %union.anon* %4337 to i64*
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 5
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %RCX.i795 = bitcast %union.anon* %4340 to i64*
  %4341 = load i64, i64* %RAX.i794
  %4342 = load i64, i64* %RCX.i795
  %4343 = mul i64 %4342, 8
  %4344 = add i64 %4343, %4341
  %4345 = load i64, i64* %PC.i793
  %4346 = add i64 %4345, 4
  store i64 %4346, i64* %PC.i793
  %4347 = inttoptr i64 %4344 to i64*
  %4348 = load i64, i64* %4347
  store i64 %4348, i64* %RAX.i794, align 8
  store %struct.Memory* %loadMem_42995a, %struct.Memory** %MEMORY
  %loadMem_42995e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 33
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %4351 to i64*
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 5
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %RCX.i791 = bitcast %union.anon* %4354 to i64*
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 15
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %RBP.i792 = bitcast %union.anon* %4357 to i64*
  %4358 = load i64, i64* %RBP.i792
  %4359 = sub i64 %4358, 56
  %4360 = load i64, i64* %PC.i790
  %4361 = add i64 %4360, 4
  store i64 %4361, i64* %PC.i790
  %4362 = inttoptr i64 %4359 to i32*
  %4363 = load i32, i32* %4362
  %4364 = sext i32 %4363 to i64
  store i64 %4364, i64* %RCX.i791, align 8
  store %struct.Memory* %loadMem_42995e, %struct.Memory** %MEMORY
  %loadMem_429962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 33
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %4367 to i64*
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 1
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %RAX.i787 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 5
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RCX.i788 = bitcast %union.anon* %4373 to i64*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 7
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %RDX.i789 = bitcast %union.anon* %4376 to i64*
  %4377 = load i64, i64* %RAX.i787
  %4378 = load i64, i64* %RCX.i788
  %4379 = add i64 %4378, %4377
  %4380 = load i64, i64* %PC.i786
  %4381 = add i64 %4380, 4
  store i64 %4381, i64* %PC.i786
  %4382 = inttoptr i64 %4379 to i8*
  %4383 = load i8, i8* %4382
  %4384 = sext i8 %4383 to i64
  %4385 = and i64 %4384, 4294967295
  store i64 %4385, i64* %RDX.i789, align 8
  store %struct.Memory* %loadMem_429962, %struct.Memory** %MEMORY
  %loadMem_429966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 33
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %4388 to i64*
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 7
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %EDX.i785 = bitcast %union.anon* %4391 to i32*
  %4392 = load i32, i32* %EDX.i785
  %4393 = zext i32 %4392 to i64
  %4394 = load i64, i64* %PC.i784
  %4395 = add i64 %4394, 3
  store i64 %4395, i64* %PC.i784
  %4396 = sub i32 %4392, 46
  %4397 = icmp ult i32 %4392, 46
  %4398 = zext i1 %4397 to i8
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4398, i8* %4399, align 1
  %4400 = and i32 %4396, 255
  %4401 = call i32 @llvm.ctpop.i32(i32 %4400)
  %4402 = trunc i32 %4401 to i8
  %4403 = and i8 %4402, 1
  %4404 = xor i8 %4403, 1
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4404, i8* %4405, align 1
  %4406 = xor i64 46, %4393
  %4407 = trunc i64 %4406 to i32
  %4408 = xor i32 %4407, %4396
  %4409 = lshr i32 %4408, 4
  %4410 = trunc i32 %4409 to i8
  %4411 = and i8 %4410, 1
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4411, i8* %4412, align 1
  %4413 = icmp eq i32 %4396, 0
  %4414 = zext i1 %4413 to i8
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4414, i8* %4415, align 1
  %4416 = lshr i32 %4396, 31
  %4417 = trunc i32 %4416 to i8
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4417, i8* %4418, align 1
  %4419 = lshr i32 %4392, 31
  %4420 = xor i32 %4416, %4419
  %4421 = add i32 %4420, %4419
  %4422 = icmp eq i32 %4421, 2
  %4423 = zext i1 %4422 to i8
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4423, i8* %4424, align 1
  store %struct.Memory* %loadMem_429966, %struct.Memory** %MEMORY
  %loadMem_429969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 33
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %4427 to i64*
  %4428 = load i64, i64* %PC.i783
  %4429 = add i64 %4428, 193
  %4430 = load i64, i64* %PC.i783
  %4431 = add i64 %4430, 6
  %4432 = load i64, i64* %PC.i783
  %4433 = add i64 %4432, 6
  store i64 %4433, i64* %PC.i783
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4435 = load i8, i8* %4434, align 1
  store i8 %4435, i8* %BRANCH_TAKEN, align 1
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4437 = icmp ne i8 %4435, 0
  %4438 = select i1 %4437, i64 %4429, i64 %4431
  store i64 %4438, i64* %4436, align 8
  store %struct.Memory* %loadMem_429969, %struct.Memory** %MEMORY
  %loadBr_429969 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429969 = icmp eq i8 %loadBr_429969, 1
  br i1 %cmpBr_429969, label %block_.L_429a2a, label %block_42996f

block_42996f:                                     ; preds = %block_429952
  %loadMem_42996f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 33
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 1
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 15
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %4447 to i64*
  %4448 = load i64, i64* %RBP.i782
  %4449 = sub i64 %4448, 8
  %4450 = load i64, i64* %PC.i780
  %4451 = add i64 %4450, 4
  store i64 %4451, i64* %PC.i780
  %4452 = inttoptr i64 %4449 to i64*
  %4453 = load i64, i64* %4452
  store i64 %4453, i64* %RAX.i781, align 8
  store %struct.Memory* %loadMem_42996f, %struct.Memory** %MEMORY
  %loadMem_429973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 33
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %4456 to i64*
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 5
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %RCX.i778 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 15
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %4462 to i64*
  %4463 = load i64, i64* %RBP.i779
  %4464 = sub i64 %4463, 44
  %4465 = load i64, i64* %PC.i777
  %4466 = add i64 %4465, 4
  store i64 %4466, i64* %PC.i777
  %4467 = inttoptr i64 %4464 to i32*
  %4468 = load i32, i32* %4467
  %4469 = sext i32 %4468 to i64
  store i64 %4469, i64* %RCX.i778, align 8
  store %struct.Memory* %loadMem_429973, %struct.Memory** %MEMORY
  %loadMem_429977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 33
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %4472 to i64*
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 1
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %RAX.i775 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 5
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RCX.i776 = bitcast %union.anon* %4478 to i64*
  %4479 = load i64, i64* %RAX.i775
  %4480 = load i64, i64* %RCX.i776
  %4481 = mul i64 %4480, 8
  %4482 = add i64 %4481, %4479
  %4483 = load i64, i64* %PC.i774
  %4484 = add i64 %4483, 4
  store i64 %4484, i64* %PC.i774
  %4485 = inttoptr i64 %4482 to i64*
  %4486 = load i64, i64* %4485
  store i64 %4486, i64* %RAX.i775, align 8
  store %struct.Memory* %loadMem_429977, %struct.Memory** %MEMORY
  %loadMem_42997b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 33
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %4489 to i64*
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 5
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %RCX.i772 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 15
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RBP.i773 = bitcast %union.anon* %4495 to i64*
  %4496 = load i64, i64* %RBP.i773
  %4497 = sub i64 %4496, 56
  %4498 = load i64, i64* %PC.i771
  %4499 = add i64 %4498, 4
  store i64 %4499, i64* %PC.i771
  %4500 = inttoptr i64 %4497 to i32*
  %4501 = load i32, i32* %4500
  %4502 = sext i32 %4501 to i64
  store i64 %4502, i64* %RCX.i772, align 8
  store %struct.Memory* %loadMem_42997b, %struct.Memory** %MEMORY
  %loadMem_42997f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 33
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %4505 to i64*
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 1
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %RAX.i768 = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 5
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RCX.i769 = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 7
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %RDX.i770 = bitcast %union.anon* %4514 to i64*
  %4515 = load i64, i64* %RAX.i768
  %4516 = load i64, i64* %RCX.i769
  %4517 = add i64 %4516, %4515
  %4518 = load i64, i64* %PC.i767
  %4519 = add i64 %4518, 4
  store i64 %4519, i64* %PC.i767
  %4520 = inttoptr i64 %4517 to i8*
  %4521 = load i8, i8* %4520
  %4522 = sext i8 %4521 to i64
  %4523 = and i64 %4522, 4294967295
  store i64 %4523, i64* %RDX.i770, align 8
  store %struct.Memory* %loadMem_42997f, %struct.Memory** %MEMORY
  %loadMem_429983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 33
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 7
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %EDX.i766 = bitcast %union.anon* %4529 to i32*
  %4530 = load i32, i32* %EDX.i766
  %4531 = zext i32 %4530 to i64
  %4532 = load i64, i64* %PC.i765
  %4533 = add i64 %4532, 3
  store i64 %4533, i64* %PC.i765
  %4534 = sub i32 %4530, 95
  %4535 = icmp ult i32 %4530, 95
  %4536 = zext i1 %4535 to i8
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4536, i8* %4537, align 1
  %4538 = and i32 %4534, 255
  %4539 = call i32 @llvm.ctpop.i32(i32 %4538)
  %4540 = trunc i32 %4539 to i8
  %4541 = and i8 %4540, 1
  %4542 = xor i8 %4541, 1
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4542, i8* %4543, align 1
  %4544 = xor i64 95, %4531
  %4545 = trunc i64 %4544 to i32
  %4546 = xor i32 %4545, %4534
  %4547 = lshr i32 %4546, 4
  %4548 = trunc i32 %4547 to i8
  %4549 = and i8 %4548, 1
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4549, i8* %4550, align 1
  %4551 = icmp eq i32 %4534, 0
  %4552 = zext i1 %4551 to i8
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4552, i8* %4553, align 1
  %4554 = lshr i32 %4534, 31
  %4555 = trunc i32 %4554 to i8
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4555, i8* %4556, align 1
  %4557 = lshr i32 %4530, 31
  %4558 = xor i32 %4554, %4557
  %4559 = add i32 %4558, %4557
  %4560 = icmp eq i32 %4559, 2
  %4561 = zext i1 %4560 to i8
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4561, i8* %4562, align 1
  store %struct.Memory* %loadMem_429983, %struct.Memory** %MEMORY
  %loadMem_429986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 33
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %4565 to i64*
  %4566 = load i64, i64* %PC.i764
  %4567 = add i64 %4566, 164
  %4568 = load i64, i64* %PC.i764
  %4569 = add i64 %4568, 6
  %4570 = load i64, i64* %PC.i764
  %4571 = add i64 %4570, 6
  store i64 %4571, i64* %PC.i764
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4573 = load i8, i8* %4572, align 1
  store i8 %4573, i8* %BRANCH_TAKEN, align 1
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4575 = icmp ne i8 %4573, 0
  %4576 = select i1 %4575, i64 %4567, i64 %4569
  store i64 %4576, i64* %4574, align 8
  store %struct.Memory* %loadMem_429986, %struct.Memory** %MEMORY
  %loadBr_429986 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429986 = icmp eq i8 %loadBr_429986, 1
  br i1 %cmpBr_429986, label %block_.L_429a2a, label %block_42998c

block_42998c:                                     ; preds = %block_42996f
  %loadMem_42998c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 33
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %4579 to i64*
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 1
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %RAX.i762 = bitcast %union.anon* %4582 to i64*
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 15
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %4585 to i64*
  %4586 = load i64, i64* %RBP.i763
  %4587 = sub i64 %4586, 8
  %4588 = load i64, i64* %PC.i761
  %4589 = add i64 %4588, 4
  store i64 %4589, i64* %PC.i761
  %4590 = inttoptr i64 %4587 to i64*
  %4591 = load i64, i64* %4590
  store i64 %4591, i64* %RAX.i762, align 8
  store %struct.Memory* %loadMem_42998c, %struct.Memory** %MEMORY
  %loadMem_429990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 33
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %4594 to i64*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 5
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %RCX.i759 = bitcast %union.anon* %4597 to i64*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 15
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %RBP.i760 = bitcast %union.anon* %4600 to i64*
  %4601 = load i64, i64* %RBP.i760
  %4602 = sub i64 %4601, 44
  %4603 = load i64, i64* %PC.i758
  %4604 = add i64 %4603, 4
  store i64 %4604, i64* %PC.i758
  %4605 = inttoptr i64 %4602 to i32*
  %4606 = load i32, i32* %4605
  %4607 = sext i32 %4606 to i64
  store i64 %4607, i64* %RCX.i759, align 8
  store %struct.Memory* %loadMem_429990, %struct.Memory** %MEMORY
  %loadMem_429994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 33
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 1
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RAX.i756 = bitcast %union.anon* %4613 to i64*
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 5
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %RCX.i757 = bitcast %union.anon* %4616 to i64*
  %4617 = load i64, i64* %RAX.i756
  %4618 = load i64, i64* %RCX.i757
  %4619 = mul i64 %4618, 8
  %4620 = add i64 %4619, %4617
  %4621 = load i64, i64* %PC.i755
  %4622 = add i64 %4621, 4
  store i64 %4622, i64* %PC.i755
  %4623 = inttoptr i64 %4620 to i64*
  %4624 = load i64, i64* %4623
  store i64 %4624, i64* %RAX.i756, align 8
  store %struct.Memory* %loadMem_429994, %struct.Memory** %MEMORY
  %loadMem_429998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 33
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %4627 to i64*
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 5
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %RCX.i753 = bitcast %union.anon* %4630 to i64*
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 15
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %RBP.i754 = bitcast %union.anon* %4633 to i64*
  %4634 = load i64, i64* %RBP.i754
  %4635 = sub i64 %4634, 56
  %4636 = load i64, i64* %PC.i752
  %4637 = add i64 %4636, 4
  store i64 %4637, i64* %PC.i752
  %4638 = inttoptr i64 %4635 to i32*
  %4639 = load i32, i32* %4638
  %4640 = sext i32 %4639 to i64
  store i64 %4640, i64* %RCX.i753, align 8
  store %struct.Memory* %loadMem_429998, %struct.Memory** %MEMORY
  %loadMem_42999c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 33
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 1
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %RAX.i749 = bitcast %union.anon* %4646 to i64*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 5
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %RCX.i750 = bitcast %union.anon* %4649 to i64*
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 7
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %RDX.i751 = bitcast %union.anon* %4652 to i64*
  %4653 = load i64, i64* %RAX.i749
  %4654 = load i64, i64* %RCX.i750
  %4655 = add i64 %4654, %4653
  %4656 = load i64, i64* %PC.i748
  %4657 = add i64 %4656, 4
  store i64 %4657, i64* %PC.i748
  %4658 = inttoptr i64 %4655 to i8*
  %4659 = load i8, i8* %4658
  %4660 = sext i8 %4659 to i64
  %4661 = and i64 %4660, 4294967295
  store i64 %4661, i64* %RDX.i751, align 8
  store %struct.Memory* %loadMem_42999c, %struct.Memory** %MEMORY
  %loadMem_4299a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 33
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %4664 to i64*
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 7
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %EDX.i747 = bitcast %union.anon* %4667 to i32*
  %4668 = load i32, i32* %EDX.i747
  %4669 = zext i32 %4668 to i64
  %4670 = load i64, i64* %PC.i746
  %4671 = add i64 %4670, 3
  store i64 %4671, i64* %PC.i746
  %4672 = sub i32 %4668, 45
  %4673 = icmp ult i32 %4668, 45
  %4674 = zext i1 %4673 to i8
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4674, i8* %4675, align 1
  %4676 = and i32 %4672, 255
  %4677 = call i32 @llvm.ctpop.i32(i32 %4676)
  %4678 = trunc i32 %4677 to i8
  %4679 = and i8 %4678, 1
  %4680 = xor i8 %4679, 1
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4680, i8* %4681, align 1
  %4682 = xor i64 45, %4669
  %4683 = trunc i64 %4682 to i32
  %4684 = xor i32 %4683, %4672
  %4685 = lshr i32 %4684, 4
  %4686 = trunc i32 %4685 to i8
  %4687 = and i8 %4686, 1
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4687, i8* %4688, align 1
  %4689 = icmp eq i32 %4672, 0
  %4690 = zext i1 %4689 to i8
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4690, i8* %4691, align 1
  %4692 = lshr i32 %4672, 31
  %4693 = trunc i32 %4692 to i8
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4693, i8* %4694, align 1
  %4695 = lshr i32 %4668, 31
  %4696 = xor i32 %4692, %4695
  %4697 = add i32 %4696, %4695
  %4698 = icmp eq i32 %4697, 2
  %4699 = zext i1 %4698 to i8
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4699, i8* %4700, align 1
  store %struct.Memory* %loadMem_4299a0, %struct.Memory** %MEMORY
  %loadMem_4299a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 33
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %4703 to i64*
  %4704 = load i64, i64* %PC.i745
  %4705 = add i64 %4704, 135
  %4706 = load i64, i64* %PC.i745
  %4707 = add i64 %4706, 6
  %4708 = load i64, i64* %PC.i745
  %4709 = add i64 %4708, 6
  store i64 %4709, i64* %PC.i745
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4711 = load i8, i8* %4710, align 1
  store i8 %4711, i8* %BRANCH_TAKEN, align 1
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4713 = icmp ne i8 %4711, 0
  %4714 = select i1 %4713, i64 %4705, i64 %4707
  store i64 %4714, i64* %4712, align 8
  store %struct.Memory* %loadMem_4299a3, %struct.Memory** %MEMORY
  %loadBr_4299a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4299a3 = icmp eq i8 %loadBr_4299a3, 1
  br i1 %cmpBr_4299a3, label %block_.L_429a2a, label %block_4299a9

block_4299a9:                                     ; preds = %block_42998c
  %loadMem_4299a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 33
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %4717 to i64*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 1
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %4720 to i64*
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 15
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %4723 to i64*
  %4724 = load i64, i64* %RBP.i744
  %4725 = sub i64 %4724, 8
  %4726 = load i64, i64* %PC.i742
  %4727 = add i64 %4726, 4
  store i64 %4727, i64* %PC.i742
  %4728 = inttoptr i64 %4725 to i64*
  %4729 = load i64, i64* %4728
  store i64 %4729, i64* %RAX.i743, align 8
  store %struct.Memory* %loadMem_4299a9, %struct.Memory** %MEMORY
  %loadMem_4299ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 33
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %4732 to i64*
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4734 = getelementptr inbounds %struct.GPR, %struct.GPR* %4733, i32 0, i32 5
  %4735 = getelementptr inbounds %struct.Reg, %struct.Reg* %4734, i32 0, i32 0
  %RCX.i740 = bitcast %union.anon* %4735 to i64*
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 15
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %4738 to i64*
  %4739 = load i64, i64* %RBP.i741
  %4740 = sub i64 %4739, 44
  %4741 = load i64, i64* %PC.i739
  %4742 = add i64 %4741, 4
  store i64 %4742, i64* %PC.i739
  %4743 = inttoptr i64 %4740 to i32*
  %4744 = load i32, i32* %4743
  %4745 = sext i32 %4744 to i64
  store i64 %4745, i64* %RCX.i740, align 8
  store %struct.Memory* %loadMem_4299ad, %struct.Memory** %MEMORY
  %loadMem_4299b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4747 = getelementptr inbounds %struct.GPR, %struct.GPR* %4746, i32 0, i32 33
  %4748 = getelementptr inbounds %struct.Reg, %struct.Reg* %4747, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %4748 to i64*
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4750 = getelementptr inbounds %struct.GPR, %struct.GPR* %4749, i32 0, i32 1
  %4751 = getelementptr inbounds %struct.Reg, %struct.Reg* %4750, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %4751 to i64*
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4753 = getelementptr inbounds %struct.GPR, %struct.GPR* %4752, i32 0, i32 5
  %4754 = getelementptr inbounds %struct.Reg, %struct.Reg* %4753, i32 0, i32 0
  %RCX.i738 = bitcast %union.anon* %4754 to i64*
  %4755 = load i64, i64* %RAX.i737
  %4756 = load i64, i64* %RCX.i738
  %4757 = mul i64 %4756, 8
  %4758 = add i64 %4757, %4755
  %4759 = load i64, i64* %PC.i736
  %4760 = add i64 %4759, 4
  store i64 %4760, i64* %PC.i736
  %4761 = inttoptr i64 %4758 to i64*
  %4762 = load i64, i64* %4761
  store i64 %4762, i64* %RAX.i737, align 8
  store %struct.Memory* %loadMem_4299b1, %struct.Memory** %MEMORY
  %loadMem_4299b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 33
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %4765 to i64*
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4767 = getelementptr inbounds %struct.GPR, %struct.GPR* %4766, i32 0, i32 5
  %4768 = getelementptr inbounds %struct.Reg, %struct.Reg* %4767, i32 0, i32 0
  %RCX.i734 = bitcast %union.anon* %4768 to i64*
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4770 = getelementptr inbounds %struct.GPR, %struct.GPR* %4769, i32 0, i32 15
  %4771 = getelementptr inbounds %struct.Reg, %struct.Reg* %4770, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %4771 to i64*
  %4772 = load i64, i64* %RBP.i735
  %4773 = sub i64 %4772, 56
  %4774 = load i64, i64* %PC.i733
  %4775 = add i64 %4774, 4
  store i64 %4775, i64* %PC.i733
  %4776 = inttoptr i64 %4773 to i32*
  %4777 = load i32, i32* %4776
  %4778 = sext i32 %4777 to i64
  store i64 %4778, i64* %RCX.i734, align 8
  store %struct.Memory* %loadMem_4299b5, %struct.Memory** %MEMORY
  %loadMem_4299b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 33
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %4781 to i64*
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 1
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %RAX.i730 = bitcast %union.anon* %4784 to i64*
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 5
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %RCX.i731 = bitcast %union.anon* %4787 to i64*
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 7
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %RDX.i732 = bitcast %union.anon* %4790 to i64*
  %4791 = load i64, i64* %RAX.i730
  %4792 = load i64, i64* %RCX.i731
  %4793 = add i64 %4792, %4791
  %4794 = load i64, i64* %PC.i729
  %4795 = add i64 %4794, 4
  store i64 %4795, i64* %PC.i729
  %4796 = inttoptr i64 %4793 to i8*
  %4797 = load i8, i8* %4796
  %4798 = sext i8 %4797 to i64
  %4799 = and i64 %4798, 4294967295
  store i64 %4799, i64* %RDX.i732, align 8
  store %struct.Memory* %loadMem_4299b9, %struct.Memory** %MEMORY
  %loadMem_4299bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4801 = getelementptr inbounds %struct.GPR, %struct.GPR* %4800, i32 0, i32 33
  %4802 = getelementptr inbounds %struct.Reg, %struct.Reg* %4801, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %4802 to i64*
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 7
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %EDX.i728 = bitcast %union.anon* %4805 to i32*
  %4806 = load i32, i32* %EDX.i728
  %4807 = zext i32 %4806 to i64
  %4808 = load i64, i64* %PC.i727
  %4809 = add i64 %4808, 3
  store i64 %4809, i64* %PC.i727
  %4810 = sub i32 %4806, 126
  %4811 = icmp ult i32 %4806, 126
  %4812 = zext i1 %4811 to i8
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4812, i8* %4813, align 1
  %4814 = and i32 %4810, 255
  %4815 = call i32 @llvm.ctpop.i32(i32 %4814)
  %4816 = trunc i32 %4815 to i8
  %4817 = and i8 %4816, 1
  %4818 = xor i8 %4817, 1
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4818, i8* %4819, align 1
  %4820 = xor i64 126, %4807
  %4821 = trunc i64 %4820 to i32
  %4822 = xor i32 %4821, %4810
  %4823 = lshr i32 %4822, 4
  %4824 = trunc i32 %4823 to i8
  %4825 = and i8 %4824, 1
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4825, i8* %4826, align 1
  %4827 = icmp eq i32 %4810, 0
  %4828 = zext i1 %4827 to i8
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4828, i8* %4829, align 1
  %4830 = lshr i32 %4810, 31
  %4831 = trunc i32 %4830 to i8
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4831, i8* %4832, align 1
  %4833 = lshr i32 %4806, 31
  %4834 = xor i32 %4830, %4833
  %4835 = add i32 %4834, %4833
  %4836 = icmp eq i32 %4835, 2
  %4837 = zext i1 %4836 to i8
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4837, i8* %4838, align 1
  store %struct.Memory* %loadMem_4299bd, %struct.Memory** %MEMORY
  %loadMem_4299c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4840 = getelementptr inbounds %struct.GPR, %struct.GPR* %4839, i32 0, i32 33
  %4841 = getelementptr inbounds %struct.Reg, %struct.Reg* %4840, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %4841 to i64*
  %4842 = load i64, i64* %PC.i726
  %4843 = add i64 %4842, 106
  %4844 = load i64, i64* %PC.i726
  %4845 = add i64 %4844, 6
  %4846 = load i64, i64* %PC.i726
  %4847 = add i64 %4846, 6
  store i64 %4847, i64* %PC.i726
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4849 = load i8, i8* %4848, align 1
  store i8 %4849, i8* %BRANCH_TAKEN, align 1
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4851 = icmp ne i8 %4849, 0
  %4852 = select i1 %4851, i64 %4843, i64 %4845
  store i64 %4852, i64* %4850, align 8
  store %struct.Memory* %loadMem_4299c0, %struct.Memory** %MEMORY
  %loadBr_4299c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4299c0 = icmp eq i8 %loadBr_4299c0, 1
  br i1 %cmpBr_4299c0, label %block_.L_429a2a, label %block_4299c6

block_4299c6:                                     ; preds = %block_4299a9
  %loadMem_4299c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 33
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 1
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %RAX.i724 = bitcast %union.anon* %4858 to i64*
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 15
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %RBP.i725 = bitcast %union.anon* %4861 to i64*
  %4862 = load i64, i64* %RBP.i725
  %4863 = sub i64 %4862, 40
  %4864 = load i64, i64* %PC.i723
  %4865 = add i64 %4864, 4
  store i64 %4865, i64* %PC.i723
  %4866 = inttoptr i64 %4863 to i64*
  %4867 = load i64, i64* %4866
  store i64 %4867, i64* %RAX.i724, align 8
  store %struct.Memory* %loadMem_4299c6, %struct.Memory** %MEMORY
  %loadMem_4299ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 33
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %4870 to i64*
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 5
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %RCX.i721 = bitcast %union.anon* %4873 to i64*
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 15
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %4876 to i64*
  %4877 = load i64, i64* %RBP.i722
  %4878 = sub i64 %4877, 44
  %4879 = load i64, i64* %PC.i720
  %4880 = add i64 %4879, 4
  store i64 %4880, i64* %PC.i720
  %4881 = inttoptr i64 %4878 to i32*
  %4882 = load i32, i32* %4881
  %4883 = sext i32 %4882 to i64
  store i64 %4883, i64* %RCX.i721, align 8
  store %struct.Memory* %loadMem_4299ca, %struct.Memory** %MEMORY
  %loadMem_4299ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 33
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %4886 to i64*
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4888 = getelementptr inbounds %struct.GPR, %struct.GPR* %4887, i32 0, i32 1
  %4889 = getelementptr inbounds %struct.Reg, %struct.Reg* %4888, i32 0, i32 0
  %RAX.i718 = bitcast %union.anon* %4889 to i64*
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 5
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %4892 to i64*
  %4893 = load i64, i64* %RAX.i718
  %4894 = load i64, i64* %RCX.i719
  %4895 = mul i64 %4894, 8
  %4896 = add i64 %4895, %4893
  %4897 = load i64, i64* %PC.i717
  %4898 = add i64 %4897, 4
  store i64 %4898, i64* %PC.i717
  %4899 = inttoptr i64 %4896 to i64*
  %4900 = load i64, i64* %4899
  store i64 %4900, i64* %RAX.i718, align 8
  store %struct.Memory* %loadMem_4299ce, %struct.Memory** %MEMORY
  %loadMem_4299d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 33
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %4903 to i64*
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 1
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %RAX.i716 = bitcast %union.anon* %4906 to i64*
  %4907 = load i64, i64* %RAX.i716
  %4908 = add i64 %4907, 8
  %4909 = load i64, i64* %PC.i715
  %4910 = add i64 %4909, 4
  store i64 %4910, i64* %PC.i715
  %4911 = inttoptr i64 %4908 to i64*
  %4912 = load i64, i64* %4911
  store i64 %4912, i64* %RAX.i716, align 8
  store %struct.Memory* %loadMem_4299d2, %struct.Memory** %MEMORY
  %loadMem_4299d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 33
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %4915 to i64*
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 5
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %RCX.i713 = bitcast %union.anon* %4918 to i64*
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 15
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %RBP.i714 = bitcast %union.anon* %4921 to i64*
  %4922 = load i64, i64* %RBP.i714
  %4923 = sub i64 %4922, 60
  %4924 = load i64, i64* %PC.i712
  %4925 = add i64 %4924, 4
  store i64 %4925, i64* %PC.i712
  %4926 = inttoptr i64 %4923 to i32*
  %4927 = load i32, i32* %4926
  %4928 = sext i32 %4927 to i64
  store i64 %4928, i64* %RCX.i713, align 8
  store %struct.Memory* %loadMem_4299d6, %struct.Memory** %MEMORY
  %loadMem_4299da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4930 = getelementptr inbounds %struct.GPR, %struct.GPR* %4929, i32 0, i32 33
  %4931 = getelementptr inbounds %struct.Reg, %struct.Reg* %4930, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %4931 to i64*
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 1
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %RAX.i710 = bitcast %union.anon* %4934 to i64*
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 5
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %RCX.i711 = bitcast %union.anon* %4937 to i64*
  %4938 = load i64, i64* %RAX.i710
  %4939 = load i64, i64* %RCX.i711
  %4940 = add i64 %4939, %4938
  %4941 = load i64, i64* %PC.i709
  %4942 = add i64 %4941, 4
  store i64 %4942, i64* %PC.i709
  %4943 = inttoptr i64 %4940 to i8*
  store i8 5, i8* %4943
  store %struct.Memory* %loadMem_4299da, %struct.Memory** %MEMORY
  %loadMem_4299de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4945 = getelementptr inbounds %struct.GPR, %struct.GPR* %4944, i32 0, i32 33
  %4946 = getelementptr inbounds %struct.Reg, %struct.Reg* %4945, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %4946 to i64*
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4948 = getelementptr inbounds %struct.GPR, %struct.GPR* %4947, i32 0, i32 1
  %4949 = getelementptr inbounds %struct.Reg, %struct.Reg* %4948, i32 0, i32 0
  %RAX.i707 = bitcast %union.anon* %4949 to i64*
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4951 = getelementptr inbounds %struct.GPR, %struct.GPR* %4950, i32 0, i32 15
  %4952 = getelementptr inbounds %struct.Reg, %struct.Reg* %4951, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %4952 to i64*
  %4953 = load i64, i64* %RBP.i708
  %4954 = sub i64 %4953, 40
  %4955 = load i64, i64* %PC.i706
  %4956 = add i64 %4955, 4
  store i64 %4956, i64* %PC.i706
  %4957 = inttoptr i64 %4954 to i64*
  %4958 = load i64, i64* %4957
  store i64 %4958, i64* %RAX.i707, align 8
  store %struct.Memory* %loadMem_4299de, %struct.Memory** %MEMORY
  %loadMem_4299e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4960 = getelementptr inbounds %struct.GPR, %struct.GPR* %4959, i32 0, i32 33
  %4961 = getelementptr inbounds %struct.Reg, %struct.Reg* %4960, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %4961 to i64*
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4963 = getelementptr inbounds %struct.GPR, %struct.GPR* %4962, i32 0, i32 5
  %4964 = getelementptr inbounds %struct.Reg, %struct.Reg* %4963, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %4964 to i64*
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 15
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %4967 to i64*
  %4968 = load i64, i64* %RBP.i705
  %4969 = sub i64 %4968, 44
  %4970 = load i64, i64* %PC.i703
  %4971 = add i64 %4970, 4
  store i64 %4971, i64* %PC.i703
  %4972 = inttoptr i64 %4969 to i32*
  %4973 = load i32, i32* %4972
  %4974 = sext i32 %4973 to i64
  store i64 %4974, i64* %RCX.i704, align 8
  store %struct.Memory* %loadMem_4299e2, %struct.Memory** %MEMORY
  %loadMem_4299e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 33
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %4977 to i64*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 1
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %RAX.i701 = bitcast %union.anon* %4980 to i64*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 5
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %RCX.i702 = bitcast %union.anon* %4983 to i64*
  %4984 = load i64, i64* %RAX.i701
  %4985 = load i64, i64* %RCX.i702
  %4986 = mul i64 %4985, 8
  %4987 = add i64 %4986, %4984
  %4988 = load i64, i64* %PC.i700
  %4989 = add i64 %4988, 4
  store i64 %4989, i64* %PC.i700
  %4990 = inttoptr i64 %4987 to i64*
  %4991 = load i64, i64* %4990
  store i64 %4991, i64* %RAX.i701, align 8
  store %struct.Memory* %loadMem_4299e6, %struct.Memory** %MEMORY
  %loadMem_4299ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 33
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %4994 to i64*
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 1
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %4997 to i64*
  %4998 = load i64, i64* %RAX.i699
  %4999 = add i64 %4998, 16
  %5000 = load i64, i64* %PC.i698
  %5001 = add i64 %5000, 4
  store i64 %5001, i64* %PC.i698
  %5002 = inttoptr i64 %4999 to i64*
  %5003 = load i64, i64* %5002
  store i64 %5003, i64* %RAX.i699, align 8
  store %struct.Memory* %loadMem_4299ea, %struct.Memory** %MEMORY
  %loadMem_4299ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 33
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %5006 to i64*
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 5
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %RCX.i696 = bitcast %union.anon* %5009 to i64*
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 15
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %5012 to i64*
  %5013 = load i64, i64* %RBP.i697
  %5014 = sub i64 %5013, 60
  %5015 = load i64, i64* %PC.i695
  %5016 = add i64 %5015, 4
  store i64 %5016, i64* %PC.i695
  %5017 = inttoptr i64 %5014 to i32*
  %5018 = load i32, i32* %5017
  %5019 = sext i32 %5018 to i64
  store i64 %5019, i64* %RCX.i696, align 8
  store %struct.Memory* %loadMem_4299ee, %struct.Memory** %MEMORY
  %loadMem_4299f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5021 = getelementptr inbounds %struct.GPR, %struct.GPR* %5020, i32 0, i32 33
  %5022 = getelementptr inbounds %struct.Reg, %struct.Reg* %5021, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %5022 to i64*
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 1
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 5
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %RCX.i694 = bitcast %union.anon* %5028 to i64*
  %5029 = load i64, i64* %RAX.i693
  %5030 = load i64, i64* %RCX.i694
  %5031 = mul i64 %5030, 4
  %5032 = add i64 %5031, %5029
  %5033 = load i64, i64* %PC.i692
  %5034 = add i64 %5033, 7
  store i64 %5034, i64* %PC.i692
  %5035 = inttoptr i64 %5032 to i32*
  store i32 0, i32* %5035
  store %struct.Memory* %loadMem_4299f2, %struct.Memory** %MEMORY
  %loadMem_4299f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 33
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %5038 to i64*
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 7
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %RDX.i690 = bitcast %union.anon* %5041 to i64*
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5043 = getelementptr inbounds %struct.GPR, %struct.GPR* %5042, i32 0, i32 15
  %5044 = getelementptr inbounds %struct.Reg, %struct.Reg* %5043, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %5044 to i64*
  %5045 = load i64, i64* %RBP.i691
  %5046 = sub i64 %5045, 48
  %5047 = load i64, i64* %PC.i689
  %5048 = add i64 %5047, 3
  store i64 %5048, i64* %PC.i689
  %5049 = inttoptr i64 %5046 to i32*
  %5050 = load i32, i32* %5049
  %5051 = zext i32 %5050 to i64
  store i64 %5051, i64* %RDX.i690, align 8
  store %struct.Memory* %loadMem_4299f9, %struct.Memory** %MEMORY
  %loadMem_4299fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 33
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %5054 to i64*
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 1
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %5057 to i64*
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 15
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %5060 to i64*
  %5061 = load i64, i64* %RBP.i688
  %5062 = sub i64 %5061, 40
  %5063 = load i64, i64* %PC.i686
  %5064 = add i64 %5063, 4
  store i64 %5064, i64* %PC.i686
  %5065 = inttoptr i64 %5062 to i64*
  %5066 = load i64, i64* %5065
  store i64 %5066, i64* %RAX.i687, align 8
  store %struct.Memory* %loadMem_4299fc, %struct.Memory** %MEMORY
  %loadMem_429a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 33
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %5069 to i64*
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 5
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %RCX.i684 = bitcast %union.anon* %5072 to i64*
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 15
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %5075 to i64*
  %5076 = load i64, i64* %RBP.i685
  %5077 = sub i64 %5076, 44
  %5078 = load i64, i64* %PC.i683
  %5079 = add i64 %5078, 4
  store i64 %5079, i64* %PC.i683
  %5080 = inttoptr i64 %5077 to i32*
  %5081 = load i32, i32* %5080
  %5082 = sext i32 %5081 to i64
  store i64 %5082, i64* %RCX.i684, align 8
  store %struct.Memory* %loadMem_429a00, %struct.Memory** %MEMORY
  %loadMem_429a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 33
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %5085 to i64*
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5087 = getelementptr inbounds %struct.GPR, %struct.GPR* %5086, i32 0, i32 1
  %5088 = getelementptr inbounds %struct.Reg, %struct.Reg* %5087, i32 0, i32 0
  %RAX.i681 = bitcast %union.anon* %5088 to i64*
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 5
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %RCX.i682 = bitcast %union.anon* %5091 to i64*
  %5092 = load i64, i64* %RAX.i681
  %5093 = load i64, i64* %RCX.i682
  %5094 = mul i64 %5093, 8
  %5095 = add i64 %5094, %5092
  %5096 = load i64, i64* %PC.i680
  %5097 = add i64 %5096, 4
  store i64 %5097, i64* %PC.i680
  %5098 = inttoptr i64 %5095 to i64*
  %5099 = load i64, i64* %5098
  store i64 %5099, i64* %RAX.i681, align 8
  store %struct.Memory* %loadMem_429a04, %struct.Memory** %MEMORY
  %loadMem_429a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5101 = getelementptr inbounds %struct.GPR, %struct.GPR* %5100, i32 0, i32 33
  %5102 = getelementptr inbounds %struct.Reg, %struct.Reg* %5101, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %5102 to i64*
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 1
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %5105 to i64*
  %5106 = load i64, i64* %RAX.i679
  %5107 = add i64 %5106, 24
  %5108 = load i64, i64* %PC.i678
  %5109 = add i64 %5108, 4
  store i64 %5109, i64* %PC.i678
  %5110 = inttoptr i64 %5107 to i64*
  %5111 = load i64, i64* %5110
  store i64 %5111, i64* %RAX.i679, align 8
  store %struct.Memory* %loadMem_429a08, %struct.Memory** %MEMORY
  %loadMem_429a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5113 = getelementptr inbounds %struct.GPR, %struct.GPR* %5112, i32 0, i32 33
  %5114 = getelementptr inbounds %struct.Reg, %struct.Reg* %5113, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %5114 to i64*
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 5
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %RCX.i676 = bitcast %union.anon* %5117 to i64*
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 15
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %5120 to i64*
  %5121 = load i64, i64* %RBP.i677
  %5122 = sub i64 %5121, 60
  %5123 = load i64, i64* %PC.i675
  %5124 = add i64 %5123, 4
  store i64 %5124, i64* %PC.i675
  %5125 = inttoptr i64 %5122 to i32*
  %5126 = load i32, i32* %5125
  %5127 = sext i32 %5126 to i64
  store i64 %5127, i64* %RCX.i676, align 8
  store %struct.Memory* %loadMem_429a0c, %struct.Memory** %MEMORY
  %loadMem_429a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 33
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %5130 to i64*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 7
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %EDX.i672 = bitcast %union.anon* %5133 to i32*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 1
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %RAX.i673 = bitcast %union.anon* %5136 to i64*
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 5
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %RCX.i674 = bitcast %union.anon* %5139 to i64*
  %5140 = load i64, i64* %RAX.i673
  %5141 = load i64, i64* %RCX.i674
  %5142 = mul i64 %5141, 4
  %5143 = add i64 %5142, %5140
  %5144 = load i32, i32* %EDX.i672
  %5145 = zext i32 %5144 to i64
  %5146 = load i64, i64* %PC.i671
  %5147 = add i64 %5146, 3
  store i64 %5147, i64* %PC.i671
  %5148 = inttoptr i64 %5143 to i32*
  store i32 %5144, i32* %5148
  store %struct.Memory* %loadMem_429a10, %struct.Memory** %MEMORY
  %loadMem_429a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5150 = getelementptr inbounds %struct.GPR, %struct.GPR* %5149, i32 0, i32 33
  %5151 = getelementptr inbounds %struct.Reg, %struct.Reg* %5150, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %5151 to i64*
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5153 = getelementptr inbounds %struct.GPR, %struct.GPR* %5152, i32 0, i32 7
  %5154 = getelementptr inbounds %struct.Reg, %struct.Reg* %5153, i32 0, i32 0
  %RDX.i669 = bitcast %union.anon* %5154 to i64*
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5156 = getelementptr inbounds %struct.GPR, %struct.GPR* %5155, i32 0, i32 15
  %5157 = getelementptr inbounds %struct.Reg, %struct.Reg* %5156, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %5157 to i64*
  %5158 = load i64, i64* %RBP.i670
  %5159 = sub i64 %5158, 48
  %5160 = load i64, i64* %PC.i668
  %5161 = add i64 %5160, 3
  store i64 %5161, i64* %PC.i668
  %5162 = inttoptr i64 %5159 to i32*
  %5163 = load i32, i32* %5162
  %5164 = zext i32 %5163 to i64
  store i64 %5164, i64* %RDX.i669, align 8
  store %struct.Memory* %loadMem_429a13, %struct.Memory** %MEMORY
  %loadMem_429a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5166 = getelementptr inbounds %struct.GPR, %struct.GPR* %5165, i32 0, i32 33
  %5167 = getelementptr inbounds %struct.Reg, %struct.Reg* %5166, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %5167 to i64*
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 7
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %RDX.i667 = bitcast %union.anon* %5170 to i64*
  %5171 = load i64, i64* %RDX.i667
  %5172 = load i64, i64* %PC.i666
  %5173 = add i64 %5172, 3
  store i64 %5173, i64* %PC.i666
  %5174 = trunc i64 %5171 to i32
  %5175 = add i32 1, %5174
  %5176 = zext i32 %5175 to i64
  store i64 %5176, i64* %RDX.i667, align 8
  %5177 = icmp ult i32 %5175, %5174
  %5178 = icmp ult i32 %5175, 1
  %5179 = or i1 %5177, %5178
  %5180 = zext i1 %5179 to i8
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5180, i8* %5181, align 1
  %5182 = and i32 %5175, 255
  %5183 = call i32 @llvm.ctpop.i32(i32 %5182)
  %5184 = trunc i32 %5183 to i8
  %5185 = and i8 %5184, 1
  %5186 = xor i8 %5185, 1
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5186, i8* %5187, align 1
  %5188 = xor i64 1, %5171
  %5189 = trunc i64 %5188 to i32
  %5190 = xor i32 %5189, %5175
  %5191 = lshr i32 %5190, 4
  %5192 = trunc i32 %5191 to i8
  %5193 = and i8 %5192, 1
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5193, i8* %5194, align 1
  %5195 = icmp eq i32 %5175, 0
  %5196 = zext i1 %5195 to i8
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5196, i8* %5197, align 1
  %5198 = lshr i32 %5175, 31
  %5199 = trunc i32 %5198 to i8
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5199, i8* %5200, align 1
  %5201 = lshr i32 %5174, 31
  %5202 = xor i32 %5198, %5201
  %5203 = add i32 %5202, %5198
  %5204 = icmp eq i32 %5203, 2
  %5205 = zext i1 %5204 to i8
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5205, i8* %5206, align 1
  store %struct.Memory* %loadMem_429a16, %struct.Memory** %MEMORY
  %loadMem_429a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 33
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %5209 to i64*
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5211 = getelementptr inbounds %struct.GPR, %struct.GPR* %5210, i32 0, i32 7
  %5212 = getelementptr inbounds %struct.Reg, %struct.Reg* %5211, i32 0, i32 0
  %EDX.i664 = bitcast %union.anon* %5212 to i32*
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 15
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %5215 to i64*
  %5216 = load i64, i64* %RBP.i665
  %5217 = sub i64 %5216, 48
  %5218 = load i32, i32* %EDX.i664
  %5219 = zext i32 %5218 to i64
  %5220 = load i64, i64* %PC.i663
  %5221 = add i64 %5220, 3
  store i64 %5221, i64* %PC.i663
  %5222 = inttoptr i64 %5217 to i32*
  store i32 %5218, i32* %5222
  store %struct.Memory* %loadMem_429a19, %struct.Memory** %MEMORY
  %loadMem_429a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 33
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %5225 to i64*
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 7
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %RDX.i661 = bitcast %union.anon* %5228 to i64*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 15
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %5231 to i64*
  %5232 = load i64, i64* %RBP.i662
  %5233 = sub i64 %5232, 60
  %5234 = load i64, i64* %PC.i660
  %5235 = add i64 %5234, 3
  store i64 %5235, i64* %PC.i660
  %5236 = inttoptr i64 %5233 to i32*
  %5237 = load i32, i32* %5236
  %5238 = zext i32 %5237 to i64
  store i64 %5238, i64* %RDX.i661, align 8
  store %struct.Memory* %loadMem_429a1c, %struct.Memory** %MEMORY
  %loadMem_429a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 33
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %5241 to i64*
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 7
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %RDX.i659 = bitcast %union.anon* %5244 to i64*
  %5245 = load i64, i64* %RDX.i659
  %5246 = load i64, i64* %PC.i658
  %5247 = add i64 %5246, 3
  store i64 %5247, i64* %PC.i658
  %5248 = trunc i64 %5245 to i32
  %5249 = add i32 1, %5248
  %5250 = zext i32 %5249 to i64
  store i64 %5250, i64* %RDX.i659, align 8
  %5251 = icmp ult i32 %5249, %5248
  %5252 = icmp ult i32 %5249, 1
  %5253 = or i1 %5251, %5252
  %5254 = zext i1 %5253 to i8
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5254, i8* %5255, align 1
  %5256 = and i32 %5249, 255
  %5257 = call i32 @llvm.ctpop.i32(i32 %5256)
  %5258 = trunc i32 %5257 to i8
  %5259 = and i8 %5258, 1
  %5260 = xor i8 %5259, 1
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5260, i8* %5261, align 1
  %5262 = xor i64 1, %5245
  %5263 = trunc i64 %5262 to i32
  %5264 = xor i32 %5263, %5249
  %5265 = lshr i32 %5264, 4
  %5266 = trunc i32 %5265 to i8
  %5267 = and i8 %5266, 1
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5267, i8* %5268, align 1
  %5269 = icmp eq i32 %5249, 0
  %5270 = zext i1 %5269 to i8
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5270, i8* %5271, align 1
  %5272 = lshr i32 %5249, 31
  %5273 = trunc i32 %5272 to i8
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5273, i8* %5274, align 1
  %5275 = lshr i32 %5248, 31
  %5276 = xor i32 %5272, %5275
  %5277 = add i32 %5276, %5272
  %5278 = icmp eq i32 %5277, 2
  %5279 = zext i1 %5278 to i8
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5279, i8* %5280, align 1
  store %struct.Memory* %loadMem_429a1f, %struct.Memory** %MEMORY
  %loadMem_429a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5282 = getelementptr inbounds %struct.GPR, %struct.GPR* %5281, i32 0, i32 33
  %5283 = getelementptr inbounds %struct.Reg, %struct.Reg* %5282, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %5283 to i64*
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 7
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %EDX.i656 = bitcast %union.anon* %5286 to i32*
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 15
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %5289 to i64*
  %5290 = load i64, i64* %RBP.i657
  %5291 = sub i64 %5290, 60
  %5292 = load i32, i32* %EDX.i656
  %5293 = zext i32 %5292 to i64
  %5294 = load i64, i64* %PC.i655
  %5295 = add i64 %5294, 3
  store i64 %5295, i64* %PC.i655
  %5296 = inttoptr i64 %5291 to i32*
  store i32 %5292, i32* %5296
  store %struct.Memory* %loadMem_429a22, %struct.Memory** %MEMORY
  %loadMem_429a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 33
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %5299 to i64*
  %5300 = load i64, i64* %PC.i654
  %5301 = add i64 %5300, 527
  %5302 = load i64, i64* %PC.i654
  %5303 = add i64 %5302, 5
  store i64 %5303, i64* %PC.i654
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5301, i64* %5304, align 8
  store %struct.Memory* %loadMem_429a25, %struct.Memory** %MEMORY
  br label %block_.L_429c34

block_.L_429a2a:                                  ; preds = %block_4299a9, %block_42998c, %block_42996f, %block_429952, %block_429935, %block_.L_429919
  %loadMem_429a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 33
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %5307 to i64*
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 1
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %RAX.i652 = bitcast %union.anon* %5310 to i64*
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5312 = getelementptr inbounds %struct.GPR, %struct.GPR* %5311, i32 0, i32 15
  %5313 = getelementptr inbounds %struct.Reg, %struct.Reg* %5312, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %5313 to i64*
  %5314 = load i64, i64* %RBP.i653
  %5315 = sub i64 %5314, 24
  %5316 = load i64, i64* %PC.i651
  %5317 = add i64 %5316, 4
  store i64 %5317, i64* %PC.i651
  %5318 = inttoptr i64 %5315 to i64*
  %5319 = load i64, i64* %5318
  store i64 %5319, i64* %RAX.i652, align 8
  store %struct.Memory* %loadMem_429a2a, %struct.Memory** %MEMORY
  %loadMem_429a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 33
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %5322 to i64*
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 5
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %RCX.i649 = bitcast %union.anon* %5325 to i64*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 15
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %5328 to i64*
  %5329 = load i64, i64* %RBP.i650
  %5330 = sub i64 %5329, 56
  %5331 = load i64, i64* %PC.i648
  %5332 = add i64 %5331, 3
  store i64 %5332, i64* %PC.i648
  %5333 = inttoptr i64 %5330 to i32*
  %5334 = load i32, i32* %5333
  %5335 = zext i32 %5334 to i64
  store i64 %5335, i64* %RCX.i649, align 8
  store %struct.Memory* %loadMem_429a2e, %struct.Memory** %MEMORY
  %loadMem_429a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 33
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %5338 to i64*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 5
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %RCX.i647 = bitcast %union.anon* %5341 to i64*
  %5342 = load i64, i64* %RCX.i647
  %5343 = load i64, i64* %PC.i646
  %5344 = add i64 %5343, 3
  store i64 %5344, i64* %PC.i646
  %5345 = trunc i64 %5342 to i32
  %5346 = add i32 1, %5345
  %5347 = zext i32 %5346 to i64
  store i64 %5347, i64* %RCX.i647, align 8
  %5348 = icmp ult i32 %5346, %5345
  %5349 = icmp ult i32 %5346, 1
  %5350 = or i1 %5348, %5349
  %5351 = zext i1 %5350 to i8
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5351, i8* %5352, align 1
  %5353 = and i32 %5346, 255
  %5354 = call i32 @llvm.ctpop.i32(i32 %5353)
  %5355 = trunc i32 %5354 to i8
  %5356 = and i8 %5355, 1
  %5357 = xor i8 %5356, 1
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5357, i8* %5358, align 1
  %5359 = xor i64 1, %5342
  %5360 = trunc i64 %5359 to i32
  %5361 = xor i32 %5360, %5346
  %5362 = lshr i32 %5361, 4
  %5363 = trunc i32 %5362 to i8
  %5364 = and i8 %5363, 1
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5364, i8* %5365, align 1
  %5366 = icmp eq i32 %5346, 0
  %5367 = zext i1 %5366 to i8
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5367, i8* %5368, align 1
  %5369 = lshr i32 %5346, 31
  %5370 = trunc i32 %5369 to i8
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5370, i8* %5371, align 1
  %5372 = lshr i32 %5345, 31
  %5373 = xor i32 %5369, %5372
  %5374 = add i32 %5373, %5369
  %5375 = icmp eq i32 %5374, 2
  %5376 = zext i1 %5375 to i8
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5376, i8* %5377, align 1
  store %struct.Memory* %loadMem_429a31, %struct.Memory** %MEMORY
  %loadMem_429a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 33
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %5380 to i64*
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 5
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %ECX.i644 = bitcast %union.anon* %5383 to i32*
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 7
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %RDX.i645 = bitcast %union.anon* %5386 to i64*
  %5387 = load i32, i32* %ECX.i644
  %5388 = zext i32 %5387 to i64
  %5389 = load i64, i64* %PC.i643
  %5390 = add i64 %5389, 3
  store i64 %5390, i64* %PC.i643
  %5391 = shl i64 %5388, 32
  %5392 = ashr exact i64 %5391, 32
  store i64 %5392, i64* %RDX.i645, align 8
  store %struct.Memory* %loadMem_429a34, %struct.Memory** %MEMORY
  %loadMem_429a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 33
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %5395 to i64*
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 1
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %5398 to i64*
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5400 = getelementptr inbounds %struct.GPR, %struct.GPR* %5399, i32 0, i32 5
  %5401 = getelementptr inbounds %struct.Reg, %struct.Reg* %5400, i32 0, i32 0
  %RCX.i641 = bitcast %union.anon* %5401 to i64*
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5403 = getelementptr inbounds %struct.GPR, %struct.GPR* %5402, i32 0, i32 7
  %5404 = getelementptr inbounds %struct.Reg, %struct.Reg* %5403, i32 0, i32 0
  %RDX.i642 = bitcast %union.anon* %5404 to i64*
  %5405 = load i64, i64* %RAX.i640
  %5406 = load i64, i64* %RDX.i642
  %5407 = mul i64 %5406, 4
  %5408 = add i64 %5407, %5405
  %5409 = load i64, i64* %PC.i639
  %5410 = add i64 %5409, 3
  store i64 %5410, i64* %PC.i639
  %5411 = inttoptr i64 %5408 to i32*
  %5412 = load i32, i32* %5411
  %5413 = zext i32 %5412 to i64
  store i64 %5413, i64* %RCX.i641, align 8
  store %struct.Memory* %loadMem_429a37, %struct.Memory** %MEMORY
  %loadMem_429a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 33
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %5416 to i64*
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5418 = getelementptr inbounds %struct.GPR, %struct.GPR* %5417, i32 0, i32 5
  %5419 = getelementptr inbounds %struct.Reg, %struct.Reg* %5418, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %5419 to i64*
  %5420 = load i64, i64* %RCX.i638
  %5421 = load i64, i64* %PC.i637
  %5422 = add i64 %5421, 3
  store i64 %5422, i64* %PC.i637
  %5423 = and i64 32, %5420
  %5424 = trunc i64 %5423 to i32
  store i64 %5423, i64* %RCX.i638, align 8
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5425, align 1
  %5426 = and i32 %5424, 255
  %5427 = call i32 @llvm.ctpop.i32(i32 %5426)
  %5428 = trunc i32 %5427 to i8
  %5429 = and i8 %5428, 1
  %5430 = xor i8 %5429, 1
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5430, i8* %5431, align 1
  %5432 = icmp eq i32 %5424, 0
  %5433 = zext i1 %5432 to i8
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5433, i8* %5434, align 1
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5435, align 1
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5436, align 1
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5437, align 1
  store %struct.Memory* %loadMem_429a3a, %struct.Memory** %MEMORY
  %loadMem_429a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 33
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %5440 to i64*
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 5
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %ECX.i636 = bitcast %union.anon* %5443 to i32*
  %5444 = load i32, i32* %ECX.i636
  %5445 = zext i32 %5444 to i64
  %5446 = load i64, i64* %PC.i635
  %5447 = add i64 %5446, 3
  store i64 %5447, i64* %PC.i635
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5448, align 1
  %5449 = and i32 %5444, 255
  %5450 = call i32 @llvm.ctpop.i32(i32 %5449)
  %5451 = trunc i32 %5450 to i8
  %5452 = and i8 %5451, 1
  %5453 = xor i8 %5452, 1
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5453, i8* %5454, align 1
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5455, align 1
  %5456 = icmp eq i32 %5444, 0
  %5457 = zext i1 %5456 to i8
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5457, i8* %5458, align 1
  %5459 = lshr i32 %5444, 31
  %5460 = trunc i32 %5459 to i8
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5460, i8* %5461, align 1
  %5462 = lshr i32 %5444, 31
  %5463 = xor i32 %5459, %5462
  %5464 = add i32 %5463, %5462
  %5465 = icmp eq i32 %5464, 2
  %5466 = zext i1 %5465 to i8
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5466, i8* %5467, align 1
  store %struct.Memory* %loadMem_429a3d, %struct.Memory** %MEMORY
  %loadMem_429a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5469 = getelementptr inbounds %struct.GPR, %struct.GPR* %5468, i32 0, i32 33
  %5470 = getelementptr inbounds %struct.Reg, %struct.Reg* %5469, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %5470 to i64*
  %5471 = load i64, i64* %PC.i634
  %5472 = add i64 %5471, 251
  %5473 = load i64, i64* %PC.i634
  %5474 = add i64 %5473, 6
  %5475 = load i64, i64* %PC.i634
  %5476 = add i64 %5475, 6
  store i64 %5476, i64* %PC.i634
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5478 = load i8, i8* %5477, align 1
  store i8 %5478, i8* %BRANCH_TAKEN, align 1
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5480 = icmp ne i8 %5478, 0
  %5481 = select i1 %5480, i64 %5472, i64 %5474
  store i64 %5481, i64* %5479, align 8
  store %struct.Memory* %loadMem_429a40, %struct.Memory** %MEMORY
  %loadBr_429a40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a40 = icmp eq i8 %loadBr_429a40, 1
  br i1 %cmpBr_429a40, label %block_.L_429b3b, label %block_429a46

block_429a46:                                     ; preds = %block_.L_429a2a
  %loadMem_429a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5483 = getelementptr inbounds %struct.GPR, %struct.GPR* %5482, i32 0, i32 33
  %5484 = getelementptr inbounds %struct.Reg, %struct.Reg* %5483, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %5484 to i64*
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 1
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %RAX.i632 = bitcast %union.anon* %5487 to i64*
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 15
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %5490 to i64*
  %5491 = load i64, i64* %RBP.i633
  %5492 = sub i64 %5491, 8
  %5493 = load i64, i64* %PC.i631
  %5494 = add i64 %5493, 4
  store i64 %5494, i64* %PC.i631
  %5495 = inttoptr i64 %5492 to i64*
  %5496 = load i64, i64* %5495
  store i64 %5496, i64* %RAX.i632, align 8
  store %struct.Memory* %loadMem_429a46, %struct.Memory** %MEMORY
  %loadMem_429a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 33
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %5499 to i64*
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 5
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %RCX.i629 = bitcast %union.anon* %5502 to i64*
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 15
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %5505 to i64*
  %5506 = load i64, i64* %RBP.i630
  %5507 = sub i64 %5506, 44
  %5508 = load i64, i64* %PC.i628
  %5509 = add i64 %5508, 4
  store i64 %5509, i64* %PC.i628
  %5510 = inttoptr i64 %5507 to i32*
  %5511 = load i32, i32* %5510
  %5512 = sext i32 %5511 to i64
  store i64 %5512, i64* %RCX.i629, align 8
  store %struct.Memory* %loadMem_429a4a, %struct.Memory** %MEMORY
  %loadMem_429a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5514 = getelementptr inbounds %struct.GPR, %struct.GPR* %5513, i32 0, i32 33
  %5515 = getelementptr inbounds %struct.Reg, %struct.Reg* %5514, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %5515 to i64*
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 1
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %RAX.i626 = bitcast %union.anon* %5518 to i64*
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5520 = getelementptr inbounds %struct.GPR, %struct.GPR* %5519, i32 0, i32 5
  %5521 = getelementptr inbounds %struct.Reg, %struct.Reg* %5520, i32 0, i32 0
  %RCX.i627 = bitcast %union.anon* %5521 to i64*
  %5522 = load i64, i64* %RAX.i626
  %5523 = load i64, i64* %RCX.i627
  %5524 = mul i64 %5523, 8
  %5525 = add i64 %5524, %5522
  %5526 = load i64, i64* %PC.i625
  %5527 = add i64 %5526, 4
  store i64 %5527, i64* %PC.i625
  %5528 = inttoptr i64 %5525 to i64*
  %5529 = load i64, i64* %5528
  store i64 %5529, i64* %RAX.i626, align 8
  store %struct.Memory* %loadMem_429a4e, %struct.Memory** %MEMORY
  %loadMem_429a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 33
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %5532 to i64*
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 5
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %5535 to i64*
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5537 = getelementptr inbounds %struct.GPR, %struct.GPR* %5536, i32 0, i32 15
  %5538 = getelementptr inbounds %struct.Reg, %struct.Reg* %5537, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %5538 to i64*
  %5539 = load i64, i64* %RBP.i624
  %5540 = sub i64 %5539, 56
  %5541 = load i64, i64* %PC.i622
  %5542 = add i64 %5541, 4
  store i64 %5542, i64* %PC.i622
  %5543 = inttoptr i64 %5540 to i32*
  %5544 = load i32, i32* %5543
  %5545 = sext i32 %5544 to i64
  store i64 %5545, i64* %RCX.i623, align 8
  store %struct.Memory* %loadMem_429a52, %struct.Memory** %MEMORY
  %loadMem_429a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 33
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %5548 to i64*
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 1
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %RAX.i619 = bitcast %union.anon* %5551 to i64*
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 5
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %RCX.i620 = bitcast %union.anon* %5554 to i64*
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 7
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %RDX.i621 = bitcast %union.anon* %5557 to i64*
  %5558 = load i64, i64* %RAX.i619
  %5559 = load i64, i64* %RCX.i620
  %5560 = add i64 %5559, %5558
  %5561 = load i64, i64* %PC.i618
  %5562 = add i64 %5561, 4
  store i64 %5562, i64* %PC.i618
  %5563 = inttoptr i64 %5560 to i8*
  %5564 = load i8, i8* %5563
  %5565 = sext i8 %5564 to i64
  %5566 = and i64 %5565, 4294967295
  store i64 %5566, i64* %RDX.i621, align 8
  store %struct.Memory* %loadMem_429a56, %struct.Memory** %MEMORY
  %loadMem_429a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5568 = getelementptr inbounds %struct.GPR, %struct.GPR* %5567, i32 0, i32 33
  %5569 = getelementptr inbounds %struct.Reg, %struct.Reg* %5568, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %5569 to i64*
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5571 = getelementptr inbounds %struct.GPR, %struct.GPR* %5570, i32 0, i32 7
  %5572 = getelementptr inbounds %struct.Reg, %struct.Reg* %5571, i32 0, i32 0
  %EDX.i617 = bitcast %union.anon* %5572 to i32*
  %5573 = load i32, i32* %EDX.i617
  %5574 = zext i32 %5573 to i64
  %5575 = load i64, i64* %PC.i616
  %5576 = add i64 %5575, 3
  store i64 %5576, i64* %PC.i616
  %5577 = sub i32 %5573, 32
  %5578 = icmp ult i32 %5573, 32
  %5579 = zext i1 %5578 to i8
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5579, i8* %5580, align 1
  %5581 = and i32 %5577, 255
  %5582 = call i32 @llvm.ctpop.i32(i32 %5581)
  %5583 = trunc i32 %5582 to i8
  %5584 = and i8 %5583, 1
  %5585 = xor i8 %5584, 1
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5585, i8* %5586, align 1
  %5587 = xor i64 32, %5574
  %5588 = trunc i64 %5587 to i32
  %5589 = xor i32 %5588, %5577
  %5590 = lshr i32 %5589, 4
  %5591 = trunc i32 %5590 to i8
  %5592 = and i8 %5591, 1
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5592, i8* %5593, align 1
  %5594 = icmp eq i32 %5577, 0
  %5595 = zext i1 %5594 to i8
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5595, i8* %5596, align 1
  %5597 = lshr i32 %5577, 31
  %5598 = trunc i32 %5597 to i8
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5598, i8* %5599, align 1
  %5600 = lshr i32 %5573, 31
  %5601 = xor i32 %5597, %5600
  %5602 = add i32 %5601, %5600
  %5603 = icmp eq i32 %5602, 2
  %5604 = zext i1 %5603 to i8
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5604, i8* %5605, align 1
  store %struct.Memory* %loadMem_429a5a, %struct.Memory** %MEMORY
  %loadMem_429a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5607 = getelementptr inbounds %struct.GPR, %struct.GPR* %5606, i32 0, i32 33
  %5608 = getelementptr inbounds %struct.Reg, %struct.Reg* %5607, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %5608 to i64*
  %5609 = load i64, i64* %PC.i615
  %5610 = add i64 %5609, 222
  %5611 = load i64, i64* %PC.i615
  %5612 = add i64 %5611, 6
  %5613 = load i64, i64* %PC.i615
  %5614 = add i64 %5613, 6
  store i64 %5614, i64* %PC.i615
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5616 = load i8, i8* %5615, align 1
  store i8 %5616, i8* %BRANCH_TAKEN, align 1
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5618 = icmp ne i8 %5616, 0
  %5619 = select i1 %5618, i64 %5610, i64 %5612
  store i64 %5619, i64* %5617, align 8
  store %struct.Memory* %loadMem_429a5d, %struct.Memory** %MEMORY
  %loadBr_429a5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a5d = icmp eq i8 %loadBr_429a5d, 1
  br i1 %cmpBr_429a5d, label %block_.L_429b3b, label %block_429a63

block_429a63:                                     ; preds = %block_429a46
  %loadMem_429a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5621 = getelementptr inbounds %struct.GPR, %struct.GPR* %5620, i32 0, i32 33
  %5622 = getelementptr inbounds %struct.Reg, %struct.Reg* %5621, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %5622 to i64*
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5624 = getelementptr inbounds %struct.GPR, %struct.GPR* %5623, i32 0, i32 1
  %5625 = getelementptr inbounds %struct.Reg, %struct.Reg* %5624, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %5625 to i64*
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5627 = getelementptr inbounds %struct.GPR, %struct.GPR* %5626, i32 0, i32 15
  %5628 = getelementptr inbounds %struct.Reg, %struct.Reg* %5627, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %5628 to i64*
  %5629 = load i64, i64* %RBP.i614
  %5630 = sub i64 %5629, 8
  %5631 = load i64, i64* %PC.i612
  %5632 = add i64 %5631, 4
  store i64 %5632, i64* %PC.i612
  %5633 = inttoptr i64 %5630 to i64*
  %5634 = load i64, i64* %5633
  store i64 %5634, i64* %RAX.i613, align 8
  store %struct.Memory* %loadMem_429a63, %struct.Memory** %MEMORY
  %loadMem_429a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5636 = getelementptr inbounds %struct.GPR, %struct.GPR* %5635, i32 0, i32 33
  %5637 = getelementptr inbounds %struct.Reg, %struct.Reg* %5636, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %5637 to i64*
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5639 = getelementptr inbounds %struct.GPR, %struct.GPR* %5638, i32 0, i32 5
  %5640 = getelementptr inbounds %struct.Reg, %struct.Reg* %5639, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %5640 to i64*
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5642 = getelementptr inbounds %struct.GPR, %struct.GPR* %5641, i32 0, i32 15
  %5643 = getelementptr inbounds %struct.Reg, %struct.Reg* %5642, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %5643 to i64*
  %5644 = load i64, i64* %RBP.i611
  %5645 = sub i64 %5644, 44
  %5646 = load i64, i64* %PC.i609
  %5647 = add i64 %5646, 4
  store i64 %5647, i64* %PC.i609
  %5648 = inttoptr i64 %5645 to i32*
  %5649 = load i32, i32* %5648
  %5650 = sext i32 %5649 to i64
  store i64 %5650, i64* %RCX.i610, align 8
  store %struct.Memory* %loadMem_429a67, %struct.Memory** %MEMORY
  %loadMem_429a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 33
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %5653 to i64*
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 1
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %RAX.i607 = bitcast %union.anon* %5656 to i64*
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5658 = getelementptr inbounds %struct.GPR, %struct.GPR* %5657, i32 0, i32 5
  %5659 = getelementptr inbounds %struct.Reg, %struct.Reg* %5658, i32 0, i32 0
  %RCX.i608 = bitcast %union.anon* %5659 to i64*
  %5660 = load i64, i64* %RAX.i607
  %5661 = load i64, i64* %RCX.i608
  %5662 = mul i64 %5661, 8
  %5663 = add i64 %5662, %5660
  %5664 = load i64, i64* %PC.i606
  %5665 = add i64 %5664, 4
  store i64 %5665, i64* %PC.i606
  %5666 = inttoptr i64 %5663 to i64*
  %5667 = load i64, i64* %5666
  store i64 %5667, i64* %RAX.i607, align 8
  store %struct.Memory* %loadMem_429a6b, %struct.Memory** %MEMORY
  %loadMem_429a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5669 = getelementptr inbounds %struct.GPR, %struct.GPR* %5668, i32 0, i32 33
  %5670 = getelementptr inbounds %struct.Reg, %struct.Reg* %5669, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %5670 to i64*
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 5
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %RCX.i604 = bitcast %union.anon* %5673 to i64*
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 15
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %5676 to i64*
  %5677 = load i64, i64* %RBP.i605
  %5678 = sub i64 %5677, 56
  %5679 = load i64, i64* %PC.i603
  %5680 = add i64 %5679, 4
  store i64 %5680, i64* %PC.i603
  %5681 = inttoptr i64 %5678 to i32*
  %5682 = load i32, i32* %5681
  %5683 = sext i32 %5682 to i64
  store i64 %5683, i64* %RCX.i604, align 8
  store %struct.Memory* %loadMem_429a6f, %struct.Memory** %MEMORY
  %loadMem_429a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5685 = getelementptr inbounds %struct.GPR, %struct.GPR* %5684, i32 0, i32 33
  %5686 = getelementptr inbounds %struct.Reg, %struct.Reg* %5685, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %5686 to i64*
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5688 = getelementptr inbounds %struct.GPR, %struct.GPR* %5687, i32 0, i32 1
  %5689 = getelementptr inbounds %struct.Reg, %struct.Reg* %5688, i32 0, i32 0
  %RAX.i600 = bitcast %union.anon* %5689 to i64*
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5691 = getelementptr inbounds %struct.GPR, %struct.GPR* %5690, i32 0, i32 5
  %5692 = getelementptr inbounds %struct.Reg, %struct.Reg* %5691, i32 0, i32 0
  %RCX.i601 = bitcast %union.anon* %5692 to i64*
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5694 = getelementptr inbounds %struct.GPR, %struct.GPR* %5693, i32 0, i32 7
  %5695 = getelementptr inbounds %struct.Reg, %struct.Reg* %5694, i32 0, i32 0
  %RDX.i602 = bitcast %union.anon* %5695 to i64*
  %5696 = load i64, i64* %RAX.i600
  %5697 = load i64, i64* %RCX.i601
  %5698 = add i64 %5697, %5696
  %5699 = load i64, i64* %PC.i599
  %5700 = add i64 %5699, 4
  store i64 %5700, i64* %PC.i599
  %5701 = inttoptr i64 %5698 to i8*
  %5702 = load i8, i8* %5701
  %5703 = sext i8 %5702 to i64
  %5704 = and i64 %5703, 4294967295
  store i64 %5704, i64* %RDX.i602, align 8
  store %struct.Memory* %loadMem_429a73, %struct.Memory** %MEMORY
  %loadMem_429a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 33
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %5707 to i64*
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5709 = getelementptr inbounds %struct.GPR, %struct.GPR* %5708, i32 0, i32 7
  %5710 = getelementptr inbounds %struct.Reg, %struct.Reg* %5709, i32 0, i32 0
  %EDX.i598 = bitcast %union.anon* %5710 to i32*
  %5711 = load i32, i32* %EDX.i598
  %5712 = zext i32 %5711 to i64
  %5713 = load i64, i64* %PC.i597
  %5714 = add i64 %5713, 3
  store i64 %5714, i64* %PC.i597
  %5715 = sub i32 %5711, 46
  %5716 = icmp ult i32 %5711, 46
  %5717 = zext i1 %5716 to i8
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5717, i8* %5718, align 1
  %5719 = and i32 %5715, 255
  %5720 = call i32 @llvm.ctpop.i32(i32 %5719)
  %5721 = trunc i32 %5720 to i8
  %5722 = and i8 %5721, 1
  %5723 = xor i8 %5722, 1
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5723, i8* %5724, align 1
  %5725 = xor i64 46, %5712
  %5726 = trunc i64 %5725 to i32
  %5727 = xor i32 %5726, %5715
  %5728 = lshr i32 %5727, 4
  %5729 = trunc i32 %5728 to i8
  %5730 = and i8 %5729, 1
  %5731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5730, i8* %5731, align 1
  %5732 = icmp eq i32 %5715, 0
  %5733 = zext i1 %5732 to i8
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5733, i8* %5734, align 1
  %5735 = lshr i32 %5715, 31
  %5736 = trunc i32 %5735 to i8
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5736, i8* %5737, align 1
  %5738 = lshr i32 %5711, 31
  %5739 = xor i32 %5735, %5738
  %5740 = add i32 %5739, %5738
  %5741 = icmp eq i32 %5740, 2
  %5742 = zext i1 %5741 to i8
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5742, i8* %5743, align 1
  store %struct.Memory* %loadMem_429a77, %struct.Memory** %MEMORY
  %loadMem_429a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5745 = getelementptr inbounds %struct.GPR, %struct.GPR* %5744, i32 0, i32 33
  %5746 = getelementptr inbounds %struct.Reg, %struct.Reg* %5745, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %5746 to i64*
  %5747 = load i64, i64* %PC.i596
  %5748 = add i64 %5747, 193
  %5749 = load i64, i64* %PC.i596
  %5750 = add i64 %5749, 6
  %5751 = load i64, i64* %PC.i596
  %5752 = add i64 %5751, 6
  store i64 %5752, i64* %PC.i596
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5754 = load i8, i8* %5753, align 1
  store i8 %5754, i8* %BRANCH_TAKEN, align 1
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5756 = icmp ne i8 %5754, 0
  %5757 = select i1 %5756, i64 %5748, i64 %5750
  store i64 %5757, i64* %5755, align 8
  store %struct.Memory* %loadMem_429a7a, %struct.Memory** %MEMORY
  %loadBr_429a7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a7a = icmp eq i8 %loadBr_429a7a, 1
  br i1 %cmpBr_429a7a, label %block_.L_429b3b, label %block_429a80

block_429a80:                                     ; preds = %block_429a63
  %loadMem_429a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 33
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %5760 to i64*
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5762 = getelementptr inbounds %struct.GPR, %struct.GPR* %5761, i32 0, i32 1
  %5763 = getelementptr inbounds %struct.Reg, %struct.Reg* %5762, i32 0, i32 0
  %RAX.i594 = bitcast %union.anon* %5763 to i64*
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 15
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %5766 to i64*
  %5767 = load i64, i64* %RBP.i595
  %5768 = sub i64 %5767, 8
  %5769 = load i64, i64* %PC.i593
  %5770 = add i64 %5769, 4
  store i64 %5770, i64* %PC.i593
  %5771 = inttoptr i64 %5768 to i64*
  %5772 = load i64, i64* %5771
  store i64 %5772, i64* %RAX.i594, align 8
  store %struct.Memory* %loadMem_429a80, %struct.Memory** %MEMORY
  %loadMem_429a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 33
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %5775 to i64*
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5777 = getelementptr inbounds %struct.GPR, %struct.GPR* %5776, i32 0, i32 5
  %5778 = getelementptr inbounds %struct.Reg, %struct.Reg* %5777, i32 0, i32 0
  %RCX.i591 = bitcast %union.anon* %5778 to i64*
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5780 = getelementptr inbounds %struct.GPR, %struct.GPR* %5779, i32 0, i32 15
  %5781 = getelementptr inbounds %struct.Reg, %struct.Reg* %5780, i32 0, i32 0
  %RBP.i592 = bitcast %union.anon* %5781 to i64*
  %5782 = load i64, i64* %RBP.i592
  %5783 = sub i64 %5782, 44
  %5784 = load i64, i64* %PC.i590
  %5785 = add i64 %5784, 4
  store i64 %5785, i64* %PC.i590
  %5786 = inttoptr i64 %5783 to i32*
  %5787 = load i32, i32* %5786
  %5788 = sext i32 %5787 to i64
  store i64 %5788, i64* %RCX.i591, align 8
  store %struct.Memory* %loadMem_429a84, %struct.Memory** %MEMORY
  %loadMem_429a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5790 = getelementptr inbounds %struct.GPR, %struct.GPR* %5789, i32 0, i32 33
  %5791 = getelementptr inbounds %struct.Reg, %struct.Reg* %5790, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %5791 to i64*
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5793 = getelementptr inbounds %struct.GPR, %struct.GPR* %5792, i32 0, i32 1
  %5794 = getelementptr inbounds %struct.Reg, %struct.Reg* %5793, i32 0, i32 0
  %RAX.i588 = bitcast %union.anon* %5794 to i64*
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5796 = getelementptr inbounds %struct.GPR, %struct.GPR* %5795, i32 0, i32 5
  %5797 = getelementptr inbounds %struct.Reg, %struct.Reg* %5796, i32 0, i32 0
  %RCX.i589 = bitcast %union.anon* %5797 to i64*
  %5798 = load i64, i64* %RAX.i588
  %5799 = load i64, i64* %RCX.i589
  %5800 = mul i64 %5799, 8
  %5801 = add i64 %5800, %5798
  %5802 = load i64, i64* %PC.i587
  %5803 = add i64 %5802, 4
  store i64 %5803, i64* %PC.i587
  %5804 = inttoptr i64 %5801 to i64*
  %5805 = load i64, i64* %5804
  store i64 %5805, i64* %RAX.i588, align 8
  store %struct.Memory* %loadMem_429a88, %struct.Memory** %MEMORY
  %loadMem_429a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5807 = getelementptr inbounds %struct.GPR, %struct.GPR* %5806, i32 0, i32 33
  %5808 = getelementptr inbounds %struct.Reg, %struct.Reg* %5807, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %5808 to i64*
  %5809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5810 = getelementptr inbounds %struct.GPR, %struct.GPR* %5809, i32 0, i32 5
  %5811 = getelementptr inbounds %struct.Reg, %struct.Reg* %5810, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %5811 to i64*
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5813 = getelementptr inbounds %struct.GPR, %struct.GPR* %5812, i32 0, i32 15
  %5814 = getelementptr inbounds %struct.Reg, %struct.Reg* %5813, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %5814 to i64*
  %5815 = load i64, i64* %RBP.i586
  %5816 = sub i64 %5815, 56
  %5817 = load i64, i64* %PC.i584
  %5818 = add i64 %5817, 4
  store i64 %5818, i64* %PC.i584
  %5819 = inttoptr i64 %5816 to i32*
  %5820 = load i32, i32* %5819
  %5821 = sext i32 %5820 to i64
  store i64 %5821, i64* %RCX.i585, align 8
  store %struct.Memory* %loadMem_429a8c, %struct.Memory** %MEMORY
  %loadMem_429a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 33
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %5824 to i64*
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 1
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %5827 to i64*
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 5
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %RCX.i582 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 7
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RDX.i583 = bitcast %union.anon* %5833 to i64*
  %5834 = load i64, i64* %RAX.i581
  %5835 = load i64, i64* %RCX.i582
  %5836 = add i64 %5835, %5834
  %5837 = load i64, i64* %PC.i580
  %5838 = add i64 %5837, 4
  store i64 %5838, i64* %PC.i580
  %5839 = inttoptr i64 %5836 to i8*
  %5840 = load i8, i8* %5839
  %5841 = sext i8 %5840 to i64
  %5842 = and i64 %5841, 4294967295
  store i64 %5842, i64* %RDX.i583, align 8
  store %struct.Memory* %loadMem_429a90, %struct.Memory** %MEMORY
  %loadMem_429a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 33
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %5845 to i64*
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 7
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %EDX.i579 = bitcast %union.anon* %5848 to i32*
  %5849 = load i32, i32* %EDX.i579
  %5850 = zext i32 %5849 to i64
  %5851 = load i64, i64* %PC.i578
  %5852 = add i64 %5851, 3
  store i64 %5852, i64* %PC.i578
  %5853 = sub i32 %5849, 95
  %5854 = icmp ult i32 %5849, 95
  %5855 = zext i1 %5854 to i8
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5855, i8* %5856, align 1
  %5857 = and i32 %5853, 255
  %5858 = call i32 @llvm.ctpop.i32(i32 %5857)
  %5859 = trunc i32 %5858 to i8
  %5860 = and i8 %5859, 1
  %5861 = xor i8 %5860, 1
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5861, i8* %5862, align 1
  %5863 = xor i64 95, %5850
  %5864 = trunc i64 %5863 to i32
  %5865 = xor i32 %5864, %5853
  %5866 = lshr i32 %5865, 4
  %5867 = trunc i32 %5866 to i8
  %5868 = and i8 %5867, 1
  %5869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5868, i8* %5869, align 1
  %5870 = icmp eq i32 %5853, 0
  %5871 = zext i1 %5870 to i8
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5871, i8* %5872, align 1
  %5873 = lshr i32 %5853, 31
  %5874 = trunc i32 %5873 to i8
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5874, i8* %5875, align 1
  %5876 = lshr i32 %5849, 31
  %5877 = xor i32 %5873, %5876
  %5878 = add i32 %5877, %5876
  %5879 = icmp eq i32 %5878, 2
  %5880 = zext i1 %5879 to i8
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5880, i8* %5881, align 1
  store %struct.Memory* %loadMem_429a94, %struct.Memory** %MEMORY
  %loadMem_429a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5883 = getelementptr inbounds %struct.GPR, %struct.GPR* %5882, i32 0, i32 33
  %5884 = getelementptr inbounds %struct.Reg, %struct.Reg* %5883, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %5884 to i64*
  %5885 = load i64, i64* %PC.i577
  %5886 = add i64 %5885, 164
  %5887 = load i64, i64* %PC.i577
  %5888 = add i64 %5887, 6
  %5889 = load i64, i64* %PC.i577
  %5890 = add i64 %5889, 6
  store i64 %5890, i64* %PC.i577
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5892 = load i8, i8* %5891, align 1
  store i8 %5892, i8* %BRANCH_TAKEN, align 1
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5894 = icmp ne i8 %5892, 0
  %5895 = select i1 %5894, i64 %5886, i64 %5888
  store i64 %5895, i64* %5893, align 8
  store %struct.Memory* %loadMem_429a97, %struct.Memory** %MEMORY
  %loadBr_429a97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429a97 = icmp eq i8 %loadBr_429a97, 1
  br i1 %cmpBr_429a97, label %block_.L_429b3b, label %block_429a9d

block_429a9d:                                     ; preds = %block_429a80
  %loadMem_429a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5897 = getelementptr inbounds %struct.GPR, %struct.GPR* %5896, i32 0, i32 33
  %5898 = getelementptr inbounds %struct.Reg, %struct.Reg* %5897, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %5898 to i64*
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5900 = getelementptr inbounds %struct.GPR, %struct.GPR* %5899, i32 0, i32 1
  %5901 = getelementptr inbounds %struct.Reg, %struct.Reg* %5900, i32 0, i32 0
  %RAX.i575 = bitcast %union.anon* %5901 to i64*
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5903 = getelementptr inbounds %struct.GPR, %struct.GPR* %5902, i32 0, i32 15
  %5904 = getelementptr inbounds %struct.Reg, %struct.Reg* %5903, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %5904 to i64*
  %5905 = load i64, i64* %RBP.i576
  %5906 = sub i64 %5905, 8
  %5907 = load i64, i64* %PC.i574
  %5908 = add i64 %5907, 4
  store i64 %5908, i64* %PC.i574
  %5909 = inttoptr i64 %5906 to i64*
  %5910 = load i64, i64* %5909
  store i64 %5910, i64* %RAX.i575, align 8
  store %struct.Memory* %loadMem_429a9d, %struct.Memory** %MEMORY
  %loadMem_429aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 33
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %5913 to i64*
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5915 = getelementptr inbounds %struct.GPR, %struct.GPR* %5914, i32 0, i32 5
  %5916 = getelementptr inbounds %struct.Reg, %struct.Reg* %5915, i32 0, i32 0
  %RCX.i572 = bitcast %union.anon* %5916 to i64*
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5918 = getelementptr inbounds %struct.GPR, %struct.GPR* %5917, i32 0, i32 15
  %5919 = getelementptr inbounds %struct.Reg, %struct.Reg* %5918, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %5919 to i64*
  %5920 = load i64, i64* %RBP.i573
  %5921 = sub i64 %5920, 44
  %5922 = load i64, i64* %PC.i571
  %5923 = add i64 %5922, 4
  store i64 %5923, i64* %PC.i571
  %5924 = inttoptr i64 %5921 to i32*
  %5925 = load i32, i32* %5924
  %5926 = sext i32 %5925 to i64
  store i64 %5926, i64* %RCX.i572, align 8
  store %struct.Memory* %loadMem_429aa1, %struct.Memory** %MEMORY
  %loadMem_429aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5928 = getelementptr inbounds %struct.GPR, %struct.GPR* %5927, i32 0, i32 33
  %5929 = getelementptr inbounds %struct.Reg, %struct.Reg* %5928, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %5929 to i64*
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5931 = getelementptr inbounds %struct.GPR, %struct.GPR* %5930, i32 0, i32 1
  %5932 = getelementptr inbounds %struct.Reg, %struct.Reg* %5931, i32 0, i32 0
  %RAX.i569 = bitcast %union.anon* %5932 to i64*
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5934 = getelementptr inbounds %struct.GPR, %struct.GPR* %5933, i32 0, i32 5
  %5935 = getelementptr inbounds %struct.Reg, %struct.Reg* %5934, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %5935 to i64*
  %5936 = load i64, i64* %RAX.i569
  %5937 = load i64, i64* %RCX.i570
  %5938 = mul i64 %5937, 8
  %5939 = add i64 %5938, %5936
  %5940 = load i64, i64* %PC.i568
  %5941 = add i64 %5940, 4
  store i64 %5941, i64* %PC.i568
  %5942 = inttoptr i64 %5939 to i64*
  %5943 = load i64, i64* %5942
  store i64 %5943, i64* %RAX.i569, align 8
  store %struct.Memory* %loadMem_429aa5, %struct.Memory** %MEMORY
  %loadMem_429aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5945 = getelementptr inbounds %struct.GPR, %struct.GPR* %5944, i32 0, i32 33
  %5946 = getelementptr inbounds %struct.Reg, %struct.Reg* %5945, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %5946 to i64*
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 5
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %5949 to i64*
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5951 = getelementptr inbounds %struct.GPR, %struct.GPR* %5950, i32 0, i32 15
  %5952 = getelementptr inbounds %struct.Reg, %struct.Reg* %5951, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %5952 to i64*
  %5953 = load i64, i64* %RBP.i567
  %5954 = sub i64 %5953, 56
  %5955 = load i64, i64* %PC.i565
  %5956 = add i64 %5955, 4
  store i64 %5956, i64* %PC.i565
  %5957 = inttoptr i64 %5954 to i32*
  %5958 = load i32, i32* %5957
  %5959 = sext i32 %5958 to i64
  store i64 %5959, i64* %RCX.i566, align 8
  store %struct.Memory* %loadMem_429aa9, %struct.Memory** %MEMORY
  %loadMem_429aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5961 = getelementptr inbounds %struct.GPR, %struct.GPR* %5960, i32 0, i32 33
  %5962 = getelementptr inbounds %struct.Reg, %struct.Reg* %5961, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %5962 to i64*
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 1
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %5965 to i64*
  %5966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5967 = getelementptr inbounds %struct.GPR, %struct.GPR* %5966, i32 0, i32 5
  %5968 = getelementptr inbounds %struct.Reg, %struct.Reg* %5967, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %5968 to i64*
  %5969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5970 = getelementptr inbounds %struct.GPR, %struct.GPR* %5969, i32 0, i32 7
  %5971 = getelementptr inbounds %struct.Reg, %struct.Reg* %5970, i32 0, i32 0
  %RDX.i564 = bitcast %union.anon* %5971 to i64*
  %5972 = load i64, i64* %RAX.i562
  %5973 = load i64, i64* %RCX.i563
  %5974 = add i64 %5973, %5972
  %5975 = load i64, i64* %PC.i561
  %5976 = add i64 %5975, 4
  store i64 %5976, i64* %PC.i561
  %5977 = inttoptr i64 %5974 to i8*
  %5978 = load i8, i8* %5977
  %5979 = sext i8 %5978 to i64
  %5980 = and i64 %5979, 4294967295
  store i64 %5980, i64* %RDX.i564, align 8
  store %struct.Memory* %loadMem_429aad, %struct.Memory** %MEMORY
  %loadMem_429ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5982 = getelementptr inbounds %struct.GPR, %struct.GPR* %5981, i32 0, i32 33
  %5983 = getelementptr inbounds %struct.Reg, %struct.Reg* %5982, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %5983 to i64*
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5985 = getelementptr inbounds %struct.GPR, %struct.GPR* %5984, i32 0, i32 7
  %5986 = getelementptr inbounds %struct.Reg, %struct.Reg* %5985, i32 0, i32 0
  %EDX.i560 = bitcast %union.anon* %5986 to i32*
  %5987 = load i32, i32* %EDX.i560
  %5988 = zext i32 %5987 to i64
  %5989 = load i64, i64* %PC.i559
  %5990 = add i64 %5989, 3
  store i64 %5990, i64* %PC.i559
  %5991 = sub i32 %5987, 45
  %5992 = icmp ult i32 %5987, 45
  %5993 = zext i1 %5992 to i8
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5993, i8* %5994, align 1
  %5995 = and i32 %5991, 255
  %5996 = call i32 @llvm.ctpop.i32(i32 %5995)
  %5997 = trunc i32 %5996 to i8
  %5998 = and i8 %5997, 1
  %5999 = xor i8 %5998, 1
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5999, i8* %6000, align 1
  %6001 = xor i64 45, %5988
  %6002 = trunc i64 %6001 to i32
  %6003 = xor i32 %6002, %5991
  %6004 = lshr i32 %6003, 4
  %6005 = trunc i32 %6004 to i8
  %6006 = and i8 %6005, 1
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6006, i8* %6007, align 1
  %6008 = icmp eq i32 %5991, 0
  %6009 = zext i1 %6008 to i8
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6009, i8* %6010, align 1
  %6011 = lshr i32 %5991, 31
  %6012 = trunc i32 %6011 to i8
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6012, i8* %6013, align 1
  %6014 = lshr i32 %5987, 31
  %6015 = xor i32 %6011, %6014
  %6016 = add i32 %6015, %6014
  %6017 = icmp eq i32 %6016, 2
  %6018 = zext i1 %6017 to i8
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6018, i8* %6019, align 1
  store %struct.Memory* %loadMem_429ab1, %struct.Memory** %MEMORY
  %loadMem_429ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6021 = getelementptr inbounds %struct.GPR, %struct.GPR* %6020, i32 0, i32 33
  %6022 = getelementptr inbounds %struct.Reg, %struct.Reg* %6021, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %6022 to i64*
  %6023 = load i64, i64* %PC.i558
  %6024 = add i64 %6023, 135
  %6025 = load i64, i64* %PC.i558
  %6026 = add i64 %6025, 6
  %6027 = load i64, i64* %PC.i558
  %6028 = add i64 %6027, 6
  store i64 %6028, i64* %PC.i558
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6030 = load i8, i8* %6029, align 1
  store i8 %6030, i8* %BRANCH_TAKEN, align 1
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6032 = icmp ne i8 %6030, 0
  %6033 = select i1 %6032, i64 %6024, i64 %6026
  store i64 %6033, i64* %6031, align 8
  store %struct.Memory* %loadMem_429ab4, %struct.Memory** %MEMORY
  %loadBr_429ab4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429ab4 = icmp eq i8 %loadBr_429ab4, 1
  br i1 %cmpBr_429ab4, label %block_.L_429b3b, label %block_429aba

block_429aba:                                     ; preds = %block_429a9d
  %loadMem_429aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6035 = getelementptr inbounds %struct.GPR, %struct.GPR* %6034, i32 0, i32 33
  %6036 = getelementptr inbounds %struct.Reg, %struct.Reg* %6035, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %6036 to i64*
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6038 = getelementptr inbounds %struct.GPR, %struct.GPR* %6037, i32 0, i32 1
  %6039 = getelementptr inbounds %struct.Reg, %struct.Reg* %6038, i32 0, i32 0
  %RAX.i556 = bitcast %union.anon* %6039 to i64*
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6041 = getelementptr inbounds %struct.GPR, %struct.GPR* %6040, i32 0, i32 15
  %6042 = getelementptr inbounds %struct.Reg, %struct.Reg* %6041, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %6042 to i64*
  %6043 = load i64, i64* %RBP.i557
  %6044 = sub i64 %6043, 8
  %6045 = load i64, i64* %PC.i555
  %6046 = add i64 %6045, 4
  store i64 %6046, i64* %PC.i555
  %6047 = inttoptr i64 %6044 to i64*
  %6048 = load i64, i64* %6047
  store i64 %6048, i64* %RAX.i556, align 8
  store %struct.Memory* %loadMem_429aba, %struct.Memory** %MEMORY
  %loadMem_429abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6050 = getelementptr inbounds %struct.GPR, %struct.GPR* %6049, i32 0, i32 33
  %6051 = getelementptr inbounds %struct.Reg, %struct.Reg* %6050, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %6051 to i64*
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6053 = getelementptr inbounds %struct.GPR, %struct.GPR* %6052, i32 0, i32 5
  %6054 = getelementptr inbounds %struct.Reg, %struct.Reg* %6053, i32 0, i32 0
  %RCX.i553 = bitcast %union.anon* %6054 to i64*
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6056 = getelementptr inbounds %struct.GPR, %struct.GPR* %6055, i32 0, i32 15
  %6057 = getelementptr inbounds %struct.Reg, %struct.Reg* %6056, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %6057 to i64*
  %6058 = load i64, i64* %RBP.i554
  %6059 = sub i64 %6058, 44
  %6060 = load i64, i64* %PC.i552
  %6061 = add i64 %6060, 4
  store i64 %6061, i64* %PC.i552
  %6062 = inttoptr i64 %6059 to i32*
  %6063 = load i32, i32* %6062
  %6064 = sext i32 %6063 to i64
  store i64 %6064, i64* %RCX.i553, align 8
  store %struct.Memory* %loadMem_429abe, %struct.Memory** %MEMORY
  %loadMem_429ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6066 = getelementptr inbounds %struct.GPR, %struct.GPR* %6065, i32 0, i32 33
  %6067 = getelementptr inbounds %struct.Reg, %struct.Reg* %6066, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %6067 to i64*
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6069 = getelementptr inbounds %struct.GPR, %struct.GPR* %6068, i32 0, i32 1
  %6070 = getelementptr inbounds %struct.Reg, %struct.Reg* %6069, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %6070 to i64*
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6072 = getelementptr inbounds %struct.GPR, %struct.GPR* %6071, i32 0, i32 5
  %6073 = getelementptr inbounds %struct.Reg, %struct.Reg* %6072, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %6073 to i64*
  %6074 = load i64, i64* %RAX.i550
  %6075 = load i64, i64* %RCX.i551
  %6076 = mul i64 %6075, 8
  %6077 = add i64 %6076, %6074
  %6078 = load i64, i64* %PC.i549
  %6079 = add i64 %6078, 4
  store i64 %6079, i64* %PC.i549
  %6080 = inttoptr i64 %6077 to i64*
  %6081 = load i64, i64* %6080
  store i64 %6081, i64* %RAX.i550, align 8
  store %struct.Memory* %loadMem_429ac2, %struct.Memory** %MEMORY
  %loadMem_429ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6083 = getelementptr inbounds %struct.GPR, %struct.GPR* %6082, i32 0, i32 33
  %6084 = getelementptr inbounds %struct.Reg, %struct.Reg* %6083, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %6084 to i64*
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 5
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %RCX.i547 = bitcast %union.anon* %6087 to i64*
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 15
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %6090 to i64*
  %6091 = load i64, i64* %RBP.i548
  %6092 = sub i64 %6091, 56
  %6093 = load i64, i64* %PC.i546
  %6094 = add i64 %6093, 4
  store i64 %6094, i64* %PC.i546
  %6095 = inttoptr i64 %6092 to i32*
  %6096 = load i32, i32* %6095
  %6097 = sext i32 %6096 to i64
  store i64 %6097, i64* %RCX.i547, align 8
  store %struct.Memory* %loadMem_429ac6, %struct.Memory** %MEMORY
  %loadMem_429aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6099 = getelementptr inbounds %struct.GPR, %struct.GPR* %6098, i32 0, i32 33
  %6100 = getelementptr inbounds %struct.Reg, %struct.Reg* %6099, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %6100 to i64*
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6102 = getelementptr inbounds %struct.GPR, %struct.GPR* %6101, i32 0, i32 1
  %6103 = getelementptr inbounds %struct.Reg, %struct.Reg* %6102, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %6103 to i64*
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 5
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %6106 to i64*
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6108 = getelementptr inbounds %struct.GPR, %struct.GPR* %6107, i32 0, i32 7
  %6109 = getelementptr inbounds %struct.Reg, %struct.Reg* %6108, i32 0, i32 0
  %RDX.i545 = bitcast %union.anon* %6109 to i64*
  %6110 = load i64, i64* %RAX.i543
  %6111 = load i64, i64* %RCX.i544
  %6112 = add i64 %6111, %6110
  %6113 = load i64, i64* %PC.i542
  %6114 = add i64 %6113, 4
  store i64 %6114, i64* %PC.i542
  %6115 = inttoptr i64 %6112 to i8*
  %6116 = load i8, i8* %6115
  %6117 = sext i8 %6116 to i64
  %6118 = and i64 %6117, 4294967295
  store i64 %6118, i64* %RDX.i545, align 8
  store %struct.Memory* %loadMem_429aca, %struct.Memory** %MEMORY
  %loadMem_429ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6120 = getelementptr inbounds %struct.GPR, %struct.GPR* %6119, i32 0, i32 33
  %6121 = getelementptr inbounds %struct.Reg, %struct.Reg* %6120, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %6121 to i64*
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6123 = getelementptr inbounds %struct.GPR, %struct.GPR* %6122, i32 0, i32 7
  %6124 = getelementptr inbounds %struct.Reg, %struct.Reg* %6123, i32 0, i32 0
  %EDX.i541 = bitcast %union.anon* %6124 to i32*
  %6125 = load i32, i32* %EDX.i541
  %6126 = zext i32 %6125 to i64
  %6127 = load i64, i64* %PC.i540
  %6128 = add i64 %6127, 3
  store i64 %6128, i64* %PC.i540
  %6129 = sub i32 %6125, 126
  %6130 = icmp ult i32 %6125, 126
  %6131 = zext i1 %6130 to i8
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6131, i8* %6132, align 1
  %6133 = and i32 %6129, 255
  %6134 = call i32 @llvm.ctpop.i32(i32 %6133)
  %6135 = trunc i32 %6134 to i8
  %6136 = and i8 %6135, 1
  %6137 = xor i8 %6136, 1
  %6138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6137, i8* %6138, align 1
  %6139 = xor i64 126, %6126
  %6140 = trunc i64 %6139 to i32
  %6141 = xor i32 %6140, %6129
  %6142 = lshr i32 %6141, 4
  %6143 = trunc i32 %6142 to i8
  %6144 = and i8 %6143, 1
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6144, i8* %6145, align 1
  %6146 = icmp eq i32 %6129, 0
  %6147 = zext i1 %6146 to i8
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6147, i8* %6148, align 1
  %6149 = lshr i32 %6129, 31
  %6150 = trunc i32 %6149 to i8
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6150, i8* %6151, align 1
  %6152 = lshr i32 %6125, 31
  %6153 = xor i32 %6149, %6152
  %6154 = add i32 %6153, %6152
  %6155 = icmp eq i32 %6154, 2
  %6156 = zext i1 %6155 to i8
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6156, i8* %6157, align 1
  store %struct.Memory* %loadMem_429ace, %struct.Memory** %MEMORY
  %loadMem_429ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6159 = getelementptr inbounds %struct.GPR, %struct.GPR* %6158, i32 0, i32 33
  %6160 = getelementptr inbounds %struct.Reg, %struct.Reg* %6159, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %6160 to i64*
  %6161 = load i64, i64* %PC.i539
  %6162 = add i64 %6161, 106
  %6163 = load i64, i64* %PC.i539
  %6164 = add i64 %6163, 6
  %6165 = load i64, i64* %PC.i539
  %6166 = add i64 %6165, 6
  store i64 %6166, i64* %PC.i539
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6168 = load i8, i8* %6167, align 1
  store i8 %6168, i8* %BRANCH_TAKEN, align 1
  %6169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6170 = icmp ne i8 %6168, 0
  %6171 = select i1 %6170, i64 %6162, i64 %6164
  store i64 %6171, i64* %6169, align 8
  store %struct.Memory* %loadMem_429ad1, %struct.Memory** %MEMORY
  %loadBr_429ad1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429ad1 = icmp eq i8 %loadBr_429ad1, 1
  br i1 %cmpBr_429ad1, label %block_.L_429b3b, label %block_429ad7

block_429ad7:                                     ; preds = %block_429aba
  %loadMem_429ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6173 = getelementptr inbounds %struct.GPR, %struct.GPR* %6172, i32 0, i32 33
  %6174 = getelementptr inbounds %struct.Reg, %struct.Reg* %6173, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %6174 to i64*
  %6175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6176 = getelementptr inbounds %struct.GPR, %struct.GPR* %6175, i32 0, i32 1
  %6177 = getelementptr inbounds %struct.Reg, %struct.Reg* %6176, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %6177 to i64*
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6179 = getelementptr inbounds %struct.GPR, %struct.GPR* %6178, i32 0, i32 15
  %6180 = getelementptr inbounds %struct.Reg, %struct.Reg* %6179, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %6180 to i64*
  %6181 = load i64, i64* %RBP.i538
  %6182 = sub i64 %6181, 40
  %6183 = load i64, i64* %PC.i536
  %6184 = add i64 %6183, 4
  store i64 %6184, i64* %PC.i536
  %6185 = inttoptr i64 %6182 to i64*
  %6186 = load i64, i64* %6185
  store i64 %6186, i64* %RAX.i537, align 8
  store %struct.Memory* %loadMem_429ad7, %struct.Memory** %MEMORY
  %loadMem_429adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6188 = getelementptr inbounds %struct.GPR, %struct.GPR* %6187, i32 0, i32 33
  %6189 = getelementptr inbounds %struct.Reg, %struct.Reg* %6188, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %6189 to i64*
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6191 = getelementptr inbounds %struct.GPR, %struct.GPR* %6190, i32 0, i32 5
  %6192 = getelementptr inbounds %struct.Reg, %struct.Reg* %6191, i32 0, i32 0
  %RCX.i534 = bitcast %union.anon* %6192 to i64*
  %6193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6194 = getelementptr inbounds %struct.GPR, %struct.GPR* %6193, i32 0, i32 15
  %6195 = getelementptr inbounds %struct.Reg, %struct.Reg* %6194, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %6195 to i64*
  %6196 = load i64, i64* %RBP.i535
  %6197 = sub i64 %6196, 44
  %6198 = load i64, i64* %PC.i533
  %6199 = add i64 %6198, 4
  store i64 %6199, i64* %PC.i533
  %6200 = inttoptr i64 %6197 to i32*
  %6201 = load i32, i32* %6200
  %6202 = sext i32 %6201 to i64
  store i64 %6202, i64* %RCX.i534, align 8
  store %struct.Memory* %loadMem_429adb, %struct.Memory** %MEMORY
  %loadMem_429adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6204 = getelementptr inbounds %struct.GPR, %struct.GPR* %6203, i32 0, i32 33
  %6205 = getelementptr inbounds %struct.Reg, %struct.Reg* %6204, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %6205 to i64*
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6207 = getelementptr inbounds %struct.GPR, %struct.GPR* %6206, i32 0, i32 1
  %6208 = getelementptr inbounds %struct.Reg, %struct.Reg* %6207, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %6208 to i64*
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6210 = getelementptr inbounds %struct.GPR, %struct.GPR* %6209, i32 0, i32 5
  %6211 = getelementptr inbounds %struct.Reg, %struct.Reg* %6210, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %6211 to i64*
  %6212 = load i64, i64* %RAX.i531
  %6213 = load i64, i64* %RCX.i532
  %6214 = mul i64 %6213, 8
  %6215 = add i64 %6214, %6212
  %6216 = load i64, i64* %PC.i530
  %6217 = add i64 %6216, 4
  store i64 %6217, i64* %PC.i530
  %6218 = inttoptr i64 %6215 to i64*
  %6219 = load i64, i64* %6218
  store i64 %6219, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_429adf, %struct.Memory** %MEMORY
  %loadMem_429ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6221 = getelementptr inbounds %struct.GPR, %struct.GPR* %6220, i32 0, i32 33
  %6222 = getelementptr inbounds %struct.Reg, %struct.Reg* %6221, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %6222 to i64*
  %6223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6224 = getelementptr inbounds %struct.GPR, %struct.GPR* %6223, i32 0, i32 1
  %6225 = getelementptr inbounds %struct.Reg, %struct.Reg* %6224, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %6225 to i64*
  %6226 = load i64, i64* %RAX.i529
  %6227 = add i64 %6226, 8
  %6228 = load i64, i64* %PC.i528
  %6229 = add i64 %6228, 4
  store i64 %6229, i64* %PC.i528
  %6230 = inttoptr i64 %6227 to i64*
  %6231 = load i64, i64* %6230
  store i64 %6231, i64* %RAX.i529, align 8
  store %struct.Memory* %loadMem_429ae3, %struct.Memory** %MEMORY
  %loadMem_429ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6233 = getelementptr inbounds %struct.GPR, %struct.GPR* %6232, i32 0, i32 33
  %6234 = getelementptr inbounds %struct.Reg, %struct.Reg* %6233, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %6234 to i64*
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6236 = getelementptr inbounds %struct.GPR, %struct.GPR* %6235, i32 0, i32 5
  %6237 = getelementptr inbounds %struct.Reg, %struct.Reg* %6236, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %6237 to i64*
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 15
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %6240 to i64*
  %6241 = load i64, i64* %RBP.i527
  %6242 = sub i64 %6241, 60
  %6243 = load i64, i64* %PC.i525
  %6244 = add i64 %6243, 4
  store i64 %6244, i64* %PC.i525
  %6245 = inttoptr i64 %6242 to i32*
  %6246 = load i32, i32* %6245
  %6247 = sext i32 %6246 to i64
  store i64 %6247, i64* %RCX.i526, align 8
  store %struct.Memory* %loadMem_429ae7, %struct.Memory** %MEMORY
  %loadMem_429aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6249 = getelementptr inbounds %struct.GPR, %struct.GPR* %6248, i32 0, i32 33
  %6250 = getelementptr inbounds %struct.Reg, %struct.Reg* %6249, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %6250 to i64*
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6252 = getelementptr inbounds %struct.GPR, %struct.GPR* %6251, i32 0, i32 1
  %6253 = getelementptr inbounds %struct.Reg, %struct.Reg* %6252, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %6253 to i64*
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6255 = getelementptr inbounds %struct.GPR, %struct.GPR* %6254, i32 0, i32 5
  %6256 = getelementptr inbounds %struct.Reg, %struct.Reg* %6255, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %6256 to i64*
  %6257 = load i64, i64* %RAX.i523
  %6258 = load i64, i64* %RCX.i524
  %6259 = add i64 %6258, %6257
  %6260 = load i64, i64* %PC.i522
  %6261 = add i64 %6260, 4
  store i64 %6261, i64* %PC.i522
  %6262 = inttoptr i64 %6259 to i8*
  store i8 8, i8* %6262
  store %struct.Memory* %loadMem_429aeb, %struct.Memory** %MEMORY
  %loadMem_429aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6264 = getelementptr inbounds %struct.GPR, %struct.GPR* %6263, i32 0, i32 33
  %6265 = getelementptr inbounds %struct.Reg, %struct.Reg* %6264, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %6265 to i64*
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 1
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %RAX.i520 = bitcast %union.anon* %6268 to i64*
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6270 = getelementptr inbounds %struct.GPR, %struct.GPR* %6269, i32 0, i32 15
  %6271 = getelementptr inbounds %struct.Reg, %struct.Reg* %6270, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %6271 to i64*
  %6272 = load i64, i64* %RBP.i521
  %6273 = sub i64 %6272, 40
  %6274 = load i64, i64* %PC.i519
  %6275 = add i64 %6274, 4
  store i64 %6275, i64* %PC.i519
  %6276 = inttoptr i64 %6273 to i64*
  %6277 = load i64, i64* %6276
  store i64 %6277, i64* %RAX.i520, align 8
  store %struct.Memory* %loadMem_429aef, %struct.Memory** %MEMORY
  %loadMem_429af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6279 = getelementptr inbounds %struct.GPR, %struct.GPR* %6278, i32 0, i32 33
  %6280 = getelementptr inbounds %struct.Reg, %struct.Reg* %6279, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %6280 to i64*
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6282 = getelementptr inbounds %struct.GPR, %struct.GPR* %6281, i32 0, i32 5
  %6283 = getelementptr inbounds %struct.Reg, %struct.Reg* %6282, i32 0, i32 0
  %RCX.i517 = bitcast %union.anon* %6283 to i64*
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6285 = getelementptr inbounds %struct.GPR, %struct.GPR* %6284, i32 0, i32 15
  %6286 = getelementptr inbounds %struct.Reg, %struct.Reg* %6285, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %6286 to i64*
  %6287 = load i64, i64* %RBP.i518
  %6288 = sub i64 %6287, 44
  %6289 = load i64, i64* %PC.i516
  %6290 = add i64 %6289, 4
  store i64 %6290, i64* %PC.i516
  %6291 = inttoptr i64 %6288 to i32*
  %6292 = load i32, i32* %6291
  %6293 = sext i32 %6292 to i64
  store i64 %6293, i64* %RCX.i517, align 8
  store %struct.Memory* %loadMem_429af3, %struct.Memory** %MEMORY
  %loadMem_429af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6295 = getelementptr inbounds %struct.GPR, %struct.GPR* %6294, i32 0, i32 33
  %6296 = getelementptr inbounds %struct.Reg, %struct.Reg* %6295, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %6296 to i64*
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6298 = getelementptr inbounds %struct.GPR, %struct.GPR* %6297, i32 0, i32 1
  %6299 = getelementptr inbounds %struct.Reg, %struct.Reg* %6298, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %6299 to i64*
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6301 = getelementptr inbounds %struct.GPR, %struct.GPR* %6300, i32 0, i32 5
  %6302 = getelementptr inbounds %struct.Reg, %struct.Reg* %6301, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %6302 to i64*
  %6303 = load i64, i64* %RAX.i514
  %6304 = load i64, i64* %RCX.i515
  %6305 = mul i64 %6304, 8
  %6306 = add i64 %6305, %6303
  %6307 = load i64, i64* %PC.i513
  %6308 = add i64 %6307, 4
  store i64 %6308, i64* %PC.i513
  %6309 = inttoptr i64 %6306 to i64*
  %6310 = load i64, i64* %6309
  store i64 %6310, i64* %RAX.i514, align 8
  store %struct.Memory* %loadMem_429af7, %struct.Memory** %MEMORY
  %loadMem_429afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6312 = getelementptr inbounds %struct.GPR, %struct.GPR* %6311, i32 0, i32 33
  %6313 = getelementptr inbounds %struct.Reg, %struct.Reg* %6312, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %6313 to i64*
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6315 = getelementptr inbounds %struct.GPR, %struct.GPR* %6314, i32 0, i32 1
  %6316 = getelementptr inbounds %struct.Reg, %struct.Reg* %6315, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %6316 to i64*
  %6317 = load i64, i64* %RAX.i512
  %6318 = add i64 %6317, 16
  %6319 = load i64, i64* %PC.i511
  %6320 = add i64 %6319, 4
  store i64 %6320, i64* %PC.i511
  %6321 = inttoptr i64 %6318 to i64*
  %6322 = load i64, i64* %6321
  store i64 %6322, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_429afb, %struct.Memory** %MEMORY
  %loadMem_429aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6324 = getelementptr inbounds %struct.GPR, %struct.GPR* %6323, i32 0, i32 33
  %6325 = getelementptr inbounds %struct.Reg, %struct.Reg* %6324, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %6325 to i64*
  %6326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6327 = getelementptr inbounds %struct.GPR, %struct.GPR* %6326, i32 0, i32 5
  %6328 = getelementptr inbounds %struct.Reg, %struct.Reg* %6327, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %6328 to i64*
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6330 = getelementptr inbounds %struct.GPR, %struct.GPR* %6329, i32 0, i32 15
  %6331 = getelementptr inbounds %struct.Reg, %struct.Reg* %6330, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %6331 to i64*
  %6332 = load i64, i64* %RBP.i510
  %6333 = sub i64 %6332, 60
  %6334 = load i64, i64* %PC.i508
  %6335 = add i64 %6334, 4
  store i64 %6335, i64* %PC.i508
  %6336 = inttoptr i64 %6333 to i32*
  %6337 = load i32, i32* %6336
  %6338 = sext i32 %6337 to i64
  store i64 %6338, i64* %RCX.i509, align 8
  store %struct.Memory* %loadMem_429aff, %struct.Memory** %MEMORY
  %loadMem_429b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6340 = getelementptr inbounds %struct.GPR, %struct.GPR* %6339, i32 0, i32 33
  %6341 = getelementptr inbounds %struct.Reg, %struct.Reg* %6340, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %6341 to i64*
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6343 = getelementptr inbounds %struct.GPR, %struct.GPR* %6342, i32 0, i32 1
  %6344 = getelementptr inbounds %struct.Reg, %struct.Reg* %6343, i32 0, i32 0
  %RAX.i506 = bitcast %union.anon* %6344 to i64*
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6346 = getelementptr inbounds %struct.GPR, %struct.GPR* %6345, i32 0, i32 5
  %6347 = getelementptr inbounds %struct.Reg, %struct.Reg* %6346, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %6347 to i64*
  %6348 = load i64, i64* %RAX.i506
  %6349 = load i64, i64* %RCX.i507
  %6350 = mul i64 %6349, 4
  %6351 = add i64 %6350, %6348
  %6352 = load i64, i64* %PC.i505
  %6353 = add i64 %6352, 7
  store i64 %6353, i64* %PC.i505
  %6354 = inttoptr i64 %6351 to i32*
  store i32 0, i32* %6354
  store %struct.Memory* %loadMem_429b03, %struct.Memory** %MEMORY
  %loadMem_429b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6356 = getelementptr inbounds %struct.GPR, %struct.GPR* %6355, i32 0, i32 33
  %6357 = getelementptr inbounds %struct.Reg, %struct.Reg* %6356, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %6357 to i64*
  %6358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6359 = getelementptr inbounds %struct.GPR, %struct.GPR* %6358, i32 0, i32 7
  %6360 = getelementptr inbounds %struct.Reg, %struct.Reg* %6359, i32 0, i32 0
  %RDX.i503 = bitcast %union.anon* %6360 to i64*
  %6361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6362 = getelementptr inbounds %struct.GPR, %struct.GPR* %6361, i32 0, i32 15
  %6363 = getelementptr inbounds %struct.Reg, %struct.Reg* %6362, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %6363 to i64*
  %6364 = load i64, i64* %RBP.i504
  %6365 = sub i64 %6364, 48
  %6366 = load i64, i64* %PC.i502
  %6367 = add i64 %6366, 3
  store i64 %6367, i64* %PC.i502
  %6368 = inttoptr i64 %6365 to i32*
  %6369 = load i32, i32* %6368
  %6370 = zext i32 %6369 to i64
  store i64 %6370, i64* %RDX.i503, align 8
  store %struct.Memory* %loadMem_429b0a, %struct.Memory** %MEMORY
  %loadMem_429b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6372 = getelementptr inbounds %struct.GPR, %struct.GPR* %6371, i32 0, i32 33
  %6373 = getelementptr inbounds %struct.Reg, %struct.Reg* %6372, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %6373 to i64*
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6375 = getelementptr inbounds %struct.GPR, %struct.GPR* %6374, i32 0, i32 1
  %6376 = getelementptr inbounds %struct.Reg, %struct.Reg* %6375, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %6376 to i64*
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 15
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %6379 to i64*
  %6380 = load i64, i64* %RBP.i501
  %6381 = sub i64 %6380, 40
  %6382 = load i64, i64* %PC.i499
  %6383 = add i64 %6382, 4
  store i64 %6383, i64* %PC.i499
  %6384 = inttoptr i64 %6381 to i64*
  %6385 = load i64, i64* %6384
  store i64 %6385, i64* %RAX.i500, align 8
  store %struct.Memory* %loadMem_429b0d, %struct.Memory** %MEMORY
  %loadMem_429b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 33
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %6388 to i64*
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6390 = getelementptr inbounds %struct.GPR, %struct.GPR* %6389, i32 0, i32 5
  %6391 = getelementptr inbounds %struct.Reg, %struct.Reg* %6390, i32 0, i32 0
  %RCX.i497 = bitcast %union.anon* %6391 to i64*
  %6392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6393 = getelementptr inbounds %struct.GPR, %struct.GPR* %6392, i32 0, i32 15
  %6394 = getelementptr inbounds %struct.Reg, %struct.Reg* %6393, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %6394 to i64*
  %6395 = load i64, i64* %RBP.i498
  %6396 = sub i64 %6395, 44
  %6397 = load i64, i64* %PC.i496
  %6398 = add i64 %6397, 4
  store i64 %6398, i64* %PC.i496
  %6399 = inttoptr i64 %6396 to i32*
  %6400 = load i32, i32* %6399
  %6401 = sext i32 %6400 to i64
  store i64 %6401, i64* %RCX.i497, align 8
  store %struct.Memory* %loadMem_429b11, %struct.Memory** %MEMORY
  %loadMem_429b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6403 = getelementptr inbounds %struct.GPR, %struct.GPR* %6402, i32 0, i32 33
  %6404 = getelementptr inbounds %struct.Reg, %struct.Reg* %6403, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %6404 to i64*
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6406 = getelementptr inbounds %struct.GPR, %struct.GPR* %6405, i32 0, i32 1
  %6407 = getelementptr inbounds %struct.Reg, %struct.Reg* %6406, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %6407 to i64*
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6409 = getelementptr inbounds %struct.GPR, %struct.GPR* %6408, i32 0, i32 5
  %6410 = getelementptr inbounds %struct.Reg, %struct.Reg* %6409, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %6410 to i64*
  %6411 = load i64, i64* %RAX.i494
  %6412 = load i64, i64* %RCX.i495
  %6413 = mul i64 %6412, 8
  %6414 = add i64 %6413, %6411
  %6415 = load i64, i64* %PC.i493
  %6416 = add i64 %6415, 4
  store i64 %6416, i64* %PC.i493
  %6417 = inttoptr i64 %6414 to i64*
  %6418 = load i64, i64* %6417
  store i64 %6418, i64* %RAX.i494, align 8
  store %struct.Memory* %loadMem_429b15, %struct.Memory** %MEMORY
  %loadMem_429b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6420 = getelementptr inbounds %struct.GPR, %struct.GPR* %6419, i32 0, i32 33
  %6421 = getelementptr inbounds %struct.Reg, %struct.Reg* %6420, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %6421 to i64*
  %6422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6423 = getelementptr inbounds %struct.GPR, %struct.GPR* %6422, i32 0, i32 1
  %6424 = getelementptr inbounds %struct.Reg, %struct.Reg* %6423, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %6424 to i64*
  %6425 = load i64, i64* %RAX.i492
  %6426 = add i64 %6425, 24
  %6427 = load i64, i64* %PC.i491
  %6428 = add i64 %6427, 4
  store i64 %6428, i64* %PC.i491
  %6429 = inttoptr i64 %6426 to i64*
  %6430 = load i64, i64* %6429
  store i64 %6430, i64* %RAX.i492, align 8
  store %struct.Memory* %loadMem_429b19, %struct.Memory** %MEMORY
  %loadMem_429b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6432 = getelementptr inbounds %struct.GPR, %struct.GPR* %6431, i32 0, i32 33
  %6433 = getelementptr inbounds %struct.Reg, %struct.Reg* %6432, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %6433 to i64*
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6435 = getelementptr inbounds %struct.GPR, %struct.GPR* %6434, i32 0, i32 5
  %6436 = getelementptr inbounds %struct.Reg, %struct.Reg* %6435, i32 0, i32 0
  %RCX.i489 = bitcast %union.anon* %6436 to i64*
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 15
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %6439 to i64*
  %6440 = load i64, i64* %RBP.i490
  %6441 = sub i64 %6440, 60
  %6442 = load i64, i64* %PC.i488
  %6443 = add i64 %6442, 4
  store i64 %6443, i64* %PC.i488
  %6444 = inttoptr i64 %6441 to i32*
  %6445 = load i32, i32* %6444
  %6446 = sext i32 %6445 to i64
  store i64 %6446, i64* %RCX.i489, align 8
  store %struct.Memory* %loadMem_429b1d, %struct.Memory** %MEMORY
  %loadMem_429b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6448 = getelementptr inbounds %struct.GPR, %struct.GPR* %6447, i32 0, i32 33
  %6449 = getelementptr inbounds %struct.Reg, %struct.Reg* %6448, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %6449 to i64*
  %6450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6451 = getelementptr inbounds %struct.GPR, %struct.GPR* %6450, i32 0, i32 7
  %6452 = getelementptr inbounds %struct.Reg, %struct.Reg* %6451, i32 0, i32 0
  %EDX.i485 = bitcast %union.anon* %6452 to i32*
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6454 = getelementptr inbounds %struct.GPR, %struct.GPR* %6453, i32 0, i32 1
  %6455 = getelementptr inbounds %struct.Reg, %struct.Reg* %6454, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %6455 to i64*
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6457 = getelementptr inbounds %struct.GPR, %struct.GPR* %6456, i32 0, i32 5
  %6458 = getelementptr inbounds %struct.Reg, %struct.Reg* %6457, i32 0, i32 0
  %RCX.i487 = bitcast %union.anon* %6458 to i64*
  %6459 = load i64, i64* %RAX.i486
  %6460 = load i64, i64* %RCX.i487
  %6461 = mul i64 %6460, 4
  %6462 = add i64 %6461, %6459
  %6463 = load i32, i32* %EDX.i485
  %6464 = zext i32 %6463 to i64
  %6465 = load i64, i64* %PC.i484
  %6466 = add i64 %6465, 3
  store i64 %6466, i64* %PC.i484
  %6467 = inttoptr i64 %6462 to i32*
  store i32 %6463, i32* %6467
  store %struct.Memory* %loadMem_429b21, %struct.Memory** %MEMORY
  %loadMem_429b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6469 = getelementptr inbounds %struct.GPR, %struct.GPR* %6468, i32 0, i32 33
  %6470 = getelementptr inbounds %struct.Reg, %struct.Reg* %6469, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %6470 to i64*
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6472 = getelementptr inbounds %struct.GPR, %struct.GPR* %6471, i32 0, i32 7
  %6473 = getelementptr inbounds %struct.Reg, %struct.Reg* %6472, i32 0, i32 0
  %RDX.i482 = bitcast %union.anon* %6473 to i64*
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6475 = getelementptr inbounds %struct.GPR, %struct.GPR* %6474, i32 0, i32 15
  %6476 = getelementptr inbounds %struct.Reg, %struct.Reg* %6475, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %6476 to i64*
  %6477 = load i64, i64* %RBP.i483
  %6478 = sub i64 %6477, 48
  %6479 = load i64, i64* %PC.i481
  %6480 = add i64 %6479, 3
  store i64 %6480, i64* %PC.i481
  %6481 = inttoptr i64 %6478 to i32*
  %6482 = load i32, i32* %6481
  %6483 = zext i32 %6482 to i64
  store i64 %6483, i64* %RDX.i482, align 8
  store %struct.Memory* %loadMem_429b24, %struct.Memory** %MEMORY
  %loadMem_429b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6485 = getelementptr inbounds %struct.GPR, %struct.GPR* %6484, i32 0, i32 33
  %6486 = getelementptr inbounds %struct.Reg, %struct.Reg* %6485, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %6486 to i64*
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6488 = getelementptr inbounds %struct.GPR, %struct.GPR* %6487, i32 0, i32 7
  %6489 = getelementptr inbounds %struct.Reg, %struct.Reg* %6488, i32 0, i32 0
  %RDX.i480 = bitcast %union.anon* %6489 to i64*
  %6490 = load i64, i64* %RDX.i480
  %6491 = load i64, i64* %PC.i479
  %6492 = add i64 %6491, 3
  store i64 %6492, i64* %PC.i479
  %6493 = trunc i64 %6490 to i32
  %6494 = add i32 1, %6493
  %6495 = zext i32 %6494 to i64
  store i64 %6495, i64* %RDX.i480, align 8
  %6496 = icmp ult i32 %6494, %6493
  %6497 = icmp ult i32 %6494, 1
  %6498 = or i1 %6496, %6497
  %6499 = zext i1 %6498 to i8
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6499, i8* %6500, align 1
  %6501 = and i32 %6494, 255
  %6502 = call i32 @llvm.ctpop.i32(i32 %6501)
  %6503 = trunc i32 %6502 to i8
  %6504 = and i8 %6503, 1
  %6505 = xor i8 %6504, 1
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6505, i8* %6506, align 1
  %6507 = xor i64 1, %6490
  %6508 = trunc i64 %6507 to i32
  %6509 = xor i32 %6508, %6494
  %6510 = lshr i32 %6509, 4
  %6511 = trunc i32 %6510 to i8
  %6512 = and i8 %6511, 1
  %6513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6512, i8* %6513, align 1
  %6514 = icmp eq i32 %6494, 0
  %6515 = zext i1 %6514 to i8
  %6516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6515, i8* %6516, align 1
  %6517 = lshr i32 %6494, 31
  %6518 = trunc i32 %6517 to i8
  %6519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6518, i8* %6519, align 1
  %6520 = lshr i32 %6493, 31
  %6521 = xor i32 %6517, %6520
  %6522 = add i32 %6521, %6517
  %6523 = icmp eq i32 %6522, 2
  %6524 = zext i1 %6523 to i8
  %6525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6524, i8* %6525, align 1
  store %struct.Memory* %loadMem_429b27, %struct.Memory** %MEMORY
  %loadMem_429b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6527 = getelementptr inbounds %struct.GPR, %struct.GPR* %6526, i32 0, i32 33
  %6528 = getelementptr inbounds %struct.Reg, %struct.Reg* %6527, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %6528 to i64*
  %6529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6530 = getelementptr inbounds %struct.GPR, %struct.GPR* %6529, i32 0, i32 7
  %6531 = getelementptr inbounds %struct.Reg, %struct.Reg* %6530, i32 0, i32 0
  %EDX.i477 = bitcast %union.anon* %6531 to i32*
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6533 = getelementptr inbounds %struct.GPR, %struct.GPR* %6532, i32 0, i32 15
  %6534 = getelementptr inbounds %struct.Reg, %struct.Reg* %6533, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %6534 to i64*
  %6535 = load i64, i64* %RBP.i478
  %6536 = sub i64 %6535, 48
  %6537 = load i32, i32* %EDX.i477
  %6538 = zext i32 %6537 to i64
  %6539 = load i64, i64* %PC.i476
  %6540 = add i64 %6539, 3
  store i64 %6540, i64* %PC.i476
  %6541 = inttoptr i64 %6536 to i32*
  store i32 %6537, i32* %6541
  store %struct.Memory* %loadMem_429b2a, %struct.Memory** %MEMORY
  %loadMem_429b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6543 = getelementptr inbounds %struct.GPR, %struct.GPR* %6542, i32 0, i32 33
  %6544 = getelementptr inbounds %struct.Reg, %struct.Reg* %6543, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %6544 to i64*
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6546 = getelementptr inbounds %struct.GPR, %struct.GPR* %6545, i32 0, i32 7
  %6547 = getelementptr inbounds %struct.Reg, %struct.Reg* %6546, i32 0, i32 0
  %RDX.i474 = bitcast %union.anon* %6547 to i64*
  %6548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6549 = getelementptr inbounds %struct.GPR, %struct.GPR* %6548, i32 0, i32 15
  %6550 = getelementptr inbounds %struct.Reg, %struct.Reg* %6549, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %6550 to i64*
  %6551 = load i64, i64* %RBP.i475
  %6552 = sub i64 %6551, 60
  %6553 = load i64, i64* %PC.i473
  %6554 = add i64 %6553, 3
  store i64 %6554, i64* %PC.i473
  %6555 = inttoptr i64 %6552 to i32*
  %6556 = load i32, i32* %6555
  %6557 = zext i32 %6556 to i64
  store i64 %6557, i64* %RDX.i474, align 8
  store %struct.Memory* %loadMem_429b2d, %struct.Memory** %MEMORY
  %loadMem_429b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6559 = getelementptr inbounds %struct.GPR, %struct.GPR* %6558, i32 0, i32 33
  %6560 = getelementptr inbounds %struct.Reg, %struct.Reg* %6559, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %6560 to i64*
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6562 = getelementptr inbounds %struct.GPR, %struct.GPR* %6561, i32 0, i32 7
  %6563 = getelementptr inbounds %struct.Reg, %struct.Reg* %6562, i32 0, i32 0
  %RDX.i472 = bitcast %union.anon* %6563 to i64*
  %6564 = load i64, i64* %RDX.i472
  %6565 = load i64, i64* %PC.i471
  %6566 = add i64 %6565, 3
  store i64 %6566, i64* %PC.i471
  %6567 = trunc i64 %6564 to i32
  %6568 = add i32 1, %6567
  %6569 = zext i32 %6568 to i64
  store i64 %6569, i64* %RDX.i472, align 8
  %6570 = icmp ult i32 %6568, %6567
  %6571 = icmp ult i32 %6568, 1
  %6572 = or i1 %6570, %6571
  %6573 = zext i1 %6572 to i8
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6573, i8* %6574, align 1
  %6575 = and i32 %6568, 255
  %6576 = call i32 @llvm.ctpop.i32(i32 %6575)
  %6577 = trunc i32 %6576 to i8
  %6578 = and i8 %6577, 1
  %6579 = xor i8 %6578, 1
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6579, i8* %6580, align 1
  %6581 = xor i64 1, %6564
  %6582 = trunc i64 %6581 to i32
  %6583 = xor i32 %6582, %6568
  %6584 = lshr i32 %6583, 4
  %6585 = trunc i32 %6584 to i8
  %6586 = and i8 %6585, 1
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6586, i8* %6587, align 1
  %6588 = icmp eq i32 %6568, 0
  %6589 = zext i1 %6588 to i8
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6589, i8* %6590, align 1
  %6591 = lshr i32 %6568, 31
  %6592 = trunc i32 %6591 to i8
  %6593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6592, i8* %6593, align 1
  %6594 = lshr i32 %6567, 31
  %6595 = xor i32 %6591, %6594
  %6596 = add i32 %6595, %6591
  %6597 = icmp eq i32 %6596, 2
  %6598 = zext i1 %6597 to i8
  %6599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6598, i8* %6599, align 1
  store %struct.Memory* %loadMem_429b30, %struct.Memory** %MEMORY
  %loadMem_429b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6601 = getelementptr inbounds %struct.GPR, %struct.GPR* %6600, i32 0, i32 33
  %6602 = getelementptr inbounds %struct.Reg, %struct.Reg* %6601, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %6602 to i64*
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6604 = getelementptr inbounds %struct.GPR, %struct.GPR* %6603, i32 0, i32 7
  %6605 = getelementptr inbounds %struct.Reg, %struct.Reg* %6604, i32 0, i32 0
  %EDX.i469 = bitcast %union.anon* %6605 to i32*
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6607 = getelementptr inbounds %struct.GPR, %struct.GPR* %6606, i32 0, i32 15
  %6608 = getelementptr inbounds %struct.Reg, %struct.Reg* %6607, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %6608 to i64*
  %6609 = load i64, i64* %RBP.i470
  %6610 = sub i64 %6609, 60
  %6611 = load i32, i32* %EDX.i469
  %6612 = zext i32 %6611 to i64
  %6613 = load i64, i64* %PC.i468
  %6614 = add i64 %6613, 3
  store i64 %6614, i64* %PC.i468
  %6615 = inttoptr i64 %6610 to i32*
  store i32 %6611, i32* %6615
  store %struct.Memory* %loadMem_429b33, %struct.Memory** %MEMORY
  %loadMem_429b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6617 = getelementptr inbounds %struct.GPR, %struct.GPR* %6616, i32 0, i32 33
  %6618 = getelementptr inbounds %struct.Reg, %struct.Reg* %6617, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %6618 to i64*
  %6619 = load i64, i64* %PC.i467
  %6620 = add i64 %6619, 249
  %6621 = load i64, i64* %PC.i467
  %6622 = add i64 %6621, 5
  store i64 %6622, i64* %PC.i467
  %6623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6620, i64* %6623, align 8
  store %struct.Memory* %loadMem_429b36, %struct.Memory** %MEMORY
  br label %block_.L_429c2f

block_.L_429b3b:                                  ; preds = %block_429aba, %block_429a9d, %block_429a80, %block_429a63, %block_429a46, %block_.L_429a2a
  %loadMem_429b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6625 = getelementptr inbounds %struct.GPR, %struct.GPR* %6624, i32 0, i32 33
  %6626 = getelementptr inbounds %struct.Reg, %struct.Reg* %6625, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %6626 to i64*
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6628 = getelementptr inbounds %struct.GPR, %struct.GPR* %6627, i32 0, i32 1
  %6629 = getelementptr inbounds %struct.Reg, %struct.Reg* %6628, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %6629 to i64*
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6631 = getelementptr inbounds %struct.GPR, %struct.GPR* %6630, i32 0, i32 15
  %6632 = getelementptr inbounds %struct.Reg, %struct.Reg* %6631, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %6632 to i64*
  %6633 = load i64, i64* %RBP.i466
  %6634 = sub i64 %6633, 8
  %6635 = load i64, i64* %PC.i464
  %6636 = add i64 %6635, 4
  store i64 %6636, i64* %PC.i464
  %6637 = inttoptr i64 %6634 to i64*
  %6638 = load i64, i64* %6637
  store i64 %6638, i64* %RAX.i465, align 8
  store %struct.Memory* %loadMem_429b3b, %struct.Memory** %MEMORY
  %loadMem_429b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6640 = getelementptr inbounds %struct.GPR, %struct.GPR* %6639, i32 0, i32 33
  %6641 = getelementptr inbounds %struct.Reg, %struct.Reg* %6640, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %6641 to i64*
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6643 = getelementptr inbounds %struct.GPR, %struct.GPR* %6642, i32 0, i32 5
  %6644 = getelementptr inbounds %struct.Reg, %struct.Reg* %6643, i32 0, i32 0
  %RCX.i462 = bitcast %union.anon* %6644 to i64*
  %6645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6646 = getelementptr inbounds %struct.GPR, %struct.GPR* %6645, i32 0, i32 15
  %6647 = getelementptr inbounds %struct.Reg, %struct.Reg* %6646, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %6647 to i64*
  %6648 = load i64, i64* %RBP.i463
  %6649 = sub i64 %6648, 44
  %6650 = load i64, i64* %PC.i461
  %6651 = add i64 %6650, 4
  store i64 %6651, i64* %PC.i461
  %6652 = inttoptr i64 %6649 to i32*
  %6653 = load i32, i32* %6652
  %6654 = sext i32 %6653 to i64
  store i64 %6654, i64* %RCX.i462, align 8
  store %struct.Memory* %loadMem_429b3f, %struct.Memory** %MEMORY
  %loadMem_429b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6656 = getelementptr inbounds %struct.GPR, %struct.GPR* %6655, i32 0, i32 33
  %6657 = getelementptr inbounds %struct.Reg, %struct.Reg* %6656, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %6657 to i64*
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 1
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %6660 to i64*
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 5
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %6663 to i64*
  %6664 = load i64, i64* %RAX.i459
  %6665 = load i64, i64* %RCX.i460
  %6666 = mul i64 %6665, 8
  %6667 = add i64 %6666, %6664
  %6668 = load i64, i64* %PC.i458
  %6669 = add i64 %6668, 4
  store i64 %6669, i64* %PC.i458
  %6670 = inttoptr i64 %6667 to i64*
  %6671 = load i64, i64* %6670
  store i64 %6671, i64* %RAX.i459, align 8
  store %struct.Memory* %loadMem_429b43, %struct.Memory** %MEMORY
  %loadMem_429b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6673 = getelementptr inbounds %struct.GPR, %struct.GPR* %6672, i32 0, i32 33
  %6674 = getelementptr inbounds %struct.Reg, %struct.Reg* %6673, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %6674 to i64*
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6676 = getelementptr inbounds %struct.GPR, %struct.GPR* %6675, i32 0, i32 5
  %6677 = getelementptr inbounds %struct.Reg, %struct.Reg* %6676, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %6677 to i64*
  %6678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6679 = getelementptr inbounds %struct.GPR, %struct.GPR* %6678, i32 0, i32 15
  %6680 = getelementptr inbounds %struct.Reg, %struct.Reg* %6679, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %6680 to i64*
  %6681 = load i64, i64* %RBP.i457
  %6682 = sub i64 %6681, 56
  %6683 = load i64, i64* %PC.i455
  %6684 = add i64 %6683, 4
  store i64 %6684, i64* %PC.i455
  %6685 = inttoptr i64 %6682 to i32*
  %6686 = load i32, i32* %6685
  %6687 = sext i32 %6686 to i64
  store i64 %6687, i64* %RCX.i456, align 8
  store %struct.Memory* %loadMem_429b47, %struct.Memory** %MEMORY
  %loadMem_429b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6689 = getelementptr inbounds %struct.GPR, %struct.GPR* %6688, i32 0, i32 33
  %6690 = getelementptr inbounds %struct.Reg, %struct.Reg* %6689, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %6690 to i64*
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6692 = getelementptr inbounds %struct.GPR, %struct.GPR* %6691, i32 0, i32 1
  %6693 = getelementptr inbounds %struct.Reg, %struct.Reg* %6692, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %6693 to i64*
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6695 = getelementptr inbounds %struct.GPR, %struct.GPR* %6694, i32 0, i32 5
  %6696 = getelementptr inbounds %struct.Reg, %struct.Reg* %6695, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %6696 to i64*
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6698 = getelementptr inbounds %struct.GPR, %struct.GPR* %6697, i32 0, i32 7
  %6699 = getelementptr inbounds %struct.Reg, %struct.Reg* %6698, i32 0, i32 0
  %RDX.i454 = bitcast %union.anon* %6699 to i64*
  %6700 = load i64, i64* %RAX.i452
  %6701 = load i64, i64* %RCX.i453
  %6702 = add i64 %6701, %6700
  %6703 = load i64, i64* %PC.i451
  %6704 = add i64 %6703, 4
  store i64 %6704, i64* %PC.i451
  %6705 = inttoptr i64 %6702 to i8*
  %6706 = load i8, i8* %6705
  %6707 = sext i8 %6706 to i64
  %6708 = and i64 %6707, 4294967295
  store i64 %6708, i64* %RDX.i454, align 8
  store %struct.Memory* %loadMem_429b4b, %struct.Memory** %MEMORY
  %loadMem_429b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6710 = getelementptr inbounds %struct.GPR, %struct.GPR* %6709, i32 0, i32 33
  %6711 = getelementptr inbounds %struct.Reg, %struct.Reg* %6710, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %6711 to i64*
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6713 = getelementptr inbounds %struct.GPR, %struct.GPR* %6712, i32 0, i32 7
  %6714 = getelementptr inbounds %struct.Reg, %struct.Reg* %6713, i32 0, i32 0
  %EDX.i450 = bitcast %union.anon* %6714 to i32*
  %6715 = load i32, i32* %EDX.i450
  %6716 = zext i32 %6715 to i64
  %6717 = load i64, i64* %PC.i449
  %6718 = add i64 %6717, 3
  store i64 %6718, i64* %PC.i449
  %6719 = sub i32 %6715, 32
  %6720 = icmp ult i32 %6715, 32
  %6721 = zext i1 %6720 to i8
  %6722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6721, i8* %6722, align 1
  %6723 = and i32 %6719, 255
  %6724 = call i32 @llvm.ctpop.i32(i32 %6723)
  %6725 = trunc i32 %6724 to i8
  %6726 = and i8 %6725, 1
  %6727 = xor i8 %6726, 1
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6727, i8* %6728, align 1
  %6729 = xor i64 32, %6716
  %6730 = trunc i64 %6729 to i32
  %6731 = xor i32 %6730, %6719
  %6732 = lshr i32 %6731, 4
  %6733 = trunc i32 %6732 to i8
  %6734 = and i8 %6733, 1
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6734, i8* %6735, align 1
  %6736 = icmp eq i32 %6719, 0
  %6737 = zext i1 %6736 to i8
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6737, i8* %6738, align 1
  %6739 = lshr i32 %6719, 31
  %6740 = trunc i32 %6739 to i8
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6740, i8* %6741, align 1
  %6742 = lshr i32 %6715, 31
  %6743 = xor i32 %6739, %6742
  %6744 = add i32 %6743, %6742
  %6745 = icmp eq i32 %6744, 2
  %6746 = zext i1 %6745 to i8
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6746, i8* %6747, align 1
  store %struct.Memory* %loadMem_429b4f, %struct.Memory** %MEMORY
  %loadMem_429b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6749 = getelementptr inbounds %struct.GPR, %struct.GPR* %6748, i32 0, i32 33
  %6750 = getelementptr inbounds %struct.Reg, %struct.Reg* %6749, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %6750 to i64*
  %6751 = load i64, i64* %PC.i448
  %6752 = add i64 %6751, 216
  %6753 = load i64, i64* %PC.i448
  %6754 = add i64 %6753, 6
  %6755 = load i64, i64* %PC.i448
  %6756 = add i64 %6755, 6
  store i64 %6756, i64* %PC.i448
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6758 = load i8, i8* %6757, align 1
  store i8 %6758, i8* %BRANCH_TAKEN, align 1
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6760 = icmp ne i8 %6758, 0
  %6761 = select i1 %6760, i64 %6752, i64 %6754
  store i64 %6761, i64* %6759, align 8
  store %struct.Memory* %loadMem_429b52, %struct.Memory** %MEMORY
  %loadBr_429b52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429b52 = icmp eq i8 %loadBr_429b52, 1
  br i1 %cmpBr_429b52, label %block_.L_429c2a, label %block_429b58

block_429b58:                                     ; preds = %block_.L_429b3b
  %loadMem_429b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6763 = getelementptr inbounds %struct.GPR, %struct.GPR* %6762, i32 0, i32 33
  %6764 = getelementptr inbounds %struct.Reg, %struct.Reg* %6763, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %6764 to i64*
  %6765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6766 = getelementptr inbounds %struct.GPR, %struct.GPR* %6765, i32 0, i32 1
  %6767 = getelementptr inbounds %struct.Reg, %struct.Reg* %6766, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %6767 to i64*
  %6768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6769 = getelementptr inbounds %struct.GPR, %struct.GPR* %6768, i32 0, i32 15
  %6770 = getelementptr inbounds %struct.Reg, %struct.Reg* %6769, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %6770 to i64*
  %6771 = load i64, i64* %RBP.i447
  %6772 = sub i64 %6771, 8
  %6773 = load i64, i64* %PC.i445
  %6774 = add i64 %6773, 4
  store i64 %6774, i64* %PC.i445
  %6775 = inttoptr i64 %6772 to i64*
  %6776 = load i64, i64* %6775
  store i64 %6776, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_429b58, %struct.Memory** %MEMORY
  %loadMem_429b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6778 = getelementptr inbounds %struct.GPR, %struct.GPR* %6777, i32 0, i32 33
  %6779 = getelementptr inbounds %struct.Reg, %struct.Reg* %6778, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %6779 to i64*
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6781 = getelementptr inbounds %struct.GPR, %struct.GPR* %6780, i32 0, i32 5
  %6782 = getelementptr inbounds %struct.Reg, %struct.Reg* %6781, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %6782 to i64*
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6784 = getelementptr inbounds %struct.GPR, %struct.GPR* %6783, i32 0, i32 15
  %6785 = getelementptr inbounds %struct.Reg, %struct.Reg* %6784, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %6785 to i64*
  %6786 = load i64, i64* %RBP.i444
  %6787 = sub i64 %6786, 44
  %6788 = load i64, i64* %PC.i442
  %6789 = add i64 %6788, 4
  store i64 %6789, i64* %PC.i442
  %6790 = inttoptr i64 %6787 to i32*
  %6791 = load i32, i32* %6790
  %6792 = sext i32 %6791 to i64
  store i64 %6792, i64* %RCX.i443, align 8
  store %struct.Memory* %loadMem_429b5c, %struct.Memory** %MEMORY
  %loadMem_429b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6794 = getelementptr inbounds %struct.GPR, %struct.GPR* %6793, i32 0, i32 33
  %6795 = getelementptr inbounds %struct.Reg, %struct.Reg* %6794, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %6795 to i64*
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6797 = getelementptr inbounds %struct.GPR, %struct.GPR* %6796, i32 0, i32 1
  %6798 = getelementptr inbounds %struct.Reg, %struct.Reg* %6797, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %6798 to i64*
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6800 = getelementptr inbounds %struct.GPR, %struct.GPR* %6799, i32 0, i32 5
  %6801 = getelementptr inbounds %struct.Reg, %struct.Reg* %6800, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %6801 to i64*
  %6802 = load i64, i64* %RAX.i440
  %6803 = load i64, i64* %RCX.i441
  %6804 = mul i64 %6803, 8
  %6805 = add i64 %6804, %6802
  %6806 = load i64, i64* %PC.i439
  %6807 = add i64 %6806, 4
  store i64 %6807, i64* %PC.i439
  %6808 = inttoptr i64 %6805 to i64*
  %6809 = load i64, i64* %6808
  store i64 %6809, i64* %RAX.i440, align 8
  store %struct.Memory* %loadMem_429b60, %struct.Memory** %MEMORY
  %loadMem_429b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6811 = getelementptr inbounds %struct.GPR, %struct.GPR* %6810, i32 0, i32 33
  %6812 = getelementptr inbounds %struct.Reg, %struct.Reg* %6811, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %6812 to i64*
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6814 = getelementptr inbounds %struct.GPR, %struct.GPR* %6813, i32 0, i32 5
  %6815 = getelementptr inbounds %struct.Reg, %struct.Reg* %6814, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %6815 to i64*
  %6816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6817 = getelementptr inbounds %struct.GPR, %struct.GPR* %6816, i32 0, i32 15
  %6818 = getelementptr inbounds %struct.Reg, %struct.Reg* %6817, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %6818 to i64*
  %6819 = load i64, i64* %RBP.i438
  %6820 = sub i64 %6819, 56
  %6821 = load i64, i64* %PC.i436
  %6822 = add i64 %6821, 4
  store i64 %6822, i64* %PC.i436
  %6823 = inttoptr i64 %6820 to i32*
  %6824 = load i32, i32* %6823
  %6825 = sext i32 %6824 to i64
  store i64 %6825, i64* %RCX.i437, align 8
  store %struct.Memory* %loadMem_429b64, %struct.Memory** %MEMORY
  %loadMem_429b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6827 = getelementptr inbounds %struct.GPR, %struct.GPR* %6826, i32 0, i32 33
  %6828 = getelementptr inbounds %struct.Reg, %struct.Reg* %6827, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %6828 to i64*
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6830 = getelementptr inbounds %struct.GPR, %struct.GPR* %6829, i32 0, i32 1
  %6831 = getelementptr inbounds %struct.Reg, %struct.Reg* %6830, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %6831 to i64*
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6833 = getelementptr inbounds %struct.GPR, %struct.GPR* %6832, i32 0, i32 5
  %6834 = getelementptr inbounds %struct.Reg, %struct.Reg* %6833, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %6834 to i64*
  %6835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6836 = getelementptr inbounds %struct.GPR, %struct.GPR* %6835, i32 0, i32 7
  %6837 = getelementptr inbounds %struct.Reg, %struct.Reg* %6836, i32 0, i32 0
  %RDX.i435 = bitcast %union.anon* %6837 to i64*
  %6838 = load i64, i64* %RAX.i433
  %6839 = load i64, i64* %RCX.i434
  %6840 = add i64 %6839, %6838
  %6841 = load i64, i64* %PC.i432
  %6842 = add i64 %6841, 4
  store i64 %6842, i64* %PC.i432
  %6843 = inttoptr i64 %6840 to i8*
  %6844 = load i8, i8* %6843
  %6845 = sext i8 %6844 to i64
  %6846 = and i64 %6845, 4294967295
  store i64 %6846, i64* %RDX.i435, align 8
  store %struct.Memory* %loadMem_429b68, %struct.Memory** %MEMORY
  %loadMem_429b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6848 = getelementptr inbounds %struct.GPR, %struct.GPR* %6847, i32 0, i32 33
  %6849 = getelementptr inbounds %struct.Reg, %struct.Reg* %6848, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %6849 to i64*
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6851 = getelementptr inbounds %struct.GPR, %struct.GPR* %6850, i32 0, i32 7
  %6852 = getelementptr inbounds %struct.Reg, %struct.Reg* %6851, i32 0, i32 0
  %EDX.i431 = bitcast %union.anon* %6852 to i32*
  %6853 = load i32, i32* %EDX.i431
  %6854 = zext i32 %6853 to i64
  %6855 = load i64, i64* %PC.i430
  %6856 = add i64 %6855, 3
  store i64 %6856, i64* %PC.i430
  %6857 = sub i32 %6853, 46
  %6858 = icmp ult i32 %6853, 46
  %6859 = zext i1 %6858 to i8
  %6860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6859, i8* %6860, align 1
  %6861 = and i32 %6857, 255
  %6862 = call i32 @llvm.ctpop.i32(i32 %6861)
  %6863 = trunc i32 %6862 to i8
  %6864 = and i8 %6863, 1
  %6865 = xor i8 %6864, 1
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6865, i8* %6866, align 1
  %6867 = xor i64 46, %6854
  %6868 = trunc i64 %6867 to i32
  %6869 = xor i32 %6868, %6857
  %6870 = lshr i32 %6869, 4
  %6871 = trunc i32 %6870 to i8
  %6872 = and i8 %6871, 1
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6872, i8* %6873, align 1
  %6874 = icmp eq i32 %6857, 0
  %6875 = zext i1 %6874 to i8
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6875, i8* %6876, align 1
  %6877 = lshr i32 %6857, 31
  %6878 = trunc i32 %6877 to i8
  %6879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6878, i8* %6879, align 1
  %6880 = lshr i32 %6853, 31
  %6881 = xor i32 %6877, %6880
  %6882 = add i32 %6881, %6880
  %6883 = icmp eq i32 %6882, 2
  %6884 = zext i1 %6883 to i8
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6884, i8* %6885, align 1
  store %struct.Memory* %loadMem_429b6c, %struct.Memory** %MEMORY
  %loadMem_429b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6887 = getelementptr inbounds %struct.GPR, %struct.GPR* %6886, i32 0, i32 33
  %6888 = getelementptr inbounds %struct.Reg, %struct.Reg* %6887, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %6888 to i64*
  %6889 = load i64, i64* %PC.i429
  %6890 = add i64 %6889, 187
  %6891 = load i64, i64* %PC.i429
  %6892 = add i64 %6891, 6
  %6893 = load i64, i64* %PC.i429
  %6894 = add i64 %6893, 6
  store i64 %6894, i64* %PC.i429
  %6895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6896 = load i8, i8* %6895, align 1
  store i8 %6896, i8* %BRANCH_TAKEN, align 1
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6898 = icmp ne i8 %6896, 0
  %6899 = select i1 %6898, i64 %6890, i64 %6892
  store i64 %6899, i64* %6897, align 8
  store %struct.Memory* %loadMem_429b6f, %struct.Memory** %MEMORY
  %loadBr_429b6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429b6f = icmp eq i8 %loadBr_429b6f, 1
  br i1 %cmpBr_429b6f, label %block_.L_429c2a, label %block_429b75

block_429b75:                                     ; preds = %block_429b58
  %loadMem_429b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6901 = getelementptr inbounds %struct.GPR, %struct.GPR* %6900, i32 0, i32 33
  %6902 = getelementptr inbounds %struct.Reg, %struct.Reg* %6901, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %6902 to i64*
  %6903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6904 = getelementptr inbounds %struct.GPR, %struct.GPR* %6903, i32 0, i32 1
  %6905 = getelementptr inbounds %struct.Reg, %struct.Reg* %6904, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %6905 to i64*
  %6906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6907 = getelementptr inbounds %struct.GPR, %struct.GPR* %6906, i32 0, i32 15
  %6908 = getelementptr inbounds %struct.Reg, %struct.Reg* %6907, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %6908 to i64*
  %6909 = load i64, i64* %RBP.i428
  %6910 = sub i64 %6909, 8
  %6911 = load i64, i64* %PC.i426
  %6912 = add i64 %6911, 4
  store i64 %6912, i64* %PC.i426
  %6913 = inttoptr i64 %6910 to i64*
  %6914 = load i64, i64* %6913
  store i64 %6914, i64* %RAX.i427, align 8
  store %struct.Memory* %loadMem_429b75, %struct.Memory** %MEMORY
  %loadMem_429b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6916 = getelementptr inbounds %struct.GPR, %struct.GPR* %6915, i32 0, i32 33
  %6917 = getelementptr inbounds %struct.Reg, %struct.Reg* %6916, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %6917 to i64*
  %6918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6919 = getelementptr inbounds %struct.GPR, %struct.GPR* %6918, i32 0, i32 5
  %6920 = getelementptr inbounds %struct.Reg, %struct.Reg* %6919, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %6920 to i64*
  %6921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6922 = getelementptr inbounds %struct.GPR, %struct.GPR* %6921, i32 0, i32 15
  %6923 = getelementptr inbounds %struct.Reg, %struct.Reg* %6922, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %6923 to i64*
  %6924 = load i64, i64* %RBP.i425
  %6925 = sub i64 %6924, 44
  %6926 = load i64, i64* %PC.i423
  %6927 = add i64 %6926, 4
  store i64 %6927, i64* %PC.i423
  %6928 = inttoptr i64 %6925 to i32*
  %6929 = load i32, i32* %6928
  %6930 = sext i32 %6929 to i64
  store i64 %6930, i64* %RCX.i424, align 8
  store %struct.Memory* %loadMem_429b79, %struct.Memory** %MEMORY
  %loadMem_429b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6932 = getelementptr inbounds %struct.GPR, %struct.GPR* %6931, i32 0, i32 33
  %6933 = getelementptr inbounds %struct.Reg, %struct.Reg* %6932, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %6933 to i64*
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6935 = getelementptr inbounds %struct.GPR, %struct.GPR* %6934, i32 0, i32 1
  %6936 = getelementptr inbounds %struct.Reg, %struct.Reg* %6935, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %6936 to i64*
  %6937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6938 = getelementptr inbounds %struct.GPR, %struct.GPR* %6937, i32 0, i32 5
  %6939 = getelementptr inbounds %struct.Reg, %struct.Reg* %6938, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %6939 to i64*
  %6940 = load i64, i64* %RAX.i421
  %6941 = load i64, i64* %RCX.i422
  %6942 = mul i64 %6941, 8
  %6943 = add i64 %6942, %6940
  %6944 = load i64, i64* %PC.i420
  %6945 = add i64 %6944, 4
  store i64 %6945, i64* %PC.i420
  %6946 = inttoptr i64 %6943 to i64*
  %6947 = load i64, i64* %6946
  store i64 %6947, i64* %RAX.i421, align 8
  store %struct.Memory* %loadMem_429b7d, %struct.Memory** %MEMORY
  %loadMem_429b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6949 = getelementptr inbounds %struct.GPR, %struct.GPR* %6948, i32 0, i32 33
  %6950 = getelementptr inbounds %struct.Reg, %struct.Reg* %6949, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %6950 to i64*
  %6951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6952 = getelementptr inbounds %struct.GPR, %struct.GPR* %6951, i32 0, i32 5
  %6953 = getelementptr inbounds %struct.Reg, %struct.Reg* %6952, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %6953 to i64*
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6955 = getelementptr inbounds %struct.GPR, %struct.GPR* %6954, i32 0, i32 15
  %6956 = getelementptr inbounds %struct.Reg, %struct.Reg* %6955, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %6956 to i64*
  %6957 = load i64, i64* %RBP.i419
  %6958 = sub i64 %6957, 56
  %6959 = load i64, i64* %PC.i417
  %6960 = add i64 %6959, 4
  store i64 %6960, i64* %PC.i417
  %6961 = inttoptr i64 %6958 to i32*
  %6962 = load i32, i32* %6961
  %6963 = sext i32 %6962 to i64
  store i64 %6963, i64* %RCX.i418, align 8
  store %struct.Memory* %loadMem_429b81, %struct.Memory** %MEMORY
  %loadMem_429b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6965 = getelementptr inbounds %struct.GPR, %struct.GPR* %6964, i32 0, i32 33
  %6966 = getelementptr inbounds %struct.Reg, %struct.Reg* %6965, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %6966 to i64*
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6968 = getelementptr inbounds %struct.GPR, %struct.GPR* %6967, i32 0, i32 1
  %6969 = getelementptr inbounds %struct.Reg, %struct.Reg* %6968, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %6969 to i64*
  %6970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6971 = getelementptr inbounds %struct.GPR, %struct.GPR* %6970, i32 0, i32 5
  %6972 = getelementptr inbounds %struct.Reg, %struct.Reg* %6971, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %6972 to i64*
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6974 = getelementptr inbounds %struct.GPR, %struct.GPR* %6973, i32 0, i32 7
  %6975 = getelementptr inbounds %struct.Reg, %struct.Reg* %6974, i32 0, i32 0
  %RDX.i416 = bitcast %union.anon* %6975 to i64*
  %6976 = load i64, i64* %RAX.i414
  %6977 = load i64, i64* %RCX.i415
  %6978 = add i64 %6977, %6976
  %6979 = load i64, i64* %PC.i413
  %6980 = add i64 %6979, 4
  store i64 %6980, i64* %PC.i413
  %6981 = inttoptr i64 %6978 to i8*
  %6982 = load i8, i8* %6981
  %6983 = sext i8 %6982 to i64
  %6984 = and i64 %6983, 4294967295
  store i64 %6984, i64* %RDX.i416, align 8
  store %struct.Memory* %loadMem_429b85, %struct.Memory** %MEMORY
  %loadMem_429b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6986 = getelementptr inbounds %struct.GPR, %struct.GPR* %6985, i32 0, i32 33
  %6987 = getelementptr inbounds %struct.Reg, %struct.Reg* %6986, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %6987 to i64*
  %6988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6989 = getelementptr inbounds %struct.GPR, %struct.GPR* %6988, i32 0, i32 7
  %6990 = getelementptr inbounds %struct.Reg, %struct.Reg* %6989, i32 0, i32 0
  %EDX.i412 = bitcast %union.anon* %6990 to i32*
  %6991 = load i32, i32* %EDX.i412
  %6992 = zext i32 %6991 to i64
  %6993 = load i64, i64* %PC.i411
  %6994 = add i64 %6993, 3
  store i64 %6994, i64* %PC.i411
  %6995 = sub i32 %6991, 95
  %6996 = icmp ult i32 %6991, 95
  %6997 = zext i1 %6996 to i8
  %6998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6997, i8* %6998, align 1
  %6999 = and i32 %6995, 255
  %7000 = call i32 @llvm.ctpop.i32(i32 %6999)
  %7001 = trunc i32 %7000 to i8
  %7002 = and i8 %7001, 1
  %7003 = xor i8 %7002, 1
  %7004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7003, i8* %7004, align 1
  %7005 = xor i64 95, %6992
  %7006 = trunc i64 %7005 to i32
  %7007 = xor i32 %7006, %6995
  %7008 = lshr i32 %7007, 4
  %7009 = trunc i32 %7008 to i8
  %7010 = and i8 %7009, 1
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7010, i8* %7011, align 1
  %7012 = icmp eq i32 %6995, 0
  %7013 = zext i1 %7012 to i8
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7013, i8* %7014, align 1
  %7015 = lshr i32 %6995, 31
  %7016 = trunc i32 %7015 to i8
  %7017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7016, i8* %7017, align 1
  %7018 = lshr i32 %6991, 31
  %7019 = xor i32 %7015, %7018
  %7020 = add i32 %7019, %7018
  %7021 = icmp eq i32 %7020, 2
  %7022 = zext i1 %7021 to i8
  %7023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7022, i8* %7023, align 1
  store %struct.Memory* %loadMem_429b89, %struct.Memory** %MEMORY
  %loadMem_429b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7025 = getelementptr inbounds %struct.GPR, %struct.GPR* %7024, i32 0, i32 33
  %7026 = getelementptr inbounds %struct.Reg, %struct.Reg* %7025, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %7026 to i64*
  %7027 = load i64, i64* %PC.i410
  %7028 = add i64 %7027, 158
  %7029 = load i64, i64* %PC.i410
  %7030 = add i64 %7029, 6
  %7031 = load i64, i64* %PC.i410
  %7032 = add i64 %7031, 6
  store i64 %7032, i64* %PC.i410
  %7033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7034 = load i8, i8* %7033, align 1
  store i8 %7034, i8* %BRANCH_TAKEN, align 1
  %7035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7036 = icmp ne i8 %7034, 0
  %7037 = select i1 %7036, i64 %7028, i64 %7030
  store i64 %7037, i64* %7035, align 8
  store %struct.Memory* %loadMem_429b8c, %struct.Memory** %MEMORY
  %loadBr_429b8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429b8c = icmp eq i8 %loadBr_429b8c, 1
  br i1 %cmpBr_429b8c, label %block_.L_429c2a, label %block_429b92

block_429b92:                                     ; preds = %block_429b75
  %loadMem_429b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7039 = getelementptr inbounds %struct.GPR, %struct.GPR* %7038, i32 0, i32 33
  %7040 = getelementptr inbounds %struct.Reg, %struct.Reg* %7039, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %7040 to i64*
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7042 = getelementptr inbounds %struct.GPR, %struct.GPR* %7041, i32 0, i32 1
  %7043 = getelementptr inbounds %struct.Reg, %struct.Reg* %7042, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %7043 to i64*
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 15
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %7046 to i64*
  %7047 = load i64, i64* %RBP.i409
  %7048 = sub i64 %7047, 8
  %7049 = load i64, i64* %PC.i407
  %7050 = add i64 %7049, 4
  store i64 %7050, i64* %PC.i407
  %7051 = inttoptr i64 %7048 to i64*
  %7052 = load i64, i64* %7051
  store i64 %7052, i64* %RAX.i408, align 8
  store %struct.Memory* %loadMem_429b92, %struct.Memory** %MEMORY
  %loadMem_429b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7054 = getelementptr inbounds %struct.GPR, %struct.GPR* %7053, i32 0, i32 33
  %7055 = getelementptr inbounds %struct.Reg, %struct.Reg* %7054, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %7055 to i64*
  %7056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7057 = getelementptr inbounds %struct.GPR, %struct.GPR* %7056, i32 0, i32 5
  %7058 = getelementptr inbounds %struct.Reg, %struct.Reg* %7057, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %7058 to i64*
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7060 = getelementptr inbounds %struct.GPR, %struct.GPR* %7059, i32 0, i32 15
  %7061 = getelementptr inbounds %struct.Reg, %struct.Reg* %7060, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %7061 to i64*
  %7062 = load i64, i64* %RBP.i406
  %7063 = sub i64 %7062, 44
  %7064 = load i64, i64* %PC.i404
  %7065 = add i64 %7064, 4
  store i64 %7065, i64* %PC.i404
  %7066 = inttoptr i64 %7063 to i32*
  %7067 = load i32, i32* %7066
  %7068 = sext i32 %7067 to i64
  store i64 %7068, i64* %RCX.i405, align 8
  store %struct.Memory* %loadMem_429b96, %struct.Memory** %MEMORY
  %loadMem_429b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7070 = getelementptr inbounds %struct.GPR, %struct.GPR* %7069, i32 0, i32 33
  %7071 = getelementptr inbounds %struct.Reg, %struct.Reg* %7070, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %7071 to i64*
  %7072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7073 = getelementptr inbounds %struct.GPR, %struct.GPR* %7072, i32 0, i32 1
  %7074 = getelementptr inbounds %struct.Reg, %struct.Reg* %7073, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %7074 to i64*
  %7075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7076 = getelementptr inbounds %struct.GPR, %struct.GPR* %7075, i32 0, i32 5
  %7077 = getelementptr inbounds %struct.Reg, %struct.Reg* %7076, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %7077 to i64*
  %7078 = load i64, i64* %RAX.i402
  %7079 = load i64, i64* %RCX.i403
  %7080 = mul i64 %7079, 8
  %7081 = add i64 %7080, %7078
  %7082 = load i64, i64* %PC.i401
  %7083 = add i64 %7082, 4
  store i64 %7083, i64* %PC.i401
  %7084 = inttoptr i64 %7081 to i64*
  %7085 = load i64, i64* %7084
  store i64 %7085, i64* %RAX.i402, align 8
  store %struct.Memory* %loadMem_429b9a, %struct.Memory** %MEMORY
  %loadMem_429b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7087 = getelementptr inbounds %struct.GPR, %struct.GPR* %7086, i32 0, i32 33
  %7088 = getelementptr inbounds %struct.Reg, %struct.Reg* %7087, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %7088 to i64*
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7090 = getelementptr inbounds %struct.GPR, %struct.GPR* %7089, i32 0, i32 5
  %7091 = getelementptr inbounds %struct.Reg, %struct.Reg* %7090, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %7091 to i64*
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7093 = getelementptr inbounds %struct.GPR, %struct.GPR* %7092, i32 0, i32 15
  %7094 = getelementptr inbounds %struct.Reg, %struct.Reg* %7093, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %7094 to i64*
  %7095 = load i64, i64* %RBP.i400
  %7096 = sub i64 %7095, 56
  %7097 = load i64, i64* %PC.i398
  %7098 = add i64 %7097, 4
  store i64 %7098, i64* %PC.i398
  %7099 = inttoptr i64 %7096 to i32*
  %7100 = load i32, i32* %7099
  %7101 = sext i32 %7100 to i64
  store i64 %7101, i64* %RCX.i399, align 8
  store %struct.Memory* %loadMem_429b9e, %struct.Memory** %MEMORY
  %loadMem_429ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7103 = getelementptr inbounds %struct.GPR, %struct.GPR* %7102, i32 0, i32 33
  %7104 = getelementptr inbounds %struct.Reg, %struct.Reg* %7103, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %7104 to i64*
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7106 = getelementptr inbounds %struct.GPR, %struct.GPR* %7105, i32 0, i32 1
  %7107 = getelementptr inbounds %struct.Reg, %struct.Reg* %7106, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %7107 to i64*
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7109 = getelementptr inbounds %struct.GPR, %struct.GPR* %7108, i32 0, i32 5
  %7110 = getelementptr inbounds %struct.Reg, %struct.Reg* %7109, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %7110 to i64*
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7112 = getelementptr inbounds %struct.GPR, %struct.GPR* %7111, i32 0, i32 7
  %7113 = getelementptr inbounds %struct.Reg, %struct.Reg* %7112, i32 0, i32 0
  %RDX.i397 = bitcast %union.anon* %7113 to i64*
  %7114 = load i64, i64* %RAX.i395
  %7115 = load i64, i64* %RCX.i396
  %7116 = add i64 %7115, %7114
  %7117 = load i64, i64* %PC.i394
  %7118 = add i64 %7117, 4
  store i64 %7118, i64* %PC.i394
  %7119 = inttoptr i64 %7116 to i8*
  %7120 = load i8, i8* %7119
  %7121 = sext i8 %7120 to i64
  %7122 = and i64 %7121, 4294967295
  store i64 %7122, i64* %RDX.i397, align 8
  store %struct.Memory* %loadMem_429ba2, %struct.Memory** %MEMORY
  %loadMem_429ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7124 = getelementptr inbounds %struct.GPR, %struct.GPR* %7123, i32 0, i32 33
  %7125 = getelementptr inbounds %struct.Reg, %struct.Reg* %7124, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %7125 to i64*
  %7126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7127 = getelementptr inbounds %struct.GPR, %struct.GPR* %7126, i32 0, i32 7
  %7128 = getelementptr inbounds %struct.Reg, %struct.Reg* %7127, i32 0, i32 0
  %EDX.i393 = bitcast %union.anon* %7128 to i32*
  %7129 = load i32, i32* %EDX.i393
  %7130 = zext i32 %7129 to i64
  %7131 = load i64, i64* %PC.i392
  %7132 = add i64 %7131, 3
  store i64 %7132, i64* %PC.i392
  %7133 = sub i32 %7129, 45
  %7134 = icmp ult i32 %7129, 45
  %7135 = zext i1 %7134 to i8
  %7136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7135, i8* %7136, align 1
  %7137 = and i32 %7133, 255
  %7138 = call i32 @llvm.ctpop.i32(i32 %7137)
  %7139 = trunc i32 %7138 to i8
  %7140 = and i8 %7139, 1
  %7141 = xor i8 %7140, 1
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7141, i8* %7142, align 1
  %7143 = xor i64 45, %7130
  %7144 = trunc i64 %7143 to i32
  %7145 = xor i32 %7144, %7133
  %7146 = lshr i32 %7145, 4
  %7147 = trunc i32 %7146 to i8
  %7148 = and i8 %7147, 1
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7148, i8* %7149, align 1
  %7150 = icmp eq i32 %7133, 0
  %7151 = zext i1 %7150 to i8
  %7152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7151, i8* %7152, align 1
  %7153 = lshr i32 %7133, 31
  %7154 = trunc i32 %7153 to i8
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7154, i8* %7155, align 1
  %7156 = lshr i32 %7129, 31
  %7157 = xor i32 %7153, %7156
  %7158 = add i32 %7157, %7156
  %7159 = icmp eq i32 %7158, 2
  %7160 = zext i1 %7159 to i8
  %7161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7160, i8* %7161, align 1
  store %struct.Memory* %loadMem_429ba6, %struct.Memory** %MEMORY
  %loadMem_429ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7163 = getelementptr inbounds %struct.GPR, %struct.GPR* %7162, i32 0, i32 33
  %7164 = getelementptr inbounds %struct.Reg, %struct.Reg* %7163, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %7164 to i64*
  %7165 = load i64, i64* %PC.i391
  %7166 = add i64 %7165, 129
  %7167 = load i64, i64* %PC.i391
  %7168 = add i64 %7167, 6
  %7169 = load i64, i64* %PC.i391
  %7170 = add i64 %7169, 6
  store i64 %7170, i64* %PC.i391
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7172 = load i8, i8* %7171, align 1
  store i8 %7172, i8* %BRANCH_TAKEN, align 1
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7174 = icmp ne i8 %7172, 0
  %7175 = select i1 %7174, i64 %7166, i64 %7168
  store i64 %7175, i64* %7173, align 8
  store %struct.Memory* %loadMem_429ba9, %struct.Memory** %MEMORY
  %loadBr_429ba9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429ba9 = icmp eq i8 %loadBr_429ba9, 1
  br i1 %cmpBr_429ba9, label %block_.L_429c2a, label %block_429baf

block_429baf:                                     ; preds = %block_429b92
  %loadMem_429baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7177 = getelementptr inbounds %struct.GPR, %struct.GPR* %7176, i32 0, i32 33
  %7178 = getelementptr inbounds %struct.Reg, %struct.Reg* %7177, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %7178 to i64*
  %7179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7180 = getelementptr inbounds %struct.GPR, %struct.GPR* %7179, i32 0, i32 1
  %7181 = getelementptr inbounds %struct.Reg, %struct.Reg* %7180, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %7181 to i64*
  %7182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7183 = getelementptr inbounds %struct.GPR, %struct.GPR* %7182, i32 0, i32 15
  %7184 = getelementptr inbounds %struct.Reg, %struct.Reg* %7183, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %7184 to i64*
  %7185 = load i64, i64* %RBP.i390
  %7186 = sub i64 %7185, 8
  %7187 = load i64, i64* %PC.i388
  %7188 = add i64 %7187, 4
  store i64 %7188, i64* %PC.i388
  %7189 = inttoptr i64 %7186 to i64*
  %7190 = load i64, i64* %7189
  store i64 %7190, i64* %RAX.i389, align 8
  store %struct.Memory* %loadMem_429baf, %struct.Memory** %MEMORY
  %loadMem_429bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7192 = getelementptr inbounds %struct.GPR, %struct.GPR* %7191, i32 0, i32 33
  %7193 = getelementptr inbounds %struct.Reg, %struct.Reg* %7192, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %7193 to i64*
  %7194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7195 = getelementptr inbounds %struct.GPR, %struct.GPR* %7194, i32 0, i32 5
  %7196 = getelementptr inbounds %struct.Reg, %struct.Reg* %7195, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %7196 to i64*
  %7197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7198 = getelementptr inbounds %struct.GPR, %struct.GPR* %7197, i32 0, i32 15
  %7199 = getelementptr inbounds %struct.Reg, %struct.Reg* %7198, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %7199 to i64*
  %7200 = load i64, i64* %RBP.i387
  %7201 = sub i64 %7200, 44
  %7202 = load i64, i64* %PC.i385
  %7203 = add i64 %7202, 4
  store i64 %7203, i64* %PC.i385
  %7204 = inttoptr i64 %7201 to i32*
  %7205 = load i32, i32* %7204
  %7206 = sext i32 %7205 to i64
  store i64 %7206, i64* %RCX.i386, align 8
  store %struct.Memory* %loadMem_429bb3, %struct.Memory** %MEMORY
  %loadMem_429bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7208 = getelementptr inbounds %struct.GPR, %struct.GPR* %7207, i32 0, i32 33
  %7209 = getelementptr inbounds %struct.Reg, %struct.Reg* %7208, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %7209 to i64*
  %7210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7211 = getelementptr inbounds %struct.GPR, %struct.GPR* %7210, i32 0, i32 1
  %7212 = getelementptr inbounds %struct.Reg, %struct.Reg* %7211, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %7212 to i64*
  %7213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7214 = getelementptr inbounds %struct.GPR, %struct.GPR* %7213, i32 0, i32 5
  %7215 = getelementptr inbounds %struct.Reg, %struct.Reg* %7214, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %7215 to i64*
  %7216 = load i64, i64* %RAX.i383
  %7217 = load i64, i64* %RCX.i384
  %7218 = mul i64 %7217, 8
  %7219 = add i64 %7218, %7216
  %7220 = load i64, i64* %PC.i382
  %7221 = add i64 %7220, 4
  store i64 %7221, i64* %PC.i382
  %7222 = inttoptr i64 %7219 to i64*
  %7223 = load i64, i64* %7222
  store i64 %7223, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_429bb7, %struct.Memory** %MEMORY
  %loadMem_429bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7225 = getelementptr inbounds %struct.GPR, %struct.GPR* %7224, i32 0, i32 33
  %7226 = getelementptr inbounds %struct.Reg, %struct.Reg* %7225, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %7226 to i64*
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7228 = getelementptr inbounds %struct.GPR, %struct.GPR* %7227, i32 0, i32 5
  %7229 = getelementptr inbounds %struct.Reg, %struct.Reg* %7228, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %7229 to i64*
  %7230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7231 = getelementptr inbounds %struct.GPR, %struct.GPR* %7230, i32 0, i32 15
  %7232 = getelementptr inbounds %struct.Reg, %struct.Reg* %7231, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %7232 to i64*
  %7233 = load i64, i64* %RBP.i381
  %7234 = sub i64 %7233, 56
  %7235 = load i64, i64* %PC.i379
  %7236 = add i64 %7235, 4
  store i64 %7236, i64* %PC.i379
  %7237 = inttoptr i64 %7234 to i32*
  %7238 = load i32, i32* %7237
  %7239 = sext i32 %7238 to i64
  store i64 %7239, i64* %RCX.i380, align 8
  store %struct.Memory* %loadMem_429bbb, %struct.Memory** %MEMORY
  %loadMem_429bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7241 = getelementptr inbounds %struct.GPR, %struct.GPR* %7240, i32 0, i32 33
  %7242 = getelementptr inbounds %struct.Reg, %struct.Reg* %7241, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %7242 to i64*
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7244 = getelementptr inbounds %struct.GPR, %struct.GPR* %7243, i32 0, i32 1
  %7245 = getelementptr inbounds %struct.Reg, %struct.Reg* %7244, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %7245 to i64*
  %7246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7247 = getelementptr inbounds %struct.GPR, %struct.GPR* %7246, i32 0, i32 5
  %7248 = getelementptr inbounds %struct.Reg, %struct.Reg* %7247, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %7248 to i64*
  %7249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7250 = getelementptr inbounds %struct.GPR, %struct.GPR* %7249, i32 0, i32 7
  %7251 = getelementptr inbounds %struct.Reg, %struct.Reg* %7250, i32 0, i32 0
  %RDX.i378 = bitcast %union.anon* %7251 to i64*
  %7252 = load i64, i64* %RAX.i376
  %7253 = load i64, i64* %RCX.i377
  %7254 = add i64 %7253, %7252
  %7255 = load i64, i64* %PC.i375
  %7256 = add i64 %7255, 4
  store i64 %7256, i64* %PC.i375
  %7257 = inttoptr i64 %7254 to i8*
  %7258 = load i8, i8* %7257
  %7259 = sext i8 %7258 to i64
  %7260 = and i64 %7259, 4294967295
  store i64 %7260, i64* %RDX.i378, align 8
  store %struct.Memory* %loadMem_429bbf, %struct.Memory** %MEMORY
  %loadMem_429bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7262 = getelementptr inbounds %struct.GPR, %struct.GPR* %7261, i32 0, i32 33
  %7263 = getelementptr inbounds %struct.Reg, %struct.Reg* %7262, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %7263 to i64*
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7265 = getelementptr inbounds %struct.GPR, %struct.GPR* %7264, i32 0, i32 7
  %7266 = getelementptr inbounds %struct.Reg, %struct.Reg* %7265, i32 0, i32 0
  %EDX.i374 = bitcast %union.anon* %7266 to i32*
  %7267 = load i32, i32* %EDX.i374
  %7268 = zext i32 %7267 to i64
  %7269 = load i64, i64* %PC.i373
  %7270 = add i64 %7269, 3
  store i64 %7270, i64* %PC.i373
  %7271 = sub i32 %7267, 126
  %7272 = icmp ult i32 %7267, 126
  %7273 = zext i1 %7272 to i8
  %7274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7273, i8* %7274, align 1
  %7275 = and i32 %7271, 255
  %7276 = call i32 @llvm.ctpop.i32(i32 %7275)
  %7277 = trunc i32 %7276 to i8
  %7278 = and i8 %7277, 1
  %7279 = xor i8 %7278, 1
  %7280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7279, i8* %7280, align 1
  %7281 = xor i64 126, %7268
  %7282 = trunc i64 %7281 to i32
  %7283 = xor i32 %7282, %7271
  %7284 = lshr i32 %7283, 4
  %7285 = trunc i32 %7284 to i8
  %7286 = and i8 %7285, 1
  %7287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7286, i8* %7287, align 1
  %7288 = icmp eq i32 %7271, 0
  %7289 = zext i1 %7288 to i8
  %7290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7289, i8* %7290, align 1
  %7291 = lshr i32 %7271, 31
  %7292 = trunc i32 %7291 to i8
  %7293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7292, i8* %7293, align 1
  %7294 = lshr i32 %7267, 31
  %7295 = xor i32 %7291, %7294
  %7296 = add i32 %7295, %7294
  %7297 = icmp eq i32 %7296, 2
  %7298 = zext i1 %7297 to i8
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7298, i8* %7299, align 1
  store %struct.Memory* %loadMem_429bc3, %struct.Memory** %MEMORY
  %loadMem_429bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7301 = getelementptr inbounds %struct.GPR, %struct.GPR* %7300, i32 0, i32 33
  %7302 = getelementptr inbounds %struct.Reg, %struct.Reg* %7301, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %7302 to i64*
  %7303 = load i64, i64* %PC.i372
  %7304 = add i64 %7303, 100
  %7305 = load i64, i64* %PC.i372
  %7306 = add i64 %7305, 6
  %7307 = load i64, i64* %PC.i372
  %7308 = add i64 %7307, 6
  store i64 %7308, i64* %PC.i372
  %7309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7310 = load i8, i8* %7309, align 1
  store i8 %7310, i8* %BRANCH_TAKEN, align 1
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7312 = icmp ne i8 %7310, 0
  %7313 = select i1 %7312, i64 %7304, i64 %7306
  store i64 %7313, i64* %7311, align 8
  store %struct.Memory* %loadMem_429bc6, %struct.Memory** %MEMORY
  %loadBr_429bc6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429bc6 = icmp eq i8 %loadBr_429bc6, 1
  br i1 %cmpBr_429bc6, label %block_.L_429c2a, label %block_429bcc

block_429bcc:                                     ; preds = %block_429baf
  %loadMem_429bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7315 = getelementptr inbounds %struct.GPR, %struct.GPR* %7314, i32 0, i32 33
  %7316 = getelementptr inbounds %struct.Reg, %struct.Reg* %7315, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %7316 to i64*
  %7317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7318 = getelementptr inbounds %struct.GPR, %struct.GPR* %7317, i32 0, i32 1
  %7319 = getelementptr inbounds %struct.Reg, %struct.Reg* %7318, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %7319 to i64*
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7321 = getelementptr inbounds %struct.GPR, %struct.GPR* %7320, i32 0, i32 15
  %7322 = getelementptr inbounds %struct.Reg, %struct.Reg* %7321, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %7322 to i64*
  %7323 = load i64, i64* %RBP.i371
  %7324 = sub i64 %7323, 40
  %7325 = load i64, i64* %PC.i369
  %7326 = add i64 %7325, 4
  store i64 %7326, i64* %PC.i369
  %7327 = inttoptr i64 %7324 to i64*
  %7328 = load i64, i64* %7327
  store i64 %7328, i64* %RAX.i370, align 8
  store %struct.Memory* %loadMem_429bcc, %struct.Memory** %MEMORY
  %loadMem_429bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7330 = getelementptr inbounds %struct.GPR, %struct.GPR* %7329, i32 0, i32 33
  %7331 = getelementptr inbounds %struct.Reg, %struct.Reg* %7330, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %7331 to i64*
  %7332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7333 = getelementptr inbounds %struct.GPR, %struct.GPR* %7332, i32 0, i32 5
  %7334 = getelementptr inbounds %struct.Reg, %struct.Reg* %7333, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %7334 to i64*
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7336 = getelementptr inbounds %struct.GPR, %struct.GPR* %7335, i32 0, i32 15
  %7337 = getelementptr inbounds %struct.Reg, %struct.Reg* %7336, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %7337 to i64*
  %7338 = load i64, i64* %RBP.i368
  %7339 = sub i64 %7338, 44
  %7340 = load i64, i64* %PC.i366
  %7341 = add i64 %7340, 4
  store i64 %7341, i64* %PC.i366
  %7342 = inttoptr i64 %7339 to i32*
  %7343 = load i32, i32* %7342
  %7344 = sext i32 %7343 to i64
  store i64 %7344, i64* %RCX.i367, align 8
  store %struct.Memory* %loadMem_429bd0, %struct.Memory** %MEMORY
  %loadMem_429bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7346 = getelementptr inbounds %struct.GPR, %struct.GPR* %7345, i32 0, i32 33
  %7347 = getelementptr inbounds %struct.Reg, %struct.Reg* %7346, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %7347 to i64*
  %7348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7349 = getelementptr inbounds %struct.GPR, %struct.GPR* %7348, i32 0, i32 1
  %7350 = getelementptr inbounds %struct.Reg, %struct.Reg* %7349, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %7350 to i64*
  %7351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7352 = getelementptr inbounds %struct.GPR, %struct.GPR* %7351, i32 0, i32 5
  %7353 = getelementptr inbounds %struct.Reg, %struct.Reg* %7352, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %7353 to i64*
  %7354 = load i64, i64* %RAX.i364
  %7355 = load i64, i64* %RCX.i365
  %7356 = mul i64 %7355, 8
  %7357 = add i64 %7356, %7354
  %7358 = load i64, i64* %PC.i363
  %7359 = add i64 %7358, 4
  store i64 %7359, i64* %PC.i363
  %7360 = inttoptr i64 %7357 to i64*
  %7361 = load i64, i64* %7360
  store i64 %7361, i64* %RAX.i364, align 8
  store %struct.Memory* %loadMem_429bd4, %struct.Memory** %MEMORY
  %loadMem_429bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7363 = getelementptr inbounds %struct.GPR, %struct.GPR* %7362, i32 0, i32 33
  %7364 = getelementptr inbounds %struct.Reg, %struct.Reg* %7363, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %7364 to i64*
  %7365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7366 = getelementptr inbounds %struct.GPR, %struct.GPR* %7365, i32 0, i32 1
  %7367 = getelementptr inbounds %struct.Reg, %struct.Reg* %7366, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %7367 to i64*
  %7368 = load i64, i64* %RAX.i362
  %7369 = add i64 %7368, 8
  %7370 = load i64, i64* %PC.i361
  %7371 = add i64 %7370, 4
  store i64 %7371, i64* %PC.i361
  %7372 = inttoptr i64 %7369 to i64*
  %7373 = load i64, i64* %7372
  store i64 %7373, i64* %RAX.i362, align 8
  store %struct.Memory* %loadMem_429bd8, %struct.Memory** %MEMORY
  %loadMem_429bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7375 = getelementptr inbounds %struct.GPR, %struct.GPR* %7374, i32 0, i32 33
  %7376 = getelementptr inbounds %struct.Reg, %struct.Reg* %7375, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %7376 to i64*
  %7377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7378 = getelementptr inbounds %struct.GPR, %struct.GPR* %7377, i32 0, i32 5
  %7379 = getelementptr inbounds %struct.Reg, %struct.Reg* %7378, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %7379 to i64*
  %7380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7381 = getelementptr inbounds %struct.GPR, %struct.GPR* %7380, i32 0, i32 15
  %7382 = getelementptr inbounds %struct.Reg, %struct.Reg* %7381, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %7382 to i64*
  %7383 = load i64, i64* %RBP.i360
  %7384 = sub i64 %7383, 60
  %7385 = load i64, i64* %PC.i358
  %7386 = add i64 %7385, 4
  store i64 %7386, i64* %PC.i358
  %7387 = inttoptr i64 %7384 to i32*
  %7388 = load i32, i32* %7387
  %7389 = sext i32 %7388 to i64
  store i64 %7389, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_429bdc, %struct.Memory** %MEMORY
  %loadMem_429be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7391 = getelementptr inbounds %struct.GPR, %struct.GPR* %7390, i32 0, i32 33
  %7392 = getelementptr inbounds %struct.Reg, %struct.Reg* %7391, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %7392 to i64*
  %7393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7394 = getelementptr inbounds %struct.GPR, %struct.GPR* %7393, i32 0, i32 1
  %7395 = getelementptr inbounds %struct.Reg, %struct.Reg* %7394, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %7395 to i64*
  %7396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7397 = getelementptr inbounds %struct.GPR, %struct.GPR* %7396, i32 0, i32 5
  %7398 = getelementptr inbounds %struct.Reg, %struct.Reg* %7397, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %7398 to i64*
  %7399 = load i64, i64* %RAX.i356
  %7400 = load i64, i64* %RCX.i357
  %7401 = add i64 %7400, %7399
  %7402 = load i64, i64* %PC.i355
  %7403 = add i64 %7402, 4
  store i64 %7403, i64* %PC.i355
  %7404 = inttoptr i64 %7401 to i8*
  store i8 3, i8* %7404
  store %struct.Memory* %loadMem_429be0, %struct.Memory** %MEMORY
  %loadMem_429be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7406 = getelementptr inbounds %struct.GPR, %struct.GPR* %7405, i32 0, i32 33
  %7407 = getelementptr inbounds %struct.Reg, %struct.Reg* %7406, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %7407 to i64*
  %7408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7409 = getelementptr inbounds %struct.GPR, %struct.GPR* %7408, i32 0, i32 7
  %7410 = getelementptr inbounds %struct.Reg, %struct.Reg* %7409, i32 0, i32 0
  %RDX.i353 = bitcast %union.anon* %7410 to i64*
  %7411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7412 = getelementptr inbounds %struct.GPR, %struct.GPR* %7411, i32 0, i32 15
  %7413 = getelementptr inbounds %struct.Reg, %struct.Reg* %7412, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %7413 to i64*
  %7414 = load i64, i64* %RBP.i354
  %7415 = sub i64 %7414, 52
  %7416 = load i64, i64* %PC.i352
  %7417 = add i64 %7416, 3
  store i64 %7417, i64* %PC.i352
  %7418 = inttoptr i64 %7415 to i32*
  %7419 = load i32, i32* %7418
  %7420 = zext i32 %7419 to i64
  store i64 %7420, i64* %RDX.i353, align 8
  store %struct.Memory* %loadMem_429be4, %struct.Memory** %MEMORY
  %loadMem_429be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7422 = getelementptr inbounds %struct.GPR, %struct.GPR* %7421, i32 0, i32 33
  %7423 = getelementptr inbounds %struct.Reg, %struct.Reg* %7422, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %7423 to i64*
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7425 = getelementptr inbounds %struct.GPR, %struct.GPR* %7424, i32 0, i32 1
  %7426 = getelementptr inbounds %struct.Reg, %struct.Reg* %7425, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %7426 to i64*
  %7427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7428 = getelementptr inbounds %struct.GPR, %struct.GPR* %7427, i32 0, i32 15
  %7429 = getelementptr inbounds %struct.Reg, %struct.Reg* %7428, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %7429 to i64*
  %7430 = load i64, i64* %RBP.i351
  %7431 = sub i64 %7430, 40
  %7432 = load i64, i64* %PC.i349
  %7433 = add i64 %7432, 4
  store i64 %7433, i64* %PC.i349
  %7434 = inttoptr i64 %7431 to i64*
  %7435 = load i64, i64* %7434
  store i64 %7435, i64* %RAX.i350, align 8
  store %struct.Memory* %loadMem_429be7, %struct.Memory** %MEMORY
  %loadMem_429beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7437 = getelementptr inbounds %struct.GPR, %struct.GPR* %7436, i32 0, i32 33
  %7438 = getelementptr inbounds %struct.Reg, %struct.Reg* %7437, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %7438 to i64*
  %7439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7440 = getelementptr inbounds %struct.GPR, %struct.GPR* %7439, i32 0, i32 5
  %7441 = getelementptr inbounds %struct.Reg, %struct.Reg* %7440, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %7441 to i64*
  %7442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7443 = getelementptr inbounds %struct.GPR, %struct.GPR* %7442, i32 0, i32 15
  %7444 = getelementptr inbounds %struct.Reg, %struct.Reg* %7443, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %7444 to i64*
  %7445 = load i64, i64* %RBP.i348
  %7446 = sub i64 %7445, 44
  %7447 = load i64, i64* %PC.i346
  %7448 = add i64 %7447, 4
  store i64 %7448, i64* %PC.i346
  %7449 = inttoptr i64 %7446 to i32*
  %7450 = load i32, i32* %7449
  %7451 = sext i32 %7450 to i64
  store i64 %7451, i64* %RCX.i347, align 8
  store %struct.Memory* %loadMem_429beb, %struct.Memory** %MEMORY
  %loadMem_429bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %7452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7453 = getelementptr inbounds %struct.GPR, %struct.GPR* %7452, i32 0, i32 33
  %7454 = getelementptr inbounds %struct.Reg, %struct.Reg* %7453, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %7454 to i64*
  %7455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7456 = getelementptr inbounds %struct.GPR, %struct.GPR* %7455, i32 0, i32 1
  %7457 = getelementptr inbounds %struct.Reg, %struct.Reg* %7456, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %7457 to i64*
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7459 = getelementptr inbounds %struct.GPR, %struct.GPR* %7458, i32 0, i32 5
  %7460 = getelementptr inbounds %struct.Reg, %struct.Reg* %7459, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %7460 to i64*
  %7461 = load i64, i64* %RAX.i344
  %7462 = load i64, i64* %RCX.i345
  %7463 = mul i64 %7462, 8
  %7464 = add i64 %7463, %7461
  %7465 = load i64, i64* %PC.i343
  %7466 = add i64 %7465, 4
  store i64 %7466, i64* %PC.i343
  %7467 = inttoptr i64 %7464 to i64*
  %7468 = load i64, i64* %7467
  store i64 %7468, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_429bef, %struct.Memory** %MEMORY
  %loadMem_429bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7470 = getelementptr inbounds %struct.GPR, %struct.GPR* %7469, i32 0, i32 33
  %7471 = getelementptr inbounds %struct.Reg, %struct.Reg* %7470, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %7471 to i64*
  %7472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7473 = getelementptr inbounds %struct.GPR, %struct.GPR* %7472, i32 0, i32 1
  %7474 = getelementptr inbounds %struct.Reg, %struct.Reg* %7473, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %7474 to i64*
  %7475 = load i64, i64* %RAX.i342
  %7476 = add i64 %7475, 16
  %7477 = load i64, i64* %PC.i341
  %7478 = add i64 %7477, 4
  store i64 %7478, i64* %PC.i341
  %7479 = inttoptr i64 %7476 to i64*
  %7480 = load i64, i64* %7479
  store i64 %7480, i64* %RAX.i342, align 8
  store %struct.Memory* %loadMem_429bf3, %struct.Memory** %MEMORY
  %loadMem_429bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7482 = getelementptr inbounds %struct.GPR, %struct.GPR* %7481, i32 0, i32 33
  %7483 = getelementptr inbounds %struct.Reg, %struct.Reg* %7482, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %7483 to i64*
  %7484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7485 = getelementptr inbounds %struct.GPR, %struct.GPR* %7484, i32 0, i32 5
  %7486 = getelementptr inbounds %struct.Reg, %struct.Reg* %7485, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %7486 to i64*
  %7487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7488 = getelementptr inbounds %struct.GPR, %struct.GPR* %7487, i32 0, i32 15
  %7489 = getelementptr inbounds %struct.Reg, %struct.Reg* %7488, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %7489 to i64*
  %7490 = load i64, i64* %RBP.i340
  %7491 = sub i64 %7490, 60
  %7492 = load i64, i64* %PC.i338
  %7493 = add i64 %7492, 4
  store i64 %7493, i64* %PC.i338
  %7494 = inttoptr i64 %7491 to i32*
  %7495 = load i32, i32* %7494
  %7496 = sext i32 %7495 to i64
  store i64 %7496, i64* %RCX.i339, align 8
  store %struct.Memory* %loadMem_429bf7, %struct.Memory** %MEMORY
  %loadMem_429bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7498 = getelementptr inbounds %struct.GPR, %struct.GPR* %7497, i32 0, i32 33
  %7499 = getelementptr inbounds %struct.Reg, %struct.Reg* %7498, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %7499 to i64*
  %7500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7501 = getelementptr inbounds %struct.GPR, %struct.GPR* %7500, i32 0, i32 7
  %7502 = getelementptr inbounds %struct.Reg, %struct.Reg* %7501, i32 0, i32 0
  %EDX.i335 = bitcast %union.anon* %7502 to i32*
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7504 = getelementptr inbounds %struct.GPR, %struct.GPR* %7503, i32 0, i32 1
  %7505 = getelementptr inbounds %struct.Reg, %struct.Reg* %7504, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %7505 to i64*
  %7506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7507 = getelementptr inbounds %struct.GPR, %struct.GPR* %7506, i32 0, i32 5
  %7508 = getelementptr inbounds %struct.Reg, %struct.Reg* %7507, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %7508 to i64*
  %7509 = load i64, i64* %RAX.i336
  %7510 = load i64, i64* %RCX.i337
  %7511 = mul i64 %7510, 4
  %7512 = add i64 %7511, %7509
  %7513 = load i32, i32* %EDX.i335
  %7514 = zext i32 %7513 to i64
  %7515 = load i64, i64* %PC.i334
  %7516 = add i64 %7515, 3
  store i64 %7516, i64* %PC.i334
  %7517 = inttoptr i64 %7512 to i32*
  store i32 %7513, i32* %7517
  store %struct.Memory* %loadMem_429bfb, %struct.Memory** %MEMORY
  %loadMem_429bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7519 = getelementptr inbounds %struct.GPR, %struct.GPR* %7518, i32 0, i32 33
  %7520 = getelementptr inbounds %struct.Reg, %struct.Reg* %7519, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %7520 to i64*
  %7521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7522 = getelementptr inbounds %struct.GPR, %struct.GPR* %7521, i32 0, i32 7
  %7523 = getelementptr inbounds %struct.Reg, %struct.Reg* %7522, i32 0, i32 0
  %RDX.i332 = bitcast %union.anon* %7523 to i64*
  %7524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7525 = getelementptr inbounds %struct.GPR, %struct.GPR* %7524, i32 0, i32 15
  %7526 = getelementptr inbounds %struct.Reg, %struct.Reg* %7525, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %7526 to i64*
  %7527 = load i64, i64* %RBP.i333
  %7528 = sub i64 %7527, 48
  %7529 = load i64, i64* %PC.i331
  %7530 = add i64 %7529, 3
  store i64 %7530, i64* %PC.i331
  %7531 = inttoptr i64 %7528 to i32*
  %7532 = load i32, i32* %7531
  %7533 = zext i32 %7532 to i64
  store i64 %7533, i64* %RDX.i332, align 8
  store %struct.Memory* %loadMem_429bfe, %struct.Memory** %MEMORY
  %loadMem_429c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7535 = getelementptr inbounds %struct.GPR, %struct.GPR* %7534, i32 0, i32 33
  %7536 = getelementptr inbounds %struct.Reg, %struct.Reg* %7535, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %7536 to i64*
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7538 = getelementptr inbounds %struct.GPR, %struct.GPR* %7537, i32 0, i32 1
  %7539 = getelementptr inbounds %struct.Reg, %struct.Reg* %7538, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %7539 to i64*
  %7540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7541 = getelementptr inbounds %struct.GPR, %struct.GPR* %7540, i32 0, i32 15
  %7542 = getelementptr inbounds %struct.Reg, %struct.Reg* %7541, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %7542 to i64*
  %7543 = load i64, i64* %RBP.i330
  %7544 = sub i64 %7543, 40
  %7545 = load i64, i64* %PC.i328
  %7546 = add i64 %7545, 4
  store i64 %7546, i64* %PC.i328
  %7547 = inttoptr i64 %7544 to i64*
  %7548 = load i64, i64* %7547
  store i64 %7548, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_429c01, %struct.Memory** %MEMORY
  %loadMem_429c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7550 = getelementptr inbounds %struct.GPR, %struct.GPR* %7549, i32 0, i32 33
  %7551 = getelementptr inbounds %struct.Reg, %struct.Reg* %7550, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %7551 to i64*
  %7552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7553 = getelementptr inbounds %struct.GPR, %struct.GPR* %7552, i32 0, i32 5
  %7554 = getelementptr inbounds %struct.Reg, %struct.Reg* %7553, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %7554 to i64*
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7556 = getelementptr inbounds %struct.GPR, %struct.GPR* %7555, i32 0, i32 15
  %7557 = getelementptr inbounds %struct.Reg, %struct.Reg* %7556, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %7557 to i64*
  %7558 = load i64, i64* %RBP.i327
  %7559 = sub i64 %7558, 44
  %7560 = load i64, i64* %PC.i325
  %7561 = add i64 %7560, 4
  store i64 %7561, i64* %PC.i325
  %7562 = inttoptr i64 %7559 to i32*
  %7563 = load i32, i32* %7562
  %7564 = sext i32 %7563 to i64
  store i64 %7564, i64* %RCX.i326, align 8
  store %struct.Memory* %loadMem_429c05, %struct.Memory** %MEMORY
  %loadMem_429c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7566 = getelementptr inbounds %struct.GPR, %struct.GPR* %7565, i32 0, i32 33
  %7567 = getelementptr inbounds %struct.Reg, %struct.Reg* %7566, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %7567 to i64*
  %7568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7569 = getelementptr inbounds %struct.GPR, %struct.GPR* %7568, i32 0, i32 1
  %7570 = getelementptr inbounds %struct.Reg, %struct.Reg* %7569, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %7570 to i64*
  %7571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7572 = getelementptr inbounds %struct.GPR, %struct.GPR* %7571, i32 0, i32 5
  %7573 = getelementptr inbounds %struct.Reg, %struct.Reg* %7572, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %7573 to i64*
  %7574 = load i64, i64* %RAX.i323
  %7575 = load i64, i64* %RCX.i324
  %7576 = mul i64 %7575, 8
  %7577 = add i64 %7576, %7574
  %7578 = load i64, i64* %PC.i322
  %7579 = add i64 %7578, 4
  store i64 %7579, i64* %PC.i322
  %7580 = inttoptr i64 %7577 to i64*
  %7581 = load i64, i64* %7580
  store i64 %7581, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_429c09, %struct.Memory** %MEMORY
  %loadMem_429c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7583 = getelementptr inbounds %struct.GPR, %struct.GPR* %7582, i32 0, i32 33
  %7584 = getelementptr inbounds %struct.Reg, %struct.Reg* %7583, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %7584 to i64*
  %7585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7586 = getelementptr inbounds %struct.GPR, %struct.GPR* %7585, i32 0, i32 1
  %7587 = getelementptr inbounds %struct.Reg, %struct.Reg* %7586, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %7587 to i64*
  %7588 = load i64, i64* %RAX.i321
  %7589 = add i64 %7588, 24
  %7590 = load i64, i64* %PC.i320
  %7591 = add i64 %7590, 4
  store i64 %7591, i64* %PC.i320
  %7592 = inttoptr i64 %7589 to i64*
  %7593 = load i64, i64* %7592
  store i64 %7593, i64* %RAX.i321, align 8
  store %struct.Memory* %loadMem_429c0d, %struct.Memory** %MEMORY
  %loadMem_429c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7595 = getelementptr inbounds %struct.GPR, %struct.GPR* %7594, i32 0, i32 33
  %7596 = getelementptr inbounds %struct.Reg, %struct.Reg* %7595, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %7596 to i64*
  %7597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7598 = getelementptr inbounds %struct.GPR, %struct.GPR* %7597, i32 0, i32 5
  %7599 = getelementptr inbounds %struct.Reg, %struct.Reg* %7598, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %7599 to i64*
  %7600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7601 = getelementptr inbounds %struct.GPR, %struct.GPR* %7600, i32 0, i32 15
  %7602 = getelementptr inbounds %struct.Reg, %struct.Reg* %7601, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %7602 to i64*
  %7603 = load i64, i64* %RBP.i319
  %7604 = sub i64 %7603, 60
  %7605 = load i64, i64* %PC.i317
  %7606 = add i64 %7605, 4
  store i64 %7606, i64* %PC.i317
  %7607 = inttoptr i64 %7604 to i32*
  %7608 = load i32, i32* %7607
  %7609 = sext i32 %7608 to i64
  store i64 %7609, i64* %RCX.i318, align 8
  store %struct.Memory* %loadMem_429c11, %struct.Memory** %MEMORY
  %loadMem_429c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7611 = getelementptr inbounds %struct.GPR, %struct.GPR* %7610, i32 0, i32 33
  %7612 = getelementptr inbounds %struct.Reg, %struct.Reg* %7611, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %7612 to i64*
  %7613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7614 = getelementptr inbounds %struct.GPR, %struct.GPR* %7613, i32 0, i32 7
  %7615 = getelementptr inbounds %struct.Reg, %struct.Reg* %7614, i32 0, i32 0
  %EDX.i314 = bitcast %union.anon* %7615 to i32*
  %7616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7617 = getelementptr inbounds %struct.GPR, %struct.GPR* %7616, i32 0, i32 1
  %7618 = getelementptr inbounds %struct.Reg, %struct.Reg* %7617, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %7618 to i64*
  %7619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7620 = getelementptr inbounds %struct.GPR, %struct.GPR* %7619, i32 0, i32 5
  %7621 = getelementptr inbounds %struct.Reg, %struct.Reg* %7620, i32 0, i32 0
  %RCX.i316 = bitcast %union.anon* %7621 to i64*
  %7622 = load i64, i64* %RAX.i315
  %7623 = load i64, i64* %RCX.i316
  %7624 = mul i64 %7623, 4
  %7625 = add i64 %7624, %7622
  %7626 = load i32, i32* %EDX.i314
  %7627 = zext i32 %7626 to i64
  %7628 = load i64, i64* %PC.i313
  %7629 = add i64 %7628, 3
  store i64 %7629, i64* %PC.i313
  %7630 = inttoptr i64 %7625 to i32*
  store i32 %7626, i32* %7630
  store %struct.Memory* %loadMem_429c15, %struct.Memory** %MEMORY
  %loadMem_429c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7632 = getelementptr inbounds %struct.GPR, %struct.GPR* %7631, i32 0, i32 33
  %7633 = getelementptr inbounds %struct.Reg, %struct.Reg* %7632, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %7633 to i64*
  %7634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7635 = getelementptr inbounds %struct.GPR, %struct.GPR* %7634, i32 0, i32 7
  %7636 = getelementptr inbounds %struct.Reg, %struct.Reg* %7635, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %7636 to i64*
  %7637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7638 = getelementptr inbounds %struct.GPR, %struct.GPR* %7637, i32 0, i32 15
  %7639 = getelementptr inbounds %struct.Reg, %struct.Reg* %7638, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %7639 to i64*
  %7640 = load i64, i64* %RBP.i312
  %7641 = sub i64 %7640, 48
  %7642 = load i64, i64* %PC.i310
  %7643 = add i64 %7642, 3
  store i64 %7643, i64* %PC.i310
  %7644 = inttoptr i64 %7641 to i32*
  %7645 = load i32, i32* %7644
  %7646 = zext i32 %7645 to i64
  store i64 %7646, i64* %RDX.i311, align 8
  store %struct.Memory* %loadMem_429c18, %struct.Memory** %MEMORY
  %loadMem_429c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7648 = getelementptr inbounds %struct.GPR, %struct.GPR* %7647, i32 0, i32 33
  %7649 = getelementptr inbounds %struct.Reg, %struct.Reg* %7648, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %7649 to i64*
  %7650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7651 = getelementptr inbounds %struct.GPR, %struct.GPR* %7650, i32 0, i32 7
  %7652 = getelementptr inbounds %struct.Reg, %struct.Reg* %7651, i32 0, i32 0
  %RDX.i309 = bitcast %union.anon* %7652 to i64*
  %7653 = load i64, i64* %RDX.i309
  %7654 = load i64, i64* %PC.i308
  %7655 = add i64 %7654, 3
  store i64 %7655, i64* %PC.i308
  %7656 = trunc i64 %7653 to i32
  %7657 = add i32 1, %7656
  %7658 = zext i32 %7657 to i64
  store i64 %7658, i64* %RDX.i309, align 8
  %7659 = icmp ult i32 %7657, %7656
  %7660 = icmp ult i32 %7657, 1
  %7661 = or i1 %7659, %7660
  %7662 = zext i1 %7661 to i8
  %7663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7662, i8* %7663, align 1
  %7664 = and i32 %7657, 255
  %7665 = call i32 @llvm.ctpop.i32(i32 %7664)
  %7666 = trunc i32 %7665 to i8
  %7667 = and i8 %7666, 1
  %7668 = xor i8 %7667, 1
  %7669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7668, i8* %7669, align 1
  %7670 = xor i64 1, %7653
  %7671 = trunc i64 %7670 to i32
  %7672 = xor i32 %7671, %7657
  %7673 = lshr i32 %7672, 4
  %7674 = trunc i32 %7673 to i8
  %7675 = and i8 %7674, 1
  %7676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7675, i8* %7676, align 1
  %7677 = icmp eq i32 %7657, 0
  %7678 = zext i1 %7677 to i8
  %7679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7678, i8* %7679, align 1
  %7680 = lshr i32 %7657, 31
  %7681 = trunc i32 %7680 to i8
  %7682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7681, i8* %7682, align 1
  %7683 = lshr i32 %7656, 31
  %7684 = xor i32 %7680, %7683
  %7685 = add i32 %7684, %7680
  %7686 = icmp eq i32 %7685, 2
  %7687 = zext i1 %7686 to i8
  %7688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7687, i8* %7688, align 1
  store %struct.Memory* %loadMem_429c1b, %struct.Memory** %MEMORY
  %loadMem_429c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7690 = getelementptr inbounds %struct.GPR, %struct.GPR* %7689, i32 0, i32 33
  %7691 = getelementptr inbounds %struct.Reg, %struct.Reg* %7690, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %7691 to i64*
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7693 = getelementptr inbounds %struct.GPR, %struct.GPR* %7692, i32 0, i32 7
  %7694 = getelementptr inbounds %struct.Reg, %struct.Reg* %7693, i32 0, i32 0
  %EDX.i306 = bitcast %union.anon* %7694 to i32*
  %7695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7696 = getelementptr inbounds %struct.GPR, %struct.GPR* %7695, i32 0, i32 15
  %7697 = getelementptr inbounds %struct.Reg, %struct.Reg* %7696, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %7697 to i64*
  %7698 = load i64, i64* %RBP.i307
  %7699 = sub i64 %7698, 48
  %7700 = load i32, i32* %EDX.i306
  %7701 = zext i32 %7700 to i64
  %7702 = load i64, i64* %PC.i305
  %7703 = add i64 %7702, 3
  store i64 %7703, i64* %PC.i305
  %7704 = inttoptr i64 %7699 to i32*
  store i32 %7700, i32* %7704
  store %struct.Memory* %loadMem_429c1e, %struct.Memory** %MEMORY
  %loadMem_429c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7706 = getelementptr inbounds %struct.GPR, %struct.GPR* %7705, i32 0, i32 33
  %7707 = getelementptr inbounds %struct.Reg, %struct.Reg* %7706, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %7707 to i64*
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7709 = getelementptr inbounds %struct.GPR, %struct.GPR* %7708, i32 0, i32 7
  %7710 = getelementptr inbounds %struct.Reg, %struct.Reg* %7709, i32 0, i32 0
  %RDX.i303 = bitcast %union.anon* %7710 to i64*
  %7711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7712 = getelementptr inbounds %struct.GPR, %struct.GPR* %7711, i32 0, i32 15
  %7713 = getelementptr inbounds %struct.Reg, %struct.Reg* %7712, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %7713 to i64*
  %7714 = load i64, i64* %RBP.i304
  %7715 = sub i64 %7714, 60
  %7716 = load i64, i64* %PC.i302
  %7717 = add i64 %7716, 3
  store i64 %7717, i64* %PC.i302
  %7718 = inttoptr i64 %7715 to i32*
  %7719 = load i32, i32* %7718
  %7720 = zext i32 %7719 to i64
  store i64 %7720, i64* %RDX.i303, align 8
  store %struct.Memory* %loadMem_429c21, %struct.Memory** %MEMORY
  %loadMem_429c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7722 = getelementptr inbounds %struct.GPR, %struct.GPR* %7721, i32 0, i32 33
  %7723 = getelementptr inbounds %struct.Reg, %struct.Reg* %7722, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %7723 to i64*
  %7724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7725 = getelementptr inbounds %struct.GPR, %struct.GPR* %7724, i32 0, i32 7
  %7726 = getelementptr inbounds %struct.Reg, %struct.Reg* %7725, i32 0, i32 0
  %RDX.i301 = bitcast %union.anon* %7726 to i64*
  %7727 = load i64, i64* %RDX.i301
  %7728 = load i64, i64* %PC.i300
  %7729 = add i64 %7728, 3
  store i64 %7729, i64* %PC.i300
  %7730 = trunc i64 %7727 to i32
  %7731 = add i32 1, %7730
  %7732 = zext i32 %7731 to i64
  store i64 %7732, i64* %RDX.i301, align 8
  %7733 = icmp ult i32 %7731, %7730
  %7734 = icmp ult i32 %7731, 1
  %7735 = or i1 %7733, %7734
  %7736 = zext i1 %7735 to i8
  %7737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7736, i8* %7737, align 1
  %7738 = and i32 %7731, 255
  %7739 = call i32 @llvm.ctpop.i32(i32 %7738)
  %7740 = trunc i32 %7739 to i8
  %7741 = and i8 %7740, 1
  %7742 = xor i8 %7741, 1
  %7743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7742, i8* %7743, align 1
  %7744 = xor i64 1, %7727
  %7745 = trunc i64 %7744 to i32
  %7746 = xor i32 %7745, %7731
  %7747 = lshr i32 %7746, 4
  %7748 = trunc i32 %7747 to i8
  %7749 = and i8 %7748, 1
  %7750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7749, i8* %7750, align 1
  %7751 = icmp eq i32 %7731, 0
  %7752 = zext i1 %7751 to i8
  %7753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7752, i8* %7753, align 1
  %7754 = lshr i32 %7731, 31
  %7755 = trunc i32 %7754 to i8
  %7756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7755, i8* %7756, align 1
  %7757 = lshr i32 %7730, 31
  %7758 = xor i32 %7754, %7757
  %7759 = add i32 %7758, %7754
  %7760 = icmp eq i32 %7759, 2
  %7761 = zext i1 %7760 to i8
  %7762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7761, i8* %7762, align 1
  store %struct.Memory* %loadMem_429c24, %struct.Memory** %MEMORY
  %loadMem_429c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7764 = getelementptr inbounds %struct.GPR, %struct.GPR* %7763, i32 0, i32 33
  %7765 = getelementptr inbounds %struct.Reg, %struct.Reg* %7764, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %7765 to i64*
  %7766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7767 = getelementptr inbounds %struct.GPR, %struct.GPR* %7766, i32 0, i32 7
  %7768 = getelementptr inbounds %struct.Reg, %struct.Reg* %7767, i32 0, i32 0
  %EDX.i298 = bitcast %union.anon* %7768 to i32*
  %7769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7770 = getelementptr inbounds %struct.GPR, %struct.GPR* %7769, i32 0, i32 15
  %7771 = getelementptr inbounds %struct.Reg, %struct.Reg* %7770, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %7771 to i64*
  %7772 = load i64, i64* %RBP.i299
  %7773 = sub i64 %7772, 60
  %7774 = load i32, i32* %EDX.i298
  %7775 = zext i32 %7774 to i64
  %7776 = load i64, i64* %PC.i297
  %7777 = add i64 %7776, 3
  store i64 %7777, i64* %PC.i297
  %7778 = inttoptr i64 %7773 to i32*
  store i32 %7774, i32* %7778
  store %struct.Memory* %loadMem_429c27, %struct.Memory** %MEMORY
  br label %block_.L_429c2a

block_.L_429c2a:                                  ; preds = %block_429bcc, %block_429baf, %block_429b92, %block_429b75, %block_429b58, %block_.L_429b3b
  %loadMem_429c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7780 = getelementptr inbounds %struct.GPR, %struct.GPR* %7779, i32 0, i32 33
  %7781 = getelementptr inbounds %struct.Reg, %struct.Reg* %7780, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %7781 to i64*
  %7782 = load i64, i64* %PC.i296
  %7783 = add i64 %7782, 5
  %7784 = load i64, i64* %PC.i296
  %7785 = add i64 %7784, 5
  store i64 %7785, i64* %PC.i296
  %7786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7783, i64* %7786, align 8
  store %struct.Memory* %loadMem_429c2a, %struct.Memory** %MEMORY
  br label %block_.L_429c2f

block_.L_429c2f:                                  ; preds = %block_.L_429c2a, %block_429ad7
  %loadMem_429c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7788 = getelementptr inbounds %struct.GPR, %struct.GPR* %7787, i32 0, i32 33
  %7789 = getelementptr inbounds %struct.Reg, %struct.Reg* %7788, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %7789 to i64*
  %7790 = load i64, i64* %PC.i295
  %7791 = add i64 %7790, 5
  %7792 = load i64, i64* %PC.i295
  %7793 = add i64 %7792, 5
  store i64 %7793, i64* %PC.i295
  %7794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7791, i64* %7794, align 8
  store %struct.Memory* %loadMem_429c2f, %struct.Memory** %MEMORY
  br label %block_.L_429c34

block_.L_429c34:                                  ; preds = %block_.L_429c2f, %block_4299c6
  %loadMem_429c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7796 = getelementptr inbounds %struct.GPR, %struct.GPR* %7795, i32 0, i32 33
  %7797 = getelementptr inbounds %struct.Reg, %struct.Reg* %7796, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %7797 to i64*
  %7798 = load i64, i64* %PC.i294
  %7799 = add i64 %7798, 5
  %7800 = load i64, i64* %PC.i294
  %7801 = add i64 %7800, 5
  store i64 %7801, i64* %PC.i294
  %7802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7799, i64* %7802, align 8
  store %struct.Memory* %loadMem_429c34, %struct.Memory** %MEMORY
  br label %block_.L_429c39

block_.L_429c39:                                  ; preds = %block_.L_429c34, %block_.L_429914
  %loadMem_429c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7804 = getelementptr inbounds %struct.GPR, %struct.GPR* %7803, i32 0, i32 33
  %7805 = getelementptr inbounds %struct.Reg, %struct.Reg* %7804, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %7805 to i64*
  %7806 = load i64, i64* %PC.i293
  %7807 = add i64 %7806, 5
  %7808 = load i64, i64* %PC.i293
  %7809 = add i64 %7808, 5
  store i64 %7809, i64* %PC.i293
  %7810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7807, i64* %7810, align 8
  store %struct.Memory* %loadMem_429c39, %struct.Memory** %MEMORY
  br label %block_.L_429c3e

block_.L_429c3e:                                  ; preds = %block_.L_429c39, %block_429807
  %loadMem_429c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7812 = getelementptr inbounds %struct.GPR, %struct.GPR* %7811, i32 0, i32 33
  %7813 = getelementptr inbounds %struct.Reg, %struct.Reg* %7812, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %7813 to i64*
  %7814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7815 = getelementptr inbounds %struct.GPR, %struct.GPR* %7814, i32 0, i32 1
  %7816 = getelementptr inbounds %struct.Reg, %struct.Reg* %7815, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %7816 to i64*
  %7817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7818 = getelementptr inbounds %struct.GPR, %struct.GPR* %7817, i32 0, i32 15
  %7819 = getelementptr inbounds %struct.Reg, %struct.Reg* %7818, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %7819 to i64*
  %7820 = load i64, i64* %RBP.i292
  %7821 = sub i64 %7820, 24
  %7822 = load i64, i64* %PC.i290
  %7823 = add i64 %7822, 4
  store i64 %7823, i64* %PC.i290
  %7824 = inttoptr i64 %7821 to i64*
  %7825 = load i64, i64* %7824
  store i64 %7825, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_429c3e, %struct.Memory** %MEMORY
  %loadMem_429c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7827 = getelementptr inbounds %struct.GPR, %struct.GPR* %7826, i32 0, i32 33
  %7828 = getelementptr inbounds %struct.Reg, %struct.Reg* %7827, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %7828 to i64*
  %7829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7830 = getelementptr inbounds %struct.GPR, %struct.GPR* %7829, i32 0, i32 5
  %7831 = getelementptr inbounds %struct.Reg, %struct.Reg* %7830, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %7831 to i64*
  %7832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7833 = getelementptr inbounds %struct.GPR, %struct.GPR* %7832, i32 0, i32 15
  %7834 = getelementptr inbounds %struct.Reg, %struct.Reg* %7833, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %7834 to i64*
  %7835 = load i64, i64* %RBP.i289
  %7836 = sub i64 %7835, 56
  %7837 = load i64, i64* %PC.i287
  %7838 = add i64 %7837, 3
  store i64 %7838, i64* %PC.i287
  %7839 = inttoptr i64 %7836 to i32*
  %7840 = load i32, i32* %7839
  %7841 = zext i32 %7840 to i64
  store i64 %7841, i64* %RCX.i288, align 8
  store %struct.Memory* %loadMem_429c42, %struct.Memory** %MEMORY
  %loadMem_429c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7843 = getelementptr inbounds %struct.GPR, %struct.GPR* %7842, i32 0, i32 33
  %7844 = getelementptr inbounds %struct.Reg, %struct.Reg* %7843, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %7844 to i64*
  %7845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7846 = getelementptr inbounds %struct.GPR, %struct.GPR* %7845, i32 0, i32 5
  %7847 = getelementptr inbounds %struct.Reg, %struct.Reg* %7846, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %7847 to i64*
  %7848 = load i64, i64* %RCX.i286
  %7849 = load i64, i64* %PC.i285
  %7850 = add i64 %7849, 3
  store i64 %7850, i64* %PC.i285
  %7851 = trunc i64 %7848 to i32
  %7852 = add i32 1, %7851
  %7853 = zext i32 %7852 to i64
  store i64 %7853, i64* %RCX.i286, align 8
  %7854 = icmp ult i32 %7852, %7851
  %7855 = icmp ult i32 %7852, 1
  %7856 = or i1 %7854, %7855
  %7857 = zext i1 %7856 to i8
  %7858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7857, i8* %7858, align 1
  %7859 = and i32 %7852, 255
  %7860 = call i32 @llvm.ctpop.i32(i32 %7859)
  %7861 = trunc i32 %7860 to i8
  %7862 = and i8 %7861, 1
  %7863 = xor i8 %7862, 1
  %7864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7863, i8* %7864, align 1
  %7865 = xor i64 1, %7848
  %7866 = trunc i64 %7865 to i32
  %7867 = xor i32 %7866, %7852
  %7868 = lshr i32 %7867, 4
  %7869 = trunc i32 %7868 to i8
  %7870 = and i8 %7869, 1
  %7871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7870, i8* %7871, align 1
  %7872 = icmp eq i32 %7852, 0
  %7873 = zext i1 %7872 to i8
  %7874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7873, i8* %7874, align 1
  %7875 = lshr i32 %7852, 31
  %7876 = trunc i32 %7875 to i8
  %7877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7876, i8* %7877, align 1
  %7878 = lshr i32 %7851, 31
  %7879 = xor i32 %7875, %7878
  %7880 = add i32 %7879, %7875
  %7881 = icmp eq i32 %7880, 2
  %7882 = zext i1 %7881 to i8
  %7883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7882, i8* %7883, align 1
  store %struct.Memory* %loadMem_429c45, %struct.Memory** %MEMORY
  %loadMem_429c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7885 = getelementptr inbounds %struct.GPR, %struct.GPR* %7884, i32 0, i32 33
  %7886 = getelementptr inbounds %struct.Reg, %struct.Reg* %7885, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %7886 to i64*
  %7887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7888 = getelementptr inbounds %struct.GPR, %struct.GPR* %7887, i32 0, i32 5
  %7889 = getelementptr inbounds %struct.Reg, %struct.Reg* %7888, i32 0, i32 0
  %ECX.i283 = bitcast %union.anon* %7889 to i32*
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7891 = getelementptr inbounds %struct.GPR, %struct.GPR* %7890, i32 0, i32 7
  %7892 = getelementptr inbounds %struct.Reg, %struct.Reg* %7891, i32 0, i32 0
  %RDX.i284 = bitcast %union.anon* %7892 to i64*
  %7893 = load i32, i32* %ECX.i283
  %7894 = zext i32 %7893 to i64
  %7895 = load i64, i64* %PC.i282
  %7896 = add i64 %7895, 3
  store i64 %7896, i64* %PC.i282
  %7897 = shl i64 %7894, 32
  %7898 = ashr exact i64 %7897, 32
  store i64 %7898, i64* %RDX.i284, align 8
  store %struct.Memory* %loadMem_429c48, %struct.Memory** %MEMORY
  %loadMem_429c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7900 = getelementptr inbounds %struct.GPR, %struct.GPR* %7899, i32 0, i32 33
  %7901 = getelementptr inbounds %struct.Reg, %struct.Reg* %7900, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %7901 to i64*
  %7902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7903 = getelementptr inbounds %struct.GPR, %struct.GPR* %7902, i32 0, i32 1
  %7904 = getelementptr inbounds %struct.Reg, %struct.Reg* %7903, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %7904 to i64*
  %7905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7906 = getelementptr inbounds %struct.GPR, %struct.GPR* %7905, i32 0, i32 5
  %7907 = getelementptr inbounds %struct.Reg, %struct.Reg* %7906, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %7907 to i64*
  %7908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7909 = getelementptr inbounds %struct.GPR, %struct.GPR* %7908, i32 0, i32 7
  %7910 = getelementptr inbounds %struct.Reg, %struct.Reg* %7909, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %7910 to i64*
  %7911 = load i64, i64* %RAX.i279
  %7912 = load i64, i64* %RDX.i281
  %7913 = mul i64 %7912, 4
  %7914 = add i64 %7913, %7911
  %7915 = load i64, i64* %PC.i278
  %7916 = add i64 %7915, 3
  store i64 %7916, i64* %PC.i278
  %7917 = inttoptr i64 %7914 to i32*
  %7918 = load i32, i32* %7917
  %7919 = zext i32 %7918 to i64
  store i64 %7919, i64* %RCX.i280, align 8
  store %struct.Memory* %loadMem_429c4b, %struct.Memory** %MEMORY
  %loadMem_429c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7921 = getelementptr inbounds %struct.GPR, %struct.GPR* %7920, i32 0, i32 33
  %7922 = getelementptr inbounds %struct.Reg, %struct.Reg* %7921, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %7922 to i64*
  %7923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7924 = getelementptr inbounds %struct.GPR, %struct.GPR* %7923, i32 0, i32 5
  %7925 = getelementptr inbounds %struct.Reg, %struct.Reg* %7924, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %7925 to i64*
  %7926 = load i64, i64* %RCX.i277
  %7927 = load i64, i64* %PC.i276
  %7928 = add i64 %7927, 3
  store i64 %7928, i64* %PC.i276
  %7929 = and i64 4, %7926
  %7930 = trunc i64 %7929 to i32
  store i64 %7929, i64* %RCX.i277, align 8
  %7931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7931, align 1
  %7932 = and i32 %7930, 255
  %7933 = call i32 @llvm.ctpop.i32(i32 %7932)
  %7934 = trunc i32 %7933 to i8
  %7935 = and i8 %7934, 1
  %7936 = xor i8 %7935, 1
  %7937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7936, i8* %7937, align 1
  %7938 = icmp eq i32 %7930, 0
  %7939 = zext i1 %7938 to i8
  %7940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7939, i8* %7940, align 1
  %7941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7941, align 1
  %7942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7942, align 1
  %7943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7943, align 1
  store %struct.Memory* %loadMem_429c4e, %struct.Memory** %MEMORY
  %loadMem_429c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7945 = getelementptr inbounds %struct.GPR, %struct.GPR* %7944, i32 0, i32 33
  %7946 = getelementptr inbounds %struct.Reg, %struct.Reg* %7945, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %7946 to i64*
  %7947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7948 = getelementptr inbounds %struct.GPR, %struct.GPR* %7947, i32 0, i32 5
  %7949 = getelementptr inbounds %struct.Reg, %struct.Reg* %7948, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7949 to i32*
  %7950 = load i32, i32* %ECX.i
  %7951 = zext i32 %7950 to i64
  %7952 = load i64, i64* %PC.i275
  %7953 = add i64 %7952, 3
  store i64 %7953, i64* %PC.i275
  %7954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7954, align 1
  %7955 = and i32 %7950, 255
  %7956 = call i32 @llvm.ctpop.i32(i32 %7955)
  %7957 = trunc i32 %7956 to i8
  %7958 = and i8 %7957, 1
  %7959 = xor i8 %7958, 1
  %7960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7959, i8* %7960, align 1
  %7961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7961, align 1
  %7962 = icmp eq i32 %7950, 0
  %7963 = zext i1 %7962 to i8
  %7964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7963, i8* %7964, align 1
  %7965 = lshr i32 %7950, 31
  %7966 = trunc i32 %7965 to i8
  %7967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7966, i8* %7967, align 1
  %7968 = lshr i32 %7950, 31
  %7969 = xor i32 %7965, %7968
  %7970 = add i32 %7969, %7968
  %7971 = icmp eq i32 %7970, 2
  %7972 = zext i1 %7971 to i8
  %7973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7972, i8* %7973, align 1
  store %struct.Memory* %loadMem_429c51, %struct.Memory** %MEMORY
  %loadMem_429c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7975 = getelementptr inbounds %struct.GPR, %struct.GPR* %7974, i32 0, i32 33
  %7976 = getelementptr inbounds %struct.Reg, %struct.Reg* %7975, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %7976 to i64*
  %7977 = load i64, i64* %PC.i274
  %7978 = add i64 %7977, 237
  %7979 = load i64, i64* %PC.i274
  %7980 = add i64 %7979, 6
  %7981 = load i64, i64* %PC.i274
  %7982 = add i64 %7981, 6
  store i64 %7982, i64* %PC.i274
  %7983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7984 = load i8, i8* %7983, align 1
  store i8 %7984, i8* %BRANCH_TAKEN, align 1
  %7985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7986 = icmp ne i8 %7984, 0
  %7987 = select i1 %7986, i64 %7978, i64 %7980
  store i64 %7987, i64* %7985, align 8
  store %struct.Memory* %loadMem_429c54, %struct.Memory** %MEMORY
  %loadBr_429c54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429c54 = icmp eq i8 %loadBr_429c54, 1
  br i1 %cmpBr_429c54, label %block_.L_429d41, label %block_429c5a

block_429c5a:                                     ; preds = %block_.L_429c3e
  %loadMem_429c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7989 = getelementptr inbounds %struct.GPR, %struct.GPR* %7988, i32 0, i32 33
  %7990 = getelementptr inbounds %struct.Reg, %struct.Reg* %7989, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %7990 to i64*
  %7991 = load i64, i64* %PC.i273
  %7992 = add i64 %7991, 5
  %7993 = load i64, i64* %PC.i273
  %7994 = add i64 %7993, 5
  store i64 %7994, i64* %PC.i273
  %7995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7992, i64* %7995, align 8
  store %struct.Memory* %loadMem_429c5a, %struct.Memory** %MEMORY
  br label %block_.L_429c5f

block_.L_429c5f:                                  ; preds = %block_429c85, %block_429c5a
  %loadMem_429c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7997 = getelementptr inbounds %struct.GPR, %struct.GPR* %7996, i32 0, i32 33
  %7998 = getelementptr inbounds %struct.Reg, %struct.Reg* %7997, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %7998 to i64*
  %7999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8000 = getelementptr inbounds %struct.GPR, %struct.GPR* %7999, i32 0, i32 1
  %8001 = getelementptr inbounds %struct.Reg, %struct.Reg* %8000, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %8001 to i64*
  %8002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8003 = getelementptr inbounds %struct.GPR, %struct.GPR* %8002, i32 0, i32 15
  %8004 = getelementptr inbounds %struct.Reg, %struct.Reg* %8003, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %8004 to i64*
  %8005 = load i64, i64* %RBP.i272
  %8006 = sub i64 %8005, 40
  %8007 = load i64, i64* %PC.i270
  %8008 = add i64 %8007, 4
  store i64 %8008, i64* %PC.i270
  %8009 = inttoptr i64 %8006 to i64*
  %8010 = load i64, i64* %8009
  store i64 %8010, i64* %RAX.i271, align 8
  store %struct.Memory* %loadMem_429c5f, %struct.Memory** %MEMORY
  %loadMem_429c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8012 = getelementptr inbounds %struct.GPR, %struct.GPR* %8011, i32 0, i32 33
  %8013 = getelementptr inbounds %struct.Reg, %struct.Reg* %8012, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %8013 to i64*
  %8014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8015 = getelementptr inbounds %struct.GPR, %struct.GPR* %8014, i32 0, i32 5
  %8016 = getelementptr inbounds %struct.Reg, %struct.Reg* %8015, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %8016 to i64*
  %8017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8018 = getelementptr inbounds %struct.GPR, %struct.GPR* %8017, i32 0, i32 15
  %8019 = getelementptr inbounds %struct.Reg, %struct.Reg* %8018, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %8019 to i64*
  %8020 = load i64, i64* %RBP.i269
  %8021 = sub i64 %8020, 44
  %8022 = load i64, i64* %PC.i267
  %8023 = add i64 %8022, 4
  store i64 %8023, i64* %PC.i267
  %8024 = inttoptr i64 %8021 to i32*
  %8025 = load i32, i32* %8024
  %8026 = sext i32 %8025 to i64
  store i64 %8026, i64* %RCX.i268, align 8
  store %struct.Memory* %loadMem_429c63, %struct.Memory** %MEMORY
  %loadMem_429c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8028 = getelementptr inbounds %struct.GPR, %struct.GPR* %8027, i32 0, i32 33
  %8029 = getelementptr inbounds %struct.Reg, %struct.Reg* %8028, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %8029 to i64*
  %8030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8031 = getelementptr inbounds %struct.GPR, %struct.GPR* %8030, i32 0, i32 1
  %8032 = getelementptr inbounds %struct.Reg, %struct.Reg* %8031, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %8032 to i64*
  %8033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8034 = getelementptr inbounds %struct.GPR, %struct.GPR* %8033, i32 0, i32 5
  %8035 = getelementptr inbounds %struct.Reg, %struct.Reg* %8034, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %8035 to i64*
  %8036 = load i64, i64* %RAX.i265
  %8037 = load i64, i64* %RCX.i266
  %8038 = mul i64 %8037, 8
  %8039 = add i64 %8038, %8036
  %8040 = load i64, i64* %PC.i264
  %8041 = add i64 %8040, 4
  store i64 %8041, i64* %PC.i264
  %8042 = inttoptr i64 %8039 to i64*
  %8043 = load i64, i64* %8042
  store i64 %8043, i64* %RAX.i265, align 8
  store %struct.Memory* %loadMem_429c67, %struct.Memory** %MEMORY
  %loadMem_429c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8045 = getelementptr inbounds %struct.GPR, %struct.GPR* %8044, i32 0, i32 33
  %8046 = getelementptr inbounds %struct.Reg, %struct.Reg* %8045, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %8046 to i64*
  %8047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8048 = getelementptr inbounds %struct.GPR, %struct.GPR* %8047, i32 0, i32 1
  %8049 = getelementptr inbounds %struct.Reg, %struct.Reg* %8048, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %8049 to i64*
  %8050 = load i64, i64* %RAX.i263
  %8051 = add i64 %8050, 8
  %8052 = load i64, i64* %PC.i262
  %8053 = add i64 %8052, 4
  store i64 %8053, i64* %PC.i262
  %8054 = inttoptr i64 %8051 to i64*
  %8055 = load i64, i64* %8054
  store i64 %8055, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_429c6b, %struct.Memory** %MEMORY
  %loadMem_429c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8057 = getelementptr inbounds %struct.GPR, %struct.GPR* %8056, i32 0, i32 33
  %8058 = getelementptr inbounds %struct.Reg, %struct.Reg* %8057, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %8058 to i64*
  %8059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8060 = getelementptr inbounds %struct.GPR, %struct.GPR* %8059, i32 0, i32 7
  %8061 = getelementptr inbounds %struct.Reg, %struct.Reg* %8060, i32 0, i32 0
  %RDX.i260 = bitcast %union.anon* %8061 to i64*
  %8062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8063 = getelementptr inbounds %struct.GPR, %struct.GPR* %8062, i32 0, i32 15
  %8064 = getelementptr inbounds %struct.Reg, %struct.Reg* %8063, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %8064 to i64*
  %8065 = load i64, i64* %RBP.i261
  %8066 = sub i64 %8065, 60
  %8067 = load i64, i64* %PC.i259
  %8068 = add i64 %8067, 3
  store i64 %8068, i64* %PC.i259
  %8069 = inttoptr i64 %8066 to i32*
  %8070 = load i32, i32* %8069
  %8071 = zext i32 %8070 to i64
  store i64 %8071, i64* %RDX.i260, align 8
  store %struct.Memory* %loadMem_429c6f, %struct.Memory** %MEMORY
  %loadMem_429c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8073 = getelementptr inbounds %struct.GPR, %struct.GPR* %8072, i32 0, i32 33
  %8074 = getelementptr inbounds %struct.Reg, %struct.Reg* %8073, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %8074 to i64*
  %8075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8076 = getelementptr inbounds %struct.GPR, %struct.GPR* %8075, i32 0, i32 7
  %8077 = getelementptr inbounds %struct.Reg, %struct.Reg* %8076, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %8077 to i64*
  %8078 = load i64, i64* %RDX.i258
  %8079 = load i64, i64* %PC.i257
  %8080 = add i64 %8079, 3
  store i64 %8080, i64* %PC.i257
  %8081 = trunc i64 %8078 to i32
  %8082 = sub i32 %8081, 1
  %8083 = zext i32 %8082 to i64
  store i64 %8083, i64* %RDX.i258, align 8
  %8084 = icmp ult i32 %8081, 1
  %8085 = zext i1 %8084 to i8
  %8086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8085, i8* %8086, align 1
  %8087 = and i32 %8082, 255
  %8088 = call i32 @llvm.ctpop.i32(i32 %8087)
  %8089 = trunc i32 %8088 to i8
  %8090 = and i8 %8089, 1
  %8091 = xor i8 %8090, 1
  %8092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8091, i8* %8092, align 1
  %8093 = xor i64 1, %8078
  %8094 = trunc i64 %8093 to i32
  %8095 = xor i32 %8094, %8082
  %8096 = lshr i32 %8095, 4
  %8097 = trunc i32 %8096 to i8
  %8098 = and i8 %8097, 1
  %8099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8098, i8* %8099, align 1
  %8100 = icmp eq i32 %8082, 0
  %8101 = zext i1 %8100 to i8
  %8102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8101, i8* %8102, align 1
  %8103 = lshr i32 %8082, 31
  %8104 = trunc i32 %8103 to i8
  %8105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8104, i8* %8105, align 1
  %8106 = lshr i32 %8081, 31
  %8107 = xor i32 %8103, %8106
  %8108 = add i32 %8107, %8106
  %8109 = icmp eq i32 %8108, 2
  %8110 = zext i1 %8109 to i8
  %8111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8110, i8* %8111, align 1
  store %struct.Memory* %loadMem_429c72, %struct.Memory** %MEMORY
  %loadMem_429c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8113 = getelementptr inbounds %struct.GPR, %struct.GPR* %8112, i32 0, i32 33
  %8114 = getelementptr inbounds %struct.Reg, %struct.Reg* %8113, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %8114 to i64*
  %8115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8116 = getelementptr inbounds %struct.GPR, %struct.GPR* %8115, i32 0, i32 7
  %8117 = getelementptr inbounds %struct.Reg, %struct.Reg* %8116, i32 0, i32 0
  %EDX.i255 = bitcast %union.anon* %8117 to i32*
  %8118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8119 = getelementptr inbounds %struct.GPR, %struct.GPR* %8118, i32 0, i32 5
  %8120 = getelementptr inbounds %struct.Reg, %struct.Reg* %8119, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %8120 to i64*
  %8121 = load i32, i32* %EDX.i255
  %8122 = zext i32 %8121 to i64
  %8123 = load i64, i64* %PC.i254
  %8124 = add i64 %8123, 3
  store i64 %8124, i64* %PC.i254
  %8125 = shl i64 %8122, 32
  %8126 = ashr exact i64 %8125, 32
  store i64 %8126, i64* %RCX.i256, align 8
  store %struct.Memory* %loadMem_429c75, %struct.Memory** %MEMORY
  %loadMem_429c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8128 = getelementptr inbounds %struct.GPR, %struct.GPR* %8127, i32 0, i32 33
  %8129 = getelementptr inbounds %struct.Reg, %struct.Reg* %8128, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %8129 to i64*
  %8130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8131 = getelementptr inbounds %struct.GPR, %struct.GPR* %8130, i32 0, i32 1
  %8132 = getelementptr inbounds %struct.Reg, %struct.Reg* %8131, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %8132 to i64*
  %8133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8134 = getelementptr inbounds %struct.GPR, %struct.GPR* %8133, i32 0, i32 5
  %8135 = getelementptr inbounds %struct.Reg, %struct.Reg* %8134, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %8135 to i64*
  %8136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8137 = getelementptr inbounds %struct.GPR, %struct.GPR* %8136, i32 0, i32 7
  %8138 = getelementptr inbounds %struct.Reg, %struct.Reg* %8137, i32 0, i32 0
  %RDX.i253 = bitcast %union.anon* %8138 to i64*
  %8139 = load i64, i64* %RAX.i251
  %8140 = load i64, i64* %RCX.i252
  %8141 = add i64 %8140, %8139
  %8142 = load i64, i64* %PC.i250
  %8143 = add i64 %8142, 4
  store i64 %8143, i64* %PC.i250
  %8144 = inttoptr i64 %8141 to i8*
  %8145 = load i8, i8* %8144
  %8146 = sext i8 %8145 to i64
  %8147 = and i64 %8146, 4294967295
  store i64 %8147, i64* %RDX.i253, align 8
  store %struct.Memory* %loadMem_429c78, %struct.Memory** %MEMORY
  %loadMem_429c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8149 = getelementptr inbounds %struct.GPR, %struct.GPR* %8148, i32 0, i32 33
  %8150 = getelementptr inbounds %struct.Reg, %struct.Reg* %8149, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %8150 to i64*
  %8151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8152 = getelementptr inbounds %struct.GPR, %struct.GPR* %8151, i32 0, i32 7
  %8153 = getelementptr inbounds %struct.Reg, %struct.Reg* %8152, i32 0, i32 0
  %EDX.i249 = bitcast %union.anon* %8153 to i32*
  %8154 = load i32, i32* %EDX.i249
  %8155 = zext i32 %8154 to i64
  %8156 = load i64, i64* %PC.i248
  %8157 = add i64 %8156, 3
  store i64 %8157, i64* %PC.i248
  %8158 = sub i32 %8154, 2
  %8159 = icmp ult i32 %8154, 2
  %8160 = zext i1 %8159 to i8
  %8161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8160, i8* %8161, align 1
  %8162 = and i32 %8158, 255
  %8163 = call i32 @llvm.ctpop.i32(i32 %8162)
  %8164 = trunc i32 %8163 to i8
  %8165 = and i8 %8164, 1
  %8166 = xor i8 %8165, 1
  %8167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8166, i8* %8167, align 1
  %8168 = xor i64 2, %8155
  %8169 = trunc i64 %8168 to i32
  %8170 = xor i32 %8169, %8158
  %8171 = lshr i32 %8170, 4
  %8172 = trunc i32 %8171 to i8
  %8173 = and i8 %8172, 1
  %8174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8173, i8* %8174, align 1
  %8175 = icmp eq i32 %8158, 0
  %8176 = zext i1 %8175 to i8
  %8177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8176, i8* %8177, align 1
  %8178 = lshr i32 %8158, 31
  %8179 = trunc i32 %8178 to i8
  %8180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8179, i8* %8180, align 1
  %8181 = lshr i32 %8154, 31
  %8182 = xor i32 %8178, %8181
  %8183 = add i32 %8182, %8181
  %8184 = icmp eq i32 %8183, 2
  %8185 = zext i1 %8184 to i8
  %8186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8185, i8* %8186, align 1
  store %struct.Memory* %loadMem_429c7c, %struct.Memory** %MEMORY
  %loadMem_429c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8188 = getelementptr inbounds %struct.GPR, %struct.GPR* %8187, i32 0, i32 33
  %8189 = getelementptr inbounds %struct.Reg, %struct.Reg* %8188, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %8189 to i64*
  %8190 = load i64, i64* %PC.i247
  %8191 = add i64 %8190, 20
  %8192 = load i64, i64* %PC.i247
  %8193 = add i64 %8192, 6
  %8194 = load i64, i64* %PC.i247
  %8195 = add i64 %8194, 6
  store i64 %8195, i64* %PC.i247
  %8196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8197 = load i8, i8* %8196, align 1
  %8198 = icmp eq i8 %8197, 0
  %8199 = zext i1 %8198 to i8
  store i8 %8199, i8* %BRANCH_TAKEN, align 1
  %8200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8201 = select i1 %8198, i64 %8191, i64 %8193
  store i64 %8201, i64* %8200, align 8
  store %struct.Memory* %loadMem_429c7f, %struct.Memory** %MEMORY
  %loadBr_429c7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_429c7f = icmp eq i8 %loadBr_429c7f, 1
  br i1 %cmpBr_429c7f, label %block_.L_429c93, label %block_429c85

block_429c85:                                     ; preds = %block_.L_429c5f
  %loadMem_429c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8203 = getelementptr inbounds %struct.GPR, %struct.GPR* %8202, i32 0, i32 33
  %8204 = getelementptr inbounds %struct.Reg, %struct.Reg* %8203, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %8204 to i64*
  %8205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8206 = getelementptr inbounds %struct.GPR, %struct.GPR* %8205, i32 0, i32 1
  %8207 = getelementptr inbounds %struct.Reg, %struct.Reg* %8206, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %8207 to i64*
  %8208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8209 = getelementptr inbounds %struct.GPR, %struct.GPR* %8208, i32 0, i32 15
  %8210 = getelementptr inbounds %struct.Reg, %struct.Reg* %8209, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %8210 to i64*
  %8211 = load i64, i64* %RBP.i246
  %8212 = sub i64 %8211, 60
  %8213 = load i64, i64* %PC.i244
  %8214 = add i64 %8213, 3
  store i64 %8214, i64* %PC.i244
  %8215 = inttoptr i64 %8212 to i32*
  %8216 = load i32, i32* %8215
  %8217 = zext i32 %8216 to i64
  store i64 %8217, i64* %RAX.i245, align 8
  store %struct.Memory* %loadMem_429c85, %struct.Memory** %MEMORY
  %loadMem_429c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8219 = getelementptr inbounds %struct.GPR, %struct.GPR* %8218, i32 0, i32 33
  %8220 = getelementptr inbounds %struct.Reg, %struct.Reg* %8219, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %8220 to i64*
  %8221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8222 = getelementptr inbounds %struct.GPR, %struct.GPR* %8221, i32 0, i32 1
  %8223 = getelementptr inbounds %struct.Reg, %struct.Reg* %8222, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %8223 to i64*
  %8224 = load i64, i64* %RAX.i243
  %8225 = load i64, i64* %PC.i242
  %8226 = add i64 %8225, 3
  store i64 %8226, i64* %PC.i242
  %8227 = trunc i64 %8224 to i32
  %8228 = add i32 -1, %8227
  %8229 = zext i32 %8228 to i64
  store i64 %8229, i64* %RAX.i243, align 8
  %8230 = icmp ult i32 %8228, %8227
  %8231 = icmp ult i32 %8228, -1
  %8232 = or i1 %8230, %8231
  %8233 = zext i1 %8232 to i8
  %8234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8233, i8* %8234, align 1
  %8235 = and i32 %8228, 255
  %8236 = call i32 @llvm.ctpop.i32(i32 %8235)
  %8237 = trunc i32 %8236 to i8
  %8238 = and i8 %8237, 1
  %8239 = xor i8 %8238, 1
  %8240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8239, i8* %8240, align 1
  %8241 = xor i64 -1, %8224
  %8242 = trunc i64 %8241 to i32
  %8243 = xor i32 %8242, %8228
  %8244 = lshr i32 %8243, 4
  %8245 = trunc i32 %8244 to i8
  %8246 = and i8 %8245, 1
  %8247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8246, i8* %8247, align 1
  %8248 = icmp eq i32 %8228, 0
  %8249 = zext i1 %8248 to i8
  %8250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8249, i8* %8250, align 1
  %8251 = lshr i32 %8228, 31
  %8252 = trunc i32 %8251 to i8
  %8253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8252, i8* %8253, align 1
  %8254 = lshr i32 %8227, 31
  %8255 = xor i32 %8251, %8254
  %8256 = xor i32 %8251, 1
  %8257 = add i32 %8255, %8256
  %8258 = icmp eq i32 %8257, 2
  %8259 = zext i1 %8258 to i8
  %8260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8259, i8* %8260, align 1
  store %struct.Memory* %loadMem_429c88, %struct.Memory** %MEMORY
  %loadMem_429c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8262 = getelementptr inbounds %struct.GPR, %struct.GPR* %8261, i32 0, i32 33
  %8263 = getelementptr inbounds %struct.Reg, %struct.Reg* %8262, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %8263 to i64*
  %8264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8265 = getelementptr inbounds %struct.GPR, %struct.GPR* %8264, i32 0, i32 1
  %8266 = getelementptr inbounds %struct.Reg, %struct.Reg* %8265, i32 0, i32 0
  %EAX.i240 = bitcast %union.anon* %8266 to i32*
  %8267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8268 = getelementptr inbounds %struct.GPR, %struct.GPR* %8267, i32 0, i32 15
  %8269 = getelementptr inbounds %struct.Reg, %struct.Reg* %8268, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %8269 to i64*
  %8270 = load i64, i64* %RBP.i241
  %8271 = sub i64 %8270, 60
  %8272 = load i32, i32* %EAX.i240
  %8273 = zext i32 %8272 to i64
  %8274 = load i64, i64* %PC.i239
  %8275 = add i64 %8274, 3
  store i64 %8275, i64* %PC.i239
  %8276 = inttoptr i64 %8271 to i32*
  store i32 %8272, i32* %8276
  store %struct.Memory* %loadMem_429c8b, %struct.Memory** %MEMORY
  %loadMem_429c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8278 = getelementptr inbounds %struct.GPR, %struct.GPR* %8277, i32 0, i32 33
  %8279 = getelementptr inbounds %struct.Reg, %struct.Reg* %8278, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %8279 to i64*
  %8280 = load i64, i64* %PC.i238
  %8281 = add i64 %8280, -47
  %8282 = load i64, i64* %PC.i238
  %8283 = add i64 %8282, 5
  store i64 %8283, i64* %PC.i238
  %8284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8281, i64* %8284, align 8
  store %struct.Memory* %loadMem_429c8e, %struct.Memory** %MEMORY
  br label %block_.L_429c5f

block_.L_429c93:                                  ; preds = %block_.L_429c5f
  %loadMem_429c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8286 = getelementptr inbounds %struct.GPR, %struct.GPR* %8285, i32 0, i32 33
  %8287 = getelementptr inbounds %struct.Reg, %struct.Reg* %8286, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %8287 to i64*
  %8288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8289 = getelementptr inbounds %struct.GPR, %struct.GPR* %8288, i32 0, i32 1
  %8290 = getelementptr inbounds %struct.Reg, %struct.Reg* %8289, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %8290 to i64*
  %8291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8292 = getelementptr inbounds %struct.GPR, %struct.GPR* %8291, i32 0, i32 15
  %8293 = getelementptr inbounds %struct.Reg, %struct.Reg* %8292, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %8293 to i64*
  %8294 = load i64, i64* %RBP.i237
  %8295 = sub i64 %8294, 40
  %8296 = load i64, i64* %PC.i235
  %8297 = add i64 %8296, 4
  store i64 %8297, i64* %PC.i235
  %8298 = inttoptr i64 %8295 to i64*
  %8299 = load i64, i64* %8298
  store i64 %8299, i64* %RAX.i236, align 8
  store %struct.Memory* %loadMem_429c93, %struct.Memory** %MEMORY
  %loadMem_429c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8301 = getelementptr inbounds %struct.GPR, %struct.GPR* %8300, i32 0, i32 33
  %8302 = getelementptr inbounds %struct.Reg, %struct.Reg* %8301, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %8302 to i64*
  %8303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8304 = getelementptr inbounds %struct.GPR, %struct.GPR* %8303, i32 0, i32 5
  %8305 = getelementptr inbounds %struct.Reg, %struct.Reg* %8304, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %8305 to i64*
  %8306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8307 = getelementptr inbounds %struct.GPR, %struct.GPR* %8306, i32 0, i32 15
  %8308 = getelementptr inbounds %struct.Reg, %struct.Reg* %8307, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %8308 to i64*
  %8309 = load i64, i64* %RBP.i234
  %8310 = sub i64 %8309, 44
  %8311 = load i64, i64* %PC.i232
  %8312 = add i64 %8311, 4
  store i64 %8312, i64* %PC.i232
  %8313 = inttoptr i64 %8310 to i32*
  %8314 = load i32, i32* %8313
  %8315 = sext i32 %8314 to i64
  store i64 %8315, i64* %RCX.i233, align 8
  store %struct.Memory* %loadMem_429c97, %struct.Memory** %MEMORY
  %loadMem_429c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8317 = getelementptr inbounds %struct.GPR, %struct.GPR* %8316, i32 0, i32 33
  %8318 = getelementptr inbounds %struct.Reg, %struct.Reg* %8317, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %8318 to i64*
  %8319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8320 = getelementptr inbounds %struct.GPR, %struct.GPR* %8319, i32 0, i32 1
  %8321 = getelementptr inbounds %struct.Reg, %struct.Reg* %8320, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %8321 to i64*
  %8322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8323 = getelementptr inbounds %struct.GPR, %struct.GPR* %8322, i32 0, i32 5
  %8324 = getelementptr inbounds %struct.Reg, %struct.Reg* %8323, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %8324 to i64*
  %8325 = load i64, i64* %RAX.i230
  %8326 = load i64, i64* %RCX.i231
  %8327 = mul i64 %8326, 8
  %8328 = add i64 %8327, %8325
  %8329 = load i64, i64* %PC.i229
  %8330 = add i64 %8329, 4
  store i64 %8330, i64* %PC.i229
  %8331 = inttoptr i64 %8328 to i64*
  %8332 = load i64, i64* %8331
  store i64 %8332, i64* %RAX.i230, align 8
  store %struct.Memory* %loadMem_429c9b, %struct.Memory** %MEMORY
  %loadMem_429c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8334 = getelementptr inbounds %struct.GPR, %struct.GPR* %8333, i32 0, i32 33
  %8335 = getelementptr inbounds %struct.Reg, %struct.Reg* %8334, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %8335 to i64*
  %8336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8337 = getelementptr inbounds %struct.GPR, %struct.GPR* %8336, i32 0, i32 1
  %8338 = getelementptr inbounds %struct.Reg, %struct.Reg* %8337, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %8338 to i64*
  %8339 = load i64, i64* %RAX.i228
  %8340 = add i64 %8339, 8
  %8341 = load i64, i64* %PC.i227
  %8342 = add i64 %8341, 4
  store i64 %8342, i64* %PC.i227
  %8343 = inttoptr i64 %8340 to i64*
  %8344 = load i64, i64* %8343
  store i64 %8344, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_429c9f, %struct.Memory** %MEMORY
  %loadMem_429ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8346 = getelementptr inbounds %struct.GPR, %struct.GPR* %8345, i32 0, i32 33
  %8347 = getelementptr inbounds %struct.Reg, %struct.Reg* %8346, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %8347 to i64*
  %8348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8349 = getelementptr inbounds %struct.GPR, %struct.GPR* %8348, i32 0, i32 5
  %8350 = getelementptr inbounds %struct.Reg, %struct.Reg* %8349, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %8350 to i64*
  %8351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8352 = getelementptr inbounds %struct.GPR, %struct.GPR* %8351, i32 0, i32 15
  %8353 = getelementptr inbounds %struct.Reg, %struct.Reg* %8352, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %8353 to i64*
  %8354 = load i64, i64* %RBP.i226
  %8355 = sub i64 %8354, 60
  %8356 = load i64, i64* %PC.i224
  %8357 = add i64 %8356, 4
  store i64 %8357, i64* %PC.i224
  %8358 = inttoptr i64 %8355 to i32*
  %8359 = load i32, i32* %8358
  %8360 = sext i32 %8359 to i64
  store i64 %8360, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_429ca3, %struct.Memory** %MEMORY
  %loadMem_429ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8362 = getelementptr inbounds %struct.GPR, %struct.GPR* %8361, i32 0, i32 33
  %8363 = getelementptr inbounds %struct.Reg, %struct.Reg* %8362, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %8363 to i64*
  %8364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8365 = getelementptr inbounds %struct.GPR, %struct.GPR* %8364, i32 0, i32 1
  %8366 = getelementptr inbounds %struct.Reg, %struct.Reg* %8365, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %8366 to i64*
  %8367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8368 = getelementptr inbounds %struct.GPR, %struct.GPR* %8367, i32 0, i32 5
  %8369 = getelementptr inbounds %struct.Reg, %struct.Reg* %8368, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %8369 to i64*
  %8370 = load i64, i64* %RAX.i222
  %8371 = load i64, i64* %RCX.i223
  %8372 = add i64 %8371, %8370
  %8373 = load i64, i64* %PC.i221
  %8374 = add i64 %8373, 4
  store i64 %8374, i64* %PC.i221
  %8375 = inttoptr i64 %8372 to i8*
  store i8 7, i8* %8375
  store %struct.Memory* %loadMem_429ca7, %struct.Memory** %MEMORY
  %loadMem_429cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %8376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8377 = getelementptr inbounds %struct.GPR, %struct.GPR* %8376, i32 0, i32 33
  %8378 = getelementptr inbounds %struct.Reg, %struct.Reg* %8377, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %8378 to i64*
  %8379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8380 = getelementptr inbounds %struct.GPR, %struct.GPR* %8379, i32 0, i32 1
  %8381 = getelementptr inbounds %struct.Reg, %struct.Reg* %8380, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %8381 to i64*
  %8382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8383 = getelementptr inbounds %struct.GPR, %struct.GPR* %8382, i32 0, i32 15
  %8384 = getelementptr inbounds %struct.Reg, %struct.Reg* %8383, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %8384 to i64*
  %8385 = load i64, i64* %RBP.i220
  %8386 = sub i64 %8385, 40
  %8387 = load i64, i64* %PC.i218
  %8388 = add i64 %8387, 4
  store i64 %8388, i64* %PC.i218
  %8389 = inttoptr i64 %8386 to i64*
  %8390 = load i64, i64* %8389
  store i64 %8390, i64* %RAX.i219, align 8
  store %struct.Memory* %loadMem_429cab, %struct.Memory** %MEMORY
  %loadMem_429caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8392 = getelementptr inbounds %struct.GPR, %struct.GPR* %8391, i32 0, i32 33
  %8393 = getelementptr inbounds %struct.Reg, %struct.Reg* %8392, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %8393 to i64*
  %8394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8395 = getelementptr inbounds %struct.GPR, %struct.GPR* %8394, i32 0, i32 5
  %8396 = getelementptr inbounds %struct.Reg, %struct.Reg* %8395, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %8396 to i64*
  %8397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8398 = getelementptr inbounds %struct.GPR, %struct.GPR* %8397, i32 0, i32 15
  %8399 = getelementptr inbounds %struct.Reg, %struct.Reg* %8398, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %8399 to i64*
  %8400 = load i64, i64* %RBP.i217
  %8401 = sub i64 %8400, 44
  %8402 = load i64, i64* %PC.i215
  %8403 = add i64 %8402, 4
  store i64 %8403, i64* %PC.i215
  %8404 = inttoptr i64 %8401 to i32*
  %8405 = load i32, i32* %8404
  %8406 = sext i32 %8405 to i64
  store i64 %8406, i64* %RCX.i216, align 8
  store %struct.Memory* %loadMem_429caf, %struct.Memory** %MEMORY
  %loadMem_429cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8408 = getelementptr inbounds %struct.GPR, %struct.GPR* %8407, i32 0, i32 33
  %8409 = getelementptr inbounds %struct.Reg, %struct.Reg* %8408, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %8409 to i64*
  %8410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8411 = getelementptr inbounds %struct.GPR, %struct.GPR* %8410, i32 0, i32 1
  %8412 = getelementptr inbounds %struct.Reg, %struct.Reg* %8411, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %8412 to i64*
  %8413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8414 = getelementptr inbounds %struct.GPR, %struct.GPR* %8413, i32 0, i32 5
  %8415 = getelementptr inbounds %struct.Reg, %struct.Reg* %8414, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %8415 to i64*
  %8416 = load i64, i64* %RAX.i213
  %8417 = load i64, i64* %RCX.i214
  %8418 = mul i64 %8417, 8
  %8419 = add i64 %8418, %8416
  %8420 = load i64, i64* %PC.i212
  %8421 = add i64 %8420, 4
  store i64 %8421, i64* %PC.i212
  %8422 = inttoptr i64 %8419 to i64*
  %8423 = load i64, i64* %8422
  store i64 %8423, i64* %RAX.i213, align 8
  store %struct.Memory* %loadMem_429cb3, %struct.Memory** %MEMORY
  %loadMem_429cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8425 = getelementptr inbounds %struct.GPR, %struct.GPR* %8424, i32 0, i32 33
  %8426 = getelementptr inbounds %struct.Reg, %struct.Reg* %8425, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %8426 to i64*
  %8427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8428 = getelementptr inbounds %struct.GPR, %struct.GPR* %8427, i32 0, i32 1
  %8429 = getelementptr inbounds %struct.Reg, %struct.Reg* %8428, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %8429 to i64*
  %8430 = load i64, i64* %RAX.i211
  %8431 = add i64 %8430, 16
  %8432 = load i64, i64* %PC.i210
  %8433 = add i64 %8432, 4
  store i64 %8433, i64* %PC.i210
  %8434 = inttoptr i64 %8431 to i64*
  %8435 = load i64, i64* %8434
  store i64 %8435, i64* %RAX.i211, align 8
  store %struct.Memory* %loadMem_429cb7, %struct.Memory** %MEMORY
  %loadMem_429cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8437 = getelementptr inbounds %struct.GPR, %struct.GPR* %8436, i32 0, i32 33
  %8438 = getelementptr inbounds %struct.Reg, %struct.Reg* %8437, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %8438 to i64*
  %8439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8440 = getelementptr inbounds %struct.GPR, %struct.GPR* %8439, i32 0, i32 5
  %8441 = getelementptr inbounds %struct.Reg, %struct.Reg* %8440, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %8441 to i64*
  %8442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8443 = getelementptr inbounds %struct.GPR, %struct.GPR* %8442, i32 0, i32 15
  %8444 = getelementptr inbounds %struct.Reg, %struct.Reg* %8443, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %8444 to i64*
  %8445 = load i64, i64* %RBP.i209
  %8446 = sub i64 %8445, 60
  %8447 = load i64, i64* %PC.i207
  %8448 = add i64 %8447, 4
  store i64 %8448, i64* %PC.i207
  %8449 = inttoptr i64 %8446 to i32*
  %8450 = load i32, i32* %8449
  %8451 = sext i32 %8450 to i64
  store i64 %8451, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_429cbb, %struct.Memory** %MEMORY
  %loadMem_429cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8453 = getelementptr inbounds %struct.GPR, %struct.GPR* %8452, i32 0, i32 33
  %8454 = getelementptr inbounds %struct.Reg, %struct.Reg* %8453, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %8454 to i64*
  %8455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8456 = getelementptr inbounds %struct.GPR, %struct.GPR* %8455, i32 0, i32 1
  %8457 = getelementptr inbounds %struct.Reg, %struct.Reg* %8456, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %8457 to i64*
  %8458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8459 = getelementptr inbounds %struct.GPR, %struct.GPR* %8458, i32 0, i32 5
  %8460 = getelementptr inbounds %struct.Reg, %struct.Reg* %8459, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %8460 to i64*
  %8461 = load i64, i64* %RAX.i205
  %8462 = load i64, i64* %RCX.i206
  %8463 = mul i64 %8462, 4
  %8464 = add i64 %8463, %8461
  %8465 = load i64, i64* %PC.i204
  %8466 = add i64 %8465, 7
  store i64 %8466, i64* %PC.i204
  %8467 = inttoptr i64 %8464 to i32*
  store i32 0, i32* %8467
  store %struct.Memory* %loadMem_429cbf, %struct.Memory** %MEMORY
  %loadMem_429cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8469 = getelementptr inbounds %struct.GPR, %struct.GPR* %8468, i32 0, i32 33
  %8470 = getelementptr inbounds %struct.Reg, %struct.Reg* %8469, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %8470 to i64*
  %8471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8472 = getelementptr inbounds %struct.GPR, %struct.GPR* %8471, i32 0, i32 1
  %8473 = getelementptr inbounds %struct.Reg, %struct.Reg* %8472, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %8473 to i64*
  %8474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8475 = getelementptr inbounds %struct.GPR, %struct.GPR* %8474, i32 0, i32 15
  %8476 = getelementptr inbounds %struct.Reg, %struct.Reg* %8475, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %8476 to i64*
  %8477 = load i64, i64* %RBP.i203
  %8478 = sub i64 %8477, 40
  %8479 = load i64, i64* %PC.i201
  %8480 = add i64 %8479, 4
  store i64 %8480, i64* %PC.i201
  %8481 = inttoptr i64 %8478 to i64*
  %8482 = load i64, i64* %8481
  store i64 %8482, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_429cc6, %struct.Memory** %MEMORY
  %loadMem_429cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %8483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8484 = getelementptr inbounds %struct.GPR, %struct.GPR* %8483, i32 0, i32 33
  %8485 = getelementptr inbounds %struct.Reg, %struct.Reg* %8484, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %8485 to i64*
  %8486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8487 = getelementptr inbounds %struct.GPR, %struct.GPR* %8486, i32 0, i32 5
  %8488 = getelementptr inbounds %struct.Reg, %struct.Reg* %8487, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %8488 to i64*
  %8489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8490 = getelementptr inbounds %struct.GPR, %struct.GPR* %8489, i32 0, i32 15
  %8491 = getelementptr inbounds %struct.Reg, %struct.Reg* %8490, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %8491 to i64*
  %8492 = load i64, i64* %RBP.i200
  %8493 = sub i64 %8492, 44
  %8494 = load i64, i64* %PC.i198
  %8495 = add i64 %8494, 4
  store i64 %8495, i64* %PC.i198
  %8496 = inttoptr i64 %8493 to i32*
  %8497 = load i32, i32* %8496
  %8498 = sext i32 %8497 to i64
  store i64 %8498, i64* %RCX.i199, align 8
  store %struct.Memory* %loadMem_429cca, %struct.Memory** %MEMORY
  %loadMem_429cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %8499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8500 = getelementptr inbounds %struct.GPR, %struct.GPR* %8499, i32 0, i32 33
  %8501 = getelementptr inbounds %struct.Reg, %struct.Reg* %8500, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %8501 to i64*
  %8502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8503 = getelementptr inbounds %struct.GPR, %struct.GPR* %8502, i32 0, i32 1
  %8504 = getelementptr inbounds %struct.Reg, %struct.Reg* %8503, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %8504 to i64*
  %8505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8506 = getelementptr inbounds %struct.GPR, %struct.GPR* %8505, i32 0, i32 5
  %8507 = getelementptr inbounds %struct.Reg, %struct.Reg* %8506, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %8507 to i64*
  %8508 = load i64, i64* %RAX.i196
  %8509 = load i64, i64* %RCX.i197
  %8510 = mul i64 %8509, 8
  %8511 = add i64 %8510, %8508
  %8512 = load i64, i64* %PC.i195
  %8513 = add i64 %8512, 4
  store i64 %8513, i64* %PC.i195
  %8514 = inttoptr i64 %8511 to i64*
  %8515 = load i64, i64* %8514
  store i64 %8515, i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_429cce, %struct.Memory** %MEMORY
  %loadMem_429cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8517 = getelementptr inbounds %struct.GPR, %struct.GPR* %8516, i32 0, i32 33
  %8518 = getelementptr inbounds %struct.Reg, %struct.Reg* %8517, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %8518 to i64*
  %8519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8520 = getelementptr inbounds %struct.GPR, %struct.GPR* %8519, i32 0, i32 1
  %8521 = getelementptr inbounds %struct.Reg, %struct.Reg* %8520, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %8521 to i64*
  %8522 = load i64, i64* %RAX.i194
  %8523 = add i64 %8522, 24
  %8524 = load i64, i64* %PC.i193
  %8525 = add i64 %8524, 4
  store i64 %8525, i64* %PC.i193
  %8526 = inttoptr i64 %8523 to i64*
  %8527 = load i64, i64* %8526
  store i64 %8527, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_429cd2, %struct.Memory** %MEMORY
  %loadMem_429cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8529 = getelementptr inbounds %struct.GPR, %struct.GPR* %8528, i32 0, i32 33
  %8530 = getelementptr inbounds %struct.Reg, %struct.Reg* %8529, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %8530 to i64*
  %8531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8532 = getelementptr inbounds %struct.GPR, %struct.GPR* %8531, i32 0, i32 5
  %8533 = getelementptr inbounds %struct.Reg, %struct.Reg* %8532, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %8533 to i64*
  %8534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8535 = getelementptr inbounds %struct.GPR, %struct.GPR* %8534, i32 0, i32 15
  %8536 = getelementptr inbounds %struct.Reg, %struct.Reg* %8535, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %8536 to i64*
  %8537 = load i64, i64* %RBP.i192
  %8538 = sub i64 %8537, 60
  %8539 = load i64, i64* %PC.i190
  %8540 = add i64 %8539, 4
  store i64 %8540, i64* %PC.i190
  %8541 = inttoptr i64 %8538 to i32*
  %8542 = load i32, i32* %8541
  %8543 = sext i32 %8542 to i64
  store i64 %8543, i64* %RCX.i191, align 8
  store %struct.Memory* %loadMem_429cd6, %struct.Memory** %MEMORY
  %loadMem_429cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %8544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8545 = getelementptr inbounds %struct.GPR, %struct.GPR* %8544, i32 0, i32 33
  %8546 = getelementptr inbounds %struct.Reg, %struct.Reg* %8545, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %8546 to i64*
  %8547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8548 = getelementptr inbounds %struct.GPR, %struct.GPR* %8547, i32 0, i32 1
  %8549 = getelementptr inbounds %struct.Reg, %struct.Reg* %8548, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %8549 to i64*
  %8550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8551 = getelementptr inbounds %struct.GPR, %struct.GPR* %8550, i32 0, i32 5
  %8552 = getelementptr inbounds %struct.Reg, %struct.Reg* %8551, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %8552 to i64*
  %8553 = load i64, i64* %RAX.i188
  %8554 = load i64, i64* %RCX.i189
  %8555 = mul i64 %8554, 4
  %8556 = add i64 %8555, %8553
  %8557 = load i64, i64* %PC.i187
  %8558 = add i64 %8557, 7
  store i64 %8558, i64* %PC.i187
  %8559 = inttoptr i64 %8556 to i32*
  store i32 0, i32* %8559
  store %struct.Memory* %loadMem_429cda, %struct.Memory** %MEMORY
  %loadMem_429ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8561 = getelementptr inbounds %struct.GPR, %struct.GPR* %8560, i32 0, i32 33
  %8562 = getelementptr inbounds %struct.Reg, %struct.Reg* %8561, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %8562 to i64*
  %8563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8564 = getelementptr inbounds %struct.GPR, %struct.GPR* %8563, i32 0, i32 7
  %8565 = getelementptr inbounds %struct.Reg, %struct.Reg* %8564, i32 0, i32 0
  %RDX.i185 = bitcast %union.anon* %8565 to i64*
  %8566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8567 = getelementptr inbounds %struct.GPR, %struct.GPR* %8566, i32 0, i32 15
  %8568 = getelementptr inbounds %struct.Reg, %struct.Reg* %8567, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %8568 to i64*
  %8569 = load i64, i64* %RBP.i186
  %8570 = sub i64 %8569, 60
  %8571 = load i64, i64* %PC.i184
  %8572 = add i64 %8571, 3
  store i64 %8572, i64* %PC.i184
  %8573 = inttoptr i64 %8570 to i32*
  %8574 = load i32, i32* %8573
  %8575 = zext i32 %8574 to i64
  store i64 %8575, i64* %RDX.i185, align 8
  store %struct.Memory* %loadMem_429ce1, %struct.Memory** %MEMORY
  %loadMem_429ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8577 = getelementptr inbounds %struct.GPR, %struct.GPR* %8576, i32 0, i32 33
  %8578 = getelementptr inbounds %struct.Reg, %struct.Reg* %8577, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %8578 to i64*
  %8579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8580 = getelementptr inbounds %struct.GPR, %struct.GPR* %8579, i32 0, i32 7
  %8581 = getelementptr inbounds %struct.Reg, %struct.Reg* %8580, i32 0, i32 0
  %RDX.i183 = bitcast %union.anon* %8581 to i64*
  %8582 = load i64, i64* %RDX.i183
  %8583 = load i64, i64* %PC.i182
  %8584 = add i64 %8583, 3
  store i64 %8584, i64* %PC.i182
  %8585 = trunc i64 %8582 to i32
  %8586 = add i32 1, %8585
  %8587 = zext i32 %8586 to i64
  store i64 %8587, i64* %RDX.i183, align 8
  %8588 = icmp ult i32 %8586, %8585
  %8589 = icmp ult i32 %8586, 1
  %8590 = or i1 %8588, %8589
  %8591 = zext i1 %8590 to i8
  %8592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8591, i8* %8592, align 1
  %8593 = and i32 %8586, 255
  %8594 = call i32 @llvm.ctpop.i32(i32 %8593)
  %8595 = trunc i32 %8594 to i8
  %8596 = and i8 %8595, 1
  %8597 = xor i8 %8596, 1
  %8598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8597, i8* %8598, align 1
  %8599 = xor i64 1, %8582
  %8600 = trunc i64 %8599 to i32
  %8601 = xor i32 %8600, %8586
  %8602 = lshr i32 %8601, 4
  %8603 = trunc i32 %8602 to i8
  %8604 = and i8 %8603, 1
  %8605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8604, i8* %8605, align 1
  %8606 = icmp eq i32 %8586, 0
  %8607 = zext i1 %8606 to i8
  %8608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8607, i8* %8608, align 1
  %8609 = lshr i32 %8586, 31
  %8610 = trunc i32 %8609 to i8
  %8611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8610, i8* %8611, align 1
  %8612 = lshr i32 %8585, 31
  %8613 = xor i32 %8609, %8612
  %8614 = add i32 %8613, %8609
  %8615 = icmp eq i32 %8614, 2
  %8616 = zext i1 %8615 to i8
  %8617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8616, i8* %8617, align 1
  store %struct.Memory* %loadMem_429ce4, %struct.Memory** %MEMORY
  %loadMem_429ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8619 = getelementptr inbounds %struct.GPR, %struct.GPR* %8618, i32 0, i32 33
  %8620 = getelementptr inbounds %struct.Reg, %struct.Reg* %8619, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %8620 to i64*
  %8621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8622 = getelementptr inbounds %struct.GPR, %struct.GPR* %8621, i32 0, i32 7
  %8623 = getelementptr inbounds %struct.Reg, %struct.Reg* %8622, i32 0, i32 0
  %EDX.i180 = bitcast %union.anon* %8623 to i32*
  %8624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8625 = getelementptr inbounds %struct.GPR, %struct.GPR* %8624, i32 0, i32 15
  %8626 = getelementptr inbounds %struct.Reg, %struct.Reg* %8625, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %8626 to i64*
  %8627 = load i64, i64* %RBP.i181
  %8628 = sub i64 %8627, 60
  %8629 = load i32, i32* %EDX.i180
  %8630 = zext i32 %8629 to i64
  %8631 = load i64, i64* %PC.i179
  %8632 = add i64 %8631, 3
  store i64 %8632, i64* %PC.i179
  %8633 = inttoptr i64 %8628 to i32*
  store i32 %8629, i32* %8633
  store %struct.Memory* %loadMem_429ce7, %struct.Memory** %MEMORY
  %loadMem_429cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %8634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8635 = getelementptr inbounds %struct.GPR, %struct.GPR* %8634, i32 0, i32 33
  %8636 = getelementptr inbounds %struct.Reg, %struct.Reg* %8635, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %8636 to i64*
  %8637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8638 = getelementptr inbounds %struct.GPR, %struct.GPR* %8637, i32 0, i32 1
  %8639 = getelementptr inbounds %struct.Reg, %struct.Reg* %8638, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %8639 to i64*
  %8640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8641 = getelementptr inbounds %struct.GPR, %struct.GPR* %8640, i32 0, i32 15
  %8642 = getelementptr inbounds %struct.Reg, %struct.Reg* %8641, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %8642 to i64*
  %8643 = load i64, i64* %RBP.i178
  %8644 = sub i64 %8643, 40
  %8645 = load i64, i64* %PC.i176
  %8646 = add i64 %8645, 4
  store i64 %8646, i64* %PC.i176
  %8647 = inttoptr i64 %8644 to i64*
  %8648 = load i64, i64* %8647
  store i64 %8648, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_429cea, %struct.Memory** %MEMORY
  %loadMem_429cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %8649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8650 = getelementptr inbounds %struct.GPR, %struct.GPR* %8649, i32 0, i32 33
  %8651 = getelementptr inbounds %struct.Reg, %struct.Reg* %8650, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %8651 to i64*
  %8652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8653 = getelementptr inbounds %struct.GPR, %struct.GPR* %8652, i32 0, i32 5
  %8654 = getelementptr inbounds %struct.Reg, %struct.Reg* %8653, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %8654 to i64*
  %8655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8656 = getelementptr inbounds %struct.GPR, %struct.GPR* %8655, i32 0, i32 15
  %8657 = getelementptr inbounds %struct.Reg, %struct.Reg* %8656, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %8657 to i64*
  %8658 = load i64, i64* %RBP.i175
  %8659 = sub i64 %8658, 44
  %8660 = load i64, i64* %PC.i173
  %8661 = add i64 %8660, 4
  store i64 %8661, i64* %PC.i173
  %8662 = inttoptr i64 %8659 to i32*
  %8663 = load i32, i32* %8662
  %8664 = sext i32 %8663 to i64
  store i64 %8664, i64* %RCX.i174, align 8
  store %struct.Memory* %loadMem_429cee, %struct.Memory** %MEMORY
  %loadMem_429cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8666 = getelementptr inbounds %struct.GPR, %struct.GPR* %8665, i32 0, i32 33
  %8667 = getelementptr inbounds %struct.Reg, %struct.Reg* %8666, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %8667 to i64*
  %8668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8669 = getelementptr inbounds %struct.GPR, %struct.GPR* %8668, i32 0, i32 1
  %8670 = getelementptr inbounds %struct.Reg, %struct.Reg* %8669, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %8670 to i64*
  %8671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8672 = getelementptr inbounds %struct.GPR, %struct.GPR* %8671, i32 0, i32 5
  %8673 = getelementptr inbounds %struct.Reg, %struct.Reg* %8672, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %8673 to i64*
  %8674 = load i64, i64* %RAX.i171
  %8675 = load i64, i64* %RCX.i172
  %8676 = mul i64 %8675, 8
  %8677 = add i64 %8676, %8674
  %8678 = load i64, i64* %PC.i170
  %8679 = add i64 %8678, 4
  store i64 %8679, i64* %PC.i170
  %8680 = inttoptr i64 %8677 to i64*
  %8681 = load i64, i64* %8680
  store i64 %8681, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_429cf2, %struct.Memory** %MEMORY
  %loadMem_429cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8683 = getelementptr inbounds %struct.GPR, %struct.GPR* %8682, i32 0, i32 33
  %8684 = getelementptr inbounds %struct.Reg, %struct.Reg* %8683, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %8684 to i64*
  %8685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8686 = getelementptr inbounds %struct.GPR, %struct.GPR* %8685, i32 0, i32 1
  %8687 = getelementptr inbounds %struct.Reg, %struct.Reg* %8686, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %8687 to i64*
  %8688 = load i64, i64* %RAX.i169
  %8689 = add i64 %8688, 8
  %8690 = load i64, i64* %PC.i168
  %8691 = add i64 %8690, 4
  store i64 %8691, i64* %PC.i168
  %8692 = inttoptr i64 %8689 to i64*
  %8693 = load i64, i64* %8692
  store i64 %8693, i64* %RAX.i169, align 8
  store %struct.Memory* %loadMem_429cf6, %struct.Memory** %MEMORY
  %loadMem_429cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %8694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8695 = getelementptr inbounds %struct.GPR, %struct.GPR* %8694, i32 0, i32 33
  %8696 = getelementptr inbounds %struct.Reg, %struct.Reg* %8695, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %8696 to i64*
  %8697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8698 = getelementptr inbounds %struct.GPR, %struct.GPR* %8697, i32 0, i32 5
  %8699 = getelementptr inbounds %struct.Reg, %struct.Reg* %8698, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %8699 to i64*
  %8700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8701 = getelementptr inbounds %struct.GPR, %struct.GPR* %8700, i32 0, i32 15
  %8702 = getelementptr inbounds %struct.Reg, %struct.Reg* %8701, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %8702 to i64*
  %8703 = load i64, i64* %RBP.i167
  %8704 = sub i64 %8703, 60
  %8705 = load i64, i64* %PC.i165
  %8706 = add i64 %8705, 4
  store i64 %8706, i64* %PC.i165
  %8707 = inttoptr i64 %8704 to i32*
  %8708 = load i32, i32* %8707
  %8709 = sext i32 %8708 to i64
  store i64 %8709, i64* %RCX.i166, align 8
  store %struct.Memory* %loadMem_429cfa, %struct.Memory** %MEMORY
  %loadMem_429cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %8710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8711 = getelementptr inbounds %struct.GPR, %struct.GPR* %8710, i32 0, i32 33
  %8712 = getelementptr inbounds %struct.Reg, %struct.Reg* %8711, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %8712 to i64*
  %8713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8714 = getelementptr inbounds %struct.GPR, %struct.GPR* %8713, i32 0, i32 1
  %8715 = getelementptr inbounds %struct.Reg, %struct.Reg* %8714, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %8715 to i64*
  %8716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8717 = getelementptr inbounds %struct.GPR, %struct.GPR* %8716, i32 0, i32 5
  %8718 = getelementptr inbounds %struct.Reg, %struct.Reg* %8717, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %8718 to i64*
  %8719 = load i64, i64* %RAX.i163
  %8720 = load i64, i64* %RCX.i164
  %8721 = add i64 %8720, %8719
  %8722 = load i64, i64* %PC.i162
  %8723 = add i64 %8722, 4
  store i64 %8723, i64* %PC.i162
  %8724 = inttoptr i64 %8721 to i8*
  store i8 8, i8* %8724
  store %struct.Memory* %loadMem_429cfe, %struct.Memory** %MEMORY
  %loadMem_429d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8726 = getelementptr inbounds %struct.GPR, %struct.GPR* %8725, i32 0, i32 33
  %8727 = getelementptr inbounds %struct.Reg, %struct.Reg* %8726, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %8727 to i64*
  %8728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8729 = getelementptr inbounds %struct.GPR, %struct.GPR* %8728, i32 0, i32 1
  %8730 = getelementptr inbounds %struct.Reg, %struct.Reg* %8729, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %8730 to i64*
  %8731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8732 = getelementptr inbounds %struct.GPR, %struct.GPR* %8731, i32 0, i32 15
  %8733 = getelementptr inbounds %struct.Reg, %struct.Reg* %8732, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %8733 to i64*
  %8734 = load i64, i64* %RBP.i161
  %8735 = sub i64 %8734, 40
  %8736 = load i64, i64* %PC.i159
  %8737 = add i64 %8736, 4
  store i64 %8737, i64* %PC.i159
  %8738 = inttoptr i64 %8735 to i64*
  %8739 = load i64, i64* %8738
  store i64 %8739, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_429d02, %struct.Memory** %MEMORY
  %loadMem_429d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8741 = getelementptr inbounds %struct.GPR, %struct.GPR* %8740, i32 0, i32 33
  %8742 = getelementptr inbounds %struct.Reg, %struct.Reg* %8741, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %8742 to i64*
  %8743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8744 = getelementptr inbounds %struct.GPR, %struct.GPR* %8743, i32 0, i32 5
  %8745 = getelementptr inbounds %struct.Reg, %struct.Reg* %8744, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %8745 to i64*
  %8746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8747 = getelementptr inbounds %struct.GPR, %struct.GPR* %8746, i32 0, i32 15
  %8748 = getelementptr inbounds %struct.Reg, %struct.Reg* %8747, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %8748 to i64*
  %8749 = load i64, i64* %RBP.i158
  %8750 = sub i64 %8749, 44
  %8751 = load i64, i64* %PC.i156
  %8752 = add i64 %8751, 4
  store i64 %8752, i64* %PC.i156
  %8753 = inttoptr i64 %8750 to i32*
  %8754 = load i32, i32* %8753
  %8755 = sext i32 %8754 to i64
  store i64 %8755, i64* %RCX.i157, align 8
  store %struct.Memory* %loadMem_429d06, %struct.Memory** %MEMORY
  %loadMem_429d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8757 = getelementptr inbounds %struct.GPR, %struct.GPR* %8756, i32 0, i32 33
  %8758 = getelementptr inbounds %struct.Reg, %struct.Reg* %8757, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %8758 to i64*
  %8759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8760 = getelementptr inbounds %struct.GPR, %struct.GPR* %8759, i32 0, i32 1
  %8761 = getelementptr inbounds %struct.Reg, %struct.Reg* %8760, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %8761 to i64*
  %8762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8763 = getelementptr inbounds %struct.GPR, %struct.GPR* %8762, i32 0, i32 5
  %8764 = getelementptr inbounds %struct.Reg, %struct.Reg* %8763, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %8764 to i64*
  %8765 = load i64, i64* %RAX.i154
  %8766 = load i64, i64* %RCX.i155
  %8767 = mul i64 %8766, 8
  %8768 = add i64 %8767, %8765
  %8769 = load i64, i64* %PC.i153
  %8770 = add i64 %8769, 4
  store i64 %8770, i64* %PC.i153
  %8771 = inttoptr i64 %8768 to i64*
  %8772 = load i64, i64* %8771
  store i64 %8772, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_429d0a, %struct.Memory** %MEMORY
  %loadMem_429d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8774 = getelementptr inbounds %struct.GPR, %struct.GPR* %8773, i32 0, i32 33
  %8775 = getelementptr inbounds %struct.Reg, %struct.Reg* %8774, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %8775 to i64*
  %8776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8777 = getelementptr inbounds %struct.GPR, %struct.GPR* %8776, i32 0, i32 1
  %8778 = getelementptr inbounds %struct.Reg, %struct.Reg* %8777, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %8778 to i64*
  %8779 = load i64, i64* %RAX.i152
  %8780 = add i64 %8779, 16
  %8781 = load i64, i64* %PC.i151
  %8782 = add i64 %8781, 4
  store i64 %8782, i64* %PC.i151
  %8783 = inttoptr i64 %8780 to i64*
  %8784 = load i64, i64* %8783
  store i64 %8784, i64* %RAX.i152, align 8
  store %struct.Memory* %loadMem_429d0e, %struct.Memory** %MEMORY
  %loadMem_429d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8786 = getelementptr inbounds %struct.GPR, %struct.GPR* %8785, i32 0, i32 33
  %8787 = getelementptr inbounds %struct.Reg, %struct.Reg* %8786, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %8787 to i64*
  %8788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8789 = getelementptr inbounds %struct.GPR, %struct.GPR* %8788, i32 0, i32 5
  %8790 = getelementptr inbounds %struct.Reg, %struct.Reg* %8789, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %8790 to i64*
  %8791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8792 = getelementptr inbounds %struct.GPR, %struct.GPR* %8791, i32 0, i32 15
  %8793 = getelementptr inbounds %struct.Reg, %struct.Reg* %8792, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %8793 to i64*
  %8794 = load i64, i64* %RBP.i150
  %8795 = sub i64 %8794, 60
  %8796 = load i64, i64* %PC.i148
  %8797 = add i64 %8796, 4
  store i64 %8797, i64* %PC.i148
  %8798 = inttoptr i64 %8795 to i32*
  %8799 = load i32, i32* %8798
  %8800 = sext i32 %8799 to i64
  store i64 %8800, i64* %RCX.i149, align 8
  store %struct.Memory* %loadMem_429d12, %struct.Memory** %MEMORY
  %loadMem_429d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8802 = getelementptr inbounds %struct.GPR, %struct.GPR* %8801, i32 0, i32 33
  %8803 = getelementptr inbounds %struct.Reg, %struct.Reg* %8802, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %8803 to i64*
  %8804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8805 = getelementptr inbounds %struct.GPR, %struct.GPR* %8804, i32 0, i32 1
  %8806 = getelementptr inbounds %struct.Reg, %struct.Reg* %8805, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %8806 to i64*
  %8807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8808 = getelementptr inbounds %struct.GPR, %struct.GPR* %8807, i32 0, i32 5
  %8809 = getelementptr inbounds %struct.Reg, %struct.Reg* %8808, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %8809 to i64*
  %8810 = load i64, i64* %RAX.i146
  %8811 = load i64, i64* %RCX.i147
  %8812 = mul i64 %8811, 4
  %8813 = add i64 %8812, %8810
  %8814 = load i64, i64* %PC.i145
  %8815 = add i64 %8814, 7
  store i64 %8815, i64* %PC.i145
  %8816 = inttoptr i64 %8813 to i32*
  store i32 0, i32* %8816
  store %struct.Memory* %loadMem_429d16, %struct.Memory** %MEMORY
  %loadMem_429d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8818 = getelementptr inbounds %struct.GPR, %struct.GPR* %8817, i32 0, i32 33
  %8819 = getelementptr inbounds %struct.Reg, %struct.Reg* %8818, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %8819 to i64*
  %8820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8821 = getelementptr inbounds %struct.GPR, %struct.GPR* %8820, i32 0, i32 1
  %8822 = getelementptr inbounds %struct.Reg, %struct.Reg* %8821, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %8822 to i64*
  %8823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8824 = getelementptr inbounds %struct.GPR, %struct.GPR* %8823, i32 0, i32 15
  %8825 = getelementptr inbounds %struct.Reg, %struct.Reg* %8824, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %8825 to i64*
  %8826 = load i64, i64* %RBP.i144
  %8827 = sub i64 %8826, 40
  %8828 = load i64, i64* %PC.i142
  %8829 = add i64 %8828, 4
  store i64 %8829, i64* %PC.i142
  %8830 = inttoptr i64 %8827 to i64*
  %8831 = load i64, i64* %8830
  store i64 %8831, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_429d1d, %struct.Memory** %MEMORY
  %loadMem_429d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8833 = getelementptr inbounds %struct.GPR, %struct.GPR* %8832, i32 0, i32 33
  %8834 = getelementptr inbounds %struct.Reg, %struct.Reg* %8833, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %8834 to i64*
  %8835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8836 = getelementptr inbounds %struct.GPR, %struct.GPR* %8835, i32 0, i32 5
  %8837 = getelementptr inbounds %struct.Reg, %struct.Reg* %8836, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %8837 to i64*
  %8838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8839 = getelementptr inbounds %struct.GPR, %struct.GPR* %8838, i32 0, i32 15
  %8840 = getelementptr inbounds %struct.Reg, %struct.Reg* %8839, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %8840 to i64*
  %8841 = load i64, i64* %RBP.i141
  %8842 = sub i64 %8841, 44
  %8843 = load i64, i64* %PC.i139
  %8844 = add i64 %8843, 4
  store i64 %8844, i64* %PC.i139
  %8845 = inttoptr i64 %8842 to i32*
  %8846 = load i32, i32* %8845
  %8847 = sext i32 %8846 to i64
  store i64 %8847, i64* %RCX.i140, align 8
  store %struct.Memory* %loadMem_429d21, %struct.Memory** %MEMORY
  %loadMem_429d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8849 = getelementptr inbounds %struct.GPR, %struct.GPR* %8848, i32 0, i32 33
  %8850 = getelementptr inbounds %struct.Reg, %struct.Reg* %8849, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %8850 to i64*
  %8851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8852 = getelementptr inbounds %struct.GPR, %struct.GPR* %8851, i32 0, i32 1
  %8853 = getelementptr inbounds %struct.Reg, %struct.Reg* %8852, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %8853 to i64*
  %8854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8855 = getelementptr inbounds %struct.GPR, %struct.GPR* %8854, i32 0, i32 5
  %8856 = getelementptr inbounds %struct.Reg, %struct.Reg* %8855, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %8856 to i64*
  %8857 = load i64, i64* %RAX.i137
  %8858 = load i64, i64* %RCX.i138
  %8859 = mul i64 %8858, 8
  %8860 = add i64 %8859, %8857
  %8861 = load i64, i64* %PC.i136
  %8862 = add i64 %8861, 4
  store i64 %8862, i64* %PC.i136
  %8863 = inttoptr i64 %8860 to i64*
  %8864 = load i64, i64* %8863
  store i64 %8864, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_429d25, %struct.Memory** %MEMORY
  %loadMem_429d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8866 = getelementptr inbounds %struct.GPR, %struct.GPR* %8865, i32 0, i32 33
  %8867 = getelementptr inbounds %struct.Reg, %struct.Reg* %8866, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %8867 to i64*
  %8868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8869 = getelementptr inbounds %struct.GPR, %struct.GPR* %8868, i32 0, i32 1
  %8870 = getelementptr inbounds %struct.Reg, %struct.Reg* %8869, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %8870 to i64*
  %8871 = load i64, i64* %RAX.i135
  %8872 = add i64 %8871, 24
  %8873 = load i64, i64* %PC.i134
  %8874 = add i64 %8873, 4
  store i64 %8874, i64* %PC.i134
  %8875 = inttoptr i64 %8872 to i64*
  %8876 = load i64, i64* %8875
  store i64 %8876, i64* %RAX.i135, align 8
  store %struct.Memory* %loadMem_429d29, %struct.Memory** %MEMORY
  %loadMem_429d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8878 = getelementptr inbounds %struct.GPR, %struct.GPR* %8877, i32 0, i32 33
  %8879 = getelementptr inbounds %struct.Reg, %struct.Reg* %8878, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %8879 to i64*
  %8880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8881 = getelementptr inbounds %struct.GPR, %struct.GPR* %8880, i32 0, i32 5
  %8882 = getelementptr inbounds %struct.Reg, %struct.Reg* %8881, i32 0, i32 0
  %RCX.i132 = bitcast %union.anon* %8882 to i64*
  %8883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8884 = getelementptr inbounds %struct.GPR, %struct.GPR* %8883, i32 0, i32 15
  %8885 = getelementptr inbounds %struct.Reg, %struct.Reg* %8884, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %8885 to i64*
  %8886 = load i64, i64* %RBP.i133
  %8887 = sub i64 %8886, 60
  %8888 = load i64, i64* %PC.i131
  %8889 = add i64 %8888, 4
  store i64 %8889, i64* %PC.i131
  %8890 = inttoptr i64 %8887 to i32*
  %8891 = load i32, i32* %8890
  %8892 = sext i32 %8891 to i64
  store i64 %8892, i64* %RCX.i132, align 8
  store %struct.Memory* %loadMem_429d2d, %struct.Memory** %MEMORY
  %loadMem_429d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8894 = getelementptr inbounds %struct.GPR, %struct.GPR* %8893, i32 0, i32 33
  %8895 = getelementptr inbounds %struct.Reg, %struct.Reg* %8894, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %8895 to i64*
  %8896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8897 = getelementptr inbounds %struct.GPR, %struct.GPR* %8896, i32 0, i32 1
  %8898 = getelementptr inbounds %struct.Reg, %struct.Reg* %8897, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %8898 to i64*
  %8899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8900 = getelementptr inbounds %struct.GPR, %struct.GPR* %8899, i32 0, i32 5
  %8901 = getelementptr inbounds %struct.Reg, %struct.Reg* %8900, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %8901 to i64*
  %8902 = load i64, i64* %RAX.i129
  %8903 = load i64, i64* %RCX.i130
  %8904 = mul i64 %8903, 4
  %8905 = add i64 %8904, %8902
  %8906 = load i64, i64* %PC.i128
  %8907 = add i64 %8906, 7
  store i64 %8907, i64* %PC.i128
  %8908 = inttoptr i64 %8905 to i32*
  store i32 0, i32* %8908
  store %struct.Memory* %loadMem_429d31, %struct.Memory** %MEMORY
  %loadMem_429d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8910 = getelementptr inbounds %struct.GPR, %struct.GPR* %8909, i32 0, i32 33
  %8911 = getelementptr inbounds %struct.Reg, %struct.Reg* %8910, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %8911 to i64*
  %8912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8913 = getelementptr inbounds %struct.GPR, %struct.GPR* %8912, i32 0, i32 7
  %8914 = getelementptr inbounds %struct.Reg, %struct.Reg* %8913, i32 0, i32 0
  %RDX.i126 = bitcast %union.anon* %8914 to i64*
  %8915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8916 = getelementptr inbounds %struct.GPR, %struct.GPR* %8915, i32 0, i32 15
  %8917 = getelementptr inbounds %struct.Reg, %struct.Reg* %8916, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %8917 to i64*
  %8918 = load i64, i64* %RBP.i127
  %8919 = sub i64 %8918, 60
  %8920 = load i64, i64* %PC.i125
  %8921 = add i64 %8920, 3
  store i64 %8921, i64* %PC.i125
  %8922 = inttoptr i64 %8919 to i32*
  %8923 = load i32, i32* %8922
  %8924 = zext i32 %8923 to i64
  store i64 %8924, i64* %RDX.i126, align 8
  store %struct.Memory* %loadMem_429d38, %struct.Memory** %MEMORY
  %loadMem_429d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8926 = getelementptr inbounds %struct.GPR, %struct.GPR* %8925, i32 0, i32 33
  %8927 = getelementptr inbounds %struct.Reg, %struct.Reg* %8926, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %8927 to i64*
  %8928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8929 = getelementptr inbounds %struct.GPR, %struct.GPR* %8928, i32 0, i32 7
  %8930 = getelementptr inbounds %struct.Reg, %struct.Reg* %8929, i32 0, i32 0
  %RDX.i124 = bitcast %union.anon* %8930 to i64*
  %8931 = load i64, i64* %RDX.i124
  %8932 = load i64, i64* %PC.i123
  %8933 = add i64 %8932, 3
  store i64 %8933, i64* %PC.i123
  %8934 = trunc i64 %8931 to i32
  %8935 = add i32 1, %8934
  %8936 = zext i32 %8935 to i64
  store i64 %8936, i64* %RDX.i124, align 8
  %8937 = icmp ult i32 %8935, %8934
  %8938 = icmp ult i32 %8935, 1
  %8939 = or i1 %8937, %8938
  %8940 = zext i1 %8939 to i8
  %8941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8940, i8* %8941, align 1
  %8942 = and i32 %8935, 255
  %8943 = call i32 @llvm.ctpop.i32(i32 %8942)
  %8944 = trunc i32 %8943 to i8
  %8945 = and i8 %8944, 1
  %8946 = xor i8 %8945, 1
  %8947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8946, i8* %8947, align 1
  %8948 = xor i64 1, %8931
  %8949 = trunc i64 %8948 to i32
  %8950 = xor i32 %8949, %8935
  %8951 = lshr i32 %8950, 4
  %8952 = trunc i32 %8951 to i8
  %8953 = and i8 %8952, 1
  %8954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8953, i8* %8954, align 1
  %8955 = icmp eq i32 %8935, 0
  %8956 = zext i1 %8955 to i8
  %8957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8956, i8* %8957, align 1
  %8958 = lshr i32 %8935, 31
  %8959 = trunc i32 %8958 to i8
  %8960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8959, i8* %8960, align 1
  %8961 = lshr i32 %8934, 31
  %8962 = xor i32 %8958, %8961
  %8963 = add i32 %8962, %8958
  %8964 = icmp eq i32 %8963, 2
  %8965 = zext i1 %8964 to i8
  %8966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8965, i8* %8966, align 1
  store %struct.Memory* %loadMem_429d3b, %struct.Memory** %MEMORY
  %loadMem_429d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8968 = getelementptr inbounds %struct.GPR, %struct.GPR* %8967, i32 0, i32 33
  %8969 = getelementptr inbounds %struct.Reg, %struct.Reg* %8968, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %8969 to i64*
  %8970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8971 = getelementptr inbounds %struct.GPR, %struct.GPR* %8970, i32 0, i32 7
  %8972 = getelementptr inbounds %struct.Reg, %struct.Reg* %8971, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %8972 to i32*
  %8973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8974 = getelementptr inbounds %struct.GPR, %struct.GPR* %8973, i32 0, i32 15
  %8975 = getelementptr inbounds %struct.Reg, %struct.Reg* %8974, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %8975 to i64*
  %8976 = load i64, i64* %RBP.i122
  %8977 = sub i64 %8976, 60
  %8978 = load i32, i32* %EDX.i
  %8979 = zext i32 %8978 to i64
  %8980 = load i64, i64* %PC.i121
  %8981 = add i64 %8980, 3
  store i64 %8981, i64* %PC.i121
  %8982 = inttoptr i64 %8977 to i32*
  store i32 %8978, i32* %8982
  store %struct.Memory* %loadMem_429d3e, %struct.Memory** %MEMORY
  br label %block_.L_429d41

block_.L_429d41:                                  ; preds = %block_.L_429c93, %block_.L_429c3e
  %loadMem_429d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8984 = getelementptr inbounds %struct.GPR, %struct.GPR* %8983, i32 0, i32 33
  %8985 = getelementptr inbounds %struct.Reg, %struct.Reg* %8984, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %8985 to i64*
  %8986 = load i64, i64* %PC.i120
  %8987 = add i64 %8986, 5
  %8988 = load i64, i64* %PC.i120
  %8989 = add i64 %8988, 5
  store i64 %8989, i64* %PC.i120
  %8990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8987, i64* %8990, align 8
  store %struct.Memory* %loadMem_429d41, %struct.Memory** %MEMORY
  br label %block_.L_429d46

block_.L_429d46:                                  ; preds = %block_.L_429d41
  %loadMem_429d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8992 = getelementptr inbounds %struct.GPR, %struct.GPR* %8991, i32 0, i32 33
  %8993 = getelementptr inbounds %struct.Reg, %struct.Reg* %8992, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %8993 to i64*
  %8994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8995 = getelementptr inbounds %struct.GPR, %struct.GPR* %8994, i32 0, i32 1
  %8996 = getelementptr inbounds %struct.Reg, %struct.Reg* %8995, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %8996 to i64*
  %8997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8998 = getelementptr inbounds %struct.GPR, %struct.GPR* %8997, i32 0, i32 15
  %8999 = getelementptr inbounds %struct.Reg, %struct.Reg* %8998, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %8999 to i64*
  %9000 = load i64, i64* %RBP.i119
  %9001 = sub i64 %9000, 56
  %9002 = load i64, i64* %PC.i117
  %9003 = add i64 %9002, 3
  store i64 %9003, i64* %PC.i117
  %9004 = inttoptr i64 %9001 to i32*
  %9005 = load i32, i32* %9004
  %9006 = zext i32 %9005 to i64
  store i64 %9006, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_429d46, %struct.Memory** %MEMORY
  %loadMem_429d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9008 = getelementptr inbounds %struct.GPR, %struct.GPR* %9007, i32 0, i32 33
  %9009 = getelementptr inbounds %struct.Reg, %struct.Reg* %9008, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %9009 to i64*
  %9010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9011 = getelementptr inbounds %struct.GPR, %struct.GPR* %9010, i32 0, i32 1
  %9012 = getelementptr inbounds %struct.Reg, %struct.Reg* %9011, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %9012 to i64*
  %9013 = load i64, i64* %RAX.i116
  %9014 = load i64, i64* %PC.i115
  %9015 = add i64 %9014, 3
  store i64 %9015, i64* %PC.i115
  %9016 = trunc i64 %9013 to i32
  %9017 = add i32 1, %9016
  %9018 = zext i32 %9017 to i64
  store i64 %9018, i64* %RAX.i116, align 8
  %9019 = icmp ult i32 %9017, %9016
  %9020 = icmp ult i32 %9017, 1
  %9021 = or i1 %9019, %9020
  %9022 = zext i1 %9021 to i8
  %9023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9022, i8* %9023, align 1
  %9024 = and i32 %9017, 255
  %9025 = call i32 @llvm.ctpop.i32(i32 %9024)
  %9026 = trunc i32 %9025 to i8
  %9027 = and i8 %9026, 1
  %9028 = xor i8 %9027, 1
  %9029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9028, i8* %9029, align 1
  %9030 = xor i64 1, %9013
  %9031 = trunc i64 %9030 to i32
  %9032 = xor i32 %9031, %9017
  %9033 = lshr i32 %9032, 4
  %9034 = trunc i32 %9033 to i8
  %9035 = and i8 %9034, 1
  %9036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9035, i8* %9036, align 1
  %9037 = icmp eq i32 %9017, 0
  %9038 = zext i1 %9037 to i8
  %9039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9038, i8* %9039, align 1
  %9040 = lshr i32 %9017, 31
  %9041 = trunc i32 %9040 to i8
  %9042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9041, i8* %9042, align 1
  %9043 = lshr i32 %9016, 31
  %9044 = xor i32 %9040, %9043
  %9045 = add i32 %9044, %9040
  %9046 = icmp eq i32 %9045, 2
  %9047 = zext i1 %9046 to i8
  %9048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9047, i8* %9048, align 1
  store %struct.Memory* %loadMem_429d49, %struct.Memory** %MEMORY
  %loadMem_429d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9050 = getelementptr inbounds %struct.GPR, %struct.GPR* %9049, i32 0, i32 33
  %9051 = getelementptr inbounds %struct.Reg, %struct.Reg* %9050, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %9051 to i64*
  %9052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9053 = getelementptr inbounds %struct.GPR, %struct.GPR* %9052, i32 0, i32 1
  %9054 = getelementptr inbounds %struct.Reg, %struct.Reg* %9053, i32 0, i32 0
  %EAX.i113 = bitcast %union.anon* %9054 to i32*
  %9055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9056 = getelementptr inbounds %struct.GPR, %struct.GPR* %9055, i32 0, i32 15
  %9057 = getelementptr inbounds %struct.Reg, %struct.Reg* %9056, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %9057 to i64*
  %9058 = load i64, i64* %RBP.i114
  %9059 = sub i64 %9058, 56
  %9060 = load i32, i32* %EAX.i113
  %9061 = zext i32 %9060 to i64
  %9062 = load i64, i64* %PC.i112
  %9063 = add i64 %9062, 3
  store i64 %9063, i64* %PC.i112
  %9064 = inttoptr i64 %9059 to i32*
  store i32 %9060, i32* %9064
  store %struct.Memory* %loadMem_429d4c, %struct.Memory** %MEMORY
  %loadMem_429d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9066 = getelementptr inbounds %struct.GPR, %struct.GPR* %9065, i32 0, i32 33
  %9067 = getelementptr inbounds %struct.Reg, %struct.Reg* %9066, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %9067 to i64*
  %9068 = load i64, i64* %PC.i111
  %9069 = add i64 %9068, -1676
  %9070 = load i64, i64* %PC.i111
  %9071 = add i64 %9070, 5
  store i64 %9071, i64* %PC.i111
  %9072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9069, i64* %9072, align 8
  store %struct.Memory* %loadMem_429d4f, %struct.Memory** %MEMORY
  br label %block_.L_4296c3

block_.L_429d54:                                  ; preds = %block_.L_4296c3
  %loadMem_429d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9074 = getelementptr inbounds %struct.GPR, %struct.GPR* %9073, i32 0, i32 33
  %9075 = getelementptr inbounds %struct.Reg, %struct.Reg* %9074, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %9075 to i64*
  %9076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9077 = getelementptr inbounds %struct.GPR, %struct.GPR* %9076, i32 0, i32 1
  %9078 = getelementptr inbounds %struct.Reg, %struct.Reg* %9077, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %9078 to i32*
  %9079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9080 = getelementptr inbounds %struct.GPR, %struct.GPR* %9079, i32 0, i32 1
  %9081 = getelementptr inbounds %struct.Reg, %struct.Reg* %9080, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %9081 to i64*
  %9082 = load i64, i64* %RAX.i110
  %9083 = load i32, i32* %EAX.i109
  %9084 = zext i32 %9083 to i64
  %9085 = load i64, i64* %PC.i108
  %9086 = add i64 %9085, 2
  store i64 %9086, i64* %PC.i108
  %9087 = xor i64 %9084, %9082
  %9088 = trunc i64 %9087 to i32
  %9089 = and i64 %9087, 4294967295
  store i64 %9089, i64* %RAX.i110, align 8
  %9090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9090, align 1
  %9091 = and i32 %9088, 255
  %9092 = call i32 @llvm.ctpop.i32(i32 %9091)
  %9093 = trunc i32 %9092 to i8
  %9094 = and i8 %9093, 1
  %9095 = xor i8 %9094, 1
  %9096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9095, i8* %9096, align 1
  %9097 = icmp eq i32 %9088, 0
  %9098 = zext i1 %9097 to i8
  %9099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9098, i8* %9099, align 1
  %9100 = lshr i32 %9088, 31
  %9101 = trunc i32 %9100 to i8
  %9102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9101, i8* %9102, align 1
  %9103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9103, align 1
  %9104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %9104, align 1
  store %struct.Memory* %loadMem_429d54, %struct.Memory** %MEMORY
  %loadMem_429d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9106 = getelementptr inbounds %struct.GPR, %struct.GPR* %9105, i32 0, i32 33
  %9107 = getelementptr inbounds %struct.Reg, %struct.Reg* %9106, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %9107 to i64*
  %9108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9109 = getelementptr inbounds %struct.GPR, %struct.GPR* %9108, i32 0, i32 1
  %9110 = getelementptr inbounds %struct.Reg, %struct.Reg* %9109, i32 0, i32 0
  %EAX.i106 = bitcast %union.anon* %9110 to i32*
  %9111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9112 = getelementptr inbounds %struct.GPR, %struct.GPR* %9111, i32 0, i32 5
  %9113 = getelementptr inbounds %struct.Reg, %struct.Reg* %9112, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %9113 to i64*
  %9114 = load i32, i32* %EAX.i106
  %9115 = zext i32 %9114 to i64
  %9116 = load i64, i64* %PC.i105
  %9117 = add i64 %9116, 2
  store i64 %9117, i64* %PC.i105
  %9118 = and i64 %9115, 4294967295
  store i64 %9118, i64* %RCX.i107, align 8
  store %struct.Memory* %loadMem_429d56, %struct.Memory** %MEMORY
  %loadMem_429d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9120 = getelementptr inbounds %struct.GPR, %struct.GPR* %9119, i32 0, i32 33
  %9121 = getelementptr inbounds %struct.Reg, %struct.Reg* %9120, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %9121 to i64*
  %9122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9123 = getelementptr inbounds %struct.GPR, %struct.GPR* %9122, i32 0, i32 7
  %9124 = getelementptr inbounds %struct.Reg, %struct.Reg* %9123, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %9124 to i64*
  %9125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9126 = getelementptr inbounds %struct.GPR, %struct.GPR* %9125, i32 0, i32 15
  %9127 = getelementptr inbounds %struct.Reg, %struct.Reg* %9126, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %9127 to i64*
  %9128 = load i64, i64* %RBP.i104
  %9129 = sub i64 %9128, 40
  %9130 = load i64, i64* %PC.i102
  %9131 = add i64 %9130, 4
  store i64 %9131, i64* %PC.i102
  %9132 = inttoptr i64 %9129 to i64*
  %9133 = load i64, i64* %9132
  store i64 %9133, i64* %RDX.i103, align 8
  store %struct.Memory* %loadMem_429d58, %struct.Memory** %MEMORY
  %loadMem_429d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9135 = getelementptr inbounds %struct.GPR, %struct.GPR* %9134, i32 0, i32 33
  %9136 = getelementptr inbounds %struct.Reg, %struct.Reg* %9135, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %9136 to i64*
  %9137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9138 = getelementptr inbounds %struct.GPR, %struct.GPR* %9137, i32 0, i32 9
  %9139 = getelementptr inbounds %struct.Reg, %struct.Reg* %9138, i32 0, i32 0
  %RSI.i100 = bitcast %union.anon* %9139 to i64*
  %9140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9141 = getelementptr inbounds %struct.GPR, %struct.GPR* %9140, i32 0, i32 15
  %9142 = getelementptr inbounds %struct.Reg, %struct.Reg* %9141, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %9142 to i64*
  %9143 = load i64, i64* %RBP.i101
  %9144 = sub i64 %9143, 44
  %9145 = load i64, i64* %PC.i99
  %9146 = add i64 %9145, 4
  store i64 %9146, i64* %PC.i99
  %9147 = inttoptr i64 %9144 to i32*
  %9148 = load i32, i32* %9147
  %9149 = sext i32 %9148 to i64
  store i64 %9149, i64* %RSI.i100, align 8
  store %struct.Memory* %loadMem_429d5c, %struct.Memory** %MEMORY
  %loadMem_429d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9151 = getelementptr inbounds %struct.GPR, %struct.GPR* %9150, i32 0, i32 33
  %9152 = getelementptr inbounds %struct.Reg, %struct.Reg* %9151, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %9152 to i64*
  %9153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9154 = getelementptr inbounds %struct.GPR, %struct.GPR* %9153, i32 0, i32 7
  %9155 = getelementptr inbounds %struct.Reg, %struct.Reg* %9154, i32 0, i32 0
  %RDX.i97 = bitcast %union.anon* %9155 to i64*
  %9156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9157 = getelementptr inbounds %struct.GPR, %struct.GPR* %9156, i32 0, i32 9
  %9158 = getelementptr inbounds %struct.Reg, %struct.Reg* %9157, i32 0, i32 0
  %RSI.i98 = bitcast %union.anon* %9158 to i64*
  %9159 = load i64, i64* %RDX.i97
  %9160 = load i64, i64* %RSI.i98
  %9161 = mul i64 %9160, 8
  %9162 = add i64 %9161, %9159
  %9163 = load i64, i64* %PC.i96
  %9164 = add i64 %9163, 4
  store i64 %9164, i64* %PC.i96
  %9165 = inttoptr i64 %9162 to i64*
  %9166 = load i64, i64* %9165
  store i64 %9166, i64* %RDX.i97, align 8
  store %struct.Memory* %loadMem_429d60, %struct.Memory** %MEMORY
  %loadMem_429d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9168 = getelementptr inbounds %struct.GPR, %struct.GPR* %9167, i32 0, i32 33
  %9169 = getelementptr inbounds %struct.Reg, %struct.Reg* %9168, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %9169 to i64*
  %9170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9171 = getelementptr inbounds %struct.GPR, %struct.GPR* %9170, i32 0, i32 7
  %9172 = getelementptr inbounds %struct.Reg, %struct.Reg* %9171, i32 0, i32 0
  %RDX.i95 = bitcast %union.anon* %9172 to i64*
  %9173 = load i64, i64* %RDX.i95
  %9174 = add i64 %9173, 8
  %9175 = load i64, i64* %PC.i94
  %9176 = add i64 %9175, 4
  store i64 %9176, i64* %PC.i94
  %9177 = inttoptr i64 %9174 to i64*
  %9178 = load i64, i64* %9177
  store i64 %9178, i64* %RDX.i95, align 8
  store %struct.Memory* %loadMem_429d64, %struct.Memory** %MEMORY
  %loadMem_429d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9180 = getelementptr inbounds %struct.GPR, %struct.GPR* %9179, i32 0, i32 33
  %9181 = getelementptr inbounds %struct.Reg, %struct.Reg* %9180, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %9181 to i64*
  %9182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9183 = getelementptr inbounds %struct.GPR, %struct.GPR* %9182, i32 0, i32 9
  %9184 = getelementptr inbounds %struct.Reg, %struct.Reg* %9183, i32 0, i32 0
  %RSI.i92 = bitcast %union.anon* %9184 to i64*
  %9185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9186 = getelementptr inbounds %struct.GPR, %struct.GPR* %9185, i32 0, i32 15
  %9187 = getelementptr inbounds %struct.Reg, %struct.Reg* %9186, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %9187 to i64*
  %9188 = load i64, i64* %RBP.i93
  %9189 = sub i64 %9188, 60
  %9190 = load i64, i64* %PC.i91
  %9191 = add i64 %9190, 4
  store i64 %9191, i64* %PC.i91
  %9192 = inttoptr i64 %9189 to i32*
  %9193 = load i32, i32* %9192
  %9194 = sext i32 %9193 to i64
  store i64 %9194, i64* %RSI.i92, align 8
  store %struct.Memory* %loadMem_429d68, %struct.Memory** %MEMORY
  %loadMem_429d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9196 = getelementptr inbounds %struct.GPR, %struct.GPR* %9195, i32 0, i32 33
  %9197 = getelementptr inbounds %struct.Reg, %struct.Reg* %9196, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %9197 to i64*
  %9198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9199 = getelementptr inbounds %struct.GPR, %struct.GPR* %9198, i32 0, i32 7
  %9200 = getelementptr inbounds %struct.Reg, %struct.Reg* %9199, i32 0, i32 0
  %RDX.i89 = bitcast %union.anon* %9200 to i64*
  %9201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9202 = getelementptr inbounds %struct.GPR, %struct.GPR* %9201, i32 0, i32 9
  %9203 = getelementptr inbounds %struct.Reg, %struct.Reg* %9202, i32 0, i32 0
  %RSI.i90 = bitcast %union.anon* %9203 to i64*
  %9204 = load i64, i64* %RDX.i89
  %9205 = load i64, i64* %RSI.i90
  %9206 = add i64 %9205, %9204
  %9207 = load i64, i64* %PC.i88
  %9208 = add i64 %9207, 4
  store i64 %9208, i64* %PC.i88
  %9209 = inttoptr i64 %9206 to i8*
  store i8 9, i8* %9209
  store %struct.Memory* %loadMem_429d6c, %struct.Memory** %MEMORY
  %loadMem_429d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9211 = getelementptr inbounds %struct.GPR, %struct.GPR* %9210, i32 0, i32 33
  %9212 = getelementptr inbounds %struct.Reg, %struct.Reg* %9211, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %9212 to i64*
  %9213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9214 = getelementptr inbounds %struct.GPR, %struct.GPR* %9213, i32 0, i32 7
  %9215 = getelementptr inbounds %struct.Reg, %struct.Reg* %9214, i32 0, i32 0
  %RDX.i86 = bitcast %union.anon* %9215 to i64*
  %9216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9217 = getelementptr inbounds %struct.GPR, %struct.GPR* %9216, i32 0, i32 15
  %9218 = getelementptr inbounds %struct.Reg, %struct.Reg* %9217, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %9218 to i64*
  %9219 = load i64, i64* %RBP.i87
  %9220 = sub i64 %9219, 40
  %9221 = load i64, i64* %PC.i85
  %9222 = add i64 %9221, 4
  store i64 %9222, i64* %PC.i85
  %9223 = inttoptr i64 %9220 to i64*
  %9224 = load i64, i64* %9223
  store i64 %9224, i64* %RDX.i86, align 8
  store %struct.Memory* %loadMem_429d70, %struct.Memory** %MEMORY
  %loadMem_429d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9226 = getelementptr inbounds %struct.GPR, %struct.GPR* %9225, i32 0, i32 33
  %9227 = getelementptr inbounds %struct.Reg, %struct.Reg* %9226, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %9227 to i64*
  %9228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9229 = getelementptr inbounds %struct.GPR, %struct.GPR* %9228, i32 0, i32 9
  %9230 = getelementptr inbounds %struct.Reg, %struct.Reg* %9229, i32 0, i32 0
  %RSI.i83 = bitcast %union.anon* %9230 to i64*
  %9231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9232 = getelementptr inbounds %struct.GPR, %struct.GPR* %9231, i32 0, i32 15
  %9233 = getelementptr inbounds %struct.Reg, %struct.Reg* %9232, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %9233 to i64*
  %9234 = load i64, i64* %RBP.i84
  %9235 = sub i64 %9234, 44
  %9236 = load i64, i64* %PC.i82
  %9237 = add i64 %9236, 4
  store i64 %9237, i64* %PC.i82
  %9238 = inttoptr i64 %9235 to i32*
  %9239 = load i32, i32* %9238
  %9240 = sext i32 %9239 to i64
  store i64 %9240, i64* %RSI.i83, align 8
  store %struct.Memory* %loadMem_429d74, %struct.Memory** %MEMORY
  %loadMem_429d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9242 = getelementptr inbounds %struct.GPR, %struct.GPR* %9241, i32 0, i32 33
  %9243 = getelementptr inbounds %struct.Reg, %struct.Reg* %9242, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %9243 to i64*
  %9244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9245 = getelementptr inbounds %struct.GPR, %struct.GPR* %9244, i32 0, i32 7
  %9246 = getelementptr inbounds %struct.Reg, %struct.Reg* %9245, i32 0, i32 0
  %RDX.i80 = bitcast %union.anon* %9246 to i64*
  %9247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9248 = getelementptr inbounds %struct.GPR, %struct.GPR* %9247, i32 0, i32 9
  %9249 = getelementptr inbounds %struct.Reg, %struct.Reg* %9248, i32 0, i32 0
  %RSI.i81 = bitcast %union.anon* %9249 to i64*
  %9250 = load i64, i64* %RDX.i80
  %9251 = load i64, i64* %RSI.i81
  %9252 = mul i64 %9251, 8
  %9253 = add i64 %9252, %9250
  %9254 = load i64, i64* %PC.i79
  %9255 = add i64 %9254, 4
  store i64 %9255, i64* %PC.i79
  %9256 = inttoptr i64 %9253 to i64*
  %9257 = load i64, i64* %9256
  store i64 %9257, i64* %RDX.i80, align 8
  store %struct.Memory* %loadMem_429d78, %struct.Memory** %MEMORY
  %loadMem_429d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9259 = getelementptr inbounds %struct.GPR, %struct.GPR* %9258, i32 0, i32 33
  %9260 = getelementptr inbounds %struct.Reg, %struct.Reg* %9259, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %9260 to i64*
  %9261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9262 = getelementptr inbounds %struct.GPR, %struct.GPR* %9261, i32 0, i32 7
  %9263 = getelementptr inbounds %struct.Reg, %struct.Reg* %9262, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %9263 to i64*
  %9264 = load i64, i64* %RDX.i78
  %9265 = add i64 %9264, 16
  %9266 = load i64, i64* %PC.i77
  %9267 = add i64 %9266, 4
  store i64 %9267, i64* %PC.i77
  %9268 = inttoptr i64 %9265 to i64*
  %9269 = load i64, i64* %9268
  store i64 %9269, i64* %RDX.i78, align 8
  store %struct.Memory* %loadMem_429d7c, %struct.Memory** %MEMORY
  %loadMem_429d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9271 = getelementptr inbounds %struct.GPR, %struct.GPR* %9270, i32 0, i32 33
  %9272 = getelementptr inbounds %struct.Reg, %struct.Reg* %9271, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %9272 to i64*
  %9273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9274 = getelementptr inbounds %struct.GPR, %struct.GPR* %9273, i32 0, i32 9
  %9275 = getelementptr inbounds %struct.Reg, %struct.Reg* %9274, i32 0, i32 0
  %RSI.i75 = bitcast %union.anon* %9275 to i64*
  %9276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9277 = getelementptr inbounds %struct.GPR, %struct.GPR* %9276, i32 0, i32 15
  %9278 = getelementptr inbounds %struct.Reg, %struct.Reg* %9277, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %9278 to i64*
  %9279 = load i64, i64* %RBP.i76
  %9280 = sub i64 %9279, 60
  %9281 = load i64, i64* %PC.i74
  %9282 = add i64 %9281, 4
  store i64 %9282, i64* %PC.i74
  %9283 = inttoptr i64 %9280 to i32*
  %9284 = load i32, i32* %9283
  %9285 = sext i32 %9284 to i64
  store i64 %9285, i64* %RSI.i75, align 8
  store %struct.Memory* %loadMem_429d80, %struct.Memory** %MEMORY
  %loadMem_429d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9287 = getelementptr inbounds %struct.GPR, %struct.GPR* %9286, i32 0, i32 33
  %9288 = getelementptr inbounds %struct.Reg, %struct.Reg* %9287, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %9288 to i64*
  %9289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9290 = getelementptr inbounds %struct.GPR, %struct.GPR* %9289, i32 0, i32 7
  %9291 = getelementptr inbounds %struct.Reg, %struct.Reg* %9290, i32 0, i32 0
  %RDX.i72 = bitcast %union.anon* %9291 to i64*
  %9292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9293 = getelementptr inbounds %struct.GPR, %struct.GPR* %9292, i32 0, i32 9
  %9294 = getelementptr inbounds %struct.Reg, %struct.Reg* %9293, i32 0, i32 0
  %RSI.i73 = bitcast %union.anon* %9294 to i64*
  %9295 = load i64, i64* %RDX.i72
  %9296 = load i64, i64* %RSI.i73
  %9297 = mul i64 %9296, 4
  %9298 = add i64 %9297, %9295
  %9299 = load i64, i64* %PC.i71
  %9300 = add i64 %9299, 7
  store i64 %9300, i64* %PC.i71
  %9301 = inttoptr i64 %9298 to i32*
  store i32 0, i32* %9301
  store %struct.Memory* %loadMem_429d84, %struct.Memory** %MEMORY
  %loadMem_429d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9303 = getelementptr inbounds %struct.GPR, %struct.GPR* %9302, i32 0, i32 33
  %9304 = getelementptr inbounds %struct.Reg, %struct.Reg* %9303, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %9304 to i64*
  %9305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9306 = getelementptr inbounds %struct.GPR, %struct.GPR* %9305, i32 0, i32 7
  %9307 = getelementptr inbounds %struct.Reg, %struct.Reg* %9306, i32 0, i32 0
  %RDX.i69 = bitcast %union.anon* %9307 to i64*
  %9308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9309 = getelementptr inbounds %struct.GPR, %struct.GPR* %9308, i32 0, i32 15
  %9310 = getelementptr inbounds %struct.Reg, %struct.Reg* %9309, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %9310 to i64*
  %9311 = load i64, i64* %RBP.i70
  %9312 = sub i64 %9311, 40
  %9313 = load i64, i64* %PC.i68
  %9314 = add i64 %9313, 4
  store i64 %9314, i64* %PC.i68
  %9315 = inttoptr i64 %9312 to i64*
  %9316 = load i64, i64* %9315
  store i64 %9316, i64* %RDX.i69, align 8
  store %struct.Memory* %loadMem_429d8b, %struct.Memory** %MEMORY
  %loadMem_429d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9318 = getelementptr inbounds %struct.GPR, %struct.GPR* %9317, i32 0, i32 33
  %9319 = getelementptr inbounds %struct.Reg, %struct.Reg* %9318, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %9319 to i64*
  %9320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9321 = getelementptr inbounds %struct.GPR, %struct.GPR* %9320, i32 0, i32 9
  %9322 = getelementptr inbounds %struct.Reg, %struct.Reg* %9321, i32 0, i32 0
  %RSI.i66 = bitcast %union.anon* %9322 to i64*
  %9323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9324 = getelementptr inbounds %struct.GPR, %struct.GPR* %9323, i32 0, i32 15
  %9325 = getelementptr inbounds %struct.Reg, %struct.Reg* %9324, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %9325 to i64*
  %9326 = load i64, i64* %RBP.i67
  %9327 = sub i64 %9326, 44
  %9328 = load i64, i64* %PC.i65
  %9329 = add i64 %9328, 4
  store i64 %9329, i64* %PC.i65
  %9330 = inttoptr i64 %9327 to i32*
  %9331 = load i32, i32* %9330
  %9332 = sext i32 %9331 to i64
  store i64 %9332, i64* %RSI.i66, align 8
  store %struct.Memory* %loadMem_429d8f, %struct.Memory** %MEMORY
  %loadMem_429d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9334 = getelementptr inbounds %struct.GPR, %struct.GPR* %9333, i32 0, i32 33
  %9335 = getelementptr inbounds %struct.Reg, %struct.Reg* %9334, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %9335 to i64*
  %9336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9337 = getelementptr inbounds %struct.GPR, %struct.GPR* %9336, i32 0, i32 7
  %9338 = getelementptr inbounds %struct.Reg, %struct.Reg* %9337, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %9338 to i64*
  %9339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9340 = getelementptr inbounds %struct.GPR, %struct.GPR* %9339, i32 0, i32 9
  %9341 = getelementptr inbounds %struct.Reg, %struct.Reg* %9340, i32 0, i32 0
  %RSI.i64 = bitcast %union.anon* %9341 to i64*
  %9342 = load i64, i64* %RDX.i63
  %9343 = load i64, i64* %RSI.i64
  %9344 = mul i64 %9343, 8
  %9345 = add i64 %9344, %9342
  %9346 = load i64, i64* %PC.i62
  %9347 = add i64 %9346, 4
  store i64 %9347, i64* %PC.i62
  %9348 = inttoptr i64 %9345 to i64*
  %9349 = load i64, i64* %9348
  store i64 %9349, i64* %RDX.i63, align 8
  store %struct.Memory* %loadMem_429d93, %struct.Memory** %MEMORY
  %loadMem_429d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9351 = getelementptr inbounds %struct.GPR, %struct.GPR* %9350, i32 0, i32 33
  %9352 = getelementptr inbounds %struct.Reg, %struct.Reg* %9351, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %9352 to i64*
  %9353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9354 = getelementptr inbounds %struct.GPR, %struct.GPR* %9353, i32 0, i32 7
  %9355 = getelementptr inbounds %struct.Reg, %struct.Reg* %9354, i32 0, i32 0
  %RDX.i61 = bitcast %union.anon* %9355 to i64*
  %9356 = load i64, i64* %RDX.i61
  %9357 = add i64 %9356, 24
  %9358 = load i64, i64* %PC.i60
  %9359 = add i64 %9358, 4
  store i64 %9359, i64* %PC.i60
  %9360 = inttoptr i64 %9357 to i64*
  %9361 = load i64, i64* %9360
  store i64 %9361, i64* %RDX.i61, align 8
  store %struct.Memory* %loadMem_429d97, %struct.Memory** %MEMORY
  %loadMem_429d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9363 = getelementptr inbounds %struct.GPR, %struct.GPR* %9362, i32 0, i32 33
  %9364 = getelementptr inbounds %struct.Reg, %struct.Reg* %9363, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %9364 to i64*
  %9365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9366 = getelementptr inbounds %struct.GPR, %struct.GPR* %9365, i32 0, i32 9
  %9367 = getelementptr inbounds %struct.Reg, %struct.Reg* %9366, i32 0, i32 0
  %RSI.i58 = bitcast %union.anon* %9367 to i64*
  %9368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9369 = getelementptr inbounds %struct.GPR, %struct.GPR* %9368, i32 0, i32 15
  %9370 = getelementptr inbounds %struct.Reg, %struct.Reg* %9369, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %9370 to i64*
  %9371 = load i64, i64* %RBP.i59
  %9372 = sub i64 %9371, 60
  %9373 = load i64, i64* %PC.i57
  %9374 = add i64 %9373, 4
  store i64 %9374, i64* %PC.i57
  %9375 = inttoptr i64 %9372 to i32*
  %9376 = load i32, i32* %9375
  %9377 = sext i32 %9376 to i64
  store i64 %9377, i64* %RSI.i58, align 8
  store %struct.Memory* %loadMem_429d9b, %struct.Memory** %MEMORY
  %loadMem_429d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9379 = getelementptr inbounds %struct.GPR, %struct.GPR* %9378, i32 0, i32 33
  %9380 = getelementptr inbounds %struct.Reg, %struct.Reg* %9379, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %9380 to i64*
  %9381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9382 = getelementptr inbounds %struct.GPR, %struct.GPR* %9381, i32 0, i32 7
  %9383 = getelementptr inbounds %struct.Reg, %struct.Reg* %9382, i32 0, i32 0
  %RDX.i55 = bitcast %union.anon* %9383 to i64*
  %9384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9385 = getelementptr inbounds %struct.GPR, %struct.GPR* %9384, i32 0, i32 9
  %9386 = getelementptr inbounds %struct.Reg, %struct.Reg* %9385, i32 0, i32 0
  %RSI.i56 = bitcast %union.anon* %9386 to i64*
  %9387 = load i64, i64* %RDX.i55
  %9388 = load i64, i64* %RSI.i56
  %9389 = mul i64 %9388, 4
  %9390 = add i64 %9389, %9387
  %9391 = load i64, i64* %PC.i54
  %9392 = add i64 %9391, 7
  store i64 %9392, i64* %PC.i54
  %9393 = inttoptr i64 %9390 to i32*
  store i32 0, i32* %9393
  store %struct.Memory* %loadMem_429d9f, %struct.Memory** %MEMORY
  %loadMem_429da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9395 = getelementptr inbounds %struct.GPR, %struct.GPR* %9394, i32 0, i32 33
  %9396 = getelementptr inbounds %struct.Reg, %struct.Reg* %9395, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %9396 to i64*
  %9397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9398 = getelementptr inbounds %struct.GPR, %struct.GPR* %9397, i32 0, i32 1
  %9399 = getelementptr inbounds %struct.Reg, %struct.Reg* %9398, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %9399 to i64*
  %9400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9401 = getelementptr inbounds %struct.GPR, %struct.GPR* %9400, i32 0, i32 15
  %9402 = getelementptr inbounds %struct.Reg, %struct.Reg* %9401, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %9402 to i64*
  %9403 = load i64, i64* %RBP.i53
  %9404 = sub i64 %9403, 60
  %9405 = load i64, i64* %PC.i51
  %9406 = add i64 %9405, 3
  store i64 %9406, i64* %PC.i51
  %9407 = inttoptr i64 %9404 to i32*
  %9408 = load i32, i32* %9407
  %9409 = zext i32 %9408 to i64
  store i64 %9409, i64* %RAX.i52, align 8
  store %struct.Memory* %loadMem_429da6, %struct.Memory** %MEMORY
  %loadMem_429da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9411 = getelementptr inbounds %struct.GPR, %struct.GPR* %9410, i32 0, i32 33
  %9412 = getelementptr inbounds %struct.Reg, %struct.Reg* %9411, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %9412 to i64*
  %9413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9414 = getelementptr inbounds %struct.GPR, %struct.GPR* %9413, i32 0, i32 1
  %9415 = getelementptr inbounds %struct.Reg, %struct.Reg* %9414, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %9415 to i64*
  %9416 = load i64, i64* %RAX.i50
  %9417 = load i64, i64* %PC.i49
  %9418 = add i64 %9417, 3
  store i64 %9418, i64* %PC.i49
  %9419 = trunc i64 %9416 to i32
  %9420 = add i32 1, %9419
  %9421 = zext i32 %9420 to i64
  store i64 %9421, i64* %RAX.i50, align 8
  %9422 = icmp ult i32 %9420, %9419
  %9423 = icmp ult i32 %9420, 1
  %9424 = or i1 %9422, %9423
  %9425 = zext i1 %9424 to i8
  %9426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9425, i8* %9426, align 1
  %9427 = and i32 %9420, 255
  %9428 = call i32 @llvm.ctpop.i32(i32 %9427)
  %9429 = trunc i32 %9428 to i8
  %9430 = and i8 %9429, 1
  %9431 = xor i8 %9430, 1
  %9432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9431, i8* %9432, align 1
  %9433 = xor i64 1, %9416
  %9434 = trunc i64 %9433 to i32
  %9435 = xor i32 %9434, %9420
  %9436 = lshr i32 %9435, 4
  %9437 = trunc i32 %9436 to i8
  %9438 = and i8 %9437, 1
  %9439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9438, i8* %9439, align 1
  %9440 = icmp eq i32 %9420, 0
  %9441 = zext i1 %9440 to i8
  %9442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9441, i8* %9442, align 1
  %9443 = lshr i32 %9420, 31
  %9444 = trunc i32 %9443 to i8
  %9445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9444, i8* %9445, align 1
  %9446 = lshr i32 %9419, 31
  %9447 = xor i32 %9443, %9446
  %9448 = add i32 %9447, %9443
  %9449 = icmp eq i32 %9448, 2
  %9450 = zext i1 %9449 to i8
  %9451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9450, i8* %9451, align 1
  store %struct.Memory* %loadMem_429da9, %struct.Memory** %MEMORY
  %loadMem_429dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %9452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9453 = getelementptr inbounds %struct.GPR, %struct.GPR* %9452, i32 0, i32 33
  %9454 = getelementptr inbounds %struct.Reg, %struct.Reg* %9453, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %9454 to i64*
  %9455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9456 = getelementptr inbounds %struct.GPR, %struct.GPR* %9455, i32 0, i32 1
  %9457 = getelementptr inbounds %struct.Reg, %struct.Reg* %9456, i32 0, i32 0
  %EAX.i47 = bitcast %union.anon* %9457 to i32*
  %9458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9459 = getelementptr inbounds %struct.GPR, %struct.GPR* %9458, i32 0, i32 15
  %9460 = getelementptr inbounds %struct.Reg, %struct.Reg* %9459, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %9460 to i64*
  %9461 = load i64, i64* %RBP.i48
  %9462 = sub i64 %9461, 60
  %9463 = load i32, i32* %EAX.i47
  %9464 = zext i32 %9463 to i64
  %9465 = load i64, i64* %PC.i46
  %9466 = add i64 %9465, 3
  store i64 %9466, i64* %PC.i46
  %9467 = inttoptr i64 %9462 to i32*
  store i32 %9463, i32* %9467
  store %struct.Memory* %loadMem_429dac, %struct.Memory** %MEMORY
  %loadMem_429daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %9468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9469 = getelementptr inbounds %struct.GPR, %struct.GPR* %9468, i32 0, i32 33
  %9470 = getelementptr inbounds %struct.Reg, %struct.Reg* %9469, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %9470 to i64*
  %9471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9472 = getelementptr inbounds %struct.GPR, %struct.GPR* %9471, i32 0, i32 7
  %9473 = getelementptr inbounds %struct.Reg, %struct.Reg* %9472, i32 0, i32 0
  %RDX.i44 = bitcast %union.anon* %9473 to i64*
  %9474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9475 = getelementptr inbounds %struct.GPR, %struct.GPR* %9474, i32 0, i32 15
  %9476 = getelementptr inbounds %struct.Reg, %struct.Reg* %9475, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %9476 to i64*
  %9477 = load i64, i64* %RBP.i45
  %9478 = sub i64 %9477, 40
  %9479 = load i64, i64* %PC.i43
  %9480 = add i64 %9479, 4
  store i64 %9480, i64* %PC.i43
  %9481 = inttoptr i64 %9478 to i64*
  %9482 = load i64, i64* %9481
  store i64 %9482, i64* %RDX.i44, align 8
  store %struct.Memory* %loadMem_429daf, %struct.Memory** %MEMORY
  %loadMem_429db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9484 = getelementptr inbounds %struct.GPR, %struct.GPR* %9483, i32 0, i32 33
  %9485 = getelementptr inbounds %struct.Reg, %struct.Reg* %9484, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %9485 to i64*
  %9486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9487 = getelementptr inbounds %struct.GPR, %struct.GPR* %9486, i32 0, i32 9
  %9488 = getelementptr inbounds %struct.Reg, %struct.Reg* %9487, i32 0, i32 0
  %RSI.i41 = bitcast %union.anon* %9488 to i64*
  %9489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9490 = getelementptr inbounds %struct.GPR, %struct.GPR* %9489, i32 0, i32 15
  %9491 = getelementptr inbounds %struct.Reg, %struct.Reg* %9490, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %9491 to i64*
  %9492 = load i64, i64* %RBP.i42
  %9493 = sub i64 %9492, 44
  %9494 = load i64, i64* %PC.i40
  %9495 = add i64 %9494, 4
  store i64 %9495, i64* %PC.i40
  %9496 = inttoptr i64 %9493 to i32*
  %9497 = load i32, i32* %9496
  %9498 = sext i32 %9497 to i64
  store i64 %9498, i64* %RSI.i41, align 8
  store %struct.Memory* %loadMem_429db3, %struct.Memory** %MEMORY
  %loadMem_429db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9500 = getelementptr inbounds %struct.GPR, %struct.GPR* %9499, i32 0, i32 33
  %9501 = getelementptr inbounds %struct.Reg, %struct.Reg* %9500, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %9501 to i64*
  %9502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9503 = getelementptr inbounds %struct.GPR, %struct.GPR* %9502, i32 0, i32 7
  %9504 = getelementptr inbounds %struct.Reg, %struct.Reg* %9503, i32 0, i32 0
  %RDX.i38 = bitcast %union.anon* %9504 to i64*
  %9505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9506 = getelementptr inbounds %struct.GPR, %struct.GPR* %9505, i32 0, i32 9
  %9507 = getelementptr inbounds %struct.Reg, %struct.Reg* %9506, i32 0, i32 0
  %RSI.i39 = bitcast %union.anon* %9507 to i64*
  %9508 = load i64, i64* %RDX.i38
  %9509 = load i64, i64* %RSI.i39
  %9510 = mul i64 %9509, 8
  %9511 = add i64 %9510, %9508
  %9512 = load i64, i64* %PC.i37
  %9513 = add i64 %9512, 4
  store i64 %9513, i64* %PC.i37
  %9514 = inttoptr i64 %9511 to i64*
  %9515 = load i64, i64* %9514
  store i64 %9515, i64* %RDX.i38, align 8
  store %struct.Memory* %loadMem_429db7, %struct.Memory** %MEMORY
  %loadMem_429dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %9516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9517 = getelementptr inbounds %struct.GPR, %struct.GPR* %9516, i32 0, i32 33
  %9518 = getelementptr inbounds %struct.Reg, %struct.Reg* %9517, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %9518 to i64*
  %9519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9520 = getelementptr inbounds %struct.GPR, %struct.GPR* %9519, i32 0, i32 1
  %9521 = getelementptr inbounds %struct.Reg, %struct.Reg* %9520, i32 0, i32 0
  %EAX.i35 = bitcast %union.anon* %9521 to i32*
  %9522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9523 = getelementptr inbounds %struct.GPR, %struct.GPR* %9522, i32 0, i32 7
  %9524 = getelementptr inbounds %struct.Reg, %struct.Reg* %9523, i32 0, i32 0
  %RDX.i36 = bitcast %union.anon* %9524 to i64*
  %9525 = load i64, i64* %RDX.i36
  %9526 = load i32, i32* %EAX.i35
  %9527 = zext i32 %9526 to i64
  %9528 = load i64, i64* %PC.i34
  %9529 = add i64 %9528, 2
  store i64 %9529, i64* %PC.i34
  %9530 = inttoptr i64 %9525 to i32*
  store i32 %9526, i32* %9530
  store %struct.Memory* %loadMem_429dbb, %struct.Memory** %MEMORY
  %loadMem_429dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %9531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9532 = getelementptr inbounds %struct.GPR, %struct.GPR* %9531, i32 0, i32 33
  %9533 = getelementptr inbounds %struct.Reg, %struct.Reg* %9532, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %9533 to i64*
  %9534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9535 = getelementptr inbounds %struct.GPR, %struct.GPR* %9534, i32 0, i32 7
  %9536 = getelementptr inbounds %struct.Reg, %struct.Reg* %9535, i32 0, i32 0
  %RDX.i32 = bitcast %union.anon* %9536 to i64*
  %9537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9538 = getelementptr inbounds %struct.GPR, %struct.GPR* %9537, i32 0, i32 15
  %9539 = getelementptr inbounds %struct.Reg, %struct.Reg* %9538, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %9539 to i64*
  %9540 = load i64, i64* %RBP.i33
  %9541 = sub i64 %9540, 40
  %9542 = load i64, i64* %PC.i31
  %9543 = add i64 %9542, 4
  store i64 %9543, i64* %PC.i31
  %9544 = inttoptr i64 %9541 to i64*
  %9545 = load i64, i64* %9544
  store i64 %9545, i64* %RDX.i32, align 8
  store %struct.Memory* %loadMem_429dbd, %struct.Memory** %MEMORY
  %loadMem_429dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9547 = getelementptr inbounds %struct.GPR, %struct.GPR* %9546, i32 0, i32 33
  %9548 = getelementptr inbounds %struct.Reg, %struct.Reg* %9547, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %9548 to i64*
  %9549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9550 = getelementptr inbounds %struct.GPR, %struct.GPR* %9549, i32 0, i32 9
  %9551 = getelementptr inbounds %struct.Reg, %struct.Reg* %9550, i32 0, i32 0
  %RSI.i29 = bitcast %union.anon* %9551 to i64*
  %9552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9553 = getelementptr inbounds %struct.GPR, %struct.GPR* %9552, i32 0, i32 15
  %9554 = getelementptr inbounds %struct.Reg, %struct.Reg* %9553, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %9554 to i64*
  %9555 = load i64, i64* %RBP.i30
  %9556 = sub i64 %9555, 44
  %9557 = load i64, i64* %PC.i28
  %9558 = add i64 %9557, 4
  store i64 %9558, i64* %PC.i28
  %9559 = inttoptr i64 %9556 to i32*
  %9560 = load i32, i32* %9559
  %9561 = sext i32 %9560 to i64
  store i64 %9561, i64* %RSI.i29, align 8
  store %struct.Memory* %loadMem_429dc1, %struct.Memory** %MEMORY
  %loadMem_429dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9563 = getelementptr inbounds %struct.GPR, %struct.GPR* %9562, i32 0, i32 33
  %9564 = getelementptr inbounds %struct.Reg, %struct.Reg* %9563, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %9564 to i64*
  %9565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9566 = getelementptr inbounds %struct.GPR, %struct.GPR* %9565, i32 0, i32 7
  %9567 = getelementptr inbounds %struct.Reg, %struct.Reg* %9566, i32 0, i32 0
  %RDX.i26 = bitcast %union.anon* %9567 to i64*
  %9568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9569 = getelementptr inbounds %struct.GPR, %struct.GPR* %9568, i32 0, i32 9
  %9570 = getelementptr inbounds %struct.Reg, %struct.Reg* %9569, i32 0, i32 0
  %RSI.i27 = bitcast %union.anon* %9570 to i64*
  %9571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9572 = getelementptr inbounds %struct.GPR, %struct.GPR* %9571, i32 0, i32 11
  %9573 = getelementptr inbounds %struct.Reg, %struct.Reg* %9572, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %9573 to i64*
  %9574 = load i64, i64* %RDX.i26
  %9575 = load i64, i64* %RSI.i27
  %9576 = mul i64 %9575, 8
  %9577 = add i64 %9576, %9574
  %9578 = load i64, i64* %PC.i25
  %9579 = add i64 %9578, 4
  store i64 %9579, i64* %PC.i25
  %9580 = inttoptr i64 %9577 to i64*
  %9581 = load i64, i64* %9580
  store i64 %9581, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_429dc5, %struct.Memory** %MEMORY
  %loadMem_429dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9583 = getelementptr inbounds %struct.GPR, %struct.GPR* %9582, i32 0, i32 33
  %9584 = getelementptr inbounds %struct.Reg, %struct.Reg* %9583, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %9584 to i64*
  %9585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9586 = getelementptr inbounds %struct.GPR, %struct.GPR* %9585, i32 0, i32 9
  %9587 = getelementptr inbounds %struct.Reg, %struct.Reg* %9586, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %9587 to i64*
  %9588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9589 = getelementptr inbounds %struct.GPR, %struct.GPR* %9588, i32 0, i32 15
  %9590 = getelementptr inbounds %struct.Reg, %struct.Reg* %9589, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %9590 to i64*
  %9591 = load i64, i64* %RBP.i24
  %9592 = sub i64 %9591, 52
  %9593 = load i64, i64* %PC.i23
  %9594 = add i64 %9593, 3
  store i64 %9594, i64* %PC.i23
  %9595 = inttoptr i64 %9592 to i32*
  %9596 = load i32, i32* %9595
  %9597 = zext i32 %9596 to i64
  store i64 %9597, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_429dc9, %struct.Memory** %MEMORY
  %loadMem_429dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %9598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9599 = getelementptr inbounds %struct.GPR, %struct.GPR* %9598, i32 0, i32 33
  %9600 = getelementptr inbounds %struct.Reg, %struct.Reg* %9599, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %9600 to i64*
  %9601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9602 = getelementptr inbounds %struct.GPR, %struct.GPR* %9601, i32 0, i32 5
  %9603 = getelementptr inbounds %struct.Reg, %struct.Reg* %9602, i32 0, i32 0
  %RCX.i22 = bitcast %union.anon* %9603 to i64*
  %9604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9605 = getelementptr inbounds %struct.GPR, %struct.GPR* %9604, i32 0, i32 7
  %9606 = getelementptr inbounds %struct.Reg, %struct.Reg* %9605, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %9606 to i64*
  %9607 = load i64, i64* %RCX.i22
  %9608 = load i64, i64* %PC.i21
  %9609 = add i64 %9608, 3
  store i64 %9609, i64* %PC.i21
  store i64 %9607, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_429dcc, %struct.Memory** %MEMORY
  %loadMem1_429dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %9610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9611 = getelementptr inbounds %struct.GPR, %struct.GPR* %9610, i32 0, i32 33
  %9612 = getelementptr inbounds %struct.Reg, %struct.Reg* %9611, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %9612 to i64*
  %9613 = load i64, i64* %PC.i20
  %9614 = add i64 %9613, 2289
  %9615 = load i64, i64* %PC.i20
  %9616 = add i64 %9615, 5
  %9617 = load i64, i64* %PC.i20
  %9618 = add i64 %9617, 5
  store i64 %9618, i64* %PC.i20
  %9619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9620 = load i64, i64* %9619, align 8
  %9621 = add i64 %9620, -8
  %9622 = inttoptr i64 %9621 to i64*
  store i64 %9616, i64* %9622
  store i64 %9621, i64* %9619, align 8
  %9623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9614, i64* %9623, align 8
  store %struct.Memory* %loadMem1_429dcf, %struct.Memory** %MEMORY
  %loadMem2_429dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_429dcf = load i64, i64* %3
  %call2_429dcf = call %struct.Memory* @sub_42a6c0.trace_doctor(%struct.State* %0, i64 %loadPC_429dcf, %struct.Memory* %loadMem2_429dcf)
  store %struct.Memory* %call2_429dcf, %struct.Memory** %MEMORY
  %loadMem_429dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9625 = getelementptr inbounds %struct.GPR, %struct.GPR* %9624, i32 0, i32 33
  %9626 = getelementptr inbounds %struct.Reg, %struct.Reg* %9625, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %9626 to i64*
  %9627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9628 = getelementptr inbounds %struct.GPR, %struct.GPR* %9627, i32 0, i32 1
  %9629 = getelementptr inbounds %struct.Reg, %struct.Reg* %9628, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %9629 to i64*
  %9630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9631 = getelementptr inbounds %struct.GPR, %struct.GPR* %9630, i32 0, i32 15
  %9632 = getelementptr inbounds %struct.Reg, %struct.Reg* %9631, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %9632 to i64*
  %9633 = load i64, i64* %RBP.i19
  %9634 = sub i64 %9633, 44
  %9635 = load i64, i64* %PC.i17
  %9636 = add i64 %9635, 3
  store i64 %9636, i64* %PC.i17
  %9637 = inttoptr i64 %9634 to i32*
  %9638 = load i32, i32* %9637
  %9639 = zext i32 %9638 to i64
  store i64 %9639, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_429dd4, %struct.Memory** %MEMORY
  %loadMem_429dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9641 = getelementptr inbounds %struct.GPR, %struct.GPR* %9640, i32 0, i32 33
  %9642 = getelementptr inbounds %struct.Reg, %struct.Reg* %9641, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %9642 to i64*
  %9643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9644 = getelementptr inbounds %struct.GPR, %struct.GPR* %9643, i32 0, i32 1
  %9645 = getelementptr inbounds %struct.Reg, %struct.Reg* %9644, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %9645 to i64*
  %9646 = load i64, i64* %RAX.i16
  %9647 = load i64, i64* %PC.i15
  %9648 = add i64 %9647, 3
  store i64 %9648, i64* %PC.i15
  %9649 = trunc i64 %9646 to i32
  %9650 = add i32 1, %9649
  %9651 = zext i32 %9650 to i64
  store i64 %9651, i64* %RAX.i16, align 8
  %9652 = icmp ult i32 %9650, %9649
  %9653 = icmp ult i32 %9650, 1
  %9654 = or i1 %9652, %9653
  %9655 = zext i1 %9654 to i8
  %9656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9655, i8* %9656, align 1
  %9657 = and i32 %9650, 255
  %9658 = call i32 @llvm.ctpop.i32(i32 %9657)
  %9659 = trunc i32 %9658 to i8
  %9660 = and i8 %9659, 1
  %9661 = xor i8 %9660, 1
  %9662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9661, i8* %9662, align 1
  %9663 = xor i64 1, %9646
  %9664 = trunc i64 %9663 to i32
  %9665 = xor i32 %9664, %9650
  %9666 = lshr i32 %9665, 4
  %9667 = trunc i32 %9666 to i8
  %9668 = and i8 %9667, 1
  %9669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9668, i8* %9669, align 1
  %9670 = icmp eq i32 %9650, 0
  %9671 = zext i1 %9670 to i8
  %9672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9671, i8* %9672, align 1
  %9673 = lshr i32 %9650, 31
  %9674 = trunc i32 %9673 to i8
  %9675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9674, i8* %9675, align 1
  %9676 = lshr i32 %9649, 31
  %9677 = xor i32 %9673, %9676
  %9678 = add i32 %9677, %9673
  %9679 = icmp eq i32 %9678, 2
  %9680 = zext i1 %9679 to i8
  %9681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9680, i8* %9681, align 1
  store %struct.Memory* %loadMem_429dd7, %struct.Memory** %MEMORY
  %loadMem_429dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %9682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9683 = getelementptr inbounds %struct.GPR, %struct.GPR* %9682, i32 0, i32 33
  %9684 = getelementptr inbounds %struct.Reg, %struct.Reg* %9683, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %9684 to i64*
  %9685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9686 = getelementptr inbounds %struct.GPR, %struct.GPR* %9685, i32 0, i32 1
  %9687 = getelementptr inbounds %struct.Reg, %struct.Reg* %9686, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %9687 to i32*
  %9688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9689 = getelementptr inbounds %struct.GPR, %struct.GPR* %9688, i32 0, i32 15
  %9690 = getelementptr inbounds %struct.Reg, %struct.Reg* %9689, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %9690 to i64*
  %9691 = load i64, i64* %RBP.i14
  %9692 = sub i64 %9691, 44
  %9693 = load i32, i32* %EAX.i
  %9694 = zext i32 %9693 to i64
  %9695 = load i64, i64* %PC.i13
  %9696 = add i64 %9695, 3
  store i64 %9696, i64* %PC.i13
  %9697 = inttoptr i64 %9692 to i32*
  store i32 %9693, i32* %9697
  store %struct.Memory* %loadMem_429dda, %struct.Memory** %MEMORY
  %loadMem_429ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %9698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9699 = getelementptr inbounds %struct.GPR, %struct.GPR* %9698, i32 0, i32 33
  %9700 = getelementptr inbounds %struct.Reg, %struct.Reg* %9699, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %9700 to i64*
  %9701 = load i64, i64* %PC.i12
  %9702 = add i64 %9701, -2018
  %9703 = load i64, i64* %PC.i12
  %9704 = add i64 %9703, 5
  store i64 %9704, i64* %PC.i12
  %9705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9702, i64* %9705, align 8
  store %struct.Memory* %loadMem_429ddd, %struct.Memory** %MEMORY
  br label %block_.L_4295fb

block_.L_429de2:                                  ; preds = %block_.L_4295fb
  %loadMem_429de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9707 = getelementptr inbounds %struct.GPR, %struct.GPR* %9706, i32 0, i32 33
  %9708 = getelementptr inbounds %struct.Reg, %struct.Reg* %9707, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %9708 to i64*
  %9709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9710 = getelementptr inbounds %struct.GPR, %struct.GPR* %9709, i32 0, i32 1
  %9711 = getelementptr inbounds %struct.Reg, %struct.Reg* %9710, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %9711 to i64*
  %9712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9713 = getelementptr inbounds %struct.GPR, %struct.GPR* %9712, i32 0, i32 15
  %9714 = getelementptr inbounds %struct.Reg, %struct.Reg* %9713, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %9714 to i64*
  %9715 = load i64, i64* %RBP.i11
  %9716 = sub i64 %9715, 40
  %9717 = load i64, i64* %PC.i9
  %9718 = add i64 %9717, 4
  store i64 %9718, i64* %PC.i9
  %9719 = inttoptr i64 %9716 to i64*
  %9720 = load i64, i64* %9719
  store i64 %9720, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_429de2, %struct.Memory** %MEMORY
  %loadMem_429de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9722 = getelementptr inbounds %struct.GPR, %struct.GPR* %9721, i32 0, i32 33
  %9723 = getelementptr inbounds %struct.Reg, %struct.Reg* %9722, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %9723 to i64*
  %9724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9725 = getelementptr inbounds %struct.GPR, %struct.GPR* %9724, i32 0, i32 5
  %9726 = getelementptr inbounds %struct.Reg, %struct.Reg* %9725, i32 0, i32 0
  %RCX.i7 = bitcast %union.anon* %9726 to i64*
  %9727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9728 = getelementptr inbounds %struct.GPR, %struct.GPR* %9727, i32 0, i32 15
  %9729 = getelementptr inbounds %struct.Reg, %struct.Reg* %9728, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %9729 to i64*
  %9730 = load i64, i64* %RBP.i8
  %9731 = sub i64 %9730, 32
  %9732 = load i64, i64* %PC.i6
  %9733 = add i64 %9732, 4
  store i64 %9733, i64* %PC.i6
  %9734 = inttoptr i64 %9731 to i64*
  %9735 = load i64, i64* %9734
  store i64 %9735, i64* %RCX.i7, align 8
  store %struct.Memory* %loadMem_429de6, %struct.Memory** %MEMORY
  %loadMem_429dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %9736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9737 = getelementptr inbounds %struct.GPR, %struct.GPR* %9736, i32 0, i32 33
  %9738 = getelementptr inbounds %struct.Reg, %struct.Reg* %9737, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %9738 to i64*
  %9739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9740 = getelementptr inbounds %struct.GPR, %struct.GPR* %9739, i32 0, i32 1
  %9741 = getelementptr inbounds %struct.Reg, %struct.Reg* %9740, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %9741 to i64*
  %9742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9743 = getelementptr inbounds %struct.GPR, %struct.GPR* %9742, i32 0, i32 5
  %9744 = getelementptr inbounds %struct.Reg, %struct.Reg* %9743, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %9744 to i64*
  %9745 = load i64, i64* %RCX.i
  %9746 = load i64, i64* %RAX.i
  %9747 = load i64, i64* %PC.i5
  %9748 = add i64 %9747, 3
  store i64 %9748, i64* %PC.i5
  %9749 = inttoptr i64 %9745 to i64*
  store i64 %9746, i64* %9749
  store %struct.Memory* %loadMem_429dea, %struct.Memory** %MEMORY
  %loadMem_429ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %9750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9751 = getelementptr inbounds %struct.GPR, %struct.GPR* %9750, i32 0, i32 33
  %9752 = getelementptr inbounds %struct.Reg, %struct.Reg* %9751, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %9752 to i64*
  %9753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9754 = getelementptr inbounds %struct.GPR, %struct.GPR* %9753, i32 0, i32 13
  %9755 = getelementptr inbounds %struct.Reg, %struct.Reg* %9754, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %9755 to i64*
  %9756 = load i64, i64* %RSP.i
  %9757 = load i64, i64* %PC.i4
  %9758 = add i64 %9757, 4
  store i64 %9758, i64* %PC.i4
  %9759 = add i64 64, %9756
  store i64 %9759, i64* %RSP.i, align 8
  %9760 = icmp ult i64 %9759, %9756
  %9761 = icmp ult i64 %9759, 64
  %9762 = or i1 %9760, %9761
  %9763 = zext i1 %9762 to i8
  %9764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9763, i8* %9764, align 1
  %9765 = trunc i64 %9759 to i32
  %9766 = and i32 %9765, 255
  %9767 = call i32 @llvm.ctpop.i32(i32 %9766)
  %9768 = trunc i32 %9767 to i8
  %9769 = and i8 %9768, 1
  %9770 = xor i8 %9769, 1
  %9771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9770, i8* %9771, align 1
  %9772 = xor i64 64, %9756
  %9773 = xor i64 %9772, %9759
  %9774 = lshr i64 %9773, 4
  %9775 = trunc i64 %9774 to i8
  %9776 = and i8 %9775, 1
  %9777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9776, i8* %9777, align 1
  %9778 = icmp eq i64 %9759, 0
  %9779 = zext i1 %9778 to i8
  %9780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9779, i8* %9780, align 1
  %9781 = lshr i64 %9759, 63
  %9782 = trunc i64 %9781 to i8
  %9783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9782, i8* %9783, align 1
  %9784 = lshr i64 %9756, 63
  %9785 = xor i64 %9781, %9784
  %9786 = add i64 %9785, %9781
  %9787 = icmp eq i64 %9786, 2
  %9788 = zext i1 %9787 to i8
  %9789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9788, i8* %9789, align 1
  store %struct.Memory* %loadMem_429ded, %struct.Memory** %MEMORY
  %loadMem_429df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9791 = getelementptr inbounds %struct.GPR, %struct.GPR* %9790, i32 0, i32 33
  %9792 = getelementptr inbounds %struct.Reg, %struct.Reg* %9791, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %9792 to i64*
  %9793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9794 = getelementptr inbounds %struct.GPR, %struct.GPR* %9793, i32 0, i32 15
  %9795 = getelementptr inbounds %struct.Reg, %struct.Reg* %9794, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %9795 to i64*
  %9796 = load i64, i64* %PC.i2
  %9797 = add i64 %9796, 1
  store i64 %9797, i64* %PC.i2
  %9798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9799 = load i64, i64* %9798, align 8
  %9800 = add i64 %9799, 8
  %9801 = inttoptr i64 %9799 to i64*
  %9802 = load i64, i64* %9801
  store i64 %9802, i64* %RBP.i3, align 8
  store i64 %9800, i64* %9798, align 8
  store %struct.Memory* %loadMem_429df1, %struct.Memory** %MEMORY
  %loadMem_429df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9804 = getelementptr inbounds %struct.GPR, %struct.GPR* %9803, i32 0, i32 33
  %9805 = getelementptr inbounds %struct.Reg, %struct.Reg* %9804, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %9805 to i64*
  %9806 = load i64, i64* %PC.i1
  %9807 = add i64 %9806, 1
  store i64 %9807, i64* %PC.i1
  %9808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9810 = load i64, i64* %9809, align 8
  %9811 = inttoptr i64 %9810 to i64*
  %9812 = load i64, i64* %9811
  store i64 %9812, i64* %9808, align 8
  %9813 = add i64 %9810, 8
  store i64 %9813, i64* %9809, align 8
  store %struct.Memory* %loadMem_429df2, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_429df2
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 64
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 64
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
  %23 = xor i64 64, %9
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

define %struct.Memory* @routine_movq__0x45863c___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x25f___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 607, i64* %9, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 2
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

define %struct.Memory* @routine_movl__r9d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_429de2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x6___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 6, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 6
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
  %26 = xor i64 6, %9
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 2
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

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.P7AllocTrace(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RDX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x4____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i8*
  store i8 4, i8* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  store i32 0, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x5__0x1__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 5, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x4__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_movl__0x2__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
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

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 16
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

define %struct.Memory* @routine_jge_.L_429d54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 0, i8* %17
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

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 2, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_42975a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x6____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 6, i8* %17
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

define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 0, i32* %18
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

define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_429873(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 32
  %14 = icmp ult i32 %9, 32
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 32, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 46
  %14 = icmp ult i32 %9, 46
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 46, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 95
  %14 = icmp ult i32 %9, 95
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 95, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 45
  %14 = icmp ult i32 %9, 45
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 45, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 126
  %14 = icmp ult i32 %9, 126
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 126, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x1____rcx__rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 1, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_429c3e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_429919(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl___rcx__rdx_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x6___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 6
  %14 = icmp ult i32 %9, 6
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 6, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_429914(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x2____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 2, i8* %17
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

define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_429c39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_andl__0x10___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 16, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_429a2a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x5____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 5, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_429c34(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_andl__0x20___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 32, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_429b3b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x8____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 8, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_429c2f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_429c2a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x3____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 3, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 4, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_429d41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_429c5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 2
  %14 = icmp ult i32 %9, 2
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 2, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_429c93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -1
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
  %26 = xor i64 -1, %9
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
  %41 = xor i32 %36, 1
  %42 = add i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x7____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 7, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_429d46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4296c3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x9____rdx__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 9, i8* %17
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

define %struct.Memory* @routine_movl__0x0____rdx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 0, i32* %18
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

define %struct.Memory* @routine_movl__eax____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rdx__rsi_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.trace_doctor(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_4295fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 64
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
  %25 = xor i64 64, %9
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
