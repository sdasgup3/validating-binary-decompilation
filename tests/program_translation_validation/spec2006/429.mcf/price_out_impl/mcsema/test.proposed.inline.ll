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

declare %struct.Memory* @sub_4009f0.resize_prob(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401b90.refresh_neighbour_lists(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400b80.insert_new_arc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400e50.replace_weaker_arc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @price_out_impl(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_401110 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_401110, %struct.Memory** %MEMORY
  %loadMem_401111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i532 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i532
  %27 = load i64, i64* %PC.i531
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i531
  store i64 %26, i64* %RBP.i533, align 8
  store %struct.Memory* %loadMem_401111, %struct.Memory** %MEMORY
  %loadMem_401114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i607 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i607
  %36 = load i64, i64* %PC.i606
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i606
  %38 = sub i64 %35, 176
  store i64 %38, i64* %RSP.i607, align 8
  %39 = icmp ult i64 %35, 176
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
  %49 = xor i64 176, %35
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
  store %struct.Memory* %loadMem_401114, %struct.Memory** %MEMORY
  %loadMem_40111b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i604 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i605
  %77 = sub i64 %76, 16
  %78 = load i64, i64* %RDI.i604
  %79 = load i64, i64* %PC.i603
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i603
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_40111b, %struct.Memory** %MEMORY
  %loadMem_40111f = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %87 to i64*
  %88 = load i64, i64* %RBP.i602
  %89 = sub i64 %88, 40
  %90 = load i64, i64* %PC.i601
  %91 = add i64 %90, 8
  store i64 %91, i64* %PC.i601
  %92 = inttoptr i64 %89 to i64*
  store i64 0, i64* %92
  store %struct.Memory* %loadMem_40111f, %struct.Memory** %MEMORY
  %loadMem_401127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 33
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %98 to i64*
  %99 = load i64, i64* %RBP.i600
  %100 = sub i64 %99, 48
  %101 = load i64, i64* %PC.i599
  %102 = add i64 %101, 8
  store i64 %102, i64* %PC.i599
  %103 = inttoptr i64 %100 to i64*
  store i64 0, i64* %103
  store %struct.Memory* %loadMem_401127, %struct.Memory** %MEMORY
  %loadMem_40112f = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %RBP.i598
  %111 = sub i64 %110, 64
  %112 = load i64, i64* %PC.i597
  %113 = add i64 %112, 8
  store i64 %113, i64* %PC.i597
  %114 = inttoptr i64 %111 to i64*
  store i64 15, i64* %114
  store %struct.Memory* %loadMem_40112f, %struct.Memory** %MEMORY
  %loadMem_401137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 11
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RDI.i595 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %RBP.i596
  %125 = sub i64 %124, 16
  %126 = load i64, i64* %PC.i594
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC.i594
  %128 = inttoptr i64 %125 to i64*
  %129 = load i64, i64* %128
  store i64 %129, i64* %RDI.i595, align 8
  store %struct.Memory* %loadMem_401137, %struct.Memory** %MEMORY
  %loadMem_40113b = load %struct.Memory*, %struct.Memory** %MEMORY
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 33
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 11
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RDI.i593 = bitcast %union.anon* %135 to i64*
  %136 = load i64, i64* %RDI.i593
  %137 = add i64 %136, 528
  %138 = load i64, i64* %PC.i592
  %139 = add i64 %138, 7
  store i64 %139, i64* %PC.i592
  %140 = inttoptr i64 %137 to i64*
  %141 = load i64, i64* %140
  store i64 %141, i64* %RDI.i593, align 8
  store %struct.Memory* %loadMem_40113b, %struct.Memory** %MEMORY
  %loadMem_401142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 11
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RDI.i590 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 15
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %RBP.i591
  %152 = sub i64 %151, 72
  %153 = load i64, i64* %RDI.i590
  %154 = load i64, i64* %PC.i589
  %155 = add i64 %154, 4
  store i64 %155, i64* %PC.i589
  %156 = inttoptr i64 %152 to i64*
  store i64 %153, i64* %156
  store %struct.Memory* %loadMem_401142, %struct.Memory** %MEMORY
  %loadMem_401146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 33
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 15
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %RBP.i588
  %164 = sub i64 %163, 88
  %165 = load i64, i64* %PC.i587
  %166 = add i64 %165, 8
  store i64 %166, i64* %PC.i587
  %167 = inttoptr i64 %164 to i64*
  store i64 30, i64* %167
  store %struct.Memory* %loadMem_401146, %struct.Memory** %MEMORY
  %loadMem_40114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 33
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 11
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RDI.i585 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 15
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RBP.i586
  %178 = sub i64 %177, 72
  %179 = load i64, i64* %PC.i584
  %180 = add i64 %179, 4
  store i64 %180, i64* %PC.i584
  %181 = inttoptr i64 %178 to i64*
  %182 = load i64, i64* %181
  store i64 %182, i64* %RDI.i585, align 8
  store %struct.Memory* %loadMem_40114e, %struct.Memory** %MEMORY
  %loadMem_401152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 33
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 11
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RDI.i582 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 15
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %191 to i64*
  %192 = load i64, i64* %RDI.i582
  %193 = load i64, i64* %RBP.i583
  %194 = sub i64 %193, 64
  %195 = load i64, i64* %PC.i581
  %196 = add i64 %195, 4
  store i64 %196, i64* %PC.i581
  %197 = inttoptr i64 %194 to i64*
  %198 = load i64, i64* %197
  %199 = sub i64 %192, %198
  store i64 %199, i64* %RDI.i582, align 8
  %200 = icmp ugt i64 %198, %192
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %201, i8* %202, align 1
  %203 = trunc i64 %199 to i32
  %204 = and i32 %203, 255
  %205 = call i32 @llvm.ctpop.i32(i32 %204)
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %208, i8* %209, align 1
  %210 = xor i64 %198, %192
  %211 = xor i64 %210, %199
  %212 = lshr i64 %211, 4
  %213 = trunc i64 %212 to i8
  %214 = and i8 %213, 1
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %214, i8* %215, align 1
  %216 = icmp eq i64 %199, 0
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %217, i8* %218, align 1
  %219 = lshr i64 %199, 63
  %220 = trunc i64 %219 to i8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %220, i8* %221, align 1
  %222 = lshr i64 %192, 63
  %223 = lshr i64 %198, 63
  %224 = xor i64 %223, %222
  %225 = xor i64 %219, %222
  %226 = add i64 %225, %224
  %227 = icmp eq i64 %226, 2
  %228 = zext i1 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %228, i8* %229, align 1
  store %struct.Memory* %loadMem_401152, %struct.Memory** %MEMORY
  %loadMem_401156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 33
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 11
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RDI.i579 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 15
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %238 to i64*
  %239 = load i64, i64* %RBP.i580
  %240 = sub i64 %239, 104
  %241 = load i64, i64* %RDI.i579
  %242 = load i64, i64* %PC.i578
  %243 = add i64 %242, 4
  store i64 %243, i64* %PC.i578
  %244 = inttoptr i64 %240 to i64*
  store i64 %241, i64* %244
  store %struct.Memory* %loadMem_401156, %struct.Memory** %MEMORY
  %loadMem_40115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 33
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 11
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RDI.i576 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 15
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %RBP.i577
  %255 = sub i64 %254, 16
  %256 = load i64, i64* %PC.i575
  %257 = add i64 %256, 4
  store i64 %257, i64* %PC.i575
  %258 = inttoptr i64 %255 to i64*
  %259 = load i64, i64* %258
  store i64 %259, i64* %RDI.i576, align 8
  store %struct.Memory* %loadMem_40115a, %struct.Memory** %MEMORY
  %loadMem_40115e = load %struct.Memory*, %struct.Memory** %MEMORY
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 33
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 11
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RDI.i574 = bitcast %union.anon* %265 to i64*
  %266 = load i64, i64* %RDI.i574
  %267 = add i64 %266, 408
  %268 = load i64, i64* %PC.i573
  %269 = add i64 %268, 11
  store i64 %269, i64* %PC.i573
  %270 = inttoptr i64 %267 to i64*
  %271 = load i64, i64* %270
  %272 = sub i64 %271, 15000
  %273 = icmp ult i64 %271, 15000
  %274 = zext i1 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %274, i8* %275, align 1
  %276 = trunc i64 %272 to i32
  %277 = and i32 %276, 255
  %278 = call i32 @llvm.ctpop.i32(i32 %277)
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = xor i8 %280, 1
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %281, i8* %282, align 1
  %283 = xor i64 %271, 15000
  %284 = xor i64 %283, %272
  %285 = lshr i64 %284, 4
  %286 = trunc i64 %285 to i8
  %287 = and i8 %286, 1
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %287, i8* %288, align 1
  %289 = icmp eq i64 %272, 0
  %290 = zext i1 %289 to i8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %290, i8* %291, align 1
  %292 = lshr i64 %272, 63
  %293 = trunc i64 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %293, i8* %294, align 1
  %295 = lshr i64 %271, 63
  %296 = xor i64 %292, %295
  %297 = add i64 %296, %295
  %298 = icmp eq i64 %297, 2
  %299 = zext i1 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %299, i8* %300, align 1
  store %struct.Memory* %loadMem_40115e, %struct.Memory** %MEMORY
  %loadMem_401169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %PC.i572
  %305 = add i64 %304, 165
  %306 = load i64, i64* %PC.i572
  %307 = add i64 %306, 6
  %308 = load i64, i64* %PC.i572
  %309 = add i64 %308, 6
  store i64 %309, i64* %PC.i572
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %311 = load i8, i8* %310, align 1
  %312 = icmp eq i8 %311, 0
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %314 = load i8, i8* %313, align 1
  %315 = icmp ne i8 %314, 0
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %317 = load i8, i8* %316, align 1
  %318 = icmp ne i8 %317, 0
  %319 = xor i1 %315, %318
  %320 = xor i1 %319, true
  %321 = and i1 %312, %320
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %BRANCH_TAKEN, align 1
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %324 = select i1 %321, i64 %305, i64 %307
  store i64 %324, i64* %323, align 8
  store %struct.Memory* %loadMem_401169, %struct.Memory** %MEMORY
  %loadBr_401169 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401169 = icmp eq i8 %loadBr_401169, 1
  br i1 %cmpBr_401169, label %block_.L_40120e, label %block_40116f

block_40116f:                                     ; preds = %entry
  %loadMem_40116f = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 15
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %RBP.i571
  %335 = sub i64 %334, 16
  %336 = load i64, i64* %PC.i569
  %337 = add i64 %336, 4
  store i64 %337, i64* %PC.i569
  %338 = inttoptr i64 %335 to i64*
  %339 = load i64, i64* %338
  store i64 %339, i64* %RAX.i570, align 8
  store %struct.Memory* %loadMem_40116f, %struct.Memory** %MEMORY
  %loadMem_401173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %345 to i64*
  %346 = load i64, i64* %RAX.i568
  %347 = add i64 %346, 424
  %348 = load i64, i64* %PC.i567
  %349 = add i64 %348, 7
  store i64 %349, i64* %PC.i567
  %350 = inttoptr i64 %347 to i64*
  %351 = load i64, i64* %350
  store i64 %351, i64* %RAX.i568, align 8
  store %struct.Memory* %loadMem_401173, %struct.Memory** %MEMORY
  %loadMem_40117a = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 5
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %RCX.i565 = bitcast %union.anon* %357 to i64*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 15
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %360 to i64*
  %361 = load i64, i64* %RBP.i566
  %362 = sub i64 %361, 16
  %363 = load i64, i64* %PC.i564
  %364 = add i64 %363, 4
  store i64 %364, i64* %PC.i564
  %365 = inttoptr i64 %362 to i64*
  %366 = load i64, i64* %365
  store i64 %366, i64* %RCX.i565, align 8
  store %struct.Memory* %loadMem_40117a, %struct.Memory** %MEMORY
  %loadMem_40117e = load %struct.Memory*, %struct.Memory** %MEMORY
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 33
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 5
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %375 to i64*
  %376 = load i64, i64* %RAX.i562
  %377 = load i64, i64* %RCX.i563
  %378 = add i64 %377, 456
  %379 = load i64, i64* %PC.i561
  %380 = add i64 %379, 7
  store i64 %380, i64* %PC.i561
  %381 = inttoptr i64 %378 to i64*
  %382 = load i64, i64* %381
  %383 = add i64 %382, %376
  store i64 %383, i64* %RAX.i562, align 8
  %384 = icmp ult i64 %383, %376
  %385 = icmp ult i64 %383, %382
  %386 = or i1 %384, %385
  %387 = zext i1 %386 to i8
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %387, i8* %388, align 1
  %389 = trunc i64 %383 to i32
  %390 = and i32 %389, 255
  %391 = call i32 @llvm.ctpop.i32(i32 %390)
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %394, i8* %395, align 1
  %396 = xor i64 %382, %376
  %397 = xor i64 %396, %383
  %398 = lshr i64 %397, 4
  %399 = trunc i64 %398 to i8
  %400 = and i8 %399, 1
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %400, i8* %401, align 1
  %402 = icmp eq i64 %383, 0
  %403 = zext i1 %402 to i8
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %403, i8* %404, align 1
  %405 = lshr i64 %383, 63
  %406 = trunc i64 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %406, i8* %407, align 1
  %408 = lshr i64 %376, 63
  %409 = lshr i64 %382, 63
  %410 = xor i64 %405, %408
  %411 = xor i64 %405, %409
  %412 = add i64 %410, %411
  %413 = icmp eq i64 %412, 2
  %414 = zext i1 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %414, i8* %415, align 1
  store %struct.Memory* %loadMem_40117e, %struct.Memory** %MEMORY
  %loadMem_401185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 33
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %418 to i64*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 5
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 15
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %424 to i64*
  %425 = load i64, i64* %RBP.i560
  %426 = sub i64 %425, 16
  %427 = load i64, i64* %PC.i558
  %428 = add i64 %427, 4
  store i64 %428, i64* %PC.i558
  %429 = inttoptr i64 %426 to i64*
  %430 = load i64, i64* %429
  store i64 %430, i64* %RCX.i559, align 8
  store %struct.Memory* %loadMem_401185, %struct.Memory** %MEMORY
  %loadMem_401189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 33
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RAX.i556 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 5
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RCX.i557 = bitcast %union.anon* %439 to i64*
  %440 = load i64, i64* %RAX.i556
  %441 = load i64, i64* %RCX.i557
  %442 = add i64 %441, 416
  %443 = load i64, i64* %PC.i555
  %444 = add i64 %443, 7
  store i64 %444, i64* %PC.i555
  %445 = inttoptr i64 %442 to i64*
  %446 = load i64, i64* %445
  %447 = sub i64 %440, %446
  %448 = icmp ugt i64 %446, %440
  %449 = zext i1 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %449, i8* %450, align 1
  %451 = trunc i64 %447 to i32
  %452 = and i32 %451, 255
  %453 = call i32 @llvm.ctpop.i32(i32 %452)
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  %456 = xor i8 %455, 1
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %456, i8* %457, align 1
  %458 = xor i64 %446, %440
  %459 = xor i64 %458, %447
  %460 = lshr i64 %459, 4
  %461 = trunc i64 %460 to i8
  %462 = and i8 %461, 1
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %462, i8* %463, align 1
  %464 = icmp eq i64 %447, 0
  %465 = zext i1 %464 to i8
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %465, i8* %466, align 1
  %467 = lshr i64 %447, 63
  %468 = trunc i64 %467 to i8
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %468, i8* %469, align 1
  %470 = lshr i64 %440, 63
  %471 = lshr i64 %446, 63
  %472 = xor i64 %471, %470
  %473 = xor i64 %467, %470
  %474 = add i64 %473, %472
  %475 = icmp eq i64 %474, 2
  %476 = zext i1 %475 to i8
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %476, i8* %477, align 1
  store %struct.Memory* %loadMem_401189, %struct.Memory** %MEMORY
  %loadMem_401190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 33
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %480 to i64*
  %481 = load i64, i64* %PC.i554
  %482 = add i64 %481, 121
  %483 = load i64, i64* %PC.i554
  %484 = add i64 %483, 6
  %485 = load i64, i64* %PC.i554
  %486 = add i64 %485, 6
  store i64 %486, i64* %PC.i554
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %488 = load i8, i8* %487, align 1
  %489 = icmp ne i8 %488, 0
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %491 = load i8, i8* %490, align 1
  %492 = icmp ne i8 %491, 0
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %494 = load i8, i8* %493, align 1
  %495 = icmp ne i8 %494, 0
  %496 = xor i1 %492, %495
  %497 = or i1 %489, %496
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %BRANCH_TAKEN, align 1
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %500 = select i1 %497, i64 %482, i64 %484
  store i64 %500, i64* %499, align 8
  store %struct.Memory* %loadMem_401190, %struct.Memory** %MEMORY
  %loadBr_401190 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401190 = icmp eq i8 %loadBr_401190, 1
  br i1 %cmpBr_401190, label %block_.L_401209, label %block_401196

block_401196:                                     ; preds = %block_40116f
  %loadMem_401196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 33
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %PC.i552
  %508 = add i64 %507, 5
  store i64 %508, i64* %PC.i552
  store i64 2, i64* %RAX.i553, align 8
  store %struct.Memory* %loadMem_401196, %struct.Memory** %MEMORY
  %loadMem_40119b = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %EAX.i550 = bitcast %union.anon* %514 to i32*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 5
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %517 to i64*
  %518 = load i32, i32* %EAX.i550
  %519 = zext i32 %518 to i64
  %520 = load i64, i64* %PC.i549
  %521 = add i64 %520, 2
  store i64 %521, i64* %PC.i549
  %522 = and i64 %519, 4294967295
  store i64 %522, i64* %RCX.i551, align 8
  store %struct.Memory* %loadMem_40119b, %struct.Memory** %MEMORY
  %loadMem_40119d = load %struct.Memory*, %struct.Memory** %MEMORY
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 33
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 7
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %RDX.i547 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 15
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %531 to i64*
  %532 = load i64, i64* %RBP.i548
  %533 = sub i64 %532, 16
  %534 = load i64, i64* %PC.i546
  %535 = add i64 %534, 4
  store i64 %535, i64* %PC.i546
  %536 = inttoptr i64 %533 to i64*
  %537 = load i64, i64* %536
  store i64 %537, i64* %RDX.i547, align 8
  store %struct.Memory* %loadMem_40119d, %struct.Memory** %MEMORY
  %loadMem_4011a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 33
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 7
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %RDX.i545 = bitcast %union.anon* %543 to i64*
  %544 = load i64, i64* %RDX.i545
  %545 = add i64 %544, 408
  %546 = load i64, i64* %PC.i544
  %547 = add i64 %546, 7
  store i64 %547, i64* %PC.i544
  %548 = inttoptr i64 %545 to i64*
  %549 = load i64, i64* %548
  store i64 %549, i64* %RDX.i545, align 8
  store %struct.Memory* %loadMem_4011a1, %struct.Memory** %MEMORY
  %loadMem_4011a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 9
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %RSI.i542 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 15
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %558 to i64*
  %559 = load i64, i64* %RBP.i543
  %560 = sub i64 %559, 16
  %561 = load i64, i64* %PC.i541
  %562 = add i64 %561, 4
  store i64 %562, i64* %PC.i541
  %563 = inttoptr i64 %560 to i64*
  %564 = load i64, i64* %563
  store i64 %564, i64* %RSI.i542, align 8
  store %struct.Memory* %loadMem_4011a8, %struct.Memory** %MEMORY
  %loadMem_4011ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 33
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 7
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RDX.i539 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 9
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RSI.i540 = bitcast %union.anon* %573 to i64*
  %574 = load i64, i64* %RDX.i539
  %575 = load i64, i64* %RSI.i540
  %576 = add i64 %575, 408
  %577 = load i64, i64* %PC.i538
  %578 = add i64 %577, 8
  store i64 %578, i64* %PC.i538
  %579 = inttoptr i64 %576 to i64*
  %580 = load i64, i64* %579
  %581 = sext i64 %574 to i128
  %582 = and i128 %581, -18446744073709551616
  %583 = sext i64 %580 to i128
  %584 = and i128 %583, -18446744073709551616
  %585 = zext i64 %574 to i128
  %586 = or i128 %582, %585
  %587 = zext i64 %580 to i128
  %588 = or i128 %584, %587
  %589 = mul i128 %588, %586
  %590 = trunc i128 %589 to i64
  store i64 %590, i64* %RDX.i539, align 8
  %591 = sext i64 %590 to i128
  %592 = icmp ne i128 %591, %589
  %593 = zext i1 %592 to i8
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %593, i8* %594, align 1
  %595 = trunc i128 %589 to i32
  %596 = and i32 %595, 255
  %597 = call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %600, i8* %601, align 1
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %602, align 1
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %603, align 1
  %604 = lshr i64 %590, 63
  %605 = trunc i64 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %605, i8* %606, align 1
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %593, i8* %607, align 1
  store %struct.Memory* %loadMem_4011ac, %struct.Memory** %MEMORY
  %loadMem_4011b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 33
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %610 to i64*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 1
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RAX.i536 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 7
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %RDX.i537 = bitcast %union.anon* %616 to i64*
  %617 = load i64, i64* %RDX.i537
  %618 = load i64, i64* %PC.i535
  %619 = add i64 %618, 3
  store i64 %619, i64* %PC.i535
  store i64 %617, i64* %RAX.i536, align 8
  store %struct.Memory* %loadMem_4011b4, %struct.Memory** %MEMORY
  %loadMem_4011b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 33
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %PC.i534
  %624 = add i64 %623, 2
  store i64 %624, i64* %PC.i534
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %627 = load i64, i64* %626, align 8
  %628 = ashr i64 %627, 63
  store i64 %628, i64* %625, align 8
  store %struct.Memory* %loadMem_4011b7, %struct.Memory** %MEMORY
  %loadMem_4011b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 5
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %RCX.i530
  %636 = load i64, i64* %PC.i529
  %637 = add i64 %636, 3
  store i64 %637, i64* %PC.i529
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %639 = load i64, i64* %638, align 8
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %641 = load i64, i64* %640, align 8
  %642 = sext i64 %635 to i128
  %643 = and i128 %642, -18446744073709551616
  %644 = zext i64 %641 to i128
  %645 = shl i128 %644, 64
  %646 = zext i64 %639 to i128
  %647 = or i128 %645, %646
  %648 = zext i64 %635 to i128
  %649 = or i128 %643, %648
  %650 = sdiv i128 %647, %649
  %651 = trunc i128 %650 to i64
  %652 = and i128 %650, 18446744073709551615
  %653 = sext i64 %651 to i128
  %654 = and i128 %653, -18446744073709551616
  %655 = or i128 %654, %652
  %656 = icmp eq i128 %650, %655
  br i1 %656, label %661, label %657

; <label>:657:                                    ; preds = %block_401196
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %659 = load i64, i64* %658, align 8
  %660 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %659, %struct.Memory* %loadMem_4011b9)
  br label %routine_idivq__rcx.exit

; <label>:661:                                    ; preds = %block_401196
  %662 = srem i128 %647, %649
  %663 = trunc i128 %662 to i64
  store i64 %651, i64* %638, align 8
  store i64 %663, i64* %640, align 8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %664, align 1
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %665, align 1
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %666, align 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %667, align 1
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %668, align 1
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %669, align 1
  br label %routine_idivq__rcx.exit

routine_idivq__rcx.exit:                          ; preds = %657, %661
  %670 = phi %struct.Memory* [ %660, %657 ], [ %loadMem_4011b9, %661 ]
  store %struct.Memory* %670, %struct.Memory** %MEMORY
  %loadMem_4011bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 5
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RCX.i527 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 15
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %RBP.i528
  %681 = sub i64 %680, 16
  %682 = load i64, i64* %PC.i526
  %683 = add i64 %682, 4
  store i64 %683, i64* %PC.i526
  %684 = inttoptr i64 %681 to i64*
  %685 = load i64, i64* %684
  store i64 %685, i64* %RCX.i527, align 8
  store %struct.Memory* %loadMem_4011bc, %struct.Memory** %MEMORY
  %loadMem_4011c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 1
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 5
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %694 to i64*
  %695 = load i64, i64* %RAX.i524
  %696 = load i64, i64* %RCX.i525
  %697 = add i64 %696, 424
  %698 = load i64, i64* %PC.i523
  %699 = add i64 %698, 7
  store i64 %699, i64* %PC.i523
  %700 = inttoptr i64 %697 to i64*
  %701 = load i64, i64* %700
  %702 = add i64 %701, %695
  store i64 %702, i64* %RAX.i524, align 8
  %703 = icmp ult i64 %702, %695
  %704 = icmp ult i64 %702, %701
  %705 = or i1 %703, %704
  %706 = zext i1 %705 to i8
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %706, i8* %707, align 1
  %708 = trunc i64 %702 to i32
  %709 = and i32 %708, 255
  %710 = call i32 @llvm.ctpop.i32(i32 %709)
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %713, i8* %714, align 1
  %715 = xor i64 %701, %695
  %716 = xor i64 %715, %702
  %717 = lshr i64 %716, 4
  %718 = trunc i64 %717 to i8
  %719 = and i8 %718, 1
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %719, i8* %720, align 1
  %721 = icmp eq i64 %702, 0
  %722 = zext i1 %721 to i8
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %722, i8* %723, align 1
  %724 = lshr i64 %702, 63
  %725 = trunc i64 %724 to i8
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %725, i8* %726, align 1
  %727 = lshr i64 %695, 63
  %728 = lshr i64 %701, 63
  %729 = xor i64 %724, %727
  %730 = xor i64 %724, %728
  %731 = add i64 %729, %730
  %732 = icmp eq i64 %731, 2
  %733 = zext i1 %732 to i8
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %733, i8* %734, align 1
  store %struct.Memory* %loadMem_4011c0, %struct.Memory** %MEMORY
  %loadMem_4011c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 33
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %737 to i64*
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 5
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 15
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %743 to i64*
  %744 = load i64, i64* %RBP.i522
  %745 = sub i64 %744, 16
  %746 = load i64, i64* %PC.i520
  %747 = add i64 %746, 4
  store i64 %747, i64* %PC.i520
  %748 = inttoptr i64 %745 to i64*
  %749 = load i64, i64* %748
  store i64 %749, i64* %RCX.i521, align 8
  store %struct.Memory* %loadMem_4011c7, %struct.Memory** %MEMORY
  %loadMem_4011cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 1
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 5
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %758 to i64*
  %759 = load i64, i64* %RAX.i518
  %760 = load i64, i64* %RCX.i519
  %761 = add i64 %760, 416
  %762 = load i64, i64* %PC.i517
  %763 = add i64 %762, 7
  store i64 %763, i64* %PC.i517
  %764 = inttoptr i64 %761 to i64*
  %765 = load i64, i64* %764
  %766 = sub i64 %759, %765
  %767 = icmp ugt i64 %765, %759
  %768 = zext i1 %767 to i8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %768, i8* %769, align 1
  %770 = trunc i64 %766 to i32
  %771 = and i32 %770, 255
  %772 = call i32 @llvm.ctpop.i32(i32 %771)
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = xor i8 %774, 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %775, i8* %776, align 1
  %777 = xor i64 %765, %759
  %778 = xor i64 %777, %766
  %779 = lshr i64 %778, 4
  %780 = trunc i64 %779 to i8
  %781 = and i8 %780, 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %781, i8* %782, align 1
  %783 = icmp eq i64 %766, 0
  %784 = zext i1 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %784, i8* %785, align 1
  %786 = lshr i64 %766, 63
  %787 = trunc i64 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %787, i8* %788, align 1
  %789 = lshr i64 %759, 63
  %790 = lshr i64 %765, 63
  %791 = xor i64 %790, %789
  %792 = xor i64 %786, %789
  %793 = add i64 %792, %791
  %794 = icmp eq i64 %793, 2
  %795 = zext i1 %794 to i8
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %795, i8* %796, align 1
  store %struct.Memory* %loadMem_4011cb, %struct.Memory** %MEMORY
  %loadMem_4011d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 33
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %799 to i64*
  %800 = load i64, i64* %PC.i516
  %801 = add i64 %800, 55
  %802 = load i64, i64* %PC.i516
  %803 = add i64 %802, 6
  %804 = load i64, i64* %PC.i516
  %805 = add i64 %804, 6
  store i64 %805, i64* %PC.i516
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %807 = load i8, i8* %806, align 1
  %808 = icmp ne i8 %807, 0
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %810 = load i8, i8* %809, align 1
  %811 = icmp ne i8 %810, 0
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %813 = load i8, i8* %812, align 1
  %814 = icmp ne i8 %813, 0
  %815 = xor i1 %811, %814
  %816 = or i1 %808, %815
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %BRANCH_TAKEN, align 1
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %819 = select i1 %816, i64 %801, i64 %803
  store i64 %819, i64* %818, align 8
  store %struct.Memory* %loadMem_4011d2, %struct.Memory** %MEMORY
  %loadBr_4011d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011d2 = icmp eq i8 %loadBr_4011d2, 1
  br i1 %cmpBr_4011d2, label %block_.L_401209, label %block_4011d8

block_4011d8:                                     ; preds = %routine_idivq__rcx.exit
  %loadMem_4011d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 15
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %825 to i64*
  %826 = load i64, i64* %RBP.i515
  %827 = sub i64 %826, 48
  %828 = load i64, i64* %PC.i514
  %829 = add i64 %828, 8
  store i64 %829, i64* %PC.i514
  %830 = inttoptr i64 %827 to i64*
  store i64 1, i64* %830
  store %struct.Memory* %loadMem_4011d8, %struct.Memory** %MEMORY
  %loadMem_4011e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 33
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 11
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RDI.i512 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 15
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %839 to i64*
  %840 = load i64, i64* %RBP.i513
  %841 = sub i64 %840, 16
  %842 = load i64, i64* %PC.i511
  %843 = add i64 %842, 4
  store i64 %843, i64* %PC.i511
  %844 = inttoptr i64 %841 to i64*
  %845 = load i64, i64* %844
  store i64 %845, i64* %RDI.i512, align 8
  store %struct.Memory* %loadMem_4011e0, %struct.Memory** %MEMORY
  %loadMem1_4011e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %848 to i64*
  %849 = load i64, i64* %PC.i510
  %850 = add i64 %849, -2036
  %851 = load i64, i64* %PC.i510
  %852 = add i64 %851, 5
  %853 = load i64, i64* %PC.i510
  %854 = add i64 %853, 5
  store i64 %854, i64* %PC.i510
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %856 = load i64, i64* %855, align 8
  %857 = add i64 %856, -8
  %858 = inttoptr i64 %857 to i64*
  store i64 %852, i64* %858
  store i64 %857, i64* %855, align 8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %850, i64* %859, align 8
  store %struct.Memory* %loadMem1_4011e4, %struct.Memory** %MEMORY
  %loadMem2_4011e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4011e4 = load i64, i64* %3
  %call2_4011e4 = call %struct.Memory* @sub_4009f0.resize_prob(%struct.State* %0, i64 %loadPC_4011e4, %struct.Memory* %loadMem2_4011e4)
  store %struct.Memory* %call2_4011e4, %struct.Memory** %MEMORY
  %loadMem_4011e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 1
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %865 to i64*
  %866 = load i64, i64* %RAX.i509
  %867 = load i64, i64* %PC.i508
  %868 = add i64 %867, 4
  store i64 %868, i64* %PC.i508
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %869, align 1
  %870 = trunc i64 %866 to i32
  %871 = and i32 %870, 255
  %872 = call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %875, i8* %876, align 1
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %877, align 1
  %878 = icmp eq i64 %866, 0
  %879 = zext i1 %878 to i8
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %879, i8* %880, align 1
  %881 = lshr i64 %866, 63
  %882 = trunc i64 %881 to i8
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %882, i8* %883, align 1
  %884 = lshr i64 %866, 63
  %885 = xor i64 %881, %884
  %886 = add i64 %885, %884
  %887 = icmp eq i64 %886, 2
  %888 = zext i1 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %888, i8* %889, align 1
  store %struct.Memory* %loadMem_4011e9, %struct.Memory** %MEMORY
  %loadMem_4011ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 33
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %PC.i507
  %894 = add i64 %893, 19
  %895 = load i64, i64* %PC.i507
  %896 = add i64 %895, 6
  %897 = load i64, i64* %PC.i507
  %898 = add i64 %897, 6
  store i64 %898, i64* %PC.i507
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %900 = load i8, i8* %899, align 1
  store i8 %900, i8* %BRANCH_TAKEN, align 1
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %902 = icmp ne i8 %900, 0
  %903 = select i1 %902, i64 %894, i64 %896
  store i64 %903, i64* %901, align 8
  store %struct.Memory* %loadMem_4011ed, %struct.Memory** %MEMORY
  %loadBr_4011ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4011ed = icmp eq i8 %loadBr_4011ed, 1
  br i1 %cmpBr_4011ed, label %block_.L_401200, label %block_4011f3

block_4011f3:                                     ; preds = %block_4011d8
  %loadMem_4011f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 15
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %909 to i64*
  %910 = load i64, i64* %RBP.i506
  %911 = sub i64 %910, 8
  %912 = load i64, i64* %PC.i505
  %913 = add i64 %912, 8
  store i64 %913, i64* %PC.i505
  %914 = inttoptr i64 %911 to i64*
  store i64 -1, i64* %914
  store %struct.Memory* %loadMem_4011f3, %struct.Memory** %MEMORY
  %loadMem_4011fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %917 to i64*
  %918 = load i64, i64* %PC.i504
  %919 = add i64 %918, 1013
  %920 = load i64, i64* %PC.i504
  %921 = add i64 %920, 5
  store i64 %921, i64* %PC.i504
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %919, i64* %922, align 8
  store %struct.Memory* %loadMem_4011fb, %struct.Memory** %MEMORY
  br label %block_.L_4015f0

block_.L_401200:                                  ; preds = %block_4011d8
  %loadMem_401200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 33
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 11
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RDI.i502 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 15
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %931 to i64*
  %932 = load i64, i64* %RBP.i503
  %933 = sub i64 %932, 16
  %934 = load i64, i64* %PC.i501
  %935 = add i64 %934, 4
  store i64 %935, i64* %PC.i501
  %936 = inttoptr i64 %933 to i64*
  %937 = load i64, i64* %936
  store i64 %937, i64* %RDI.i502, align 8
  store %struct.Memory* %loadMem_401200, %struct.Memory** %MEMORY
  %loadMem1_401204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 33
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %940 to i64*
  %941 = load i64, i64* %PC.i500
  %942 = add i64 %941, 2444
  %943 = load i64, i64* %PC.i500
  %944 = add i64 %943, 5
  %945 = load i64, i64* %PC.i500
  %946 = add i64 %945, 5
  store i64 %946, i64* %PC.i500
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %948 = load i64, i64* %947, align 8
  %949 = add i64 %948, -8
  %950 = inttoptr i64 %949 to i64*
  store i64 %944, i64* %950
  store i64 %949, i64* %947, align 8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %942, i64* %951, align 8
  store %struct.Memory* %loadMem1_401204, %struct.Memory** %MEMORY
  %loadMem2_401204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401204 = load i64, i64* %3
  %call2_401204 = call %struct.Memory* @sub_401b90.refresh_neighbour_lists(%struct.State* %0, i64 %loadPC_401204, %struct.Memory* %loadMem2_401204)
  store %struct.Memory* %call2_401204, %struct.Memory** %MEMORY
  br label %block_.L_401209

block_.L_401209:                                  ; preds = %block_.L_401200, %routine_idivq__rcx.exit, %block_40116f
  %loadMem_401209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 33
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %954 to i64*
  %955 = load i64, i64* %PC.i499
  %956 = add i64 %955, 5
  %957 = load i64, i64* %PC.i499
  %958 = add i64 %957, 5
  store i64 %958, i64* %PC.i499
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %956, i64* %959, align 8
  store %struct.Memory* %loadMem_401209, %struct.Memory** %MEMORY
  br label %block_.L_40120e

block_.L_40120e:                                  ; preds = %block_.L_401209, %entry
  %loadMem_40120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 1
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i498
  %970 = sub i64 %969, 16
  %971 = load i64, i64* %PC.i496
  %972 = add i64 %971, 4
  store i64 %972, i64* %PC.i496
  %973 = inttoptr i64 %970 to i64*
  %974 = load i64, i64* %973
  store i64 %974, i64* %RAX.i497, align 8
  store %struct.Memory* %loadMem_40120e, %struct.Memory** %MEMORY
  %loadMem_401212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 1
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %980 to i64*
  %981 = load i64, i64* %RAX.i495
  %982 = add i64 %981, 576
  %983 = load i64, i64* %PC.i494
  %984 = add i64 %983, 7
  store i64 %984, i64* %PC.i494
  %985 = inttoptr i64 %982 to i64*
  %986 = load i64, i64* %985
  store i64 %986, i64* %RAX.i495, align 8
  store %struct.Memory* %loadMem_401212, %struct.Memory** %MEMORY
  %loadMem_401219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 1
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %992 to i64*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 15
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %995 to i64*
  %996 = load i64, i64* %RBP.i493
  %997 = sub i64 %996, 128
  %998 = load i64, i64* %RAX.i492
  %999 = load i64, i64* %PC.i491
  %1000 = add i64 %999, 4
  store i64 %1000, i64* %PC.i491
  %1001 = inttoptr i64 %997 to i64*
  store i64 %998, i64* %1001
  store %struct.Memory* %loadMem_401219, %struct.Memory** %MEMORY
  %loadMem_40121d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 33
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 1
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 15
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %1010 to i64*
  %1011 = load i64, i64* %RBP.i490
  %1012 = sub i64 %1011, 16
  %1013 = load i64, i64* %PC.i488
  %1014 = add i64 %1013, 4
  store i64 %1014, i64* %PC.i488
  %1015 = inttoptr i64 %1012 to i64*
  %1016 = load i64, i64* %1015
  store i64 %1016, i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_40121d, %struct.Memory** %MEMORY
  %loadMem_401221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 1
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %1022 to i64*
  %1023 = load i64, i64* %RAX.i487
  %1024 = add i64 %1023, 408
  %1025 = load i64, i64* %PC.i486
  %1026 = add i64 %1025, 7
  store i64 %1026, i64* %PC.i486
  %1027 = inttoptr i64 %1024 to i64*
  %1028 = load i64, i64* %1027
  store i64 %1028, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_401221, %struct.Memory** %MEMORY
  %loadMem_401228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 33
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 1
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 15
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %1037 to i64*
  %1038 = load i64, i64* %RBP.i485
  %1039 = sub i64 %1038, 32
  %1040 = load i64, i64* %RAX.i484
  %1041 = load i64, i64* %PC.i483
  %1042 = add i64 %1041, 4
  store i64 %1042, i64* %PC.i483
  %1043 = inttoptr i64 %1039 to i64*
  store i64 %1040, i64* %1043
  store %struct.Memory* %loadMem_401228, %struct.Memory** %MEMORY
  %loadMem_40122c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 33
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 1
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %1049 to i64*
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 15
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %1052 to i64*
  %1053 = load i64, i64* %RBP.i482
  %1054 = sub i64 %1053, 16
  %1055 = load i64, i64* %PC.i480
  %1056 = add i64 %1055, 4
  store i64 %1056, i64* %PC.i480
  %1057 = inttoptr i64 %1054 to i64*
  %1058 = load i64, i64* %1057
  store i64 %1058, i64* %RAX.i481, align 8
  store %struct.Memory* %loadMem_40122c, %struct.Memory** %MEMORY
  %loadMem_401230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 1
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %1064 to i64*
  %1065 = load i64, i64* %RAX.i479
  %1066 = add i64 %1065, 568
  %1067 = load i64, i64* %PC.i478
  %1068 = add i64 %1067, 7
  store i64 %1068, i64* %PC.i478
  %1069 = inttoptr i64 %1066 to i64*
  %1070 = load i64, i64* %1069
  store i64 %1070, i64* %RAX.i479, align 8
  store %struct.Memory* %loadMem_401230, %struct.Memory** %MEMORY
  %loadMem_401237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 33
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 1
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 15
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %1079 to i64*
  %1080 = load i64, i64* %RBP.i477
  %1081 = sub i64 %1080, 112
  %1082 = load i64, i64* %RAX.i476
  %1083 = load i64, i64* %PC.i475
  %1084 = add i64 %1083, 4
  store i64 %1084, i64* %PC.i475
  %1085 = inttoptr i64 %1081 to i64*
  store i64 %1082, i64* %1085
  store %struct.Memory* %loadMem_401237, %struct.Memory** %MEMORY
  %loadMem_40123b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 15
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %1091 to i64*
  %1092 = load i64, i64* %RBP.i474
  %1093 = sub i64 %1092, 24
  %1094 = load i64, i64* %PC.i473
  %1095 = add i64 %1094, 8
  store i64 %1095, i64* %PC.i473
  %1096 = inttoptr i64 %1093 to i64*
  store i64 0, i64* %1096
  store %struct.Memory* %loadMem_40123b, %struct.Memory** %MEMORY
  br label %block_.L_401243

block_.L_401243:                                  ; preds = %block_.L_401284, %block_.L_40120e
  %loadMem_401243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 33
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 1
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1102 to i32*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 1
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %RAX.i472
  %1107 = load i32, i32* %EAX.i
  %1108 = zext i32 %1107 to i64
  %1109 = load i64, i64* %PC.i471
  %1110 = add i64 %1109, 2
  store i64 %1110, i64* %PC.i471
  %1111 = xor i64 %1108, %1106
  %1112 = trunc i64 %1111 to i32
  %1113 = and i64 %1111, 4294967295
  store i64 %1113, i64* %RAX.i472, align 8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1114, align 1
  %1115 = and i32 %1112, 255
  %1116 = call i32 @llvm.ctpop.i32(i32 %1115)
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  %1119 = xor i8 %1118, 1
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1119, i8* %1120, align 1
  %1121 = icmp eq i32 %1112, 0
  %1122 = zext i1 %1121 to i8
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1122, i8* %1123, align 1
  %1124 = lshr i32 %1112, 31
  %1125 = trunc i32 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1125, i8* %1126, align 1
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1127, align 1
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1128, align 1
  store %struct.Memory* %loadMem_401243, %struct.Memory** %MEMORY
  %loadMem_401245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 33
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 1
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %1135 = bitcast %union.anon* %1134 to %struct.anon.2*
  %AL.i469 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1135, i32 0, i32 0
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 5
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %1139 = bitcast %union.anon* %1138 to %struct.anon.2*
  %CL.i470 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1139, i32 0, i32 0
  %1140 = load i8, i8* %AL.i469
  %1141 = zext i8 %1140 to i64
  %1142 = load i64, i64* %PC.i468
  %1143 = add i64 %1142, 2
  store i64 %1143, i64* %PC.i468
  store i8 %1140, i8* %CL.i470, align 1
  store %struct.Memory* %loadMem_401245, %struct.Memory** %MEMORY
  %loadMem_401247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 33
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 7
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %RDX.i466 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 15
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %1152 to i64*
  %1153 = load i64, i64* %RBP.i467
  %1154 = sub i64 %1153, 24
  %1155 = load i64, i64* %PC.i465
  %1156 = add i64 %1155, 4
  store i64 %1156, i64* %PC.i465
  %1157 = inttoptr i64 %1154 to i64*
  %1158 = load i64, i64* %1157
  store i64 %1158, i64* %RDX.i466, align 8
  store %struct.Memory* %loadMem_401247, %struct.Memory** %MEMORY
  %loadMem_40124b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 7
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RDX.i463 = bitcast %union.anon* %1164 to i64*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 15
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %1167 to i64*
  %1168 = load i64, i64* %RDX.i463
  %1169 = load i64, i64* %RBP.i464
  %1170 = sub i64 %1169, 32
  %1171 = load i64, i64* %PC.i462
  %1172 = add i64 %1171, 4
  store i64 %1172, i64* %PC.i462
  %1173 = inttoptr i64 %1170 to i64*
  %1174 = load i64, i64* %1173
  %1175 = sub i64 %1168, %1174
  %1176 = icmp ugt i64 %1174, %1168
  %1177 = zext i1 %1176 to i8
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1177, i8* %1178, align 1
  %1179 = trunc i64 %1175 to i32
  %1180 = and i32 %1179, 255
  %1181 = call i32 @llvm.ctpop.i32(i32 %1180)
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = xor i8 %1183, 1
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1184, i8* %1185, align 1
  %1186 = xor i64 %1174, %1168
  %1187 = xor i64 %1186, %1175
  %1188 = lshr i64 %1187, 4
  %1189 = trunc i64 %1188 to i8
  %1190 = and i8 %1189, 1
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1190, i8* %1191, align 1
  %1192 = icmp eq i64 %1175, 0
  %1193 = zext i1 %1192 to i8
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1193, i8* %1194, align 1
  %1195 = lshr i64 %1175, 63
  %1196 = trunc i64 %1195 to i8
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1196, i8* %1197, align 1
  %1198 = lshr i64 %1168, 63
  %1199 = lshr i64 %1174, 63
  %1200 = xor i64 %1199, %1198
  %1201 = xor i64 %1195, %1198
  %1202 = add i64 %1201, %1200
  %1203 = icmp eq i64 %1202, 2
  %1204 = zext i1 %1203 to i8
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1204, i8* %1205, align 1
  store %struct.Memory* %loadMem_40124b, %struct.Memory** %MEMORY
  %loadMem_40124f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 5
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %1212 = bitcast %union.anon* %1211 to %struct.anon.2*
  %CL.i460 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1212, i32 0, i32 0
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 15
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %1215 to i64*
  %1216 = load i64, i64* %RBP.i461
  %1217 = sub i64 %1216, 161
  %1218 = load i8, i8* %CL.i460
  %1219 = zext i8 %1218 to i64
  %1220 = load i64, i64* %PC.i459
  %1221 = add i64 %1220, 6
  store i64 %1221, i64* %PC.i459
  %1222 = inttoptr i64 %1217 to i8*
  store i8 %1218, i8* %1222
  store %struct.Memory* %loadMem_40124f, %struct.Memory** %MEMORY
  %loadMem_401255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1225 to i64*
  %1226 = load i64, i64* %PC.i458
  %1227 = add i64 %1226, 23
  %1228 = load i64, i64* %PC.i458
  %1229 = add i64 %1228, 6
  %1230 = load i64, i64* %PC.i458
  %1231 = add i64 %1230, 6
  store i64 %1231, i64* %PC.i458
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1233 = load i8, i8* %1232, align 1
  %1234 = icmp ne i8 %1233, 0
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1236 = load i8, i8* %1235, align 1
  %1237 = icmp ne i8 %1236, 0
  %1238 = xor i1 %1234, %1237
  %1239 = xor i1 %1238, true
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %BRANCH_TAKEN, align 1
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1242 = select i1 %1238, i64 %1229, i64 %1227
  store i64 %1242, i64* %1241, align 8
  store %struct.Memory* %loadMem_401255, %struct.Memory** %MEMORY
  %loadBr_401255 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401255 = icmp eq i8 %loadBr_401255, 1
  br i1 %cmpBr_401255, label %block_.L_40126c, label %block_40125b

block_40125b:                                     ; preds = %block_.L_401243
  %loadMem_40125b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 33
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 1
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 15
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %RBP.i457
  %1253 = sub i64 %1252, 112
  %1254 = load i64, i64* %PC.i455
  %1255 = add i64 %1254, 4
  store i64 %1255, i64* %PC.i455
  %1256 = inttoptr i64 %1253 to i64*
  %1257 = load i64, i64* %1256
  store i64 %1257, i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_40125b, %struct.Memory** %MEMORY
  %loadMem_40125f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 1
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RAX.i454
  %1265 = add i64 %1264, 88
  %1266 = load i64, i64* %PC.i453
  %1267 = add i64 %1266, 4
  store i64 %1267, i64* %PC.i453
  %1268 = inttoptr i64 %1265 to i32*
  %1269 = load i32, i32* %1268
  %1270 = sub i32 %1269, -1
  %1271 = icmp ult i32 %1269, -1
  %1272 = zext i1 %1271 to i8
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1272, i8* %1273, align 1
  %1274 = and i32 %1270, 255
  %1275 = call i32 @llvm.ctpop.i32(i32 %1274)
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  %1278 = xor i8 %1277, 1
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1278, i8* %1279, align 1
  %1280 = xor i32 %1269, -1
  %1281 = xor i32 %1280, %1270
  %1282 = lshr i32 %1281, 4
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1284, i8* %1285, align 1
  %1286 = icmp eq i32 %1270, 0
  %1287 = zext i1 %1286 to i8
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1287, i8* %1288, align 1
  %1289 = lshr i32 %1270, 31
  %1290 = trunc i32 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1290, i8* %1291, align 1
  %1292 = lshr i32 %1269, 31
  %1293 = xor i32 %1292, 1
  %1294 = xor i32 %1289, %1292
  %1295 = add i32 %1294, %1293
  %1296 = icmp eq i32 %1295, 2
  %1297 = zext i1 %1296 to i8
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1297, i8* %1298, align 1
  store %struct.Memory* %loadMem_40125f, %struct.Memory** %MEMORY
  %loadMem_401263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 5
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %1305 = bitcast %union.anon* %1304 to %struct.anon.2*
  %CL.i452 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1305, i32 0, i32 0
  %1306 = load i64, i64* %PC.i451
  %1307 = add i64 %1306, 3
  store i64 %1307, i64* %PC.i451
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1309 = load i8, i8* %1308, align 1
  store i8 %1309, i8* %CL.i452, align 1
  store %struct.Memory* %loadMem_401263, %struct.Memory** %MEMORY
  %loadMem_401266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 5
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %1316 = bitcast %union.anon* %1315 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1316, i32 0, i32 0
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 15
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %1319 to i64*
  %1320 = load i64, i64* %RBP.i450
  %1321 = sub i64 %1320, 161
  %1322 = load i8, i8* %CL.i
  %1323 = zext i8 %1322 to i64
  %1324 = load i64, i64* %PC.i449
  %1325 = add i64 %1324, 6
  store i64 %1325, i64* %PC.i449
  %1326 = inttoptr i64 %1321 to i8*
  store i8 %1322, i8* %1326
  store %struct.Memory* %loadMem_401266, %struct.Memory** %MEMORY
  br label %block_.L_40126c

block_.L_40126c:                                  ; preds = %block_40125b, %block_.L_401243
  %loadMem_40126c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 33
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 1
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %1333 = bitcast %union.anon* %1332 to %struct.anon.2*
  %AL.i447 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1333, i32 0, i32 0
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 15
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %1336 to i64*
  %1337 = load i64, i64* %RBP.i448
  %1338 = sub i64 %1337, 161
  %1339 = load i64, i64* %PC.i446
  %1340 = add i64 %1339, 6
  store i64 %1340, i64* %PC.i446
  %1341 = inttoptr i64 %1338 to i8*
  %1342 = load i8, i8* %1341
  store i8 %1342, i8* %AL.i447, align 1
  store %struct.Memory* %loadMem_40126c, %struct.Memory** %MEMORY
  %loadMem_401272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 33
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 1
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %1349 = bitcast %union.anon* %1348 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1349, i32 0, i32 0
  %1350 = load i8, i8* %AL.i
  %1351 = zext i8 %1350 to i64
  %1352 = load i64, i64* %PC.i445
  %1353 = add i64 %1352, 2
  store i64 %1353, i64* %PC.i445
  %1354 = and i64 1, %1351
  %1355 = trunc i64 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1356, align 1
  %1357 = trunc i64 %1354 to i32
  %1358 = and i32 %1357, 255
  %1359 = call i32 @llvm.ctpop.i32(i32 %1358)
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  %1362 = xor i8 %1361, 1
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1362, i8* %1363, align 1
  %1364 = icmp eq i8 %1355, 0
  %1365 = zext i1 %1364 to i8
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1365, i8* %1366, align 1
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1367, align 1
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1368, align 1
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1369, align 1
  store %struct.Memory* %loadMem_401272, %struct.Memory** %MEMORY
  %loadMem_401274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 33
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1372 to i64*
  %1373 = load i64, i64* %PC.i444
  %1374 = add i64 %1373, 11
  %1375 = load i64, i64* %PC.i444
  %1376 = add i64 %1375, 6
  %1377 = load i64, i64* %PC.i444
  %1378 = add i64 %1377, 6
  store i64 %1378, i64* %PC.i444
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1380 = load i8, i8* %1379, align 1
  %1381 = icmp eq i8 %1380, 0
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %BRANCH_TAKEN, align 1
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1384 = select i1 %1381, i64 %1374, i64 %1376
  store i64 %1384, i64* %1383, align 8
  store %struct.Memory* %loadMem_401274, %struct.Memory** %MEMORY
  %loadBr_401274 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401274 = icmp eq i8 %loadBr_401274, 1
  br i1 %cmpBr_401274, label %block_.L_40127f, label %block_40127a

block_40127a:                                     ; preds = %block_.L_40126c
  %loadMem_40127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 33
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1387 to i64*
  %1388 = load i64, i64* %PC.i443
  %1389 = add i64 %1388, 41
  %1390 = load i64, i64* %PC.i443
  %1391 = add i64 %1390, 5
  store i64 %1391, i64* %PC.i443
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1389, i64* %1392, align 8
  store %struct.Memory* %loadMem_40127a, %struct.Memory** %MEMORY
  br label %block_.L_4012a3

block_.L_40127f:                                  ; preds = %block_.L_40126c
  %loadMem_40127f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 33
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1395 to i64*
  %1396 = load i64, i64* %PC.i442
  %1397 = add i64 %1396, 5
  %1398 = load i64, i64* %PC.i442
  %1399 = add i64 %1398, 5
  store i64 %1399, i64* %PC.i442
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1397, i64* %1400, align 8
  store %struct.Memory* %loadMem_40127f, %struct.Memory** %MEMORY
  br label %block_.L_401284

block_.L_401284:                                  ; preds = %block_.L_40127f
  %loadMem_401284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 1
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 15
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %1409 to i64*
  %1410 = load i64, i64* %RBP.i441
  %1411 = sub i64 %1410, 24
  %1412 = load i64, i64* %PC.i439
  %1413 = add i64 %1412, 4
  store i64 %1413, i64* %PC.i439
  %1414 = inttoptr i64 %1411 to i64*
  %1415 = load i64, i64* %1414
  store i64 %1415, i64* %RAX.i440, align 8
  store %struct.Memory* %loadMem_401284, %struct.Memory** %MEMORY
  %loadMem_401288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 1
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %RAX.i438
  %1423 = load i64, i64* %PC.i437
  %1424 = add i64 %1423, 4
  store i64 %1424, i64* %PC.i437
  %1425 = add i64 1, %1422
  store i64 %1425, i64* %RAX.i438, align 8
  %1426 = icmp ult i64 %1425, %1422
  %1427 = icmp ult i64 %1425, 1
  %1428 = or i1 %1426, %1427
  %1429 = zext i1 %1428 to i8
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1429, i8* %1430, align 1
  %1431 = trunc i64 %1425 to i32
  %1432 = and i32 %1431, 255
  %1433 = call i32 @llvm.ctpop.i32(i32 %1432)
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = xor i8 %1435, 1
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1436, i8* %1437, align 1
  %1438 = xor i64 1, %1422
  %1439 = xor i64 %1438, %1425
  %1440 = lshr i64 %1439, 4
  %1441 = trunc i64 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1442, i8* %1443, align 1
  %1444 = icmp eq i64 %1425, 0
  %1445 = zext i1 %1444 to i8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1445, i8* %1446, align 1
  %1447 = lshr i64 %1425, 63
  %1448 = trunc i64 %1447 to i8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1448, i8* %1449, align 1
  %1450 = lshr i64 %1422, 63
  %1451 = xor i64 %1447, %1450
  %1452 = add i64 %1451, %1447
  %1453 = icmp eq i64 %1452, 2
  %1454 = zext i1 %1453 to i8
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1454, i8* %1455, align 1
  store %struct.Memory* %loadMem_401288, %struct.Memory** %MEMORY
  %loadMem_40128c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 33
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1458 to i64*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 1
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 15
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %1464 to i64*
  %1465 = load i64, i64* %RBP.i436
  %1466 = sub i64 %1465, 24
  %1467 = load i64, i64* %RAX.i435
  %1468 = load i64, i64* %PC.i434
  %1469 = add i64 %1468, 4
  store i64 %1469, i64* %PC.i434
  %1470 = inttoptr i64 %1466 to i64*
  store i64 %1467, i64* %1470
  store %struct.Memory* %loadMem_40128c, %struct.Memory** %MEMORY
  %loadMem_401290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 1
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 15
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %1479 to i64*
  %1480 = load i64, i64* %RBP.i433
  %1481 = sub i64 %1480, 112
  %1482 = load i64, i64* %PC.i431
  %1483 = add i64 %1482, 4
  store i64 %1483, i64* %PC.i431
  %1484 = inttoptr i64 %1481 to i64*
  %1485 = load i64, i64* %1484
  store i64 %1485, i64* %RAX.i432, align 8
  store %struct.Memory* %loadMem_401290, %struct.Memory** %MEMORY
  %loadMem_401294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 33
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 1
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %RAX.i430
  %1493 = load i64, i64* %PC.i429
  %1494 = add i64 %1493, 6
  store i64 %1494, i64* %PC.i429
  %1495 = add i64 192, %1492
  store i64 %1495, i64* %RAX.i430, align 8
  %1496 = icmp ult i64 %1495, %1492
  %1497 = icmp ult i64 %1495, 192
  %1498 = or i1 %1496, %1497
  %1499 = zext i1 %1498 to i8
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1499, i8* %1500, align 1
  %1501 = trunc i64 %1495 to i32
  %1502 = and i32 %1501, 255
  %1503 = call i32 @llvm.ctpop.i32(i32 %1502)
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1506, i8* %1507, align 1
  %1508 = xor i64 192, %1492
  %1509 = xor i64 %1508, %1495
  %1510 = lshr i64 %1509, 4
  %1511 = trunc i64 %1510 to i8
  %1512 = and i8 %1511, 1
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1512, i8* %1513, align 1
  %1514 = icmp eq i64 %1495, 0
  %1515 = zext i1 %1514 to i8
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1515, i8* %1516, align 1
  %1517 = lshr i64 %1495, 63
  %1518 = trunc i64 %1517 to i8
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1518, i8* %1519, align 1
  %1520 = lshr i64 %1492, 63
  %1521 = xor i64 %1517, %1520
  %1522 = add i64 %1521, %1517
  %1523 = icmp eq i64 %1522, 2
  %1524 = zext i1 %1523 to i8
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1524, i8* %1525, align 1
  store %struct.Memory* %loadMem_401294, %struct.Memory** %MEMORY
  %loadMem_40129a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 1
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 15
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %RBP.i428
  %1536 = sub i64 %1535, 112
  %1537 = load i64, i64* %RAX.i427
  %1538 = load i64, i64* %PC.i426
  %1539 = add i64 %1538, 4
  store i64 %1539, i64* %PC.i426
  %1540 = inttoptr i64 %1536 to i64*
  store i64 %1537, i64* %1540
  store %struct.Memory* %loadMem_40129a, %struct.Memory** %MEMORY
  %loadMem_40129e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1543 to i64*
  %1544 = load i64, i64* %PC.i425
  %1545 = add i64 %1544, -91
  %1546 = load i64, i64* %PC.i425
  %1547 = add i64 %1546, 5
  store i64 %1547, i64* %PC.i425
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1545, i64* %1548, align 8
  store %struct.Memory* %loadMem_40129e, %struct.Memory** %MEMORY
  br label %block_.L_401243

block_.L_4012a3:                                  ; preds = %block_40127a
  %loadMem_4012a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 33
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1551 to i64*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 15
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %1554 to i64*
  %1555 = load i64, i64* %RBP.i424
  %1556 = sub i64 %1555, 144
  %1557 = load i64, i64* %PC.i423
  %1558 = add i64 %1557, 11
  store i64 %1558, i64* %PC.i423
  %1559 = inttoptr i64 %1556 to i64*
  store i64 0, i64* %1559
  store %struct.Memory* %loadMem_4012a3, %struct.Memory** %MEMORY
  br label %block_.L_4012ae

block_.L_4012ae:                                  ; preds = %block_.L_401465, %block_.L_4012a3
  %loadMem_4012ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 33
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 1
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %1565 to i64*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 15
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %1568 to i64*
  %1569 = load i64, i64* %RBP.i422
  %1570 = sub i64 %1569, 24
  %1571 = load i64, i64* %PC.i420
  %1572 = add i64 %1571, 4
  store i64 %1572, i64* %PC.i420
  %1573 = inttoptr i64 %1570 to i64*
  %1574 = load i64, i64* %1573
  store i64 %1574, i64* %RAX.i421, align 8
  store %struct.Memory* %loadMem_4012ae, %struct.Memory** %MEMORY
  %loadMem_4012b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 1
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %1580 to i64*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 15
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %1583 to i64*
  %1584 = load i64, i64* %RAX.i418
  %1585 = load i64, i64* %RBP.i419
  %1586 = sub i64 %1585, 32
  %1587 = load i64, i64* %PC.i417
  %1588 = add i64 %1587, 4
  store i64 %1588, i64* %PC.i417
  %1589 = inttoptr i64 %1586 to i64*
  %1590 = load i64, i64* %1589
  %1591 = sub i64 %1584, %1590
  %1592 = icmp ugt i64 %1590, %1584
  %1593 = zext i1 %1592 to i8
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1593, i8* %1594, align 1
  %1595 = trunc i64 %1591 to i32
  %1596 = and i32 %1595, 255
  %1597 = call i32 @llvm.ctpop.i32(i32 %1596)
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  %1600 = xor i8 %1599, 1
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1600, i8* %1601, align 1
  %1602 = xor i64 %1590, %1584
  %1603 = xor i64 %1602, %1591
  %1604 = lshr i64 %1603, 4
  %1605 = trunc i64 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1606, i8* %1607, align 1
  %1608 = icmp eq i64 %1591, 0
  %1609 = zext i1 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1609, i8* %1610, align 1
  %1611 = lshr i64 %1591, 63
  %1612 = trunc i64 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1612, i8* %1613, align 1
  %1614 = lshr i64 %1584, 63
  %1615 = lshr i64 %1590, 63
  %1616 = xor i64 %1615, %1614
  %1617 = xor i64 %1611, %1614
  %1618 = add i64 %1617, %1616
  %1619 = icmp eq i64 %1618, 2
  %1620 = zext i1 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1620, i8* %1621, align 1
  store %struct.Memory* %loadMem_4012b2, %struct.Memory** %MEMORY
  %loadMem_4012b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %1624 to i64*
  %1625 = load i64, i64* %PC.i416
  %1626 = add i64 %1625, 462
  %1627 = load i64, i64* %PC.i416
  %1628 = add i64 %1627, 6
  %1629 = load i64, i64* %PC.i416
  %1630 = add i64 %1629, 6
  store i64 %1630, i64* %PC.i416
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1632 = load i8, i8* %1631, align 1
  %1633 = icmp ne i8 %1632, 0
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1635 = load i8, i8* %1634, align 1
  %1636 = icmp ne i8 %1635, 0
  %1637 = xor i1 %1633, %1636
  %1638 = xor i1 %1637, true
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %BRANCH_TAKEN, align 1
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1641 = select i1 %1637, i64 %1628, i64 %1626
  store i64 %1641, i64* %1640, align 8
  store %struct.Memory* %loadMem_4012b6, %struct.Memory** %MEMORY
  %loadBr_4012b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012b6 = icmp eq i8 %loadBr_4012b6, 1
  br i1 %cmpBr_4012b6, label %block_.L_401484, label %block_4012bc

block_4012bc:                                     ; preds = %block_.L_4012ae
  %loadMem_4012bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 33
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 1
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 15
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %1650 to i64*
  %1651 = load i64, i64* %RBP.i415
  %1652 = sub i64 %1651, 112
  %1653 = load i64, i64* %PC.i413
  %1654 = add i64 %1653, 4
  store i64 %1654, i64* %PC.i413
  %1655 = inttoptr i64 %1652 to i64*
  %1656 = load i64, i64* %1655
  store i64 %1656, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_4012bc, %struct.Memory** %MEMORY
  %loadMem_4012c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 1
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %1662 to i64*
  %1663 = load i64, i64* %RAX.i412
  %1664 = add i64 %1663, 88
  %1665 = load i64, i64* %PC.i411
  %1666 = add i64 %1665, 4
  store i64 %1666, i64* %PC.i411
  %1667 = inttoptr i64 %1664 to i32*
  %1668 = load i32, i32* %1667
  %1669 = sub i32 %1668, -1
  %1670 = icmp ult i32 %1668, -1
  %1671 = zext i1 %1670 to i8
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1671, i8* %1672, align 1
  %1673 = and i32 %1669, 255
  %1674 = call i32 @llvm.ctpop.i32(i32 %1673)
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  %1677 = xor i8 %1676, 1
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1677, i8* %1678, align 1
  %1679 = xor i32 %1668, -1
  %1680 = xor i32 %1679, %1669
  %1681 = lshr i32 %1680, 4
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1683, i8* %1684, align 1
  %1685 = icmp eq i32 %1669, 0
  %1686 = zext i1 %1685 to i8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1686, i8* %1687, align 1
  %1688 = lshr i32 %1669, 31
  %1689 = trunc i32 %1688 to i8
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1689, i8* %1690, align 1
  %1691 = lshr i32 %1668, 31
  %1692 = xor i32 %1691, 1
  %1693 = xor i32 %1688, %1691
  %1694 = add i32 %1693, %1692
  %1695 = icmp eq i32 %1694, 2
  %1696 = zext i1 %1695 to i8
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1696, i8* %1697, align 1
  store %struct.Memory* %loadMem_4012c0, %struct.Memory** %MEMORY
  %loadMem_4012c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %1700 to i64*
  %1701 = load i64, i64* %PC.i410
  %1702 = add i64 %1701, 48
  %1703 = load i64, i64* %PC.i410
  %1704 = add i64 %1703, 6
  %1705 = load i64, i64* %PC.i410
  %1706 = add i64 %1705, 6
  store i64 %1706, i64* %PC.i410
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1708 = load i8, i8* %1707, align 1
  store i8 %1708, i8* %BRANCH_TAKEN, align 1
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1710 = icmp ne i8 %1708, 0
  %1711 = select i1 %1710, i64 %1702, i64 %1704
  store i64 %1711, i64* %1709, align 8
  store %struct.Memory* %loadMem_4012c4, %struct.Memory** %MEMORY
  %loadBr_4012c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012c4 = icmp eq i8 %loadBr_4012c4, 1
  br i1 %cmpBr_4012c4, label %block_.L_4012f4, label %block_4012ca

block_4012ca:                                     ; preds = %block_4012bc
  %loadMem_4012ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 1
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 15
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %1720 to i64*
  %1721 = load i64, i64* %RBP.i409
  %1722 = sub i64 %1721, 144
  %1723 = load i64, i64* %PC.i407
  %1724 = add i64 %1723, 7
  store i64 %1724, i64* %PC.i407
  %1725 = inttoptr i64 %1722 to i64*
  %1726 = load i64, i64* %1725
  store i64 %1726, i64* %RAX.i408, align 8
  store %struct.Memory* %loadMem_4012ca, %struct.Memory** %MEMORY
  %loadMem_4012d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 33
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 5
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 15
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %1735 to i64*
  %1736 = load i64, i64* %RBP.i406
  %1737 = sub i64 %1736, 112
  %1738 = load i64, i64* %PC.i404
  %1739 = add i64 %1738, 4
  store i64 %1739, i64* %PC.i404
  %1740 = inttoptr i64 %1737 to i64*
  %1741 = load i64, i64* %1740
  store i64 %1741, i64* %RCX.i405, align 8
  store %struct.Memory* %loadMem_4012d1, %struct.Memory** %MEMORY
  %loadMem_4012d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 5
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %1747 to i64*
  %1748 = load i64, i64* %RCX.i403
  %1749 = add i64 %1748, 16
  %1750 = load i64, i64* %PC.i402
  %1751 = add i64 %1750, 4
  store i64 %1751, i64* %PC.i402
  %1752 = inttoptr i64 %1749 to i64*
  %1753 = load i64, i64* %1752
  store i64 %1753, i64* %RCX.i403, align 8
  store %struct.Memory* %loadMem_4012d5, %struct.Memory** %MEMORY
  %loadMem_4012d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 5
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %RCX.i401 = bitcast %union.anon* %1759 to i64*
  %1760 = load i64, i64* %RCX.i401
  %1761 = add i64 %1760, 56
  %1762 = load i64, i64* %PC.i400
  %1763 = add i64 %1762, 4
  store i64 %1763, i64* %PC.i400
  %1764 = inttoptr i64 %1761 to i64*
  %1765 = load i64, i64* %1764
  store i64 %1765, i64* %RCX.i401, align 8
  store %struct.Memory* %loadMem_4012d9, %struct.Memory** %MEMORY
  %loadMem_4012dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 33
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 5
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %1771 to i64*
  %1772 = load i64, i64* %RCX.i399
  %1773 = add i64 %1772, 16
  %1774 = load i64, i64* %PC.i398
  %1775 = add i64 %1774, 4
  store i64 %1775, i64* %PC.i398
  %1776 = inttoptr i64 %1773 to i64*
  %1777 = load i64, i64* %1776
  store i64 %1777, i64* %RCX.i399, align 8
  store %struct.Memory* %loadMem_4012dd, %struct.Memory** %MEMORY
  %loadMem_4012e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 33
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 1
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 5
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %1786 to i64*
  %1787 = load i64, i64* %RCX.i397
  %1788 = add i64 %1787, 72
  %1789 = load i64, i64* %RAX.i396
  %1790 = load i64, i64* %PC.i395
  %1791 = add i64 %1790, 4
  store i64 %1791, i64* %PC.i395
  %1792 = inttoptr i64 %1788 to i64*
  store i64 %1789, i64* %1792
  store %struct.Memory* %loadMem_4012e1, %struct.Memory** %MEMORY
  %loadMem_4012e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 33
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %1795 to i64*
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 1
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %1798 to i64*
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 15
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %1801 to i64*
  %1802 = load i64, i64* %RBP.i394
  %1803 = sub i64 %1802, 112
  %1804 = load i64, i64* %PC.i392
  %1805 = add i64 %1804, 4
  store i64 %1805, i64* %PC.i392
  %1806 = inttoptr i64 %1803 to i64*
  %1807 = load i64, i64* %1806
  store i64 %1807, i64* %RAX.i393, align 8
  store %struct.Memory* %loadMem_4012e5, %struct.Memory** %MEMORY
  %loadMem_4012e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 1
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %1813 to i64*
  %1814 = load i64, i64* %RAX.i391
  %1815 = load i64, i64* %PC.i390
  %1816 = add i64 %1815, 4
  store i64 %1816, i64* %PC.i390
  %1817 = add i64 64, %1814
  store i64 %1817, i64* %RAX.i391, align 8
  %1818 = icmp ult i64 %1817, %1814
  %1819 = icmp ult i64 %1817, 64
  %1820 = or i1 %1818, %1819
  %1821 = zext i1 %1820 to i8
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1821, i8* %1822, align 1
  %1823 = trunc i64 %1817 to i32
  %1824 = and i32 %1823, 255
  %1825 = call i32 @llvm.ctpop.i32(i32 %1824)
  %1826 = trunc i32 %1825 to i8
  %1827 = and i8 %1826, 1
  %1828 = xor i8 %1827, 1
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1828, i8* %1829, align 1
  %1830 = xor i64 64, %1814
  %1831 = xor i64 %1830, %1817
  %1832 = lshr i64 %1831, 4
  %1833 = trunc i64 %1832 to i8
  %1834 = and i8 %1833, 1
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1834, i8* %1835, align 1
  %1836 = icmp eq i64 %1817, 0
  %1837 = zext i1 %1836 to i8
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1837, i8* %1838, align 1
  %1839 = lshr i64 %1817, 63
  %1840 = trunc i64 %1839 to i8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1840, i8* %1841, align 1
  %1842 = lshr i64 %1814, 63
  %1843 = xor i64 %1839, %1842
  %1844 = add i64 %1843, %1839
  %1845 = icmp eq i64 %1844, 2
  %1846 = zext i1 %1845 to i8
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1846, i8* %1847, align 1
  store %struct.Memory* %loadMem_4012e9, %struct.Memory** %MEMORY
  %loadMem_4012ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 33
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 1
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 15
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %1856 to i64*
  %1857 = load i64, i64* %RBP.i389
  %1858 = sub i64 %1857, 144
  %1859 = load i64, i64* %RAX.i388
  %1860 = load i64, i64* %PC.i387
  %1861 = add i64 %1860, 7
  store i64 %1861, i64* %PC.i387
  %1862 = inttoptr i64 %1858 to i64*
  store i64 %1859, i64* %1862
  store %struct.Memory* %loadMem_4012ed, %struct.Memory** %MEMORY
  br label %block_.L_4012f4

block_.L_4012f4:                                  ; preds = %block_4012ca, %block_4012bc
  %loadMem_4012f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 1
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 15
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %RBP.i386
  %1873 = sub i64 %1872, 112
  %1874 = load i64, i64* %PC.i384
  %1875 = add i64 %1874, 4
  store i64 %1875, i64* %PC.i384
  %1876 = inttoptr i64 %1873 to i64*
  %1877 = load i64, i64* %1876
  store i64 %1877, i64* %RAX.i385, align 8
  store %struct.Memory* %loadMem_4012f4, %struct.Memory** %MEMORY
  %loadMem_4012f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 33
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 1
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %1883 to i64*
  %1884 = load i64, i64* %RAX.i383
  %1885 = add i64 %1884, 24
  %1886 = load i64, i64* %PC.i382
  %1887 = add i64 %1886, 4
  store i64 %1887, i64* %PC.i382
  %1888 = inttoptr i64 %1885 to i32*
  %1889 = load i32, i32* %1888
  %1890 = sub i32 %1889, -1
  %1891 = icmp ult i32 %1889, -1
  %1892 = zext i1 %1891 to i8
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1892, i8* %1893, align 1
  %1894 = and i32 %1890, 255
  %1895 = call i32 @llvm.ctpop.i32(i32 %1894)
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  %1898 = xor i8 %1897, 1
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1898, i8* %1899, align 1
  %1900 = xor i32 %1889, -1
  %1901 = xor i32 %1900, %1890
  %1902 = lshr i32 %1901, 4
  %1903 = trunc i32 %1902 to i8
  %1904 = and i8 %1903, 1
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1904, i8* %1905, align 1
  %1906 = icmp eq i32 %1890, 0
  %1907 = zext i1 %1906 to i8
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1907, i8* %1908, align 1
  %1909 = lshr i32 %1890, 31
  %1910 = trunc i32 %1909 to i8
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1910, i8* %1911, align 1
  %1912 = lshr i32 %1889, 31
  %1913 = xor i32 %1912, 1
  %1914 = xor i32 %1909, %1912
  %1915 = add i32 %1914, %1913
  %1916 = icmp eq i32 %1915, 2
  %1917 = zext i1 %1916 to i8
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1917, i8* %1918, align 1
  store %struct.Memory* %loadMem_4012f8, %struct.Memory** %MEMORY
  %loadMem_4012fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 33
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %PC.i381
  %1923 = add i64 %1922, 11
  %1924 = load i64, i64* %PC.i381
  %1925 = add i64 %1924, 6
  %1926 = load i64, i64* %PC.i381
  %1927 = add i64 %1926, 6
  store i64 %1927, i64* %PC.i381
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1929 = load i8, i8* %1928, align 1
  %1930 = icmp eq i8 %1929, 0
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %BRANCH_TAKEN, align 1
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1933 = select i1 %1930, i64 %1923, i64 %1925
  store i64 %1933, i64* %1932, align 8
  store %struct.Memory* %loadMem_4012fc, %struct.Memory** %MEMORY
  %loadBr_4012fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4012fc = icmp eq i8 %loadBr_4012fc, 1
  br i1 %cmpBr_4012fc, label %block_.L_401307, label %block_401302

block_401302:                                     ; preds = %block_.L_4012f4
  %loadMem_401302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1936 to i64*
  %1937 = load i64, i64* %PC.i380
  %1938 = add i64 %1937, 355
  %1939 = load i64, i64* %PC.i380
  %1940 = add i64 %1939, 5
  store i64 %1940, i64* %PC.i380
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1938, i64* %1941, align 8
  store %struct.Memory* %loadMem_401302, %struct.Memory** %MEMORY
  br label %block_.L_401465

block_.L_401307:                                  ; preds = %block_.L_4012f4
  %loadMem_401307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 33
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 1
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 15
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %1950 to i64*
  %1951 = load i64, i64* %RBP.i379
  %1952 = sub i64 %1951, 112
  %1953 = load i64, i64* %PC.i377
  %1954 = add i64 %1953, 4
  store i64 %1954, i64* %PC.i377
  %1955 = inttoptr i64 %1952 to i64*
  %1956 = load i64, i64* %1955
  store i64 %1956, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_401307, %struct.Memory** %MEMORY
  %loadMem_40130b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 33
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1959 to i64*
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 1
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %1962 to i64*
  %1963 = load i64, i64* %RAX.i376
  %1964 = add i64 %1963, 16
  %1965 = load i64, i64* %PC.i375
  %1966 = add i64 %1965, 4
  store i64 %1966, i64* %PC.i375
  %1967 = inttoptr i64 %1964 to i64*
  %1968 = load i64, i64* %1967
  store i64 %1968, i64* %RAX.i376, align 8
  store %struct.Memory* %loadMem_40130b, %struct.Memory** %MEMORY
  %loadMem_40130f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 33
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1971 to i64*
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 1
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %1974 to i64*
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 15
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %1977 to i64*
  %1978 = load i64, i64* %RBP.i374
  %1979 = sub i64 %1978, 160
  %1980 = load i64, i64* %RAX.i373
  %1981 = load i64, i64* %PC.i372
  %1982 = add i64 %1981, 7
  store i64 %1982, i64* %PC.i372
  %1983 = inttoptr i64 %1979 to i64*
  store i64 %1980, i64* %1983
  store %struct.Memory* %loadMem_40130f, %struct.Memory** %MEMORY
  %loadMem_401316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 33
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1986 to i64*
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 1
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 15
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %1992 to i64*
  %1993 = load i64, i64* %RBP.i371
  %1994 = sub i64 %1993, 160
  %1995 = load i64, i64* %PC.i369
  %1996 = add i64 %1995, 7
  store i64 %1996, i64* %PC.i369
  %1997 = inttoptr i64 %1994 to i64*
  %1998 = load i64, i64* %1997
  store i64 %1998, i64* %RAX.i370, align 8
  store %struct.Memory* %loadMem_401316, %struct.Memory** %MEMORY
  %loadMem_40131d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 1
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %2004 to i64*
  %2005 = load i64, i64* %RAX.i368
  %2006 = add i64 %2005, 100
  %2007 = load i64, i64* %PC.i367
  %2008 = add i64 %2007, 4
  store i64 %2008, i64* %PC.i367
  %2009 = inttoptr i64 %2006 to i32*
  %2010 = load i32, i32* %2009
  %2011 = sext i32 %2010 to i64
  store i64 %2011, i64* %RAX.i368, align 8
  store %struct.Memory* %loadMem_40131d, %struct.Memory** %MEMORY
  %loadMem_401321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 5
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 15
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %2020 to i64*
  %2021 = load i64, i64* %RBP.i366
  %2022 = sub i64 %2021, 112
  %2023 = load i64, i64* %PC.i364
  %2024 = add i64 %2023, 4
  store i64 %2024, i64* %PC.i364
  %2025 = inttoptr i64 %2022 to i64*
  %2026 = load i64, i64* %2025
  store i64 %2026, i64* %RCX.i365, align 8
  store %struct.Memory* %loadMem_401321, %struct.Memory** %MEMORY
  %loadMem_401325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 33
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %2029 to i64*
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 1
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 5
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %2035 to i64*
  %2036 = load i64, i64* %RAX.i362
  %2037 = load i64, i64* %RCX.i363
  %2038 = add i64 %2037, 56
  %2039 = load i64, i64* %PC.i361
  %2040 = add i64 %2039, 4
  store i64 %2040, i64* %PC.i361
  %2041 = inttoptr i64 %2038 to i64*
  %2042 = load i64, i64* %2041
  %2043 = sub i64 %2036, %2042
  store i64 %2043, i64* %RAX.i362, align 8
  %2044 = icmp ugt i64 %2042, %2036
  %2045 = zext i1 %2044 to i8
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2045, i8* %2046, align 1
  %2047 = trunc i64 %2043 to i32
  %2048 = and i32 %2047, 255
  %2049 = call i32 @llvm.ctpop.i32(i32 %2048)
  %2050 = trunc i32 %2049 to i8
  %2051 = and i8 %2050, 1
  %2052 = xor i8 %2051, 1
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2052, i8* %2053, align 1
  %2054 = xor i64 %2042, %2036
  %2055 = xor i64 %2054, %2043
  %2056 = lshr i64 %2055, 4
  %2057 = trunc i64 %2056 to i8
  %2058 = and i8 %2057, 1
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2058, i8* %2059, align 1
  %2060 = icmp eq i64 %2043, 0
  %2061 = zext i1 %2060 to i8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2061, i8* %2062, align 1
  %2063 = lshr i64 %2043, 63
  %2064 = trunc i64 %2063 to i8
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2064, i8* %2065, align 1
  %2066 = lshr i64 %2036, 63
  %2067 = lshr i64 %2042, 63
  %2068 = xor i64 %2067, %2066
  %2069 = xor i64 %2063, %2066
  %2070 = add i64 %2069, %2068
  %2071 = icmp eq i64 %2070, 2
  %2072 = zext i1 %2071 to i8
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2072, i8* %2073, align 1
  store %struct.Memory* %loadMem_401325, %struct.Memory** %MEMORY
  %loadMem_401329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 33
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 1
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 15
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %RAX.i359
  %2084 = load i64, i64* %RBP.i360
  %2085 = sub i64 %2084, 104
  %2086 = load i64, i64* %PC.i358
  %2087 = add i64 %2086, 4
  store i64 %2087, i64* %PC.i358
  %2088 = inttoptr i64 %2085 to i64*
  %2089 = load i64, i64* %2088
  %2090 = add i64 %2089, %2083
  store i64 %2090, i64* %RAX.i359, align 8
  %2091 = icmp ult i64 %2090, %2083
  %2092 = icmp ult i64 %2090, %2089
  %2093 = or i1 %2091, %2092
  %2094 = zext i1 %2093 to i8
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2094, i8* %2095, align 1
  %2096 = trunc i64 %2090 to i32
  %2097 = and i32 %2096, 255
  %2098 = call i32 @llvm.ctpop.i32(i32 %2097)
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  %2101 = xor i8 %2100, 1
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2101, i8* %2102, align 1
  %2103 = xor i64 %2089, %2083
  %2104 = xor i64 %2103, %2090
  %2105 = lshr i64 %2104, 4
  %2106 = trunc i64 %2105 to i8
  %2107 = and i8 %2106, 1
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2107, i8* %2108, align 1
  %2109 = icmp eq i64 %2090, 0
  %2110 = zext i1 %2109 to i8
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2110, i8* %2111, align 1
  %2112 = lshr i64 %2090, 63
  %2113 = trunc i64 %2112 to i8
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2113, i8* %2114, align 1
  %2115 = lshr i64 %2083, 63
  %2116 = lshr i64 %2089, 63
  %2117 = xor i64 %2112, %2115
  %2118 = xor i64 %2112, %2116
  %2119 = add i64 %2117, %2118
  %2120 = icmp eq i64 %2119, 2
  %2121 = zext i1 %2120 to i8
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2121, i8* %2122, align 1
  store %struct.Memory* %loadMem_401329, %struct.Memory** %MEMORY
  %loadMem_40132d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 33
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 1
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 15
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %2131 to i64*
  %2132 = load i64, i64* %RBP.i357
  %2133 = sub i64 %2132, 56
  %2134 = load i64, i64* %RAX.i356
  %2135 = load i64, i64* %PC.i355
  %2136 = add i64 %2135, 4
  store i64 %2136, i64* %PC.i355
  %2137 = inttoptr i64 %2133 to i64*
  store i64 %2134, i64* %2137
  store %struct.Memory* %loadMem_40132d, %struct.Memory** %MEMORY
  %loadMem_401331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 33
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2140 to i64*
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 1
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 15
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %2146 to i64*
  %2147 = load i64, i64* %RBP.i354
  %2148 = sub i64 %2147, 160
  %2149 = load i64, i64* %PC.i352
  %2150 = add i64 %2149, 7
  store i64 %2150, i64* %PC.i352
  %2151 = inttoptr i64 %2148 to i64*
  %2152 = load i64, i64* %2151
  store i64 %2152, i64* %RAX.i353, align 8
  store %struct.Memory* %loadMem_401331, %struct.Memory** %MEMORY
  %loadMem_401338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 1
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %2158 to i64*
  %2159 = load i64, i64* %RAX.i351
  %2160 = load i64, i64* %PC.i350
  %2161 = add i64 %2160, 3
  store i64 %2161, i64* %PC.i350
  %2162 = inttoptr i64 %2159 to i64*
  %2163 = load i64, i64* %2162
  store i64 %2163, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_401338, %struct.Memory** %MEMORY
  %loadMem_40133b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 1
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 15
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %2172 to i64*
  %2173 = load i64, i64* %RBP.i349
  %2174 = sub i64 %2173, 80
  %2175 = load i64, i64* %RAX.i348
  %2176 = load i64, i64* %PC.i347
  %2177 = add i64 %2176, 4
  store i64 %2177, i64* %PC.i347
  %2178 = inttoptr i64 %2174 to i64*
  store i64 %2175, i64* %2178
  store %struct.Memory* %loadMem_40133b, %struct.Memory** %MEMORY
  %loadMem_40133f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 33
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %2181 to i64*
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 1
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %2184 to i64*
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 15
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %2187 to i64*
  %2188 = load i64, i64* %RBP.i346
  %2189 = sub i64 %2188, 144
  %2190 = load i64, i64* %PC.i344
  %2191 = add i64 %2190, 7
  store i64 %2191, i64* %PC.i344
  %2192 = inttoptr i64 %2189 to i64*
  %2193 = load i64, i64* %2192
  store i64 %2193, i64* %RAX.i345, align 8
  store %struct.Memory* %loadMem_40133f, %struct.Memory** %MEMORY
  %loadMem_401346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 33
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %2196 to i64*
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 1
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %2199 to i64*
  %2200 = load i64, i64* %RAX.i343
  %2201 = add i64 %2200, 8
  %2202 = load i64, i64* %PC.i342
  %2203 = add i64 %2202, 4
  store i64 %2203, i64* %PC.i342
  %2204 = inttoptr i64 %2201 to i64*
  %2205 = load i64, i64* %2204
  store i64 %2205, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_401346, %struct.Memory** %MEMORY
  %loadMem_40134a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 33
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2208 to i64*
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 1
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %2211 to i64*
  %2212 = load i64, i64* %RAX.i341
  %2213 = add i64 %2212, 72
  %2214 = load i64, i64* %PC.i340
  %2215 = add i64 %2214, 4
  store i64 %2215, i64* %PC.i340
  %2216 = inttoptr i64 %2213 to i64*
  %2217 = load i64, i64* %2216
  store i64 %2217, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_40134a, %struct.Memory** %MEMORY
  %loadMem_40134e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 33
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 1
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %RAX.i338 = bitcast %union.anon* %2223 to i64*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 15
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %2226 to i64*
  %2227 = load i64, i64* %RBP.i339
  %2228 = sub i64 %2227, 120
  %2229 = load i64, i64* %RAX.i338
  %2230 = load i64, i64* %PC.i337
  %2231 = add i64 %2230, 4
  store i64 %2231, i64* %PC.i337
  %2232 = inttoptr i64 %2228 to i64*
  store i64 %2229, i64* %2232
  store %struct.Memory* %loadMem_40134e, %struct.Memory** %MEMORY
  br label %block_.L_401352

block_.L_401352:                                  ; preds = %block_.L_40144c, %block_401389, %block_.L_401307
  %loadMem_401352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 15
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2238 to i64*
  %2239 = load i64, i64* %RBP.i336
  %2240 = sub i64 %2239, 120
  %2241 = load i64, i64* %PC.i335
  %2242 = add i64 %2241, 5
  store i64 %2242, i64* %PC.i335
  %2243 = inttoptr i64 %2240 to i64*
  %2244 = load i64, i64* %2243
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2245, align 1
  %2246 = trunc i64 %2244 to i32
  %2247 = and i32 %2246, 255
  %2248 = call i32 @llvm.ctpop.i32(i32 %2247)
  %2249 = trunc i32 %2248 to i8
  %2250 = and i8 %2249, 1
  %2251 = xor i8 %2250, 1
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2251, i8* %2252, align 1
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2253, align 1
  %2254 = icmp eq i64 %2244, 0
  %2255 = zext i1 %2254 to i8
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2255, i8* %2256, align 1
  %2257 = lshr i64 %2244, 63
  %2258 = trunc i64 %2257 to i8
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2258, i8* %2259, align 1
  %2260 = lshr i64 %2244, 63
  %2261 = xor i64 %2257, %2260
  %2262 = add i64 %2261, %2260
  %2263 = icmp eq i64 %2262, 2
  %2264 = zext i1 %2263 to i8
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2264, i8* %2265, align 1
  store %struct.Memory* %loadMem_401352, %struct.Memory** %MEMORY
  %loadMem_401357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 33
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2268 to i64*
  %2269 = load i64, i64* %PC.i334
  %2270 = add i64 %2269, 265
  %2271 = load i64, i64* %PC.i334
  %2272 = add i64 %2271, 6
  %2273 = load i64, i64* %PC.i334
  %2274 = add i64 %2273, 6
  store i64 %2274, i64* %PC.i334
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2276 = load i8, i8* %2275, align 1
  store i8 %2276, i8* %BRANCH_TAKEN, align 1
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2278 = icmp ne i8 %2276, 0
  %2279 = select i1 %2278, i64 %2270, i64 %2272
  store i64 %2279, i64* %2277, align 8
  store %struct.Memory* %loadMem_401357, %struct.Memory** %MEMORY
  %loadBr_401357 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401357 = icmp eq i8 %loadBr_401357, 1
  br i1 %cmpBr_401357, label %block_.L_401460, label %block_40135d

block_40135d:                                     ; preds = %block_.L_401352
  %loadMem_40135d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 1
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 15
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %2288 to i64*
  %2289 = load i64, i64* %RBP.i333
  %2290 = sub i64 %2289, 120
  %2291 = load i64, i64* %PC.i331
  %2292 = add i64 %2291, 4
  store i64 %2292, i64* %PC.i331
  %2293 = inttoptr i64 %2290 to i64*
  %2294 = load i64, i64* %2293
  store i64 %2294, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_40135d, %struct.Memory** %MEMORY
  %loadMem_401361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 33
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2297 to i64*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 1
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %2300 to i64*
  %2301 = load i64, i64* %RAX.i330
  %2302 = add i64 %2301, 8
  %2303 = load i64, i64* %PC.i329
  %2304 = add i64 %2303, 4
  store i64 %2304, i64* %PC.i329
  %2305 = inttoptr i64 %2302 to i64*
  %2306 = load i64, i64* %2305
  store i64 %2306, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_401361, %struct.Memory** %MEMORY
  %loadMem_401365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 33
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2309 to i64*
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 1
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 15
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %2315 to i64*
  %2316 = load i64, i64* %RBP.i328
  %2317 = sub i64 %2316, 152
  %2318 = load i64, i64* %RAX.i327
  %2319 = load i64, i64* %PC.i326
  %2320 = add i64 %2319, 7
  store i64 %2320, i64* %PC.i326
  %2321 = inttoptr i64 %2317 to i64*
  store i64 %2318, i64* %2321
  store %struct.Memory* %loadMem_401365, %struct.Memory** %MEMORY
  %loadMem_40136c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 33
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2324 to i64*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 1
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %2327 to i64*
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 15
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %2330 to i64*
  %2331 = load i64, i64* %RBP.i325
  %2332 = sub i64 %2331, 152
  %2333 = load i64, i64* %PC.i323
  %2334 = add i64 %2333, 7
  store i64 %2334, i64* %PC.i323
  %2335 = inttoptr i64 %2332 to i64*
  %2336 = load i64, i64* %2335
  store i64 %2336, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_40136c, %struct.Memory** %MEMORY
  %loadMem_401373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 33
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 1
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %2342 to i64*
  %2343 = load i64, i64* %RAX.i322
  %2344 = add i64 %2343, 100
  %2345 = load i64, i64* %PC.i321
  %2346 = add i64 %2345, 4
  store i64 %2346, i64* %PC.i321
  %2347 = inttoptr i64 %2344 to i32*
  %2348 = load i32, i32* %2347
  %2349 = sext i32 %2348 to i64
  store i64 %2349, i64* %RAX.i322, align 8
  store %struct.Memory* %loadMem_401373, %struct.Memory** %MEMORY
  %loadMem_401377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 33
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2352 to i64*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 5
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 15
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %2358 to i64*
  %2359 = load i64, i64* %RBP.i320
  %2360 = sub i64 %2359, 120
  %2361 = load i64, i64* %PC.i318
  %2362 = add i64 %2361, 4
  store i64 %2362, i64* %PC.i318
  %2363 = inttoptr i64 %2360 to i64*
  %2364 = load i64, i64* %2363
  store i64 %2364, i64* %RCX.i319, align 8
  store %struct.Memory* %loadMem_401377, %struct.Memory** %MEMORY
  %loadMem_40137b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 33
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 1
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 5
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %2373 to i64*
  %2374 = load i64, i64* %RAX.i316
  %2375 = load i64, i64* %RCX.i317
  %2376 = add i64 %2375, 56
  %2377 = load i64, i64* %PC.i315
  %2378 = add i64 %2377, 4
  store i64 %2378, i64* %PC.i315
  %2379 = inttoptr i64 %2376 to i64*
  %2380 = load i64, i64* %2379
  %2381 = add i64 %2380, %2374
  store i64 %2381, i64* %RAX.i316, align 8
  %2382 = icmp ult i64 %2381, %2374
  %2383 = icmp ult i64 %2381, %2380
  %2384 = or i1 %2382, %2383
  %2385 = zext i1 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2385, i8* %2386, align 1
  %2387 = trunc i64 %2381 to i32
  %2388 = and i32 %2387, 255
  %2389 = call i32 @llvm.ctpop.i32(i32 %2388)
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  %2392 = xor i8 %2391, 1
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2392, i8* %2393, align 1
  %2394 = xor i64 %2380, %2374
  %2395 = xor i64 %2394, %2381
  %2396 = lshr i64 %2395, 4
  %2397 = trunc i64 %2396 to i8
  %2398 = and i8 %2397, 1
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2398, i8* %2399, align 1
  %2400 = icmp eq i64 %2381, 0
  %2401 = zext i1 %2400 to i8
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2401, i8* %2402, align 1
  %2403 = lshr i64 %2381, 63
  %2404 = trunc i64 %2403 to i8
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2404, i8* %2405, align 1
  %2406 = lshr i64 %2374, 63
  %2407 = lshr i64 %2380, 63
  %2408 = xor i64 %2403, %2406
  %2409 = xor i64 %2403, %2407
  %2410 = add i64 %2408, %2409
  %2411 = icmp eq i64 %2410, 2
  %2412 = zext i1 %2411 to i8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2412, i8* %2413, align 1
  store %struct.Memory* %loadMem_40137b, %struct.Memory** %MEMORY
  %loadMem_40137f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 33
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 1
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 15
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %2422 to i64*
  %2423 = load i64, i64* %RAX.i313
  %2424 = load i64, i64* %RBP.i314
  %2425 = sub i64 %2424, 56
  %2426 = load i64, i64* %PC.i312
  %2427 = add i64 %2426, 4
  store i64 %2427, i64* %PC.i312
  %2428 = inttoptr i64 %2425 to i64*
  %2429 = load i64, i64* %2428
  %2430 = sub i64 %2423, %2429
  %2431 = icmp ugt i64 %2429, %2423
  %2432 = zext i1 %2431 to i8
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2432, i8* %2433, align 1
  %2434 = trunc i64 %2430 to i32
  %2435 = and i32 %2434, 255
  %2436 = call i32 @llvm.ctpop.i32(i32 %2435)
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  %2439 = xor i8 %2438, 1
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2439, i8* %2440, align 1
  %2441 = xor i64 %2429, %2423
  %2442 = xor i64 %2441, %2430
  %2443 = lshr i64 %2442, 4
  %2444 = trunc i64 %2443 to i8
  %2445 = and i8 %2444, 1
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2445, i8* %2446, align 1
  %2447 = icmp eq i64 %2430, 0
  %2448 = zext i1 %2447 to i8
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2448, i8* %2449, align 1
  %2450 = lshr i64 %2430, 63
  %2451 = trunc i64 %2450 to i8
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2451, i8* %2452, align 1
  %2453 = lshr i64 %2423, 63
  %2454 = lshr i64 %2429, 63
  %2455 = xor i64 %2454, %2453
  %2456 = xor i64 %2450, %2453
  %2457 = add i64 %2456, %2455
  %2458 = icmp eq i64 %2457, 2
  %2459 = zext i1 %2458 to i8
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2459, i8* %2460, align 1
  store %struct.Memory* %loadMem_40137f, %struct.Memory** %MEMORY
  %loadMem_401383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2463 to i64*
  %2464 = load i64, i64* %PC.i311
  %2465 = add i64 %2464, 26
  %2466 = load i64, i64* %PC.i311
  %2467 = add i64 %2466, 6
  %2468 = load i64, i64* %PC.i311
  %2469 = add i64 %2468, 6
  store i64 %2469, i64* %PC.i311
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2471 = load i8, i8* %2470, align 1
  %2472 = icmp ne i8 %2471, 0
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2474 = load i8, i8* %2473, align 1
  %2475 = icmp ne i8 %2474, 0
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2477 = load i8, i8* %2476, align 1
  %2478 = icmp ne i8 %2477, 0
  %2479 = xor i1 %2475, %2478
  %2480 = or i1 %2472, %2479
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %BRANCH_TAKEN, align 1
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2483 = select i1 %2480, i64 %2465, i64 %2467
  store i64 %2483, i64* %2482, align 8
  store %struct.Memory* %loadMem_401383, %struct.Memory** %MEMORY
  %loadBr_401383 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401383 = icmp eq i8 %loadBr_401383, 1
  br i1 %cmpBr_401383, label %block_.L_40139d, label %block_401389

block_401389:                                     ; preds = %block_40135d
  %loadMem_401389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 1
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 15
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %RBP.i310
  %2494 = sub i64 %2493, 152
  %2495 = load i64, i64* %PC.i308
  %2496 = add i64 %2495, 7
  store i64 %2496, i64* %PC.i308
  %2497 = inttoptr i64 %2494 to i64*
  %2498 = load i64, i64* %2497
  store i64 %2498, i64* %RAX.i309, align 8
  store %struct.Memory* %loadMem_401389, %struct.Memory** %MEMORY
  %loadMem_401390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 1
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %2504 to i64*
  %2505 = load i64, i64* %RAX.i307
  %2506 = add i64 %2505, 72
  %2507 = load i64, i64* %PC.i306
  %2508 = add i64 %2507, 4
  store i64 %2508, i64* %PC.i306
  %2509 = inttoptr i64 %2506 to i64*
  %2510 = load i64, i64* %2509
  store i64 %2510, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_401390, %struct.Memory** %MEMORY
  %loadMem_401394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 33
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2513 to i64*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 1
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 15
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %2519 to i64*
  %2520 = load i64, i64* %RBP.i305
  %2521 = sub i64 %2520, 120
  %2522 = load i64, i64* %RAX.i304
  %2523 = load i64, i64* %PC.i303
  %2524 = add i64 %2523, 4
  store i64 %2524, i64* %PC.i303
  %2525 = inttoptr i64 %2521 to i64*
  store i64 %2522, i64* %2525
  store %struct.Memory* %loadMem_401394, %struct.Memory** %MEMORY
  %loadMem_401398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2528 to i64*
  %2529 = load i64, i64* %PC.i302
  %2530 = add i64 %2529, -70
  %2531 = load i64, i64* %PC.i302
  %2532 = add i64 %2531, 5
  store i64 %2532, i64* %PC.i302
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2530, i64* %2533, align 8
  store %struct.Memory* %loadMem_401398, %struct.Memory** %MEMORY
  br label %block_.L_401352

block_.L_40139d:                                  ; preds = %block_40135d
  %loadMem_40139d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 33
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2536 to i64*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 1
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 15
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2542 to i64*
  %2543 = load i64, i64* %RBP.i301
  %2544 = sub i64 %2543, 88
  %2545 = load i64, i64* %PC.i299
  %2546 = add i64 %2545, 4
  store i64 %2546, i64* %PC.i299
  %2547 = inttoptr i64 %2544 to i64*
  %2548 = load i64, i64* %2547
  store i64 %2548, i64* %RAX.i300, align 8
  store %struct.Memory* %loadMem_40139d, %struct.Memory** %MEMORY
  %loadMem_4013a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 33
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 5
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 15
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %2557 to i64*
  %2558 = load i64, i64* %RBP.i298
  %2559 = sub i64 %2558, 152
  %2560 = load i64, i64* %PC.i296
  %2561 = add i64 %2560, 7
  store i64 %2561, i64* %PC.i296
  %2562 = inttoptr i64 %2559 to i64*
  %2563 = load i64, i64* %2562
  store i64 %2563, i64* %RCX.i297, align 8
  store %struct.Memory* %loadMem_4013a1, %struct.Memory** %MEMORY
  %loadMem_4013a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 1
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 5
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %2572 to i64*
  %2573 = load i64, i64* %RAX.i294
  %2574 = load i64, i64* %RCX.i295
  %2575 = load i64, i64* %PC.i293
  %2576 = add i64 %2575, 3
  store i64 %2576, i64* %PC.i293
  %2577 = inttoptr i64 %2574 to i64*
  %2578 = load i64, i64* %2577
  %2579 = sub i64 %2573, %2578
  store i64 %2579, i64* %RAX.i294, align 8
  %2580 = icmp ugt i64 %2578, %2573
  %2581 = zext i1 %2580 to i8
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2581, i8* %2582, align 1
  %2583 = trunc i64 %2579 to i32
  %2584 = and i32 %2583, 255
  %2585 = call i32 @llvm.ctpop.i32(i32 %2584)
  %2586 = trunc i32 %2585 to i8
  %2587 = and i8 %2586, 1
  %2588 = xor i8 %2587, 1
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2588, i8* %2589, align 1
  %2590 = xor i64 %2578, %2573
  %2591 = xor i64 %2590, %2579
  %2592 = lshr i64 %2591, 4
  %2593 = trunc i64 %2592 to i8
  %2594 = and i8 %2593, 1
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2594, i8* %2595, align 1
  %2596 = icmp eq i64 %2579, 0
  %2597 = zext i1 %2596 to i8
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2597, i8* %2598, align 1
  %2599 = lshr i64 %2579, 63
  %2600 = trunc i64 %2599 to i8
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2600, i8* %2601, align 1
  %2602 = lshr i64 %2573, 63
  %2603 = lshr i64 %2578, 63
  %2604 = xor i64 %2603, %2602
  %2605 = xor i64 %2599, %2602
  %2606 = add i64 %2605, %2604
  %2607 = icmp eq i64 %2606, 2
  %2608 = zext i1 %2607 to i8
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2608, i8* %2609, align 1
  store %struct.Memory* %loadMem_4013a8, %struct.Memory** %MEMORY
  %loadMem_4013ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 5
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 15
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %2618 to i64*
  %2619 = load i64, i64* %RBP.i292
  %2620 = sub i64 %2619, 160
  %2621 = load i64, i64* %PC.i290
  %2622 = add i64 %2621, 7
  store i64 %2622, i64* %PC.i290
  %2623 = inttoptr i64 %2620 to i64*
  %2624 = load i64, i64* %2623
  store i64 %2624, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_4013ab, %struct.Memory** %MEMORY
  %loadMem_4013b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 33
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 1
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 5
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %2633 to i64*
  %2634 = load i64, i64* %RAX.i288
  %2635 = load i64, i64* %RCX.i289
  %2636 = load i64, i64* %PC.i287
  %2637 = add i64 %2636, 3
  store i64 %2637, i64* %PC.i287
  %2638 = inttoptr i64 %2635 to i64*
  %2639 = load i64, i64* %2638
  %2640 = add i64 %2639, %2634
  store i64 %2640, i64* %RAX.i288, align 8
  %2641 = icmp ult i64 %2640, %2634
  %2642 = icmp ult i64 %2640, %2639
  %2643 = or i1 %2641, %2642
  %2644 = zext i1 %2643 to i8
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2644, i8* %2645, align 1
  %2646 = trunc i64 %2640 to i32
  %2647 = and i32 %2646, 255
  %2648 = call i32 @llvm.ctpop.i32(i32 %2647)
  %2649 = trunc i32 %2648 to i8
  %2650 = and i8 %2649, 1
  %2651 = xor i8 %2650, 1
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2651, i8* %2652, align 1
  %2653 = xor i64 %2639, %2634
  %2654 = xor i64 %2653, %2640
  %2655 = lshr i64 %2654, 4
  %2656 = trunc i64 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2657, i8* %2658, align 1
  %2659 = icmp eq i64 %2640, 0
  %2660 = zext i1 %2659 to i8
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2660, i8* %2661, align 1
  %2662 = lshr i64 %2640, 63
  %2663 = trunc i64 %2662 to i8
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2663, i8* %2664, align 1
  %2665 = lshr i64 %2634, 63
  %2666 = lshr i64 %2639, 63
  %2667 = xor i64 %2662, %2665
  %2668 = xor i64 %2662, %2666
  %2669 = add i64 %2667, %2668
  %2670 = icmp eq i64 %2669, 2
  %2671 = zext i1 %2670 to i8
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2671, i8* %2672, align 1
  store %struct.Memory* %loadMem_4013b2, %struct.Memory** %MEMORY
  %loadMem_4013b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 33
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2675 to i64*
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2677 = getelementptr inbounds %struct.GPR, %struct.GPR* %2676, i32 0, i32 1
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %2678 to i64*
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 15
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %2681 to i64*
  %2682 = load i64, i64* %RBP.i286
  %2683 = sub i64 %2682, 96
  %2684 = load i64, i64* %RAX.i285
  %2685 = load i64, i64* %PC.i284
  %2686 = add i64 %2685, 4
  store i64 %2686, i64* %PC.i284
  %2687 = inttoptr i64 %2683 to i64*
  store i64 %2684, i64* %2687
  store %struct.Memory* %loadMem_4013b5, %struct.Memory** %MEMORY
  %loadMem_4013b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 15
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %2693 to i64*
  %2694 = load i64, i64* %RBP.i283
  %2695 = sub i64 %2694, 96
  %2696 = load i64, i64* %PC.i282
  %2697 = add i64 %2696, 5
  store i64 %2697, i64* %PC.i282
  %2698 = inttoptr i64 %2695 to i64*
  %2699 = load i64, i64* %2698
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2700, align 1
  %2701 = trunc i64 %2699 to i32
  %2702 = and i32 %2701, 255
  %2703 = call i32 @llvm.ctpop.i32(i32 %2702)
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  %2706 = xor i8 %2705, 1
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2706, i8* %2707, align 1
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2708, align 1
  %2709 = icmp eq i64 %2699, 0
  %2710 = zext i1 %2709 to i8
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2710, i8* %2711, align 1
  %2712 = lshr i64 %2699, 63
  %2713 = trunc i64 %2712 to i8
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2713, i8* %2714, align 1
  %2715 = lshr i64 %2699, 63
  %2716 = xor i64 %2712, %2715
  %2717 = add i64 %2716, %2715
  %2718 = icmp eq i64 %2717, 2
  %2719 = zext i1 %2718 to i8
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2719, i8* %2720, align 1
  store %struct.Memory* %loadMem_4013b9, %struct.Memory** %MEMORY
  %loadMem_4013be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 33
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %2723 to i64*
  %2724 = load i64, i64* %PC.i281
  %2725 = add i64 %2724, 142
  %2726 = load i64, i64* %PC.i281
  %2727 = add i64 %2726, 6
  %2728 = load i64, i64* %PC.i281
  %2729 = add i64 %2728, 6
  store i64 %2729, i64* %PC.i281
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2731 = load i8, i8* %2730, align 1
  %2732 = icmp ne i8 %2731, 0
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2734 = load i8, i8* %2733, align 1
  %2735 = icmp ne i8 %2734, 0
  %2736 = xor i1 %2732, %2735
  %2737 = xor i1 %2736, true
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %BRANCH_TAKEN, align 1
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2740 = select i1 %2736, i64 %2727, i64 %2725
  store i64 %2740, i64* %2739, align 8
  store %struct.Memory* %loadMem_4013be, %struct.Memory** %MEMORY
  %loadBr_4013be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4013be = icmp eq i8 %loadBr_4013be, 1
  br i1 %cmpBr_4013be, label %block_.L_40144c, label %block_4013c4

block_4013c4:                                     ; preds = %block_.L_40139d
  %loadMem_4013c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 33
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %2743 to i64*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 1
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 15
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %2749 to i64*
  %2750 = load i64, i64* %RBP.i280
  %2751 = sub i64 %2750, 40
  %2752 = load i64, i64* %PC.i278
  %2753 = add i64 %2752, 4
  store i64 %2753, i64* %PC.i278
  %2754 = inttoptr i64 %2751 to i64*
  %2755 = load i64, i64* %2754
  store i64 %2755, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_4013c4, %struct.Memory** %MEMORY
  %loadMem_4013c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 5
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 15
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %2764 to i64*
  %2765 = load i64, i64* %RBP.i277
  %2766 = sub i64 %2765, 16
  %2767 = load i64, i64* %PC.i275
  %2768 = add i64 %2767, 4
  store i64 %2768, i64* %PC.i275
  %2769 = inttoptr i64 %2766 to i64*
  %2770 = load i64, i64* %2769
  store i64 %2770, i64* %RCX.i276, align 8
  store %struct.Memory* %loadMem_4013c8, %struct.Memory** %MEMORY
  %loadMem_4013cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 1
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %2776 to i64*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 5
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %2779 to i64*
  %2780 = load i64, i64* %RAX.i273
  %2781 = load i64, i64* %RCX.i274
  %2782 = add i64 %2781, 448
  %2783 = load i64, i64* %PC.i272
  %2784 = add i64 %2783, 7
  store i64 %2784, i64* %PC.i272
  %2785 = inttoptr i64 %2782 to i64*
  %2786 = load i64, i64* %2785
  %2787 = sub i64 %2780, %2786
  %2788 = icmp ugt i64 %2786, %2780
  %2789 = zext i1 %2788 to i8
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2789, i8* %2790, align 1
  %2791 = trunc i64 %2787 to i32
  %2792 = and i32 %2791, 255
  %2793 = call i32 @llvm.ctpop.i32(i32 %2792)
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  %2796 = xor i8 %2795, 1
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2796, i8* %2797, align 1
  %2798 = xor i64 %2786, %2780
  %2799 = xor i64 %2798, %2787
  %2800 = lshr i64 %2799, 4
  %2801 = trunc i64 %2800 to i8
  %2802 = and i8 %2801, 1
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2802, i8* %2803, align 1
  %2804 = icmp eq i64 %2787, 0
  %2805 = zext i1 %2804 to i8
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2805, i8* %2806, align 1
  %2807 = lshr i64 %2787, 63
  %2808 = trunc i64 %2807 to i8
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2808, i8* %2809, align 1
  %2810 = lshr i64 %2780, 63
  %2811 = lshr i64 %2786, 63
  %2812 = xor i64 %2811, %2810
  %2813 = xor i64 %2807, %2810
  %2814 = add i64 %2813, %2812
  %2815 = icmp eq i64 %2814, 2
  %2816 = zext i1 %2815 to i8
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2816, i8* %2817, align 1
  store %struct.Memory* %loadMem_4013cc, %struct.Memory** %MEMORY
  %loadMem_4013d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 33
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2820 to i64*
  %2821 = load i64, i64* %PC.i271
  %2822 = add i64 %2821, 58
  %2823 = load i64, i64* %PC.i271
  %2824 = add i64 %2823, 6
  %2825 = load i64, i64* %PC.i271
  %2826 = add i64 %2825, 6
  store i64 %2826, i64* %PC.i271
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2828 = load i8, i8* %2827, align 1
  %2829 = icmp ne i8 %2828, 0
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2831 = load i8, i8* %2830, align 1
  %2832 = icmp ne i8 %2831, 0
  %2833 = xor i1 %2829, %2832
  %2834 = xor i1 %2833, true
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %BRANCH_TAKEN, align 1
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2837 = select i1 %2833, i64 %2824, i64 %2822
  store i64 %2837, i64* %2836, align 8
  store %struct.Memory* %loadMem_4013d3, %struct.Memory** %MEMORY
  %loadBr_4013d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4013d3 = icmp eq i8 %loadBr_4013d3, 1
  br i1 %cmpBr_4013d3, label %block_.L_40140d, label %block_4013d9

block_4013d9:                                     ; preds = %block_4013c4
  %loadMem_4013d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 33
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 11
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %RDI.i269 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 15
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %2846 to i64*
  %2847 = load i64, i64* %RBP.i270
  %2848 = sub i64 %2847, 128
  %2849 = load i64, i64* %PC.i268
  %2850 = add i64 %2849, 4
  store i64 %2850, i64* %PC.i268
  %2851 = inttoptr i64 %2848 to i64*
  %2852 = load i64, i64* %2851
  store i64 %2852, i64* %RDI.i269, align 8
  store %struct.Memory* %loadMem_4013d9, %struct.Memory** %MEMORY
  %loadMem_4013dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 33
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %2855 to i64*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 9
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %RSI.i266 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 15
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %2861 to i64*
  %2862 = load i64, i64* %RBP.i267
  %2863 = sub i64 %2862, 40
  %2864 = load i64, i64* %PC.i265
  %2865 = add i64 %2864, 4
  store i64 %2865, i64* %PC.i265
  %2866 = inttoptr i64 %2863 to i64*
  %2867 = load i64, i64* %2866
  store i64 %2867, i64* %RSI.i266, align 8
  store %struct.Memory* %loadMem_4013dd, %struct.Memory** %MEMORY
  %loadMem_4013e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 33
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2870 to i64*
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 7
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %RDX.i263 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 15
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %2876 to i64*
  %2877 = load i64, i64* %RBP.i264
  %2878 = sub i64 %2877, 152
  %2879 = load i64, i64* %PC.i262
  %2880 = add i64 %2879, 7
  store i64 %2880, i64* %PC.i262
  %2881 = inttoptr i64 %2878 to i64*
  %2882 = load i64, i64* %2881
  store i64 %2882, i64* %RDX.i263, align 8
  store %struct.Memory* %loadMem_4013e1, %struct.Memory** %MEMORY
  %loadMem_4013e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 5
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 15
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %2891 to i64*
  %2892 = load i64, i64* %RBP.i261
  %2893 = sub i64 %2892, 160
  %2894 = load i64, i64* %PC.i259
  %2895 = add i64 %2894, 7
  store i64 %2895, i64* %PC.i259
  %2896 = inttoptr i64 %2893 to i64*
  %2897 = load i64, i64* %2896
  store i64 %2897, i64* %RCX.i260, align 8
  store %struct.Memory* %loadMem_4013e8, %struct.Memory** %MEMORY
  %loadMem_4013ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 33
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 15
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 17
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %R8.i258 = bitcast %union.anon* %2906 to i64*
  %2907 = load i64, i64* %RBP.i257
  %2908 = sub i64 %2907, 88
  %2909 = load i64, i64* %PC.i256
  %2910 = add i64 %2909, 4
  store i64 %2910, i64* %PC.i256
  %2911 = inttoptr i64 %2908 to i64*
  %2912 = load i64, i64* %2911
  store i64 %2912, i64* %R8.i258, align 8
  store %struct.Memory* %loadMem_4013ef, %struct.Memory** %MEMORY
  %loadMem_4013f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 15
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 19
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %R9.i255 = bitcast %union.anon* %2921 to i64*
  %2922 = load i64, i64* %RBP.i254
  %2923 = sub i64 %2922, 96
  %2924 = load i64, i64* %PC.i253
  %2925 = add i64 %2924, 4
  store i64 %2925, i64* %PC.i253
  %2926 = inttoptr i64 %2923 to i64*
  %2927 = load i64, i64* %2926
  store i64 %2927, i64* %R9.i255, align 8
  store %struct.Memory* %loadMem_4013f3, %struct.Memory** %MEMORY
  %loadMem1_4013f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2930 to i64*
  %2931 = load i64, i64* %PC.i252
  %2932 = add i64 %2931, -2167
  %2933 = load i64, i64* %PC.i252
  %2934 = add i64 %2933, 5
  %2935 = load i64, i64* %PC.i252
  %2936 = add i64 %2935, 5
  store i64 %2936, i64* %PC.i252
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2938 = load i64, i64* %2937, align 8
  %2939 = add i64 %2938, -8
  %2940 = inttoptr i64 %2939 to i64*
  store i64 %2934, i64* %2940
  store i64 %2939, i64* %2937, align 8
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2932, i64* %2941, align 8
  store %struct.Memory* %loadMem1_4013f7, %struct.Memory** %MEMORY
  %loadMem2_4013f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4013f7 = load i64, i64* %3
  %call2_4013f7 = call %struct.Memory* @sub_400b80.insert_new_arc(%struct.State* %0, i64 %loadPC_4013f7, %struct.Memory* %loadMem2_4013f7)
  store %struct.Memory* %call2_4013f7, %struct.Memory** %MEMORY
  %loadMem_4013fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 33
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2944 to i64*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 5
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %2947 to i64*
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 15
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %2950 to i64*
  %2951 = load i64, i64* %RBP.i251
  %2952 = sub i64 %2951, 40
  %2953 = load i64, i64* %PC.i249
  %2954 = add i64 %2953, 4
  store i64 %2954, i64* %PC.i249
  %2955 = inttoptr i64 %2952 to i64*
  %2956 = load i64, i64* %2955
  store i64 %2956, i64* %RCX.i250, align 8
  store %struct.Memory* %loadMem_4013fc, %struct.Memory** %MEMORY
  %loadMem_401400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 33
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 5
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %2962 to i64*
  %2963 = load i64, i64* %RCX.i248
  %2964 = load i64, i64* %PC.i247
  %2965 = add i64 %2964, 4
  store i64 %2965, i64* %PC.i247
  %2966 = add i64 1, %2963
  store i64 %2966, i64* %RCX.i248, align 8
  %2967 = icmp ult i64 %2966, %2963
  %2968 = icmp ult i64 %2966, 1
  %2969 = or i1 %2967, %2968
  %2970 = zext i1 %2969 to i8
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2970, i8* %2971, align 1
  %2972 = trunc i64 %2966 to i32
  %2973 = and i32 %2972, 255
  %2974 = call i32 @llvm.ctpop.i32(i32 %2973)
  %2975 = trunc i32 %2974 to i8
  %2976 = and i8 %2975, 1
  %2977 = xor i8 %2976, 1
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2977, i8* %2978, align 1
  %2979 = xor i64 1, %2963
  %2980 = xor i64 %2979, %2966
  %2981 = lshr i64 %2980, 4
  %2982 = trunc i64 %2981 to i8
  %2983 = and i8 %2982, 1
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2983, i8* %2984, align 1
  %2985 = icmp eq i64 %2966, 0
  %2986 = zext i1 %2985 to i8
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2986, i8* %2987, align 1
  %2988 = lshr i64 %2966, 63
  %2989 = trunc i64 %2988 to i8
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2989, i8* %2990, align 1
  %2991 = lshr i64 %2963, 63
  %2992 = xor i64 %2988, %2991
  %2993 = add i64 %2992, %2988
  %2994 = icmp eq i64 %2993, 2
  %2995 = zext i1 %2994 to i8
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2995, i8* %2996, align 1
  store %struct.Memory* %loadMem_401400, %struct.Memory** %MEMORY
  %loadMem_401404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 33
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 5
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 15
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %3005 to i64*
  %3006 = load i64, i64* %RBP.i246
  %3007 = sub i64 %3006, 40
  %3008 = load i64, i64* %RCX.i245
  %3009 = load i64, i64* %PC.i244
  %3010 = add i64 %3009, 4
  store i64 %3010, i64* %PC.i244
  %3011 = inttoptr i64 %3007 to i64*
  store i64 %3008, i64* %3011
  store %struct.Memory* %loadMem_401404, %struct.Memory** %MEMORY
  %loadMem_401408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 33
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3014 to i64*
  %3015 = load i64, i64* %PC.i243
  %3016 = add i64 %3015, 63
  %3017 = load i64, i64* %PC.i243
  %3018 = add i64 %3017, 5
  store i64 %3018, i64* %PC.i243
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3016, i64* %3019, align 8
  store %struct.Memory* %loadMem_401408, %struct.Memory** %MEMORY
  br label %block_.L_401447

block_.L_40140d:                                  ; preds = %block_4013c4
  %loadMem_40140d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 1
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 15
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %3028 to i64*
  %3029 = load i64, i64* %RBP.i242
  %3030 = sub i64 %3029, 128
  %3031 = load i64, i64* %PC.i240
  %3032 = add i64 %3031, 4
  store i64 %3032, i64* %PC.i240
  %3033 = inttoptr i64 %3030 to i64*
  %3034 = load i64, i64* %3033
  store i64 %3034, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_40140d, %struct.Memory** %MEMORY
  %loadMem_401411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 33
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3037 to i64*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 1
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %3040 to i64*
  %3041 = load i64, i64* %RAX.i239
  %3042 = add i64 %3041, 48
  %3043 = load i64, i64* %PC.i238
  %3044 = add i64 %3043, 4
  store i64 %3044, i64* %PC.i238
  %3045 = inttoptr i64 %3042 to i64*
  %3046 = load i64, i64* %3045
  store i64 %3046, i64* %RAX.i239, align 8
  store %struct.Memory* %loadMem_401411, %struct.Memory** %MEMORY
  %loadMem_401415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 33
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 1
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 15
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %3055 to i64*
  %3056 = load i64, i64* %RAX.i236
  %3057 = load i64, i64* %RBP.i237
  %3058 = sub i64 %3057, 96
  %3059 = load i64, i64* %PC.i235
  %3060 = add i64 %3059, 4
  store i64 %3060, i64* %PC.i235
  %3061 = inttoptr i64 %3058 to i64*
  %3062 = load i64, i64* %3061
  %3063 = sub i64 %3056, %3062
  %3064 = icmp ugt i64 %3062, %3056
  %3065 = zext i1 %3064 to i8
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3065, i8* %3066, align 1
  %3067 = trunc i64 %3063 to i32
  %3068 = and i32 %3067, 255
  %3069 = call i32 @llvm.ctpop.i32(i32 %3068)
  %3070 = trunc i32 %3069 to i8
  %3071 = and i8 %3070, 1
  %3072 = xor i8 %3071, 1
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3072, i8* %3073, align 1
  %3074 = xor i64 %3062, %3056
  %3075 = xor i64 %3074, %3063
  %3076 = lshr i64 %3075, 4
  %3077 = trunc i64 %3076 to i8
  %3078 = and i8 %3077, 1
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3078, i8* %3079, align 1
  %3080 = icmp eq i64 %3063, 0
  %3081 = zext i1 %3080 to i8
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3081, i8* %3082, align 1
  %3083 = lshr i64 %3063, 63
  %3084 = trunc i64 %3083 to i8
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3084, i8* %3085, align 1
  %3086 = lshr i64 %3056, 63
  %3087 = lshr i64 %3062, 63
  %3088 = xor i64 %3087, %3086
  %3089 = xor i64 %3083, %3086
  %3090 = add i64 %3089, %3088
  %3091 = icmp eq i64 %3090, 2
  %3092 = zext i1 %3091 to i8
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3092, i8* %3093, align 1
  store %struct.Memory* %loadMem_401415, %struct.Memory** %MEMORY
  %loadMem_401419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 33
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3096 to i64*
  %3097 = load i64, i64* %PC.i234
  %3098 = add i64 %3097, 41
  %3099 = load i64, i64* %PC.i234
  %3100 = add i64 %3099, 6
  %3101 = load i64, i64* %PC.i234
  %3102 = add i64 %3101, 6
  store i64 %3102, i64* %PC.i234
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3104 = load i8, i8* %3103, align 1
  %3105 = icmp ne i8 %3104, 0
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3107 = load i8, i8* %3106, align 1
  %3108 = icmp ne i8 %3107, 0
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3110 = load i8, i8* %3109, align 1
  %3111 = icmp ne i8 %3110, 0
  %3112 = xor i1 %3108, %3111
  %3113 = or i1 %3105, %3112
  %3114 = zext i1 %3113 to i8
  store i8 %3114, i8* %BRANCH_TAKEN, align 1
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3116 = select i1 %3113, i64 %3098, i64 %3100
  store i64 %3116, i64* %3115, align 8
  store %struct.Memory* %loadMem_401419, %struct.Memory** %MEMORY
  %loadBr_401419 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401419 = icmp eq i8 %loadBr_401419, 1
  br i1 %cmpBr_401419, label %block_.L_401442, label %block_40141f

block_40141f:                                     ; preds = %block_.L_40140d
  %loadMem_40141f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 33
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 11
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 15
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %RBP.i233
  %3127 = sub i64 %3126, 16
  %3128 = load i64, i64* %PC.i232
  %3129 = add i64 %3128, 4
  store i64 %3129, i64* %PC.i232
  %3130 = inttoptr i64 %3127 to i64*
  %3131 = load i64, i64* %3130
  store i64 %3131, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_40141f, %struct.Memory** %MEMORY
  %loadMem_401423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 33
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3134 to i64*
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 9
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3137 to i64*
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 15
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %3140 to i64*
  %3141 = load i64, i64* %RBP.i231
  %3142 = sub i64 %3141, 128
  %3143 = load i64, i64* %PC.i230
  %3144 = add i64 %3143, 4
  store i64 %3144, i64* %PC.i230
  %3145 = inttoptr i64 %3142 to i64*
  %3146 = load i64, i64* %3145
  store i64 %3146, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_401423, %struct.Memory** %MEMORY
  %loadMem_401427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 33
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3149 to i64*
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 7
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %RDX.i228 = bitcast %union.anon* %3152 to i64*
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 15
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %3155 to i64*
  %3156 = load i64, i64* %RBP.i229
  %3157 = sub i64 %3156, 152
  %3158 = load i64, i64* %PC.i227
  %3159 = add i64 %3158, 7
  store i64 %3159, i64* %PC.i227
  %3160 = inttoptr i64 %3157 to i64*
  %3161 = load i64, i64* %3160
  store i64 %3161, i64* %RDX.i228, align 8
  store %struct.Memory* %loadMem_401427, %struct.Memory** %MEMORY
  %loadMem_40142e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 33
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3164 to i64*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 5
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %3167 to i64*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 15
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %3170 to i64*
  %3171 = load i64, i64* %RBP.i226
  %3172 = sub i64 %3171, 160
  %3173 = load i64, i64* %PC.i224
  %3174 = add i64 %3173, 7
  store i64 %3174, i64* %PC.i224
  %3175 = inttoptr i64 %3172 to i64*
  %3176 = load i64, i64* %3175
  store i64 %3176, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_40142e, %struct.Memory** %MEMORY
  %loadMem_401435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 15
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 17
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %R8.i = bitcast %union.anon* %3185 to i64*
  %3186 = load i64, i64* %RBP.i223
  %3187 = sub i64 %3186, 88
  %3188 = load i64, i64* %PC.i222
  %3189 = add i64 %3188, 4
  store i64 %3189, i64* %PC.i222
  %3190 = inttoptr i64 %3187 to i64*
  %3191 = load i64, i64* %3190
  store i64 %3191, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_401435, %struct.Memory** %MEMORY
  %loadMem_401439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 33
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 15
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 19
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %R9.i = bitcast %union.anon* %3200 to i64*
  %3201 = load i64, i64* %RBP.i221
  %3202 = sub i64 %3201, 96
  %3203 = load i64, i64* %PC.i220
  %3204 = add i64 %3203, 4
  store i64 %3204, i64* %PC.i220
  %3205 = inttoptr i64 %3202 to i64*
  %3206 = load i64, i64* %3205
  store i64 %3206, i64* %R9.i, align 8
  store %struct.Memory* %loadMem_401439, %struct.Memory** %MEMORY
  %loadMem1_40143d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 33
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3209 to i64*
  %3210 = load i64, i64* %PC.i219
  %3211 = add i64 %3210, -1517
  %3212 = load i64, i64* %PC.i219
  %3213 = add i64 %3212, 5
  %3214 = load i64, i64* %PC.i219
  %3215 = add i64 %3214, 5
  store i64 %3215, i64* %PC.i219
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3217 = load i64, i64* %3216, align 8
  %3218 = add i64 %3217, -8
  %3219 = inttoptr i64 %3218 to i64*
  store i64 %3213, i64* %3219
  store i64 %3218, i64* %3216, align 8
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3211, i64* %3220, align 8
  store %struct.Memory* %loadMem1_40143d, %struct.Memory** %MEMORY
  %loadMem2_40143d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40143d = load i64, i64* %3
  %call2_40143d = call %struct.Memory* @sub_400e50.replace_weaker_arc(%struct.State* %0, i64 %loadPC_40143d, %struct.Memory* %loadMem2_40143d)
  store %struct.Memory* %call2_40143d, %struct.Memory** %MEMORY
  br label %block_.L_401442

block_.L_401442:                                  ; preds = %block_40141f, %block_.L_40140d
  %loadMem_401442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3223 to i64*
  %3224 = load i64, i64* %PC.i218
  %3225 = add i64 %3224, 5
  %3226 = load i64, i64* %PC.i218
  %3227 = add i64 %3226, 5
  store i64 %3227, i64* %PC.i218
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3225, i64* %3228, align 8
  store %struct.Memory* %loadMem_401442, %struct.Memory** %MEMORY
  br label %block_.L_401447

block_.L_401447:                                  ; preds = %block_.L_401442, %block_4013d9
  %loadMem_401447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 33
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %3231 to i64*
  %3232 = load i64, i64* %PC.i217
  %3233 = add i64 %3232, 5
  %3234 = load i64, i64* %PC.i217
  %3235 = add i64 %3234, 5
  store i64 %3235, i64* %PC.i217
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3233, i64* %3236, align 8
  store %struct.Memory* %loadMem_401447, %struct.Memory** %MEMORY
  br label %block_.L_40144c

block_.L_40144c:                                  ; preds = %block_.L_401447, %block_.L_40139d
  %loadMem_40144c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 1
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 15
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %3245 to i64*
  %3246 = load i64, i64* %RBP.i216
  %3247 = sub i64 %3246, 152
  %3248 = load i64, i64* %PC.i214
  %3249 = add i64 %3248, 7
  store i64 %3249, i64* %PC.i214
  %3250 = inttoptr i64 %3247 to i64*
  %3251 = load i64, i64* %3250
  store i64 %3251, i64* %RAX.i215, align 8
  store %struct.Memory* %loadMem_40144c, %struct.Memory** %MEMORY
  %loadMem_401453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 33
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 1
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %3257 to i64*
  %3258 = load i64, i64* %RAX.i213
  %3259 = add i64 %3258, 72
  %3260 = load i64, i64* %PC.i212
  %3261 = add i64 %3260, 4
  store i64 %3261, i64* %PC.i212
  %3262 = inttoptr i64 %3259 to i64*
  %3263 = load i64, i64* %3262
  store i64 %3263, i64* %RAX.i213, align 8
  store %struct.Memory* %loadMem_401453, %struct.Memory** %MEMORY
  %loadMem_401457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 33
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3266 to i64*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 1
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 15
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %3272 to i64*
  %3273 = load i64, i64* %RBP.i211
  %3274 = sub i64 %3273, 120
  %3275 = load i64, i64* %RAX.i210
  %3276 = load i64, i64* %PC.i209
  %3277 = add i64 %3276, 4
  store i64 %3277, i64* %PC.i209
  %3278 = inttoptr i64 %3274 to i64*
  store i64 %3275, i64* %3278
  store %struct.Memory* %loadMem_401457, %struct.Memory** %MEMORY
  %loadMem_40145b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 33
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3281 to i64*
  %3282 = load i64, i64* %PC.i208
  %3283 = add i64 %3282, -265
  %3284 = load i64, i64* %PC.i208
  %3285 = add i64 %3284, 5
  store i64 %3285, i64* %PC.i208
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3283, i64* %3286, align 8
  store %struct.Memory* %loadMem_40145b, %struct.Memory** %MEMORY
  br label %block_.L_401352

block_.L_401460:                                  ; preds = %block_.L_401352
  %loadMem_401460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 33
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3289 to i64*
  %3290 = load i64, i64* %PC.i207
  %3291 = add i64 %3290, 5
  %3292 = load i64, i64* %PC.i207
  %3293 = add i64 %3292, 5
  store i64 %3293, i64* %PC.i207
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3291, i64* %3294, align 8
  store %struct.Memory* %loadMem_401460, %struct.Memory** %MEMORY
  br label %block_.L_401465

block_.L_401465:                                  ; preds = %block_.L_401460, %block_401302
  %loadMem_401465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 33
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3297 to i64*
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 1
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %3300 to i64*
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 15
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %3303 to i64*
  %3304 = load i64, i64* %RBP.i206
  %3305 = sub i64 %3304, 24
  %3306 = load i64, i64* %PC.i204
  %3307 = add i64 %3306, 4
  store i64 %3307, i64* %PC.i204
  %3308 = inttoptr i64 %3305 to i64*
  %3309 = load i64, i64* %3308
  store i64 %3309, i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_401465, %struct.Memory** %MEMORY
  %loadMem_401469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 33
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3312 to i64*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 1
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %3315 to i64*
  %3316 = load i64, i64* %RAX.i203
  %3317 = load i64, i64* %PC.i202
  %3318 = add i64 %3317, 4
  store i64 %3318, i64* %PC.i202
  %3319 = add i64 1, %3316
  store i64 %3319, i64* %RAX.i203, align 8
  %3320 = icmp ult i64 %3319, %3316
  %3321 = icmp ult i64 %3319, 1
  %3322 = or i1 %3320, %3321
  %3323 = zext i1 %3322 to i8
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3323, i8* %3324, align 1
  %3325 = trunc i64 %3319 to i32
  %3326 = and i32 %3325, 255
  %3327 = call i32 @llvm.ctpop.i32(i32 %3326)
  %3328 = trunc i32 %3327 to i8
  %3329 = and i8 %3328, 1
  %3330 = xor i8 %3329, 1
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3330, i8* %3331, align 1
  %3332 = xor i64 1, %3316
  %3333 = xor i64 %3332, %3319
  %3334 = lshr i64 %3333, 4
  %3335 = trunc i64 %3334 to i8
  %3336 = and i8 %3335, 1
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3336, i8* %3337, align 1
  %3338 = icmp eq i64 %3319, 0
  %3339 = zext i1 %3338 to i8
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3339, i8* %3340, align 1
  %3341 = lshr i64 %3319, 63
  %3342 = trunc i64 %3341 to i8
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3342, i8* %3343, align 1
  %3344 = lshr i64 %3316, 63
  %3345 = xor i64 %3341, %3344
  %3346 = add i64 %3345, %3341
  %3347 = icmp eq i64 %3346, 2
  %3348 = zext i1 %3347 to i8
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3348, i8* %3349, align 1
  store %struct.Memory* %loadMem_401469, %struct.Memory** %MEMORY
  %loadMem_40146d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 33
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3352 to i64*
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 1
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 15
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %3358 to i64*
  %3359 = load i64, i64* %RBP.i201
  %3360 = sub i64 %3359, 24
  %3361 = load i64, i64* %RAX.i200
  %3362 = load i64, i64* %PC.i199
  %3363 = add i64 %3362, 4
  store i64 %3363, i64* %PC.i199
  %3364 = inttoptr i64 %3360 to i64*
  store i64 %3361, i64* %3364
  store %struct.Memory* %loadMem_40146d, %struct.Memory** %MEMORY
  %loadMem_401471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 33
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3367 to i64*
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3369 = getelementptr inbounds %struct.GPR, %struct.GPR* %3368, i32 0, i32 1
  %3370 = getelementptr inbounds %struct.Reg, %struct.Reg* %3369, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %3370 to i64*
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 15
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %3373 to i64*
  %3374 = load i64, i64* %RBP.i198
  %3375 = sub i64 %3374, 112
  %3376 = load i64, i64* %PC.i196
  %3377 = add i64 %3376, 4
  store i64 %3377, i64* %PC.i196
  %3378 = inttoptr i64 %3375 to i64*
  %3379 = load i64, i64* %3378
  store i64 %3379, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_401471, %struct.Memory** %MEMORY
  %loadMem_401475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 33
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 1
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %3385 to i64*
  %3386 = load i64, i64* %RAX.i195
  %3387 = load i64, i64* %PC.i194
  %3388 = add i64 %3387, 6
  store i64 %3388, i64* %PC.i194
  %3389 = add i64 192, %3386
  store i64 %3389, i64* %RAX.i195, align 8
  %3390 = icmp ult i64 %3389, %3386
  %3391 = icmp ult i64 %3389, 192
  %3392 = or i1 %3390, %3391
  %3393 = zext i1 %3392 to i8
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3393, i8* %3394, align 1
  %3395 = trunc i64 %3389 to i32
  %3396 = and i32 %3395, 255
  %3397 = call i32 @llvm.ctpop.i32(i32 %3396)
  %3398 = trunc i32 %3397 to i8
  %3399 = and i8 %3398, 1
  %3400 = xor i8 %3399, 1
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3400, i8* %3401, align 1
  %3402 = xor i64 192, %3386
  %3403 = xor i64 %3402, %3389
  %3404 = lshr i64 %3403, 4
  %3405 = trunc i64 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3406, i8* %3407, align 1
  %3408 = icmp eq i64 %3389, 0
  %3409 = zext i1 %3408 to i8
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3409, i8* %3410, align 1
  %3411 = lshr i64 %3389, 63
  %3412 = trunc i64 %3411 to i8
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3412, i8* %3413, align 1
  %3414 = lshr i64 %3386, 63
  %3415 = xor i64 %3411, %3414
  %3416 = add i64 %3415, %3411
  %3417 = icmp eq i64 %3416, 2
  %3418 = zext i1 %3417 to i8
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3418, i8* %3419, align 1
  store %struct.Memory* %loadMem_401475, %struct.Memory** %MEMORY
  %loadMem_40147b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 33
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3422 to i64*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 1
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %3425 to i64*
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 15
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %3428 to i64*
  %3429 = load i64, i64* %RBP.i193
  %3430 = sub i64 %3429, 112
  %3431 = load i64, i64* %RAX.i192
  %3432 = load i64, i64* %PC.i191
  %3433 = add i64 %3432, 4
  store i64 %3433, i64* %PC.i191
  %3434 = inttoptr i64 %3430 to i64*
  store i64 %3431, i64* %3434
  store %struct.Memory* %loadMem_40147b, %struct.Memory** %MEMORY
  %loadMem_40147f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 33
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3437 to i64*
  %3438 = load i64, i64* %PC.i190
  %3439 = add i64 %3438, -465
  %3440 = load i64, i64* %PC.i190
  %3441 = add i64 %3440, 5
  store i64 %3441, i64* %PC.i190
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3439, i64* %3442, align 8
  store %struct.Memory* %loadMem_40147f, %struct.Memory** %MEMORY
  br label %block_.L_4012ae

block_.L_401484:                                  ; preds = %block_.L_4012ae
  %loadMem_401484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 15
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %3448 to i64*
  %3449 = load i64, i64* %RBP.i189
  %3450 = sub i64 %3449, 40
  %3451 = load i64, i64* %PC.i188
  %3452 = add i64 %3451, 5
  store i64 %3452, i64* %PC.i188
  %3453 = inttoptr i64 %3450 to i64*
  %3454 = load i64, i64* %3453
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3455, align 1
  %3456 = trunc i64 %3454 to i32
  %3457 = and i32 %3456, 255
  %3458 = call i32 @llvm.ctpop.i32(i32 %3457)
  %3459 = trunc i32 %3458 to i8
  %3460 = and i8 %3459, 1
  %3461 = xor i8 %3460, 1
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3461, i8* %3462, align 1
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3463, align 1
  %3464 = icmp eq i64 %3454, 0
  %3465 = zext i1 %3464 to i8
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3465, i8* %3466, align 1
  %3467 = lshr i64 %3454, 63
  %3468 = trunc i64 %3467 to i8
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3468, i8* %3469, align 1
  %3470 = lshr i64 %3454, 63
  %3471 = xor i64 %3467, %3470
  %3472 = add i64 %3471, %3470
  %3473 = icmp eq i64 %3472, 2
  %3474 = zext i1 %3473 to i8
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3474, i8* %3475, align 1
  store %struct.Memory* %loadMem_401484, %struct.Memory** %MEMORY
  %loadMem_401489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 33
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3478 to i64*
  %3479 = load i64, i64* %PC.i187
  %3480 = add i64 %3479, 351
  %3481 = load i64, i64* %PC.i187
  %3482 = add i64 %3481, 6
  %3483 = load i64, i64* %PC.i187
  %3484 = add i64 %3483, 6
  store i64 %3484, i64* %PC.i187
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3486 = load i8, i8* %3485, align 1
  store i8 %3486, i8* %BRANCH_TAKEN, align 1
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3488 = icmp ne i8 %3486, 0
  %3489 = select i1 %3488, i64 %3480, i64 %3482
  store i64 %3489, i64* %3487, align 8
  store %struct.Memory* %loadMem_401489, %struct.Memory** %MEMORY
  %loadBr_401489 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401489 = icmp eq i8 %loadBr_401489, 1
  br i1 %cmpBr_401489, label %block_.L_4015e8, label %block_40148f

block_40148f:                                     ; preds = %block_.L_401484
  %loadMem_40148f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 1
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 15
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %RBP.i186
  %3500 = sub i64 %3499, 16
  %3501 = load i64, i64* %PC.i184
  %3502 = add i64 %3501, 4
  store i64 %3502, i64* %PC.i184
  %3503 = inttoptr i64 %3500 to i64*
  %3504 = load i64, i64* %3503
  store i64 %3504, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_40148f, %struct.Memory** %MEMORY
  %loadMem_401493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 33
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3507 to i64*
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 1
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %3510 to i64*
  %3511 = load i64, i64* %RAX.i183
  %3512 = add i64 %3511, 576
  %3513 = load i64, i64* %PC.i182
  %3514 = add i64 %3513, 7
  store i64 %3514, i64* %PC.i182
  %3515 = inttoptr i64 %3512 to i64*
  %3516 = load i64, i64* %3515
  store i64 %3516, i64* %RAX.i183, align 8
  store %struct.Memory* %loadMem_401493, %struct.Memory** %MEMORY
  %loadMem_40149a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 33
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3519 to i64*
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 1
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %3522 to i64*
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 15
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %3525 to i64*
  %3526 = load i64, i64* %RBP.i181
  %3527 = sub i64 %3526, 128
  %3528 = load i64, i64* %RAX.i180
  %3529 = load i64, i64* %PC.i179
  %3530 = add i64 %3529, 4
  store i64 %3530, i64* %PC.i179
  %3531 = inttoptr i64 %3527 to i64*
  store i64 %3528, i64* %3531
  store %struct.Memory* %loadMem_40149a, %struct.Memory** %MEMORY
  %loadMem_40149e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 33
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3534 to i64*
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 1
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 15
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %3540 to i64*
  %3541 = load i64, i64* %RBP.i178
  %3542 = sub i64 %3541, 40
  %3543 = load i64, i64* %PC.i176
  %3544 = add i64 %3543, 4
  store i64 %3544, i64* %PC.i176
  %3545 = inttoptr i64 %3542 to i64*
  %3546 = load i64, i64* %3545
  store i64 %3546, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_40149e, %struct.Memory** %MEMORY
  %loadMem_4014a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 33
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %3549 to i64*
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 5
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %3552 to i64*
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 15
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %3555 to i64*
  %3556 = load i64, i64* %RBP.i175
  %3557 = sub i64 %3556, 16
  %3558 = load i64, i64* %PC.i173
  %3559 = add i64 %3558, 4
  store i64 %3559, i64* %PC.i173
  %3560 = inttoptr i64 %3557 to i64*
  %3561 = load i64, i64* %3560
  store i64 %3561, i64* %RCX.i174, align 8
  store %struct.Memory* %loadMem_4014a2, %struct.Memory** %MEMORY
  %loadMem_4014a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 33
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %3564 to i64*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 1
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %RAX.i172
  %3569 = load i64, i64* %PC.i171
  %3570 = add i64 %3569, 4
  store i64 %3570, i64* %PC.i171
  %3571 = shl i64 %3568, 5
  %3572 = icmp slt i64 %3571, 0
  %3573 = shl i64 %3571, 1
  store i64 %3573, i64* %RAX.i172, align 8
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3575 = zext i1 %3572 to i8
  store i8 %3575, i8* %3574, align 1
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3577 = trunc i64 %3573 to i32
  %3578 = and i32 %3577, 254
  %3579 = call i32 @llvm.ctpop.i32(i32 %3578)
  %3580 = trunc i32 %3579 to i8
  %3581 = and i8 %3580, 1
  %3582 = xor i8 %3581, 1
  store i8 %3582, i8* %3576, align 1
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3583, align 1
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3585 = icmp eq i64 %3573, 0
  %3586 = zext i1 %3585 to i8
  store i8 %3586, i8* %3584, align 1
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3588 = lshr i64 %3573, 63
  %3589 = trunc i64 %3588 to i8
  store i8 %3589, i8* %3587, align 1
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3590, align 1
  store %struct.Memory* %loadMem_4014a6, %struct.Memory** %MEMORY
  %loadMem_4014aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 33
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 1
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 5
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %3599 to i64*
  %3600 = load i64, i64* %RAX.i169
  %3601 = load i64, i64* %RCX.i170
  %3602 = add i64 %3601, 576
  %3603 = load i64, i64* %PC.i168
  %3604 = add i64 %3603, 7
  store i64 %3604, i64* %PC.i168
  %3605 = inttoptr i64 %3602 to i64*
  %3606 = load i64, i64* %3605
  %3607 = add i64 %3606, %3600
  store i64 %3607, i64* %RAX.i169, align 8
  %3608 = icmp ult i64 %3607, %3600
  %3609 = icmp ult i64 %3607, %3606
  %3610 = or i1 %3608, %3609
  %3611 = zext i1 %3610 to i8
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3611, i8* %3612, align 1
  %3613 = trunc i64 %3607 to i32
  %3614 = and i32 %3613, 255
  %3615 = call i32 @llvm.ctpop.i32(i32 %3614)
  %3616 = trunc i32 %3615 to i8
  %3617 = and i8 %3616, 1
  %3618 = xor i8 %3617, 1
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3618, i8* %3619, align 1
  %3620 = xor i64 %3606, %3600
  %3621 = xor i64 %3620, %3607
  %3622 = lshr i64 %3621, 4
  %3623 = trunc i64 %3622 to i8
  %3624 = and i8 %3623, 1
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3624, i8* %3625, align 1
  %3626 = icmp eq i64 %3607, 0
  %3627 = zext i1 %3626 to i8
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3627, i8* %3628, align 1
  %3629 = lshr i64 %3607, 63
  %3630 = trunc i64 %3629 to i8
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3630, i8* %3631, align 1
  %3632 = lshr i64 %3600, 63
  %3633 = lshr i64 %3606, 63
  %3634 = xor i64 %3629, %3632
  %3635 = xor i64 %3629, %3633
  %3636 = add i64 %3634, %3635
  %3637 = icmp eq i64 %3636, 2
  %3638 = zext i1 %3637 to i8
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3638, i8* %3639, align 1
  store %struct.Memory* %loadMem_4014aa, %struct.Memory** %MEMORY
  %loadMem_4014b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 33
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %3642 to i64*
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 1
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %3645 to i64*
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 5
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %3648 to i64*
  %3649 = load i64, i64* %RCX.i167
  %3650 = add i64 %3649, 576
  %3651 = load i64, i64* %RAX.i166
  %3652 = load i64, i64* %PC.i165
  %3653 = add i64 %3652, 7
  store i64 %3653, i64* %PC.i165
  %3654 = inttoptr i64 %3650 to i64*
  store i64 %3651, i64* %3654
  store %struct.Memory* %loadMem_4014b1, %struct.Memory** %MEMORY
  %loadMem_4014b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 33
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %3657 to i64*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 1
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %3660 to i64*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 15
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %3663 to i64*
  %3664 = load i64, i64* %RBP.i164
  %3665 = sub i64 %3664, 16
  %3666 = load i64, i64* %PC.i162
  %3667 = add i64 %3666, 4
  store i64 %3667, i64* %PC.i162
  %3668 = inttoptr i64 %3665 to i64*
  %3669 = load i64, i64* %3668
  store i64 %3669, i64* %RAX.i163, align 8
  store %struct.Memory* %loadMem_4014b8, %struct.Memory** %MEMORY
  %loadMem_4014bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 1
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %RAX.i161
  %3677 = add i64 %3676, 576
  %3678 = load i64, i64* %PC.i160
  %3679 = add i64 %3678, 7
  store i64 %3679, i64* %PC.i160
  %3680 = inttoptr i64 %3677 to i64*
  %3681 = load i64, i64* %3680
  store i64 %3681, i64* %RAX.i161, align 8
  store %struct.Memory* %loadMem_4014bc, %struct.Memory** %MEMORY
  %loadMem_4014c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 33
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 1
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 15
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %3690 to i64*
  %3691 = load i64, i64* %RBP.i159
  %3692 = sub i64 %3691, 136
  %3693 = load i64, i64* %RAX.i158
  %3694 = load i64, i64* %PC.i157
  %3695 = add i64 %3694, 7
  store i64 %3695, i64* %PC.i157
  %3696 = inttoptr i64 %3692 to i64*
  store i64 %3693, i64* %3696
  store %struct.Memory* %loadMem_4014c3, %struct.Memory** %MEMORY
  %loadMem_4014ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 33
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3699 to i64*
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 15
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %3702 to i64*
  %3703 = load i64, i64* %RBP.i156
  %3704 = sub i64 %3703, 48
  %3705 = load i64, i64* %PC.i155
  %3706 = add i64 %3705, 5
  store i64 %3706, i64* %PC.i155
  %3707 = inttoptr i64 %3704 to i64*
  %3708 = load i64, i64* %3707
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3709, align 1
  %3710 = trunc i64 %3708 to i32
  %3711 = and i32 %3710, 255
  %3712 = call i32 @llvm.ctpop.i32(i32 %3711)
  %3713 = trunc i32 %3712 to i8
  %3714 = and i8 %3713, 1
  %3715 = xor i8 %3714, 1
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3715, i8* %3716, align 1
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3717, align 1
  %3718 = icmp eq i64 %3708, 0
  %3719 = zext i1 %3718 to i8
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3719, i8* %3720, align 1
  %3721 = lshr i64 %3708, 63
  %3722 = trunc i64 %3721 to i8
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3722, i8* %3723, align 1
  %3724 = lshr i64 %3708, 63
  %3725 = xor i64 %3721, %3724
  %3726 = add i64 %3725, %3724
  %3727 = icmp eq i64 %3726, 2
  %3728 = zext i1 %3727 to i8
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3728, i8* %3729, align 1
  store %struct.Memory* %loadMem_4014ca, %struct.Memory** %MEMORY
  %loadMem_4014cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 33
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3732 to i64*
  %3733 = load i64, i64* %PC.i154
  %3734 = add i64 %3733, 73
  %3735 = load i64, i64* %PC.i154
  %3736 = add i64 %3735, 6
  %3737 = load i64, i64* %PC.i154
  %3738 = add i64 %3737, 6
  store i64 %3738, i64* %PC.i154
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3740 = load i8, i8* %3739, align 1
  store i8 %3740, i8* %BRANCH_TAKEN, align 1
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3742 = icmp ne i8 %3740, 0
  %3743 = select i1 %3742, i64 %3734, i64 %3736
  store i64 %3743, i64* %3741, align 8
  store %struct.Memory* %loadMem_4014cf, %struct.Memory** %MEMORY
  %loadBr_4014cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4014cf = icmp eq i8 %loadBr_4014cf, 1
  br i1 %cmpBr_4014cf, label %block_.L_401518, label %block_4014d5

block_4014d5:                                     ; preds = %block_40148f
  %loadMem_4014d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 33
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3746 to i64*
  %3747 = load i64, i64* %PC.i153
  %3748 = add i64 %3747, 5
  %3749 = load i64, i64* %PC.i153
  %3750 = add i64 %3749, 5
  store i64 %3750, i64* %PC.i153
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3748, i64* %3751, align 8
  store %struct.Memory* %loadMem_4014d5, %struct.Memory** %MEMORY
  br label %block_.L_4014da

block_.L_4014da:                                  ; preds = %block_4014eb, %block_4014d5
  %loadMem_4014da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 33
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 1
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 15
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %3760 to i64*
  %3761 = load i64, i64* %RBP.i152
  %3762 = sub i64 %3761, 128
  %3763 = load i64, i64* %PC.i150
  %3764 = add i64 %3763, 4
  store i64 %3764, i64* %PC.i150
  %3765 = inttoptr i64 %3762 to i64*
  %3766 = load i64, i64* %3765
  store i64 %3766, i64* %RAX.i151, align 8
  store %struct.Memory* %loadMem_4014da, %struct.Memory** %MEMORY
  %loadMem_4014de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 33
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %3769 to i64*
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 1
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %3772 to i64*
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 15
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %3775 to i64*
  %3776 = load i64, i64* %RAX.i148
  %3777 = load i64, i64* %RBP.i149
  %3778 = sub i64 %3777, 136
  %3779 = load i64, i64* %PC.i147
  %3780 = add i64 %3779, 7
  store i64 %3780, i64* %PC.i147
  %3781 = inttoptr i64 %3778 to i64*
  %3782 = load i64, i64* %3781
  %3783 = sub i64 %3776, %3782
  %3784 = icmp ugt i64 %3782, %3776
  %3785 = zext i1 %3784 to i8
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3785, i8* %3786, align 1
  %3787 = trunc i64 %3783 to i32
  %3788 = and i32 %3787, 255
  %3789 = call i32 @llvm.ctpop.i32(i32 %3788)
  %3790 = trunc i32 %3789 to i8
  %3791 = and i8 %3790, 1
  %3792 = xor i8 %3791, 1
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3792, i8* %3793, align 1
  %3794 = xor i64 %3782, %3776
  %3795 = xor i64 %3794, %3783
  %3796 = lshr i64 %3795, 4
  %3797 = trunc i64 %3796 to i8
  %3798 = and i8 %3797, 1
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3798, i8* %3799, align 1
  %3800 = icmp eq i64 %3783, 0
  %3801 = zext i1 %3800 to i8
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3801, i8* %3802, align 1
  %3803 = lshr i64 %3783, 63
  %3804 = trunc i64 %3803 to i8
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3804, i8* %3805, align 1
  %3806 = lshr i64 %3776, 63
  %3807 = lshr i64 %3782, 63
  %3808 = xor i64 %3807, %3806
  %3809 = xor i64 %3803, %3806
  %3810 = add i64 %3809, %3808
  %3811 = icmp eq i64 %3810, 2
  %3812 = zext i1 %3811 to i8
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3812, i8* %3813, align 1
  store %struct.Memory* %loadMem_4014de, %struct.Memory** %MEMORY
  %loadMem_4014e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3816 to i64*
  %3817 = load i64, i64* %PC.i146
  %3818 = add i64 %3817, 46
  %3819 = load i64, i64* %PC.i146
  %3820 = add i64 %3819, 6
  %3821 = load i64, i64* %PC.i146
  %3822 = add i64 %3821, 6
  store i64 %3822, i64* %PC.i146
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3824 = load i8, i8* %3823, align 1
  store i8 %3824, i8* %BRANCH_TAKEN, align 1
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3826 = icmp ne i8 %3824, 0
  %3827 = select i1 %3826, i64 %3818, i64 %3820
  store i64 %3827, i64* %3825, align 8
  store %struct.Memory* %loadMem_4014e5, %struct.Memory** %MEMORY
  %loadBr_4014e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4014e5 = icmp eq i8 %loadBr_4014e5, 1
  br i1 %cmpBr_4014e5, label %block_.L_401513, label %block_4014eb

block_4014eb:                                     ; preds = %block_.L_4014da
  %loadMem_4014eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 33
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3830 to i64*
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 1
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %3833 to i64*
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 15
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %3836 to i64*
  %3837 = load i64, i64* %RBP.i145
  %3838 = sub i64 %3837, 128
  %3839 = load i64, i64* %PC.i143
  %3840 = add i64 %3839, 4
  store i64 %3840, i64* %PC.i143
  %3841 = inttoptr i64 %3838 to i64*
  %3842 = load i64, i64* %3841
  store i64 %3842, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_4014eb, %struct.Memory** %MEMORY
  %loadMem_4014ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 33
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3845 to i64*
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 1
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %3848 to i64*
  %3849 = load i64, i64* %RAX.i142
  %3850 = add i64 %3849, 48
  %3851 = load i64, i64* %PC.i141
  %3852 = add i64 %3851, 8
  store i64 %3852, i64* %PC.i141
  %3853 = inttoptr i64 %3850 to i64*
  store i64 0, i64* %3853
  store %struct.Memory* %loadMem_4014ef, %struct.Memory** %MEMORY
  %loadMem_4014f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 33
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3856 to i64*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 1
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %3859 to i64*
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 15
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %3862 to i64*
  %3863 = load i64, i64* %RBP.i140
  %3864 = sub i64 %3863, 128
  %3865 = load i64, i64* %PC.i138
  %3866 = add i64 %3865, 4
  store i64 %3866, i64* %PC.i138
  %3867 = inttoptr i64 %3864 to i64*
  %3868 = load i64, i64* %3867
  store i64 %3868, i64* %RAX.i139, align 8
  store %struct.Memory* %loadMem_4014f7, %struct.Memory** %MEMORY
  %loadMem_4014fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 33
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3871 to i64*
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 1
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %3874 to i64*
  %3875 = load i64, i64* %RAX.i137
  %3876 = add i64 %3875, 24
  %3877 = load i64, i64* %PC.i136
  %3878 = add i64 %3877, 7
  store i64 %3878, i64* %PC.i136
  %3879 = inttoptr i64 %3876 to i32*
  store i32 1, i32* %3879
  store %struct.Memory* %loadMem_4014fb, %struct.Memory** %MEMORY
  %loadMem_401502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 33
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 1
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 15
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %3888 to i64*
  %3889 = load i64, i64* %RBP.i135
  %3890 = sub i64 %3889, 128
  %3891 = load i64, i64* %PC.i133
  %3892 = add i64 %3891, 4
  store i64 %3892, i64* %PC.i133
  %3893 = inttoptr i64 %3890 to i64*
  %3894 = load i64, i64* %3893
  store i64 %3894, i64* %RAX.i134, align 8
  store %struct.Memory* %loadMem_401502, %struct.Memory** %MEMORY
  %loadMem_401506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 33
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 1
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %3900 to i64*
  %3901 = load i64, i64* %RAX.i132
  %3902 = load i64, i64* %PC.i131
  %3903 = add i64 %3902, 4
  store i64 %3903, i64* %PC.i131
  %3904 = add i64 64, %3901
  store i64 %3904, i64* %RAX.i132, align 8
  %3905 = icmp ult i64 %3904, %3901
  %3906 = icmp ult i64 %3904, 64
  %3907 = or i1 %3905, %3906
  %3908 = zext i1 %3907 to i8
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3908, i8* %3909, align 1
  %3910 = trunc i64 %3904 to i32
  %3911 = and i32 %3910, 255
  %3912 = call i32 @llvm.ctpop.i32(i32 %3911)
  %3913 = trunc i32 %3912 to i8
  %3914 = and i8 %3913, 1
  %3915 = xor i8 %3914, 1
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3915, i8* %3916, align 1
  %3917 = xor i64 64, %3901
  %3918 = xor i64 %3917, %3904
  %3919 = lshr i64 %3918, 4
  %3920 = trunc i64 %3919 to i8
  %3921 = and i8 %3920, 1
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3921, i8* %3922, align 1
  %3923 = icmp eq i64 %3904, 0
  %3924 = zext i1 %3923 to i8
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3924, i8* %3925, align 1
  %3926 = lshr i64 %3904, 63
  %3927 = trunc i64 %3926 to i8
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3927, i8* %3928, align 1
  %3929 = lshr i64 %3901, 63
  %3930 = xor i64 %3926, %3929
  %3931 = add i64 %3930, %3926
  %3932 = icmp eq i64 %3931, 2
  %3933 = zext i1 %3932 to i8
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3933, i8* %3934, align 1
  store %struct.Memory* %loadMem_401506, %struct.Memory** %MEMORY
  %loadMem_40150a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 33
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 1
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 15
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %3943 to i64*
  %3944 = load i64, i64* %RBP.i130
  %3945 = sub i64 %3944, 128
  %3946 = load i64, i64* %RAX.i129
  %3947 = load i64, i64* %PC.i128
  %3948 = add i64 %3947, 4
  store i64 %3948, i64* %PC.i128
  %3949 = inttoptr i64 %3945 to i64*
  store i64 %3946, i64* %3949
  store %struct.Memory* %loadMem_40150a, %struct.Memory** %MEMORY
  %loadMem_40150e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 33
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3952 to i64*
  %3953 = load i64, i64* %PC.i127
  %3954 = add i64 %3953, -52
  %3955 = load i64, i64* %PC.i127
  %3956 = add i64 %3955, 5
  store i64 %3956, i64* %PC.i127
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3954, i64* %3957, align 8
  store %struct.Memory* %loadMem_40150e, %struct.Memory** %MEMORY
  br label %block_.L_4014da

block_.L_401513:                                  ; preds = %block_.L_4014da
  %loadMem_401513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 33
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3960 to i64*
  %3961 = load i64, i64* %PC.i126
  %3962 = add i64 %3961, 144
  %3963 = load i64, i64* %PC.i126
  %3964 = add i64 %3963, 5
  store i64 %3964, i64* %PC.i126
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3962, i64* %3965, align 8
  store %struct.Memory* %loadMem_401513, %struct.Memory** %MEMORY
  br label %block_.L_4015a3

block_.L_401518:                                  ; preds = %block_40148f
  %loadMem_401518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 33
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %3968 to i64*
  %3969 = load i64, i64* %PC.i125
  %3970 = add i64 %3969, 5
  %3971 = load i64, i64* %PC.i125
  %3972 = add i64 %3971, 5
  store i64 %3972, i64* %PC.i125
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3970, i64* %3973, align 8
  store %struct.Memory* %loadMem_401518, %struct.Memory** %MEMORY
  br label %block_.L_40151d

block_.L_40151d:                                  ; preds = %block_40152e, %block_.L_401518
  %loadMem_40151d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 33
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 1
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 15
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %3982 to i64*
  %3983 = load i64, i64* %RBP.i124
  %3984 = sub i64 %3983, 128
  %3985 = load i64, i64* %PC.i122
  %3986 = add i64 %3985, 4
  store i64 %3986, i64* %PC.i122
  %3987 = inttoptr i64 %3984 to i64*
  %3988 = load i64, i64* %3987
  store i64 %3988, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_40151d, %struct.Memory** %MEMORY
  %loadMem_401521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 33
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 1
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 15
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %3997 to i64*
  %3998 = load i64, i64* %RAX.i120
  %3999 = load i64, i64* %RBP.i121
  %4000 = sub i64 %3999, 136
  %4001 = load i64, i64* %PC.i119
  %4002 = add i64 %4001, 7
  store i64 %4002, i64* %PC.i119
  %4003 = inttoptr i64 %4000 to i64*
  %4004 = load i64, i64* %4003
  %4005 = sub i64 %3998, %4004
  %4006 = icmp ugt i64 %4004, %3998
  %4007 = zext i1 %4006 to i8
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4007, i8* %4008, align 1
  %4009 = trunc i64 %4005 to i32
  %4010 = and i32 %4009, 255
  %4011 = call i32 @llvm.ctpop.i32(i32 %4010)
  %4012 = trunc i32 %4011 to i8
  %4013 = and i8 %4012, 1
  %4014 = xor i8 %4013, 1
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4014, i8* %4015, align 1
  %4016 = xor i64 %4004, %3998
  %4017 = xor i64 %4016, %4005
  %4018 = lshr i64 %4017, 4
  %4019 = trunc i64 %4018 to i8
  %4020 = and i8 %4019, 1
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4020, i8* %4021, align 1
  %4022 = icmp eq i64 %4005, 0
  %4023 = zext i1 %4022 to i8
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4023, i8* %4024, align 1
  %4025 = lshr i64 %4005, 63
  %4026 = trunc i64 %4025 to i8
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4026, i8* %4027, align 1
  %4028 = lshr i64 %3998, 63
  %4029 = lshr i64 %4004, 63
  %4030 = xor i64 %4029, %4028
  %4031 = xor i64 %4025, %4028
  %4032 = add i64 %4031, %4030
  %4033 = icmp eq i64 %4032, 2
  %4034 = zext i1 %4033 to i8
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4034, i8* %4035, align 1
  store %struct.Memory* %loadMem_401521, %struct.Memory** %MEMORY
  %loadMem_401528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 33
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4038 to i64*
  %4039 = load i64, i64* %PC.i118
  %4040 = add i64 %4039, 118
  %4041 = load i64, i64* %PC.i118
  %4042 = add i64 %4041, 6
  %4043 = load i64, i64* %PC.i118
  %4044 = add i64 %4043, 6
  store i64 %4044, i64* %PC.i118
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4046 = load i8, i8* %4045, align 1
  store i8 %4046, i8* %BRANCH_TAKEN, align 1
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4048 = icmp ne i8 %4046, 0
  %4049 = select i1 %4048, i64 %4040, i64 %4042
  store i64 %4049, i64* %4047, align 8
  store %struct.Memory* %loadMem_401528, %struct.Memory** %MEMORY
  %loadBr_401528 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401528 = icmp eq i8 %loadBr_401528, 1
  br i1 %cmpBr_401528, label %block_.L_40159e, label %block_40152e

block_40152e:                                     ; preds = %block_.L_40151d
  %loadMem_40152e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 33
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4052 to i64*
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 1
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %4055 to i64*
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 15
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %4058 to i64*
  %4059 = load i64, i64* %RBP.i117
  %4060 = sub i64 %4059, 128
  %4061 = load i64, i64* %PC.i115
  %4062 = add i64 %4061, 4
  store i64 %4062, i64* %PC.i115
  %4063 = inttoptr i64 %4060 to i64*
  %4064 = load i64, i64* %4063
  store i64 %4064, i64* %RAX.i116, align 8
  store %struct.Memory* %loadMem_40152e, %struct.Memory** %MEMORY
  %loadMem_401532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4066 = getelementptr inbounds %struct.GPR, %struct.GPR* %4065, i32 0, i32 33
  %4067 = getelementptr inbounds %struct.Reg, %struct.Reg* %4066, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4067 to i64*
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4069 = getelementptr inbounds %struct.GPR, %struct.GPR* %4068, i32 0, i32 1
  %4070 = getelementptr inbounds %struct.Reg, %struct.Reg* %4069, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %4070 to i64*
  %4071 = load i64, i64* %RAX.i114
  %4072 = add i64 %4071, 48
  %4073 = load i64, i64* %PC.i113
  %4074 = add i64 %4073, 8
  store i64 %4074, i64* %PC.i113
  %4075 = inttoptr i64 %4072 to i64*
  store i64 0, i64* %4075
  store %struct.Memory* %loadMem_401532, %struct.Memory** %MEMORY
  %loadMem_40153a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 33
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4078 to i64*
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 1
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 15
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %4084 to i64*
  %4085 = load i64, i64* %RBP.i112
  %4086 = sub i64 %4085, 128
  %4087 = load i64, i64* %PC.i110
  %4088 = add i64 %4087, 4
  store i64 %4088, i64* %PC.i110
  %4089 = inttoptr i64 %4086 to i64*
  %4090 = load i64, i64* %4089
  store i64 %4090, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_40153a, %struct.Memory** %MEMORY
  %loadMem_40153e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 33
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4093 to i64*
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 1
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %4096 to i64*
  %4097 = load i64, i64* %RAX.i109
  %4098 = add i64 %4097, 24
  %4099 = load i64, i64* %PC.i108
  %4100 = add i64 %4099, 7
  store i64 %4100, i64* %PC.i108
  %4101 = inttoptr i64 %4098 to i32*
  store i32 1, i32* %4101
  store %struct.Memory* %loadMem_40153e, %struct.Memory** %MEMORY
  %loadMem_401545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4103 = getelementptr inbounds %struct.GPR, %struct.GPR* %4102, i32 0, i32 33
  %4104 = getelementptr inbounds %struct.Reg, %struct.Reg* %4103, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %4104 to i64*
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 1
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %4107 to i64*
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 15
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %4110 to i64*
  %4111 = load i64, i64* %RBP.i107
  %4112 = sub i64 %4111, 128
  %4113 = load i64, i64* %PC.i105
  %4114 = add i64 %4113, 4
  store i64 %4114, i64* %PC.i105
  %4115 = inttoptr i64 %4112 to i64*
  %4116 = load i64, i64* %4115
  store i64 %4116, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_401545, %struct.Memory** %MEMORY
  %loadMem_401549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 33
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 1
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %4122 to i64*
  %4123 = load i64, i64* %RAX.i104
  %4124 = add i64 %4123, 8
  %4125 = load i64, i64* %PC.i103
  %4126 = add i64 %4125, 4
  store i64 %4126, i64* %PC.i103
  %4127 = inttoptr i64 %4124 to i64*
  %4128 = load i64, i64* %4127
  store i64 %4128, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_401549, %struct.Memory** %MEMORY
  %loadMem_40154d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 33
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4131 to i64*
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 1
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %4134 to i64*
  %4135 = load i64, i64* %RAX.i102
  %4136 = add i64 %4135, 56
  %4137 = load i64, i64* %PC.i101
  %4138 = add i64 %4137, 4
  store i64 %4138, i64* %PC.i101
  %4139 = inttoptr i64 %4136 to i64*
  %4140 = load i64, i64* %4139
  store i64 %4140, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_40154d, %struct.Memory** %MEMORY
  %loadMem_401551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 33
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4143 to i64*
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 5
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %4146 to i64*
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 15
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %4149 to i64*
  %4150 = load i64, i64* %RBP.i100
  %4151 = sub i64 %4150, 128
  %4152 = load i64, i64* %PC.i98
  %4153 = add i64 %4152, 4
  store i64 %4153, i64* %PC.i98
  %4154 = inttoptr i64 %4151 to i64*
  %4155 = load i64, i64* %4154
  store i64 %4155, i64* %RCX.i99, align 8
  store %struct.Memory* %loadMem_401551, %struct.Memory** %MEMORY
  %loadMem_401555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 33
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 1
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %4161 to i64*
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 5
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %4164 to i64*
  %4165 = load i64, i64* %RCX.i97
  %4166 = add i64 %4165, 32
  %4167 = load i64, i64* %RAX.i96
  %4168 = load i64, i64* %PC.i95
  %4169 = add i64 %4168, 4
  store i64 %4169, i64* %PC.i95
  %4170 = inttoptr i64 %4166 to i64*
  store i64 %4167, i64* %4170
  store %struct.Memory* %loadMem_401555, %struct.Memory** %MEMORY
  %loadMem_401559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 33
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4173 to i64*
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 1
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %4176 to i64*
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 15
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %4179 to i64*
  %4180 = load i64, i64* %RBP.i94
  %4181 = sub i64 %4180, 128
  %4182 = load i64, i64* %PC.i92
  %4183 = add i64 %4182, 4
  store i64 %4183, i64* %PC.i92
  %4184 = inttoptr i64 %4181 to i64*
  %4185 = load i64, i64* %4184
  store i64 %4185, i64* %RAX.i93, align 8
  store %struct.Memory* %loadMem_401559, %struct.Memory** %MEMORY
  %loadMem_40155d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 33
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4188 to i64*
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 5
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %4191 to i64*
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 15
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %4194 to i64*
  %4195 = load i64, i64* %RBP.i91
  %4196 = sub i64 %4195, 128
  %4197 = load i64, i64* %PC.i89
  %4198 = add i64 %4197, 4
  store i64 %4198, i64* %PC.i89
  %4199 = inttoptr i64 %4196 to i64*
  %4200 = load i64, i64* %4199
  store i64 %4200, i64* %RCX.i90, align 8
  store %struct.Memory* %loadMem_40155d, %struct.Memory** %MEMORY
  %loadMem_401561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 33
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4203 to i64*
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 5
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %4206 to i64*
  %4207 = load i64, i64* %RCX.i88
  %4208 = add i64 %4207, 8
  %4209 = load i64, i64* %PC.i87
  %4210 = add i64 %4209, 4
  store i64 %4210, i64* %PC.i87
  %4211 = inttoptr i64 %4208 to i64*
  %4212 = load i64, i64* %4211
  store i64 %4212, i64* %RCX.i88, align 8
  store %struct.Memory* %loadMem_401561, %struct.Memory** %MEMORY
  %loadMem_401565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 33
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4215 to i64*
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 1
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %4218 to i64*
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 5
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %4221 to i64*
  %4222 = load i64, i64* %RCX.i86
  %4223 = add i64 %4222, 56
  %4224 = load i64, i64* %RAX.i85
  %4225 = load i64, i64* %PC.i84
  %4226 = add i64 %4225, 4
  store i64 %4226, i64* %PC.i84
  %4227 = inttoptr i64 %4223 to i64*
  store i64 %4224, i64* %4227
  store %struct.Memory* %loadMem_401565, %struct.Memory** %MEMORY
  %loadMem_401569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 33
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4230 to i64*
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 1
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %4233 to i64*
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 15
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4236 to i64*
  %4237 = load i64, i64* %RBP.i83
  %4238 = sub i64 %4237, 128
  %4239 = load i64, i64* %PC.i81
  %4240 = add i64 %4239, 4
  store i64 %4240, i64* %PC.i81
  %4241 = inttoptr i64 %4238 to i64*
  %4242 = load i64, i64* %4241
  store i64 %4242, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_401569, %struct.Memory** %MEMORY
  %loadMem_40156d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 33
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 1
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %4248 to i64*
  %4249 = load i64, i64* %RAX.i80
  %4250 = add i64 %4249, 16
  %4251 = load i64, i64* %PC.i79
  %4252 = add i64 %4251, 4
  store i64 %4252, i64* %PC.i79
  %4253 = inttoptr i64 %4250 to i64*
  %4254 = load i64, i64* %4253
  store i64 %4254, i64* %RAX.i80, align 8
  store %struct.Memory* %loadMem_40156d, %struct.Memory** %MEMORY
  %loadMem_401571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 33
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4257 to i64*
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 1
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %4260 to i64*
  %4261 = load i64, i64* %RAX.i78
  %4262 = add i64 %4261, 64
  %4263 = load i64, i64* %PC.i77
  %4264 = add i64 %4263, 4
  store i64 %4264, i64* %PC.i77
  %4265 = inttoptr i64 %4262 to i64*
  %4266 = load i64, i64* %4265
  store i64 %4266, i64* %RAX.i78, align 8
  store %struct.Memory* %loadMem_401571, %struct.Memory** %MEMORY
  %loadMem_401575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 33
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4269 to i64*
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 5
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %4272 to i64*
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 15
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %4275 to i64*
  %4276 = load i64, i64* %RBP.i76
  %4277 = sub i64 %4276, 128
  %4278 = load i64, i64* %PC.i74
  %4279 = add i64 %4278, 4
  store i64 %4279, i64* %PC.i74
  %4280 = inttoptr i64 %4277 to i64*
  %4281 = load i64, i64* %4280
  store i64 %4281, i64* %RCX.i75, align 8
  store %struct.Memory* %loadMem_401575, %struct.Memory** %MEMORY
  %loadMem_401579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 33
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4284 to i64*
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 1
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %4287 to i64*
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 5
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %4290 to i64*
  %4291 = load i64, i64* %RCX.i73
  %4292 = add i64 %4291, 40
  %4293 = load i64, i64* %RAX.i72
  %4294 = load i64, i64* %PC.i71
  %4295 = add i64 %4294, 4
  store i64 %4295, i64* %PC.i71
  %4296 = inttoptr i64 %4292 to i64*
  store i64 %4293, i64* %4296
  store %struct.Memory* %loadMem_401579, %struct.Memory** %MEMORY
  %loadMem_40157d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 33
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 1
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 15
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %4305 to i64*
  %4306 = load i64, i64* %RBP.i70
  %4307 = sub i64 %4306, 128
  %4308 = load i64, i64* %PC.i68
  %4309 = add i64 %4308, 4
  store i64 %4309, i64* %PC.i68
  %4310 = inttoptr i64 %4307 to i64*
  %4311 = load i64, i64* %4310
  store i64 %4311, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_40157d, %struct.Memory** %MEMORY
  %loadMem_401581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 33
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 5
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %4317 to i64*
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 15
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %4320 to i64*
  %4321 = load i64, i64* %RBP.i67
  %4322 = sub i64 %4321, 128
  %4323 = load i64, i64* %PC.i65
  %4324 = add i64 %4323, 4
  store i64 %4324, i64* %PC.i65
  %4325 = inttoptr i64 %4322 to i64*
  %4326 = load i64, i64* %4325
  store i64 %4326, i64* %RCX.i66, align 8
  store %struct.Memory* %loadMem_401581, %struct.Memory** %MEMORY
  %loadMem_401585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 33
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4329 to i64*
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 5
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %4332 to i64*
  %4333 = load i64, i64* %RCX.i64
  %4334 = add i64 %4333, 16
  %4335 = load i64, i64* %PC.i63
  %4336 = add i64 %4335, 4
  store i64 %4336, i64* %PC.i63
  %4337 = inttoptr i64 %4334 to i64*
  %4338 = load i64, i64* %4337
  store i64 %4338, i64* %RCX.i64, align 8
  store %struct.Memory* %loadMem_401585, %struct.Memory** %MEMORY
  %loadMem_401589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 33
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4341 to i64*
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 1
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %4344 to i64*
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 5
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %4347 to i64*
  %4348 = load i64, i64* %RCX.i62
  %4349 = add i64 %4348, 64
  %4350 = load i64, i64* %RAX.i61
  %4351 = load i64, i64* %PC.i60
  %4352 = add i64 %4351, 4
  store i64 %4352, i64* %PC.i60
  %4353 = inttoptr i64 %4349 to i64*
  store i64 %4350, i64* %4353
  store %struct.Memory* %loadMem_401589, %struct.Memory** %MEMORY
  %loadMem_40158d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 33
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4356 to i64*
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 1
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 15
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %4362 to i64*
  %4363 = load i64, i64* %RBP.i59
  %4364 = sub i64 %4363, 128
  %4365 = load i64, i64* %PC.i57
  %4366 = add i64 %4365, 4
  store i64 %4366, i64* %PC.i57
  %4367 = inttoptr i64 %4364 to i64*
  %4368 = load i64, i64* %4367
  store i64 %4368, i64* %RAX.i58, align 8
  store %struct.Memory* %loadMem_40158d, %struct.Memory** %MEMORY
  %loadMem_401591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 33
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 1
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %4374 to i64*
  %4375 = load i64, i64* %RAX.i56
  %4376 = load i64, i64* %PC.i55
  %4377 = add i64 %4376, 4
  store i64 %4377, i64* %PC.i55
  %4378 = add i64 64, %4375
  store i64 %4378, i64* %RAX.i56, align 8
  %4379 = icmp ult i64 %4378, %4375
  %4380 = icmp ult i64 %4378, 64
  %4381 = or i1 %4379, %4380
  %4382 = zext i1 %4381 to i8
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4382, i8* %4383, align 1
  %4384 = trunc i64 %4378 to i32
  %4385 = and i32 %4384, 255
  %4386 = call i32 @llvm.ctpop.i32(i32 %4385)
  %4387 = trunc i32 %4386 to i8
  %4388 = and i8 %4387, 1
  %4389 = xor i8 %4388, 1
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4389, i8* %4390, align 1
  %4391 = xor i64 64, %4375
  %4392 = xor i64 %4391, %4378
  %4393 = lshr i64 %4392, 4
  %4394 = trunc i64 %4393 to i8
  %4395 = and i8 %4394, 1
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4395, i8* %4396, align 1
  %4397 = icmp eq i64 %4378, 0
  %4398 = zext i1 %4397 to i8
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4398, i8* %4399, align 1
  %4400 = lshr i64 %4378, 63
  %4401 = trunc i64 %4400 to i8
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4401, i8* %4402, align 1
  %4403 = lshr i64 %4375, 63
  %4404 = xor i64 %4400, %4403
  %4405 = add i64 %4404, %4400
  %4406 = icmp eq i64 %4405, 2
  %4407 = zext i1 %4406 to i8
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4407, i8* %4408, align 1
  store %struct.Memory* %loadMem_401591, %struct.Memory** %MEMORY
  %loadMem_401595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 33
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %4411 to i64*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 1
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %4414 to i64*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 15
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %4417 to i64*
  %4418 = load i64, i64* %RBP.i54
  %4419 = sub i64 %4418, 128
  %4420 = load i64, i64* %RAX.i53
  %4421 = load i64, i64* %PC.i52
  %4422 = add i64 %4421, 4
  store i64 %4422, i64* %PC.i52
  %4423 = inttoptr i64 %4419 to i64*
  store i64 %4420, i64* %4423
  store %struct.Memory* %loadMem_401595, %struct.Memory** %MEMORY
  %loadMem_401599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 33
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4426 to i64*
  %4427 = load i64, i64* %PC.i51
  %4428 = add i64 %4427, -124
  %4429 = load i64, i64* %PC.i51
  %4430 = add i64 %4429, 5
  store i64 %4430, i64* %PC.i51
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4428, i64* %4431, align 8
  store %struct.Memory* %loadMem_401599, %struct.Memory** %MEMORY
  br label %block_.L_40151d

block_.L_40159e:                                  ; preds = %block_.L_40151d
  %loadMem_40159e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 33
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4434 to i64*
  %4435 = load i64, i64* %PC.i50
  %4436 = add i64 %4435, 5
  %4437 = load i64, i64* %PC.i50
  %4438 = add i64 %4437, 5
  store i64 %4438, i64* %PC.i50
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4436, i64* %4439, align 8
  store %struct.Memory* %loadMem_40159e, %struct.Memory** %MEMORY
  br label %block_.L_4015a3

block_.L_4015a3:                                  ; preds = %block_.L_40159e, %block_.L_401513
  %loadMem_4015a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 33
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4442 to i64*
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4444 = getelementptr inbounds %struct.GPR, %struct.GPR* %4443, i32 0, i32 1
  %4445 = getelementptr inbounds %struct.Reg, %struct.Reg* %4444, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %4445 to i64*
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4447 = getelementptr inbounds %struct.GPR, %struct.GPR* %4446, i32 0, i32 15
  %4448 = getelementptr inbounds %struct.Reg, %struct.Reg* %4447, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %4448 to i64*
  %4449 = load i64, i64* %RBP.i49
  %4450 = sub i64 %4449, 40
  %4451 = load i64, i64* %PC.i47
  %4452 = add i64 %4451, 4
  store i64 %4452, i64* %PC.i47
  %4453 = inttoptr i64 %4450 to i64*
  %4454 = load i64, i64* %4453
  store i64 %4454, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_4015a3, %struct.Memory** %MEMORY
  %loadMem_4015a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 33
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4457 to i64*
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 5
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %4460 to i64*
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 15
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %4463 to i64*
  %4464 = load i64, i64* %RBP.i46
  %4465 = sub i64 %4464, 16
  %4466 = load i64, i64* %PC.i44
  %4467 = add i64 %4466, 4
  store i64 %4467, i64* %PC.i44
  %4468 = inttoptr i64 %4465 to i64*
  %4469 = load i64, i64* %4468
  store i64 %4469, i64* %RCX.i45, align 8
  store %struct.Memory* %loadMem_4015a7, %struct.Memory** %MEMORY
  %loadMem_4015ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 33
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4472 to i64*
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 1
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 5
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RCX.i43 = bitcast %union.anon* %4478 to i64*
  %4479 = load i64, i64* %RAX.i42
  %4480 = load i64, i64* %RCX.i43
  %4481 = add i64 %4480, 424
  %4482 = load i64, i64* %PC.i41
  %4483 = add i64 %4482, 7
  store i64 %4483, i64* %PC.i41
  %4484 = inttoptr i64 %4481 to i64*
  %4485 = load i64, i64* %4484
  %4486 = add i64 %4485, %4479
  store i64 %4486, i64* %RAX.i42, align 8
  %4487 = icmp ult i64 %4486, %4479
  %4488 = icmp ult i64 %4486, %4485
  %4489 = or i1 %4487, %4488
  %4490 = zext i1 %4489 to i8
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4490, i8* %4491, align 1
  %4492 = trunc i64 %4486 to i32
  %4493 = and i32 %4492, 255
  %4494 = call i32 @llvm.ctpop.i32(i32 %4493)
  %4495 = trunc i32 %4494 to i8
  %4496 = and i8 %4495, 1
  %4497 = xor i8 %4496, 1
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4497, i8* %4498, align 1
  %4499 = xor i64 %4485, %4479
  %4500 = xor i64 %4499, %4486
  %4501 = lshr i64 %4500, 4
  %4502 = trunc i64 %4501 to i8
  %4503 = and i8 %4502, 1
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4503, i8* %4504, align 1
  %4505 = icmp eq i64 %4486, 0
  %4506 = zext i1 %4505 to i8
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4506, i8* %4507, align 1
  %4508 = lshr i64 %4486, 63
  %4509 = trunc i64 %4508 to i8
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4509, i8* %4510, align 1
  %4511 = lshr i64 %4479, 63
  %4512 = lshr i64 %4485, 63
  %4513 = xor i64 %4508, %4511
  %4514 = xor i64 %4508, %4512
  %4515 = add i64 %4513, %4514
  %4516 = icmp eq i64 %4515, 2
  %4517 = zext i1 %4516 to i8
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4517, i8* %4518, align 1
  store %struct.Memory* %loadMem_4015ab, %struct.Memory** %MEMORY
  %loadMem_4015b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4520 = getelementptr inbounds %struct.GPR, %struct.GPR* %4519, i32 0, i32 33
  %4521 = getelementptr inbounds %struct.Reg, %struct.Reg* %4520, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %4521 to i64*
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 1
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %4524 to i64*
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 5
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %4527 to i64*
  %4528 = load i64, i64* %RCX.i40
  %4529 = add i64 %4528, 424
  %4530 = load i64, i64* %RAX.i39
  %4531 = load i64, i64* %PC.i38
  %4532 = add i64 %4531, 7
  store i64 %4532, i64* %PC.i38
  %4533 = inttoptr i64 %4529 to i64*
  store i64 %4530, i64* %4533
  store %struct.Memory* %loadMem_4015b2, %struct.Memory** %MEMORY
  %loadMem_4015b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 33
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %4536 to i64*
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 1
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %4539 to i64*
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 15
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %4542 to i64*
  %4543 = load i64, i64* %RBP.i37
  %4544 = sub i64 %4543, 40
  %4545 = load i64, i64* %PC.i35
  %4546 = add i64 %4545, 4
  store i64 %4546, i64* %PC.i35
  %4547 = inttoptr i64 %4544 to i64*
  %4548 = load i64, i64* %4547
  store i64 %4548, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_4015b9, %struct.Memory** %MEMORY
  %loadMem_4015bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 33
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 5
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %RCX.i33 = bitcast %union.anon* %4554 to i64*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 15
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %4557 to i64*
  %4558 = load i64, i64* %RBP.i34
  %4559 = sub i64 %4558, 16
  %4560 = load i64, i64* %PC.i32
  %4561 = add i64 %4560, 4
  store i64 %4561, i64* %PC.i32
  %4562 = inttoptr i64 %4559 to i64*
  %4563 = load i64, i64* %4562
  store i64 %4563, i64* %RCX.i33, align 8
  store %struct.Memory* %loadMem_4015bd, %struct.Memory** %MEMORY
  %loadMem_4015c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 33
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4566 to i64*
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 1
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %4569 to i64*
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4571 = getelementptr inbounds %struct.GPR, %struct.GPR* %4570, i32 0, i32 5
  %4572 = getelementptr inbounds %struct.Reg, %struct.Reg* %4571, i32 0, i32 0
  %RCX.i31 = bitcast %union.anon* %4572 to i64*
  %4573 = load i64, i64* %RAX.i30
  %4574 = load i64, i64* %RCX.i31
  %4575 = add i64 %4574, 440
  %4576 = load i64, i64* %PC.i29
  %4577 = add i64 %4576, 7
  store i64 %4577, i64* %PC.i29
  %4578 = inttoptr i64 %4575 to i64*
  %4579 = load i64, i64* %4578
  %4580 = add i64 %4579, %4573
  store i64 %4580, i64* %RAX.i30, align 8
  %4581 = icmp ult i64 %4580, %4573
  %4582 = icmp ult i64 %4580, %4579
  %4583 = or i1 %4581, %4582
  %4584 = zext i1 %4583 to i8
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4584, i8* %4585, align 1
  %4586 = trunc i64 %4580 to i32
  %4587 = and i32 %4586, 255
  %4588 = call i32 @llvm.ctpop.i32(i32 %4587)
  %4589 = trunc i32 %4588 to i8
  %4590 = and i8 %4589, 1
  %4591 = xor i8 %4590, 1
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4591, i8* %4592, align 1
  %4593 = xor i64 %4579, %4573
  %4594 = xor i64 %4593, %4580
  %4595 = lshr i64 %4594, 4
  %4596 = trunc i64 %4595 to i8
  %4597 = and i8 %4596, 1
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4597, i8* %4598, align 1
  %4599 = icmp eq i64 %4580, 0
  %4600 = zext i1 %4599 to i8
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4600, i8* %4601, align 1
  %4602 = lshr i64 %4580, 63
  %4603 = trunc i64 %4602 to i8
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4603, i8* %4604, align 1
  %4605 = lshr i64 %4573, 63
  %4606 = lshr i64 %4579, 63
  %4607 = xor i64 %4602, %4605
  %4608 = xor i64 %4602, %4606
  %4609 = add i64 %4607, %4608
  %4610 = icmp eq i64 %4609, 2
  %4611 = zext i1 %4610 to i8
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4611, i8* %4612, align 1
  store %struct.Memory* %loadMem_4015c1, %struct.Memory** %MEMORY
  %loadMem_4015c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4614 = getelementptr inbounds %struct.GPR, %struct.GPR* %4613, i32 0, i32 33
  %4615 = getelementptr inbounds %struct.Reg, %struct.Reg* %4614, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4615 to i64*
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 1
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %4618 to i64*
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 5
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %RCX.i28 = bitcast %union.anon* %4621 to i64*
  %4622 = load i64, i64* %RCX.i28
  %4623 = add i64 %4622, 440
  %4624 = load i64, i64* %RAX.i27
  %4625 = load i64, i64* %PC.i26
  %4626 = add i64 %4625, 7
  store i64 %4626, i64* %PC.i26
  %4627 = inttoptr i64 %4623 to i64*
  store i64 %4624, i64* %4627
  store %struct.Memory* %loadMem_4015c8, %struct.Memory** %MEMORY
  %loadMem_4015cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 33
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4630 to i64*
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 1
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %4633 to i64*
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 15
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %4636 to i64*
  %4637 = load i64, i64* %RBP.i25
  %4638 = sub i64 %4637, 40
  %4639 = load i64, i64* %PC.i23
  %4640 = add i64 %4639, 4
  store i64 %4640, i64* %PC.i23
  %4641 = inttoptr i64 %4638 to i64*
  %4642 = load i64, i64* %4641
  store i64 %4642, i64* %RAX.i24, align 8
  store %struct.Memory* %loadMem_4015cf, %struct.Memory** %MEMORY
  %loadMem_4015d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 33
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4645 to i64*
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4647 = getelementptr inbounds %struct.GPR, %struct.GPR* %4646, i32 0, i32 5
  %4648 = getelementptr inbounds %struct.Reg, %struct.Reg* %4647, i32 0, i32 0
  %RCX.i21 = bitcast %union.anon* %4648 to i64*
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4650 = getelementptr inbounds %struct.GPR, %struct.GPR* %4649, i32 0, i32 15
  %4651 = getelementptr inbounds %struct.Reg, %struct.Reg* %4650, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %4651 to i64*
  %4652 = load i64, i64* %RBP.i22
  %4653 = sub i64 %4652, 16
  %4654 = load i64, i64* %PC.i20
  %4655 = add i64 %4654, 4
  store i64 %4655, i64* %PC.i20
  %4656 = inttoptr i64 %4653 to i64*
  %4657 = load i64, i64* %4656
  store i64 %4657, i64* %RCX.i21, align 8
  store %struct.Memory* %loadMem_4015d3, %struct.Memory** %MEMORY
  %loadMem_4015d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 33
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4660 to i64*
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 5
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %RCX.i18 = bitcast %union.anon* %4663 to i64*
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 7
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %RDX.i19 = bitcast %union.anon* %4666 to i64*
  %4667 = load i64, i64* %RCX.i18
  %4668 = add i64 %4667, 448
  %4669 = load i64, i64* %PC.i17
  %4670 = add i64 %4669, 7
  store i64 %4670, i64* %PC.i17
  %4671 = inttoptr i64 %4668 to i64*
  %4672 = load i64, i64* %4671
  store i64 %4672, i64* %RDX.i19, align 8
  store %struct.Memory* %loadMem_4015d7, %struct.Memory** %MEMORY
  %loadMem_4015de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 33
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4675 to i64*
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 1
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %4678 to i64*
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 7
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %RDX.i16 = bitcast %union.anon* %4681 to i64*
  %4682 = load i64, i64* %RDX.i16
  %4683 = load i64, i64* %RAX.i15
  %4684 = load i64, i64* %PC.i14
  %4685 = add i64 %4684, 3
  store i64 %4685, i64* %PC.i14
  %4686 = sub i64 %4682, %4683
  store i64 %4686, i64* %RDX.i16, align 8
  %4687 = icmp ult i64 %4682, %4683
  %4688 = zext i1 %4687 to i8
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4688, i8* %4689, align 1
  %4690 = trunc i64 %4686 to i32
  %4691 = and i32 %4690, 255
  %4692 = call i32 @llvm.ctpop.i32(i32 %4691)
  %4693 = trunc i32 %4692 to i8
  %4694 = and i8 %4693, 1
  %4695 = xor i8 %4694, 1
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4695, i8* %4696, align 1
  %4697 = xor i64 %4683, %4682
  %4698 = xor i64 %4697, %4686
  %4699 = lshr i64 %4698, 4
  %4700 = trunc i64 %4699 to i8
  %4701 = and i8 %4700, 1
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4701, i8* %4702, align 1
  %4703 = icmp eq i64 %4686, 0
  %4704 = zext i1 %4703 to i8
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4704, i8* %4705, align 1
  %4706 = lshr i64 %4686, 63
  %4707 = trunc i64 %4706 to i8
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4707, i8* %4708, align 1
  %4709 = lshr i64 %4682, 63
  %4710 = lshr i64 %4683, 63
  %4711 = xor i64 %4710, %4709
  %4712 = xor i64 %4706, %4709
  %4713 = add i64 %4712, %4711
  %4714 = icmp eq i64 %4713, 2
  %4715 = zext i1 %4714 to i8
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4715, i8* %4716, align 1
  store %struct.Memory* %loadMem_4015de, %struct.Memory** %MEMORY
  %loadMem_4015e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 33
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4719 to i64*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 5
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4722 to i64*
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4724 = getelementptr inbounds %struct.GPR, %struct.GPR* %4723, i32 0, i32 7
  %4725 = getelementptr inbounds %struct.Reg, %struct.Reg* %4724, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4725 to i64*
  %4726 = load i64, i64* %RCX.i
  %4727 = add i64 %4726, 448
  %4728 = load i64, i64* %RDX.i
  %4729 = load i64, i64* %PC.i13
  %4730 = add i64 %4729, 7
  store i64 %4730, i64* %PC.i13
  %4731 = inttoptr i64 %4727 to i64*
  store i64 %4728, i64* %4731
  store %struct.Memory* %loadMem_4015e1, %struct.Memory** %MEMORY
  br label %block_.L_4015e8

block_.L_4015e8:                                  ; preds = %block_.L_4015a3, %block_.L_401484
  %loadMem_4015e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 33
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4734 to i64*
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4736 = getelementptr inbounds %struct.GPR, %struct.GPR* %4735, i32 0, i32 1
  %4737 = getelementptr inbounds %struct.Reg, %struct.Reg* %4736, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %4737 to i64*
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 15
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %4740 to i64*
  %4741 = load i64, i64* %RBP.i12
  %4742 = sub i64 %4741, 40
  %4743 = load i64, i64* %PC.i10
  %4744 = add i64 %4743, 4
  store i64 %4744, i64* %PC.i10
  %4745 = inttoptr i64 %4742 to i64*
  %4746 = load i64, i64* %4745
  store i64 %4746, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_4015e8, %struct.Memory** %MEMORY
  %loadMem_4015ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 33
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4749 to i64*
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4751 = getelementptr inbounds %struct.GPR, %struct.GPR* %4750, i32 0, i32 1
  %4752 = getelementptr inbounds %struct.Reg, %struct.Reg* %4751, i32 0, i32 0
  %RAX.i8 = bitcast %union.anon* %4752 to i64*
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4754 = getelementptr inbounds %struct.GPR, %struct.GPR* %4753, i32 0, i32 15
  %4755 = getelementptr inbounds %struct.Reg, %struct.Reg* %4754, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %4755 to i64*
  %4756 = load i64, i64* %RBP.i9
  %4757 = sub i64 %4756, 8
  %4758 = load i64, i64* %RAX.i8
  %4759 = load i64, i64* %PC.i7
  %4760 = add i64 %4759, 4
  store i64 %4760, i64* %PC.i7
  %4761 = inttoptr i64 %4757 to i64*
  store i64 %4758, i64* %4761
  store %struct.Memory* %loadMem_4015ec, %struct.Memory** %MEMORY
  br label %block_.L_4015f0

block_.L_4015f0:                                  ; preds = %block_.L_4015e8, %block_4011f3
  %loadMem_4015f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 33
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4764 to i64*
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4766 = getelementptr inbounds %struct.GPR, %struct.GPR* %4765, i32 0, i32 1
  %4767 = getelementptr inbounds %struct.Reg, %struct.Reg* %4766, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4767 to i64*
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4769 = getelementptr inbounds %struct.GPR, %struct.GPR* %4768, i32 0, i32 15
  %4770 = getelementptr inbounds %struct.Reg, %struct.Reg* %4769, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4770 to i64*
  %4771 = load i64, i64* %RBP.i6
  %4772 = sub i64 %4771, 8
  %4773 = load i64, i64* %PC.i5
  %4774 = add i64 %4773, 4
  store i64 %4774, i64* %PC.i5
  %4775 = inttoptr i64 %4772 to i64*
  %4776 = load i64, i64* %4775
  store i64 %4776, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4015f0, %struct.Memory** %MEMORY
  %loadMem_4015f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 33
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4779 to i64*
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 13
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4782 to i64*
  %4783 = load i64, i64* %RSP.i
  %4784 = load i64, i64* %PC.i4
  %4785 = add i64 %4784, 7
  store i64 %4785, i64* %PC.i4
  %4786 = add i64 176, %4783
  store i64 %4786, i64* %RSP.i, align 8
  %4787 = icmp ult i64 %4786, %4783
  %4788 = icmp ult i64 %4786, 176
  %4789 = or i1 %4787, %4788
  %4790 = zext i1 %4789 to i8
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4790, i8* %4791, align 1
  %4792 = trunc i64 %4786 to i32
  %4793 = and i32 %4792, 255
  %4794 = call i32 @llvm.ctpop.i32(i32 %4793)
  %4795 = trunc i32 %4794 to i8
  %4796 = and i8 %4795, 1
  %4797 = xor i8 %4796, 1
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4797, i8* %4798, align 1
  %4799 = xor i64 176, %4783
  %4800 = xor i64 %4799, %4786
  %4801 = lshr i64 %4800, 4
  %4802 = trunc i64 %4801 to i8
  %4803 = and i8 %4802, 1
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4803, i8* %4804, align 1
  %4805 = icmp eq i64 %4786, 0
  %4806 = zext i1 %4805 to i8
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4806, i8* %4807, align 1
  %4808 = lshr i64 %4786, 63
  %4809 = trunc i64 %4808 to i8
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4809, i8* %4810, align 1
  %4811 = lshr i64 %4783, 63
  %4812 = xor i64 %4808, %4811
  %4813 = add i64 %4812, %4808
  %4814 = icmp eq i64 %4813, 2
  %4815 = zext i1 %4814 to i8
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4815, i8* %4816, align 1
  store %struct.Memory* %loadMem_4015f4, %struct.Memory** %MEMORY
  %loadMem_4015fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4818 = getelementptr inbounds %struct.GPR, %struct.GPR* %4817, i32 0, i32 33
  %4819 = getelementptr inbounds %struct.Reg, %struct.Reg* %4818, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4819 to i64*
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4821 = getelementptr inbounds %struct.GPR, %struct.GPR* %4820, i32 0, i32 15
  %4822 = getelementptr inbounds %struct.Reg, %struct.Reg* %4821, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4822 to i64*
  %4823 = load i64, i64* %PC.i2
  %4824 = add i64 %4823, 1
  store i64 %4824, i64* %PC.i2
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4826 = load i64, i64* %4825, align 8
  %4827 = add i64 %4826, 8
  %4828 = inttoptr i64 %4826 to i64*
  %4829 = load i64, i64* %4828
  store i64 %4829, i64* %RBP.i3, align 8
  store i64 %4827, i64* %4825, align 8
  store %struct.Memory* %loadMem_4015fb, %struct.Memory** %MEMORY
  %loadMem_4015fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4831 = getelementptr inbounds %struct.GPR, %struct.GPR* %4830, i32 0, i32 33
  %4832 = getelementptr inbounds %struct.Reg, %struct.Reg* %4831, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4832 to i64*
  %4833 = load i64, i64* %PC.i1
  %4834 = add i64 %4833, 1
  store i64 %4834, i64* %PC.i1
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4837 = load i64, i64* %4836, align 8
  %4838 = inttoptr i64 %4837 to i64*
  %4839 = load i64, i64* %4838
  store i64 %4839, i64* %4835, align 8
  %4840 = add i64 %4837, 8
  store i64 %4840, i64* %4836, align 8
  store %struct.Memory* %loadMem_4015fc, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4015fc
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

define %struct.Memory* @routine_subq__0xb0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 176
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 176
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
  %23 = xor i64 176, %9
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

define %struct.Memory* @routine_movq__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xf__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 15, i64* %13
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

define %struct.Memory* @routine_movq_0x210__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 528
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x1e__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 30, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq_MINUS0x40__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  store i64 %19, i64* %RDI, align 8
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x3a98__0x198__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = sub i64 %14, 15000
  %16 = icmp ult i64 %14, 15000
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i64 %14, 15000
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i64 %14, 63
  %39 = xor i64 %35, %38
  %40 = add i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_40120e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x1a8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_addq_0x1c8__rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 456
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = add i64 %18, %12
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i64 %19, %12
  %21 = icmp ult i64 %19, %18
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %12
  %33 = xor i64 %32, %19
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %19, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %12, 63
  %45 = lshr i64 %18, 63
  %46 = xor i64 %41, %44
  %47 = xor i64 %41, %45
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_0x1a0__rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 416
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_401209(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x198__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_imulq_0x198__rsi____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 408
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sext i64 %12 to i128
  %20 = and i128 %19, -18446744073709551616
  %21 = sext i64 %18 to i128
  %22 = and i128 %21, -18446744073709551616
  %23 = zext i64 %12 to i128
  %24 = or i128 %20, %23
  %25 = zext i64 %18 to i128
  %26 = or i128 %22, %25
  %27 = mul i128 %26, %24
  %28 = trunc i128 %27 to i64
  store i64 %28, i64* %RDX, align 8
  %29 = sext i64 %28 to i128
  %30 = icmp ne i128 %29, %27
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %32, align 1
  %33 = trunc i128 %27 to i32
  %34 = and i32 %33, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %41, align 1
  %42 = lshr i64 %28, 63
  %43 = trunc i64 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %43, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cqto(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = ashr i64 %10, 63
  store i64 %11, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivq__rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sext i64 %9 to i128
  %17 = and i128 %16, -18446744073709551616
  %18 = zext i64 %15 to i128
  %19 = shl i128 %18, 64
  %20 = zext i64 %13 to i128
  %21 = or i128 %19, %20
  %22 = zext i64 %9 to i128
  %23 = or i128 %17, %22
  %24 = sdiv i128 %21, %23
  %25 = trunc i128 %24 to i64
  %26 = and i128 %24, 18446744073709551615
  %27 = sext i64 %25 to i128
  %28 = and i128 %27, -18446744073709551616
  %29 = or i128 %28, %26
  %30 = icmp eq i128 %24, %29
  br i1 %30, label %35, label %31

; <label>:31:                                     ; preds = %block_400488
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %33, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:35:                                     ; preds = %block_400488
  %36 = srem i128 %21, %23
  %37 = trunc i128 %36 to i64
  store i64 %25, i64* %12, align 8
  store i64 %37, i64* %14, align 8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %43, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %31, %35
  %44 = phi %struct.Memory* [ %34, %31 ], [ %2, %35 ]
  ret %struct.Memory* %44
}

define %struct.Memory* @routine_addq_0x1a8__rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 424
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = add i64 %18, %12
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i64 %19, %12
  %21 = icmp ult i64 %19, %18
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %12
  %33 = xor i64 %32, %19
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %19, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %12, 63
  %45 = lshr i64 %18, 63
  %46 = xor i64 %41, %44
  %47 = xor i64 %41, %45
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 1, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.resize_prob(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_401200(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xffffffffffffffff__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 -1, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4015f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.refresh_neighbour_lists(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40120e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x240__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x198__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x238__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 568
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
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

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %CL, align 1
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

define %struct.Memory* @routine_cmpq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0xa1__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 161
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40126c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0x58__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, -1
  %16 = icmp ult i32 %14, -1
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
  %25 = xor i32 %14, -1
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
  %38 = xor i32 %37, 1
  %39 = xor i32 %34, %37
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_sete__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0xa1__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 161
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %AL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = trunc i64 %14 to i32
  %18 = and i32 %17, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i8 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40127f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4012a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_401284(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1
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
  %25 = xor i64 1, %9
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

define %struct.Memory* @routine_addq__0xc0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = add i64 192, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 192
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
  %25 = xor i64 192, %9
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

define %struct.Memory* @routine_jmpq_.L_401243(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401484(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4012f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x48__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x40___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, -1
  %16 = icmp ult i32 %14, -1
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
  %25 = xor i32 %14, -1
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
  %38 = xor i32 %37, 1
  %39 = xor i32 %34, %37
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_401307(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401465(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x64__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq_0x38__rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq_MINUS0x68__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = add i64 %18, %12
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i64 %19, %12
  %21 = icmp ult i64 %19, %18
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %12
  %33 = xor i64 %32, %19
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %19, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %12, 63
  %45 = lshr i64 %18, 63
  %46 = xor i64 %41, %44
  %47 = xor i64 %41, %45
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 120
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

define %struct.Memory* @routine_je_.L_401460(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq_0x38__rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = add i64 %18, %12
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i64 %19, %12
  %21 = icmp ult i64 %19, %18
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %12
  %33 = xor i64 %32, %19
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %19, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %12, 63
  %45 = lshr i64 %18, 63
  %46 = xor i64 %41, %44
  %47 = xor i64 %41, %45
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_40139d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401352(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq___rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  %18 = sub i64 %12, %17
  store i64 %18, i64* %RAX, align 8
  %19 = icmp ugt i64 %17, %12
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i64 %18 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %17, %12
  %30 = xor i64 %29, %18
  %31 = lshr i64 %30, 4
  %32 = trunc i64 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i64 %18, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i64 %18, 63
  %39 = trunc i64 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %12, 63
  %42 = lshr i64 %17, 63
  %43 = xor i64 %42, %41
  %44 = xor i64 %38, %41
  %45 = add i64 %44, %43
  %46 = icmp eq i64 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq___rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  %18 = add i64 %17, %12
  store i64 %18, i64* %RAX, align 8
  %19 = icmp ult i64 %18, %12
  %20 = icmp ult i64 %18, %17
  %21 = or i1 %19, %20
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = trunc i64 %18 to i32
  %25 = and i32 %24, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %17, %12
  %32 = xor i64 %31, %18
  %33 = lshr i64 %32, 4
  %34 = trunc i64 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i64 %18, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i64 %18, 63
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i64 %12, 63
  %44 = lshr i64 %17, 63
  %45 = xor i64 %40, %43
  %46 = xor i64 %40, %44
  %47 = add i64 %45, %46
  %48 = icmp eq i64 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 96
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

define %struct.Memory* @routine_jge_.L_40144c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq_0x1c0__rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 448
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40140d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x80__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x58__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x60__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.insert_new_arc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1
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
  %25 = xor i64 1, %9
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

define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401447(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpq_MINUS0x60__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_401442(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x80__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.replace_weaker_arc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40144c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4012ae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 40
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

define %struct.Memory* @routine_je_.L_4015e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_shlq__0x6___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 5
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

define %struct.Memory* @routine_addq_0x240__rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 576
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = add i64 %18, %12
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i64 %19, %12
  %21 = icmp ult i64 %19, %18
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %12
  %33 = xor i64 %32, %19
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %19, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %12, 63
  %45 = lshr i64 %18, 63
  %46 = xor i64 %41, %44
  %47 = xor i64 %41, %45
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x240__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 576
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_401518(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4014da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq_MINUS0x88__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_401513(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x0__0x30__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4015a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40151d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_40159e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x20__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x40__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x28__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x40__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x1a8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 424
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq_0x1b8__rcx____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 440
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = add i64 %18, %12
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i64 %19, %12
  %21 = icmp ult i64 %19, %18
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %12
  %33 = xor i64 %32, %19
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %19, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %12, 63
  %45 = lshr i64 %18, 63
  %46 = xor i64 %41, %44
  %47 = xor i64 %41, %45
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x1b8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 440
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x1c0__rcx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = sub i64 %12, %13
  store i64 %16, i64* %RDX, align 8
  %17 = icmp ult i64 %12, %13
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 %13, %12
  %28 = xor i64 %27, %16
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i64 %16, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %16, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %12, 63
  %40 = lshr i64 %13, 63
  %41 = xor i64 %40, %39
  %42 = xor i64 %36, %39
  %43 = add i64 %42, %41
  %44 = icmp eq i64 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__0x1c0__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 448
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_addq__0xb0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 176, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 176
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
  %25 = xor i64 176, %9
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
