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
%G__0x459d41_type = type <{ [8 x i8] }>
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
@G__0x459d41 = global %G__0x459d41_type zeroinitializer

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

declare %struct.Memory* @sub_445400.sre_random(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @QRNAShuffle(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_43e240 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_43e240, %struct.Memory** %MEMORY
  %loadMem_43e241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i7 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i7
  %27 = load i64, i64* %PC.i6
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i6
  store i64 %26, i64* %RBP.i8, align 8
  store %struct.Memory* %loadMem_43e241, %struct.Memory** %MEMORY
  %loadMem_43e244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i16 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i16
  %36 = load i64, i64* %PC.i15
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i15
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i16, align 8
  %39 = icmp ult i64 %35, 128
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
  %49 = xor i64 128, %35
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
  store %struct.Memory* %loadMem_43e244, %struct.Memory** %MEMORY
  %loadMem_43e24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i25 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i26
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i25
  %79 = load i64, i64* %PC.i24
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i24
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_43e24b, %struct.Memory** %MEMORY
  %loadMem_43e24f = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i1295 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RSI.i1296 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i1297 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i1297
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %RSI.i1296
  %94 = load i64, i64* %PC.i1295
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i1295
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  store %struct.Memory* %loadMem_43e24f, %struct.Memory** %MEMORY
  %loadMem_43e253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i1318 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RDX.i1319 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i1320 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i1320
  %107 = sub i64 %106, 24
  %108 = load i64, i64* %RDX.i1319
  %109 = load i64, i64* %PC.i1318
  %110 = add i64 %109, 4
  store i64 %110, i64* %PC.i1318
  %111 = inttoptr i64 %107 to i64*
  store i64 %108, i64* %111
  store %struct.Memory* %loadMem_43e253, %struct.Memory** %MEMORY
  %loadMem_43e257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i1338 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %RCX.i1339 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 15
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RBP.i1340 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %RBP.i1340
  %122 = sub i64 %121, 32
  %123 = load i64, i64* %RCX.i1339
  %124 = load i64, i64* %PC.i1338
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC.i1338
  %126 = inttoptr i64 %122 to i64*
  store i64 %123, i64* %126
  store %struct.Memory* %loadMem_43e257, %struct.Memory** %MEMORY
  %loadMem_43e25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 33
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %PC.i1352 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RCX.i1353 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 15
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RBP.i1354 = bitcast %union.anon* %135 to i64*
  %136 = load i64, i64* %RBP.i1354
  %137 = sub i64 %136, 8
  %138 = load i64, i64* %PC.i1352
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC.i1352
  %140 = inttoptr i64 %137 to i64*
  %141 = load i64, i64* %140
  store i64 %141, i64* %RCX.i1353, align 8
  store %struct.Memory* %loadMem_43e25b, %struct.Memory** %MEMORY
  %loadMem_43e25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i1349 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RCX.i1350 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 15
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RBP.i1351 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %RCX.i1350
  %152 = load i64, i64* %RBP.i1351
  %153 = sub i64 %152, 24
  %154 = load i64, i64* %PC.i1349
  %155 = add i64 %154, 4
  store i64 %155, i64* %PC.i1349
  %156 = inttoptr i64 %153 to i64*
  %157 = load i64, i64* %156
  %158 = sub i64 %151, %157
  %159 = icmp ugt i64 %157, %151
  %160 = zext i1 %159 to i8
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %160, i8* %161, align 1
  %162 = trunc i64 %158 to i32
  %163 = and i32 %162, 255
  %164 = call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %167, i8* %168, align 1
  %169 = xor i64 %157, %151
  %170 = xor i64 %169, %158
  %171 = lshr i64 %170, 4
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 1
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %173, i8* %174, align 1
  %175 = icmp eq i64 %158, 0
  %176 = zext i1 %175 to i8
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %176, i8* %177, align 1
  %178 = lshr i64 %158, 63
  %179 = trunc i64 %178 to i8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %179, i8* %180, align 1
  %181 = lshr i64 %151, 63
  %182 = lshr i64 %157, 63
  %183 = xor i64 %182, %181
  %184 = xor i64 %178, %181
  %185 = add i64 %184, %183
  %186 = icmp eq i64 %185, 2
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %187, i8* %188, align 1
  store %struct.Memory* %loadMem_43e25f, %struct.Memory** %MEMORY
  %loadMem_43e263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 33
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %PC.i1348 = bitcast %union.anon* %191 to i64*
  %192 = load i64, i64* %PC.i1348
  %193 = add i64 %192, 23
  %194 = load i64, i64* %PC.i1348
  %195 = add i64 %194, 6
  %196 = load i64, i64* %PC.i1348
  %197 = add i64 %196, 6
  store i64 %197, i64* %PC.i1348
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %199 = load i8, i8* %198, align 1
  store i8 %199, i8* %BRANCH_TAKEN, align 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %201 = icmp ne i8 %199, 0
  %202 = select i1 %201, i64 %193, i64 %195
  store i64 %202, i64* %200, align 8
  store %struct.Memory* %loadMem_43e263, %struct.Memory** %MEMORY
  %loadBr_43e263 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e263 = icmp eq i8 %loadBr_43e263, 1
  br i1 %cmpBr_43e263, label %block_.L_43e27a, label %block_43e269

block_43e269:                                     ; preds = %entry
  %loadMem_43e269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i1345 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 11
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RDI.i1346 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RBP.i1347 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RBP.i1347
  %213 = sub i64 %212, 8
  %214 = load i64, i64* %PC.i1345
  %215 = add i64 %214, 4
  store i64 %215, i64* %PC.i1345
  %216 = inttoptr i64 %213 to i64*
  %217 = load i64, i64* %216
  store i64 %217, i64* %RDI.i1346, align 8
  store %struct.Memory* %loadMem_43e269, %struct.Memory** %MEMORY
  %loadMem_43e26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i1342 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 9
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RSI.i1343 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 15
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RBP.i1344 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %RBP.i1344
  %228 = sub i64 %227, 24
  %229 = load i64, i64* %PC.i1342
  %230 = add i64 %229, 4
  store i64 %230, i64* %PC.i1342
  %231 = inttoptr i64 %228 to i64*
  %232 = load i64, i64* %231
  store i64 %232, i64* %RSI.i1343, align 8
  store %struct.Memory* %loadMem_43e26d, %struct.Memory** %MEMORY
  %loadMem1_43e271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i1341 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %PC.i1341
  %237 = add i64 %236, -249489
  %238 = load i64, i64* %PC.i1341
  %239 = add i64 %238, 5
  %240 = load i64, i64* %PC.i1341
  %241 = add i64 %240, 5
  store i64 %241, i64* %PC.i1341
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = add i64 %243, -8
  %245 = inttoptr i64 %244 to i64*
  store i64 %239, i64* %245
  store i64 %244, i64* %242, align 8
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %237, i64* %246, align 8
  store %struct.Memory* %loadMem1_43e271, %struct.Memory** %MEMORY
  %loadMem2_43e271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e271 = load i64, i64* %3
  %247 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %loadMem2_43e271)
  store %struct.Memory* %247, %struct.Memory** %MEMORY
  %loadMem_43e276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i1335 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RAX.i1336 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 15
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %RBP.i1337 = bitcast %union.anon* %256 to i64*
  %257 = load i64, i64* %RBP.i1337
  %258 = sub i64 %257, 104
  %259 = load i64, i64* %RAX.i1336
  %260 = load i64, i64* %PC.i1335
  %261 = add i64 %260, 4
  store i64 %261, i64* %PC.i1335
  %262 = inttoptr i64 %258 to i64*
  store i64 %259, i64* %262
  store %struct.Memory* %loadMem_43e276, %struct.Memory** %MEMORY
  br label %block_.L_43e27a

block_.L_43e27a:                                  ; preds = %block_43e269, %entry
  %loadMem_43e27a = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i1332 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RAX.i1333 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i1334 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %RBP.i1334
  %273 = sub i64 %272, 16
  %274 = load i64, i64* %PC.i1332
  %275 = add i64 %274, 4
  store i64 %275, i64* %PC.i1332
  %276 = inttoptr i64 %273 to i64*
  %277 = load i64, i64* %276
  store i64 %277, i64* %RAX.i1333, align 8
  store %struct.Memory* %loadMem_43e27a, %struct.Memory** %MEMORY
  %loadMem_43e27e = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i1329 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %RAX.i1330 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 15
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %RBP.i1331 = bitcast %union.anon* %286 to i64*
  %287 = load i64, i64* %RAX.i1330
  %288 = load i64, i64* %RBP.i1331
  %289 = sub i64 %288, 32
  %290 = load i64, i64* %PC.i1329
  %291 = add i64 %290, 4
  store i64 %291, i64* %PC.i1329
  %292 = inttoptr i64 %289 to i64*
  %293 = load i64, i64* %292
  %294 = sub i64 %287, %293
  %295 = icmp ugt i64 %293, %287
  %296 = zext i1 %295 to i8
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %296, i8* %297, align 1
  %298 = trunc i64 %294 to i32
  %299 = and i32 %298, 255
  %300 = call i32 @llvm.ctpop.i32(i32 %299)
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %303, i8* %304, align 1
  %305 = xor i64 %293, %287
  %306 = xor i64 %305, %294
  %307 = lshr i64 %306, 4
  %308 = trunc i64 %307 to i8
  %309 = and i8 %308, 1
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %309, i8* %310, align 1
  %311 = icmp eq i64 %294, 0
  %312 = zext i1 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %312, i8* %313, align 1
  %314 = lshr i64 %294, 63
  %315 = trunc i64 %314 to i8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %315, i8* %316, align 1
  %317 = lshr i64 %287, 63
  %318 = lshr i64 %293, 63
  %319 = xor i64 %318, %317
  %320 = xor i64 %314, %317
  %321 = add i64 %320, %319
  %322 = icmp eq i64 %321, 2
  %323 = zext i1 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %323, i8* %324, align 1
  store %struct.Memory* %loadMem_43e27e, %struct.Memory** %MEMORY
  %loadMem_43e282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i1328 = bitcast %union.anon* %327 to i64*
  %328 = load i64, i64* %PC.i1328
  %329 = add i64 %328, 23
  %330 = load i64, i64* %PC.i1328
  %331 = add i64 %330, 6
  %332 = load i64, i64* %PC.i1328
  %333 = add i64 %332, 6
  store i64 %333, i64* %PC.i1328
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %335 = load i8, i8* %334, align 1
  store i8 %335, i8* %BRANCH_TAKEN, align 1
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %337 = icmp ne i8 %335, 0
  %338 = select i1 %337, i64 %329, i64 %331
  store i64 %338, i64* %336, align 8
  store %struct.Memory* %loadMem_43e282, %struct.Memory** %MEMORY
  %loadBr_43e282 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e282 = icmp eq i8 %loadBr_43e282, 1
  br i1 %cmpBr_43e282, label %block_.L_43e299, label %block_43e288

block_43e288:                                     ; preds = %block_.L_43e27a
  %loadMem_43e288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 33
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %PC.i1325 = bitcast %union.anon* %341 to i64*
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 11
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %RDI.i1326 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 15
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %RBP.i1327 = bitcast %union.anon* %347 to i64*
  %348 = load i64, i64* %RBP.i1327
  %349 = sub i64 %348, 16
  %350 = load i64, i64* %PC.i1325
  %351 = add i64 %350, 4
  store i64 %351, i64* %PC.i1325
  %352 = inttoptr i64 %349 to i64*
  %353 = load i64, i64* %352
  store i64 %353, i64* %RDI.i1326, align 8
  store %struct.Memory* %loadMem_43e288, %struct.Memory** %MEMORY
  %loadMem_43e28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i1322 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 9
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RSI.i1323 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 15
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %RBP.i1324 = bitcast %union.anon* %362 to i64*
  %363 = load i64, i64* %RBP.i1324
  %364 = sub i64 %363, 32
  %365 = load i64, i64* %PC.i1322
  %366 = add i64 %365, 4
  store i64 %366, i64* %PC.i1322
  %367 = inttoptr i64 %364 to i64*
  %368 = load i64, i64* %367
  store i64 %368, i64* %RSI.i1323, align 8
  store %struct.Memory* %loadMem_43e28c, %struct.Memory** %MEMORY
  %loadMem1_43e290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 33
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %PC.i1321 = bitcast %union.anon* %371 to i64*
  %372 = load i64, i64* %PC.i1321
  %373 = add i64 %372, -249520
  %374 = load i64, i64* %PC.i1321
  %375 = add i64 %374, 5
  %376 = load i64, i64* %PC.i1321
  %377 = add i64 %376, 5
  store i64 %377, i64* %PC.i1321
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = add i64 %379, -8
  %381 = inttoptr i64 %380 to i64*
  store i64 %375, i64* %381
  store i64 %380, i64* %378, align 8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %373, i64* %382, align 8
  store %struct.Memory* %loadMem1_43e290, %struct.Memory** %MEMORY
  %loadMem2_43e290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e290 = load i64, i64* %3
  %383 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @strcpy to i64), %struct.Memory* %loadMem2_43e290)
  store %struct.Memory* %383, %struct.Memory** %MEMORY
  %loadMem_43e295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i1315 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %RAX.i1316 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 15
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RBP.i1317 = bitcast %union.anon* %392 to i64*
  %393 = load i64, i64* %RBP.i1317
  %394 = sub i64 %393, 112
  %395 = load i64, i64* %RAX.i1316
  %396 = load i64, i64* %PC.i1315
  %397 = add i64 %396, 4
  store i64 %397, i64* %PC.i1315
  %398 = inttoptr i64 %394 to i64*
  store i64 %395, i64* %398
  store %struct.Memory* %loadMem_43e295, %struct.Memory** %MEMORY
  br label %block_.L_43e299

block_.L_43e299:                                  ; preds = %block_43e288, %block_.L_43e27a
  %loadMem_43e299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i1313 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 11
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %RDI.i1314 = bitcast %union.anon* %404 to i64*
  %405 = load i64, i64* %PC.i1313
  %406 = add i64 %405, 10
  store i64 %406, i64* %PC.i1313
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI.i1314, align 8
  store %struct.Memory* %loadMem_43e299, %struct.Memory** %MEMORY
  %loadMem_43e2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 33
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %PC.i1311 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 9
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RSI.i1312 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %PC.i1311
  %414 = add i64 %413, 5
  store i64 %414, i64* %PC.i1311
  store i64 572, i64* %RSI.i1312, align 8
  store %struct.Memory* %loadMem_43e2a3, %struct.Memory** %MEMORY
  %loadMem_43e2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i1308 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %RAX.i1309 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 15
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %RBP.i1310 = bitcast %union.anon* %423 to i64*
  %424 = load i64, i64* %RBP.i1310
  %425 = sub i64 %424, 24
  %426 = load i64, i64* %PC.i1308
  %427 = add i64 %426, 4
  store i64 %427, i64* %PC.i1308
  %428 = inttoptr i64 %425 to i64*
  %429 = load i64, i64* %428
  store i64 %429, i64* %RAX.i1309, align 8
  store %struct.Memory* %loadMem_43e2a8, %struct.Memory** %MEMORY
  %loadMem_43e2ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 33
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %PC.i1305 = bitcast %union.anon* %432 to i64*
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 11
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %RDI.i1306 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 15
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RBP.i1307 = bitcast %union.anon* %438 to i64*
  %439 = load i64, i64* %RBP.i1307
  %440 = sub i64 %439, 120
  %441 = load i64, i64* %RDI.i1306
  %442 = load i64, i64* %PC.i1305
  %443 = add i64 %442, 4
  store i64 %443, i64* %PC.i1305
  %444 = inttoptr i64 %440 to i64*
  store i64 %441, i64* %444
  store %struct.Memory* %loadMem_43e2ac, %struct.Memory** %MEMORY
  %loadMem_43e2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 33
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %PC.i1302 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %RAX.i1303 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 11
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RDI.i1304 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %RAX.i1303
  %455 = load i64, i64* %PC.i1302
  %456 = add i64 %455, 3
  store i64 %456, i64* %PC.i1302
  store i64 %454, i64* %RDI.i1304, align 8
  store %struct.Memory* %loadMem_43e2b0, %struct.Memory** %MEMORY
  %loadMem_43e2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 33
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %PC.i1299 = bitcast %union.anon* %459 to i64*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 9
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %ESI.i1300 = bitcast %union.anon* %462 to i32*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 15
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %RBP.i1301 = bitcast %union.anon* %465 to i64*
  %466 = load i64, i64* %RBP.i1301
  %467 = sub i64 %466, 124
  %468 = load i32, i32* %ESI.i1300
  %469 = zext i32 %468 to i64
  %470 = load i64, i64* %PC.i1299
  %471 = add i64 %470, 3
  store i64 %471, i64* %PC.i1299
  %472 = inttoptr i64 %467 to i32*
  store i32 %468, i32* %472
  store %struct.Memory* %loadMem_43e2b3, %struct.Memory** %MEMORY
  %loadMem1_43e2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 33
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %PC.i1298 = bitcast %union.anon* %475 to i64*
  %476 = load i64, i64* %PC.i1298
  %477 = add i64 %476, -249430
  %478 = load i64, i64* %PC.i1298
  %479 = add i64 %478, 5
  %480 = load i64, i64* %PC.i1298
  %481 = add i64 %480, 5
  store i64 %481, i64* %PC.i1298
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = add i64 %483, -8
  %485 = inttoptr i64 %484 to i64*
  store i64 %479, i64* %485
  store i64 %484, i64* %482, align 8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %477, i64* %486, align 8
  store %struct.Memory* %loadMem1_43e2b6, %struct.Memory** %MEMORY
  %loadMem2_43e2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e2b6 = load i64, i64* %3
  %487 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_43e2b6)
  store %struct.Memory* %487, %struct.Memory** %MEMORY
  %loadMem_43e2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 33
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %PC.i1292 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %EAX.i1293 = bitcast %union.anon* %493 to i32*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 9
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RSI.i1294 = bitcast %union.anon* %496 to i64*
  %497 = load i32, i32* %EAX.i1293
  %498 = zext i32 %497 to i64
  %499 = load i64, i64* %PC.i1292
  %500 = add i64 %499, 2
  store i64 %500, i64* %PC.i1292
  %501 = and i64 %498, 4294967295
  store i64 %501, i64* %RSI.i1294, align 8
  store %struct.Memory* %loadMem_43e2bb, %struct.Memory** %MEMORY
  %loadMem_43e2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 33
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %PC.i1290 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 9
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %507 to i32*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 15
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RBP.i1291 = bitcast %union.anon* %510 to i64*
  %511 = load i64, i64* %RBP.i1291
  %512 = sub i64 %511, 36
  %513 = load i32, i32* %ESI.i
  %514 = zext i32 %513 to i64
  %515 = load i64, i64* %PC.i1290
  %516 = add i64 %515, 3
  store i64 %516, i64* %PC.i1290
  %517 = inttoptr i64 %512 to i32*
  store i32 %513, i32* %517
  store %struct.Memory* %loadMem_43e2bd, %struct.Memory** %MEMORY
  %loadMem_43e2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 33
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %PC.i1287 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RAX.i1288 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 15
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %RBP.i1289 = bitcast %union.anon* %526 to i64*
  %527 = load i64, i64* %RBP.i1289
  %528 = sub i64 %527, 36
  %529 = load i64, i64* %PC.i1287
  %530 = add i64 %529, 4
  store i64 %530, i64* %PC.i1287
  %531 = inttoptr i64 %528 to i32*
  %532 = load i32, i32* %531
  %533 = sext i32 %532 to i64
  store i64 %533, i64* %RAX.i1288, align 8
  store %struct.Memory* %loadMem_43e2c0, %struct.Memory** %MEMORY
  %loadMem_43e2c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 33
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %PC.i1285 = bitcast %union.anon* %536 to i64*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %RAX.i1286 = bitcast %union.anon* %539 to i64*
  %540 = load i64, i64* %RAX.i1286
  %541 = load i64, i64* %PC.i1285
  %542 = add i64 %541, 4
  store i64 %542, i64* %PC.i1285
  %543 = shl i64 %540, 1
  %544 = icmp slt i64 %543, 0
  %545 = shl i64 %543, 1
  store i64 %545, i64* %RAX.i1286, align 8
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %547 = zext i1 %544 to i8
  store i8 %547, i8* %546, align 1
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %549 = trunc i64 %545 to i32
  %550 = and i32 %549, 254
  %551 = call i32 @llvm.ctpop.i32(i32 %550)
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  store i8 %554, i8* %548, align 1
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %555, align 1
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %557 = icmp eq i64 %545, 0
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %556, align 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %560 = lshr i64 %545, 63
  %561 = trunc i64 %560 to i8
  store i8 %561, i8* %559, align 1
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %562, align 1
  store %struct.Memory* %loadMem_43e2c4, %struct.Memory** %MEMORY
  %loadMem_43e2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 33
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %PC.i1282 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 11
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %RDI.i1283 = bitcast %union.anon* %568 to i64*
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 15
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %RBP.i1284 = bitcast %union.anon* %571 to i64*
  %572 = load i64, i64* %RBP.i1284
  %573 = sub i64 %572, 120
  %574 = load i64, i64* %PC.i1282
  %575 = add i64 %574, 4
  store i64 %575, i64* %PC.i1282
  %576 = inttoptr i64 %573 to i64*
  %577 = load i64, i64* %576
  store i64 %577, i64* %RDI.i1283, align 8
  store %struct.Memory* %loadMem_43e2c8, %struct.Memory** %MEMORY
  %loadMem_43e2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i1279 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 9
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RSI.i1280 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 15
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RBP.i1281 = bitcast %union.anon* %586 to i64*
  %587 = load i64, i64* %RBP.i1281
  %588 = sub i64 %587, 124
  %589 = load i64, i64* %PC.i1279
  %590 = add i64 %589, 3
  store i64 %590, i64* %PC.i1279
  %591 = inttoptr i64 %588 to i32*
  %592 = load i32, i32* %591
  %593 = zext i32 %592 to i64
  store i64 %593, i64* %RSI.i1280, align 8
  store %struct.Memory* %loadMem_43e2cc, %struct.Memory** %MEMORY
  %loadMem_43e2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 33
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %PC.i1276 = bitcast %union.anon* %596 to i64*
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 1
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %RAX.i1277 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 7
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RDX.i1278 = bitcast %union.anon* %602 to i64*
  %603 = load i64, i64* %RAX.i1277
  %604 = load i64, i64* %PC.i1276
  %605 = add i64 %604, 3
  store i64 %605, i64* %PC.i1276
  store i64 %603, i64* %RDX.i1278, align 8
  store %struct.Memory* %loadMem_43e2cf, %struct.Memory** %MEMORY
  %loadMem1_43e2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i1275 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %PC.i1275
  %610 = add i64 %609, 32142
  %611 = load i64, i64* %PC.i1275
  %612 = add i64 %611, 5
  %613 = load i64, i64* %PC.i1275
  %614 = add i64 %613, 5
  store i64 %614, i64* %PC.i1275
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = add i64 %616, -8
  %618 = inttoptr i64 %617 to i64*
  store i64 %612, i64* %618
  store i64 %617, i64* %615, align 8
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %610, i64* %619, align 8
  store %struct.Memory* %loadMem1_43e2d2, %struct.Memory** %MEMORY
  %loadMem2_43e2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e2d2 = load i64, i64* %3
  %call2_43e2d2 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_43e2d2, %struct.Memory* %loadMem2_43e2d2)
  store %struct.Memory* %call2_43e2d2, %struct.Memory** %MEMORY
  %loadMem_43e2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 33
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %PC.i1273 = bitcast %union.anon* %622 to i64*
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 11
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %RDI.i1274 = bitcast %union.anon* %625 to i64*
  %626 = load i64, i64* %PC.i1273
  %627 = add i64 %626, 10
  store i64 %627, i64* %PC.i1273
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI.i1274, align 8
  store %struct.Memory* %loadMem_43e2d7, %struct.Memory** %MEMORY
  %loadMem_43e2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i1271 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 9
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RSI.i1272 = bitcast %union.anon* %633 to i64*
  %634 = load i64, i64* %PC.i1271
  %635 = add i64 %634, 5
  store i64 %635, i64* %PC.i1271
  store i64 573, i64* %RSI.i1272, align 8
  store %struct.Memory* %loadMem_43e2e1, %struct.Memory** %MEMORY
  %loadMem_43e2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i1268 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 1
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RAX.i1269 = bitcast %union.anon* %641 to i64*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 15
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %RBP.i1270 = bitcast %union.anon* %644 to i64*
  %645 = load i64, i64* %RBP.i1270
  %646 = sub i64 %645, 48
  %647 = load i64, i64* %RAX.i1269
  %648 = load i64, i64* %PC.i1268
  %649 = add i64 %648, 4
  store i64 %649, i64* %PC.i1268
  %650 = inttoptr i64 %646 to i64*
  store i64 %647, i64* %650
  store %struct.Memory* %loadMem_43e2e6, %struct.Memory** %MEMORY
  %loadMem_43e2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 33
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %PC.i1265 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 1
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %RAX.i1266 = bitcast %union.anon* %656 to i64*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 15
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %RBP.i1267 = bitcast %union.anon* %659 to i64*
  %660 = load i64, i64* %RBP.i1267
  %661 = sub i64 %660, 36
  %662 = load i64, i64* %PC.i1265
  %663 = add i64 %662, 4
  store i64 %663, i64* %PC.i1265
  %664 = inttoptr i64 %661 to i32*
  %665 = load i32, i32* %664
  %666 = sext i32 %665 to i64
  store i64 %666, i64* %RAX.i1266, align 8
  store %struct.Memory* %loadMem_43e2ea, %struct.Memory** %MEMORY
  %loadMem_43e2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i1263 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 1
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RAX.i1264 = bitcast %union.anon* %672 to i64*
  %673 = load i64, i64* %RAX.i1264
  %674 = load i64, i64* %PC.i1263
  %675 = add i64 %674, 4
  store i64 %675, i64* %PC.i1263
  %676 = shl i64 %673, 1
  %677 = icmp slt i64 %676, 0
  %678 = shl i64 %676, 1
  store i64 %678, i64* %RAX.i1264, align 8
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %680 = zext i1 %677 to i8
  store i8 %680, i8* %679, align 1
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %682 = trunc i64 %678 to i32
  %683 = and i32 %682, 254
  %684 = call i32 @llvm.ctpop.i32(i32 %683)
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  %687 = xor i8 %686, 1
  store i8 %687, i8* %681, align 1
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %688, align 1
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %690 = icmp eq i64 %678, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %689, align 1
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %693 = lshr i64 %678, 63
  %694 = trunc i64 %693 to i8
  store i8 %694, i8* %692, align 1
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %695, align 1
  store %struct.Memory* %loadMem_43e2ee, %struct.Memory** %MEMORY
  %loadMem_43e2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 33
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %PC.i1260 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 1
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %RAX.i1261 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 7
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RDX.i1262 = bitcast %union.anon* %704 to i64*
  %705 = load i64, i64* %RAX.i1261
  %706 = load i64, i64* %PC.i1260
  %707 = add i64 %706, 3
  store i64 %707, i64* %PC.i1260
  store i64 %705, i64* %RDX.i1262, align 8
  store %struct.Memory* %loadMem_43e2f2, %struct.Memory** %MEMORY
  %loadMem1_43e2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 33
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %PC.i1259 = bitcast %union.anon* %710 to i64*
  %711 = load i64, i64* %PC.i1259
  %712 = add i64 %711, 32107
  %713 = load i64, i64* %PC.i1259
  %714 = add i64 %713, 5
  %715 = load i64, i64* %PC.i1259
  %716 = add i64 %715, 5
  store i64 %716, i64* %PC.i1259
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %718 = load i64, i64* %717, align 8
  %719 = add i64 %718, -8
  %720 = inttoptr i64 %719 to i64*
  store i64 %714, i64* %720
  store i64 %719, i64* %717, align 8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %712, i64* %721, align 8
  store %struct.Memory* %loadMem1_43e2f5, %struct.Memory** %MEMORY
  %loadMem2_43e2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e2f5 = load i64, i64* %3
  %call2_43e2f5 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_43e2f5, %struct.Memory* %loadMem2_43e2f5)
  store %struct.Memory* %call2_43e2f5, %struct.Memory** %MEMORY
  %loadMem_43e2fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 33
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %PC.i1257 = bitcast %union.anon* %724 to i64*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 11
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %RDI.i1258 = bitcast %union.anon* %727 to i64*
  %728 = load i64, i64* %PC.i1257
  %729 = add i64 %728, 10
  store i64 %729, i64* %PC.i1257
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI.i1258, align 8
  store %struct.Memory* %loadMem_43e2fa, %struct.Memory** %MEMORY
  %loadMem_43e304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i1255 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 9
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %RSI.i1256 = bitcast %union.anon* %735 to i64*
  %736 = load i64, i64* %PC.i1255
  %737 = add i64 %736, 5
  store i64 %737, i64* %PC.i1255
  store i64 574, i64* %RSI.i1256, align 8
  store %struct.Memory* %loadMem_43e304, %struct.Memory** %MEMORY
  %loadMem_43e309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i1252 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 1
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RAX.i1253 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 15
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RBP.i1254 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %RBP.i1254
  %748 = sub i64 %747, 56
  %749 = load i64, i64* %RAX.i1253
  %750 = load i64, i64* %PC.i1252
  %751 = add i64 %750, 4
  store i64 %751, i64* %PC.i1252
  %752 = inttoptr i64 %748 to i64*
  store i64 %749, i64* %752
  store %struct.Memory* %loadMem_43e309, %struct.Memory** %MEMORY
  %loadMem_43e30d = load %struct.Memory*, %struct.Memory** %MEMORY
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 33
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %PC.i1249 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 1
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RAX.i1250 = bitcast %union.anon* %758 to i64*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 15
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %RBP.i1251 = bitcast %union.anon* %761 to i64*
  %762 = load i64, i64* %RBP.i1251
  %763 = sub i64 %762, 36
  %764 = load i64, i64* %PC.i1249
  %765 = add i64 %764, 4
  store i64 %765, i64* %PC.i1249
  %766 = inttoptr i64 %763 to i32*
  %767 = load i32, i32* %766
  %768 = sext i32 %767 to i64
  store i64 %768, i64* %RAX.i1250, align 8
  store %struct.Memory* %loadMem_43e30d, %struct.Memory** %MEMORY
  %loadMem_43e311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i1247 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 1
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %RAX.i1248 = bitcast %union.anon* %774 to i64*
  %775 = load i64, i64* %RAX.i1248
  %776 = load i64, i64* %PC.i1247
  %777 = add i64 %776, 4
  store i64 %777, i64* %PC.i1247
  %778 = shl i64 %775, 1
  %779 = icmp slt i64 %778, 0
  %780 = shl i64 %778, 1
  store i64 %780, i64* %RAX.i1248, align 8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %782 = zext i1 %779 to i8
  store i8 %782, i8* %781, align 1
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %784 = trunc i64 %780 to i32
  %785 = and i32 %784, 254
  %786 = call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %783, align 1
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %790, align 1
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %792 = icmp eq i64 %780, 0
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %791, align 1
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %795 = lshr i64 %780, 63
  %796 = trunc i64 %795 to i8
  store i8 %796, i8* %794, align 1
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %797, align 1
  store %struct.Memory* %loadMem_43e311, %struct.Memory** %MEMORY
  %loadMem_43e315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i1244 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 1
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RAX.i1245 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 7
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %RDX.i1246 = bitcast %union.anon* %806 to i64*
  %807 = load i64, i64* %RAX.i1245
  %808 = load i64, i64* %PC.i1244
  %809 = add i64 %808, 3
  store i64 %809, i64* %PC.i1244
  store i64 %807, i64* %RDX.i1246, align 8
  store %struct.Memory* %loadMem_43e315, %struct.Memory** %MEMORY
  %loadMem1_43e318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 33
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %PC.i1243 = bitcast %union.anon* %812 to i64*
  %813 = load i64, i64* %PC.i1243
  %814 = add i64 %813, 32072
  %815 = load i64, i64* %PC.i1243
  %816 = add i64 %815, 5
  %817 = load i64, i64* %PC.i1243
  %818 = add i64 %817, 5
  store i64 %818, i64* %PC.i1243
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %820 = load i64, i64* %819, align 8
  %821 = add i64 %820, -8
  %822 = inttoptr i64 %821 to i64*
  store i64 %816, i64* %822
  store i64 %821, i64* %819, align 8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %814, i64* %823, align 8
  store %struct.Memory* %loadMem1_43e318, %struct.Memory** %MEMORY
  %loadMem2_43e318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e318 = load i64, i64* %3
  %call2_43e318 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_43e318, %struct.Memory* %loadMem2_43e318)
  store %struct.Memory* %call2_43e318, %struct.Memory** %MEMORY
  %loadMem_43e31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %PC.i1240 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 1
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RAX.i1241 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 15
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %RBP.i1242 = bitcast %union.anon* %832 to i64*
  %833 = load i64, i64* %RBP.i1242
  %834 = sub i64 %833, 64
  %835 = load i64, i64* %RAX.i1241
  %836 = load i64, i64* %PC.i1240
  %837 = add i64 %836, 4
  store i64 %837, i64* %PC.i1240
  %838 = inttoptr i64 %834 to i64*
  store i64 %835, i64* %838
  store %struct.Memory* %loadMem_43e31d, %struct.Memory** %MEMORY
  %loadMem_43e321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 33
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %PC.i1238 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 15
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RBP.i1239 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %RBP.i1239
  %846 = sub i64 %845, 76
  %847 = load i64, i64* %PC.i1238
  %848 = add i64 %847, 7
  store i64 %848, i64* %PC.i1238
  %849 = inttoptr i64 %846 to i32*
  store i32 0, i32* %849
  store %struct.Memory* %loadMem_43e321, %struct.Memory** %MEMORY
  %loadMem_43e328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i1236 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 15
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %RBP.i1237 = bitcast %union.anon* %855 to i64*
  %856 = load i64, i64* %RBP.i1237
  %857 = sub i64 %856, 72
  %858 = load i64, i64* %PC.i1236
  %859 = add i64 %858, 7
  store i64 %859, i64* %PC.i1236
  %860 = inttoptr i64 %857 to i32*
  store i32 0, i32* %860
  store %struct.Memory* %loadMem_43e328, %struct.Memory** %MEMORY
  %loadMem_43e32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 33
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %PC.i1234 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 15
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %RBP.i1235 = bitcast %union.anon* %866 to i64*
  %867 = load i64, i64* %RBP.i1235
  %868 = sub i64 %867, 68
  %869 = load i64, i64* %PC.i1234
  %870 = add i64 %869, 7
  store i64 %870, i64* %PC.i1234
  %871 = inttoptr i64 %868 to i32*
  store i32 0, i32* %871
  store %struct.Memory* %loadMem_43e32f, %struct.Memory** %MEMORY
  %loadMem_43e336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 33
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %PC.i1232 = bitcast %union.anon* %874 to i64*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 15
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RBP.i1233 = bitcast %union.anon* %877 to i64*
  %878 = load i64, i64* %RBP.i1233
  %879 = sub i64 %878, 80
  %880 = load i64, i64* %PC.i1232
  %881 = add i64 %880, 7
  store i64 %881, i64* %PC.i1232
  %882 = inttoptr i64 %879 to i32*
  store i32 0, i32* %882
  store %struct.Memory* %loadMem_43e336, %struct.Memory** %MEMORY
  br label %block_.L_43e33d

block_.L_43e33d:                                  ; preds = %block_.L_43e627, %block_.L_43e299
  %loadMem_43e33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i1229 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 1
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %RAX.i1230 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 15
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RBP.i1231 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RBP.i1231
  %893 = sub i64 %892, 80
  %894 = load i64, i64* %PC.i1229
  %895 = add i64 %894, 3
  store i64 %895, i64* %PC.i1229
  %896 = inttoptr i64 %893 to i32*
  %897 = load i32, i32* %896
  %898 = zext i32 %897 to i64
  store i64 %898, i64* %RAX.i1230, align 8
  store %struct.Memory* %loadMem_43e33d, %struct.Memory** %MEMORY
  %loadMem_43e340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i1226 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 1
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %EAX.i1227 = bitcast %union.anon* %904 to i32*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 15
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %RBP.i1228 = bitcast %union.anon* %907 to i64*
  %908 = load i32, i32* %EAX.i1227
  %909 = zext i32 %908 to i64
  %910 = load i64, i64* %RBP.i1228
  %911 = sub i64 %910, 36
  %912 = load i64, i64* %PC.i1226
  %913 = add i64 %912, 3
  store i64 %913, i64* %PC.i1226
  %914 = inttoptr i64 %911 to i32*
  %915 = load i32, i32* %914
  %916 = sub i32 %908, %915
  %917 = icmp ult i32 %908, %915
  %918 = zext i1 %917 to i8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %918, i8* %919, align 1
  %920 = and i32 %916, 255
  %921 = call i32 @llvm.ctpop.i32(i32 %920)
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  %924 = xor i8 %923, 1
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %924, i8* %925, align 1
  %926 = xor i32 %915, %908
  %927 = xor i32 %926, %916
  %928 = lshr i32 %927, 4
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %930, i8* %931, align 1
  %932 = icmp eq i32 %916, 0
  %933 = zext i1 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %933, i8* %934, align 1
  %935 = lshr i32 %916, 31
  %936 = trunc i32 %935 to i8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %936, i8* %937, align 1
  %938 = lshr i32 %908, 31
  %939 = lshr i32 %915, 31
  %940 = xor i32 %939, %938
  %941 = xor i32 %935, %938
  %942 = add i32 %941, %940
  %943 = icmp eq i32 %942, 2
  %944 = zext i1 %943 to i8
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %944, i8* %945, align 1
  store %struct.Memory* %loadMem_43e340, %struct.Memory** %MEMORY
  %loadMem_43e343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i1225 = bitcast %union.anon* %948 to i64*
  %949 = load i64, i64* %PC.i1225
  %950 = add i64 %949, 754
  %951 = load i64, i64* %PC.i1225
  %952 = add i64 %951, 6
  %953 = load i64, i64* %PC.i1225
  %954 = add i64 %953, 6
  store i64 %954, i64* %PC.i1225
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %956 = load i8, i8* %955, align 1
  %957 = icmp ne i8 %956, 0
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %959 = load i8, i8* %958, align 1
  %960 = icmp ne i8 %959, 0
  %961 = xor i1 %957, %960
  %962 = xor i1 %961, true
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %BRANCH_TAKEN, align 1
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %965 = select i1 %961, i64 %952, i64 %950
  store i64 %965, i64* %964, align 8
  store %struct.Memory* %loadMem_43e343, %struct.Memory** %MEMORY
  %loadBr_43e343 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e343 = icmp eq i8 %loadBr_43e343, 1
  br i1 %cmpBr_43e343, label %block_.L_43e635, label %block_43e349

block_43e349:                                     ; preds = %block_.L_43e33d
  %loadMem_43e349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 33
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %PC.i1222 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 1
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RAX.i1223 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 15
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %RBP.i1224 = bitcast %union.anon* %974 to i64*
  %975 = load i64, i64* %RBP.i1224
  %976 = sub i64 %975, 24
  %977 = load i64, i64* %PC.i1222
  %978 = add i64 %977, 4
  store i64 %978, i64* %PC.i1222
  %979 = inttoptr i64 %976 to i64*
  %980 = load i64, i64* %979
  store i64 %980, i64* %RAX.i1223, align 8
  store %struct.Memory* %loadMem_43e349, %struct.Memory** %MEMORY
  %loadMem_43e34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i1219 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 5
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %RCX.i1220 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 15
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RBP.i1221 = bitcast %union.anon* %989 to i64*
  %990 = load i64, i64* %RBP.i1221
  %991 = sub i64 %990, 80
  %992 = load i64, i64* %PC.i1219
  %993 = add i64 %992, 4
  store i64 %993, i64* %PC.i1219
  %994 = inttoptr i64 %991 to i32*
  %995 = load i32, i32* %994
  %996 = sext i32 %995 to i64
  store i64 %996, i64* %RCX.i1220, align 8
  store %struct.Memory* %loadMem_43e34d, %struct.Memory** %MEMORY
  %loadMem_43e351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i1215 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RAX.i1216 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 5
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RCX.i1217 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 7
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RDX.i1218 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %RAX.i1216
  %1010 = load i64, i64* %RCX.i1217
  %1011 = add i64 %1010, %1009
  %1012 = load i64, i64* %PC.i1215
  %1013 = add i64 %1012, 4
  store i64 %1013, i64* %PC.i1215
  %1014 = inttoptr i64 %1011 to i8*
  %1015 = load i8, i8* %1014
  %1016 = sext i8 %1015 to i64
  %1017 = and i64 %1016, 4294967295
  store i64 %1017, i64* %RDX.i1218, align 8
  store %struct.Memory* %loadMem_43e351, %struct.Memory** %MEMORY
  %loadMem_43e355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i1213 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 7
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %EDX.i1214 = bitcast %union.anon* %1023 to i32*
  %1024 = load i32, i32* %EDX.i1214
  %1025 = zext i32 %1024 to i64
  %1026 = load i64, i64* %PC.i1213
  %1027 = add i64 %1026, 3
  store i64 %1027, i64* %PC.i1213
  %1028 = sub i32 %1024, 32
  %1029 = icmp ult i32 %1024, 32
  %1030 = zext i1 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1030, i8* %1031, align 1
  %1032 = and i32 %1028, 255
  %1033 = call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1036, i8* %1037, align 1
  %1038 = xor i64 32, %1025
  %1039 = trunc i64 %1038 to i32
  %1040 = xor i32 %1039, %1028
  %1041 = lshr i32 %1040, 4
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1043, i8* %1044, align 1
  %1045 = icmp eq i32 %1028, 0
  %1046 = zext i1 %1045 to i8
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1046, i8* %1047, align 1
  %1048 = lshr i32 %1028, 31
  %1049 = trunc i32 %1048 to i8
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1049, i8* %1050, align 1
  %1051 = lshr i32 %1024, 31
  %1052 = xor i32 %1048, %1051
  %1053 = add i32 %1052, %1051
  %1054 = icmp eq i32 %1053, 2
  %1055 = zext i1 %1054 to i8
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1055, i8* %1056, align 1
  store %struct.Memory* %loadMem_43e355, %struct.Memory** %MEMORY
  %loadMem_43e358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 33
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %PC.i1212 = bitcast %union.anon* %1059 to i64*
  %1060 = load i64, i64* %PC.i1212
  %1061 = add i64 %1060, 90
  %1062 = load i64, i64* %PC.i1212
  %1063 = add i64 %1062, 6
  %1064 = load i64, i64* %PC.i1212
  %1065 = add i64 %1064, 6
  store i64 %1065, i64* %PC.i1212
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1067 = load i8, i8* %1066, align 1
  store i8 %1067, i8* %BRANCH_TAKEN, align 1
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1069 = icmp ne i8 %1067, 0
  %1070 = select i1 %1069, i64 %1061, i64 %1063
  store i64 %1070, i64* %1068, align 8
  store %struct.Memory* %loadMem_43e358, %struct.Memory** %MEMORY
  %loadBr_43e358 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e358 = icmp eq i8 %loadBr_43e358, 1
  br i1 %cmpBr_43e358, label %block_.L_43e3b2, label %block_43e35e

block_43e35e:                                     ; preds = %block_43e349
  %loadMem_43e35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 33
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %PC.i1209 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 1
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RAX.i1210 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 15
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %RBP.i1211 = bitcast %union.anon* %1079 to i64*
  %1080 = load i64, i64* %RBP.i1211
  %1081 = sub i64 %1080, 24
  %1082 = load i64, i64* %PC.i1209
  %1083 = add i64 %1082, 4
  store i64 %1083, i64* %PC.i1209
  %1084 = inttoptr i64 %1081 to i64*
  %1085 = load i64, i64* %1084
  store i64 %1085, i64* %RAX.i1210, align 8
  store %struct.Memory* %loadMem_43e35e, %struct.Memory** %MEMORY
  %loadMem_43e362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i1206 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 5
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RCX.i1207 = bitcast %union.anon* %1091 to i64*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 15
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %RBP.i1208 = bitcast %union.anon* %1094 to i64*
  %1095 = load i64, i64* %RBP.i1208
  %1096 = sub i64 %1095, 80
  %1097 = load i64, i64* %PC.i1206
  %1098 = add i64 %1097, 4
  store i64 %1098, i64* %PC.i1206
  %1099 = inttoptr i64 %1096 to i32*
  %1100 = load i32, i32* %1099
  %1101 = sext i32 %1100 to i64
  store i64 %1101, i64* %RCX.i1207, align 8
  store %struct.Memory* %loadMem_43e362, %struct.Memory** %MEMORY
  %loadMem_43e366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 33
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %PC.i1202 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 1
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RAX.i1203 = bitcast %union.anon* %1107 to i64*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 5
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %RCX.i1204 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 7
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RDX.i1205 = bitcast %union.anon* %1113 to i64*
  %1114 = load i64, i64* %RAX.i1203
  %1115 = load i64, i64* %RCX.i1204
  %1116 = add i64 %1115, %1114
  %1117 = load i64, i64* %PC.i1202
  %1118 = add i64 %1117, 4
  store i64 %1118, i64* %PC.i1202
  %1119 = inttoptr i64 %1116 to i8*
  %1120 = load i8, i8* %1119
  %1121 = sext i8 %1120 to i64
  %1122 = and i64 %1121, 4294967295
  store i64 %1122, i64* %RDX.i1205, align 8
  store %struct.Memory* %loadMem_43e366, %struct.Memory** %MEMORY
  %loadMem_43e36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 33
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %PC.i1200 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 7
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %EDX.i1201 = bitcast %union.anon* %1128 to i32*
  %1129 = load i32, i32* %EDX.i1201
  %1130 = zext i32 %1129 to i64
  %1131 = load i64, i64* %PC.i1200
  %1132 = add i64 %1131, 3
  store i64 %1132, i64* %PC.i1200
  %1133 = sub i32 %1129, 46
  %1134 = icmp ult i32 %1129, 46
  %1135 = zext i1 %1134 to i8
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1135, i8* %1136, align 1
  %1137 = and i32 %1133, 255
  %1138 = call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1141, i8* %1142, align 1
  %1143 = xor i64 46, %1130
  %1144 = trunc i64 %1143 to i32
  %1145 = xor i32 %1144, %1133
  %1146 = lshr i32 %1145, 4
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1148, i8* %1149, align 1
  %1150 = icmp eq i32 %1133, 0
  %1151 = zext i1 %1150 to i8
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1151, i8* %1152, align 1
  %1153 = lshr i32 %1133, 31
  %1154 = trunc i32 %1153 to i8
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1154, i8* %1155, align 1
  %1156 = lshr i32 %1129, 31
  %1157 = xor i32 %1153, %1156
  %1158 = add i32 %1157, %1156
  %1159 = icmp eq i32 %1158, 2
  %1160 = zext i1 %1159 to i8
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1160, i8* %1161, align 1
  store %struct.Memory* %loadMem_43e36a, %struct.Memory** %MEMORY
  %loadMem_43e36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 33
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %PC.i1199 = bitcast %union.anon* %1164 to i64*
  %1165 = load i64, i64* %PC.i1199
  %1166 = add i64 %1165, 69
  %1167 = load i64, i64* %PC.i1199
  %1168 = add i64 %1167, 6
  %1169 = load i64, i64* %PC.i1199
  %1170 = add i64 %1169, 6
  store i64 %1170, i64* %PC.i1199
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1172 = load i8, i8* %1171, align 1
  store i8 %1172, i8* %BRANCH_TAKEN, align 1
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1174 = icmp ne i8 %1172, 0
  %1175 = select i1 %1174, i64 %1166, i64 %1168
  store i64 %1175, i64* %1173, align 8
  store %struct.Memory* %loadMem_43e36d, %struct.Memory** %MEMORY
  %loadBr_43e36d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e36d = icmp eq i8 %loadBr_43e36d, 1
  br i1 %cmpBr_43e36d, label %block_.L_43e3b2, label %block_43e373

block_43e373:                                     ; preds = %block_43e35e
  %loadMem_43e373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i1196 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 1
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %RAX.i1197 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 15
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RBP.i1198 = bitcast %union.anon* %1184 to i64*
  %1185 = load i64, i64* %RBP.i1198
  %1186 = sub i64 %1185, 24
  %1187 = load i64, i64* %PC.i1196
  %1188 = add i64 %1187, 4
  store i64 %1188, i64* %PC.i1196
  %1189 = inttoptr i64 %1186 to i64*
  %1190 = load i64, i64* %1189
  store i64 %1190, i64* %RAX.i1197, align 8
  store %struct.Memory* %loadMem_43e373, %struct.Memory** %MEMORY
  %loadMem_43e377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 33
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %PC.i1193 = bitcast %union.anon* %1193 to i64*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 5
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RCX.i1194 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 15
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RBP.i1195 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %RBP.i1195
  %1201 = sub i64 %1200, 80
  %1202 = load i64, i64* %PC.i1193
  %1203 = add i64 %1202, 4
  store i64 %1203, i64* %PC.i1193
  %1204 = inttoptr i64 %1201 to i32*
  %1205 = load i32, i32* %1204
  %1206 = sext i32 %1205 to i64
  store i64 %1206, i64* %RCX.i1194, align 8
  store %struct.Memory* %loadMem_43e377, %struct.Memory** %MEMORY
  %loadMem_43e37b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 33
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %PC.i1189 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 1
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %RAX.i1190 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 5
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %RCX.i1191 = bitcast %union.anon* %1215 to i64*
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 7
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %RDX.i1192 = bitcast %union.anon* %1218 to i64*
  %1219 = load i64, i64* %RAX.i1190
  %1220 = load i64, i64* %RCX.i1191
  %1221 = add i64 %1220, %1219
  %1222 = load i64, i64* %PC.i1189
  %1223 = add i64 %1222, 4
  store i64 %1223, i64* %PC.i1189
  %1224 = inttoptr i64 %1221 to i8*
  %1225 = load i8, i8* %1224
  %1226 = sext i8 %1225 to i64
  %1227 = and i64 %1226, 4294967295
  store i64 %1227, i64* %RDX.i1192, align 8
  store %struct.Memory* %loadMem_43e37b, %struct.Memory** %MEMORY
  %loadMem_43e37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 33
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %PC.i1187 = bitcast %union.anon* %1230 to i64*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 7
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %EDX.i1188 = bitcast %union.anon* %1233 to i32*
  %1234 = load i32, i32* %EDX.i1188
  %1235 = zext i32 %1234 to i64
  %1236 = load i64, i64* %PC.i1187
  %1237 = add i64 %1236, 3
  store i64 %1237, i64* %PC.i1187
  %1238 = sub i32 %1234, 95
  %1239 = icmp ult i32 %1234, 95
  %1240 = zext i1 %1239 to i8
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1240, i8* %1241, align 1
  %1242 = and i32 %1238, 255
  %1243 = call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1246, i8* %1247, align 1
  %1248 = xor i64 95, %1235
  %1249 = trunc i64 %1248 to i32
  %1250 = xor i32 %1249, %1238
  %1251 = lshr i32 %1250, 4
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1253, i8* %1254, align 1
  %1255 = icmp eq i32 %1238, 0
  %1256 = zext i1 %1255 to i8
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1256, i8* %1257, align 1
  %1258 = lshr i32 %1238, 31
  %1259 = trunc i32 %1258 to i8
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1259, i8* %1260, align 1
  %1261 = lshr i32 %1234, 31
  %1262 = xor i32 %1258, %1261
  %1263 = add i32 %1262, %1261
  %1264 = icmp eq i32 %1263, 2
  %1265 = zext i1 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1265, i8* %1266, align 1
  store %struct.Memory* %loadMem_43e37f, %struct.Memory** %MEMORY
  %loadMem_43e382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 33
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %PC.i1186 = bitcast %union.anon* %1269 to i64*
  %1270 = load i64, i64* %PC.i1186
  %1271 = add i64 %1270, 48
  %1272 = load i64, i64* %PC.i1186
  %1273 = add i64 %1272, 6
  %1274 = load i64, i64* %PC.i1186
  %1275 = add i64 %1274, 6
  store i64 %1275, i64* %PC.i1186
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1277 = load i8, i8* %1276, align 1
  store i8 %1277, i8* %BRANCH_TAKEN, align 1
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1279 = icmp ne i8 %1277, 0
  %1280 = select i1 %1279, i64 %1271, i64 %1273
  store i64 %1280, i64* %1278, align 8
  store %struct.Memory* %loadMem_43e382, %struct.Memory** %MEMORY
  %loadBr_43e382 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e382 = icmp eq i8 %loadBr_43e382, 1
  br i1 %cmpBr_43e382, label %block_.L_43e3b2, label %block_43e388

block_43e388:                                     ; preds = %block_43e373
  %loadMem_43e388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i1183 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 1
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %RAX.i1184 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 15
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %RBP.i1185 = bitcast %union.anon* %1289 to i64*
  %1290 = load i64, i64* %RBP.i1185
  %1291 = sub i64 %1290, 24
  %1292 = load i64, i64* %PC.i1183
  %1293 = add i64 %1292, 4
  store i64 %1293, i64* %PC.i1183
  %1294 = inttoptr i64 %1291 to i64*
  %1295 = load i64, i64* %1294
  store i64 %1295, i64* %RAX.i1184, align 8
  store %struct.Memory* %loadMem_43e388, %struct.Memory** %MEMORY
  %loadMem_43e38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i1180 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 5
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RCX.i1181 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 15
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RBP.i1182 = bitcast %union.anon* %1304 to i64*
  %1305 = load i64, i64* %RBP.i1182
  %1306 = sub i64 %1305, 80
  %1307 = load i64, i64* %PC.i1180
  %1308 = add i64 %1307, 4
  store i64 %1308, i64* %PC.i1180
  %1309 = inttoptr i64 %1306 to i32*
  %1310 = load i32, i32* %1309
  %1311 = sext i32 %1310 to i64
  store i64 %1311, i64* %RCX.i1181, align 8
  store %struct.Memory* %loadMem_43e38c, %struct.Memory** %MEMORY
  %loadMem_43e390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i1176 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 1
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RAX.i1177 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 5
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RCX.i1178 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 7
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %RDX.i1179 = bitcast %union.anon* %1323 to i64*
  %1324 = load i64, i64* %RAX.i1177
  %1325 = load i64, i64* %RCX.i1178
  %1326 = add i64 %1325, %1324
  %1327 = load i64, i64* %PC.i1176
  %1328 = add i64 %1327, 4
  store i64 %1328, i64* %PC.i1176
  %1329 = inttoptr i64 %1326 to i8*
  %1330 = load i8, i8* %1329
  %1331 = sext i8 %1330 to i64
  %1332 = and i64 %1331, 4294967295
  store i64 %1332, i64* %RDX.i1179, align 8
  store %struct.Memory* %loadMem_43e390, %struct.Memory** %MEMORY
  %loadMem_43e394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 33
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %PC.i1174 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 7
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %EDX.i1175 = bitcast %union.anon* %1338 to i32*
  %1339 = load i32, i32* %EDX.i1175
  %1340 = zext i32 %1339 to i64
  %1341 = load i64, i64* %PC.i1174
  %1342 = add i64 %1341, 3
  store i64 %1342, i64* %PC.i1174
  %1343 = sub i32 %1339, 45
  %1344 = icmp ult i32 %1339, 45
  %1345 = zext i1 %1344 to i8
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1345, i8* %1346, align 1
  %1347 = and i32 %1343, 255
  %1348 = call i32 @llvm.ctpop.i32(i32 %1347)
  %1349 = trunc i32 %1348 to i8
  %1350 = and i8 %1349, 1
  %1351 = xor i8 %1350, 1
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1351, i8* %1352, align 1
  %1353 = xor i64 45, %1340
  %1354 = trunc i64 %1353 to i32
  %1355 = xor i32 %1354, %1343
  %1356 = lshr i32 %1355, 4
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1358, i8* %1359, align 1
  %1360 = icmp eq i32 %1343, 0
  %1361 = zext i1 %1360 to i8
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1361, i8* %1362, align 1
  %1363 = lshr i32 %1343, 31
  %1364 = trunc i32 %1363 to i8
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1364, i8* %1365, align 1
  %1366 = lshr i32 %1339, 31
  %1367 = xor i32 %1363, %1366
  %1368 = add i32 %1367, %1366
  %1369 = icmp eq i32 %1368, 2
  %1370 = zext i1 %1369 to i8
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1370, i8* %1371, align 1
  store %struct.Memory* %loadMem_43e394, %struct.Memory** %MEMORY
  %loadMem_43e397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 33
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %PC.i1173 = bitcast %union.anon* %1374 to i64*
  %1375 = load i64, i64* %PC.i1173
  %1376 = add i64 %1375, 27
  %1377 = load i64, i64* %PC.i1173
  %1378 = add i64 %1377, 6
  %1379 = load i64, i64* %PC.i1173
  %1380 = add i64 %1379, 6
  store i64 %1380, i64* %PC.i1173
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1382 = load i8, i8* %1381, align 1
  store i8 %1382, i8* %BRANCH_TAKEN, align 1
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1384 = icmp ne i8 %1382, 0
  %1385 = select i1 %1384, i64 %1376, i64 %1378
  store i64 %1385, i64* %1383, align 8
  store %struct.Memory* %loadMem_43e397, %struct.Memory** %MEMORY
  %loadBr_43e397 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e397 = icmp eq i8 %loadBr_43e397, 1
  br i1 %cmpBr_43e397, label %block_.L_43e3b2, label %block_43e39d

block_43e39d:                                     ; preds = %block_43e388
  %loadMem_43e39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 33
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %PC.i1170 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 1
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %RAX.i1171 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 15
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RBP.i1172 = bitcast %union.anon* %1394 to i64*
  %1395 = load i64, i64* %RBP.i1172
  %1396 = sub i64 %1395, 24
  %1397 = load i64, i64* %PC.i1170
  %1398 = add i64 %1397, 4
  store i64 %1398, i64* %PC.i1170
  %1399 = inttoptr i64 %1396 to i64*
  %1400 = load i64, i64* %1399
  store i64 %1400, i64* %RAX.i1171, align 8
  store %struct.Memory* %loadMem_43e39d, %struct.Memory** %MEMORY
  %loadMem_43e3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i1167 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 5
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RCX.i1168 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 15
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RBP.i1169 = bitcast %union.anon* %1409 to i64*
  %1410 = load i64, i64* %RBP.i1169
  %1411 = sub i64 %1410, 80
  %1412 = load i64, i64* %PC.i1167
  %1413 = add i64 %1412, 4
  store i64 %1413, i64* %PC.i1167
  %1414 = inttoptr i64 %1411 to i32*
  %1415 = load i32, i32* %1414
  %1416 = sext i32 %1415 to i64
  store i64 %1416, i64* %RCX.i1168, align 8
  store %struct.Memory* %loadMem_43e3a1, %struct.Memory** %MEMORY
  %loadMem_43e3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 33
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %PC.i1163 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 1
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RAX.i1164 = bitcast %union.anon* %1422 to i64*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 5
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %RCX.i1165 = bitcast %union.anon* %1425 to i64*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 7
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %RDX.i1166 = bitcast %union.anon* %1428 to i64*
  %1429 = load i64, i64* %RAX.i1164
  %1430 = load i64, i64* %RCX.i1165
  %1431 = add i64 %1430, %1429
  %1432 = load i64, i64* %PC.i1163
  %1433 = add i64 %1432, 4
  store i64 %1433, i64* %PC.i1163
  %1434 = inttoptr i64 %1431 to i8*
  %1435 = load i8, i8* %1434
  %1436 = sext i8 %1435 to i64
  %1437 = and i64 %1436, 4294967295
  store i64 %1437, i64* %RDX.i1166, align 8
  store %struct.Memory* %loadMem_43e3a5, %struct.Memory** %MEMORY
  %loadMem_43e3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 33
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %PC.i1161 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 7
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %EDX.i1162 = bitcast %union.anon* %1443 to i32*
  %1444 = load i32, i32* %EDX.i1162
  %1445 = zext i32 %1444 to i64
  %1446 = load i64, i64* %PC.i1161
  %1447 = add i64 %1446, 3
  store i64 %1447, i64* %PC.i1161
  %1448 = sub i32 %1444, 126
  %1449 = icmp ult i32 %1444, 126
  %1450 = zext i1 %1449 to i8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1450, i8* %1451, align 1
  %1452 = and i32 %1448, 255
  %1453 = call i32 @llvm.ctpop.i32(i32 %1452)
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  %1456 = xor i8 %1455, 1
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1456, i8* %1457, align 1
  %1458 = xor i64 126, %1445
  %1459 = trunc i64 %1458 to i32
  %1460 = xor i32 %1459, %1448
  %1461 = lshr i32 %1460, 4
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1463, i8* %1464, align 1
  %1465 = icmp eq i32 %1448, 0
  %1466 = zext i1 %1465 to i8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1466, i8* %1467, align 1
  %1468 = lshr i32 %1448, 31
  %1469 = trunc i32 %1468 to i8
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1469, i8* %1470, align 1
  %1471 = lshr i32 %1444, 31
  %1472 = xor i32 %1468, %1471
  %1473 = add i32 %1472, %1471
  %1474 = icmp eq i32 %1473, 2
  %1475 = zext i1 %1474 to i8
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1475, i8* %1476, align 1
  store %struct.Memory* %loadMem_43e3a9, %struct.Memory** %MEMORY
  %loadMem_43e3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 33
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %PC.i1160 = bitcast %union.anon* %1479 to i64*
  %1480 = load i64, i64* %PC.i1160
  %1481 = add i64 %1480, 116
  %1482 = load i64, i64* %PC.i1160
  %1483 = add i64 %1482, 6
  %1484 = load i64, i64* %PC.i1160
  %1485 = add i64 %1484, 6
  store i64 %1485, i64* %PC.i1160
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1487 = load i8, i8* %1486, align 1
  %1488 = icmp eq i8 %1487, 0
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %BRANCH_TAKEN, align 1
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1491 = select i1 %1488, i64 %1481, i64 %1483
  store i64 %1491, i64* %1490, align 8
  store %struct.Memory* %loadMem_43e3ac, %struct.Memory** %MEMORY
  %loadBr_43e3ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e3ac = icmp eq i8 %loadBr_43e3ac, 1
  br i1 %cmpBr_43e3ac, label %block_.L_43e420, label %block_.L_43e3b2

block_.L_43e3b2:                                  ; preds = %block_43e39d, %block_43e388, %block_43e373, %block_43e35e, %block_43e349
  %loadMem_43e3b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i1157 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 1
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RAX.i1158 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 15
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RBP.i1159 = bitcast %union.anon* %1500 to i64*
  %1501 = load i64, i64* %RBP.i1159
  %1502 = sub i64 %1501, 32
  %1503 = load i64, i64* %PC.i1157
  %1504 = add i64 %1503, 4
  store i64 %1504, i64* %PC.i1157
  %1505 = inttoptr i64 %1502 to i64*
  %1506 = load i64, i64* %1505
  store i64 %1506, i64* %RAX.i1158, align 8
  store %struct.Memory* %loadMem_43e3b2, %struct.Memory** %MEMORY
  %loadMem_43e3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i1154 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 5
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RCX.i1155 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 15
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RBP.i1156 = bitcast %union.anon* %1515 to i64*
  %1516 = load i64, i64* %RBP.i1156
  %1517 = sub i64 %1516, 80
  %1518 = load i64, i64* %PC.i1154
  %1519 = add i64 %1518, 4
  store i64 %1519, i64* %PC.i1154
  %1520 = inttoptr i64 %1517 to i32*
  %1521 = load i32, i32* %1520
  %1522 = sext i32 %1521 to i64
  store i64 %1522, i64* %RCX.i1155, align 8
  store %struct.Memory* %loadMem_43e3b6, %struct.Memory** %MEMORY
  %loadMem_43e3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i1150 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 1
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RAX.i1151 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 5
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RCX.i1152 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 7
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RDX.i1153 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %RAX.i1151
  %1536 = load i64, i64* %RCX.i1152
  %1537 = add i64 %1536, %1535
  %1538 = load i64, i64* %PC.i1150
  %1539 = add i64 %1538, 4
  store i64 %1539, i64* %PC.i1150
  %1540 = inttoptr i64 %1537 to i8*
  %1541 = load i8, i8* %1540
  %1542 = sext i8 %1541 to i64
  %1543 = and i64 %1542, 4294967295
  store i64 %1543, i64* %RDX.i1153, align 8
  store %struct.Memory* %loadMem_43e3ba, %struct.Memory** %MEMORY
  %loadMem_43e3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i1148 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 7
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %EDX.i1149 = bitcast %union.anon* %1549 to i32*
  %1550 = load i32, i32* %EDX.i1149
  %1551 = zext i32 %1550 to i64
  %1552 = load i64, i64* %PC.i1148
  %1553 = add i64 %1552, 3
  store i64 %1553, i64* %PC.i1148
  %1554 = sub i32 %1550, 32
  %1555 = icmp ult i32 %1550, 32
  %1556 = zext i1 %1555 to i8
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1556, i8* %1557, align 1
  %1558 = and i32 %1554, 255
  %1559 = call i32 @llvm.ctpop.i32(i32 %1558)
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  %1562 = xor i8 %1561, 1
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1562, i8* %1563, align 1
  %1564 = xor i64 32, %1551
  %1565 = trunc i64 %1564 to i32
  %1566 = xor i32 %1565, %1554
  %1567 = lshr i32 %1566, 4
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1569, i8* %1570, align 1
  %1571 = icmp eq i32 %1554, 0
  %1572 = zext i1 %1571 to i8
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1572, i8* %1573, align 1
  %1574 = lshr i32 %1554, 31
  %1575 = trunc i32 %1574 to i8
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1575, i8* %1576, align 1
  %1577 = lshr i32 %1550, 31
  %1578 = xor i32 %1574, %1577
  %1579 = add i32 %1578, %1577
  %1580 = icmp eq i32 %1579, 2
  %1581 = zext i1 %1580 to i8
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1581, i8* %1582, align 1
  store %struct.Memory* %loadMem_43e3be, %struct.Memory** %MEMORY
  %loadMem_43e3c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 33
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %PC.i1147 = bitcast %union.anon* %1585 to i64*
  %1586 = load i64, i64* %PC.i1147
  %1587 = add i64 %1586, 90
  %1588 = load i64, i64* %PC.i1147
  %1589 = add i64 %1588, 6
  %1590 = load i64, i64* %PC.i1147
  %1591 = add i64 %1590, 6
  store i64 %1591, i64* %PC.i1147
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1593 = load i8, i8* %1592, align 1
  store i8 %1593, i8* %BRANCH_TAKEN, align 1
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1595 = icmp ne i8 %1593, 0
  %1596 = select i1 %1595, i64 %1587, i64 %1589
  store i64 %1596, i64* %1594, align 8
  store %struct.Memory* %loadMem_43e3c1, %struct.Memory** %MEMORY
  %loadBr_43e3c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e3c1 = icmp eq i8 %loadBr_43e3c1, 1
  br i1 %cmpBr_43e3c1, label %block_.L_43e41b, label %block_43e3c7

block_43e3c7:                                     ; preds = %block_.L_43e3b2
  %loadMem_43e3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 33
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %PC.i1144 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 1
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %RAX.i1145 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 15
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RBP.i1146 = bitcast %union.anon* %1605 to i64*
  %1606 = load i64, i64* %RBP.i1146
  %1607 = sub i64 %1606, 32
  %1608 = load i64, i64* %PC.i1144
  %1609 = add i64 %1608, 4
  store i64 %1609, i64* %PC.i1144
  %1610 = inttoptr i64 %1607 to i64*
  %1611 = load i64, i64* %1610
  store i64 %1611, i64* %RAX.i1145, align 8
  store %struct.Memory* %loadMem_43e3c7, %struct.Memory** %MEMORY
  %loadMem_43e3cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 33
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %PC.i1141 = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 5
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %RCX.i1142 = bitcast %union.anon* %1617 to i64*
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 15
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %RBP.i1143 = bitcast %union.anon* %1620 to i64*
  %1621 = load i64, i64* %RBP.i1143
  %1622 = sub i64 %1621, 80
  %1623 = load i64, i64* %PC.i1141
  %1624 = add i64 %1623, 4
  store i64 %1624, i64* %PC.i1141
  %1625 = inttoptr i64 %1622 to i32*
  %1626 = load i32, i32* %1625
  %1627 = sext i32 %1626 to i64
  store i64 %1627, i64* %RCX.i1142, align 8
  store %struct.Memory* %loadMem_43e3cb, %struct.Memory** %MEMORY
  %loadMem_43e3cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i1137 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 1
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RAX.i1138 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 5
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RCX.i1139 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 7
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RDX.i1140 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %RAX.i1138
  %1641 = load i64, i64* %RCX.i1139
  %1642 = add i64 %1641, %1640
  %1643 = load i64, i64* %PC.i1137
  %1644 = add i64 %1643, 4
  store i64 %1644, i64* %PC.i1137
  %1645 = inttoptr i64 %1642 to i8*
  %1646 = load i8, i8* %1645
  %1647 = sext i8 %1646 to i64
  %1648 = and i64 %1647, 4294967295
  store i64 %1648, i64* %RDX.i1140, align 8
  store %struct.Memory* %loadMem_43e3cf, %struct.Memory** %MEMORY
  %loadMem_43e3d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 33
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %PC.i1135 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 7
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %EDX.i1136 = bitcast %union.anon* %1654 to i32*
  %1655 = load i32, i32* %EDX.i1136
  %1656 = zext i32 %1655 to i64
  %1657 = load i64, i64* %PC.i1135
  %1658 = add i64 %1657, 3
  store i64 %1658, i64* %PC.i1135
  %1659 = sub i32 %1655, 46
  %1660 = icmp ult i32 %1655, 46
  %1661 = zext i1 %1660 to i8
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1661, i8* %1662, align 1
  %1663 = and i32 %1659, 255
  %1664 = call i32 @llvm.ctpop.i32(i32 %1663)
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  %1667 = xor i8 %1666, 1
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1667, i8* %1668, align 1
  %1669 = xor i64 46, %1656
  %1670 = trunc i64 %1669 to i32
  %1671 = xor i32 %1670, %1659
  %1672 = lshr i32 %1671, 4
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1674, i8* %1675, align 1
  %1676 = icmp eq i32 %1659, 0
  %1677 = zext i1 %1676 to i8
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1677, i8* %1678, align 1
  %1679 = lshr i32 %1659, 31
  %1680 = trunc i32 %1679 to i8
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1680, i8* %1681, align 1
  %1682 = lshr i32 %1655, 31
  %1683 = xor i32 %1679, %1682
  %1684 = add i32 %1683, %1682
  %1685 = icmp eq i32 %1684, 2
  %1686 = zext i1 %1685 to i8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1686, i8* %1687, align 1
  store %struct.Memory* %loadMem_43e3d3, %struct.Memory** %MEMORY
  %loadMem_43e3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 33
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %PC.i1134 = bitcast %union.anon* %1690 to i64*
  %1691 = load i64, i64* %PC.i1134
  %1692 = add i64 %1691, 69
  %1693 = load i64, i64* %PC.i1134
  %1694 = add i64 %1693, 6
  %1695 = load i64, i64* %PC.i1134
  %1696 = add i64 %1695, 6
  store i64 %1696, i64* %PC.i1134
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1698 = load i8, i8* %1697, align 1
  store i8 %1698, i8* %BRANCH_TAKEN, align 1
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1700 = icmp ne i8 %1698, 0
  %1701 = select i1 %1700, i64 %1692, i64 %1694
  store i64 %1701, i64* %1699, align 8
  store %struct.Memory* %loadMem_43e3d6, %struct.Memory** %MEMORY
  %loadBr_43e3d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e3d6 = icmp eq i8 %loadBr_43e3d6, 1
  br i1 %cmpBr_43e3d6, label %block_.L_43e41b, label %block_43e3dc

block_43e3dc:                                     ; preds = %block_43e3c7
  %loadMem_43e3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i1131 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 1
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RAX.i1132 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 15
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %RBP.i1133 = bitcast %union.anon* %1710 to i64*
  %1711 = load i64, i64* %RBP.i1133
  %1712 = sub i64 %1711, 32
  %1713 = load i64, i64* %PC.i1131
  %1714 = add i64 %1713, 4
  store i64 %1714, i64* %PC.i1131
  %1715 = inttoptr i64 %1712 to i64*
  %1716 = load i64, i64* %1715
  store i64 %1716, i64* %RAX.i1132, align 8
  store %struct.Memory* %loadMem_43e3dc, %struct.Memory** %MEMORY
  %loadMem_43e3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 33
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %PC.i1128 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 5
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %RCX.i1129 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 15
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RBP.i1130 = bitcast %union.anon* %1725 to i64*
  %1726 = load i64, i64* %RBP.i1130
  %1727 = sub i64 %1726, 80
  %1728 = load i64, i64* %PC.i1128
  %1729 = add i64 %1728, 4
  store i64 %1729, i64* %PC.i1128
  %1730 = inttoptr i64 %1727 to i32*
  %1731 = load i32, i32* %1730
  %1732 = sext i32 %1731 to i64
  store i64 %1732, i64* %RCX.i1129, align 8
  store %struct.Memory* %loadMem_43e3e0, %struct.Memory** %MEMORY
  %loadMem_43e3e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i1124 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 1
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RAX.i1125 = bitcast %union.anon* %1738 to i64*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 5
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %RCX.i1126 = bitcast %union.anon* %1741 to i64*
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 7
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %RDX.i1127 = bitcast %union.anon* %1744 to i64*
  %1745 = load i64, i64* %RAX.i1125
  %1746 = load i64, i64* %RCX.i1126
  %1747 = add i64 %1746, %1745
  %1748 = load i64, i64* %PC.i1124
  %1749 = add i64 %1748, 4
  store i64 %1749, i64* %PC.i1124
  %1750 = inttoptr i64 %1747 to i8*
  %1751 = load i8, i8* %1750
  %1752 = sext i8 %1751 to i64
  %1753 = and i64 %1752, 4294967295
  store i64 %1753, i64* %RDX.i1127, align 8
  store %struct.Memory* %loadMem_43e3e4, %struct.Memory** %MEMORY
  %loadMem_43e3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i1122 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 7
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %EDX.i1123 = bitcast %union.anon* %1759 to i32*
  %1760 = load i32, i32* %EDX.i1123
  %1761 = zext i32 %1760 to i64
  %1762 = load i64, i64* %PC.i1122
  %1763 = add i64 %1762, 3
  store i64 %1763, i64* %PC.i1122
  %1764 = sub i32 %1760, 95
  %1765 = icmp ult i32 %1760, 95
  %1766 = zext i1 %1765 to i8
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1766, i8* %1767, align 1
  %1768 = and i32 %1764, 255
  %1769 = call i32 @llvm.ctpop.i32(i32 %1768)
  %1770 = trunc i32 %1769 to i8
  %1771 = and i8 %1770, 1
  %1772 = xor i8 %1771, 1
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1772, i8* %1773, align 1
  %1774 = xor i64 95, %1761
  %1775 = trunc i64 %1774 to i32
  %1776 = xor i32 %1775, %1764
  %1777 = lshr i32 %1776, 4
  %1778 = trunc i32 %1777 to i8
  %1779 = and i8 %1778, 1
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1779, i8* %1780, align 1
  %1781 = icmp eq i32 %1764, 0
  %1782 = zext i1 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1782, i8* %1783, align 1
  %1784 = lshr i32 %1764, 31
  %1785 = trunc i32 %1784 to i8
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1785, i8* %1786, align 1
  %1787 = lshr i32 %1760, 31
  %1788 = xor i32 %1784, %1787
  %1789 = add i32 %1788, %1787
  %1790 = icmp eq i32 %1789, 2
  %1791 = zext i1 %1790 to i8
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1791, i8* %1792, align 1
  store %struct.Memory* %loadMem_43e3e8, %struct.Memory** %MEMORY
  %loadMem_43e3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 33
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %PC.i1121 = bitcast %union.anon* %1795 to i64*
  %1796 = load i64, i64* %PC.i1121
  %1797 = add i64 %1796, 48
  %1798 = load i64, i64* %PC.i1121
  %1799 = add i64 %1798, 6
  %1800 = load i64, i64* %PC.i1121
  %1801 = add i64 %1800, 6
  store i64 %1801, i64* %PC.i1121
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1803 = load i8, i8* %1802, align 1
  store i8 %1803, i8* %BRANCH_TAKEN, align 1
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1805 = icmp ne i8 %1803, 0
  %1806 = select i1 %1805, i64 %1797, i64 %1799
  store i64 %1806, i64* %1804, align 8
  store %struct.Memory* %loadMem_43e3eb, %struct.Memory** %MEMORY
  %loadBr_43e3eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e3eb = icmp eq i8 %loadBr_43e3eb, 1
  br i1 %cmpBr_43e3eb, label %block_.L_43e41b, label %block_43e3f1

block_43e3f1:                                     ; preds = %block_43e3dc
  %loadMem_43e3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i1118 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 1
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RAX.i1119 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 15
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RBP.i1120 = bitcast %union.anon* %1815 to i64*
  %1816 = load i64, i64* %RBP.i1120
  %1817 = sub i64 %1816, 32
  %1818 = load i64, i64* %PC.i1118
  %1819 = add i64 %1818, 4
  store i64 %1819, i64* %PC.i1118
  %1820 = inttoptr i64 %1817 to i64*
  %1821 = load i64, i64* %1820
  store i64 %1821, i64* %RAX.i1119, align 8
  store %struct.Memory* %loadMem_43e3f1, %struct.Memory** %MEMORY
  %loadMem_43e3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 33
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %PC.i1115 = bitcast %union.anon* %1824 to i64*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 5
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %RCX.i1116 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 15
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %RBP.i1117 = bitcast %union.anon* %1830 to i64*
  %1831 = load i64, i64* %RBP.i1117
  %1832 = sub i64 %1831, 80
  %1833 = load i64, i64* %PC.i1115
  %1834 = add i64 %1833, 4
  store i64 %1834, i64* %PC.i1115
  %1835 = inttoptr i64 %1832 to i32*
  %1836 = load i32, i32* %1835
  %1837 = sext i32 %1836 to i64
  store i64 %1837, i64* %RCX.i1116, align 8
  store %struct.Memory* %loadMem_43e3f5, %struct.Memory** %MEMORY
  %loadMem_43e3f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 33
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %PC.i1111 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 1
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RAX.i1112 = bitcast %union.anon* %1843 to i64*
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 5
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %RCX.i1113 = bitcast %union.anon* %1846 to i64*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 7
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %RDX.i1114 = bitcast %union.anon* %1849 to i64*
  %1850 = load i64, i64* %RAX.i1112
  %1851 = load i64, i64* %RCX.i1113
  %1852 = add i64 %1851, %1850
  %1853 = load i64, i64* %PC.i1111
  %1854 = add i64 %1853, 4
  store i64 %1854, i64* %PC.i1111
  %1855 = inttoptr i64 %1852 to i8*
  %1856 = load i8, i8* %1855
  %1857 = sext i8 %1856 to i64
  %1858 = and i64 %1857, 4294967295
  store i64 %1858, i64* %RDX.i1114, align 8
  store %struct.Memory* %loadMem_43e3f9, %struct.Memory** %MEMORY
  %loadMem_43e3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 33
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %PC.i1109 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 7
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %EDX.i1110 = bitcast %union.anon* %1864 to i32*
  %1865 = load i32, i32* %EDX.i1110
  %1866 = zext i32 %1865 to i64
  %1867 = load i64, i64* %PC.i1109
  %1868 = add i64 %1867, 3
  store i64 %1868, i64* %PC.i1109
  %1869 = sub i32 %1865, 45
  %1870 = icmp ult i32 %1865, 45
  %1871 = zext i1 %1870 to i8
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1871, i8* %1872, align 1
  %1873 = and i32 %1869, 255
  %1874 = call i32 @llvm.ctpop.i32(i32 %1873)
  %1875 = trunc i32 %1874 to i8
  %1876 = and i8 %1875, 1
  %1877 = xor i8 %1876, 1
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1877, i8* %1878, align 1
  %1879 = xor i64 45, %1866
  %1880 = trunc i64 %1879 to i32
  %1881 = xor i32 %1880, %1869
  %1882 = lshr i32 %1881, 4
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1884, i8* %1885, align 1
  %1886 = icmp eq i32 %1869, 0
  %1887 = zext i1 %1886 to i8
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1887, i8* %1888, align 1
  %1889 = lshr i32 %1869, 31
  %1890 = trunc i32 %1889 to i8
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1890, i8* %1891, align 1
  %1892 = lshr i32 %1865, 31
  %1893 = xor i32 %1889, %1892
  %1894 = add i32 %1893, %1892
  %1895 = icmp eq i32 %1894, 2
  %1896 = zext i1 %1895 to i8
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1896, i8* %1897, align 1
  store %struct.Memory* %loadMem_43e3fd, %struct.Memory** %MEMORY
  %loadMem_43e400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 33
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %PC.i1108 = bitcast %union.anon* %1900 to i64*
  %1901 = load i64, i64* %PC.i1108
  %1902 = add i64 %1901, 27
  %1903 = load i64, i64* %PC.i1108
  %1904 = add i64 %1903, 6
  %1905 = load i64, i64* %PC.i1108
  %1906 = add i64 %1905, 6
  store i64 %1906, i64* %PC.i1108
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1908 = load i8, i8* %1907, align 1
  store i8 %1908, i8* %BRANCH_TAKEN, align 1
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1910 = icmp ne i8 %1908, 0
  %1911 = select i1 %1910, i64 %1902, i64 %1904
  store i64 %1911, i64* %1909, align 8
  store %struct.Memory* %loadMem_43e400, %struct.Memory** %MEMORY
  %loadBr_43e400 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e400 = icmp eq i8 %loadBr_43e400, 1
  br i1 %cmpBr_43e400, label %block_.L_43e41b, label %block_43e406

block_43e406:                                     ; preds = %block_43e3f1
  %loadMem_43e406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 33
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %PC.i1105 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 1
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RAX.i1106 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 15
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RBP.i1107 = bitcast %union.anon* %1920 to i64*
  %1921 = load i64, i64* %RBP.i1107
  %1922 = sub i64 %1921, 32
  %1923 = load i64, i64* %PC.i1105
  %1924 = add i64 %1923, 4
  store i64 %1924, i64* %PC.i1105
  %1925 = inttoptr i64 %1922 to i64*
  %1926 = load i64, i64* %1925
  store i64 %1926, i64* %RAX.i1106, align 8
  store %struct.Memory* %loadMem_43e406, %struct.Memory** %MEMORY
  %loadMem_43e40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 33
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %PC.i1102 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 5
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RCX.i1103 = bitcast %union.anon* %1932 to i64*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 15
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %RBP.i1104 = bitcast %union.anon* %1935 to i64*
  %1936 = load i64, i64* %RBP.i1104
  %1937 = sub i64 %1936, 80
  %1938 = load i64, i64* %PC.i1102
  %1939 = add i64 %1938, 4
  store i64 %1939, i64* %PC.i1102
  %1940 = inttoptr i64 %1937 to i32*
  %1941 = load i32, i32* %1940
  %1942 = sext i32 %1941 to i64
  store i64 %1942, i64* %RCX.i1103, align 8
  store %struct.Memory* %loadMem_43e40a, %struct.Memory** %MEMORY
  %loadMem_43e40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 33
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %PC.i1098 = bitcast %union.anon* %1945 to i64*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 1
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RAX.i1099 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 5
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %RCX.i1100 = bitcast %union.anon* %1951 to i64*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 7
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %RDX.i1101 = bitcast %union.anon* %1954 to i64*
  %1955 = load i64, i64* %RAX.i1099
  %1956 = load i64, i64* %RCX.i1100
  %1957 = add i64 %1956, %1955
  %1958 = load i64, i64* %PC.i1098
  %1959 = add i64 %1958, 4
  store i64 %1959, i64* %PC.i1098
  %1960 = inttoptr i64 %1957 to i8*
  %1961 = load i8, i8* %1960
  %1962 = sext i8 %1961 to i64
  %1963 = and i64 %1962, 4294967295
  store i64 %1963, i64* %RDX.i1101, align 8
  store %struct.Memory* %loadMem_43e40e, %struct.Memory** %MEMORY
  %loadMem_43e412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i1096 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 7
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %EDX.i1097 = bitcast %union.anon* %1969 to i32*
  %1970 = load i32, i32* %EDX.i1097
  %1971 = zext i32 %1970 to i64
  %1972 = load i64, i64* %PC.i1096
  %1973 = add i64 %1972, 3
  store i64 %1973, i64* %PC.i1096
  %1974 = sub i32 %1970, 126
  %1975 = icmp ult i32 %1970, 126
  %1976 = zext i1 %1975 to i8
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1976, i8* %1977, align 1
  %1978 = and i32 %1974, 255
  %1979 = call i32 @llvm.ctpop.i32(i32 %1978)
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1982, i8* %1983, align 1
  %1984 = xor i64 126, %1971
  %1985 = trunc i64 %1984 to i32
  %1986 = xor i32 %1985, %1974
  %1987 = lshr i32 %1986, 4
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1989, i8* %1990, align 1
  %1991 = icmp eq i32 %1974, 0
  %1992 = zext i1 %1991 to i8
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1992, i8* %1993, align 1
  %1994 = lshr i32 %1974, 31
  %1995 = trunc i32 %1994 to i8
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1995, i8* %1996, align 1
  %1997 = lshr i32 %1970, 31
  %1998 = xor i32 %1994, %1997
  %1999 = add i32 %1998, %1997
  %2000 = icmp eq i32 %1999, 2
  %2001 = zext i1 %2000 to i8
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2001, i8* %2002, align 1
  store %struct.Memory* %loadMem_43e412, %struct.Memory** %MEMORY
  %loadMem_43e415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 33
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %PC.i1095 = bitcast %union.anon* %2005 to i64*
  %2006 = load i64, i64* %PC.i1095
  %2007 = add i64 %2006, 11
  %2008 = load i64, i64* %PC.i1095
  %2009 = add i64 %2008, 6
  %2010 = load i64, i64* %PC.i1095
  %2011 = add i64 %2010, 6
  store i64 %2011, i64* %PC.i1095
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2013 = load i8, i8* %2012, align 1
  %2014 = icmp eq i8 %2013, 0
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %BRANCH_TAKEN, align 1
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2017 = select i1 %2014, i64 %2007, i64 %2009
  store i64 %2017, i64* %2016, align 8
  store %struct.Memory* %loadMem_43e415, %struct.Memory** %MEMORY
  %loadBr_43e415 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e415 = icmp eq i8 %loadBr_43e415, 1
  br i1 %cmpBr_43e415, label %block_.L_43e420, label %block_.L_43e41b

block_.L_43e41b:                                  ; preds = %block_43e406, %block_43e3f1, %block_43e3dc, %block_43e3c7, %block_.L_43e3b2
  %loadMem_43e41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 33
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %PC.i1094 = bitcast %union.anon* %2020 to i64*
  %2021 = load i64, i64* %PC.i1094
  %2022 = add i64 %2021, 524
  %2023 = load i64, i64* %PC.i1094
  %2024 = add i64 %2023, 5
  store i64 %2024, i64* %PC.i1094
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2022, i64* %2025, align 8
  store %struct.Memory* %loadMem_43e41b, %struct.Memory** %MEMORY
  br label %block_.L_43e627

block_.L_43e420:                                  ; preds = %block_43e406, %block_43e39d
  %loadMem_43e420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i1091 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 1
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RAX.i1092 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 15
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RBP.i1093 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %RBP.i1093
  %2036 = sub i64 %2035, 24
  %2037 = load i64, i64* %PC.i1091
  %2038 = add i64 %2037, 4
  store i64 %2038, i64* %PC.i1091
  %2039 = inttoptr i64 %2036 to i64*
  %2040 = load i64, i64* %2039
  store i64 %2040, i64* %RAX.i1092, align 8
  store %struct.Memory* %loadMem_43e420, %struct.Memory** %MEMORY
  %loadMem_43e424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i1088 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 5
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RCX.i1089 = bitcast %union.anon* %2046 to i64*
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 15
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %RBP.i1090 = bitcast %union.anon* %2049 to i64*
  %2050 = load i64, i64* %RBP.i1090
  %2051 = sub i64 %2050, 80
  %2052 = load i64, i64* %PC.i1088
  %2053 = add i64 %2052, 4
  store i64 %2053, i64* %PC.i1088
  %2054 = inttoptr i64 %2051 to i32*
  %2055 = load i32, i32* %2054
  %2056 = sext i32 %2055 to i64
  store i64 %2056, i64* %RCX.i1089, align 8
  store %struct.Memory* %loadMem_43e424, %struct.Memory** %MEMORY
  %loadMem_43e428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i1084 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 1
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RAX.i1085 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 5
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RCX.i1086 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 7
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %RDX.i1087 = bitcast %union.anon* %2068 to i64*
  %2069 = load i64, i64* %RAX.i1085
  %2070 = load i64, i64* %RCX.i1086
  %2071 = add i64 %2070, %2069
  %2072 = load i64, i64* %PC.i1084
  %2073 = add i64 %2072, 4
  store i64 %2073, i64* %PC.i1084
  %2074 = inttoptr i64 %2071 to i8*
  %2075 = load i8, i8* %2074
  %2076 = sext i8 %2075 to i64
  %2077 = and i64 %2076, 4294967295
  store i64 %2077, i64* %RDX.i1087, align 8
  store %struct.Memory* %loadMem_43e428, %struct.Memory** %MEMORY
  %loadMem_43e42c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 33
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %PC.i1082 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 7
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %EDX.i1083 = bitcast %union.anon* %2083 to i32*
  %2084 = load i32, i32* %EDX.i1083
  %2085 = zext i32 %2084 to i64
  %2086 = load i64, i64* %PC.i1082
  %2087 = add i64 %2086, 3
  store i64 %2087, i64* %PC.i1082
  %2088 = sub i32 %2084, 32
  %2089 = icmp ult i32 %2084, 32
  %2090 = zext i1 %2089 to i8
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2090, i8* %2091, align 1
  %2092 = and i32 %2088, 255
  %2093 = call i32 @llvm.ctpop.i32(i32 %2092)
  %2094 = trunc i32 %2093 to i8
  %2095 = and i8 %2094, 1
  %2096 = xor i8 %2095, 1
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2096, i8* %2097, align 1
  %2098 = xor i64 32, %2085
  %2099 = trunc i64 %2098 to i32
  %2100 = xor i32 %2099, %2088
  %2101 = lshr i32 %2100, 4
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2103, i8* %2104, align 1
  %2105 = icmp eq i32 %2088, 0
  %2106 = zext i1 %2105 to i8
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2106, i8* %2107, align 1
  %2108 = lshr i32 %2088, 31
  %2109 = trunc i32 %2108 to i8
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2109, i8* %2110, align 1
  %2111 = lshr i32 %2084, 31
  %2112 = xor i32 %2108, %2111
  %2113 = add i32 %2112, %2111
  %2114 = icmp eq i32 %2113, 2
  %2115 = zext i1 %2114 to i8
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2115, i8* %2116, align 1
  store %struct.Memory* %loadMem_43e42c, %struct.Memory** %MEMORY
  %loadMem_43e42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 33
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %PC.i1081 = bitcast %union.anon* %2119 to i64*
  %2120 = load i64, i64* %PC.i1081
  %2121 = add i64 %2120, 223
  %2122 = load i64, i64* %PC.i1081
  %2123 = add i64 %2122, 6
  %2124 = load i64, i64* %PC.i1081
  %2125 = add i64 %2124, 6
  store i64 %2125, i64* %PC.i1081
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2127 = load i8, i8* %2126, align 1
  store i8 %2127, i8* %BRANCH_TAKEN, align 1
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2129 = icmp ne i8 %2127, 0
  %2130 = select i1 %2129, i64 %2121, i64 %2123
  store i64 %2130, i64* %2128, align 8
  store %struct.Memory* %loadMem_43e42f, %struct.Memory** %MEMORY
  %loadBr_43e42f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e42f = icmp eq i8 %loadBr_43e42f, 1
  br i1 %cmpBr_43e42f, label %block_.L_43e50e, label %block_43e435

block_43e435:                                     ; preds = %block_.L_43e420
  %loadMem_43e435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 33
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %PC.i1078 = bitcast %union.anon* %2133 to i64*
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 1
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %RAX.i1079 = bitcast %union.anon* %2136 to i64*
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 15
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %RBP.i1080 = bitcast %union.anon* %2139 to i64*
  %2140 = load i64, i64* %RBP.i1080
  %2141 = sub i64 %2140, 24
  %2142 = load i64, i64* %PC.i1078
  %2143 = add i64 %2142, 4
  store i64 %2143, i64* %PC.i1078
  %2144 = inttoptr i64 %2141 to i64*
  %2145 = load i64, i64* %2144
  store i64 %2145, i64* %RAX.i1079, align 8
  store %struct.Memory* %loadMem_43e435, %struct.Memory** %MEMORY
  %loadMem_43e439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 33
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %PC.i1075 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 5
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RCX.i1076 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 15
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RBP.i1077 = bitcast %union.anon* %2154 to i64*
  %2155 = load i64, i64* %RBP.i1077
  %2156 = sub i64 %2155, 80
  %2157 = load i64, i64* %PC.i1075
  %2158 = add i64 %2157, 4
  store i64 %2158, i64* %PC.i1075
  %2159 = inttoptr i64 %2156 to i32*
  %2160 = load i32, i32* %2159
  %2161 = sext i32 %2160 to i64
  store i64 %2161, i64* %RCX.i1076, align 8
  store %struct.Memory* %loadMem_43e439, %struct.Memory** %MEMORY
  %loadMem_43e43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i1071 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 1
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RAX.i1072 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 5
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RCX.i1073 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 7
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %RDX.i1074 = bitcast %union.anon* %2173 to i64*
  %2174 = load i64, i64* %RAX.i1072
  %2175 = load i64, i64* %RCX.i1073
  %2176 = add i64 %2175, %2174
  %2177 = load i64, i64* %PC.i1071
  %2178 = add i64 %2177, 4
  store i64 %2178, i64* %PC.i1071
  %2179 = inttoptr i64 %2176 to i8*
  %2180 = load i8, i8* %2179
  %2181 = sext i8 %2180 to i64
  %2182 = and i64 %2181, 4294967295
  store i64 %2182, i64* %RDX.i1074, align 8
  store %struct.Memory* %loadMem_43e43d, %struct.Memory** %MEMORY
  %loadMem_43e441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 33
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %PC.i1069 = bitcast %union.anon* %2185 to i64*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 7
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %EDX.i1070 = bitcast %union.anon* %2188 to i32*
  %2189 = load i32, i32* %EDX.i1070
  %2190 = zext i32 %2189 to i64
  %2191 = load i64, i64* %PC.i1069
  %2192 = add i64 %2191, 3
  store i64 %2192, i64* %PC.i1069
  %2193 = sub i32 %2189, 46
  %2194 = icmp ult i32 %2189, 46
  %2195 = zext i1 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2195, i8* %2196, align 1
  %2197 = and i32 %2193, 255
  %2198 = call i32 @llvm.ctpop.i32(i32 %2197)
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2201, i8* %2202, align 1
  %2203 = xor i64 46, %2190
  %2204 = trunc i64 %2203 to i32
  %2205 = xor i32 %2204, %2193
  %2206 = lshr i32 %2205, 4
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2208, i8* %2209, align 1
  %2210 = icmp eq i32 %2193, 0
  %2211 = zext i1 %2210 to i8
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2211, i8* %2212, align 1
  %2213 = lshr i32 %2193, 31
  %2214 = trunc i32 %2213 to i8
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2214, i8* %2215, align 1
  %2216 = lshr i32 %2189, 31
  %2217 = xor i32 %2213, %2216
  %2218 = add i32 %2217, %2216
  %2219 = icmp eq i32 %2218, 2
  %2220 = zext i1 %2219 to i8
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2220, i8* %2221, align 1
  store %struct.Memory* %loadMem_43e441, %struct.Memory** %MEMORY
  %loadMem_43e444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 33
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %PC.i1068 = bitcast %union.anon* %2224 to i64*
  %2225 = load i64, i64* %PC.i1068
  %2226 = add i64 %2225, 202
  %2227 = load i64, i64* %PC.i1068
  %2228 = add i64 %2227, 6
  %2229 = load i64, i64* %PC.i1068
  %2230 = add i64 %2229, 6
  store i64 %2230, i64* %PC.i1068
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2232 = load i8, i8* %2231, align 1
  store i8 %2232, i8* %BRANCH_TAKEN, align 1
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2234 = icmp ne i8 %2232, 0
  %2235 = select i1 %2234, i64 %2226, i64 %2228
  store i64 %2235, i64* %2233, align 8
  store %struct.Memory* %loadMem_43e444, %struct.Memory** %MEMORY
  %loadBr_43e444 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e444 = icmp eq i8 %loadBr_43e444, 1
  br i1 %cmpBr_43e444, label %block_.L_43e50e, label %block_43e44a

block_43e44a:                                     ; preds = %block_43e435
  %loadMem_43e44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 33
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %PC.i1065 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 1
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RAX.i1066 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 15
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %RBP.i1067 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %RBP.i1067
  %2246 = sub i64 %2245, 24
  %2247 = load i64, i64* %PC.i1065
  %2248 = add i64 %2247, 4
  store i64 %2248, i64* %PC.i1065
  %2249 = inttoptr i64 %2246 to i64*
  %2250 = load i64, i64* %2249
  store i64 %2250, i64* %RAX.i1066, align 8
  store %struct.Memory* %loadMem_43e44a, %struct.Memory** %MEMORY
  %loadMem_43e44e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 33
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %PC.i1062 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 5
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %RCX.i1063 = bitcast %union.anon* %2256 to i64*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 15
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RBP.i1064 = bitcast %union.anon* %2259 to i64*
  %2260 = load i64, i64* %RBP.i1064
  %2261 = sub i64 %2260, 80
  %2262 = load i64, i64* %PC.i1062
  %2263 = add i64 %2262, 4
  store i64 %2263, i64* %PC.i1062
  %2264 = inttoptr i64 %2261 to i32*
  %2265 = load i32, i32* %2264
  %2266 = sext i32 %2265 to i64
  store i64 %2266, i64* %RCX.i1063, align 8
  store %struct.Memory* %loadMem_43e44e, %struct.Memory** %MEMORY
  %loadMem_43e452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i1058 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 1
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RAX.i1059 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 5
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RCX.i1060 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 7
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %RDX.i1061 = bitcast %union.anon* %2278 to i64*
  %2279 = load i64, i64* %RAX.i1059
  %2280 = load i64, i64* %RCX.i1060
  %2281 = add i64 %2280, %2279
  %2282 = load i64, i64* %PC.i1058
  %2283 = add i64 %2282, 4
  store i64 %2283, i64* %PC.i1058
  %2284 = inttoptr i64 %2281 to i8*
  %2285 = load i8, i8* %2284
  %2286 = sext i8 %2285 to i64
  %2287 = and i64 %2286, 4294967295
  store i64 %2287, i64* %RDX.i1061, align 8
  store %struct.Memory* %loadMem_43e452, %struct.Memory** %MEMORY
  %loadMem_43e456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 33
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %PC.i1056 = bitcast %union.anon* %2290 to i64*
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 7
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %EDX.i1057 = bitcast %union.anon* %2293 to i32*
  %2294 = load i32, i32* %EDX.i1057
  %2295 = zext i32 %2294 to i64
  %2296 = load i64, i64* %PC.i1056
  %2297 = add i64 %2296, 3
  store i64 %2297, i64* %PC.i1056
  %2298 = sub i32 %2294, 95
  %2299 = icmp ult i32 %2294, 95
  %2300 = zext i1 %2299 to i8
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2300, i8* %2301, align 1
  %2302 = and i32 %2298, 255
  %2303 = call i32 @llvm.ctpop.i32(i32 %2302)
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  %2306 = xor i8 %2305, 1
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2306, i8* %2307, align 1
  %2308 = xor i64 95, %2295
  %2309 = trunc i64 %2308 to i32
  %2310 = xor i32 %2309, %2298
  %2311 = lshr i32 %2310, 4
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2313, i8* %2314, align 1
  %2315 = icmp eq i32 %2298, 0
  %2316 = zext i1 %2315 to i8
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2316, i8* %2317, align 1
  %2318 = lshr i32 %2298, 31
  %2319 = trunc i32 %2318 to i8
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2319, i8* %2320, align 1
  %2321 = lshr i32 %2294, 31
  %2322 = xor i32 %2318, %2321
  %2323 = add i32 %2322, %2321
  %2324 = icmp eq i32 %2323, 2
  %2325 = zext i1 %2324 to i8
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2325, i8* %2326, align 1
  store %struct.Memory* %loadMem_43e456, %struct.Memory** %MEMORY
  %loadMem_43e459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i1055 = bitcast %union.anon* %2329 to i64*
  %2330 = load i64, i64* %PC.i1055
  %2331 = add i64 %2330, 181
  %2332 = load i64, i64* %PC.i1055
  %2333 = add i64 %2332, 6
  %2334 = load i64, i64* %PC.i1055
  %2335 = add i64 %2334, 6
  store i64 %2335, i64* %PC.i1055
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2337 = load i8, i8* %2336, align 1
  store i8 %2337, i8* %BRANCH_TAKEN, align 1
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2339 = icmp ne i8 %2337, 0
  %2340 = select i1 %2339, i64 %2331, i64 %2333
  store i64 %2340, i64* %2338, align 8
  store %struct.Memory* %loadMem_43e459, %struct.Memory** %MEMORY
  %loadBr_43e459 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e459 = icmp eq i8 %loadBr_43e459, 1
  br i1 %cmpBr_43e459, label %block_.L_43e50e, label %block_43e45f

block_43e45f:                                     ; preds = %block_43e44a
  %loadMem_43e45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 33
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %PC.i1052 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 1
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %RAX.i1053 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 15
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %RBP.i1054 = bitcast %union.anon* %2349 to i64*
  %2350 = load i64, i64* %RBP.i1054
  %2351 = sub i64 %2350, 24
  %2352 = load i64, i64* %PC.i1052
  %2353 = add i64 %2352, 4
  store i64 %2353, i64* %PC.i1052
  %2354 = inttoptr i64 %2351 to i64*
  %2355 = load i64, i64* %2354
  store i64 %2355, i64* %RAX.i1053, align 8
  store %struct.Memory* %loadMem_43e45f, %struct.Memory** %MEMORY
  %loadMem_43e463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i1049 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 5
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RCX.i1050 = bitcast %union.anon* %2361 to i64*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 15
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %RBP.i1051 = bitcast %union.anon* %2364 to i64*
  %2365 = load i64, i64* %RBP.i1051
  %2366 = sub i64 %2365, 80
  %2367 = load i64, i64* %PC.i1049
  %2368 = add i64 %2367, 4
  store i64 %2368, i64* %PC.i1049
  %2369 = inttoptr i64 %2366 to i32*
  %2370 = load i32, i32* %2369
  %2371 = sext i32 %2370 to i64
  store i64 %2371, i64* %RCX.i1050, align 8
  store %struct.Memory* %loadMem_43e463, %struct.Memory** %MEMORY
  %loadMem_43e467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 33
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %PC.i1045 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 1
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RAX.i1046 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 5
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RCX.i1047 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 7
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RDX.i1048 = bitcast %union.anon* %2383 to i64*
  %2384 = load i64, i64* %RAX.i1046
  %2385 = load i64, i64* %RCX.i1047
  %2386 = add i64 %2385, %2384
  %2387 = load i64, i64* %PC.i1045
  %2388 = add i64 %2387, 4
  store i64 %2388, i64* %PC.i1045
  %2389 = inttoptr i64 %2386 to i8*
  %2390 = load i8, i8* %2389
  %2391 = sext i8 %2390 to i64
  %2392 = and i64 %2391, 4294967295
  store i64 %2392, i64* %RDX.i1048, align 8
  store %struct.Memory* %loadMem_43e467, %struct.Memory** %MEMORY
  %loadMem_43e46b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i1043 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 7
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %EDX.i1044 = bitcast %union.anon* %2398 to i32*
  %2399 = load i32, i32* %EDX.i1044
  %2400 = zext i32 %2399 to i64
  %2401 = load i64, i64* %PC.i1043
  %2402 = add i64 %2401, 3
  store i64 %2402, i64* %PC.i1043
  %2403 = sub i32 %2399, 45
  %2404 = icmp ult i32 %2399, 45
  %2405 = zext i1 %2404 to i8
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2405, i8* %2406, align 1
  %2407 = and i32 %2403, 255
  %2408 = call i32 @llvm.ctpop.i32(i32 %2407)
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  %2411 = xor i8 %2410, 1
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2411, i8* %2412, align 1
  %2413 = xor i64 45, %2400
  %2414 = trunc i64 %2413 to i32
  %2415 = xor i32 %2414, %2403
  %2416 = lshr i32 %2415, 4
  %2417 = trunc i32 %2416 to i8
  %2418 = and i8 %2417, 1
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2418, i8* %2419, align 1
  %2420 = icmp eq i32 %2403, 0
  %2421 = zext i1 %2420 to i8
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2421, i8* %2422, align 1
  %2423 = lshr i32 %2403, 31
  %2424 = trunc i32 %2423 to i8
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2424, i8* %2425, align 1
  %2426 = lshr i32 %2399, 31
  %2427 = xor i32 %2423, %2426
  %2428 = add i32 %2427, %2426
  %2429 = icmp eq i32 %2428, 2
  %2430 = zext i1 %2429 to i8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2430, i8* %2431, align 1
  store %struct.Memory* %loadMem_43e46b, %struct.Memory** %MEMORY
  %loadMem_43e46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i1042 = bitcast %union.anon* %2434 to i64*
  %2435 = load i64, i64* %PC.i1042
  %2436 = add i64 %2435, 160
  %2437 = load i64, i64* %PC.i1042
  %2438 = add i64 %2437, 6
  %2439 = load i64, i64* %PC.i1042
  %2440 = add i64 %2439, 6
  store i64 %2440, i64* %PC.i1042
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2442 = load i8, i8* %2441, align 1
  store i8 %2442, i8* %BRANCH_TAKEN, align 1
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2444 = icmp ne i8 %2442, 0
  %2445 = select i1 %2444, i64 %2436, i64 %2438
  store i64 %2445, i64* %2443, align 8
  store %struct.Memory* %loadMem_43e46e, %struct.Memory** %MEMORY
  %loadBr_43e46e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e46e = icmp eq i8 %loadBr_43e46e, 1
  br i1 %cmpBr_43e46e, label %block_.L_43e50e, label %block_43e474

block_43e474:                                     ; preds = %block_43e45f
  %loadMem_43e474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i1039 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 1
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RAX.i1040 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 15
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %RBP.i1041 = bitcast %union.anon* %2454 to i64*
  %2455 = load i64, i64* %RBP.i1041
  %2456 = sub i64 %2455, 24
  %2457 = load i64, i64* %PC.i1039
  %2458 = add i64 %2457, 4
  store i64 %2458, i64* %PC.i1039
  %2459 = inttoptr i64 %2456 to i64*
  %2460 = load i64, i64* %2459
  store i64 %2460, i64* %RAX.i1040, align 8
  store %struct.Memory* %loadMem_43e474, %struct.Memory** %MEMORY
  %loadMem_43e478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i1036 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 5
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RCX.i1037 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 15
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RBP.i1038 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RBP.i1038
  %2471 = sub i64 %2470, 80
  %2472 = load i64, i64* %PC.i1036
  %2473 = add i64 %2472, 4
  store i64 %2473, i64* %PC.i1036
  %2474 = inttoptr i64 %2471 to i32*
  %2475 = load i32, i32* %2474
  %2476 = sext i32 %2475 to i64
  store i64 %2476, i64* %RCX.i1037, align 8
  store %struct.Memory* %loadMem_43e478, %struct.Memory** %MEMORY
  %loadMem_43e47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 33
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %PC.i1032 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 1
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RAX.i1033 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 5
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RCX.i1034 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 7
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RDX.i1035 = bitcast %union.anon* %2488 to i64*
  %2489 = load i64, i64* %RAX.i1033
  %2490 = load i64, i64* %RCX.i1034
  %2491 = add i64 %2490, %2489
  %2492 = load i64, i64* %PC.i1032
  %2493 = add i64 %2492, 4
  store i64 %2493, i64* %PC.i1032
  %2494 = inttoptr i64 %2491 to i8*
  %2495 = load i8, i8* %2494
  %2496 = sext i8 %2495 to i64
  %2497 = and i64 %2496, 4294967295
  store i64 %2497, i64* %RDX.i1035, align 8
  store %struct.Memory* %loadMem_43e47c, %struct.Memory** %MEMORY
  %loadMem_43e480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i1030 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 7
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %EDX.i1031 = bitcast %union.anon* %2503 to i32*
  %2504 = load i32, i32* %EDX.i1031
  %2505 = zext i32 %2504 to i64
  %2506 = load i64, i64* %PC.i1030
  %2507 = add i64 %2506, 3
  store i64 %2507, i64* %PC.i1030
  %2508 = sub i32 %2504, 126
  %2509 = icmp ult i32 %2504, 126
  %2510 = zext i1 %2509 to i8
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2510, i8* %2511, align 1
  %2512 = and i32 %2508, 255
  %2513 = call i32 @llvm.ctpop.i32(i32 %2512)
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  %2516 = xor i8 %2515, 1
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2516, i8* %2517, align 1
  %2518 = xor i64 126, %2505
  %2519 = trunc i64 %2518 to i32
  %2520 = xor i32 %2519, %2508
  %2521 = lshr i32 %2520, 4
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2523, i8* %2524, align 1
  %2525 = icmp eq i32 %2508, 0
  %2526 = zext i1 %2525 to i8
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2526, i8* %2527, align 1
  %2528 = lshr i32 %2508, 31
  %2529 = trunc i32 %2528 to i8
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2529, i8* %2530, align 1
  %2531 = lshr i32 %2504, 31
  %2532 = xor i32 %2528, %2531
  %2533 = add i32 %2532, %2531
  %2534 = icmp eq i32 %2533, 2
  %2535 = zext i1 %2534 to i8
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2535, i8* %2536, align 1
  store %struct.Memory* %loadMem_43e480, %struct.Memory** %MEMORY
  %loadMem_43e483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 33
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %PC.i1029 = bitcast %union.anon* %2539 to i64*
  %2540 = load i64, i64* %PC.i1029
  %2541 = add i64 %2540, 139
  %2542 = load i64, i64* %PC.i1029
  %2543 = add i64 %2542, 6
  %2544 = load i64, i64* %PC.i1029
  %2545 = add i64 %2544, 6
  store i64 %2545, i64* %PC.i1029
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2547 = load i8, i8* %2546, align 1
  store i8 %2547, i8* %BRANCH_TAKEN, align 1
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2549 = icmp ne i8 %2547, 0
  %2550 = select i1 %2549, i64 %2541, i64 %2543
  store i64 %2550, i64* %2548, align 8
  store %struct.Memory* %loadMem_43e483, %struct.Memory** %MEMORY
  %loadBr_43e483 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e483 = icmp eq i8 %loadBr_43e483, 1
  br i1 %cmpBr_43e483, label %block_.L_43e50e, label %block_43e489

block_43e489:                                     ; preds = %block_43e474
  %loadMem_43e489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 33
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %PC.i1026 = bitcast %union.anon* %2553 to i64*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 1
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %RAX.i1027 = bitcast %union.anon* %2556 to i64*
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 15
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %RBP.i1028 = bitcast %union.anon* %2559 to i64*
  %2560 = load i64, i64* %RBP.i1028
  %2561 = sub i64 %2560, 32
  %2562 = load i64, i64* %PC.i1026
  %2563 = add i64 %2562, 4
  store i64 %2563, i64* %PC.i1026
  %2564 = inttoptr i64 %2561 to i64*
  %2565 = load i64, i64* %2564
  store i64 %2565, i64* %RAX.i1027, align 8
  store %struct.Memory* %loadMem_43e489, %struct.Memory** %MEMORY
  %loadMem_43e48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 33
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %PC.i1023 = bitcast %union.anon* %2568 to i64*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 5
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %RCX.i1024 = bitcast %union.anon* %2571 to i64*
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 15
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %RBP.i1025 = bitcast %union.anon* %2574 to i64*
  %2575 = load i64, i64* %RBP.i1025
  %2576 = sub i64 %2575, 80
  %2577 = load i64, i64* %PC.i1023
  %2578 = add i64 %2577, 4
  store i64 %2578, i64* %PC.i1023
  %2579 = inttoptr i64 %2576 to i32*
  %2580 = load i32, i32* %2579
  %2581 = sext i32 %2580 to i64
  store i64 %2581, i64* %RCX.i1024, align 8
  store %struct.Memory* %loadMem_43e48d, %struct.Memory** %MEMORY
  %loadMem_43e491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 33
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %PC.i1019 = bitcast %union.anon* %2584 to i64*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 1
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %RAX.i1020 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 5
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RCX.i1021 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 7
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %RDX.i1022 = bitcast %union.anon* %2593 to i64*
  %2594 = load i64, i64* %RAX.i1020
  %2595 = load i64, i64* %RCX.i1021
  %2596 = add i64 %2595, %2594
  %2597 = load i64, i64* %PC.i1019
  %2598 = add i64 %2597, 4
  store i64 %2598, i64* %PC.i1019
  %2599 = inttoptr i64 %2596 to i8*
  %2600 = load i8, i8* %2599
  %2601 = sext i8 %2600 to i64
  %2602 = and i64 %2601, 4294967295
  store i64 %2602, i64* %RDX.i1022, align 8
  store %struct.Memory* %loadMem_43e491, %struct.Memory** %MEMORY
  %loadMem_43e495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i1017 = bitcast %union.anon* %2605 to i64*
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 7
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %EDX.i1018 = bitcast %union.anon* %2608 to i32*
  %2609 = load i32, i32* %EDX.i1018
  %2610 = zext i32 %2609 to i64
  %2611 = load i64, i64* %PC.i1017
  %2612 = add i64 %2611, 3
  store i64 %2612, i64* %PC.i1017
  %2613 = sub i32 %2609, 32
  %2614 = icmp ult i32 %2609, 32
  %2615 = zext i1 %2614 to i8
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2615, i8* %2616, align 1
  %2617 = and i32 %2613, 255
  %2618 = call i32 @llvm.ctpop.i32(i32 %2617)
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  %2621 = xor i8 %2620, 1
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2621, i8* %2622, align 1
  %2623 = xor i64 32, %2610
  %2624 = trunc i64 %2623 to i32
  %2625 = xor i32 %2624, %2613
  %2626 = lshr i32 %2625, 4
  %2627 = trunc i32 %2626 to i8
  %2628 = and i8 %2627, 1
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2628, i8* %2629, align 1
  %2630 = icmp eq i32 %2613, 0
  %2631 = zext i1 %2630 to i8
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2631, i8* %2632, align 1
  %2633 = lshr i32 %2613, 31
  %2634 = trunc i32 %2633 to i8
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2634, i8* %2635, align 1
  %2636 = lshr i32 %2609, 31
  %2637 = xor i32 %2633, %2636
  %2638 = add i32 %2637, %2636
  %2639 = icmp eq i32 %2638, 2
  %2640 = zext i1 %2639 to i8
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2640, i8* %2641, align 1
  store %struct.Memory* %loadMem_43e495, %struct.Memory** %MEMORY
  %loadMem_43e498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 33
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %PC.i1016 = bitcast %union.anon* %2644 to i64*
  %2645 = load i64, i64* %PC.i1016
  %2646 = add i64 %2645, 118
  %2647 = load i64, i64* %PC.i1016
  %2648 = add i64 %2647, 6
  %2649 = load i64, i64* %PC.i1016
  %2650 = add i64 %2649, 6
  store i64 %2650, i64* %PC.i1016
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2652 = load i8, i8* %2651, align 1
  store i8 %2652, i8* %BRANCH_TAKEN, align 1
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2654 = icmp ne i8 %2652, 0
  %2655 = select i1 %2654, i64 %2646, i64 %2648
  store i64 %2655, i64* %2653, align 8
  store %struct.Memory* %loadMem_43e498, %struct.Memory** %MEMORY
  %loadBr_43e498 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e498 = icmp eq i8 %loadBr_43e498, 1
  br i1 %cmpBr_43e498, label %block_.L_43e50e, label %block_43e49e

block_43e49e:                                     ; preds = %block_43e489
  %loadMem_43e49e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 33
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %PC.i1013 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 1
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RAX.i1014 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 15
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RBP.i1015 = bitcast %union.anon* %2664 to i64*
  %2665 = load i64, i64* %RBP.i1015
  %2666 = sub i64 %2665, 32
  %2667 = load i64, i64* %PC.i1013
  %2668 = add i64 %2667, 4
  store i64 %2668, i64* %PC.i1013
  %2669 = inttoptr i64 %2666 to i64*
  %2670 = load i64, i64* %2669
  store i64 %2670, i64* %RAX.i1014, align 8
  store %struct.Memory* %loadMem_43e49e, %struct.Memory** %MEMORY
  %loadMem_43e4a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i1010 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 5
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %RCX.i1011 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 15
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RBP.i1012 = bitcast %union.anon* %2679 to i64*
  %2680 = load i64, i64* %RBP.i1012
  %2681 = sub i64 %2680, 80
  %2682 = load i64, i64* %PC.i1010
  %2683 = add i64 %2682, 4
  store i64 %2683, i64* %PC.i1010
  %2684 = inttoptr i64 %2681 to i32*
  %2685 = load i32, i32* %2684
  %2686 = sext i32 %2685 to i64
  store i64 %2686, i64* %RCX.i1011, align 8
  store %struct.Memory* %loadMem_43e4a2, %struct.Memory** %MEMORY
  %loadMem_43e4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 33
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %PC.i1006 = bitcast %union.anon* %2689 to i64*
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 1
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %RAX.i1007 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 5
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RCX.i1008 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 7
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %RDX.i1009 = bitcast %union.anon* %2698 to i64*
  %2699 = load i64, i64* %RAX.i1007
  %2700 = load i64, i64* %RCX.i1008
  %2701 = add i64 %2700, %2699
  %2702 = load i64, i64* %PC.i1006
  %2703 = add i64 %2702, 4
  store i64 %2703, i64* %PC.i1006
  %2704 = inttoptr i64 %2701 to i8*
  %2705 = load i8, i8* %2704
  %2706 = sext i8 %2705 to i64
  %2707 = and i64 %2706, 4294967295
  store i64 %2707, i64* %RDX.i1009, align 8
  store %struct.Memory* %loadMem_43e4a6, %struct.Memory** %MEMORY
  %loadMem_43e4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 33
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %PC.i1004 = bitcast %union.anon* %2710 to i64*
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 7
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %EDX.i1005 = bitcast %union.anon* %2713 to i32*
  %2714 = load i32, i32* %EDX.i1005
  %2715 = zext i32 %2714 to i64
  %2716 = load i64, i64* %PC.i1004
  %2717 = add i64 %2716, 3
  store i64 %2717, i64* %PC.i1004
  %2718 = sub i32 %2714, 46
  %2719 = icmp ult i32 %2714, 46
  %2720 = zext i1 %2719 to i8
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2720, i8* %2721, align 1
  %2722 = and i32 %2718, 255
  %2723 = call i32 @llvm.ctpop.i32(i32 %2722)
  %2724 = trunc i32 %2723 to i8
  %2725 = and i8 %2724, 1
  %2726 = xor i8 %2725, 1
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2726, i8* %2727, align 1
  %2728 = xor i64 46, %2715
  %2729 = trunc i64 %2728 to i32
  %2730 = xor i32 %2729, %2718
  %2731 = lshr i32 %2730, 4
  %2732 = trunc i32 %2731 to i8
  %2733 = and i8 %2732, 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2733, i8* %2734, align 1
  %2735 = icmp eq i32 %2718, 0
  %2736 = zext i1 %2735 to i8
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2736, i8* %2737, align 1
  %2738 = lshr i32 %2718, 31
  %2739 = trunc i32 %2738 to i8
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2739, i8* %2740, align 1
  %2741 = lshr i32 %2714, 31
  %2742 = xor i32 %2738, %2741
  %2743 = add i32 %2742, %2741
  %2744 = icmp eq i32 %2743, 2
  %2745 = zext i1 %2744 to i8
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2745, i8* %2746, align 1
  store %struct.Memory* %loadMem_43e4aa, %struct.Memory** %MEMORY
  %loadMem_43e4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 33
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %PC.i1003 = bitcast %union.anon* %2749 to i64*
  %2750 = load i64, i64* %PC.i1003
  %2751 = add i64 %2750, 97
  %2752 = load i64, i64* %PC.i1003
  %2753 = add i64 %2752, 6
  %2754 = load i64, i64* %PC.i1003
  %2755 = add i64 %2754, 6
  store i64 %2755, i64* %PC.i1003
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2757 = load i8, i8* %2756, align 1
  store i8 %2757, i8* %BRANCH_TAKEN, align 1
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2759 = icmp ne i8 %2757, 0
  %2760 = select i1 %2759, i64 %2751, i64 %2753
  store i64 %2760, i64* %2758, align 8
  store %struct.Memory* %loadMem_43e4ad, %struct.Memory** %MEMORY
  %loadBr_43e4ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e4ad = icmp eq i8 %loadBr_43e4ad, 1
  br i1 %cmpBr_43e4ad, label %block_.L_43e50e, label %block_43e4b3

block_43e4b3:                                     ; preds = %block_43e49e
  %loadMem_43e4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i1000 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 1
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RAX.i1001 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 15
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RBP.i1002 = bitcast %union.anon* %2769 to i64*
  %2770 = load i64, i64* %RBP.i1002
  %2771 = sub i64 %2770, 32
  %2772 = load i64, i64* %PC.i1000
  %2773 = add i64 %2772, 4
  store i64 %2773, i64* %PC.i1000
  %2774 = inttoptr i64 %2771 to i64*
  %2775 = load i64, i64* %2774
  store i64 %2775, i64* %RAX.i1001, align 8
  store %struct.Memory* %loadMem_43e4b3, %struct.Memory** %MEMORY
  %loadMem_43e4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 33
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %2778 to i64*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 5
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %RCX.i998 = bitcast %union.anon* %2781 to i64*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 15
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %RBP.i999 = bitcast %union.anon* %2784 to i64*
  %2785 = load i64, i64* %RBP.i999
  %2786 = sub i64 %2785, 80
  %2787 = load i64, i64* %PC.i997
  %2788 = add i64 %2787, 4
  store i64 %2788, i64* %PC.i997
  %2789 = inttoptr i64 %2786 to i32*
  %2790 = load i32, i32* %2789
  %2791 = sext i32 %2790 to i64
  store i64 %2791, i64* %RCX.i998, align 8
  store %struct.Memory* %loadMem_43e4b7, %struct.Memory** %MEMORY
  %loadMem_43e4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 33
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %PC.i993 = bitcast %union.anon* %2794 to i64*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2796 = getelementptr inbounds %struct.GPR, %struct.GPR* %2795, i32 0, i32 1
  %2797 = getelementptr inbounds %struct.Reg, %struct.Reg* %2796, i32 0, i32 0
  %RAX.i994 = bitcast %union.anon* %2797 to i64*
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 5
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %RCX.i995 = bitcast %union.anon* %2800 to i64*
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 7
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %RDX.i996 = bitcast %union.anon* %2803 to i64*
  %2804 = load i64, i64* %RAX.i994
  %2805 = load i64, i64* %RCX.i995
  %2806 = add i64 %2805, %2804
  %2807 = load i64, i64* %PC.i993
  %2808 = add i64 %2807, 4
  store i64 %2808, i64* %PC.i993
  %2809 = inttoptr i64 %2806 to i8*
  %2810 = load i8, i8* %2809
  %2811 = sext i8 %2810 to i64
  %2812 = and i64 %2811, 4294967295
  store i64 %2812, i64* %RDX.i996, align 8
  store %struct.Memory* %loadMem_43e4bb, %struct.Memory** %MEMORY
  %loadMem_43e4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 33
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %PC.i991 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 7
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %EDX.i992 = bitcast %union.anon* %2818 to i32*
  %2819 = load i32, i32* %EDX.i992
  %2820 = zext i32 %2819 to i64
  %2821 = load i64, i64* %PC.i991
  %2822 = add i64 %2821, 3
  store i64 %2822, i64* %PC.i991
  %2823 = sub i32 %2819, 95
  %2824 = icmp ult i32 %2819, 95
  %2825 = zext i1 %2824 to i8
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2825, i8* %2826, align 1
  %2827 = and i32 %2823, 255
  %2828 = call i32 @llvm.ctpop.i32(i32 %2827)
  %2829 = trunc i32 %2828 to i8
  %2830 = and i8 %2829, 1
  %2831 = xor i8 %2830, 1
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2831, i8* %2832, align 1
  %2833 = xor i64 95, %2820
  %2834 = trunc i64 %2833 to i32
  %2835 = xor i32 %2834, %2823
  %2836 = lshr i32 %2835, 4
  %2837 = trunc i32 %2836 to i8
  %2838 = and i8 %2837, 1
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2838, i8* %2839, align 1
  %2840 = icmp eq i32 %2823, 0
  %2841 = zext i1 %2840 to i8
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2841, i8* %2842, align 1
  %2843 = lshr i32 %2823, 31
  %2844 = trunc i32 %2843 to i8
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2844, i8* %2845, align 1
  %2846 = lshr i32 %2819, 31
  %2847 = xor i32 %2843, %2846
  %2848 = add i32 %2847, %2846
  %2849 = icmp eq i32 %2848, 2
  %2850 = zext i1 %2849 to i8
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2850, i8* %2851, align 1
  store %struct.Memory* %loadMem_43e4bf, %struct.Memory** %MEMORY
  %loadMem_43e4c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 33
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %PC.i990 = bitcast %union.anon* %2854 to i64*
  %2855 = load i64, i64* %PC.i990
  %2856 = add i64 %2855, 76
  %2857 = load i64, i64* %PC.i990
  %2858 = add i64 %2857, 6
  %2859 = load i64, i64* %PC.i990
  %2860 = add i64 %2859, 6
  store i64 %2860, i64* %PC.i990
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2862 = load i8, i8* %2861, align 1
  store i8 %2862, i8* %BRANCH_TAKEN, align 1
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2864 = icmp ne i8 %2862, 0
  %2865 = select i1 %2864, i64 %2856, i64 %2858
  store i64 %2865, i64* %2863, align 8
  store %struct.Memory* %loadMem_43e4c2, %struct.Memory** %MEMORY
  %loadBr_43e4c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e4c2 = icmp eq i8 %loadBr_43e4c2, 1
  br i1 %cmpBr_43e4c2, label %block_.L_43e50e, label %block_43e4c8

block_43e4c8:                                     ; preds = %block_43e4b3
  %loadMem_43e4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 33
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %PC.i987 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 1
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RAX.i988 = bitcast %union.anon* %2871 to i64*
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 15
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %RBP.i989 = bitcast %union.anon* %2874 to i64*
  %2875 = load i64, i64* %RBP.i989
  %2876 = sub i64 %2875, 32
  %2877 = load i64, i64* %PC.i987
  %2878 = add i64 %2877, 4
  store i64 %2878, i64* %PC.i987
  %2879 = inttoptr i64 %2876 to i64*
  %2880 = load i64, i64* %2879
  store i64 %2880, i64* %RAX.i988, align 8
  store %struct.Memory* %loadMem_43e4c8, %struct.Memory** %MEMORY
  %loadMem_43e4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 33
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %PC.i984 = bitcast %union.anon* %2883 to i64*
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 5
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %RCX.i985 = bitcast %union.anon* %2886 to i64*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 15
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %RBP.i986 = bitcast %union.anon* %2889 to i64*
  %2890 = load i64, i64* %RBP.i986
  %2891 = sub i64 %2890, 80
  %2892 = load i64, i64* %PC.i984
  %2893 = add i64 %2892, 4
  store i64 %2893, i64* %PC.i984
  %2894 = inttoptr i64 %2891 to i32*
  %2895 = load i32, i32* %2894
  %2896 = sext i32 %2895 to i64
  store i64 %2896, i64* %RCX.i985, align 8
  store %struct.Memory* %loadMem_43e4cc, %struct.Memory** %MEMORY
  %loadMem_43e4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 33
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 1
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RAX.i981 = bitcast %union.anon* %2902 to i64*
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 5
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %RCX.i982 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 7
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %RDX.i983 = bitcast %union.anon* %2908 to i64*
  %2909 = load i64, i64* %RAX.i981
  %2910 = load i64, i64* %RCX.i982
  %2911 = add i64 %2910, %2909
  %2912 = load i64, i64* %PC.i980
  %2913 = add i64 %2912, 4
  store i64 %2913, i64* %PC.i980
  %2914 = inttoptr i64 %2911 to i8*
  %2915 = load i8, i8* %2914
  %2916 = sext i8 %2915 to i64
  %2917 = and i64 %2916, 4294967295
  store i64 %2917, i64* %RDX.i983, align 8
  store %struct.Memory* %loadMem_43e4d0, %struct.Memory** %MEMORY
  %loadMem_43e4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i978 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 7
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %EDX.i979 = bitcast %union.anon* %2923 to i32*
  %2924 = load i32, i32* %EDX.i979
  %2925 = zext i32 %2924 to i64
  %2926 = load i64, i64* %PC.i978
  %2927 = add i64 %2926, 3
  store i64 %2927, i64* %PC.i978
  %2928 = sub i32 %2924, 45
  %2929 = icmp ult i32 %2924, 45
  %2930 = zext i1 %2929 to i8
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2930, i8* %2931, align 1
  %2932 = and i32 %2928, 255
  %2933 = call i32 @llvm.ctpop.i32(i32 %2932)
  %2934 = trunc i32 %2933 to i8
  %2935 = and i8 %2934, 1
  %2936 = xor i8 %2935, 1
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2936, i8* %2937, align 1
  %2938 = xor i64 45, %2925
  %2939 = trunc i64 %2938 to i32
  %2940 = xor i32 %2939, %2928
  %2941 = lshr i32 %2940, 4
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2943, i8* %2944, align 1
  %2945 = icmp eq i32 %2928, 0
  %2946 = zext i1 %2945 to i8
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2946, i8* %2947, align 1
  %2948 = lshr i32 %2928, 31
  %2949 = trunc i32 %2948 to i8
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2949, i8* %2950, align 1
  %2951 = lshr i32 %2924, 31
  %2952 = xor i32 %2948, %2951
  %2953 = add i32 %2952, %2951
  %2954 = icmp eq i32 %2953, 2
  %2955 = zext i1 %2954 to i8
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2955, i8* %2956, align 1
  store %struct.Memory* %loadMem_43e4d4, %struct.Memory** %MEMORY
  %loadMem_43e4d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 33
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %PC.i977 = bitcast %union.anon* %2959 to i64*
  %2960 = load i64, i64* %PC.i977
  %2961 = add i64 %2960, 55
  %2962 = load i64, i64* %PC.i977
  %2963 = add i64 %2962, 6
  %2964 = load i64, i64* %PC.i977
  %2965 = add i64 %2964, 6
  store i64 %2965, i64* %PC.i977
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2967 = load i8, i8* %2966, align 1
  store i8 %2967, i8* %BRANCH_TAKEN, align 1
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2969 = icmp ne i8 %2967, 0
  %2970 = select i1 %2969, i64 %2961, i64 %2963
  store i64 %2970, i64* %2968, align 8
  store %struct.Memory* %loadMem_43e4d7, %struct.Memory** %MEMORY
  %loadBr_43e4d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e4d7 = icmp eq i8 %loadBr_43e4d7, 1
  br i1 %cmpBr_43e4d7, label %block_.L_43e50e, label %block_43e4dd

block_43e4dd:                                     ; preds = %block_43e4c8
  %loadMem_43e4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 1
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RAX.i975 = bitcast %union.anon* %2976 to i64*
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 15
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %RBP.i976 = bitcast %union.anon* %2979 to i64*
  %2980 = load i64, i64* %RBP.i976
  %2981 = sub i64 %2980, 32
  %2982 = load i64, i64* %PC.i974
  %2983 = add i64 %2982, 4
  store i64 %2983, i64* %PC.i974
  %2984 = inttoptr i64 %2981 to i64*
  %2985 = load i64, i64* %2984
  store i64 %2985, i64* %RAX.i975, align 8
  store %struct.Memory* %loadMem_43e4dd, %struct.Memory** %MEMORY
  %loadMem_43e4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %2988 to i64*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 5
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RCX.i972 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 15
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RBP.i973 = bitcast %union.anon* %2994 to i64*
  %2995 = load i64, i64* %RBP.i973
  %2996 = sub i64 %2995, 80
  %2997 = load i64, i64* %PC.i971
  %2998 = add i64 %2997, 4
  store i64 %2998, i64* %PC.i971
  %2999 = inttoptr i64 %2996 to i32*
  %3000 = load i32, i32* %2999
  %3001 = sext i32 %3000 to i64
  store i64 %3001, i64* %RCX.i972, align 8
  store %struct.Memory* %loadMem_43e4e1, %struct.Memory** %MEMORY
  %loadMem_43e4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 33
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 1
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RAX.i968 = bitcast %union.anon* %3007 to i64*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 5
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %RCX.i969 = bitcast %union.anon* %3010 to i64*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 7
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %RDX.i970 = bitcast %union.anon* %3013 to i64*
  %3014 = load i64, i64* %RAX.i968
  %3015 = load i64, i64* %RCX.i969
  %3016 = add i64 %3015, %3014
  %3017 = load i64, i64* %PC.i967
  %3018 = add i64 %3017, 4
  store i64 %3018, i64* %PC.i967
  %3019 = inttoptr i64 %3016 to i8*
  %3020 = load i8, i8* %3019
  %3021 = sext i8 %3020 to i64
  %3022 = and i64 %3021, 4294967295
  store i64 %3022, i64* %RDX.i970, align 8
  store %struct.Memory* %loadMem_43e4e5, %struct.Memory** %MEMORY
  %loadMem_43e4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 33
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %PC.i965 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 7
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %EDX.i966 = bitcast %union.anon* %3028 to i32*
  %3029 = load i32, i32* %EDX.i966
  %3030 = zext i32 %3029 to i64
  %3031 = load i64, i64* %PC.i965
  %3032 = add i64 %3031, 3
  store i64 %3032, i64* %PC.i965
  %3033 = sub i32 %3029, 126
  %3034 = icmp ult i32 %3029, 126
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
  %3043 = xor i64 126, %3030
  %3044 = trunc i64 %3043 to i32
  %3045 = xor i32 %3044, %3033
  %3046 = lshr i32 %3045, 4
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3048, i8* %3049, align 1
  %3050 = icmp eq i32 %3033, 0
  %3051 = zext i1 %3050 to i8
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3051, i8* %3052, align 1
  %3053 = lshr i32 %3033, 31
  %3054 = trunc i32 %3053 to i8
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3054, i8* %3055, align 1
  %3056 = lshr i32 %3029, 31
  %3057 = xor i32 %3053, %3056
  %3058 = add i32 %3057, %3056
  %3059 = icmp eq i32 %3058, 2
  %3060 = zext i1 %3059 to i8
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3060, i8* %3061, align 1
  store %struct.Memory* %loadMem_43e4e9, %struct.Memory** %MEMORY
  %loadMem_43e4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %3064 to i64*
  %3065 = load i64, i64* %PC.i964
  %3066 = add i64 %3065, 34
  %3067 = load i64, i64* %PC.i964
  %3068 = add i64 %3067, 6
  %3069 = load i64, i64* %PC.i964
  %3070 = add i64 %3069, 6
  store i64 %3070, i64* %PC.i964
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3072 = load i8, i8* %3071, align 1
  store i8 %3072, i8* %BRANCH_TAKEN, align 1
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3074 = icmp ne i8 %3072, 0
  %3075 = select i1 %3074, i64 %3066, i64 %3068
  store i64 %3075, i64* %3073, align 8
  store %struct.Memory* %loadMem_43e4ec, %struct.Memory** %MEMORY
  %loadBr_43e4ec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e4ec = icmp eq i8 %loadBr_43e4ec, 1
  br i1 %cmpBr_43e4ec, label %block_.L_43e50e, label %block_43e4f2

block_43e4f2:                                     ; preds = %block_43e4dd
  %loadMem_43e4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 33
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %3078 to i64*
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 1
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %RAX.i962 = bitcast %union.anon* %3081 to i64*
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 15
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %RBP.i963 = bitcast %union.anon* %3084 to i64*
  %3085 = load i64, i64* %RBP.i963
  %3086 = sub i64 %3085, 80
  %3087 = load i64, i64* %PC.i961
  %3088 = add i64 %3087, 3
  store i64 %3088, i64* %PC.i961
  %3089 = inttoptr i64 %3086 to i32*
  %3090 = load i32, i32* %3089
  %3091 = zext i32 %3090 to i64
  store i64 %3091, i64* %RAX.i962, align 8
  store %struct.Memory* %loadMem_43e4f2, %struct.Memory** %MEMORY
  %loadMem_43e4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 33
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %3094 to i64*
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 5
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %RCX.i959 = bitcast %union.anon* %3097 to i64*
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 15
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %RBP.i960 = bitcast %union.anon* %3100 to i64*
  %3101 = load i64, i64* %RBP.i960
  %3102 = sub i64 %3101, 48
  %3103 = load i64, i64* %PC.i958
  %3104 = add i64 %3103, 4
  store i64 %3104, i64* %PC.i958
  %3105 = inttoptr i64 %3102 to i64*
  %3106 = load i64, i64* %3105
  store i64 %3106, i64* %RCX.i959, align 8
  store %struct.Memory* %loadMem_43e4f5, %struct.Memory** %MEMORY
  %loadMem_43e4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 33
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 7
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RDX.i956 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 15
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RBP.i957 = bitcast %union.anon* %3115 to i64*
  %3116 = load i64, i64* %RBP.i957
  %3117 = sub i64 %3116, 68
  %3118 = load i64, i64* %PC.i955
  %3119 = add i64 %3118, 4
  store i64 %3119, i64* %PC.i955
  %3120 = inttoptr i64 %3117 to i32*
  %3121 = load i32, i32* %3120
  %3122 = sext i32 %3121 to i64
  store i64 %3122, i64* %RDX.i956, align 8
  store %struct.Memory* %loadMem_43e4f9, %struct.Memory** %MEMORY
  %loadMem_43e4fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 33
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 1
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %EAX.i952 = bitcast %union.anon* %3128 to i32*
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 5
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %RCX.i953 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 7
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %RDX.i954 = bitcast %union.anon* %3134 to i64*
  %3135 = load i64, i64* %RCX.i953
  %3136 = load i64, i64* %RDX.i954
  %3137 = mul i64 %3136, 4
  %3138 = add i64 %3137, %3135
  %3139 = load i32, i32* %EAX.i952
  %3140 = zext i32 %3139 to i64
  %3141 = load i64, i64* %PC.i951
  %3142 = add i64 %3141, 3
  store i64 %3142, i64* %PC.i951
  %3143 = inttoptr i64 %3138 to i32*
  store i32 %3139, i32* %3143
  store %struct.Memory* %loadMem_43e4fd, %struct.Memory** %MEMORY
  %loadMem_43e500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 33
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %3146 to i64*
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 1
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %RAX.i949 = bitcast %union.anon* %3149 to i64*
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 15
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %RBP.i950 = bitcast %union.anon* %3152 to i64*
  %3153 = load i64, i64* %RBP.i950
  %3154 = sub i64 %3153, 68
  %3155 = load i64, i64* %PC.i948
  %3156 = add i64 %3155, 3
  store i64 %3156, i64* %PC.i948
  %3157 = inttoptr i64 %3154 to i32*
  %3158 = load i32, i32* %3157
  %3159 = zext i32 %3158 to i64
  store i64 %3159, i64* %RAX.i949, align 8
  store %struct.Memory* %loadMem_43e500, %struct.Memory** %MEMORY
  %loadMem_43e503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %3162 to i64*
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 1
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %RAX.i947 = bitcast %union.anon* %3165 to i64*
  %3166 = load i64, i64* %RAX.i947
  %3167 = load i64, i64* %PC.i946
  %3168 = add i64 %3167, 3
  store i64 %3168, i64* %PC.i946
  %3169 = trunc i64 %3166 to i32
  %3170 = add i32 1, %3169
  %3171 = zext i32 %3170 to i64
  store i64 %3171, i64* %RAX.i947, align 8
  %3172 = icmp ult i32 %3170, %3169
  %3173 = icmp ult i32 %3170, 1
  %3174 = or i1 %3172, %3173
  %3175 = zext i1 %3174 to i8
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3175, i8* %3176, align 1
  %3177 = and i32 %3170, 255
  %3178 = call i32 @llvm.ctpop.i32(i32 %3177)
  %3179 = trunc i32 %3178 to i8
  %3180 = and i8 %3179, 1
  %3181 = xor i8 %3180, 1
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3181, i8* %3182, align 1
  %3183 = xor i64 1, %3166
  %3184 = trunc i64 %3183 to i32
  %3185 = xor i32 %3184, %3170
  %3186 = lshr i32 %3185, 4
  %3187 = trunc i32 %3186 to i8
  %3188 = and i8 %3187, 1
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3188, i8* %3189, align 1
  %3190 = icmp eq i32 %3170, 0
  %3191 = zext i1 %3190 to i8
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3191, i8* %3192, align 1
  %3193 = lshr i32 %3170, 31
  %3194 = trunc i32 %3193 to i8
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3194, i8* %3195, align 1
  %3196 = lshr i32 %3169, 31
  %3197 = xor i32 %3193, %3196
  %3198 = add i32 %3197, %3193
  %3199 = icmp eq i32 %3198, 2
  %3200 = zext i1 %3199 to i8
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3200, i8* %3201, align 1
  store %struct.Memory* %loadMem_43e503, %struct.Memory** %MEMORY
  %loadMem_43e506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 33
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %3204 to i64*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 1
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %EAX.i944 = bitcast %union.anon* %3207 to i32*
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 15
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %RBP.i945 = bitcast %union.anon* %3210 to i64*
  %3211 = load i64, i64* %RBP.i945
  %3212 = sub i64 %3211, 68
  %3213 = load i32, i32* %EAX.i944
  %3214 = zext i32 %3213 to i64
  %3215 = load i64, i64* %PC.i943
  %3216 = add i64 %3215, 3
  store i64 %3216, i64* %PC.i943
  %3217 = inttoptr i64 %3212 to i32*
  store i32 %3213, i32* %3217
  store %struct.Memory* %loadMem_43e506, %struct.Memory** %MEMORY
  %loadMem_43e509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 33
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %3220 to i64*
  %3221 = load i64, i64* %PC.i942
  %3222 = add i64 %3221, 276
  %3223 = load i64, i64* %PC.i942
  %3224 = add i64 %3223, 5
  store i64 %3224, i64* %PC.i942
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3222, i64* %3225, align 8
  store %struct.Memory* %loadMem_43e509, %struct.Memory** %MEMORY
  br label %block_.L_43e61d

block_.L_43e50e:                                  ; preds = %block_43e4dd, %block_43e4c8, %block_43e4b3, %block_43e49e, %block_43e489, %block_43e474, %block_43e45f, %block_43e44a, %block_43e435, %block_.L_43e420
  %loadMem_43e50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 33
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 1
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %RAX.i940 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 15
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RBP.i941 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %RBP.i941
  %3236 = sub i64 %3235, 24
  %3237 = load i64, i64* %PC.i939
  %3238 = add i64 %3237, 4
  store i64 %3238, i64* %PC.i939
  %3239 = inttoptr i64 %3236 to i64*
  %3240 = load i64, i64* %3239
  store i64 %3240, i64* %RAX.i940, align 8
  store %struct.Memory* %loadMem_43e50e, %struct.Memory** %MEMORY
  %loadMem_43e512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 33
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %3243 to i64*
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 5
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %RCX.i937 = bitcast %union.anon* %3246 to i64*
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 15
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %RBP.i938 = bitcast %union.anon* %3249 to i64*
  %3250 = load i64, i64* %RBP.i938
  %3251 = sub i64 %3250, 80
  %3252 = load i64, i64* %PC.i936
  %3253 = add i64 %3252, 4
  store i64 %3253, i64* %PC.i936
  %3254 = inttoptr i64 %3251 to i32*
  %3255 = load i32, i32* %3254
  %3256 = sext i32 %3255 to i64
  store i64 %3256, i64* %RCX.i937, align 8
  store %struct.Memory* %loadMem_43e512, %struct.Memory** %MEMORY
  %loadMem_43e516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 1
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %RAX.i933 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 5
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RCX.i934 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 7
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %RDX.i935 = bitcast %union.anon* %3268 to i64*
  %3269 = load i64, i64* %RAX.i933
  %3270 = load i64, i64* %RCX.i934
  %3271 = add i64 %3270, %3269
  %3272 = load i64, i64* %PC.i932
  %3273 = add i64 %3272, 4
  store i64 %3273, i64* %PC.i932
  %3274 = inttoptr i64 %3271 to i8*
  %3275 = load i8, i8* %3274
  %3276 = sext i8 %3275 to i64
  %3277 = and i64 %3276, 4294967295
  store i64 %3277, i64* %RDX.i935, align 8
  store %struct.Memory* %loadMem_43e516, %struct.Memory** %MEMORY
  %loadMem_43e51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 33
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 7
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %EDX.i931 = bitcast %union.anon* %3283 to i32*
  %3284 = load i32, i32* %EDX.i931
  %3285 = zext i32 %3284 to i64
  %3286 = load i64, i64* %PC.i930
  %3287 = add i64 %3286, 3
  store i64 %3287, i64* %PC.i930
  %3288 = sub i32 %3284, 32
  %3289 = icmp ult i32 %3284, 32
  %3290 = zext i1 %3289 to i8
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3290, i8* %3291, align 1
  %3292 = and i32 %3288, 255
  %3293 = call i32 @llvm.ctpop.i32(i32 %3292)
  %3294 = trunc i32 %3293 to i8
  %3295 = and i8 %3294, 1
  %3296 = xor i8 %3295, 1
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3296, i8* %3297, align 1
  %3298 = xor i64 32, %3285
  %3299 = trunc i64 %3298 to i32
  %3300 = xor i32 %3299, %3288
  %3301 = lshr i32 %3300, 4
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3303, i8* %3304, align 1
  %3305 = icmp eq i32 %3288, 0
  %3306 = zext i1 %3305 to i8
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3306, i8* %3307, align 1
  %3308 = lshr i32 %3288, 31
  %3309 = trunc i32 %3308 to i8
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3309, i8* %3310, align 1
  %3311 = lshr i32 %3284, 31
  %3312 = xor i32 %3308, %3311
  %3313 = add i32 %3312, %3311
  %3314 = icmp eq i32 %3313, 2
  %3315 = zext i1 %3314 to i8
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3315, i8* %3316, align 1
  store %struct.Memory* %loadMem_43e51a, %struct.Memory** %MEMORY
  %loadMem_43e51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 33
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %3319 to i64*
  %3320 = load i64, i64* %PC.i929
  %3321 = add i64 %3320, 90
  %3322 = load i64, i64* %PC.i929
  %3323 = add i64 %3322, 6
  %3324 = load i64, i64* %PC.i929
  %3325 = add i64 %3324, 6
  store i64 %3325, i64* %PC.i929
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3327 = load i8, i8* %3326, align 1
  store i8 %3327, i8* %BRANCH_TAKEN, align 1
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3329 = icmp ne i8 %3327, 0
  %3330 = select i1 %3329, i64 %3321, i64 %3323
  store i64 %3330, i64* %3328, align 8
  store %struct.Memory* %loadMem_43e51d, %struct.Memory** %MEMORY
  %loadBr_43e51d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e51d = icmp eq i8 %loadBr_43e51d, 1
  br i1 %cmpBr_43e51d, label %block_.L_43e577, label %block_43e523

block_43e523:                                     ; preds = %block_.L_43e50e
  %loadMem_43e523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 33
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 1
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %RAX.i927 = bitcast %union.anon* %3336 to i64*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 15
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %RBP.i928 = bitcast %union.anon* %3339 to i64*
  %3340 = load i64, i64* %RBP.i928
  %3341 = sub i64 %3340, 24
  %3342 = load i64, i64* %PC.i926
  %3343 = add i64 %3342, 4
  store i64 %3343, i64* %PC.i926
  %3344 = inttoptr i64 %3341 to i64*
  %3345 = load i64, i64* %3344
  store i64 %3345, i64* %RAX.i927, align 8
  store %struct.Memory* %loadMem_43e523, %struct.Memory** %MEMORY
  %loadMem_43e527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 33
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %PC.i923 = bitcast %union.anon* %3348 to i64*
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 5
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %RCX.i924 = bitcast %union.anon* %3351 to i64*
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 15
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %RBP.i925 = bitcast %union.anon* %3354 to i64*
  %3355 = load i64, i64* %RBP.i925
  %3356 = sub i64 %3355, 80
  %3357 = load i64, i64* %PC.i923
  %3358 = add i64 %3357, 4
  store i64 %3358, i64* %PC.i923
  %3359 = inttoptr i64 %3356 to i32*
  %3360 = load i32, i32* %3359
  %3361 = sext i32 %3360 to i64
  store i64 %3361, i64* %RCX.i924, align 8
  store %struct.Memory* %loadMem_43e527, %struct.Memory** %MEMORY
  %loadMem_43e52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 33
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %3364 to i64*
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 1
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %RAX.i920 = bitcast %union.anon* %3367 to i64*
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3369 = getelementptr inbounds %struct.GPR, %struct.GPR* %3368, i32 0, i32 5
  %3370 = getelementptr inbounds %struct.Reg, %struct.Reg* %3369, i32 0, i32 0
  %RCX.i921 = bitcast %union.anon* %3370 to i64*
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 7
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %RDX.i922 = bitcast %union.anon* %3373 to i64*
  %3374 = load i64, i64* %RAX.i920
  %3375 = load i64, i64* %RCX.i921
  %3376 = add i64 %3375, %3374
  %3377 = load i64, i64* %PC.i919
  %3378 = add i64 %3377, 4
  store i64 %3378, i64* %PC.i919
  %3379 = inttoptr i64 %3376 to i8*
  %3380 = load i8, i8* %3379
  %3381 = sext i8 %3380 to i64
  %3382 = and i64 %3381, 4294967295
  store i64 %3382, i64* %RDX.i922, align 8
  store %struct.Memory* %loadMem_43e52b, %struct.Memory** %MEMORY
  %loadMem_43e52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 33
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %3385 to i64*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 7
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %EDX.i918 = bitcast %union.anon* %3388 to i32*
  %3389 = load i32, i32* %EDX.i918
  %3390 = zext i32 %3389 to i64
  %3391 = load i64, i64* %PC.i917
  %3392 = add i64 %3391, 3
  store i64 %3392, i64* %PC.i917
  %3393 = sub i32 %3389, 46
  %3394 = icmp ult i32 %3389, 46
  %3395 = zext i1 %3394 to i8
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3395, i8* %3396, align 1
  %3397 = and i32 %3393, 255
  %3398 = call i32 @llvm.ctpop.i32(i32 %3397)
  %3399 = trunc i32 %3398 to i8
  %3400 = and i8 %3399, 1
  %3401 = xor i8 %3400, 1
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3401, i8* %3402, align 1
  %3403 = xor i64 46, %3390
  %3404 = trunc i64 %3403 to i32
  %3405 = xor i32 %3404, %3393
  %3406 = lshr i32 %3405, 4
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3408, i8* %3409, align 1
  %3410 = icmp eq i32 %3393, 0
  %3411 = zext i1 %3410 to i8
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3411, i8* %3412, align 1
  %3413 = lshr i32 %3393, 31
  %3414 = trunc i32 %3413 to i8
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3414, i8* %3415, align 1
  %3416 = lshr i32 %3389, 31
  %3417 = xor i32 %3413, %3416
  %3418 = add i32 %3417, %3416
  %3419 = icmp eq i32 %3418, 2
  %3420 = zext i1 %3419 to i8
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3420, i8* %3421, align 1
  store %struct.Memory* %loadMem_43e52f, %struct.Memory** %MEMORY
  %loadMem_43e532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 33
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %3424 to i64*
  %3425 = load i64, i64* %PC.i916
  %3426 = add i64 %3425, 69
  %3427 = load i64, i64* %PC.i916
  %3428 = add i64 %3427, 6
  %3429 = load i64, i64* %PC.i916
  %3430 = add i64 %3429, 6
  store i64 %3430, i64* %PC.i916
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3432 = load i8, i8* %3431, align 1
  store i8 %3432, i8* %BRANCH_TAKEN, align 1
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3434 = icmp ne i8 %3432, 0
  %3435 = select i1 %3434, i64 %3426, i64 %3428
  store i64 %3435, i64* %3433, align 8
  store %struct.Memory* %loadMem_43e532, %struct.Memory** %MEMORY
  %loadBr_43e532 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e532 = icmp eq i8 %loadBr_43e532, 1
  br i1 %cmpBr_43e532, label %block_.L_43e577, label %block_43e538

block_43e538:                                     ; preds = %block_43e523
  %loadMem_43e538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 33
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %3438 to i64*
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 1
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %RAX.i914 = bitcast %union.anon* %3441 to i64*
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 15
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %3444 to i64*
  %3445 = load i64, i64* %RBP.i915
  %3446 = sub i64 %3445, 24
  %3447 = load i64, i64* %PC.i913
  %3448 = add i64 %3447, 4
  store i64 %3448, i64* %PC.i913
  %3449 = inttoptr i64 %3446 to i64*
  %3450 = load i64, i64* %3449
  store i64 %3450, i64* %RAX.i914, align 8
  store %struct.Memory* %loadMem_43e538, %struct.Memory** %MEMORY
  %loadMem_43e53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 33
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 5
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %RCX.i911 = bitcast %union.anon* %3456 to i64*
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3458 = getelementptr inbounds %struct.GPR, %struct.GPR* %3457, i32 0, i32 15
  %3459 = getelementptr inbounds %struct.Reg, %struct.Reg* %3458, i32 0, i32 0
  %RBP.i912 = bitcast %union.anon* %3459 to i64*
  %3460 = load i64, i64* %RBP.i912
  %3461 = sub i64 %3460, 80
  %3462 = load i64, i64* %PC.i910
  %3463 = add i64 %3462, 4
  store i64 %3463, i64* %PC.i910
  %3464 = inttoptr i64 %3461 to i32*
  %3465 = load i32, i32* %3464
  %3466 = sext i32 %3465 to i64
  store i64 %3466, i64* %RCX.i911, align 8
  store %struct.Memory* %loadMem_43e53c, %struct.Memory** %MEMORY
  %loadMem_43e540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3468 = getelementptr inbounds %struct.GPR, %struct.GPR* %3467, i32 0, i32 33
  %3469 = getelementptr inbounds %struct.Reg, %struct.Reg* %3468, i32 0, i32 0
  %PC.i906 = bitcast %union.anon* %3469 to i64*
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 1
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %RAX.i907 = bitcast %union.anon* %3472 to i64*
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 5
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %RCX.i908 = bitcast %union.anon* %3475 to i64*
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 7
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %RDX.i909 = bitcast %union.anon* %3478 to i64*
  %3479 = load i64, i64* %RAX.i907
  %3480 = load i64, i64* %RCX.i908
  %3481 = add i64 %3480, %3479
  %3482 = load i64, i64* %PC.i906
  %3483 = add i64 %3482, 4
  store i64 %3483, i64* %PC.i906
  %3484 = inttoptr i64 %3481 to i8*
  %3485 = load i8, i8* %3484
  %3486 = sext i8 %3485 to i64
  %3487 = and i64 %3486, 4294967295
  store i64 %3487, i64* %RDX.i909, align 8
  store %struct.Memory* %loadMem_43e540, %struct.Memory** %MEMORY
  %loadMem_43e544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 33
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 7
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %EDX.i905 = bitcast %union.anon* %3493 to i32*
  %3494 = load i32, i32* %EDX.i905
  %3495 = zext i32 %3494 to i64
  %3496 = load i64, i64* %PC.i904
  %3497 = add i64 %3496, 3
  store i64 %3497, i64* %PC.i904
  %3498 = sub i32 %3494, 95
  %3499 = icmp ult i32 %3494, 95
  %3500 = zext i1 %3499 to i8
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3500, i8* %3501, align 1
  %3502 = and i32 %3498, 255
  %3503 = call i32 @llvm.ctpop.i32(i32 %3502)
  %3504 = trunc i32 %3503 to i8
  %3505 = and i8 %3504, 1
  %3506 = xor i8 %3505, 1
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3506, i8* %3507, align 1
  %3508 = xor i64 95, %3495
  %3509 = trunc i64 %3508 to i32
  %3510 = xor i32 %3509, %3498
  %3511 = lshr i32 %3510, 4
  %3512 = trunc i32 %3511 to i8
  %3513 = and i8 %3512, 1
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3513, i8* %3514, align 1
  %3515 = icmp eq i32 %3498, 0
  %3516 = zext i1 %3515 to i8
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3516, i8* %3517, align 1
  %3518 = lshr i32 %3498, 31
  %3519 = trunc i32 %3518 to i8
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3519, i8* %3520, align 1
  %3521 = lshr i32 %3494, 31
  %3522 = xor i32 %3518, %3521
  %3523 = add i32 %3522, %3521
  %3524 = icmp eq i32 %3523, 2
  %3525 = zext i1 %3524 to i8
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3525, i8* %3526, align 1
  store %struct.Memory* %loadMem_43e544, %struct.Memory** %MEMORY
  %loadMem_43e547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 33
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %3529 to i64*
  %3530 = load i64, i64* %PC.i903
  %3531 = add i64 %3530, 48
  %3532 = load i64, i64* %PC.i903
  %3533 = add i64 %3532, 6
  %3534 = load i64, i64* %PC.i903
  %3535 = add i64 %3534, 6
  store i64 %3535, i64* %PC.i903
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3537 = load i8, i8* %3536, align 1
  store i8 %3537, i8* %BRANCH_TAKEN, align 1
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3539 = icmp ne i8 %3537, 0
  %3540 = select i1 %3539, i64 %3531, i64 %3533
  store i64 %3540, i64* %3538, align 8
  store %struct.Memory* %loadMem_43e547, %struct.Memory** %MEMORY
  %loadBr_43e547 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e547 = icmp eq i8 %loadBr_43e547, 1
  br i1 %cmpBr_43e547, label %block_.L_43e577, label %block_43e54d

block_43e54d:                                     ; preds = %block_43e538
  %loadMem_43e54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 33
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %3543 to i64*
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 1
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %RAX.i901 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 15
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RBP.i902 = bitcast %union.anon* %3549 to i64*
  %3550 = load i64, i64* %RBP.i902
  %3551 = sub i64 %3550, 24
  %3552 = load i64, i64* %PC.i900
  %3553 = add i64 %3552, 4
  store i64 %3553, i64* %PC.i900
  %3554 = inttoptr i64 %3551 to i64*
  %3555 = load i64, i64* %3554
  store i64 %3555, i64* %RAX.i901, align 8
  store %struct.Memory* %loadMem_43e54d, %struct.Memory** %MEMORY
  %loadMem_43e551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 33
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %3558 to i64*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 5
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %RCX.i898 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 15
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %RBP.i899 = bitcast %union.anon* %3564 to i64*
  %3565 = load i64, i64* %RBP.i899
  %3566 = sub i64 %3565, 80
  %3567 = load i64, i64* %PC.i897
  %3568 = add i64 %3567, 4
  store i64 %3568, i64* %PC.i897
  %3569 = inttoptr i64 %3566 to i32*
  %3570 = load i32, i32* %3569
  %3571 = sext i32 %3570 to i64
  store i64 %3571, i64* %RCX.i898, align 8
  store %struct.Memory* %loadMem_43e551, %struct.Memory** %MEMORY
  %loadMem_43e555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3573 = getelementptr inbounds %struct.GPR, %struct.GPR* %3572, i32 0, i32 33
  %3574 = getelementptr inbounds %struct.Reg, %struct.Reg* %3573, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %3574 to i64*
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 1
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %RAX.i894 = bitcast %union.anon* %3577 to i64*
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 5
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %RCX.i895 = bitcast %union.anon* %3580 to i64*
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 7
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %RDX.i896 = bitcast %union.anon* %3583 to i64*
  %3584 = load i64, i64* %RAX.i894
  %3585 = load i64, i64* %RCX.i895
  %3586 = add i64 %3585, %3584
  %3587 = load i64, i64* %PC.i893
  %3588 = add i64 %3587, 4
  store i64 %3588, i64* %PC.i893
  %3589 = inttoptr i64 %3586 to i8*
  %3590 = load i8, i8* %3589
  %3591 = sext i8 %3590 to i64
  %3592 = and i64 %3591, 4294967295
  store i64 %3592, i64* %RDX.i896, align 8
  store %struct.Memory* %loadMem_43e555, %struct.Memory** %MEMORY
  %loadMem_43e559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 33
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 7
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %EDX.i892 = bitcast %union.anon* %3598 to i32*
  %3599 = load i32, i32* %EDX.i892
  %3600 = zext i32 %3599 to i64
  %3601 = load i64, i64* %PC.i891
  %3602 = add i64 %3601, 3
  store i64 %3602, i64* %PC.i891
  %3603 = sub i32 %3599, 45
  %3604 = icmp ult i32 %3599, 45
  %3605 = zext i1 %3604 to i8
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3605, i8* %3606, align 1
  %3607 = and i32 %3603, 255
  %3608 = call i32 @llvm.ctpop.i32(i32 %3607)
  %3609 = trunc i32 %3608 to i8
  %3610 = and i8 %3609, 1
  %3611 = xor i8 %3610, 1
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3611, i8* %3612, align 1
  %3613 = xor i64 45, %3600
  %3614 = trunc i64 %3613 to i32
  %3615 = xor i32 %3614, %3603
  %3616 = lshr i32 %3615, 4
  %3617 = trunc i32 %3616 to i8
  %3618 = and i8 %3617, 1
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3618, i8* %3619, align 1
  %3620 = icmp eq i32 %3603, 0
  %3621 = zext i1 %3620 to i8
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3621, i8* %3622, align 1
  %3623 = lshr i32 %3603, 31
  %3624 = trunc i32 %3623 to i8
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3624, i8* %3625, align 1
  %3626 = lshr i32 %3599, 31
  %3627 = xor i32 %3623, %3626
  %3628 = add i32 %3627, %3626
  %3629 = icmp eq i32 %3628, 2
  %3630 = zext i1 %3629 to i8
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3630, i8* %3631, align 1
  store %struct.Memory* %loadMem_43e559, %struct.Memory** %MEMORY
  %loadMem_43e55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 33
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %3634 to i64*
  %3635 = load i64, i64* %PC.i890
  %3636 = add i64 %3635, 27
  %3637 = load i64, i64* %PC.i890
  %3638 = add i64 %3637, 6
  %3639 = load i64, i64* %PC.i890
  %3640 = add i64 %3639, 6
  store i64 %3640, i64* %PC.i890
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3642 = load i8, i8* %3641, align 1
  store i8 %3642, i8* %BRANCH_TAKEN, align 1
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3644 = icmp ne i8 %3642, 0
  %3645 = select i1 %3644, i64 %3636, i64 %3638
  store i64 %3645, i64* %3643, align 8
  store %struct.Memory* %loadMem_43e55c, %struct.Memory** %MEMORY
  %loadBr_43e55c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e55c = icmp eq i8 %loadBr_43e55c, 1
  br i1 %cmpBr_43e55c, label %block_.L_43e577, label %block_43e562

block_43e562:                                     ; preds = %block_43e54d
  %loadMem_43e562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 33
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %3648 to i64*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 1
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %RAX.i888 = bitcast %union.anon* %3651 to i64*
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 15
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %RBP.i889 = bitcast %union.anon* %3654 to i64*
  %3655 = load i64, i64* %RBP.i889
  %3656 = sub i64 %3655, 24
  %3657 = load i64, i64* %PC.i887
  %3658 = add i64 %3657, 4
  store i64 %3658, i64* %PC.i887
  %3659 = inttoptr i64 %3656 to i64*
  %3660 = load i64, i64* %3659
  store i64 %3660, i64* %RAX.i888, align 8
  store %struct.Memory* %loadMem_43e562, %struct.Memory** %MEMORY
  %loadMem_43e566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 33
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %3663 to i64*
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 5
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %RCX.i885 = bitcast %union.anon* %3666 to i64*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 15
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %RBP.i886 = bitcast %union.anon* %3669 to i64*
  %3670 = load i64, i64* %RBP.i886
  %3671 = sub i64 %3670, 80
  %3672 = load i64, i64* %PC.i884
  %3673 = add i64 %3672, 4
  store i64 %3673, i64* %PC.i884
  %3674 = inttoptr i64 %3671 to i32*
  %3675 = load i32, i32* %3674
  %3676 = sext i32 %3675 to i64
  store i64 %3676, i64* %RCX.i885, align 8
  store %struct.Memory* %loadMem_43e566, %struct.Memory** %MEMORY
  %loadMem_43e56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 33
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %3679 to i64*
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 1
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %RAX.i881 = bitcast %union.anon* %3682 to i64*
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 5
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %RCX.i882 = bitcast %union.anon* %3685 to i64*
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 7
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %RDX.i883 = bitcast %union.anon* %3688 to i64*
  %3689 = load i64, i64* %RAX.i881
  %3690 = load i64, i64* %RCX.i882
  %3691 = add i64 %3690, %3689
  %3692 = load i64, i64* %PC.i880
  %3693 = add i64 %3692, 4
  store i64 %3693, i64* %PC.i880
  %3694 = inttoptr i64 %3691 to i8*
  %3695 = load i8, i8* %3694
  %3696 = sext i8 %3695 to i64
  %3697 = and i64 %3696, 4294967295
  store i64 %3697, i64* %RDX.i883, align 8
  store %struct.Memory* %loadMem_43e56a, %struct.Memory** %MEMORY
  %loadMem_43e56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 33
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %3700 to i64*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 7
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %EDX.i879 = bitcast %union.anon* %3703 to i32*
  %3704 = load i32, i32* %EDX.i879
  %3705 = zext i32 %3704 to i64
  %3706 = load i64, i64* %PC.i878
  %3707 = add i64 %3706, 3
  store i64 %3707, i64* %PC.i878
  %3708 = sub i32 %3704, 126
  %3709 = icmp ult i32 %3704, 126
  %3710 = zext i1 %3709 to i8
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3710, i8* %3711, align 1
  %3712 = and i32 %3708, 255
  %3713 = call i32 @llvm.ctpop.i32(i32 %3712)
  %3714 = trunc i32 %3713 to i8
  %3715 = and i8 %3714, 1
  %3716 = xor i8 %3715, 1
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3716, i8* %3717, align 1
  %3718 = xor i64 126, %3705
  %3719 = trunc i64 %3718 to i32
  %3720 = xor i32 %3719, %3708
  %3721 = lshr i32 %3720, 4
  %3722 = trunc i32 %3721 to i8
  %3723 = and i8 %3722, 1
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3723, i8* %3724, align 1
  %3725 = icmp eq i32 %3708, 0
  %3726 = zext i1 %3725 to i8
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3726, i8* %3727, align 1
  %3728 = lshr i32 %3708, 31
  %3729 = trunc i32 %3728 to i8
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3729, i8* %3730, align 1
  %3731 = lshr i32 %3704, 31
  %3732 = xor i32 %3728, %3731
  %3733 = add i32 %3732, %3731
  %3734 = icmp eq i32 %3733, 2
  %3735 = zext i1 %3734 to i8
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3735, i8* %3736, align 1
  store %struct.Memory* %loadMem_43e56e, %struct.Memory** %MEMORY
  %loadMem_43e571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 33
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %3739 to i64*
  %3740 = load i64, i64* %PC.i877
  %3741 = add i64 %3740, 34
  %3742 = load i64, i64* %PC.i877
  %3743 = add i64 %3742, 6
  %3744 = load i64, i64* %PC.i877
  %3745 = add i64 %3744, 6
  store i64 %3745, i64* %PC.i877
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3747 = load i8, i8* %3746, align 1
  %3748 = icmp eq i8 %3747, 0
  %3749 = zext i1 %3748 to i8
  store i8 %3749, i8* %BRANCH_TAKEN, align 1
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3751 = select i1 %3748, i64 %3741, i64 %3743
  store i64 %3751, i64* %3750, align 8
  store %struct.Memory* %loadMem_43e571, %struct.Memory** %MEMORY
  %loadBr_43e571 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e571 = icmp eq i8 %loadBr_43e571, 1
  br i1 %cmpBr_43e571, label %block_.L_43e593, label %block_.L_43e577

block_.L_43e577:                                  ; preds = %block_43e562, %block_43e54d, %block_43e538, %block_43e523, %block_.L_43e50e
  %loadMem_43e577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 33
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 1
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RAX.i875 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 15
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %RBP.i876 = bitcast %union.anon* %3760 to i64*
  %3761 = load i64, i64* %RBP.i876
  %3762 = sub i64 %3761, 80
  %3763 = load i64, i64* %PC.i874
  %3764 = add i64 %3763, 3
  store i64 %3764, i64* %PC.i874
  %3765 = inttoptr i64 %3762 to i32*
  %3766 = load i32, i32* %3765
  %3767 = zext i32 %3766 to i64
  store i64 %3767, i64* %RAX.i875, align 8
  store %struct.Memory* %loadMem_43e577, %struct.Memory** %MEMORY
  %loadMem_43e57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 5
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RCX.i872 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 15
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %3776 to i64*
  %3777 = load i64, i64* %RBP.i873
  %3778 = sub i64 %3777, 64
  %3779 = load i64, i64* %PC.i871
  %3780 = add i64 %3779, 4
  store i64 %3780, i64* %PC.i871
  %3781 = inttoptr i64 %3778 to i64*
  %3782 = load i64, i64* %3781
  store i64 %3782, i64* %RCX.i872, align 8
  store %struct.Memory* %loadMem_43e57a, %struct.Memory** %MEMORY
  %loadMem_43e57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %3785 to i64*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 7
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RDX.i869 = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 15
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %RBP.i870 = bitcast %union.anon* %3791 to i64*
  %3792 = load i64, i64* %RBP.i870
  %3793 = sub i64 %3792, 76
  %3794 = load i64, i64* %PC.i868
  %3795 = add i64 %3794, 4
  store i64 %3795, i64* %PC.i868
  %3796 = inttoptr i64 %3793 to i32*
  %3797 = load i32, i32* %3796
  %3798 = sext i32 %3797 to i64
  store i64 %3798, i64* %RDX.i869, align 8
  store %struct.Memory* %loadMem_43e57e, %struct.Memory** %MEMORY
  %loadMem_43e582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 33
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %3801 to i64*
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 1
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %EAX.i865 = bitcast %union.anon* %3804 to i32*
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 5
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %RCX.i866 = bitcast %union.anon* %3807 to i64*
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 7
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %RDX.i867 = bitcast %union.anon* %3810 to i64*
  %3811 = load i64, i64* %RCX.i866
  %3812 = load i64, i64* %RDX.i867
  %3813 = mul i64 %3812, 4
  %3814 = add i64 %3813, %3811
  %3815 = load i32, i32* %EAX.i865
  %3816 = zext i32 %3815 to i64
  %3817 = load i64, i64* %PC.i864
  %3818 = add i64 %3817, 3
  store i64 %3818, i64* %PC.i864
  %3819 = inttoptr i64 %3814 to i32*
  store i32 %3815, i32* %3819
  store %struct.Memory* %loadMem_43e582, %struct.Memory** %MEMORY
  %loadMem_43e585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 33
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %3822 to i64*
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 1
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %3825 to i64*
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 15
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %RBP.i863 = bitcast %union.anon* %3828 to i64*
  %3829 = load i64, i64* %RBP.i863
  %3830 = sub i64 %3829, 76
  %3831 = load i64, i64* %PC.i861
  %3832 = add i64 %3831, 3
  store i64 %3832, i64* %PC.i861
  %3833 = inttoptr i64 %3830 to i32*
  %3834 = load i32, i32* %3833
  %3835 = zext i32 %3834 to i64
  store i64 %3835, i64* %RAX.i862, align 8
  store %struct.Memory* %loadMem_43e585, %struct.Memory** %MEMORY
  %loadMem_43e588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 33
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 1
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %RAX.i860 = bitcast %union.anon* %3841 to i64*
  %3842 = load i64, i64* %RAX.i860
  %3843 = load i64, i64* %PC.i859
  %3844 = add i64 %3843, 3
  store i64 %3844, i64* %PC.i859
  %3845 = trunc i64 %3842 to i32
  %3846 = add i32 1, %3845
  %3847 = zext i32 %3846 to i64
  store i64 %3847, i64* %RAX.i860, align 8
  %3848 = icmp ult i32 %3846, %3845
  %3849 = icmp ult i32 %3846, 1
  %3850 = or i1 %3848, %3849
  %3851 = zext i1 %3850 to i8
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3851, i8* %3852, align 1
  %3853 = and i32 %3846, 255
  %3854 = call i32 @llvm.ctpop.i32(i32 %3853)
  %3855 = trunc i32 %3854 to i8
  %3856 = and i8 %3855, 1
  %3857 = xor i8 %3856, 1
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3857, i8* %3858, align 1
  %3859 = xor i64 1, %3842
  %3860 = trunc i64 %3859 to i32
  %3861 = xor i32 %3860, %3846
  %3862 = lshr i32 %3861, 4
  %3863 = trunc i32 %3862 to i8
  %3864 = and i8 %3863, 1
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3864, i8* %3865, align 1
  %3866 = icmp eq i32 %3846, 0
  %3867 = zext i1 %3866 to i8
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3867, i8* %3868, align 1
  %3869 = lshr i32 %3846, 31
  %3870 = trunc i32 %3869 to i8
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3870, i8* %3871, align 1
  %3872 = lshr i32 %3845, 31
  %3873 = xor i32 %3869, %3872
  %3874 = add i32 %3873, %3869
  %3875 = icmp eq i32 %3874, 2
  %3876 = zext i1 %3875 to i8
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3876, i8* %3877, align 1
  store %struct.Memory* %loadMem_43e588, %struct.Memory** %MEMORY
  %loadMem_43e58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 33
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %3880 to i64*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 1
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %EAX.i857 = bitcast %union.anon* %3883 to i32*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 15
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %3886 to i64*
  %3887 = load i64, i64* %RBP.i858
  %3888 = sub i64 %3887, 76
  %3889 = load i32, i32* %EAX.i857
  %3890 = zext i32 %3889 to i64
  %3891 = load i64, i64* %PC.i856
  %3892 = add i64 %3891, 3
  store i64 %3892, i64* %PC.i856
  %3893 = inttoptr i64 %3888 to i32*
  store i32 %3889, i32* %3893
  store %struct.Memory* %loadMem_43e58b, %struct.Memory** %MEMORY
  %loadMem_43e58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 33
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %3896 to i64*
  %3897 = load i64, i64* %PC.i855
  %3898 = add i64 %3897, 138
  %3899 = load i64, i64* %PC.i855
  %3900 = add i64 %3899, 5
  store i64 %3900, i64* %PC.i855
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3898, i64* %3901, align 8
  store %struct.Memory* %loadMem_43e58e, %struct.Memory** %MEMORY
  br label %block_.L_43e618

block_.L_43e593:                                  ; preds = %block_43e562
  %loadMem_43e593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 33
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 1
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %RAX.i853 = bitcast %union.anon* %3907 to i64*
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 15
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %RBP.i854 = bitcast %union.anon* %3910 to i64*
  %3911 = load i64, i64* %RBP.i854
  %3912 = sub i64 %3911, 32
  %3913 = load i64, i64* %PC.i852
  %3914 = add i64 %3913, 4
  store i64 %3914, i64* %PC.i852
  %3915 = inttoptr i64 %3912 to i64*
  %3916 = load i64, i64* %3915
  store i64 %3916, i64* %RAX.i853, align 8
  store %struct.Memory* %loadMem_43e593, %struct.Memory** %MEMORY
  %loadMem_43e597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 33
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %3919 to i64*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 5
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %RCX.i850 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 15
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %RBP.i851 = bitcast %union.anon* %3925 to i64*
  %3926 = load i64, i64* %RBP.i851
  %3927 = sub i64 %3926, 80
  %3928 = load i64, i64* %PC.i849
  %3929 = add i64 %3928, 4
  store i64 %3929, i64* %PC.i849
  %3930 = inttoptr i64 %3927 to i32*
  %3931 = load i32, i32* %3930
  %3932 = sext i32 %3931 to i64
  store i64 %3932, i64* %RCX.i850, align 8
  store %struct.Memory* %loadMem_43e597, %struct.Memory** %MEMORY
  %loadMem_43e59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 33
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %3935 to i64*
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 1
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %RAX.i846 = bitcast %union.anon* %3938 to i64*
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 5
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %RCX.i847 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 7
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %RDX.i848 = bitcast %union.anon* %3944 to i64*
  %3945 = load i64, i64* %RAX.i846
  %3946 = load i64, i64* %RCX.i847
  %3947 = add i64 %3946, %3945
  %3948 = load i64, i64* %PC.i845
  %3949 = add i64 %3948, 4
  store i64 %3949, i64* %PC.i845
  %3950 = inttoptr i64 %3947 to i8*
  %3951 = load i8, i8* %3950
  %3952 = sext i8 %3951 to i64
  %3953 = and i64 %3952, 4294967295
  store i64 %3953, i64* %RDX.i848, align 8
  store %struct.Memory* %loadMem_43e59b, %struct.Memory** %MEMORY
  %loadMem_43e59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 33
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %3956 to i64*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 7
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %EDX.i844 = bitcast %union.anon* %3959 to i32*
  %3960 = load i32, i32* %EDX.i844
  %3961 = zext i32 %3960 to i64
  %3962 = load i64, i64* %PC.i843
  %3963 = add i64 %3962, 3
  store i64 %3963, i64* %PC.i843
  %3964 = sub i32 %3960, 32
  %3965 = icmp ult i32 %3960, 32
  %3966 = zext i1 %3965 to i8
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3966, i8* %3967, align 1
  %3968 = and i32 %3964, 255
  %3969 = call i32 @llvm.ctpop.i32(i32 %3968)
  %3970 = trunc i32 %3969 to i8
  %3971 = and i8 %3970, 1
  %3972 = xor i8 %3971, 1
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3972, i8* %3973, align 1
  %3974 = xor i64 32, %3961
  %3975 = trunc i64 %3974 to i32
  %3976 = xor i32 %3975, %3964
  %3977 = lshr i32 %3976, 4
  %3978 = trunc i32 %3977 to i8
  %3979 = and i8 %3978, 1
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3979, i8* %3980, align 1
  %3981 = icmp eq i32 %3964, 0
  %3982 = zext i1 %3981 to i8
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3982, i8* %3983, align 1
  %3984 = lshr i32 %3964, 31
  %3985 = trunc i32 %3984 to i8
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3985, i8* %3986, align 1
  %3987 = lshr i32 %3960, 31
  %3988 = xor i32 %3984, %3987
  %3989 = add i32 %3988, %3987
  %3990 = icmp eq i32 %3989, 2
  %3991 = zext i1 %3990 to i8
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3991, i8* %3992, align 1
  store %struct.Memory* %loadMem_43e59f, %struct.Memory** %MEMORY
  %loadMem_43e5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 33
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %3995 to i64*
  %3996 = load i64, i64* %PC.i842
  %3997 = add i64 %3996, 90
  %3998 = load i64, i64* %PC.i842
  %3999 = add i64 %3998, 6
  %4000 = load i64, i64* %PC.i842
  %4001 = add i64 %4000, 6
  store i64 %4001, i64* %PC.i842
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4003 = load i8, i8* %4002, align 1
  store i8 %4003, i8* %BRANCH_TAKEN, align 1
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4005 = icmp ne i8 %4003, 0
  %4006 = select i1 %4005, i64 %3997, i64 %3999
  store i64 %4006, i64* %4004, align 8
  store %struct.Memory* %loadMem_43e5a2, %struct.Memory** %MEMORY
  %loadBr_43e5a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e5a2 = icmp eq i8 %loadBr_43e5a2, 1
  br i1 %cmpBr_43e5a2, label %block_.L_43e5fc, label %block_43e5a8

block_43e5a8:                                     ; preds = %block_.L_43e593
  %loadMem_43e5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 33
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %4009 to i64*
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 1
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %RAX.i840 = bitcast %union.anon* %4012 to i64*
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 15
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %4015 to i64*
  %4016 = load i64, i64* %RBP.i841
  %4017 = sub i64 %4016, 32
  %4018 = load i64, i64* %PC.i839
  %4019 = add i64 %4018, 4
  store i64 %4019, i64* %PC.i839
  %4020 = inttoptr i64 %4017 to i64*
  %4021 = load i64, i64* %4020
  store i64 %4021, i64* %RAX.i840, align 8
  store %struct.Memory* %loadMem_43e5a8, %struct.Memory** %MEMORY
  %loadMem_43e5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 33
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %4024 to i64*
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 5
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %RCX.i837 = bitcast %union.anon* %4027 to i64*
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 15
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %RBP.i838 = bitcast %union.anon* %4030 to i64*
  %4031 = load i64, i64* %RBP.i838
  %4032 = sub i64 %4031, 80
  %4033 = load i64, i64* %PC.i836
  %4034 = add i64 %4033, 4
  store i64 %4034, i64* %PC.i836
  %4035 = inttoptr i64 %4032 to i32*
  %4036 = load i32, i32* %4035
  %4037 = sext i32 %4036 to i64
  store i64 %4037, i64* %RCX.i837, align 8
  store %struct.Memory* %loadMem_43e5ac, %struct.Memory** %MEMORY
  %loadMem_43e5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 33
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %4040 to i64*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 1
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %RAX.i833 = bitcast %union.anon* %4043 to i64*
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 5
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %RCX.i834 = bitcast %union.anon* %4046 to i64*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 7
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %RDX.i835 = bitcast %union.anon* %4049 to i64*
  %4050 = load i64, i64* %RAX.i833
  %4051 = load i64, i64* %RCX.i834
  %4052 = add i64 %4051, %4050
  %4053 = load i64, i64* %PC.i832
  %4054 = add i64 %4053, 4
  store i64 %4054, i64* %PC.i832
  %4055 = inttoptr i64 %4052 to i8*
  %4056 = load i8, i8* %4055
  %4057 = sext i8 %4056 to i64
  %4058 = and i64 %4057, 4294967295
  store i64 %4058, i64* %RDX.i835, align 8
  store %struct.Memory* %loadMem_43e5b0, %struct.Memory** %MEMORY
  %loadMem_43e5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 33
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %4061 to i64*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 7
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %EDX.i831 = bitcast %union.anon* %4064 to i32*
  %4065 = load i32, i32* %EDX.i831
  %4066 = zext i32 %4065 to i64
  %4067 = load i64, i64* %PC.i830
  %4068 = add i64 %4067, 3
  store i64 %4068, i64* %PC.i830
  %4069 = sub i32 %4065, 46
  %4070 = icmp ult i32 %4065, 46
  %4071 = zext i1 %4070 to i8
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4071, i8* %4072, align 1
  %4073 = and i32 %4069, 255
  %4074 = call i32 @llvm.ctpop.i32(i32 %4073)
  %4075 = trunc i32 %4074 to i8
  %4076 = and i8 %4075, 1
  %4077 = xor i8 %4076, 1
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4077, i8* %4078, align 1
  %4079 = xor i64 46, %4066
  %4080 = trunc i64 %4079 to i32
  %4081 = xor i32 %4080, %4069
  %4082 = lshr i32 %4081, 4
  %4083 = trunc i32 %4082 to i8
  %4084 = and i8 %4083, 1
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4084, i8* %4085, align 1
  %4086 = icmp eq i32 %4069, 0
  %4087 = zext i1 %4086 to i8
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4087, i8* %4088, align 1
  %4089 = lshr i32 %4069, 31
  %4090 = trunc i32 %4089 to i8
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4090, i8* %4091, align 1
  %4092 = lshr i32 %4065, 31
  %4093 = xor i32 %4089, %4092
  %4094 = add i32 %4093, %4092
  %4095 = icmp eq i32 %4094, 2
  %4096 = zext i1 %4095 to i8
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4096, i8* %4097, align 1
  store %struct.Memory* %loadMem_43e5b4, %struct.Memory** %MEMORY
  %loadMem_43e5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 33
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %4100 to i64*
  %4101 = load i64, i64* %PC.i829
  %4102 = add i64 %4101, 69
  %4103 = load i64, i64* %PC.i829
  %4104 = add i64 %4103, 6
  %4105 = load i64, i64* %PC.i829
  %4106 = add i64 %4105, 6
  store i64 %4106, i64* %PC.i829
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4108 = load i8, i8* %4107, align 1
  store i8 %4108, i8* %BRANCH_TAKEN, align 1
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4110 = icmp ne i8 %4108, 0
  %4111 = select i1 %4110, i64 %4102, i64 %4104
  store i64 %4111, i64* %4109, align 8
  store %struct.Memory* %loadMem_43e5b7, %struct.Memory** %MEMORY
  %loadBr_43e5b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e5b7 = icmp eq i8 %loadBr_43e5b7, 1
  br i1 %cmpBr_43e5b7, label %block_.L_43e5fc, label %block_43e5bd

block_43e5bd:                                     ; preds = %block_43e5a8
  %loadMem_43e5bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 1
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %RAX.i827 = bitcast %union.anon* %4117 to i64*
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 15
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %4120 to i64*
  %4121 = load i64, i64* %RBP.i828
  %4122 = sub i64 %4121, 32
  %4123 = load i64, i64* %PC.i826
  %4124 = add i64 %4123, 4
  store i64 %4124, i64* %PC.i826
  %4125 = inttoptr i64 %4122 to i64*
  %4126 = load i64, i64* %4125
  store i64 %4126, i64* %RAX.i827, align 8
  store %struct.Memory* %loadMem_43e5bd, %struct.Memory** %MEMORY
  %loadMem_43e5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4128 = getelementptr inbounds %struct.GPR, %struct.GPR* %4127, i32 0, i32 33
  %4129 = getelementptr inbounds %struct.Reg, %struct.Reg* %4128, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %4129 to i64*
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 5
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %RCX.i824 = bitcast %union.anon* %4132 to i64*
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 15
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %4135 to i64*
  %4136 = load i64, i64* %RBP.i825
  %4137 = sub i64 %4136, 80
  %4138 = load i64, i64* %PC.i823
  %4139 = add i64 %4138, 4
  store i64 %4139, i64* %PC.i823
  %4140 = inttoptr i64 %4137 to i32*
  %4141 = load i32, i32* %4140
  %4142 = sext i32 %4141 to i64
  store i64 %4142, i64* %RCX.i824, align 8
  store %struct.Memory* %loadMem_43e5c1, %struct.Memory** %MEMORY
  %loadMem_43e5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4144 = getelementptr inbounds %struct.GPR, %struct.GPR* %4143, i32 0, i32 33
  %4145 = getelementptr inbounds %struct.Reg, %struct.Reg* %4144, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %4145 to i64*
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 1
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %RAX.i820 = bitcast %union.anon* %4148 to i64*
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 5
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %RCX.i821 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 7
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RDX.i822 = bitcast %union.anon* %4154 to i64*
  %4155 = load i64, i64* %RAX.i820
  %4156 = load i64, i64* %RCX.i821
  %4157 = add i64 %4156, %4155
  %4158 = load i64, i64* %PC.i819
  %4159 = add i64 %4158, 4
  store i64 %4159, i64* %PC.i819
  %4160 = inttoptr i64 %4157 to i8*
  %4161 = load i8, i8* %4160
  %4162 = sext i8 %4161 to i64
  %4163 = and i64 %4162, 4294967295
  store i64 %4163, i64* %RDX.i822, align 8
  store %struct.Memory* %loadMem_43e5c5, %struct.Memory** %MEMORY
  %loadMem_43e5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 33
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %4166 to i64*
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 7
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %EDX.i818 = bitcast %union.anon* %4169 to i32*
  %4170 = load i32, i32* %EDX.i818
  %4171 = zext i32 %4170 to i64
  %4172 = load i64, i64* %PC.i817
  %4173 = add i64 %4172, 3
  store i64 %4173, i64* %PC.i817
  %4174 = sub i32 %4170, 95
  %4175 = icmp ult i32 %4170, 95
  %4176 = zext i1 %4175 to i8
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4176, i8* %4177, align 1
  %4178 = and i32 %4174, 255
  %4179 = call i32 @llvm.ctpop.i32(i32 %4178)
  %4180 = trunc i32 %4179 to i8
  %4181 = and i8 %4180, 1
  %4182 = xor i8 %4181, 1
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4182, i8* %4183, align 1
  %4184 = xor i64 95, %4171
  %4185 = trunc i64 %4184 to i32
  %4186 = xor i32 %4185, %4174
  %4187 = lshr i32 %4186, 4
  %4188 = trunc i32 %4187 to i8
  %4189 = and i8 %4188, 1
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4189, i8* %4190, align 1
  %4191 = icmp eq i32 %4174, 0
  %4192 = zext i1 %4191 to i8
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4192, i8* %4193, align 1
  %4194 = lshr i32 %4174, 31
  %4195 = trunc i32 %4194 to i8
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4195, i8* %4196, align 1
  %4197 = lshr i32 %4170, 31
  %4198 = xor i32 %4194, %4197
  %4199 = add i32 %4198, %4197
  %4200 = icmp eq i32 %4199, 2
  %4201 = zext i1 %4200 to i8
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4201, i8* %4202, align 1
  store %struct.Memory* %loadMem_43e5c9, %struct.Memory** %MEMORY
  %loadMem_43e5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 33
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %4205 to i64*
  %4206 = load i64, i64* %PC.i816
  %4207 = add i64 %4206, 48
  %4208 = load i64, i64* %PC.i816
  %4209 = add i64 %4208, 6
  %4210 = load i64, i64* %PC.i816
  %4211 = add i64 %4210, 6
  store i64 %4211, i64* %PC.i816
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4213 = load i8, i8* %4212, align 1
  store i8 %4213, i8* %BRANCH_TAKEN, align 1
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4215 = icmp ne i8 %4213, 0
  %4216 = select i1 %4215, i64 %4207, i64 %4209
  store i64 %4216, i64* %4214, align 8
  store %struct.Memory* %loadMem_43e5cc, %struct.Memory** %MEMORY
  %loadBr_43e5cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e5cc = icmp eq i8 %loadBr_43e5cc, 1
  br i1 %cmpBr_43e5cc, label %block_.L_43e5fc, label %block_43e5d2

block_43e5d2:                                     ; preds = %block_43e5bd
  %loadMem_43e5d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 33
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %4219 to i64*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 1
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %RAX.i814 = bitcast %union.anon* %4222 to i64*
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 15
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %4225 to i64*
  %4226 = load i64, i64* %RBP.i815
  %4227 = sub i64 %4226, 32
  %4228 = load i64, i64* %PC.i813
  %4229 = add i64 %4228, 4
  store i64 %4229, i64* %PC.i813
  %4230 = inttoptr i64 %4227 to i64*
  %4231 = load i64, i64* %4230
  store i64 %4231, i64* %RAX.i814, align 8
  store %struct.Memory* %loadMem_43e5d2, %struct.Memory** %MEMORY
  %loadMem_43e5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 33
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %4234 to i64*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 5
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %RCX.i811 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 15
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %4240 to i64*
  %4241 = load i64, i64* %RBP.i812
  %4242 = sub i64 %4241, 80
  %4243 = load i64, i64* %PC.i810
  %4244 = add i64 %4243, 4
  store i64 %4244, i64* %PC.i810
  %4245 = inttoptr i64 %4242 to i32*
  %4246 = load i32, i32* %4245
  %4247 = sext i32 %4246 to i64
  store i64 %4247, i64* %RCX.i811, align 8
  store %struct.Memory* %loadMem_43e5d6, %struct.Memory** %MEMORY
  %loadMem_43e5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 33
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 1
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %RAX.i807 = bitcast %union.anon* %4253 to i64*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 5
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %RCX.i808 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 7
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RDX.i809 = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %RAX.i807
  %4261 = load i64, i64* %RCX.i808
  %4262 = add i64 %4261, %4260
  %4263 = load i64, i64* %PC.i806
  %4264 = add i64 %4263, 4
  store i64 %4264, i64* %PC.i806
  %4265 = inttoptr i64 %4262 to i8*
  %4266 = load i8, i8* %4265
  %4267 = sext i8 %4266 to i64
  %4268 = and i64 %4267, 4294967295
  store i64 %4268, i64* %RDX.i809, align 8
  store %struct.Memory* %loadMem_43e5da, %struct.Memory** %MEMORY
  %loadMem_43e5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 33
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %4271 to i64*
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 7
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %EDX.i805 = bitcast %union.anon* %4274 to i32*
  %4275 = load i32, i32* %EDX.i805
  %4276 = zext i32 %4275 to i64
  %4277 = load i64, i64* %PC.i804
  %4278 = add i64 %4277, 3
  store i64 %4278, i64* %PC.i804
  %4279 = sub i32 %4275, 45
  %4280 = icmp ult i32 %4275, 45
  %4281 = zext i1 %4280 to i8
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4281, i8* %4282, align 1
  %4283 = and i32 %4279, 255
  %4284 = call i32 @llvm.ctpop.i32(i32 %4283)
  %4285 = trunc i32 %4284 to i8
  %4286 = and i8 %4285, 1
  %4287 = xor i8 %4286, 1
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4287, i8* %4288, align 1
  %4289 = xor i64 45, %4276
  %4290 = trunc i64 %4289 to i32
  %4291 = xor i32 %4290, %4279
  %4292 = lshr i32 %4291, 4
  %4293 = trunc i32 %4292 to i8
  %4294 = and i8 %4293, 1
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4294, i8* %4295, align 1
  %4296 = icmp eq i32 %4279, 0
  %4297 = zext i1 %4296 to i8
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4297, i8* %4298, align 1
  %4299 = lshr i32 %4279, 31
  %4300 = trunc i32 %4299 to i8
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4300, i8* %4301, align 1
  %4302 = lshr i32 %4275, 31
  %4303 = xor i32 %4299, %4302
  %4304 = add i32 %4303, %4302
  %4305 = icmp eq i32 %4304, 2
  %4306 = zext i1 %4305 to i8
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4306, i8* %4307, align 1
  store %struct.Memory* %loadMem_43e5de, %struct.Memory** %MEMORY
  %loadMem_43e5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 33
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %4310 to i64*
  %4311 = load i64, i64* %PC.i803
  %4312 = add i64 %4311, 27
  %4313 = load i64, i64* %PC.i803
  %4314 = add i64 %4313, 6
  %4315 = load i64, i64* %PC.i803
  %4316 = add i64 %4315, 6
  store i64 %4316, i64* %PC.i803
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4318 = load i8, i8* %4317, align 1
  store i8 %4318, i8* %BRANCH_TAKEN, align 1
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4320 = icmp ne i8 %4318, 0
  %4321 = select i1 %4320, i64 %4312, i64 %4314
  store i64 %4321, i64* %4319, align 8
  store %struct.Memory* %loadMem_43e5e1, %struct.Memory** %MEMORY
  %loadBr_43e5e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e5e1 = icmp eq i8 %loadBr_43e5e1, 1
  br i1 %cmpBr_43e5e1, label %block_.L_43e5fc, label %block_43e5e7

block_43e5e7:                                     ; preds = %block_43e5d2
  %loadMem_43e5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 33
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %4324 to i64*
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 1
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %RAX.i801 = bitcast %union.anon* %4327 to i64*
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 15
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %RBP.i802 = bitcast %union.anon* %4330 to i64*
  %4331 = load i64, i64* %RBP.i802
  %4332 = sub i64 %4331, 32
  %4333 = load i64, i64* %PC.i800
  %4334 = add i64 %4333, 4
  store i64 %4334, i64* %PC.i800
  %4335 = inttoptr i64 %4332 to i64*
  %4336 = load i64, i64* %4335
  store i64 %4336, i64* %RAX.i801, align 8
  store %struct.Memory* %loadMem_43e5e7, %struct.Memory** %MEMORY
  %loadMem_43e5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 33
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %4339 to i64*
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4341 = getelementptr inbounds %struct.GPR, %struct.GPR* %4340, i32 0, i32 5
  %4342 = getelementptr inbounds %struct.Reg, %struct.Reg* %4341, i32 0, i32 0
  %RCX.i798 = bitcast %union.anon* %4342 to i64*
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 15
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %4345 to i64*
  %4346 = load i64, i64* %RBP.i799
  %4347 = sub i64 %4346, 80
  %4348 = load i64, i64* %PC.i797
  %4349 = add i64 %4348, 4
  store i64 %4349, i64* %PC.i797
  %4350 = inttoptr i64 %4347 to i32*
  %4351 = load i32, i32* %4350
  %4352 = sext i32 %4351 to i64
  store i64 %4352, i64* %RCX.i798, align 8
  store %struct.Memory* %loadMem_43e5eb, %struct.Memory** %MEMORY
  %loadMem_43e5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 33
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %4355 to i64*
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 1
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %RAX.i794 = bitcast %union.anon* %4358 to i64*
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 5
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %RCX.i795 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 7
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RDX.i796 = bitcast %union.anon* %4364 to i64*
  %4365 = load i64, i64* %RAX.i794
  %4366 = load i64, i64* %RCX.i795
  %4367 = add i64 %4366, %4365
  %4368 = load i64, i64* %PC.i793
  %4369 = add i64 %4368, 4
  store i64 %4369, i64* %PC.i793
  %4370 = inttoptr i64 %4367 to i8*
  %4371 = load i8, i8* %4370
  %4372 = sext i8 %4371 to i64
  %4373 = and i64 %4372, 4294967295
  store i64 %4373, i64* %RDX.i796, align 8
  store %struct.Memory* %loadMem_43e5ef, %struct.Memory** %MEMORY
  %loadMem_43e5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 33
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %4376 to i64*
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 7
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4379 to i32*
  %4380 = load i32, i32* %EDX.i
  %4381 = zext i32 %4380 to i64
  %4382 = load i64, i64* %PC.i792
  %4383 = add i64 %4382, 3
  store i64 %4383, i64* %PC.i792
  %4384 = sub i32 %4380, 126
  %4385 = icmp ult i32 %4380, 126
  %4386 = zext i1 %4385 to i8
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4386, i8* %4387, align 1
  %4388 = and i32 %4384, 255
  %4389 = call i32 @llvm.ctpop.i32(i32 %4388)
  %4390 = trunc i32 %4389 to i8
  %4391 = and i8 %4390, 1
  %4392 = xor i8 %4391, 1
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4392, i8* %4393, align 1
  %4394 = xor i64 126, %4381
  %4395 = trunc i64 %4394 to i32
  %4396 = xor i32 %4395, %4384
  %4397 = lshr i32 %4396, 4
  %4398 = trunc i32 %4397 to i8
  %4399 = and i8 %4398, 1
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4399, i8* %4400, align 1
  %4401 = icmp eq i32 %4384, 0
  %4402 = zext i1 %4401 to i8
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4402, i8* %4403, align 1
  %4404 = lshr i32 %4384, 31
  %4405 = trunc i32 %4404 to i8
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4405, i8* %4406, align 1
  %4407 = lshr i32 %4380, 31
  %4408 = xor i32 %4404, %4407
  %4409 = add i32 %4408, %4407
  %4410 = icmp eq i32 %4409, 2
  %4411 = zext i1 %4410 to i8
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4411, i8* %4412, align 1
  store %struct.Memory* %loadMem_43e5f3, %struct.Memory** %MEMORY
  %loadMem_43e5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4414 = getelementptr inbounds %struct.GPR, %struct.GPR* %4413, i32 0, i32 33
  %4415 = getelementptr inbounds %struct.Reg, %struct.Reg* %4414, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %4415 to i64*
  %4416 = load i64, i64* %PC.i791
  %4417 = add i64 %4416, 29
  %4418 = load i64, i64* %PC.i791
  %4419 = add i64 %4418, 6
  %4420 = load i64, i64* %PC.i791
  %4421 = add i64 %4420, 6
  store i64 %4421, i64* %PC.i791
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4423 = load i8, i8* %4422, align 1
  %4424 = icmp eq i8 %4423, 0
  %4425 = zext i1 %4424 to i8
  store i8 %4425, i8* %BRANCH_TAKEN, align 1
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4427 = select i1 %4424, i64 %4417, i64 %4419
  store i64 %4427, i64* %4426, align 8
  store %struct.Memory* %loadMem_43e5f6, %struct.Memory** %MEMORY
  %loadBr_43e5f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e5f6 = icmp eq i8 %loadBr_43e5f6, 1
  br i1 %cmpBr_43e5f6, label %block_.L_43e613, label %block_.L_43e5fc

block_.L_43e5fc:                                  ; preds = %block_43e5e7, %block_43e5d2, %block_43e5bd, %block_43e5a8, %block_.L_43e593
  %loadMem_43e5fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 33
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %4430 to i64*
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 1
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %RAX.i789 = bitcast %union.anon* %4433 to i64*
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 15
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %RBP.i790 = bitcast %union.anon* %4436 to i64*
  %4437 = load i64, i64* %RBP.i790
  %4438 = sub i64 %4437, 80
  %4439 = load i64, i64* %PC.i788
  %4440 = add i64 %4439, 3
  store i64 %4440, i64* %PC.i788
  %4441 = inttoptr i64 %4438 to i32*
  %4442 = load i32, i32* %4441
  %4443 = zext i32 %4442 to i64
  store i64 %4443, i64* %RAX.i789, align 8
  store %struct.Memory* %loadMem_43e5fc, %struct.Memory** %MEMORY
  %loadMem_43e5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 33
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %4446 to i64*
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 5
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %RCX.i786 = bitcast %union.anon* %4449 to i64*
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 15
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %4452 to i64*
  %4453 = load i64, i64* %RBP.i787
  %4454 = sub i64 %4453, 56
  %4455 = load i64, i64* %PC.i785
  %4456 = add i64 %4455, 4
  store i64 %4456, i64* %PC.i785
  %4457 = inttoptr i64 %4454 to i64*
  %4458 = load i64, i64* %4457
  store i64 %4458, i64* %RCX.i786, align 8
  store %struct.Memory* %loadMem_43e5ff, %struct.Memory** %MEMORY
  %loadMem_43e603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 33
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %4461 to i64*
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 7
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %RDX.i783 = bitcast %union.anon* %4464 to i64*
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 15
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %RBP.i784 = bitcast %union.anon* %4467 to i64*
  %4468 = load i64, i64* %RBP.i784
  %4469 = sub i64 %4468, 72
  %4470 = load i64, i64* %PC.i782
  %4471 = add i64 %4470, 4
  store i64 %4471, i64* %PC.i782
  %4472 = inttoptr i64 %4469 to i32*
  %4473 = load i32, i32* %4472
  %4474 = sext i32 %4473 to i64
  store i64 %4474, i64* %RDX.i783, align 8
  store %struct.Memory* %loadMem_43e603, %struct.Memory** %MEMORY
  %loadMem_43e607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 33
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %4477 to i64*
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 1
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %EAX.i779 = bitcast %union.anon* %4480 to i32*
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 5
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %RCX.i780 = bitcast %union.anon* %4483 to i64*
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 7
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %RDX.i781 = bitcast %union.anon* %4486 to i64*
  %4487 = load i64, i64* %RCX.i780
  %4488 = load i64, i64* %RDX.i781
  %4489 = mul i64 %4488, 4
  %4490 = add i64 %4489, %4487
  %4491 = load i32, i32* %EAX.i779
  %4492 = zext i32 %4491 to i64
  %4493 = load i64, i64* %PC.i778
  %4494 = add i64 %4493, 3
  store i64 %4494, i64* %PC.i778
  %4495 = inttoptr i64 %4490 to i32*
  store i32 %4491, i32* %4495
  store %struct.Memory* %loadMem_43e607, %struct.Memory** %MEMORY
  %loadMem_43e60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 33
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %4498 to i64*
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4500 = getelementptr inbounds %struct.GPR, %struct.GPR* %4499, i32 0, i32 1
  %4501 = getelementptr inbounds %struct.Reg, %struct.Reg* %4500, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %4501 to i64*
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4503 = getelementptr inbounds %struct.GPR, %struct.GPR* %4502, i32 0, i32 15
  %4504 = getelementptr inbounds %struct.Reg, %struct.Reg* %4503, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %4504 to i64*
  %4505 = load i64, i64* %RBP.i777
  %4506 = sub i64 %4505, 72
  %4507 = load i64, i64* %PC.i775
  %4508 = add i64 %4507, 3
  store i64 %4508, i64* %PC.i775
  %4509 = inttoptr i64 %4506 to i32*
  %4510 = load i32, i32* %4509
  %4511 = zext i32 %4510 to i64
  store i64 %4511, i64* %RAX.i776, align 8
  store %struct.Memory* %loadMem_43e60a, %struct.Memory** %MEMORY
  %loadMem_43e60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 33
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %4514 to i64*
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 1
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %RAX.i774 = bitcast %union.anon* %4517 to i64*
  %4518 = load i64, i64* %RAX.i774
  %4519 = load i64, i64* %PC.i773
  %4520 = add i64 %4519, 3
  store i64 %4520, i64* %PC.i773
  %4521 = trunc i64 %4518 to i32
  %4522 = add i32 1, %4521
  %4523 = zext i32 %4522 to i64
  store i64 %4523, i64* %RAX.i774, align 8
  %4524 = icmp ult i32 %4522, %4521
  %4525 = icmp ult i32 %4522, 1
  %4526 = or i1 %4524, %4525
  %4527 = zext i1 %4526 to i8
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4527, i8* %4528, align 1
  %4529 = and i32 %4522, 255
  %4530 = call i32 @llvm.ctpop.i32(i32 %4529)
  %4531 = trunc i32 %4530 to i8
  %4532 = and i8 %4531, 1
  %4533 = xor i8 %4532, 1
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4533, i8* %4534, align 1
  %4535 = xor i64 1, %4518
  %4536 = trunc i64 %4535 to i32
  %4537 = xor i32 %4536, %4522
  %4538 = lshr i32 %4537, 4
  %4539 = trunc i32 %4538 to i8
  %4540 = and i8 %4539, 1
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4540, i8* %4541, align 1
  %4542 = icmp eq i32 %4522, 0
  %4543 = zext i1 %4542 to i8
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4543, i8* %4544, align 1
  %4545 = lshr i32 %4522, 31
  %4546 = trunc i32 %4545 to i8
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4546, i8* %4547, align 1
  %4548 = lshr i32 %4521, 31
  %4549 = xor i32 %4545, %4548
  %4550 = add i32 %4549, %4545
  %4551 = icmp eq i32 %4550, 2
  %4552 = zext i1 %4551 to i8
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4552, i8* %4553, align 1
  store %struct.Memory* %loadMem_43e60d, %struct.Memory** %MEMORY
  %loadMem_43e610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 33
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %4556 to i64*
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 1
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %EAX.i771 = bitcast %union.anon* %4559 to i32*
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 15
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %RBP.i772 = bitcast %union.anon* %4562 to i64*
  %4563 = load i64, i64* %RBP.i772
  %4564 = sub i64 %4563, 72
  %4565 = load i32, i32* %EAX.i771
  %4566 = zext i32 %4565 to i64
  %4567 = load i64, i64* %PC.i770
  %4568 = add i64 %4567, 3
  store i64 %4568, i64* %PC.i770
  %4569 = inttoptr i64 %4564 to i32*
  store i32 %4565, i32* %4569
  store %struct.Memory* %loadMem_43e610, %struct.Memory** %MEMORY
  br label %block_.L_43e613

block_.L_43e613:                                  ; preds = %block_.L_43e5fc, %block_43e5e7
  %loadMem_43e613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4571 = getelementptr inbounds %struct.GPR, %struct.GPR* %4570, i32 0, i32 33
  %4572 = getelementptr inbounds %struct.Reg, %struct.Reg* %4571, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %4572 to i64*
  %4573 = load i64, i64* %PC.i769
  %4574 = add i64 %4573, 5
  %4575 = load i64, i64* %PC.i769
  %4576 = add i64 %4575, 5
  store i64 %4576, i64* %PC.i769
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4574, i64* %4577, align 8
  store %struct.Memory* %loadMem_43e613, %struct.Memory** %MEMORY
  br label %block_.L_43e618

block_.L_43e618:                                  ; preds = %block_.L_43e613, %block_.L_43e577
  %loadMem_43e618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 33
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %4580 to i64*
  %4581 = load i64, i64* %PC.i768
  %4582 = add i64 %4581, 5
  %4583 = load i64, i64* %PC.i768
  %4584 = add i64 %4583, 5
  store i64 %4584, i64* %PC.i768
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4582, i64* %4585, align 8
  store %struct.Memory* %loadMem_43e618, %struct.Memory** %MEMORY
  br label %block_.L_43e61d

block_.L_43e61d:                                  ; preds = %block_.L_43e618, %block_43e4f2
  %loadMem_43e61d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 33
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %4588 to i64*
  %4589 = load i64, i64* %PC.i767
  %4590 = add i64 %4589, 5
  %4591 = load i64, i64* %PC.i767
  %4592 = add i64 %4591, 5
  store i64 %4592, i64* %PC.i767
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4590, i64* %4593, align 8
  store %struct.Memory* %loadMem_43e61d, %struct.Memory** %MEMORY
  br label %block_.L_43e622

block_.L_43e622:                                  ; preds = %block_.L_43e61d
  %loadMem_43e622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 33
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %4596 to i64*
  %4597 = load i64, i64* %PC.i766
  %4598 = add i64 %4597, 5
  %4599 = load i64, i64* %PC.i766
  %4600 = add i64 %4599, 5
  store i64 %4600, i64* %PC.i766
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4598, i64* %4601, align 8
  store %struct.Memory* %loadMem_43e622, %struct.Memory** %MEMORY
  br label %block_.L_43e627

block_.L_43e627:                                  ; preds = %block_.L_43e622, %block_.L_43e41b
  %loadMem_43e627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 33
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %4604 to i64*
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 1
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %RAX.i764 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 15
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %4610 to i64*
  %4611 = load i64, i64* %RBP.i765
  %4612 = sub i64 %4611, 80
  %4613 = load i64, i64* %PC.i763
  %4614 = add i64 %4613, 3
  store i64 %4614, i64* %PC.i763
  %4615 = inttoptr i64 %4612 to i32*
  %4616 = load i32, i32* %4615
  %4617 = zext i32 %4616 to i64
  store i64 %4617, i64* %RAX.i764, align 8
  store %struct.Memory* %loadMem_43e627, %struct.Memory** %MEMORY
  %loadMem_43e62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 33
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %4620 to i64*
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 1
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %RAX.i762 = bitcast %union.anon* %4623 to i64*
  %4624 = load i64, i64* %RAX.i762
  %4625 = load i64, i64* %PC.i761
  %4626 = add i64 %4625, 3
  store i64 %4626, i64* %PC.i761
  %4627 = trunc i64 %4624 to i32
  %4628 = add i32 1, %4627
  %4629 = zext i32 %4628 to i64
  store i64 %4629, i64* %RAX.i762, align 8
  %4630 = icmp ult i32 %4628, %4627
  %4631 = icmp ult i32 %4628, 1
  %4632 = or i1 %4630, %4631
  %4633 = zext i1 %4632 to i8
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4633, i8* %4634, align 1
  %4635 = and i32 %4628, 255
  %4636 = call i32 @llvm.ctpop.i32(i32 %4635)
  %4637 = trunc i32 %4636 to i8
  %4638 = and i8 %4637, 1
  %4639 = xor i8 %4638, 1
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4639, i8* %4640, align 1
  %4641 = xor i64 1, %4624
  %4642 = trunc i64 %4641 to i32
  %4643 = xor i32 %4642, %4628
  %4644 = lshr i32 %4643, 4
  %4645 = trunc i32 %4644 to i8
  %4646 = and i8 %4645, 1
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4646, i8* %4647, align 1
  %4648 = icmp eq i32 %4628, 0
  %4649 = zext i1 %4648 to i8
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4649, i8* %4650, align 1
  %4651 = lshr i32 %4628, 31
  %4652 = trunc i32 %4651 to i8
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4652, i8* %4653, align 1
  %4654 = lshr i32 %4627, 31
  %4655 = xor i32 %4651, %4654
  %4656 = add i32 %4655, %4651
  %4657 = icmp eq i32 %4656, 2
  %4658 = zext i1 %4657 to i8
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4658, i8* %4659, align 1
  store %struct.Memory* %loadMem_43e62a, %struct.Memory** %MEMORY
  %loadMem_43e62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 33
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %4662 to i64*
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 1
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %EAX.i759 = bitcast %union.anon* %4665 to i32*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 15
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %RBP.i760 = bitcast %union.anon* %4668 to i64*
  %4669 = load i64, i64* %RBP.i760
  %4670 = sub i64 %4669, 80
  %4671 = load i32, i32* %EAX.i759
  %4672 = zext i32 %4671 to i64
  %4673 = load i64, i64* %PC.i758
  %4674 = add i64 %4673, 3
  store i64 %4674, i64* %PC.i758
  %4675 = inttoptr i64 %4670 to i32*
  store i32 %4671, i32* %4675
  store %struct.Memory* %loadMem_43e62d, %struct.Memory** %MEMORY
  %loadMem_43e630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 33
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %4678 to i64*
  %4679 = load i64, i64* %PC.i757
  %4680 = add i64 %4679, -755
  %4681 = load i64, i64* %PC.i757
  %4682 = add i64 %4681, 5
  store i64 %4682, i64* %PC.i757
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4680, i64* %4683, align 8
  store %struct.Memory* %loadMem_43e630, %struct.Memory** %MEMORY
  br label %block_.L_43e33d

block_.L_43e635:                                  ; preds = %block_.L_43e33d
  %loadMem_43e635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 33
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %4686 to i64*
  %4687 = load i64, i64* %PC.i756
  %4688 = add i64 %4687, 5
  %4689 = load i64, i64* %PC.i756
  %4690 = add i64 %4689, 5
  store i64 %4690, i64* %PC.i756
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4688, i64* %4691, align 8
  store %struct.Memory* %loadMem_43e635, %struct.Memory** %MEMORY
  br label %block_.L_43e63a

block_.L_43e63a:                                  ; preds = %block_43e644, %block_.L_43e635
  %loadMem_43e63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 33
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %4694 to i64*
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4696 = getelementptr inbounds %struct.GPR, %struct.GPR* %4695, i32 0, i32 15
  %4697 = getelementptr inbounds %struct.Reg, %struct.Reg* %4696, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %4697 to i64*
  %4698 = load i64, i64* %RBP.i755
  %4699 = sub i64 %4698, 68
  %4700 = load i64, i64* %PC.i754
  %4701 = add i64 %4700, 4
  store i64 %4701, i64* %PC.i754
  %4702 = inttoptr i64 %4699 to i32*
  %4703 = load i32, i32* %4702
  %4704 = sub i32 %4703, 1
  %4705 = icmp ult i32 %4703, 1
  %4706 = zext i1 %4705 to i8
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4706, i8* %4707, align 1
  %4708 = and i32 %4704, 255
  %4709 = call i32 @llvm.ctpop.i32(i32 %4708)
  %4710 = trunc i32 %4709 to i8
  %4711 = and i8 %4710, 1
  %4712 = xor i8 %4711, 1
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4712, i8* %4713, align 1
  %4714 = xor i32 %4703, 1
  %4715 = xor i32 %4714, %4704
  %4716 = lshr i32 %4715, 4
  %4717 = trunc i32 %4716 to i8
  %4718 = and i8 %4717, 1
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4718, i8* %4719, align 1
  %4720 = icmp eq i32 %4704, 0
  %4721 = zext i1 %4720 to i8
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4721, i8* %4722, align 1
  %4723 = lshr i32 %4704, 31
  %4724 = trunc i32 %4723 to i8
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4724, i8* %4725, align 1
  %4726 = lshr i32 %4703, 31
  %4727 = xor i32 %4723, %4726
  %4728 = add i32 %4727, %4726
  %4729 = icmp eq i32 %4728, 2
  %4730 = zext i1 %4729 to i8
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4730, i8* %4731, align 1
  store %struct.Memory* %loadMem_43e63a, %struct.Memory** %MEMORY
  %loadMem_43e63e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 33
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %4734 to i64*
  %4735 = load i64, i64* %PC.i753
  %4736 = add i64 %4735, 305
  %4737 = load i64, i64* %PC.i753
  %4738 = add i64 %4737, 6
  %4739 = load i64, i64* %PC.i753
  %4740 = add i64 %4739, 6
  store i64 %4740, i64* %PC.i753
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4742 = load i8, i8* %4741, align 1
  %4743 = icmp ne i8 %4742, 0
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4745 = load i8, i8* %4744, align 1
  %4746 = icmp ne i8 %4745, 0
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4748 = load i8, i8* %4747, align 1
  %4749 = icmp ne i8 %4748, 0
  %4750 = xor i1 %4746, %4749
  %4751 = or i1 %4743, %4750
  %4752 = zext i1 %4751 to i8
  store i8 %4752, i8* %BRANCH_TAKEN, align 1
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4754 = select i1 %4751, i64 %4736, i64 %4738
  store i64 %4754, i64* %4753, align 8
  store %struct.Memory* %loadMem_43e63e, %struct.Memory** %MEMORY
  %loadBr_43e63e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e63e = icmp eq i8 %loadBr_43e63e, 1
  br i1 %cmpBr_43e63e, label %block_.L_43e76f, label %block_43e644

block_43e644:                                     ; preds = %block_.L_43e63a
  %loadMem1_43e644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 33
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %4757 to i64*
  %4758 = load i64, i64* %PC.i752
  %4759 = add i64 %4758, 28092
  %4760 = load i64, i64* %PC.i752
  %4761 = add i64 %4760, 5
  %4762 = load i64, i64* %PC.i752
  %4763 = add i64 %4762, 5
  store i64 %4763, i64* %PC.i752
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4765 = load i64, i64* %4764, align 8
  %4766 = add i64 %4765, -8
  %4767 = inttoptr i64 %4766 to i64*
  store i64 %4761, i64* %4767
  store i64 %4766, i64* %4764, align 8
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4759, i64* %4768, align 8
  store %struct.Memory* %loadMem1_43e644, %struct.Memory** %MEMORY
  %loadMem2_43e644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e644 = load i64, i64* %3
  %call2_43e644 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_43e644, %struct.Memory* %loadMem2_43e644)
  store %struct.Memory* %call2_43e644, %struct.Memory** %MEMORY
  %loadMem_43e649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4770 = getelementptr inbounds %struct.GPR, %struct.GPR* %4769, i32 0, i32 33
  %4771 = getelementptr inbounds %struct.Reg, %struct.Reg* %4770, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %4771 to i64*
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 15
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %RBP.i750 = bitcast %union.anon* %4774 to i64*
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4776 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4775, i64 0, i64 1
  %YMM1.i751 = bitcast %union.VectorReg* %4776 to %"class.std::bitset"*
  %4777 = bitcast %"class.std::bitset"* %YMM1.i751 to i8*
  %4778 = load i64, i64* %RBP.i750
  %4779 = sub i64 %4778, 68
  %4780 = load i64, i64* %PC.i749
  %4781 = add i64 %4780, 5
  store i64 %4781, i64* %PC.i749
  %4782 = inttoptr i64 %4779 to i32*
  %4783 = load i32, i32* %4782
  %4784 = sitofp i32 %4783 to double
  %4785 = bitcast i8* %4777 to double*
  store double %4784, double* %4785, align 1
  store %struct.Memory* %loadMem_43e649, %struct.Memory** %MEMORY
  %loadMem_43e64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 33
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %4788 to i64*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4790 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4789, i64 0, i64 0
  %YMM0.i747 = bitcast %union.VectorReg* %4790 to %"class.std::bitset"*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4792 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4791, i64 0, i64 1
  %XMM1.i748 = bitcast %union.VectorReg* %4792 to %union.vec128_t*
  %4793 = bitcast %"class.std::bitset"* %YMM0.i747 to i8*
  %4794 = bitcast %"class.std::bitset"* %YMM0.i747 to i8*
  %4795 = bitcast %union.vec128_t* %XMM1.i748 to i8*
  %4796 = load i64, i64* %PC.i746
  %4797 = add i64 %4796, 4
  store i64 %4797, i64* %PC.i746
  %4798 = bitcast i8* %4794 to double*
  %4799 = load double, double* %4798, align 1
  %4800 = getelementptr inbounds i8, i8* %4794, i64 8
  %4801 = bitcast i8* %4800 to i64*
  %4802 = load i64, i64* %4801, align 1
  %4803 = bitcast i8* %4795 to double*
  %4804 = load double, double* %4803, align 1
  %4805 = fmul double %4799, %4804
  %4806 = bitcast i8* %4793 to double*
  store double %4805, double* %4806, align 1
  %4807 = getelementptr inbounds i8, i8* %4793, i64 8
  %4808 = bitcast i8* %4807 to i64*
  store i64 %4802, i64* %4808, align 1
  store %struct.Memory* %loadMem_43e64e, %struct.Memory** %MEMORY
  %loadMem_43e652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 33
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %4811 to i64*
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4813 = getelementptr inbounds %struct.GPR, %struct.GPR* %4812, i32 0, i32 1
  %4814 = getelementptr inbounds %struct.Reg, %struct.Reg* %4813, i32 0, i32 0
  %RAX.i744 = bitcast %union.anon* %4814 to i64*
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4816 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4815, i64 0, i64 0
  %XMM0.i745 = bitcast %union.VectorReg* %4816 to %union.vec128_t*
  %4817 = bitcast %union.vec128_t* %XMM0.i745 to i8*
  %4818 = load i64, i64* %PC.i743
  %4819 = add i64 %4818, 4
  store i64 %4819, i64* %PC.i743
  %4820 = bitcast i8* %4817 to double*
  %4821 = load double, double* %4820, align 1
  %4822 = call double @llvm.trunc.f64(double %4821)
  %4823 = call double @llvm.fabs.f64(double %4822)
  %4824 = fcmp ogt double %4823, 0x41DFFFFFFFC00000
  %4825 = fptosi double %4822 to i32
  %4826 = zext i32 %4825 to i64
  %4827 = select i1 %4824, i64 2147483648, i64 %4826
  store i64 %4827, i64* %RAX.i744, align 8
  store %struct.Memory* %loadMem_43e652, %struct.Memory** %MEMORY
  %loadMem_43e656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 33
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %4830 to i64*
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 1
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %EAX.i741 = bitcast %union.anon* %4833 to i32*
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 15
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %4836 to i64*
  %4837 = load i64, i64* %RBP.i742
  %4838 = sub i64 %4837, 84
  %4839 = load i32, i32* %EAX.i741
  %4840 = zext i32 %4839 to i64
  %4841 = load i64, i64* %PC.i740
  %4842 = add i64 %4841, 3
  store i64 %4842, i64* %PC.i740
  %4843 = inttoptr i64 %4838 to i32*
  store i32 %4839, i32* %4843
  store %struct.Memory* %loadMem_43e656, %struct.Memory** %MEMORY
  %loadMem_43e659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 33
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %4846 to i64*
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4848 = getelementptr inbounds %struct.GPR, %struct.GPR* %4847, i32 0, i32 5
  %4849 = getelementptr inbounds %struct.Reg, %struct.Reg* %4848, i32 0, i32 0
  %RCX.i738 = bitcast %union.anon* %4849 to i64*
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 15
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %4852 to i64*
  %4853 = load i64, i64* %RBP.i739
  %4854 = sub i64 %4853, 8
  %4855 = load i64, i64* %PC.i737
  %4856 = add i64 %4855, 4
  store i64 %4856, i64* %PC.i737
  %4857 = inttoptr i64 %4854 to i64*
  %4858 = load i64, i64* %4857
  store i64 %4858, i64* %RCX.i738, align 8
  store %struct.Memory* %loadMem_43e659, %struct.Memory** %MEMORY
  %loadMem_43e65d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 33
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %4861 to i64*
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4863 = getelementptr inbounds %struct.GPR, %struct.GPR* %4862, i32 0, i32 7
  %4864 = getelementptr inbounds %struct.Reg, %struct.Reg* %4863, i32 0, i32 0
  %RDX.i735 = bitcast %union.anon* %4864 to i64*
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 15
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %RBP.i736 = bitcast %union.anon* %4867 to i64*
  %4868 = load i64, i64* %RBP.i736
  %4869 = sub i64 %4868, 48
  %4870 = load i64, i64* %PC.i734
  %4871 = add i64 %4870, 4
  store i64 %4871, i64* %PC.i734
  %4872 = inttoptr i64 %4869 to i64*
  %4873 = load i64, i64* %4872
  store i64 %4873, i64* %RDX.i735, align 8
  store %struct.Memory* %loadMem_43e65d, %struct.Memory** %MEMORY
  %loadMem_43e661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 33
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %4876 to i64*
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 9
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %RSI.i732 = bitcast %union.anon* %4879 to i64*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 15
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %RBP.i733 = bitcast %union.anon* %4882 to i64*
  %4883 = load i64, i64* %RBP.i733
  %4884 = sub i64 %4883, 84
  %4885 = load i64, i64* %PC.i731
  %4886 = add i64 %4885, 4
  store i64 %4886, i64* %PC.i731
  %4887 = inttoptr i64 %4884 to i32*
  %4888 = load i32, i32* %4887
  %4889 = sext i32 %4888 to i64
  store i64 %4889, i64* %RSI.i732, align 8
  store %struct.Memory* %loadMem_43e661, %struct.Memory** %MEMORY
  %loadMem_43e665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 33
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %4892 to i64*
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 7
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %RDX.i729 = bitcast %union.anon* %4895 to i64*
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 9
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %RSI.i730 = bitcast %union.anon* %4898 to i64*
  %4899 = load i64, i64* %RDX.i729
  %4900 = load i64, i64* %RSI.i730
  %4901 = mul i64 %4900, 4
  %4902 = add i64 %4901, %4899
  %4903 = load i64, i64* %PC.i728
  %4904 = add i64 %4903, 4
  store i64 %4904, i64* %PC.i728
  %4905 = inttoptr i64 %4902 to i32*
  %4906 = load i32, i32* %4905
  %4907 = sext i32 %4906 to i64
  store i64 %4907, i64* %RDX.i729, align 8
  store %struct.Memory* %loadMem_43e665, %struct.Memory** %MEMORY
  %loadMem_43e669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 33
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %4910 to i64*
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 11
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %4914 = bitcast %union.anon* %4913 to %struct.anon.2*
  %DIL.i725 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4914, i32 0, i32 0
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4916 = getelementptr inbounds %struct.GPR, %struct.GPR* %4915, i32 0, i32 5
  %4917 = getelementptr inbounds %struct.Reg, %struct.Reg* %4916, i32 0, i32 0
  %RCX.i726 = bitcast %union.anon* %4917 to i64*
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4919 = getelementptr inbounds %struct.GPR, %struct.GPR* %4918, i32 0, i32 7
  %4920 = getelementptr inbounds %struct.Reg, %struct.Reg* %4919, i32 0, i32 0
  %RDX.i727 = bitcast %union.anon* %4920 to i64*
  %4921 = load i64, i64* %RCX.i726
  %4922 = load i64, i64* %RDX.i727
  %4923 = add i64 %4922, %4921
  %4924 = load i64, i64* %PC.i724
  %4925 = add i64 %4924, 4
  store i64 %4925, i64* %PC.i724
  %4926 = inttoptr i64 %4923 to i8*
  %4927 = load i8, i8* %4926
  store i8 %4927, i8* %DIL.i725, align 1
  store %struct.Memory* %loadMem_43e669, %struct.Memory** %MEMORY
  %loadMem_43e66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 33
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %4930 to i64*
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 11
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %4934 = bitcast %union.anon* %4933 to %struct.anon.2*
  %DIL.i722 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4934, i32 0, i32 0
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 15
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %RBP.i723 = bitcast %union.anon* %4937 to i64*
  %4938 = load i64, i64* %RBP.i723
  %4939 = sub i64 %4938, 89
  %4940 = load i8, i8* %DIL.i722
  %4941 = zext i8 %4940 to i64
  %4942 = load i64, i64* %PC.i721
  %4943 = add i64 %4942, 4
  store i64 %4943, i64* %PC.i721
  %4944 = inttoptr i64 %4939 to i8*
  store i8 %4940, i8* %4944
  store %struct.Memory* %loadMem_43e66d, %struct.Memory** %MEMORY
  %loadMem_43e671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4946 = getelementptr inbounds %struct.GPR, %struct.GPR* %4945, i32 0, i32 33
  %4947 = getelementptr inbounds %struct.Reg, %struct.Reg* %4946, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %4947 to i64*
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4949 = getelementptr inbounds %struct.GPR, %struct.GPR* %4948, i32 0, i32 5
  %4950 = getelementptr inbounds %struct.Reg, %struct.Reg* %4949, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %4950 to i64*
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 15
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %4953 to i64*
  %4954 = load i64, i64* %RBP.i720
  %4955 = sub i64 %4954, 16
  %4956 = load i64, i64* %PC.i718
  %4957 = add i64 %4956, 4
  store i64 %4957, i64* %PC.i718
  %4958 = inttoptr i64 %4955 to i64*
  %4959 = load i64, i64* %4958
  store i64 %4959, i64* %RCX.i719, align 8
  store %struct.Memory* %loadMem_43e671, %struct.Memory** %MEMORY
  %loadMem_43e675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 33
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %4962 to i64*
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 7
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %RDX.i716 = bitcast %union.anon* %4965 to i64*
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 15
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %RBP.i717 = bitcast %union.anon* %4968 to i64*
  %4969 = load i64, i64* %RBP.i717
  %4970 = sub i64 %4969, 48
  %4971 = load i64, i64* %PC.i715
  %4972 = add i64 %4971, 4
  store i64 %4972, i64* %PC.i715
  %4973 = inttoptr i64 %4970 to i64*
  %4974 = load i64, i64* %4973
  store i64 %4974, i64* %RDX.i716, align 8
  store %struct.Memory* %loadMem_43e675, %struct.Memory** %MEMORY
  %loadMem_43e679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 33
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %4977 to i64*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 9
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %RSI.i713 = bitcast %union.anon* %4980 to i64*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 15
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %RBP.i714 = bitcast %union.anon* %4983 to i64*
  %4984 = load i64, i64* %RBP.i714
  %4985 = sub i64 %4984, 84
  %4986 = load i64, i64* %PC.i712
  %4987 = add i64 %4986, 4
  store i64 %4987, i64* %PC.i712
  %4988 = inttoptr i64 %4985 to i32*
  %4989 = load i32, i32* %4988
  %4990 = sext i32 %4989 to i64
  store i64 %4990, i64* %RSI.i713, align 8
  store %struct.Memory* %loadMem_43e679, %struct.Memory** %MEMORY
  %loadMem_43e67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 33
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %4993 to i64*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 7
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RDX.i710 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 9
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RSI.i711 = bitcast %union.anon* %4999 to i64*
  %5000 = load i64, i64* %RDX.i710
  %5001 = load i64, i64* %RSI.i711
  %5002 = mul i64 %5001, 4
  %5003 = add i64 %5002, %5000
  %5004 = load i64, i64* %PC.i709
  %5005 = add i64 %5004, 4
  store i64 %5005, i64* %PC.i709
  %5006 = inttoptr i64 %5003 to i32*
  %5007 = load i32, i32* %5006
  %5008 = sext i32 %5007 to i64
  store i64 %5008, i64* %RDX.i710, align 8
  store %struct.Memory* %loadMem_43e67d, %struct.Memory** %MEMORY
  %loadMem_43e681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5010 = getelementptr inbounds %struct.GPR, %struct.GPR* %5009, i32 0, i32 33
  %5011 = getelementptr inbounds %struct.Reg, %struct.Reg* %5010, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %5011 to i64*
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 11
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %5015 = bitcast %union.anon* %5014 to %struct.anon.2*
  %DIL.i706 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5015, i32 0, i32 0
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5017 = getelementptr inbounds %struct.GPR, %struct.GPR* %5016, i32 0, i32 5
  %5018 = getelementptr inbounds %struct.Reg, %struct.Reg* %5017, i32 0, i32 0
  %RCX.i707 = bitcast %union.anon* %5018 to i64*
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5020 = getelementptr inbounds %struct.GPR, %struct.GPR* %5019, i32 0, i32 7
  %5021 = getelementptr inbounds %struct.Reg, %struct.Reg* %5020, i32 0, i32 0
  %RDX.i708 = bitcast %union.anon* %5021 to i64*
  %5022 = load i64, i64* %RCX.i707
  %5023 = load i64, i64* %RDX.i708
  %5024 = add i64 %5023, %5022
  %5025 = load i64, i64* %PC.i705
  %5026 = add i64 %5025, 4
  store i64 %5026, i64* %PC.i705
  %5027 = inttoptr i64 %5024 to i8*
  %5028 = load i8, i8* %5027
  store i8 %5028, i8* %DIL.i706, align 1
  store %struct.Memory* %loadMem_43e681, %struct.Memory** %MEMORY
  %loadMem_43e685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 33
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %5031 to i64*
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 11
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %5035 = bitcast %union.anon* %5034 to %struct.anon.2*
  %DIL.i703 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5035, i32 0, i32 0
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 15
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %RBP.i704 = bitcast %union.anon* %5038 to i64*
  %5039 = load i64, i64* %RBP.i704
  %5040 = sub i64 %5039, 90
  %5041 = load i8, i8* %DIL.i703
  %5042 = zext i8 %5041 to i64
  %5043 = load i64, i64* %PC.i702
  %5044 = add i64 %5043, 4
  store i64 %5044, i64* %PC.i702
  %5045 = inttoptr i64 %5040 to i8*
  store i8 %5041, i8* %5045
  store %struct.Memory* %loadMem_43e685, %struct.Memory** %MEMORY
  %loadMem_43e689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 33
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %5048 to i64*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 5
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %RCX.i700 = bitcast %union.anon* %5051 to i64*
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 15
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %5054 to i64*
  %5055 = load i64, i64* %RBP.i701
  %5056 = sub i64 %5055, 48
  %5057 = load i64, i64* %PC.i699
  %5058 = add i64 %5057, 4
  store i64 %5058, i64* %PC.i699
  %5059 = inttoptr i64 %5056 to i64*
  %5060 = load i64, i64* %5059
  store i64 %5060, i64* %RCX.i700, align 8
  store %struct.Memory* %loadMem_43e689, %struct.Memory** %MEMORY
  %loadMem_43e68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 33
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %5063 to i64*
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 7
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %RDX.i697 = bitcast %union.anon* %5066 to i64*
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 15
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %RBP.i698 = bitcast %union.anon* %5069 to i64*
  %5070 = load i64, i64* %RBP.i698
  %5071 = sub i64 %5070, 84
  %5072 = load i64, i64* %PC.i696
  %5073 = add i64 %5072, 4
  store i64 %5073, i64* %PC.i696
  %5074 = inttoptr i64 %5071 to i32*
  %5075 = load i32, i32* %5074
  %5076 = sext i32 %5075 to i64
  store i64 %5076, i64* %RDX.i697, align 8
  store %struct.Memory* %loadMem_43e68d, %struct.Memory** %MEMORY
  %loadMem_43e691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 33
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 1
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 5
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %RCX.i694 = bitcast %union.anon* %5085 to i64*
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5087 = getelementptr inbounds %struct.GPR, %struct.GPR* %5086, i32 0, i32 7
  %5088 = getelementptr inbounds %struct.Reg, %struct.Reg* %5087, i32 0, i32 0
  %RDX.i695 = bitcast %union.anon* %5088 to i64*
  %5089 = load i64, i64* %RCX.i694
  %5090 = load i64, i64* %RDX.i695
  %5091 = mul i64 %5090, 4
  %5092 = add i64 %5091, %5089
  %5093 = load i64, i64* %PC.i692
  %5094 = add i64 %5093, 3
  store i64 %5094, i64* %PC.i692
  %5095 = inttoptr i64 %5092 to i32*
  %5096 = load i32, i32* %5095
  %5097 = zext i32 %5096 to i64
  store i64 %5097, i64* %RAX.i693, align 8
  store %struct.Memory* %loadMem_43e691, %struct.Memory** %MEMORY
  %loadMem_43e694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 33
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %5100 to i64*
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 1
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %EAX.i690 = bitcast %union.anon* %5103 to i32*
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 15
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %5106 to i64*
  %5107 = load i64, i64* %RBP.i691
  %5108 = sub i64 %5107, 88
  %5109 = load i32, i32* %EAX.i690
  %5110 = zext i32 %5109 to i64
  %5111 = load i64, i64* %PC.i689
  %5112 = add i64 %5111, 3
  store i64 %5112, i64* %PC.i689
  %5113 = inttoptr i64 %5108 to i32*
  store i32 %5109, i32* %5113
  store %struct.Memory* %loadMem_43e694, %struct.Memory** %MEMORY
  %loadMem_43e697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 33
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %5116 to i64*
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 5
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %RCX.i687 = bitcast %union.anon* %5119 to i64*
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5121 = getelementptr inbounds %struct.GPR, %struct.GPR* %5120, i32 0, i32 15
  %5122 = getelementptr inbounds %struct.Reg, %struct.Reg* %5121, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %5122 to i64*
  %5123 = load i64, i64* %RBP.i688
  %5124 = sub i64 %5123, 8
  %5125 = load i64, i64* %PC.i686
  %5126 = add i64 %5125, 4
  store i64 %5126, i64* %PC.i686
  %5127 = inttoptr i64 %5124 to i64*
  %5128 = load i64, i64* %5127
  store i64 %5128, i64* %RCX.i687, align 8
  store %struct.Memory* %loadMem_43e697, %struct.Memory** %MEMORY
  %loadMem_43e69b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5130 = getelementptr inbounds %struct.GPR, %struct.GPR* %5129, i32 0, i32 33
  %5131 = getelementptr inbounds %struct.Reg, %struct.Reg* %5130, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %5131 to i64*
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 7
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %RDX.i684 = bitcast %union.anon* %5134 to i64*
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5136 = getelementptr inbounds %struct.GPR, %struct.GPR* %5135, i32 0, i32 15
  %5137 = getelementptr inbounds %struct.Reg, %struct.Reg* %5136, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %5137 to i64*
  %5138 = load i64, i64* %RBP.i685
  %5139 = sub i64 %5138, 48
  %5140 = load i64, i64* %PC.i683
  %5141 = add i64 %5140, 4
  store i64 %5141, i64* %PC.i683
  %5142 = inttoptr i64 %5139 to i64*
  %5143 = load i64, i64* %5142
  store i64 %5143, i64* %RDX.i684, align 8
  store %struct.Memory* %loadMem_43e69b, %struct.Memory** %MEMORY
  %loadMem_43e69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 33
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %5146 to i64*
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 1
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %RAX.i681 = bitcast %union.anon* %5149 to i64*
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 15
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %5152 to i64*
  %5153 = load i64, i64* %RBP.i682
  %5154 = sub i64 %5153, 68
  %5155 = load i64, i64* %PC.i680
  %5156 = add i64 %5155, 3
  store i64 %5156, i64* %PC.i680
  %5157 = inttoptr i64 %5154 to i32*
  %5158 = load i32, i32* %5157
  %5159 = zext i32 %5158 to i64
  store i64 %5159, i64* %RAX.i681, align 8
  store %struct.Memory* %loadMem_43e69f, %struct.Memory** %MEMORY
  %loadMem_43e6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 33
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %5162 to i64*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 1
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %5165 to i64*
  %5166 = load i64, i64* %RAX.i679
  %5167 = load i64, i64* %PC.i678
  %5168 = add i64 %5167, 3
  store i64 %5168, i64* %PC.i678
  %5169 = trunc i64 %5166 to i32
  %5170 = sub i32 %5169, 1
  %5171 = zext i32 %5170 to i64
  store i64 %5171, i64* %RAX.i679, align 8
  %5172 = icmp ult i32 %5169, 1
  %5173 = zext i1 %5172 to i8
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5173, i8* %5174, align 1
  %5175 = and i32 %5170, 255
  %5176 = call i32 @llvm.ctpop.i32(i32 %5175)
  %5177 = trunc i32 %5176 to i8
  %5178 = and i8 %5177, 1
  %5179 = xor i8 %5178, 1
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5179, i8* %5180, align 1
  %5181 = xor i64 1, %5166
  %5182 = trunc i64 %5181 to i32
  %5183 = xor i32 %5182, %5170
  %5184 = lshr i32 %5183, 4
  %5185 = trunc i32 %5184 to i8
  %5186 = and i8 %5185, 1
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5186, i8* %5187, align 1
  %5188 = icmp eq i32 %5170, 0
  %5189 = zext i1 %5188 to i8
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5189, i8* %5190, align 1
  %5191 = lshr i32 %5170, 31
  %5192 = trunc i32 %5191 to i8
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5192, i8* %5193, align 1
  %5194 = lshr i32 %5169, 31
  %5195 = xor i32 %5191, %5194
  %5196 = add i32 %5195, %5194
  %5197 = icmp eq i32 %5196, 2
  %5198 = zext i1 %5197 to i8
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5198, i8* %5199, align 1
  store %struct.Memory* %loadMem_43e6a2, %struct.Memory** %MEMORY
  %loadMem_43e6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5201 = getelementptr inbounds %struct.GPR, %struct.GPR* %5200, i32 0, i32 33
  %5202 = getelementptr inbounds %struct.Reg, %struct.Reg* %5201, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %5202 to i64*
  %5203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5204 = getelementptr inbounds %struct.GPR, %struct.GPR* %5203, i32 0, i32 1
  %5205 = getelementptr inbounds %struct.Reg, %struct.Reg* %5204, i32 0, i32 0
  %EAX.i676 = bitcast %union.anon* %5205 to i32*
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5207 = getelementptr inbounds %struct.GPR, %struct.GPR* %5206, i32 0, i32 9
  %5208 = getelementptr inbounds %struct.Reg, %struct.Reg* %5207, i32 0, i32 0
  %RSI.i677 = bitcast %union.anon* %5208 to i64*
  %5209 = load i32, i32* %EAX.i676
  %5210 = zext i32 %5209 to i64
  %5211 = load i64, i64* %PC.i675
  %5212 = add i64 %5211, 3
  store i64 %5212, i64* %PC.i675
  %5213 = shl i64 %5210, 32
  %5214 = ashr exact i64 %5213, 32
  store i64 %5214, i64* %RSI.i677, align 8
  store %struct.Memory* %loadMem_43e6a5, %struct.Memory** %MEMORY
  %loadMem_43e6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 33
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %5217 to i64*
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5219 = getelementptr inbounds %struct.GPR, %struct.GPR* %5218, i32 0, i32 7
  %5220 = getelementptr inbounds %struct.Reg, %struct.Reg* %5219, i32 0, i32 0
  %RDX.i673 = bitcast %union.anon* %5220 to i64*
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 9
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %RSI.i674 = bitcast %union.anon* %5223 to i64*
  %5224 = load i64, i64* %RDX.i673
  %5225 = load i64, i64* %RSI.i674
  %5226 = mul i64 %5225, 4
  %5227 = add i64 %5226, %5224
  %5228 = load i64, i64* %PC.i672
  %5229 = add i64 %5228, 4
  store i64 %5229, i64* %PC.i672
  %5230 = inttoptr i64 %5227 to i32*
  %5231 = load i32, i32* %5230
  %5232 = sext i32 %5231 to i64
  store i64 %5232, i64* %RDX.i673, align 8
  store %struct.Memory* %loadMem_43e6a8, %struct.Memory** %MEMORY
  %loadMem_43e6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5234 = getelementptr inbounds %struct.GPR, %struct.GPR* %5233, i32 0, i32 33
  %5235 = getelementptr inbounds %struct.Reg, %struct.Reg* %5234, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %5235 to i64*
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 11
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %5239 = bitcast %union.anon* %5238 to %struct.anon.2*
  %DIL.i669 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5239, i32 0, i32 0
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 5
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %RCX.i670 = bitcast %union.anon* %5242 to i64*
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 7
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %RDX.i671 = bitcast %union.anon* %5245 to i64*
  %5246 = load i64, i64* %RCX.i670
  %5247 = load i64, i64* %RDX.i671
  %5248 = add i64 %5247, %5246
  %5249 = load i64, i64* %PC.i668
  %5250 = add i64 %5249, 4
  store i64 %5250, i64* %PC.i668
  %5251 = inttoptr i64 %5248 to i8*
  %5252 = load i8, i8* %5251
  store i8 %5252, i8* %DIL.i669, align 1
  store %struct.Memory* %loadMem_43e6ac, %struct.Memory** %MEMORY
  %loadMem_43e6b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 33
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %5255 to i64*
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 5
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %5258 to i64*
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 15
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %5261 to i64*
  %5262 = load i64, i64* %RBP.i667
  %5263 = sub i64 %5262, 8
  %5264 = load i64, i64* %PC.i665
  %5265 = add i64 %5264, 4
  store i64 %5265, i64* %PC.i665
  %5266 = inttoptr i64 %5263 to i64*
  %5267 = load i64, i64* %5266
  store i64 %5267, i64* %RCX.i666, align 8
  store %struct.Memory* %loadMem_43e6b0, %struct.Memory** %MEMORY
  %loadMem_43e6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5269 = getelementptr inbounds %struct.GPR, %struct.GPR* %5268, i32 0, i32 33
  %5270 = getelementptr inbounds %struct.Reg, %struct.Reg* %5269, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %5270 to i64*
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5272 = getelementptr inbounds %struct.GPR, %struct.GPR* %5271, i32 0, i32 7
  %5273 = getelementptr inbounds %struct.Reg, %struct.Reg* %5272, i32 0, i32 0
  %RDX.i663 = bitcast %union.anon* %5273 to i64*
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 15
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %5276 to i64*
  %5277 = load i64, i64* %RBP.i664
  %5278 = sub i64 %5277, 48
  %5279 = load i64, i64* %PC.i662
  %5280 = add i64 %5279, 4
  store i64 %5280, i64* %PC.i662
  %5281 = inttoptr i64 %5278 to i64*
  %5282 = load i64, i64* %5281
  store i64 %5282, i64* %RDX.i663, align 8
  store %struct.Memory* %loadMem_43e6b4, %struct.Memory** %MEMORY
  %loadMem_43e6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 33
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %5285 to i64*
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 9
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %RSI.i660 = bitcast %union.anon* %5288 to i64*
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 15
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %5291 to i64*
  %5292 = load i64, i64* %RBP.i661
  %5293 = sub i64 %5292, 84
  %5294 = load i64, i64* %PC.i659
  %5295 = add i64 %5294, 4
  store i64 %5295, i64* %PC.i659
  %5296 = inttoptr i64 %5293 to i32*
  %5297 = load i32, i32* %5296
  %5298 = sext i32 %5297 to i64
  store i64 %5298, i64* %RSI.i660, align 8
  store %struct.Memory* %loadMem_43e6b8, %struct.Memory** %MEMORY
  %loadMem_43e6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 33
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %5301 to i64*
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 7
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %RDX.i657 = bitcast %union.anon* %5304 to i64*
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 9
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %RSI.i658 = bitcast %union.anon* %5307 to i64*
  %5308 = load i64, i64* %RDX.i657
  %5309 = load i64, i64* %RSI.i658
  %5310 = mul i64 %5309, 4
  %5311 = add i64 %5310, %5308
  %5312 = load i64, i64* %PC.i656
  %5313 = add i64 %5312, 4
  store i64 %5313, i64* %PC.i656
  %5314 = inttoptr i64 %5311 to i32*
  %5315 = load i32, i32* %5314
  %5316 = sext i32 %5315 to i64
  store i64 %5316, i64* %RDX.i657, align 8
  store %struct.Memory* %loadMem_43e6bc, %struct.Memory** %MEMORY
  %loadMem_43e6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 33
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %5319 to i64*
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 11
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %5323 = bitcast %union.anon* %5322 to %struct.anon.2*
  %DIL.i653 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5323, i32 0, i32 0
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 5
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %RCX.i654 = bitcast %union.anon* %5326 to i64*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 7
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %RDX.i655 = bitcast %union.anon* %5329 to i64*
  %5330 = load i64, i64* %RCX.i654
  %5331 = load i64, i64* %RDX.i655
  %5332 = add i64 %5331, %5330
  %5333 = load i8, i8* %DIL.i653
  %5334 = zext i8 %5333 to i64
  %5335 = load i64, i64* %PC.i652
  %5336 = add i64 %5335, 4
  store i64 %5336, i64* %PC.i652
  %5337 = inttoptr i64 %5332 to i8*
  store i8 %5333, i8* %5337
  store %struct.Memory* %loadMem_43e6c0, %struct.Memory** %MEMORY
  %loadMem_43e6c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 33
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %5340 to i64*
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5342 = getelementptr inbounds %struct.GPR, %struct.GPR* %5341, i32 0, i32 5
  %5343 = getelementptr inbounds %struct.Reg, %struct.Reg* %5342, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %5343 to i64*
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5345 = getelementptr inbounds %struct.GPR, %struct.GPR* %5344, i32 0, i32 15
  %5346 = getelementptr inbounds %struct.Reg, %struct.Reg* %5345, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %5346 to i64*
  %5347 = load i64, i64* %RBP.i651
  %5348 = sub i64 %5347, 16
  %5349 = load i64, i64* %PC.i649
  %5350 = add i64 %5349, 4
  store i64 %5350, i64* %PC.i649
  %5351 = inttoptr i64 %5348 to i64*
  %5352 = load i64, i64* %5351
  store i64 %5352, i64* %RCX.i650, align 8
  store %struct.Memory* %loadMem_43e6c4, %struct.Memory** %MEMORY
  %loadMem_43e6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 33
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %5355 to i64*
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 7
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %RDX.i647 = bitcast %union.anon* %5358 to i64*
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5360 = getelementptr inbounds %struct.GPR, %struct.GPR* %5359, i32 0, i32 15
  %5361 = getelementptr inbounds %struct.Reg, %struct.Reg* %5360, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %5361 to i64*
  %5362 = load i64, i64* %RBP.i648
  %5363 = sub i64 %5362, 48
  %5364 = load i64, i64* %PC.i646
  %5365 = add i64 %5364, 4
  store i64 %5365, i64* %PC.i646
  %5366 = inttoptr i64 %5363 to i64*
  %5367 = load i64, i64* %5366
  store i64 %5367, i64* %RDX.i647, align 8
  store %struct.Memory* %loadMem_43e6c8, %struct.Memory** %MEMORY
  %loadMem_43e6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 33
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 1
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %5373 to i64*
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5375 = getelementptr inbounds %struct.GPR, %struct.GPR* %5374, i32 0, i32 15
  %5376 = getelementptr inbounds %struct.Reg, %struct.Reg* %5375, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %5376 to i64*
  %5377 = load i64, i64* %RBP.i645
  %5378 = sub i64 %5377, 68
  %5379 = load i64, i64* %PC.i643
  %5380 = add i64 %5379, 3
  store i64 %5380, i64* %PC.i643
  %5381 = inttoptr i64 %5378 to i32*
  %5382 = load i32, i32* %5381
  %5383 = zext i32 %5382 to i64
  store i64 %5383, i64* %RAX.i644, align 8
  store %struct.Memory* %loadMem_43e6cc, %struct.Memory** %MEMORY
  %loadMem_43e6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 33
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %5386 to i64*
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 1
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %RAX.i642 = bitcast %union.anon* %5389 to i64*
  %5390 = load i64, i64* %RAX.i642
  %5391 = load i64, i64* %PC.i641
  %5392 = add i64 %5391, 3
  store i64 %5392, i64* %PC.i641
  %5393 = trunc i64 %5390 to i32
  %5394 = sub i32 %5393, 1
  %5395 = zext i32 %5394 to i64
  store i64 %5395, i64* %RAX.i642, align 8
  %5396 = icmp ult i32 %5393, 1
  %5397 = zext i1 %5396 to i8
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5397, i8* %5398, align 1
  %5399 = and i32 %5394, 255
  %5400 = call i32 @llvm.ctpop.i32(i32 %5399)
  %5401 = trunc i32 %5400 to i8
  %5402 = and i8 %5401, 1
  %5403 = xor i8 %5402, 1
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5403, i8* %5404, align 1
  %5405 = xor i64 1, %5390
  %5406 = trunc i64 %5405 to i32
  %5407 = xor i32 %5406, %5394
  %5408 = lshr i32 %5407, 4
  %5409 = trunc i32 %5408 to i8
  %5410 = and i8 %5409, 1
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5410, i8* %5411, align 1
  %5412 = icmp eq i32 %5394, 0
  %5413 = zext i1 %5412 to i8
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5413, i8* %5414, align 1
  %5415 = lshr i32 %5394, 31
  %5416 = trunc i32 %5415 to i8
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5416, i8* %5417, align 1
  %5418 = lshr i32 %5393, 31
  %5419 = xor i32 %5415, %5418
  %5420 = add i32 %5419, %5418
  %5421 = icmp eq i32 %5420, 2
  %5422 = zext i1 %5421 to i8
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5422, i8* %5423, align 1
  store %struct.Memory* %loadMem_43e6cf, %struct.Memory** %MEMORY
  %loadMem_43e6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5425 = getelementptr inbounds %struct.GPR, %struct.GPR* %5424, i32 0, i32 33
  %5426 = getelementptr inbounds %struct.Reg, %struct.Reg* %5425, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %5426 to i64*
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 1
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %EAX.i639 = bitcast %union.anon* %5429 to i32*
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5431 = getelementptr inbounds %struct.GPR, %struct.GPR* %5430, i32 0, i32 9
  %5432 = getelementptr inbounds %struct.Reg, %struct.Reg* %5431, i32 0, i32 0
  %RSI.i640 = bitcast %union.anon* %5432 to i64*
  %5433 = load i32, i32* %EAX.i639
  %5434 = zext i32 %5433 to i64
  %5435 = load i64, i64* %PC.i638
  %5436 = add i64 %5435, 3
  store i64 %5436, i64* %PC.i638
  %5437 = shl i64 %5434, 32
  %5438 = ashr exact i64 %5437, 32
  store i64 %5438, i64* %RSI.i640, align 8
  store %struct.Memory* %loadMem_43e6d2, %struct.Memory** %MEMORY
  %loadMem_43e6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 33
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %5441 to i64*
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 7
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %RDX.i636 = bitcast %union.anon* %5444 to i64*
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5446 = getelementptr inbounds %struct.GPR, %struct.GPR* %5445, i32 0, i32 9
  %5447 = getelementptr inbounds %struct.Reg, %struct.Reg* %5446, i32 0, i32 0
  %RSI.i637 = bitcast %union.anon* %5447 to i64*
  %5448 = load i64, i64* %RDX.i636
  %5449 = load i64, i64* %RSI.i637
  %5450 = mul i64 %5449, 4
  %5451 = add i64 %5450, %5448
  %5452 = load i64, i64* %PC.i635
  %5453 = add i64 %5452, 4
  store i64 %5453, i64* %PC.i635
  %5454 = inttoptr i64 %5451 to i32*
  %5455 = load i32, i32* %5454
  %5456 = sext i32 %5455 to i64
  store i64 %5456, i64* %RDX.i636, align 8
  store %struct.Memory* %loadMem_43e6d5, %struct.Memory** %MEMORY
  %loadMem_43e6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 33
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %5459 to i64*
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 11
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %5463 = bitcast %union.anon* %5462 to %struct.anon.2*
  %DIL.i632 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5463, i32 0, i32 0
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5465 = getelementptr inbounds %struct.GPR, %struct.GPR* %5464, i32 0, i32 5
  %5466 = getelementptr inbounds %struct.Reg, %struct.Reg* %5465, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %5466 to i64*
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5468 = getelementptr inbounds %struct.GPR, %struct.GPR* %5467, i32 0, i32 7
  %5469 = getelementptr inbounds %struct.Reg, %struct.Reg* %5468, i32 0, i32 0
  %RDX.i634 = bitcast %union.anon* %5469 to i64*
  %5470 = load i64, i64* %RCX.i633
  %5471 = load i64, i64* %RDX.i634
  %5472 = add i64 %5471, %5470
  %5473 = load i64, i64* %PC.i631
  %5474 = add i64 %5473, 4
  store i64 %5474, i64* %PC.i631
  %5475 = inttoptr i64 %5472 to i8*
  %5476 = load i8, i8* %5475
  store i8 %5476, i8* %DIL.i632, align 1
  store %struct.Memory* %loadMem_43e6d9, %struct.Memory** %MEMORY
  %loadMem_43e6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 33
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %5479 to i64*
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 5
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %RCX.i629 = bitcast %union.anon* %5482 to i64*
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 15
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %5485 to i64*
  %5486 = load i64, i64* %RBP.i630
  %5487 = sub i64 %5486, 16
  %5488 = load i64, i64* %PC.i628
  %5489 = add i64 %5488, 4
  store i64 %5489, i64* %PC.i628
  %5490 = inttoptr i64 %5487 to i64*
  %5491 = load i64, i64* %5490
  store i64 %5491, i64* %RCX.i629, align 8
  store %struct.Memory* %loadMem_43e6dd, %struct.Memory** %MEMORY
  %loadMem_43e6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5493 = getelementptr inbounds %struct.GPR, %struct.GPR* %5492, i32 0, i32 33
  %5494 = getelementptr inbounds %struct.Reg, %struct.Reg* %5493, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %5494 to i64*
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5496 = getelementptr inbounds %struct.GPR, %struct.GPR* %5495, i32 0, i32 7
  %5497 = getelementptr inbounds %struct.Reg, %struct.Reg* %5496, i32 0, i32 0
  %RDX.i626 = bitcast %union.anon* %5497 to i64*
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5499 = getelementptr inbounds %struct.GPR, %struct.GPR* %5498, i32 0, i32 15
  %5500 = getelementptr inbounds %struct.Reg, %struct.Reg* %5499, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %5500 to i64*
  %5501 = load i64, i64* %RBP.i627
  %5502 = sub i64 %5501, 48
  %5503 = load i64, i64* %PC.i625
  %5504 = add i64 %5503, 4
  store i64 %5504, i64* %PC.i625
  %5505 = inttoptr i64 %5502 to i64*
  %5506 = load i64, i64* %5505
  store i64 %5506, i64* %RDX.i626, align 8
  store %struct.Memory* %loadMem_43e6e1, %struct.Memory** %MEMORY
  %loadMem_43e6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 33
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %5509 to i64*
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5511 = getelementptr inbounds %struct.GPR, %struct.GPR* %5510, i32 0, i32 9
  %5512 = getelementptr inbounds %struct.Reg, %struct.Reg* %5511, i32 0, i32 0
  %RSI.i623 = bitcast %union.anon* %5512 to i64*
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5514 = getelementptr inbounds %struct.GPR, %struct.GPR* %5513, i32 0, i32 15
  %5515 = getelementptr inbounds %struct.Reg, %struct.Reg* %5514, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %5515 to i64*
  %5516 = load i64, i64* %RBP.i624
  %5517 = sub i64 %5516, 84
  %5518 = load i64, i64* %PC.i622
  %5519 = add i64 %5518, 4
  store i64 %5519, i64* %PC.i622
  %5520 = inttoptr i64 %5517 to i32*
  %5521 = load i32, i32* %5520
  %5522 = sext i32 %5521 to i64
  store i64 %5522, i64* %RSI.i623, align 8
  store %struct.Memory* %loadMem_43e6e5, %struct.Memory** %MEMORY
  %loadMem_43e6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5524 = getelementptr inbounds %struct.GPR, %struct.GPR* %5523, i32 0, i32 33
  %5525 = getelementptr inbounds %struct.Reg, %struct.Reg* %5524, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %5525 to i64*
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5527 = getelementptr inbounds %struct.GPR, %struct.GPR* %5526, i32 0, i32 7
  %5528 = getelementptr inbounds %struct.Reg, %struct.Reg* %5527, i32 0, i32 0
  %RDX.i620 = bitcast %union.anon* %5528 to i64*
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5530 = getelementptr inbounds %struct.GPR, %struct.GPR* %5529, i32 0, i32 9
  %5531 = getelementptr inbounds %struct.Reg, %struct.Reg* %5530, i32 0, i32 0
  %RSI.i621 = bitcast %union.anon* %5531 to i64*
  %5532 = load i64, i64* %RDX.i620
  %5533 = load i64, i64* %RSI.i621
  %5534 = mul i64 %5533, 4
  %5535 = add i64 %5534, %5532
  %5536 = load i64, i64* %PC.i619
  %5537 = add i64 %5536, 4
  store i64 %5537, i64* %PC.i619
  %5538 = inttoptr i64 %5535 to i32*
  %5539 = load i32, i32* %5538
  %5540 = sext i32 %5539 to i64
  store i64 %5540, i64* %RDX.i620, align 8
  store %struct.Memory* %loadMem_43e6e9, %struct.Memory** %MEMORY
  %loadMem_43e6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5542 = getelementptr inbounds %struct.GPR, %struct.GPR* %5541, i32 0, i32 33
  %5543 = getelementptr inbounds %struct.Reg, %struct.Reg* %5542, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %5543 to i64*
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 11
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %5547 = bitcast %union.anon* %5546 to %struct.anon.2*
  %DIL.i616 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5547, i32 0, i32 0
  %5548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5549 = getelementptr inbounds %struct.GPR, %struct.GPR* %5548, i32 0, i32 5
  %5550 = getelementptr inbounds %struct.Reg, %struct.Reg* %5549, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %5550 to i64*
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5552 = getelementptr inbounds %struct.GPR, %struct.GPR* %5551, i32 0, i32 7
  %5553 = getelementptr inbounds %struct.Reg, %struct.Reg* %5552, i32 0, i32 0
  %RDX.i618 = bitcast %union.anon* %5553 to i64*
  %5554 = load i64, i64* %RCX.i617
  %5555 = load i64, i64* %RDX.i618
  %5556 = add i64 %5555, %5554
  %5557 = load i8, i8* %DIL.i616
  %5558 = zext i8 %5557 to i64
  %5559 = load i64, i64* %PC.i615
  %5560 = add i64 %5559, 4
  store i64 %5560, i64* %PC.i615
  %5561 = inttoptr i64 %5556 to i8*
  store i8 %5557, i8* %5561
  store %struct.Memory* %loadMem_43e6ed, %struct.Memory** %MEMORY
  %loadMem_43e6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 33
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %5564 to i64*
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5566 = getelementptr inbounds %struct.GPR, %struct.GPR* %5565, i32 0, i32 5
  %5567 = getelementptr inbounds %struct.Reg, %struct.Reg* %5566, i32 0, i32 0
  %RCX.i613 = bitcast %union.anon* %5567 to i64*
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 15
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %5570 to i64*
  %5571 = load i64, i64* %RBP.i614
  %5572 = sub i64 %5571, 48
  %5573 = load i64, i64* %PC.i612
  %5574 = add i64 %5573, 4
  store i64 %5574, i64* %PC.i612
  %5575 = inttoptr i64 %5572 to i64*
  %5576 = load i64, i64* %5575
  store i64 %5576, i64* %RCX.i613, align 8
  store %struct.Memory* %loadMem_43e6f1, %struct.Memory** %MEMORY
  %loadMem_43e6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5578 = getelementptr inbounds %struct.GPR, %struct.GPR* %5577, i32 0, i32 33
  %5579 = getelementptr inbounds %struct.Reg, %struct.Reg* %5578, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %5579 to i64*
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 1
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %RAX.i610 = bitcast %union.anon* %5582 to i64*
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5584 = getelementptr inbounds %struct.GPR, %struct.GPR* %5583, i32 0, i32 15
  %5585 = getelementptr inbounds %struct.Reg, %struct.Reg* %5584, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %5585 to i64*
  %5586 = load i64, i64* %RBP.i611
  %5587 = sub i64 %5586, 68
  %5588 = load i64, i64* %PC.i609
  %5589 = add i64 %5588, 3
  store i64 %5589, i64* %PC.i609
  %5590 = inttoptr i64 %5587 to i32*
  %5591 = load i32, i32* %5590
  %5592 = zext i32 %5591 to i64
  store i64 %5592, i64* %RAX.i610, align 8
  store %struct.Memory* %loadMem_43e6f5, %struct.Memory** %MEMORY
  %loadMem_43e6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 33
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %5595 to i64*
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 1
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %RAX.i608 = bitcast %union.anon* %5598 to i64*
  %5599 = load i64, i64* %RAX.i608
  %5600 = load i64, i64* %PC.i607
  %5601 = add i64 %5600, 3
  store i64 %5601, i64* %PC.i607
  %5602 = trunc i64 %5599 to i32
  %5603 = sub i32 %5602, 1
  %5604 = zext i32 %5603 to i64
  store i64 %5604, i64* %RAX.i608, align 8
  %5605 = icmp ult i32 %5602, 1
  %5606 = zext i1 %5605 to i8
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5606, i8* %5607, align 1
  %5608 = and i32 %5603, 255
  %5609 = call i32 @llvm.ctpop.i32(i32 %5608)
  %5610 = trunc i32 %5609 to i8
  %5611 = and i8 %5610, 1
  %5612 = xor i8 %5611, 1
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5612, i8* %5613, align 1
  %5614 = xor i64 1, %5599
  %5615 = trunc i64 %5614 to i32
  %5616 = xor i32 %5615, %5603
  %5617 = lshr i32 %5616, 4
  %5618 = trunc i32 %5617 to i8
  %5619 = and i8 %5618, 1
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5619, i8* %5620, align 1
  %5621 = icmp eq i32 %5603, 0
  %5622 = zext i1 %5621 to i8
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5622, i8* %5623, align 1
  %5624 = lshr i32 %5603, 31
  %5625 = trunc i32 %5624 to i8
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5625, i8* %5626, align 1
  %5627 = lshr i32 %5602, 31
  %5628 = xor i32 %5624, %5627
  %5629 = add i32 %5628, %5627
  %5630 = icmp eq i32 %5629, 2
  %5631 = zext i1 %5630 to i8
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5631, i8* %5632, align 1
  store %struct.Memory* %loadMem_43e6f8, %struct.Memory** %MEMORY
  %loadMem_43e6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 33
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %5635 to i64*
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5637 = getelementptr inbounds %struct.GPR, %struct.GPR* %5636, i32 0, i32 1
  %5638 = getelementptr inbounds %struct.Reg, %struct.Reg* %5637, i32 0, i32 0
  %EAX.i605 = bitcast %union.anon* %5638 to i32*
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 7
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %RDX.i606 = bitcast %union.anon* %5641 to i64*
  %5642 = load i32, i32* %EAX.i605
  %5643 = zext i32 %5642 to i64
  %5644 = load i64, i64* %PC.i604
  %5645 = add i64 %5644, 3
  store i64 %5645, i64* %PC.i604
  %5646 = shl i64 %5643, 32
  %5647 = ashr exact i64 %5646, 32
  store i64 %5647, i64* %RDX.i606, align 8
  store %struct.Memory* %loadMem_43e6fb, %struct.Memory** %MEMORY
  %loadMem_43e6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 33
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %5650 to i64*
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 1
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %5653 to i64*
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 5
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %RCX.i602 = bitcast %union.anon* %5656 to i64*
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5658 = getelementptr inbounds %struct.GPR, %struct.GPR* %5657, i32 0, i32 7
  %5659 = getelementptr inbounds %struct.Reg, %struct.Reg* %5658, i32 0, i32 0
  %RDX.i603 = bitcast %union.anon* %5659 to i64*
  %5660 = load i64, i64* %RCX.i602
  %5661 = load i64, i64* %RDX.i603
  %5662 = mul i64 %5661, 4
  %5663 = add i64 %5662, %5660
  %5664 = load i64, i64* %PC.i600
  %5665 = add i64 %5664, 3
  store i64 %5665, i64* %PC.i600
  %5666 = inttoptr i64 %5663 to i32*
  %5667 = load i32, i32* %5666
  %5668 = zext i32 %5667 to i64
  store i64 %5668, i64* %RAX.i601, align 8
  store %struct.Memory* %loadMem_43e6fe, %struct.Memory** %MEMORY
  %loadMem_43e701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5670 = getelementptr inbounds %struct.GPR, %struct.GPR* %5669, i32 0, i32 33
  %5671 = getelementptr inbounds %struct.Reg, %struct.Reg* %5670, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %5671 to i64*
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5673 = getelementptr inbounds %struct.GPR, %struct.GPR* %5672, i32 0, i32 5
  %5674 = getelementptr inbounds %struct.Reg, %struct.Reg* %5673, i32 0, i32 0
  %RCX.i598 = bitcast %union.anon* %5674 to i64*
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 15
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %5677 to i64*
  %5678 = load i64, i64* %RBP.i599
  %5679 = sub i64 %5678, 48
  %5680 = load i64, i64* %PC.i597
  %5681 = add i64 %5680, 4
  store i64 %5681, i64* %PC.i597
  %5682 = inttoptr i64 %5679 to i64*
  %5683 = load i64, i64* %5682
  store i64 %5683, i64* %RCX.i598, align 8
  store %struct.Memory* %loadMem_43e701, %struct.Memory** %MEMORY
  %loadMem_43e705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5685 = getelementptr inbounds %struct.GPR, %struct.GPR* %5684, i32 0, i32 33
  %5686 = getelementptr inbounds %struct.Reg, %struct.Reg* %5685, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %5686 to i64*
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5688 = getelementptr inbounds %struct.GPR, %struct.GPR* %5687, i32 0, i32 7
  %5689 = getelementptr inbounds %struct.Reg, %struct.Reg* %5688, i32 0, i32 0
  %RDX.i595 = bitcast %union.anon* %5689 to i64*
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5691 = getelementptr inbounds %struct.GPR, %struct.GPR* %5690, i32 0, i32 15
  %5692 = getelementptr inbounds %struct.Reg, %struct.Reg* %5691, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %5692 to i64*
  %5693 = load i64, i64* %RBP.i596
  %5694 = sub i64 %5693, 84
  %5695 = load i64, i64* %PC.i594
  %5696 = add i64 %5695, 4
  store i64 %5696, i64* %PC.i594
  %5697 = inttoptr i64 %5694 to i32*
  %5698 = load i32, i32* %5697
  %5699 = sext i32 %5698 to i64
  store i64 %5699, i64* %RDX.i595, align 8
  store %struct.Memory* %loadMem_43e705, %struct.Memory** %MEMORY
  %loadMem_43e709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5701 = getelementptr inbounds %struct.GPR, %struct.GPR* %5700, i32 0, i32 33
  %5702 = getelementptr inbounds %struct.Reg, %struct.Reg* %5701, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %5702 to i64*
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5704 = getelementptr inbounds %struct.GPR, %struct.GPR* %5703, i32 0, i32 1
  %5705 = getelementptr inbounds %struct.Reg, %struct.Reg* %5704, i32 0, i32 0
  %EAX.i591 = bitcast %union.anon* %5705 to i32*
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5707 = getelementptr inbounds %struct.GPR, %struct.GPR* %5706, i32 0, i32 5
  %5708 = getelementptr inbounds %struct.Reg, %struct.Reg* %5707, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %5708 to i64*
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5710 = getelementptr inbounds %struct.GPR, %struct.GPR* %5709, i32 0, i32 7
  %5711 = getelementptr inbounds %struct.Reg, %struct.Reg* %5710, i32 0, i32 0
  %RDX.i593 = bitcast %union.anon* %5711 to i64*
  %5712 = load i64, i64* %RCX.i592
  %5713 = load i64, i64* %RDX.i593
  %5714 = mul i64 %5713, 4
  %5715 = add i64 %5714, %5712
  %5716 = load i32, i32* %EAX.i591
  %5717 = zext i32 %5716 to i64
  %5718 = load i64, i64* %PC.i590
  %5719 = add i64 %5718, 3
  store i64 %5719, i64* %PC.i590
  %5720 = inttoptr i64 %5715 to i32*
  store i32 %5716, i32* %5720
  store %struct.Memory* %loadMem_43e709, %struct.Memory** %MEMORY
  %loadMem_43e70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 33
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %5723 to i64*
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5725 = getelementptr inbounds %struct.GPR, %struct.GPR* %5724, i32 0, i32 11
  %5726 = getelementptr inbounds %struct.Reg, %struct.Reg* %5725, i32 0, i32 0
  %5727 = bitcast %union.anon* %5726 to %struct.anon.2*
  %DIL.i588 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5727, i32 0, i32 0
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5729 = getelementptr inbounds %struct.GPR, %struct.GPR* %5728, i32 0, i32 15
  %5730 = getelementptr inbounds %struct.Reg, %struct.Reg* %5729, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %5730 to i64*
  %5731 = load i64, i64* %RBP.i589
  %5732 = sub i64 %5731, 89
  %5733 = load i64, i64* %PC.i587
  %5734 = add i64 %5733, 4
  store i64 %5734, i64* %PC.i587
  %5735 = inttoptr i64 %5732 to i8*
  %5736 = load i8, i8* %5735
  store i8 %5736, i8* %DIL.i588, align 1
  store %struct.Memory* %loadMem_43e70c, %struct.Memory** %MEMORY
  %loadMem_43e710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5738 = getelementptr inbounds %struct.GPR, %struct.GPR* %5737, i32 0, i32 33
  %5739 = getelementptr inbounds %struct.Reg, %struct.Reg* %5738, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %5739 to i64*
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 5
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %5742 to i64*
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5744 = getelementptr inbounds %struct.GPR, %struct.GPR* %5743, i32 0, i32 15
  %5745 = getelementptr inbounds %struct.Reg, %struct.Reg* %5744, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %5745 to i64*
  %5746 = load i64, i64* %RBP.i586
  %5747 = sub i64 %5746, 8
  %5748 = load i64, i64* %PC.i584
  %5749 = add i64 %5748, 4
  store i64 %5749, i64* %PC.i584
  %5750 = inttoptr i64 %5747 to i64*
  %5751 = load i64, i64* %5750
  store i64 %5751, i64* %RCX.i585, align 8
  store %struct.Memory* %loadMem_43e710, %struct.Memory** %MEMORY
  %loadMem_43e714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5753 = getelementptr inbounds %struct.GPR, %struct.GPR* %5752, i32 0, i32 33
  %5754 = getelementptr inbounds %struct.Reg, %struct.Reg* %5753, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %5754 to i64*
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5756 = getelementptr inbounds %struct.GPR, %struct.GPR* %5755, i32 0, i32 7
  %5757 = getelementptr inbounds %struct.Reg, %struct.Reg* %5756, i32 0, i32 0
  %RDX.i582 = bitcast %union.anon* %5757 to i64*
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 15
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %5760 to i64*
  %5761 = load i64, i64* %RBP.i583
  %5762 = sub i64 %5761, 48
  %5763 = load i64, i64* %PC.i581
  %5764 = add i64 %5763, 4
  store i64 %5764, i64* %PC.i581
  %5765 = inttoptr i64 %5762 to i64*
  %5766 = load i64, i64* %5765
  store i64 %5766, i64* %RDX.i582, align 8
  store %struct.Memory* %loadMem_43e714, %struct.Memory** %MEMORY
  %loadMem_43e718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5768 = getelementptr inbounds %struct.GPR, %struct.GPR* %5767, i32 0, i32 33
  %5769 = getelementptr inbounds %struct.Reg, %struct.Reg* %5768, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %5769 to i64*
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5771 = getelementptr inbounds %struct.GPR, %struct.GPR* %5770, i32 0, i32 1
  %5772 = getelementptr inbounds %struct.Reg, %struct.Reg* %5771, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %5772 to i64*
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 15
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %5775 to i64*
  %5776 = load i64, i64* %RBP.i580
  %5777 = sub i64 %5776, 68
  %5778 = load i64, i64* %PC.i578
  %5779 = add i64 %5778, 3
  store i64 %5779, i64* %PC.i578
  %5780 = inttoptr i64 %5777 to i32*
  %5781 = load i32, i32* %5780
  %5782 = zext i32 %5781 to i64
  store i64 %5782, i64* %RAX.i579, align 8
  store %struct.Memory* %loadMem_43e718, %struct.Memory** %MEMORY
  %loadMem_43e71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 33
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %5785 to i64*
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 1
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %RAX.i577 = bitcast %union.anon* %5788 to i64*
  %5789 = load i64, i64* %RAX.i577
  %5790 = load i64, i64* %PC.i576
  %5791 = add i64 %5790, 3
  store i64 %5791, i64* %PC.i576
  %5792 = trunc i64 %5789 to i32
  %5793 = sub i32 %5792, 1
  %5794 = zext i32 %5793 to i64
  store i64 %5794, i64* %RAX.i577, align 8
  %5795 = icmp ult i32 %5792, 1
  %5796 = zext i1 %5795 to i8
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5796, i8* %5797, align 1
  %5798 = and i32 %5793, 255
  %5799 = call i32 @llvm.ctpop.i32(i32 %5798)
  %5800 = trunc i32 %5799 to i8
  %5801 = and i8 %5800, 1
  %5802 = xor i8 %5801, 1
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5802, i8* %5803, align 1
  %5804 = xor i64 1, %5789
  %5805 = trunc i64 %5804 to i32
  %5806 = xor i32 %5805, %5793
  %5807 = lshr i32 %5806, 4
  %5808 = trunc i32 %5807 to i8
  %5809 = and i8 %5808, 1
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5809, i8* %5810, align 1
  %5811 = icmp eq i32 %5793, 0
  %5812 = zext i1 %5811 to i8
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5812, i8* %5813, align 1
  %5814 = lshr i32 %5793, 31
  %5815 = trunc i32 %5814 to i8
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5815, i8* %5816, align 1
  %5817 = lshr i32 %5792, 31
  %5818 = xor i32 %5814, %5817
  %5819 = add i32 %5818, %5817
  %5820 = icmp eq i32 %5819, 2
  %5821 = zext i1 %5820 to i8
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5821, i8* %5822, align 1
  store %struct.Memory* %loadMem_43e71b, %struct.Memory** %MEMORY
  %loadMem_43e71e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5824 = getelementptr inbounds %struct.GPR, %struct.GPR* %5823, i32 0, i32 33
  %5825 = getelementptr inbounds %struct.Reg, %struct.Reg* %5824, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %5825 to i64*
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5827 = getelementptr inbounds %struct.GPR, %struct.GPR* %5826, i32 0, i32 1
  %5828 = getelementptr inbounds %struct.Reg, %struct.Reg* %5827, i32 0, i32 0
  %EAX.i574 = bitcast %union.anon* %5828 to i32*
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5830 = getelementptr inbounds %struct.GPR, %struct.GPR* %5829, i32 0, i32 9
  %5831 = getelementptr inbounds %struct.Reg, %struct.Reg* %5830, i32 0, i32 0
  %RSI.i575 = bitcast %union.anon* %5831 to i64*
  %5832 = load i32, i32* %EAX.i574
  %5833 = zext i32 %5832 to i64
  %5834 = load i64, i64* %PC.i573
  %5835 = add i64 %5834, 3
  store i64 %5835, i64* %PC.i573
  %5836 = shl i64 %5833, 32
  %5837 = ashr exact i64 %5836, 32
  store i64 %5837, i64* %RSI.i575, align 8
  store %struct.Memory* %loadMem_43e71e, %struct.Memory** %MEMORY
  %loadMem_43e721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5839 = getelementptr inbounds %struct.GPR, %struct.GPR* %5838, i32 0, i32 33
  %5840 = getelementptr inbounds %struct.Reg, %struct.Reg* %5839, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %5840 to i64*
  %5841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5842 = getelementptr inbounds %struct.GPR, %struct.GPR* %5841, i32 0, i32 7
  %5843 = getelementptr inbounds %struct.Reg, %struct.Reg* %5842, i32 0, i32 0
  %RDX.i571 = bitcast %union.anon* %5843 to i64*
  %5844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5845 = getelementptr inbounds %struct.GPR, %struct.GPR* %5844, i32 0, i32 9
  %5846 = getelementptr inbounds %struct.Reg, %struct.Reg* %5845, i32 0, i32 0
  %RSI.i572 = bitcast %union.anon* %5846 to i64*
  %5847 = load i64, i64* %RDX.i571
  %5848 = load i64, i64* %RSI.i572
  %5849 = mul i64 %5848, 4
  %5850 = add i64 %5849, %5847
  %5851 = load i64, i64* %PC.i570
  %5852 = add i64 %5851, 4
  store i64 %5852, i64* %PC.i570
  %5853 = inttoptr i64 %5850 to i32*
  %5854 = load i32, i32* %5853
  %5855 = sext i32 %5854 to i64
  store i64 %5855, i64* %RDX.i571, align 8
  store %struct.Memory* %loadMem_43e721, %struct.Memory** %MEMORY
  %loadMem_43e725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5857 = getelementptr inbounds %struct.GPR, %struct.GPR* %5856, i32 0, i32 33
  %5858 = getelementptr inbounds %struct.Reg, %struct.Reg* %5857, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %5858 to i64*
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 11
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %5862 = bitcast %union.anon* %5861 to %struct.anon.2*
  %DIL.i567 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5862, i32 0, i32 0
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5864 = getelementptr inbounds %struct.GPR, %struct.GPR* %5863, i32 0, i32 5
  %5865 = getelementptr inbounds %struct.Reg, %struct.Reg* %5864, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %5865 to i64*
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5867 = getelementptr inbounds %struct.GPR, %struct.GPR* %5866, i32 0, i32 7
  %5868 = getelementptr inbounds %struct.Reg, %struct.Reg* %5867, i32 0, i32 0
  %RDX.i569 = bitcast %union.anon* %5868 to i64*
  %5869 = load i64, i64* %RCX.i568
  %5870 = load i64, i64* %RDX.i569
  %5871 = add i64 %5870, %5869
  %5872 = load i8, i8* %DIL.i567
  %5873 = zext i8 %5872 to i64
  %5874 = load i64, i64* %PC.i566
  %5875 = add i64 %5874, 4
  store i64 %5875, i64* %PC.i566
  %5876 = inttoptr i64 %5871 to i8*
  store i8 %5872, i8* %5876
  store %struct.Memory* %loadMem_43e725, %struct.Memory** %MEMORY
  %loadMem_43e729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 33
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %5879 to i64*
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5881 = getelementptr inbounds %struct.GPR, %struct.GPR* %5880, i32 0, i32 11
  %5882 = getelementptr inbounds %struct.Reg, %struct.Reg* %5881, i32 0, i32 0
  %5883 = bitcast %union.anon* %5882 to %struct.anon.2*
  %DIL.i564 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5883, i32 0, i32 0
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5885 = getelementptr inbounds %struct.GPR, %struct.GPR* %5884, i32 0, i32 15
  %5886 = getelementptr inbounds %struct.Reg, %struct.Reg* %5885, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %5886 to i64*
  %5887 = load i64, i64* %RBP.i565
  %5888 = sub i64 %5887, 90
  %5889 = load i64, i64* %PC.i563
  %5890 = add i64 %5889, 4
  store i64 %5890, i64* %PC.i563
  %5891 = inttoptr i64 %5888 to i8*
  %5892 = load i8, i8* %5891
  store i8 %5892, i8* %DIL.i564, align 1
  store %struct.Memory* %loadMem_43e729, %struct.Memory** %MEMORY
  %loadMem_43e72d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5894 = getelementptr inbounds %struct.GPR, %struct.GPR* %5893, i32 0, i32 33
  %5895 = getelementptr inbounds %struct.Reg, %struct.Reg* %5894, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %5895 to i64*
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5897 = getelementptr inbounds %struct.GPR, %struct.GPR* %5896, i32 0, i32 5
  %5898 = getelementptr inbounds %struct.Reg, %struct.Reg* %5897, i32 0, i32 0
  %RCX.i561 = bitcast %union.anon* %5898 to i64*
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5900 = getelementptr inbounds %struct.GPR, %struct.GPR* %5899, i32 0, i32 15
  %5901 = getelementptr inbounds %struct.Reg, %struct.Reg* %5900, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %5901 to i64*
  %5902 = load i64, i64* %RBP.i562
  %5903 = sub i64 %5902, 16
  %5904 = load i64, i64* %PC.i560
  %5905 = add i64 %5904, 4
  store i64 %5905, i64* %PC.i560
  %5906 = inttoptr i64 %5903 to i64*
  %5907 = load i64, i64* %5906
  store i64 %5907, i64* %RCX.i561, align 8
  store %struct.Memory* %loadMem_43e72d, %struct.Memory** %MEMORY
  %loadMem_43e731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 33
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %5910 to i64*
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 7
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %RDX.i558 = bitcast %union.anon* %5913 to i64*
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5915 = getelementptr inbounds %struct.GPR, %struct.GPR* %5914, i32 0, i32 15
  %5916 = getelementptr inbounds %struct.Reg, %struct.Reg* %5915, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %5916 to i64*
  %5917 = load i64, i64* %RBP.i559
  %5918 = sub i64 %5917, 48
  %5919 = load i64, i64* %PC.i557
  %5920 = add i64 %5919, 4
  store i64 %5920, i64* %PC.i557
  %5921 = inttoptr i64 %5918 to i64*
  %5922 = load i64, i64* %5921
  store i64 %5922, i64* %RDX.i558, align 8
  store %struct.Memory* %loadMem_43e731, %struct.Memory** %MEMORY
  %loadMem_43e735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5924 = getelementptr inbounds %struct.GPR, %struct.GPR* %5923, i32 0, i32 33
  %5925 = getelementptr inbounds %struct.Reg, %struct.Reg* %5924, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %5925 to i64*
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5927 = getelementptr inbounds %struct.GPR, %struct.GPR* %5926, i32 0, i32 1
  %5928 = getelementptr inbounds %struct.Reg, %struct.Reg* %5927, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %5928 to i64*
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5930 = getelementptr inbounds %struct.GPR, %struct.GPR* %5929, i32 0, i32 15
  %5931 = getelementptr inbounds %struct.Reg, %struct.Reg* %5930, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %5931 to i64*
  %5932 = load i64, i64* %RBP.i556
  %5933 = sub i64 %5932, 68
  %5934 = load i64, i64* %PC.i554
  %5935 = add i64 %5934, 3
  store i64 %5935, i64* %PC.i554
  %5936 = inttoptr i64 %5933 to i32*
  %5937 = load i32, i32* %5936
  %5938 = zext i32 %5937 to i64
  store i64 %5938, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_43e735, %struct.Memory** %MEMORY
  %loadMem_43e738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5940 = getelementptr inbounds %struct.GPR, %struct.GPR* %5939, i32 0, i32 33
  %5941 = getelementptr inbounds %struct.Reg, %struct.Reg* %5940, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %5941 to i64*
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5943 = getelementptr inbounds %struct.GPR, %struct.GPR* %5942, i32 0, i32 1
  %5944 = getelementptr inbounds %struct.Reg, %struct.Reg* %5943, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %5944 to i64*
  %5945 = load i64, i64* %RAX.i553
  %5946 = load i64, i64* %PC.i552
  %5947 = add i64 %5946, 3
  store i64 %5947, i64* %PC.i552
  %5948 = trunc i64 %5945 to i32
  %5949 = sub i32 %5948, 1
  %5950 = zext i32 %5949 to i64
  store i64 %5950, i64* %RAX.i553, align 8
  %5951 = icmp ult i32 %5948, 1
  %5952 = zext i1 %5951 to i8
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5952, i8* %5953, align 1
  %5954 = and i32 %5949, 255
  %5955 = call i32 @llvm.ctpop.i32(i32 %5954)
  %5956 = trunc i32 %5955 to i8
  %5957 = and i8 %5956, 1
  %5958 = xor i8 %5957, 1
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5958, i8* %5959, align 1
  %5960 = xor i64 1, %5945
  %5961 = trunc i64 %5960 to i32
  %5962 = xor i32 %5961, %5949
  %5963 = lshr i32 %5962, 4
  %5964 = trunc i32 %5963 to i8
  %5965 = and i8 %5964, 1
  %5966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5965, i8* %5966, align 1
  %5967 = icmp eq i32 %5949, 0
  %5968 = zext i1 %5967 to i8
  %5969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5968, i8* %5969, align 1
  %5970 = lshr i32 %5949, 31
  %5971 = trunc i32 %5970 to i8
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5971, i8* %5972, align 1
  %5973 = lshr i32 %5948, 31
  %5974 = xor i32 %5970, %5973
  %5975 = add i32 %5974, %5973
  %5976 = icmp eq i32 %5975, 2
  %5977 = zext i1 %5976 to i8
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5977, i8* %5978, align 1
  store %struct.Memory* %loadMem_43e738, %struct.Memory** %MEMORY
  %loadMem_43e73b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 33
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %5981 to i64*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 1
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %EAX.i550 = bitcast %union.anon* %5984 to i32*
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 9
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %RSI.i551 = bitcast %union.anon* %5987 to i64*
  %5988 = load i32, i32* %EAX.i550
  %5989 = zext i32 %5988 to i64
  %5990 = load i64, i64* %PC.i549
  %5991 = add i64 %5990, 3
  store i64 %5991, i64* %PC.i549
  %5992 = shl i64 %5989, 32
  %5993 = ashr exact i64 %5992, 32
  store i64 %5993, i64* %RSI.i551, align 8
  store %struct.Memory* %loadMem_43e73b, %struct.Memory** %MEMORY
  %loadMem_43e73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5995 = getelementptr inbounds %struct.GPR, %struct.GPR* %5994, i32 0, i32 33
  %5996 = getelementptr inbounds %struct.Reg, %struct.Reg* %5995, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %5996 to i64*
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5998 = getelementptr inbounds %struct.GPR, %struct.GPR* %5997, i32 0, i32 7
  %5999 = getelementptr inbounds %struct.Reg, %struct.Reg* %5998, i32 0, i32 0
  %RDX.i547 = bitcast %union.anon* %5999 to i64*
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 9
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %RSI.i548 = bitcast %union.anon* %6002 to i64*
  %6003 = load i64, i64* %RDX.i547
  %6004 = load i64, i64* %RSI.i548
  %6005 = mul i64 %6004, 4
  %6006 = add i64 %6005, %6003
  %6007 = load i64, i64* %PC.i546
  %6008 = add i64 %6007, 4
  store i64 %6008, i64* %PC.i546
  %6009 = inttoptr i64 %6006 to i32*
  %6010 = load i32, i32* %6009
  %6011 = sext i32 %6010 to i64
  store i64 %6011, i64* %RDX.i547, align 8
  store %struct.Memory* %loadMem_43e73e, %struct.Memory** %MEMORY
  %loadMem_43e742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6013 = getelementptr inbounds %struct.GPR, %struct.GPR* %6012, i32 0, i32 33
  %6014 = getelementptr inbounds %struct.Reg, %struct.Reg* %6013, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %6014 to i64*
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 11
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %6018 = bitcast %union.anon* %6017 to %struct.anon.2*
  %DIL.i543 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6018, i32 0, i32 0
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6020 = getelementptr inbounds %struct.GPR, %struct.GPR* %6019, i32 0, i32 5
  %6021 = getelementptr inbounds %struct.Reg, %struct.Reg* %6020, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %6021 to i64*
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6023 = getelementptr inbounds %struct.GPR, %struct.GPR* %6022, i32 0, i32 7
  %6024 = getelementptr inbounds %struct.Reg, %struct.Reg* %6023, i32 0, i32 0
  %RDX.i545 = bitcast %union.anon* %6024 to i64*
  %6025 = load i64, i64* %RCX.i544
  %6026 = load i64, i64* %RDX.i545
  %6027 = add i64 %6026, %6025
  %6028 = load i8, i8* %DIL.i543
  %6029 = zext i8 %6028 to i64
  %6030 = load i64, i64* %PC.i542
  %6031 = add i64 %6030, 4
  store i64 %6031, i64* %PC.i542
  %6032 = inttoptr i64 %6027 to i8*
  store i8 %6028, i8* %6032
  store %struct.Memory* %loadMem_43e742, %struct.Memory** %MEMORY
  %loadMem_43e746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6034 = getelementptr inbounds %struct.GPR, %struct.GPR* %6033, i32 0, i32 33
  %6035 = getelementptr inbounds %struct.Reg, %struct.Reg* %6034, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %6035 to i64*
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6037 = getelementptr inbounds %struct.GPR, %struct.GPR* %6036, i32 0, i32 5
  %6038 = getelementptr inbounds %struct.Reg, %struct.Reg* %6037, i32 0, i32 0
  %RCX.i540 = bitcast %union.anon* %6038 to i64*
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6040 = getelementptr inbounds %struct.GPR, %struct.GPR* %6039, i32 0, i32 15
  %6041 = getelementptr inbounds %struct.Reg, %struct.Reg* %6040, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %6041 to i64*
  %6042 = load i64, i64* %RBP.i541
  %6043 = sub i64 %6042, 48
  %6044 = load i64, i64* %PC.i539
  %6045 = add i64 %6044, 4
  store i64 %6045, i64* %PC.i539
  %6046 = inttoptr i64 %6043 to i64*
  %6047 = load i64, i64* %6046
  store i64 %6047, i64* %RCX.i540, align 8
  store %struct.Memory* %loadMem_43e746, %struct.Memory** %MEMORY
  %loadMem_43e74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6049 = getelementptr inbounds %struct.GPR, %struct.GPR* %6048, i32 0, i32 33
  %6050 = getelementptr inbounds %struct.Reg, %struct.Reg* %6049, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %6050 to i64*
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6052 = getelementptr inbounds %struct.GPR, %struct.GPR* %6051, i32 0, i32 1
  %6053 = getelementptr inbounds %struct.Reg, %struct.Reg* %6052, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %6053 to i64*
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6055 = getelementptr inbounds %struct.GPR, %struct.GPR* %6054, i32 0, i32 15
  %6056 = getelementptr inbounds %struct.Reg, %struct.Reg* %6055, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %6056 to i64*
  %6057 = load i64, i64* %RBP.i538
  %6058 = sub i64 %6057, 68
  %6059 = load i64, i64* %PC.i536
  %6060 = add i64 %6059, 3
  store i64 %6060, i64* %PC.i536
  %6061 = inttoptr i64 %6058 to i32*
  %6062 = load i32, i32* %6061
  %6063 = zext i32 %6062 to i64
  store i64 %6063, i64* %RAX.i537, align 8
  store %struct.Memory* %loadMem_43e74a, %struct.Memory** %MEMORY
  %loadMem_43e74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 33
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %6066 to i64*
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6068 = getelementptr inbounds %struct.GPR, %struct.GPR* %6067, i32 0, i32 1
  %6069 = getelementptr inbounds %struct.Reg, %struct.Reg* %6068, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %6069 to i64*
  %6070 = load i64, i64* %RAX.i535
  %6071 = load i64, i64* %PC.i534
  %6072 = add i64 %6071, 3
  store i64 %6072, i64* %PC.i534
  %6073 = trunc i64 %6070 to i32
  %6074 = sub i32 %6073, 1
  %6075 = zext i32 %6074 to i64
  store i64 %6075, i64* %RAX.i535, align 8
  %6076 = icmp ult i32 %6073, 1
  %6077 = zext i1 %6076 to i8
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6077, i8* %6078, align 1
  %6079 = and i32 %6074, 255
  %6080 = call i32 @llvm.ctpop.i32(i32 %6079)
  %6081 = trunc i32 %6080 to i8
  %6082 = and i8 %6081, 1
  %6083 = xor i8 %6082, 1
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6083, i8* %6084, align 1
  %6085 = xor i64 1, %6070
  %6086 = trunc i64 %6085 to i32
  %6087 = xor i32 %6086, %6074
  %6088 = lshr i32 %6087, 4
  %6089 = trunc i32 %6088 to i8
  %6090 = and i8 %6089, 1
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6090, i8* %6091, align 1
  %6092 = icmp eq i32 %6074, 0
  %6093 = zext i1 %6092 to i8
  %6094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6093, i8* %6094, align 1
  %6095 = lshr i32 %6074, 31
  %6096 = trunc i32 %6095 to i8
  %6097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6096, i8* %6097, align 1
  %6098 = lshr i32 %6073, 31
  %6099 = xor i32 %6095, %6098
  %6100 = add i32 %6099, %6098
  %6101 = icmp eq i32 %6100, 2
  %6102 = zext i1 %6101 to i8
  %6103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6102, i8* %6103, align 1
  store %struct.Memory* %loadMem_43e74d, %struct.Memory** %MEMORY
  %loadMem_43e750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 33
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %6106 to i64*
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6108 = getelementptr inbounds %struct.GPR, %struct.GPR* %6107, i32 0, i32 1
  %6109 = getelementptr inbounds %struct.Reg, %struct.Reg* %6108, i32 0, i32 0
  %EAX.i532 = bitcast %union.anon* %6109 to i32*
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 7
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %RDX.i533 = bitcast %union.anon* %6112 to i64*
  %6113 = load i32, i32* %EAX.i532
  %6114 = zext i32 %6113 to i64
  %6115 = load i64, i64* %PC.i531
  %6116 = add i64 %6115, 3
  store i64 %6116, i64* %PC.i531
  %6117 = shl i64 %6114, 32
  %6118 = ashr exact i64 %6117, 32
  store i64 %6118, i64* %RDX.i533, align 8
  store %struct.Memory* %loadMem_43e750, %struct.Memory** %MEMORY
  %loadMem_43e753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6120 = getelementptr inbounds %struct.GPR, %struct.GPR* %6119, i32 0, i32 33
  %6121 = getelementptr inbounds %struct.Reg, %struct.Reg* %6120, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %6121 to i64*
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6123 = getelementptr inbounds %struct.GPR, %struct.GPR* %6122, i32 0, i32 1
  %6124 = getelementptr inbounds %struct.Reg, %struct.Reg* %6123, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %6124 to i64*
  %6125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6126 = getelementptr inbounds %struct.GPR, %struct.GPR* %6125, i32 0, i32 5
  %6127 = getelementptr inbounds %struct.Reg, %struct.Reg* %6126, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %6127 to i64*
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6129 = getelementptr inbounds %struct.GPR, %struct.GPR* %6128, i32 0, i32 7
  %6130 = getelementptr inbounds %struct.Reg, %struct.Reg* %6129, i32 0, i32 0
  %RDX.i530 = bitcast %union.anon* %6130 to i64*
  %6131 = load i64, i64* %RCX.i529
  %6132 = load i64, i64* %RDX.i530
  %6133 = mul i64 %6132, 4
  %6134 = add i64 %6133, %6131
  %6135 = load i64, i64* %PC.i527
  %6136 = add i64 %6135, 3
  store i64 %6136, i64* %PC.i527
  %6137 = inttoptr i64 %6134 to i32*
  %6138 = load i32, i32* %6137
  %6139 = zext i32 %6138 to i64
  store i64 %6139, i64* %RAX.i528, align 8
  store %struct.Memory* %loadMem_43e753, %struct.Memory** %MEMORY
  %loadMem_43e756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6141 = getelementptr inbounds %struct.GPR, %struct.GPR* %6140, i32 0, i32 33
  %6142 = getelementptr inbounds %struct.Reg, %struct.Reg* %6141, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %6142 to i64*
  %6143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6144 = getelementptr inbounds %struct.GPR, %struct.GPR* %6143, i32 0, i32 5
  %6145 = getelementptr inbounds %struct.Reg, %struct.Reg* %6144, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %6145 to i64*
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6147 = getelementptr inbounds %struct.GPR, %struct.GPR* %6146, i32 0, i32 15
  %6148 = getelementptr inbounds %struct.Reg, %struct.Reg* %6147, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %6148 to i64*
  %6149 = load i64, i64* %RBP.i526
  %6150 = sub i64 %6149, 48
  %6151 = load i64, i64* %PC.i524
  %6152 = add i64 %6151, 4
  store i64 %6152, i64* %PC.i524
  %6153 = inttoptr i64 %6150 to i64*
  %6154 = load i64, i64* %6153
  store i64 %6154, i64* %RCX.i525, align 8
  store %struct.Memory* %loadMem_43e756, %struct.Memory** %MEMORY
  %loadMem_43e75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6156 = getelementptr inbounds %struct.GPR, %struct.GPR* %6155, i32 0, i32 33
  %6157 = getelementptr inbounds %struct.Reg, %struct.Reg* %6156, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %6157 to i64*
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6159 = getelementptr inbounds %struct.GPR, %struct.GPR* %6158, i32 0, i32 7
  %6160 = getelementptr inbounds %struct.Reg, %struct.Reg* %6159, i32 0, i32 0
  %RDX.i522 = bitcast %union.anon* %6160 to i64*
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6162 = getelementptr inbounds %struct.GPR, %struct.GPR* %6161, i32 0, i32 15
  %6163 = getelementptr inbounds %struct.Reg, %struct.Reg* %6162, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %6163 to i64*
  %6164 = load i64, i64* %RBP.i523
  %6165 = sub i64 %6164, 84
  %6166 = load i64, i64* %PC.i521
  %6167 = add i64 %6166, 4
  store i64 %6167, i64* %PC.i521
  %6168 = inttoptr i64 %6165 to i32*
  %6169 = load i32, i32* %6168
  %6170 = sext i32 %6169 to i64
  store i64 %6170, i64* %RDX.i522, align 8
  store %struct.Memory* %loadMem_43e75a, %struct.Memory** %MEMORY
  %loadMem_43e75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6172 = getelementptr inbounds %struct.GPR, %struct.GPR* %6171, i32 0, i32 33
  %6173 = getelementptr inbounds %struct.Reg, %struct.Reg* %6172, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %6173 to i64*
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6175 = getelementptr inbounds %struct.GPR, %struct.GPR* %6174, i32 0, i32 1
  %6176 = getelementptr inbounds %struct.Reg, %struct.Reg* %6175, i32 0, i32 0
  %EAX.i518 = bitcast %union.anon* %6176 to i32*
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6178 = getelementptr inbounds %struct.GPR, %struct.GPR* %6177, i32 0, i32 5
  %6179 = getelementptr inbounds %struct.Reg, %struct.Reg* %6178, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %6179 to i64*
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6181 = getelementptr inbounds %struct.GPR, %struct.GPR* %6180, i32 0, i32 7
  %6182 = getelementptr inbounds %struct.Reg, %struct.Reg* %6181, i32 0, i32 0
  %RDX.i520 = bitcast %union.anon* %6182 to i64*
  %6183 = load i64, i64* %RCX.i519
  %6184 = load i64, i64* %RDX.i520
  %6185 = mul i64 %6184, 4
  %6186 = add i64 %6185, %6183
  %6187 = load i32, i32* %EAX.i518
  %6188 = zext i32 %6187 to i64
  %6189 = load i64, i64* %PC.i517
  %6190 = add i64 %6189, 3
  store i64 %6190, i64* %PC.i517
  %6191 = inttoptr i64 %6186 to i32*
  store i32 %6187, i32* %6191
  store %struct.Memory* %loadMem_43e75e, %struct.Memory** %MEMORY
  %loadMem_43e761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6193 = getelementptr inbounds %struct.GPR, %struct.GPR* %6192, i32 0, i32 33
  %6194 = getelementptr inbounds %struct.Reg, %struct.Reg* %6193, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %6194 to i64*
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6196 = getelementptr inbounds %struct.GPR, %struct.GPR* %6195, i32 0, i32 1
  %6197 = getelementptr inbounds %struct.Reg, %struct.Reg* %6196, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %6197 to i64*
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6199 = getelementptr inbounds %struct.GPR, %struct.GPR* %6198, i32 0, i32 15
  %6200 = getelementptr inbounds %struct.Reg, %struct.Reg* %6199, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %6200 to i64*
  %6201 = load i64, i64* %RBP.i516
  %6202 = sub i64 %6201, 68
  %6203 = load i64, i64* %PC.i514
  %6204 = add i64 %6203, 3
  store i64 %6204, i64* %PC.i514
  %6205 = inttoptr i64 %6202 to i32*
  %6206 = load i32, i32* %6205
  %6207 = zext i32 %6206 to i64
  store i64 %6207, i64* %RAX.i515, align 8
  store %struct.Memory* %loadMem_43e761, %struct.Memory** %MEMORY
  %loadMem_43e764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 33
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %6210 to i64*
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6212 = getelementptr inbounds %struct.GPR, %struct.GPR* %6211, i32 0, i32 1
  %6213 = getelementptr inbounds %struct.Reg, %struct.Reg* %6212, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %6213 to i64*
  %6214 = load i64, i64* %RAX.i513
  %6215 = load i64, i64* %PC.i512
  %6216 = add i64 %6215, 3
  store i64 %6216, i64* %PC.i512
  %6217 = trunc i64 %6214 to i32
  %6218 = add i32 -1, %6217
  %6219 = zext i32 %6218 to i64
  store i64 %6219, i64* %RAX.i513, align 8
  %6220 = icmp ult i32 %6218, %6217
  %6221 = icmp ult i32 %6218, -1
  %6222 = or i1 %6220, %6221
  %6223 = zext i1 %6222 to i8
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6223, i8* %6224, align 1
  %6225 = and i32 %6218, 255
  %6226 = call i32 @llvm.ctpop.i32(i32 %6225)
  %6227 = trunc i32 %6226 to i8
  %6228 = and i8 %6227, 1
  %6229 = xor i8 %6228, 1
  %6230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6229, i8* %6230, align 1
  %6231 = xor i64 -1, %6214
  %6232 = trunc i64 %6231 to i32
  %6233 = xor i32 %6232, %6218
  %6234 = lshr i32 %6233, 4
  %6235 = trunc i32 %6234 to i8
  %6236 = and i8 %6235, 1
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6236, i8* %6237, align 1
  %6238 = icmp eq i32 %6218, 0
  %6239 = zext i1 %6238 to i8
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6239, i8* %6240, align 1
  %6241 = lshr i32 %6218, 31
  %6242 = trunc i32 %6241 to i8
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6242, i8* %6243, align 1
  %6244 = lshr i32 %6217, 31
  %6245 = xor i32 %6241, %6244
  %6246 = xor i32 %6241, 1
  %6247 = add i32 %6245, %6246
  %6248 = icmp eq i32 %6247, 2
  %6249 = zext i1 %6248 to i8
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6249, i8* %6250, align 1
  store %struct.Memory* %loadMem_43e764, %struct.Memory** %MEMORY
  %loadMem_43e767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6252 = getelementptr inbounds %struct.GPR, %struct.GPR* %6251, i32 0, i32 33
  %6253 = getelementptr inbounds %struct.Reg, %struct.Reg* %6252, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %6253 to i64*
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6255 = getelementptr inbounds %struct.GPR, %struct.GPR* %6254, i32 0, i32 1
  %6256 = getelementptr inbounds %struct.Reg, %struct.Reg* %6255, i32 0, i32 0
  %EAX.i510 = bitcast %union.anon* %6256 to i32*
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6258 = getelementptr inbounds %struct.GPR, %struct.GPR* %6257, i32 0, i32 15
  %6259 = getelementptr inbounds %struct.Reg, %struct.Reg* %6258, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %6259 to i64*
  %6260 = load i64, i64* %RBP.i511
  %6261 = sub i64 %6260, 68
  %6262 = load i32, i32* %EAX.i510
  %6263 = zext i32 %6262 to i64
  %6264 = load i64, i64* %PC.i509
  %6265 = add i64 %6264, 3
  store i64 %6265, i64* %PC.i509
  %6266 = inttoptr i64 %6261 to i32*
  store i32 %6262, i32* %6266
  store %struct.Memory* %loadMem_43e767, %struct.Memory** %MEMORY
  %loadMem_43e76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6268 = getelementptr inbounds %struct.GPR, %struct.GPR* %6267, i32 0, i32 33
  %6269 = getelementptr inbounds %struct.Reg, %struct.Reg* %6268, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %6269 to i64*
  %6270 = load i64, i64* %PC.i508
  %6271 = add i64 %6270, -304
  %6272 = load i64, i64* %PC.i508
  %6273 = add i64 %6272, 5
  store i64 %6273, i64* %PC.i508
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6271, i64* %6274, align 8
  store %struct.Memory* %loadMem_43e76a, %struct.Memory** %MEMORY
  br label %block_.L_43e63a

block_.L_43e76f:                                  ; preds = %block_.L_43e63a
  %loadMem_43e76f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6276 = getelementptr inbounds %struct.GPR, %struct.GPR* %6275, i32 0, i32 33
  %6277 = getelementptr inbounds %struct.Reg, %struct.Reg* %6276, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %6277 to i64*
  %6278 = load i64, i64* %PC.i507
  %6279 = add i64 %6278, 5
  %6280 = load i64, i64* %PC.i507
  %6281 = add i64 %6280, 5
  store i64 %6281, i64* %PC.i507
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6279, i64* %6282, align 8
  store %struct.Memory* %loadMem_43e76f, %struct.Memory** %MEMORY
  br label %block_.L_43e774

block_.L_43e774:                                  ; preds = %block_43e77e, %block_.L_43e76f
  %loadMem_43e774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6284 = getelementptr inbounds %struct.GPR, %struct.GPR* %6283, i32 0, i32 33
  %6285 = getelementptr inbounds %struct.Reg, %struct.Reg* %6284, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %6285 to i64*
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6287 = getelementptr inbounds %struct.GPR, %struct.GPR* %6286, i32 0, i32 15
  %6288 = getelementptr inbounds %struct.Reg, %struct.Reg* %6287, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %6288 to i64*
  %6289 = load i64, i64* %RBP.i506
  %6290 = sub i64 %6289, 72
  %6291 = load i64, i64* %PC.i505
  %6292 = add i64 %6291, 4
  store i64 %6292, i64* %PC.i505
  %6293 = inttoptr i64 %6290 to i32*
  %6294 = load i32, i32* %6293
  %6295 = sub i32 %6294, 1
  %6296 = icmp ult i32 %6294, 1
  %6297 = zext i1 %6296 to i8
  %6298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6297, i8* %6298, align 1
  %6299 = and i32 %6295, 255
  %6300 = call i32 @llvm.ctpop.i32(i32 %6299)
  %6301 = trunc i32 %6300 to i8
  %6302 = and i8 %6301, 1
  %6303 = xor i8 %6302, 1
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6303, i8* %6304, align 1
  %6305 = xor i32 %6294, 1
  %6306 = xor i32 %6305, %6295
  %6307 = lshr i32 %6306, 4
  %6308 = trunc i32 %6307 to i8
  %6309 = and i8 %6308, 1
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6309, i8* %6310, align 1
  %6311 = icmp eq i32 %6295, 0
  %6312 = zext i1 %6311 to i8
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6312, i8* %6313, align 1
  %6314 = lshr i32 %6295, 31
  %6315 = trunc i32 %6314 to i8
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6315, i8* %6316, align 1
  %6317 = lshr i32 %6294, 31
  %6318 = xor i32 %6314, %6317
  %6319 = add i32 %6318, %6317
  %6320 = icmp eq i32 %6319, 2
  %6321 = zext i1 %6320 to i8
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6321, i8* %6322, align 1
  store %struct.Memory* %loadMem_43e774, %struct.Memory** %MEMORY
  %loadMem_43e778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6324 = getelementptr inbounds %struct.GPR, %struct.GPR* %6323, i32 0, i32 33
  %6325 = getelementptr inbounds %struct.Reg, %struct.Reg* %6324, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %6325 to i64*
  %6326 = load i64, i64* %PC.i504
  %6327 = add i64 %6326, 299
  %6328 = load i64, i64* %PC.i504
  %6329 = add i64 %6328, 6
  %6330 = load i64, i64* %PC.i504
  %6331 = add i64 %6330, 6
  store i64 %6331, i64* %PC.i504
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6333 = load i8, i8* %6332, align 1
  %6334 = icmp ne i8 %6333, 0
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6336 = load i8, i8* %6335, align 1
  %6337 = icmp ne i8 %6336, 0
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6339 = load i8, i8* %6338, align 1
  %6340 = icmp ne i8 %6339, 0
  %6341 = xor i1 %6337, %6340
  %6342 = or i1 %6334, %6341
  %6343 = zext i1 %6342 to i8
  store i8 %6343, i8* %BRANCH_TAKEN, align 1
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6345 = select i1 %6342, i64 %6327, i64 %6329
  store i64 %6345, i64* %6344, align 8
  store %struct.Memory* %loadMem_43e778, %struct.Memory** %MEMORY
  %loadBr_43e778 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e778 = icmp eq i8 %loadBr_43e778, 1
  br i1 %cmpBr_43e778, label %block_.L_43e8a3, label %block_43e77e

block_43e77e:                                     ; preds = %block_.L_43e774
  %loadMem1_43e77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6347 = getelementptr inbounds %struct.GPR, %struct.GPR* %6346, i32 0, i32 33
  %6348 = getelementptr inbounds %struct.Reg, %struct.Reg* %6347, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %6348 to i64*
  %6349 = load i64, i64* %PC.i503
  %6350 = add i64 %6349, 27778
  %6351 = load i64, i64* %PC.i503
  %6352 = add i64 %6351, 5
  %6353 = load i64, i64* %PC.i503
  %6354 = add i64 %6353, 5
  store i64 %6354, i64* %PC.i503
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6356 = load i64, i64* %6355, align 8
  %6357 = add i64 %6356, -8
  %6358 = inttoptr i64 %6357 to i64*
  store i64 %6352, i64* %6358
  store i64 %6357, i64* %6355, align 8
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6350, i64* %6359, align 8
  store %struct.Memory* %loadMem1_43e77e, %struct.Memory** %MEMORY
  %loadMem2_43e77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e77e = load i64, i64* %3
  %call2_43e77e = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_43e77e, %struct.Memory* %loadMem2_43e77e)
  store %struct.Memory* %call2_43e77e, %struct.Memory** %MEMORY
  %loadMem_43e783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6361 = getelementptr inbounds %struct.GPR, %struct.GPR* %6360, i32 0, i32 33
  %6362 = getelementptr inbounds %struct.Reg, %struct.Reg* %6361, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %6362 to i64*
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6364 = getelementptr inbounds %struct.GPR, %struct.GPR* %6363, i32 0, i32 15
  %6365 = getelementptr inbounds %struct.Reg, %struct.Reg* %6364, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %6365 to i64*
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6367 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6366, i64 0, i64 1
  %YMM1.i502 = bitcast %union.VectorReg* %6367 to %"class.std::bitset"*
  %6368 = bitcast %"class.std::bitset"* %YMM1.i502 to i8*
  %6369 = load i64, i64* %RBP.i501
  %6370 = sub i64 %6369, 72
  %6371 = load i64, i64* %PC.i500
  %6372 = add i64 %6371, 5
  store i64 %6372, i64* %PC.i500
  %6373 = inttoptr i64 %6370 to i32*
  %6374 = load i32, i32* %6373
  %6375 = sitofp i32 %6374 to double
  %6376 = bitcast i8* %6368 to double*
  store double %6375, double* %6376, align 1
  store %struct.Memory* %loadMem_43e783, %struct.Memory** %MEMORY
  %loadMem_43e788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 33
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %6379 to i64*
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6381 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6380, i64 0, i64 0
  %YMM0.i498 = bitcast %union.VectorReg* %6381 to %"class.std::bitset"*
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6383 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6382, i64 0, i64 1
  %XMM1.i499 = bitcast %union.VectorReg* %6383 to %union.vec128_t*
  %6384 = bitcast %"class.std::bitset"* %YMM0.i498 to i8*
  %6385 = bitcast %"class.std::bitset"* %YMM0.i498 to i8*
  %6386 = bitcast %union.vec128_t* %XMM1.i499 to i8*
  %6387 = load i64, i64* %PC.i497
  %6388 = add i64 %6387, 4
  store i64 %6388, i64* %PC.i497
  %6389 = bitcast i8* %6385 to double*
  %6390 = load double, double* %6389, align 1
  %6391 = getelementptr inbounds i8, i8* %6385, i64 8
  %6392 = bitcast i8* %6391 to i64*
  %6393 = load i64, i64* %6392, align 1
  %6394 = bitcast i8* %6386 to double*
  %6395 = load double, double* %6394, align 1
  %6396 = fmul double %6390, %6395
  %6397 = bitcast i8* %6384 to double*
  store double %6396, double* %6397, align 1
  %6398 = getelementptr inbounds i8, i8* %6384, i64 8
  %6399 = bitcast i8* %6398 to i64*
  store i64 %6393, i64* %6399, align 1
  store %struct.Memory* %loadMem_43e788, %struct.Memory** %MEMORY
  %loadMem_43e78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6401 = getelementptr inbounds %struct.GPR, %struct.GPR* %6400, i32 0, i32 33
  %6402 = getelementptr inbounds %struct.Reg, %struct.Reg* %6401, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %6402 to i64*
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6404 = getelementptr inbounds %struct.GPR, %struct.GPR* %6403, i32 0, i32 1
  %6405 = getelementptr inbounds %struct.Reg, %struct.Reg* %6404, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %6405 to i64*
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6407 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6406, i64 0, i64 0
  %XMM0.i496 = bitcast %union.VectorReg* %6407 to %union.vec128_t*
  %6408 = bitcast %union.vec128_t* %XMM0.i496 to i8*
  %6409 = load i64, i64* %PC.i494
  %6410 = add i64 %6409, 4
  store i64 %6410, i64* %PC.i494
  %6411 = bitcast i8* %6408 to double*
  %6412 = load double, double* %6411, align 1
  %6413 = call double @llvm.trunc.f64(double %6412)
  %6414 = call double @llvm.fabs.f64(double %6413)
  %6415 = fcmp ogt double %6414, 0x41DFFFFFFFC00000
  %6416 = fptosi double %6413 to i32
  %6417 = zext i32 %6416 to i64
  %6418 = select i1 %6415, i64 2147483648, i64 %6417
  store i64 %6418, i64* %RAX.i495, align 8
  store %struct.Memory* %loadMem_43e78c, %struct.Memory** %MEMORY
  %loadMem_43e790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6420 = getelementptr inbounds %struct.GPR, %struct.GPR* %6419, i32 0, i32 33
  %6421 = getelementptr inbounds %struct.Reg, %struct.Reg* %6420, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %6421 to i64*
  %6422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6423 = getelementptr inbounds %struct.GPR, %struct.GPR* %6422, i32 0, i32 1
  %6424 = getelementptr inbounds %struct.Reg, %struct.Reg* %6423, i32 0, i32 0
  %EAX.i492 = bitcast %union.anon* %6424 to i32*
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6426 = getelementptr inbounds %struct.GPR, %struct.GPR* %6425, i32 0, i32 15
  %6427 = getelementptr inbounds %struct.Reg, %struct.Reg* %6426, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %6427 to i64*
  %6428 = load i64, i64* %RBP.i493
  %6429 = sub i64 %6428, 84
  %6430 = load i32, i32* %EAX.i492
  %6431 = zext i32 %6430 to i64
  %6432 = load i64, i64* %PC.i491
  %6433 = add i64 %6432, 3
  store i64 %6433, i64* %PC.i491
  %6434 = inttoptr i64 %6429 to i32*
  store i32 %6430, i32* %6434
  store %struct.Memory* %loadMem_43e790, %struct.Memory** %MEMORY
  %loadMem_43e793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6436 = getelementptr inbounds %struct.GPR, %struct.GPR* %6435, i32 0, i32 33
  %6437 = getelementptr inbounds %struct.Reg, %struct.Reg* %6436, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %6437 to i64*
  %6438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6439 = getelementptr inbounds %struct.GPR, %struct.GPR* %6438, i32 0, i32 5
  %6440 = getelementptr inbounds %struct.Reg, %struct.Reg* %6439, i32 0, i32 0
  %RCX.i489 = bitcast %union.anon* %6440 to i64*
  %6441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6442 = getelementptr inbounds %struct.GPR, %struct.GPR* %6441, i32 0, i32 15
  %6443 = getelementptr inbounds %struct.Reg, %struct.Reg* %6442, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %6443 to i64*
  %6444 = load i64, i64* %RBP.i490
  %6445 = sub i64 %6444, 8
  %6446 = load i64, i64* %PC.i488
  %6447 = add i64 %6446, 4
  store i64 %6447, i64* %PC.i488
  %6448 = inttoptr i64 %6445 to i64*
  %6449 = load i64, i64* %6448
  store i64 %6449, i64* %RCX.i489, align 8
  store %struct.Memory* %loadMem_43e793, %struct.Memory** %MEMORY
  %loadMem_43e797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6451 = getelementptr inbounds %struct.GPR, %struct.GPR* %6450, i32 0, i32 33
  %6452 = getelementptr inbounds %struct.Reg, %struct.Reg* %6451, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %6452 to i64*
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6454 = getelementptr inbounds %struct.GPR, %struct.GPR* %6453, i32 0, i32 7
  %6455 = getelementptr inbounds %struct.Reg, %struct.Reg* %6454, i32 0, i32 0
  %RDX.i486 = bitcast %union.anon* %6455 to i64*
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6457 = getelementptr inbounds %struct.GPR, %struct.GPR* %6456, i32 0, i32 15
  %6458 = getelementptr inbounds %struct.Reg, %struct.Reg* %6457, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %6458 to i64*
  %6459 = load i64, i64* %RBP.i487
  %6460 = sub i64 %6459, 56
  %6461 = load i64, i64* %PC.i485
  %6462 = add i64 %6461, 4
  store i64 %6462, i64* %PC.i485
  %6463 = inttoptr i64 %6460 to i64*
  %6464 = load i64, i64* %6463
  store i64 %6464, i64* %RDX.i486, align 8
  store %struct.Memory* %loadMem_43e797, %struct.Memory** %MEMORY
  %loadMem_43e79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6466 = getelementptr inbounds %struct.GPR, %struct.GPR* %6465, i32 0, i32 33
  %6467 = getelementptr inbounds %struct.Reg, %struct.Reg* %6466, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %6467 to i64*
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6469 = getelementptr inbounds %struct.GPR, %struct.GPR* %6468, i32 0, i32 9
  %6470 = getelementptr inbounds %struct.Reg, %struct.Reg* %6469, i32 0, i32 0
  %RSI.i483 = bitcast %union.anon* %6470 to i64*
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6472 = getelementptr inbounds %struct.GPR, %struct.GPR* %6471, i32 0, i32 15
  %6473 = getelementptr inbounds %struct.Reg, %struct.Reg* %6472, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %6473 to i64*
  %6474 = load i64, i64* %RBP.i484
  %6475 = sub i64 %6474, 84
  %6476 = load i64, i64* %PC.i482
  %6477 = add i64 %6476, 4
  store i64 %6477, i64* %PC.i482
  %6478 = inttoptr i64 %6475 to i32*
  %6479 = load i32, i32* %6478
  %6480 = sext i32 %6479 to i64
  store i64 %6480, i64* %RSI.i483, align 8
  store %struct.Memory* %loadMem_43e79b, %struct.Memory** %MEMORY
  %loadMem_43e79f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6482 = getelementptr inbounds %struct.GPR, %struct.GPR* %6481, i32 0, i32 33
  %6483 = getelementptr inbounds %struct.Reg, %struct.Reg* %6482, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %6483 to i64*
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6485 = getelementptr inbounds %struct.GPR, %struct.GPR* %6484, i32 0, i32 7
  %6486 = getelementptr inbounds %struct.Reg, %struct.Reg* %6485, i32 0, i32 0
  %RDX.i480 = bitcast %union.anon* %6486 to i64*
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6488 = getelementptr inbounds %struct.GPR, %struct.GPR* %6487, i32 0, i32 9
  %6489 = getelementptr inbounds %struct.Reg, %struct.Reg* %6488, i32 0, i32 0
  %RSI.i481 = bitcast %union.anon* %6489 to i64*
  %6490 = load i64, i64* %RDX.i480
  %6491 = load i64, i64* %RSI.i481
  %6492 = mul i64 %6491, 4
  %6493 = add i64 %6492, %6490
  %6494 = load i64, i64* %PC.i479
  %6495 = add i64 %6494, 4
  store i64 %6495, i64* %PC.i479
  %6496 = inttoptr i64 %6493 to i32*
  %6497 = load i32, i32* %6496
  %6498 = sext i32 %6497 to i64
  store i64 %6498, i64* %RDX.i480, align 8
  store %struct.Memory* %loadMem_43e79f, %struct.Memory** %MEMORY
  %loadMem_43e7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6500 = getelementptr inbounds %struct.GPR, %struct.GPR* %6499, i32 0, i32 33
  %6501 = getelementptr inbounds %struct.Reg, %struct.Reg* %6500, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %6501 to i64*
  %6502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6503 = getelementptr inbounds %struct.GPR, %struct.GPR* %6502, i32 0, i32 11
  %6504 = getelementptr inbounds %struct.Reg, %struct.Reg* %6503, i32 0, i32 0
  %6505 = bitcast %union.anon* %6504 to %struct.anon.2*
  %DIL.i476 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6505, i32 0, i32 0
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6507 = getelementptr inbounds %struct.GPR, %struct.GPR* %6506, i32 0, i32 5
  %6508 = getelementptr inbounds %struct.Reg, %struct.Reg* %6507, i32 0, i32 0
  %RCX.i477 = bitcast %union.anon* %6508 to i64*
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6510 = getelementptr inbounds %struct.GPR, %struct.GPR* %6509, i32 0, i32 7
  %6511 = getelementptr inbounds %struct.Reg, %struct.Reg* %6510, i32 0, i32 0
  %RDX.i478 = bitcast %union.anon* %6511 to i64*
  %6512 = load i64, i64* %RCX.i477
  %6513 = load i64, i64* %RDX.i478
  %6514 = add i64 %6513, %6512
  %6515 = load i64, i64* %PC.i475
  %6516 = add i64 %6515, 4
  store i64 %6516, i64* %PC.i475
  %6517 = inttoptr i64 %6514 to i8*
  %6518 = load i8, i8* %6517
  store i8 %6518, i8* %DIL.i476, align 1
  store %struct.Memory* %loadMem_43e7a3, %struct.Memory** %MEMORY
  %loadMem_43e7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6520 = getelementptr inbounds %struct.GPR, %struct.GPR* %6519, i32 0, i32 33
  %6521 = getelementptr inbounds %struct.Reg, %struct.Reg* %6520, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %6521 to i64*
  %6522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6523 = getelementptr inbounds %struct.GPR, %struct.GPR* %6522, i32 0, i32 11
  %6524 = getelementptr inbounds %struct.Reg, %struct.Reg* %6523, i32 0, i32 0
  %6525 = bitcast %union.anon* %6524 to %struct.anon.2*
  %DIL.i473 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6525, i32 0, i32 0
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6527 = getelementptr inbounds %struct.GPR, %struct.GPR* %6526, i32 0, i32 15
  %6528 = getelementptr inbounds %struct.Reg, %struct.Reg* %6527, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %6528 to i64*
  %6529 = load i64, i64* %RBP.i474
  %6530 = sub i64 %6529, 89
  %6531 = load i8, i8* %DIL.i473
  %6532 = zext i8 %6531 to i64
  %6533 = load i64, i64* %PC.i472
  %6534 = add i64 %6533, 4
  store i64 %6534, i64* %PC.i472
  %6535 = inttoptr i64 %6530 to i8*
  store i8 %6531, i8* %6535
  store %struct.Memory* %loadMem_43e7a7, %struct.Memory** %MEMORY
  %loadMem_43e7ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6537 = getelementptr inbounds %struct.GPR, %struct.GPR* %6536, i32 0, i32 33
  %6538 = getelementptr inbounds %struct.Reg, %struct.Reg* %6537, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %6538 to i64*
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6540 = getelementptr inbounds %struct.GPR, %struct.GPR* %6539, i32 0, i32 5
  %6541 = getelementptr inbounds %struct.Reg, %struct.Reg* %6540, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %6541 to i64*
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6543 = getelementptr inbounds %struct.GPR, %struct.GPR* %6542, i32 0, i32 15
  %6544 = getelementptr inbounds %struct.Reg, %struct.Reg* %6543, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %6544 to i64*
  %6545 = load i64, i64* %RBP.i471
  %6546 = sub i64 %6545, 16
  %6547 = load i64, i64* %PC.i469
  %6548 = add i64 %6547, 4
  store i64 %6548, i64* %PC.i469
  %6549 = inttoptr i64 %6546 to i64*
  %6550 = load i64, i64* %6549
  store i64 %6550, i64* %RCX.i470, align 8
  store %struct.Memory* %loadMem_43e7ab, %struct.Memory** %MEMORY
  %loadMem_43e7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6552 = getelementptr inbounds %struct.GPR, %struct.GPR* %6551, i32 0, i32 33
  %6553 = getelementptr inbounds %struct.Reg, %struct.Reg* %6552, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %6553 to i64*
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6555 = getelementptr inbounds %struct.GPR, %struct.GPR* %6554, i32 0, i32 7
  %6556 = getelementptr inbounds %struct.Reg, %struct.Reg* %6555, i32 0, i32 0
  %RDX.i467 = bitcast %union.anon* %6556 to i64*
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6558 = getelementptr inbounds %struct.GPR, %struct.GPR* %6557, i32 0, i32 15
  %6559 = getelementptr inbounds %struct.Reg, %struct.Reg* %6558, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %6559 to i64*
  %6560 = load i64, i64* %RBP.i468
  %6561 = sub i64 %6560, 56
  %6562 = load i64, i64* %PC.i466
  %6563 = add i64 %6562, 4
  store i64 %6563, i64* %PC.i466
  %6564 = inttoptr i64 %6561 to i64*
  %6565 = load i64, i64* %6564
  store i64 %6565, i64* %RDX.i467, align 8
  store %struct.Memory* %loadMem_43e7af, %struct.Memory** %MEMORY
  %loadMem_43e7b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6567 = getelementptr inbounds %struct.GPR, %struct.GPR* %6566, i32 0, i32 33
  %6568 = getelementptr inbounds %struct.Reg, %struct.Reg* %6567, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %6568 to i64*
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 9
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %RSI.i464 = bitcast %union.anon* %6571 to i64*
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6573 = getelementptr inbounds %struct.GPR, %struct.GPR* %6572, i32 0, i32 15
  %6574 = getelementptr inbounds %struct.Reg, %struct.Reg* %6573, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %6574 to i64*
  %6575 = load i64, i64* %RBP.i465
  %6576 = sub i64 %6575, 84
  %6577 = load i64, i64* %PC.i463
  %6578 = add i64 %6577, 4
  store i64 %6578, i64* %PC.i463
  %6579 = inttoptr i64 %6576 to i32*
  %6580 = load i32, i32* %6579
  %6581 = sext i32 %6580 to i64
  store i64 %6581, i64* %RSI.i464, align 8
  store %struct.Memory* %loadMem_43e7b3, %struct.Memory** %MEMORY
  %loadMem_43e7b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 33
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %6584 to i64*
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6586 = getelementptr inbounds %struct.GPR, %struct.GPR* %6585, i32 0, i32 7
  %6587 = getelementptr inbounds %struct.Reg, %struct.Reg* %6586, i32 0, i32 0
  %RDX.i461 = bitcast %union.anon* %6587 to i64*
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 9
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %RSI.i462 = bitcast %union.anon* %6590 to i64*
  %6591 = load i64, i64* %RDX.i461
  %6592 = load i64, i64* %RSI.i462
  %6593 = mul i64 %6592, 4
  %6594 = add i64 %6593, %6591
  %6595 = load i64, i64* %PC.i460
  %6596 = add i64 %6595, 4
  store i64 %6596, i64* %PC.i460
  %6597 = inttoptr i64 %6594 to i32*
  %6598 = load i32, i32* %6597
  %6599 = sext i32 %6598 to i64
  store i64 %6599, i64* %RDX.i461, align 8
  store %struct.Memory* %loadMem_43e7b7, %struct.Memory** %MEMORY
  %loadMem_43e7bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6601 = getelementptr inbounds %struct.GPR, %struct.GPR* %6600, i32 0, i32 33
  %6602 = getelementptr inbounds %struct.Reg, %struct.Reg* %6601, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %6602 to i64*
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6604 = getelementptr inbounds %struct.GPR, %struct.GPR* %6603, i32 0, i32 11
  %6605 = getelementptr inbounds %struct.Reg, %struct.Reg* %6604, i32 0, i32 0
  %6606 = bitcast %union.anon* %6605 to %struct.anon.2*
  %DIL.i457 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6606, i32 0, i32 0
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6608 = getelementptr inbounds %struct.GPR, %struct.GPR* %6607, i32 0, i32 5
  %6609 = getelementptr inbounds %struct.Reg, %struct.Reg* %6608, i32 0, i32 0
  %RCX.i458 = bitcast %union.anon* %6609 to i64*
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6611 = getelementptr inbounds %struct.GPR, %struct.GPR* %6610, i32 0, i32 7
  %6612 = getelementptr inbounds %struct.Reg, %struct.Reg* %6611, i32 0, i32 0
  %RDX.i459 = bitcast %union.anon* %6612 to i64*
  %6613 = load i64, i64* %RCX.i458
  %6614 = load i64, i64* %RDX.i459
  %6615 = add i64 %6614, %6613
  %6616 = load i64, i64* %PC.i456
  %6617 = add i64 %6616, 4
  store i64 %6617, i64* %PC.i456
  %6618 = inttoptr i64 %6615 to i8*
  %6619 = load i8, i8* %6618
  store i8 %6619, i8* %DIL.i457, align 1
  store %struct.Memory* %loadMem_43e7bb, %struct.Memory** %MEMORY
  %loadMem_43e7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6621 = getelementptr inbounds %struct.GPR, %struct.GPR* %6620, i32 0, i32 33
  %6622 = getelementptr inbounds %struct.Reg, %struct.Reg* %6621, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %6622 to i64*
  %6623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6624 = getelementptr inbounds %struct.GPR, %struct.GPR* %6623, i32 0, i32 11
  %6625 = getelementptr inbounds %struct.Reg, %struct.Reg* %6624, i32 0, i32 0
  %6626 = bitcast %union.anon* %6625 to %struct.anon.2*
  %DIL.i454 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6626, i32 0, i32 0
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6628 = getelementptr inbounds %struct.GPR, %struct.GPR* %6627, i32 0, i32 15
  %6629 = getelementptr inbounds %struct.Reg, %struct.Reg* %6628, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %6629 to i64*
  %6630 = load i64, i64* %RBP.i455
  %6631 = sub i64 %6630, 90
  %6632 = load i8, i8* %DIL.i454
  %6633 = zext i8 %6632 to i64
  %6634 = load i64, i64* %PC.i453
  %6635 = add i64 %6634, 4
  store i64 %6635, i64* %PC.i453
  %6636 = inttoptr i64 %6631 to i8*
  store i8 %6632, i8* %6636
  store %struct.Memory* %loadMem_43e7bf, %struct.Memory** %MEMORY
  %loadMem_43e7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6638 = getelementptr inbounds %struct.GPR, %struct.GPR* %6637, i32 0, i32 33
  %6639 = getelementptr inbounds %struct.Reg, %struct.Reg* %6638, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %6639 to i64*
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6641 = getelementptr inbounds %struct.GPR, %struct.GPR* %6640, i32 0, i32 5
  %6642 = getelementptr inbounds %struct.Reg, %struct.Reg* %6641, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %6642 to i64*
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6644 = getelementptr inbounds %struct.GPR, %struct.GPR* %6643, i32 0, i32 15
  %6645 = getelementptr inbounds %struct.Reg, %struct.Reg* %6644, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %6645 to i64*
  %6646 = load i64, i64* %RBP.i452
  %6647 = sub i64 %6646, 56
  %6648 = load i64, i64* %PC.i450
  %6649 = add i64 %6648, 4
  store i64 %6649, i64* %PC.i450
  %6650 = inttoptr i64 %6647 to i64*
  %6651 = load i64, i64* %6650
  store i64 %6651, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_43e7c3, %struct.Memory** %MEMORY
  %loadMem_43e7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6653 = getelementptr inbounds %struct.GPR, %struct.GPR* %6652, i32 0, i32 33
  %6654 = getelementptr inbounds %struct.Reg, %struct.Reg* %6653, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %6654 to i64*
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6656 = getelementptr inbounds %struct.GPR, %struct.GPR* %6655, i32 0, i32 7
  %6657 = getelementptr inbounds %struct.Reg, %struct.Reg* %6656, i32 0, i32 0
  %RDX.i448 = bitcast %union.anon* %6657 to i64*
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 15
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %6660 to i64*
  %6661 = load i64, i64* %RBP.i449
  %6662 = sub i64 %6661, 84
  %6663 = load i64, i64* %PC.i447
  %6664 = add i64 %6663, 4
  store i64 %6664, i64* %PC.i447
  %6665 = inttoptr i64 %6662 to i32*
  %6666 = load i32, i32* %6665
  %6667 = sext i32 %6666 to i64
  store i64 %6667, i64* %RDX.i448, align 8
  store %struct.Memory* %loadMem_43e7c7, %struct.Memory** %MEMORY
  %loadMem_43e7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6669 = getelementptr inbounds %struct.GPR, %struct.GPR* %6668, i32 0, i32 33
  %6670 = getelementptr inbounds %struct.Reg, %struct.Reg* %6669, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %6670 to i64*
  %6671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6672 = getelementptr inbounds %struct.GPR, %struct.GPR* %6671, i32 0, i32 1
  %6673 = getelementptr inbounds %struct.Reg, %struct.Reg* %6672, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %6673 to i64*
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6675 = getelementptr inbounds %struct.GPR, %struct.GPR* %6674, i32 0, i32 5
  %6676 = getelementptr inbounds %struct.Reg, %struct.Reg* %6675, i32 0, i32 0
  %RCX.i445 = bitcast %union.anon* %6676 to i64*
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6678 = getelementptr inbounds %struct.GPR, %struct.GPR* %6677, i32 0, i32 7
  %6679 = getelementptr inbounds %struct.Reg, %struct.Reg* %6678, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %6679 to i64*
  %6680 = load i64, i64* %RCX.i445
  %6681 = load i64, i64* %RDX.i446
  %6682 = mul i64 %6681, 4
  %6683 = add i64 %6682, %6680
  %6684 = load i64, i64* %PC.i443
  %6685 = add i64 %6684, 3
  store i64 %6685, i64* %PC.i443
  %6686 = inttoptr i64 %6683 to i32*
  %6687 = load i32, i32* %6686
  %6688 = zext i32 %6687 to i64
  store i64 %6688, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_43e7cb, %struct.Memory** %MEMORY
  %loadMem_43e7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6690 = getelementptr inbounds %struct.GPR, %struct.GPR* %6689, i32 0, i32 33
  %6691 = getelementptr inbounds %struct.Reg, %struct.Reg* %6690, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %6691 to i64*
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6693 = getelementptr inbounds %struct.GPR, %struct.GPR* %6692, i32 0, i32 1
  %6694 = getelementptr inbounds %struct.Reg, %struct.Reg* %6693, i32 0, i32 0
  %EAX.i441 = bitcast %union.anon* %6694 to i32*
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6696 = getelementptr inbounds %struct.GPR, %struct.GPR* %6695, i32 0, i32 15
  %6697 = getelementptr inbounds %struct.Reg, %struct.Reg* %6696, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %6697 to i64*
  %6698 = load i64, i64* %RBP.i442
  %6699 = sub i64 %6698, 88
  %6700 = load i32, i32* %EAX.i441
  %6701 = zext i32 %6700 to i64
  %6702 = load i64, i64* %PC.i440
  %6703 = add i64 %6702, 3
  store i64 %6703, i64* %PC.i440
  %6704 = inttoptr i64 %6699 to i32*
  store i32 %6700, i32* %6704
  store %struct.Memory* %loadMem_43e7ce, %struct.Memory** %MEMORY
  %loadMem_43e7d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6706 = getelementptr inbounds %struct.GPR, %struct.GPR* %6705, i32 0, i32 33
  %6707 = getelementptr inbounds %struct.Reg, %struct.Reg* %6706, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %6707 to i64*
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6709 = getelementptr inbounds %struct.GPR, %struct.GPR* %6708, i32 0, i32 5
  %6710 = getelementptr inbounds %struct.Reg, %struct.Reg* %6709, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %6710 to i64*
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 15
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %6713 to i64*
  %6714 = load i64, i64* %RBP.i439
  %6715 = sub i64 %6714, 8
  %6716 = load i64, i64* %PC.i437
  %6717 = add i64 %6716, 4
  store i64 %6717, i64* %PC.i437
  %6718 = inttoptr i64 %6715 to i64*
  %6719 = load i64, i64* %6718
  store i64 %6719, i64* %RCX.i438, align 8
  store %struct.Memory* %loadMem_43e7d1, %struct.Memory** %MEMORY
  %loadMem_43e7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6721 = getelementptr inbounds %struct.GPR, %struct.GPR* %6720, i32 0, i32 33
  %6722 = getelementptr inbounds %struct.Reg, %struct.Reg* %6721, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %6722 to i64*
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6724 = getelementptr inbounds %struct.GPR, %struct.GPR* %6723, i32 0, i32 7
  %6725 = getelementptr inbounds %struct.Reg, %struct.Reg* %6724, i32 0, i32 0
  %RDX.i435 = bitcast %union.anon* %6725 to i64*
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6727 = getelementptr inbounds %struct.GPR, %struct.GPR* %6726, i32 0, i32 15
  %6728 = getelementptr inbounds %struct.Reg, %struct.Reg* %6727, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %6728 to i64*
  %6729 = load i64, i64* %RBP.i436
  %6730 = sub i64 %6729, 56
  %6731 = load i64, i64* %PC.i434
  %6732 = add i64 %6731, 4
  store i64 %6732, i64* %PC.i434
  %6733 = inttoptr i64 %6730 to i64*
  %6734 = load i64, i64* %6733
  store i64 %6734, i64* %RDX.i435, align 8
  store %struct.Memory* %loadMem_43e7d5, %struct.Memory** %MEMORY
  %loadMem_43e7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6736 = getelementptr inbounds %struct.GPR, %struct.GPR* %6735, i32 0, i32 33
  %6737 = getelementptr inbounds %struct.Reg, %struct.Reg* %6736, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %6737 to i64*
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6739 = getelementptr inbounds %struct.GPR, %struct.GPR* %6738, i32 0, i32 1
  %6740 = getelementptr inbounds %struct.Reg, %struct.Reg* %6739, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %6740 to i64*
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6742 = getelementptr inbounds %struct.GPR, %struct.GPR* %6741, i32 0, i32 15
  %6743 = getelementptr inbounds %struct.Reg, %struct.Reg* %6742, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %6743 to i64*
  %6744 = load i64, i64* %RBP.i433
  %6745 = sub i64 %6744, 72
  %6746 = load i64, i64* %PC.i431
  %6747 = add i64 %6746, 3
  store i64 %6747, i64* %PC.i431
  %6748 = inttoptr i64 %6745 to i32*
  %6749 = load i32, i32* %6748
  %6750 = zext i32 %6749 to i64
  store i64 %6750, i64* %RAX.i432, align 8
  store %struct.Memory* %loadMem_43e7d9, %struct.Memory** %MEMORY
  %loadMem_43e7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6752 = getelementptr inbounds %struct.GPR, %struct.GPR* %6751, i32 0, i32 33
  %6753 = getelementptr inbounds %struct.Reg, %struct.Reg* %6752, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %6753 to i64*
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 1
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %6756 to i64*
  %6757 = load i64, i64* %RAX.i430
  %6758 = load i64, i64* %PC.i429
  %6759 = add i64 %6758, 3
  store i64 %6759, i64* %PC.i429
  %6760 = trunc i64 %6757 to i32
  %6761 = sub i32 %6760, 1
  %6762 = zext i32 %6761 to i64
  store i64 %6762, i64* %RAX.i430, align 8
  %6763 = icmp ult i32 %6760, 1
  %6764 = zext i1 %6763 to i8
  %6765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6764, i8* %6765, align 1
  %6766 = and i32 %6761, 255
  %6767 = call i32 @llvm.ctpop.i32(i32 %6766)
  %6768 = trunc i32 %6767 to i8
  %6769 = and i8 %6768, 1
  %6770 = xor i8 %6769, 1
  %6771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6770, i8* %6771, align 1
  %6772 = xor i64 1, %6757
  %6773 = trunc i64 %6772 to i32
  %6774 = xor i32 %6773, %6761
  %6775 = lshr i32 %6774, 4
  %6776 = trunc i32 %6775 to i8
  %6777 = and i8 %6776, 1
  %6778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6777, i8* %6778, align 1
  %6779 = icmp eq i32 %6761, 0
  %6780 = zext i1 %6779 to i8
  %6781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6780, i8* %6781, align 1
  %6782 = lshr i32 %6761, 31
  %6783 = trunc i32 %6782 to i8
  %6784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6783, i8* %6784, align 1
  %6785 = lshr i32 %6760, 31
  %6786 = xor i32 %6782, %6785
  %6787 = add i32 %6786, %6785
  %6788 = icmp eq i32 %6787, 2
  %6789 = zext i1 %6788 to i8
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6789, i8* %6790, align 1
  store %struct.Memory* %loadMem_43e7dc, %struct.Memory** %MEMORY
  %loadMem_43e7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6792 = getelementptr inbounds %struct.GPR, %struct.GPR* %6791, i32 0, i32 33
  %6793 = getelementptr inbounds %struct.Reg, %struct.Reg* %6792, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %6793 to i64*
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6795 = getelementptr inbounds %struct.GPR, %struct.GPR* %6794, i32 0, i32 1
  %6796 = getelementptr inbounds %struct.Reg, %struct.Reg* %6795, i32 0, i32 0
  %EAX.i427 = bitcast %union.anon* %6796 to i32*
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6798 = getelementptr inbounds %struct.GPR, %struct.GPR* %6797, i32 0, i32 9
  %6799 = getelementptr inbounds %struct.Reg, %struct.Reg* %6798, i32 0, i32 0
  %RSI.i428 = bitcast %union.anon* %6799 to i64*
  %6800 = load i32, i32* %EAX.i427
  %6801 = zext i32 %6800 to i64
  %6802 = load i64, i64* %PC.i426
  %6803 = add i64 %6802, 3
  store i64 %6803, i64* %PC.i426
  %6804 = shl i64 %6801, 32
  %6805 = ashr exact i64 %6804, 32
  store i64 %6805, i64* %RSI.i428, align 8
  store %struct.Memory* %loadMem_43e7df, %struct.Memory** %MEMORY
  %loadMem_43e7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6807 = getelementptr inbounds %struct.GPR, %struct.GPR* %6806, i32 0, i32 33
  %6808 = getelementptr inbounds %struct.Reg, %struct.Reg* %6807, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %6808 to i64*
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6810 = getelementptr inbounds %struct.GPR, %struct.GPR* %6809, i32 0, i32 7
  %6811 = getelementptr inbounds %struct.Reg, %struct.Reg* %6810, i32 0, i32 0
  %RDX.i424 = bitcast %union.anon* %6811 to i64*
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6813 = getelementptr inbounds %struct.GPR, %struct.GPR* %6812, i32 0, i32 9
  %6814 = getelementptr inbounds %struct.Reg, %struct.Reg* %6813, i32 0, i32 0
  %RSI.i425 = bitcast %union.anon* %6814 to i64*
  %6815 = load i64, i64* %RDX.i424
  %6816 = load i64, i64* %RSI.i425
  %6817 = mul i64 %6816, 4
  %6818 = add i64 %6817, %6815
  %6819 = load i64, i64* %PC.i423
  %6820 = add i64 %6819, 4
  store i64 %6820, i64* %PC.i423
  %6821 = inttoptr i64 %6818 to i32*
  %6822 = load i32, i32* %6821
  %6823 = sext i32 %6822 to i64
  store i64 %6823, i64* %RDX.i424, align 8
  store %struct.Memory* %loadMem_43e7e2, %struct.Memory** %MEMORY
  %loadMem_43e7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6825 = getelementptr inbounds %struct.GPR, %struct.GPR* %6824, i32 0, i32 33
  %6826 = getelementptr inbounds %struct.Reg, %struct.Reg* %6825, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %6826 to i64*
  %6827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6828 = getelementptr inbounds %struct.GPR, %struct.GPR* %6827, i32 0, i32 11
  %6829 = getelementptr inbounds %struct.Reg, %struct.Reg* %6828, i32 0, i32 0
  %6830 = bitcast %union.anon* %6829 to %struct.anon.2*
  %DIL.i420 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6830, i32 0, i32 0
  %6831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6832 = getelementptr inbounds %struct.GPR, %struct.GPR* %6831, i32 0, i32 5
  %6833 = getelementptr inbounds %struct.Reg, %struct.Reg* %6832, i32 0, i32 0
  %RCX.i421 = bitcast %union.anon* %6833 to i64*
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6835 = getelementptr inbounds %struct.GPR, %struct.GPR* %6834, i32 0, i32 7
  %6836 = getelementptr inbounds %struct.Reg, %struct.Reg* %6835, i32 0, i32 0
  %RDX.i422 = bitcast %union.anon* %6836 to i64*
  %6837 = load i64, i64* %RCX.i421
  %6838 = load i64, i64* %RDX.i422
  %6839 = add i64 %6838, %6837
  %6840 = load i64, i64* %PC.i419
  %6841 = add i64 %6840, 4
  store i64 %6841, i64* %PC.i419
  %6842 = inttoptr i64 %6839 to i8*
  %6843 = load i8, i8* %6842
  store i8 %6843, i8* %DIL.i420, align 1
  store %struct.Memory* %loadMem_43e7e6, %struct.Memory** %MEMORY
  %loadMem_43e7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6845 = getelementptr inbounds %struct.GPR, %struct.GPR* %6844, i32 0, i32 33
  %6846 = getelementptr inbounds %struct.Reg, %struct.Reg* %6845, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %6846 to i64*
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6848 = getelementptr inbounds %struct.GPR, %struct.GPR* %6847, i32 0, i32 5
  %6849 = getelementptr inbounds %struct.Reg, %struct.Reg* %6848, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %6849 to i64*
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6851 = getelementptr inbounds %struct.GPR, %struct.GPR* %6850, i32 0, i32 15
  %6852 = getelementptr inbounds %struct.Reg, %struct.Reg* %6851, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %6852 to i64*
  %6853 = load i64, i64* %RBP.i418
  %6854 = sub i64 %6853, 8
  %6855 = load i64, i64* %PC.i416
  %6856 = add i64 %6855, 4
  store i64 %6856, i64* %PC.i416
  %6857 = inttoptr i64 %6854 to i64*
  %6858 = load i64, i64* %6857
  store i64 %6858, i64* %RCX.i417, align 8
  store %struct.Memory* %loadMem_43e7ea, %struct.Memory** %MEMORY
  %loadMem_43e7ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6860 = getelementptr inbounds %struct.GPR, %struct.GPR* %6859, i32 0, i32 33
  %6861 = getelementptr inbounds %struct.Reg, %struct.Reg* %6860, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %6861 to i64*
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6863 = getelementptr inbounds %struct.GPR, %struct.GPR* %6862, i32 0, i32 7
  %6864 = getelementptr inbounds %struct.Reg, %struct.Reg* %6863, i32 0, i32 0
  %RDX.i414 = bitcast %union.anon* %6864 to i64*
  %6865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6866 = getelementptr inbounds %struct.GPR, %struct.GPR* %6865, i32 0, i32 15
  %6867 = getelementptr inbounds %struct.Reg, %struct.Reg* %6866, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %6867 to i64*
  %6868 = load i64, i64* %RBP.i415
  %6869 = sub i64 %6868, 56
  %6870 = load i64, i64* %PC.i413
  %6871 = add i64 %6870, 4
  store i64 %6871, i64* %PC.i413
  %6872 = inttoptr i64 %6869 to i64*
  %6873 = load i64, i64* %6872
  store i64 %6873, i64* %RDX.i414, align 8
  store %struct.Memory* %loadMem_43e7ee, %struct.Memory** %MEMORY
  %loadMem_43e7f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6875 = getelementptr inbounds %struct.GPR, %struct.GPR* %6874, i32 0, i32 33
  %6876 = getelementptr inbounds %struct.Reg, %struct.Reg* %6875, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %6876 to i64*
  %6877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6878 = getelementptr inbounds %struct.GPR, %struct.GPR* %6877, i32 0, i32 9
  %6879 = getelementptr inbounds %struct.Reg, %struct.Reg* %6878, i32 0, i32 0
  %RSI.i411 = bitcast %union.anon* %6879 to i64*
  %6880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6881 = getelementptr inbounds %struct.GPR, %struct.GPR* %6880, i32 0, i32 15
  %6882 = getelementptr inbounds %struct.Reg, %struct.Reg* %6881, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %6882 to i64*
  %6883 = load i64, i64* %RBP.i412
  %6884 = sub i64 %6883, 84
  %6885 = load i64, i64* %PC.i410
  %6886 = add i64 %6885, 4
  store i64 %6886, i64* %PC.i410
  %6887 = inttoptr i64 %6884 to i32*
  %6888 = load i32, i32* %6887
  %6889 = sext i32 %6888 to i64
  store i64 %6889, i64* %RSI.i411, align 8
  store %struct.Memory* %loadMem_43e7f2, %struct.Memory** %MEMORY
  %loadMem_43e7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6891 = getelementptr inbounds %struct.GPR, %struct.GPR* %6890, i32 0, i32 33
  %6892 = getelementptr inbounds %struct.Reg, %struct.Reg* %6891, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %6892 to i64*
  %6893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6894 = getelementptr inbounds %struct.GPR, %struct.GPR* %6893, i32 0, i32 7
  %6895 = getelementptr inbounds %struct.Reg, %struct.Reg* %6894, i32 0, i32 0
  %RDX.i408 = bitcast %union.anon* %6895 to i64*
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6897 = getelementptr inbounds %struct.GPR, %struct.GPR* %6896, i32 0, i32 9
  %6898 = getelementptr inbounds %struct.Reg, %struct.Reg* %6897, i32 0, i32 0
  %RSI.i409 = bitcast %union.anon* %6898 to i64*
  %6899 = load i64, i64* %RDX.i408
  %6900 = load i64, i64* %RSI.i409
  %6901 = mul i64 %6900, 4
  %6902 = add i64 %6901, %6899
  %6903 = load i64, i64* %PC.i407
  %6904 = add i64 %6903, 4
  store i64 %6904, i64* %PC.i407
  %6905 = inttoptr i64 %6902 to i32*
  %6906 = load i32, i32* %6905
  %6907 = sext i32 %6906 to i64
  store i64 %6907, i64* %RDX.i408, align 8
  store %struct.Memory* %loadMem_43e7f6, %struct.Memory** %MEMORY
  %loadMem_43e7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6909 = getelementptr inbounds %struct.GPR, %struct.GPR* %6908, i32 0, i32 33
  %6910 = getelementptr inbounds %struct.Reg, %struct.Reg* %6909, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %6910 to i64*
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6912 = getelementptr inbounds %struct.GPR, %struct.GPR* %6911, i32 0, i32 11
  %6913 = getelementptr inbounds %struct.Reg, %struct.Reg* %6912, i32 0, i32 0
  %6914 = bitcast %union.anon* %6913 to %struct.anon.2*
  %DIL.i404 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6914, i32 0, i32 0
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6916 = getelementptr inbounds %struct.GPR, %struct.GPR* %6915, i32 0, i32 5
  %6917 = getelementptr inbounds %struct.Reg, %struct.Reg* %6916, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %6917 to i64*
  %6918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6919 = getelementptr inbounds %struct.GPR, %struct.GPR* %6918, i32 0, i32 7
  %6920 = getelementptr inbounds %struct.Reg, %struct.Reg* %6919, i32 0, i32 0
  %RDX.i406 = bitcast %union.anon* %6920 to i64*
  %6921 = load i64, i64* %RCX.i405
  %6922 = load i64, i64* %RDX.i406
  %6923 = add i64 %6922, %6921
  %6924 = load i8, i8* %DIL.i404
  %6925 = zext i8 %6924 to i64
  %6926 = load i64, i64* %PC.i403
  %6927 = add i64 %6926, 4
  store i64 %6927, i64* %PC.i403
  %6928 = inttoptr i64 %6923 to i8*
  store i8 %6924, i8* %6928
  store %struct.Memory* %loadMem_43e7fa, %struct.Memory** %MEMORY
  %loadMem_43e7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6930 = getelementptr inbounds %struct.GPR, %struct.GPR* %6929, i32 0, i32 33
  %6931 = getelementptr inbounds %struct.Reg, %struct.Reg* %6930, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %6931 to i64*
  %6932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6933 = getelementptr inbounds %struct.GPR, %struct.GPR* %6932, i32 0, i32 5
  %6934 = getelementptr inbounds %struct.Reg, %struct.Reg* %6933, i32 0, i32 0
  %RCX.i401 = bitcast %union.anon* %6934 to i64*
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6936 = getelementptr inbounds %struct.GPR, %struct.GPR* %6935, i32 0, i32 15
  %6937 = getelementptr inbounds %struct.Reg, %struct.Reg* %6936, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %6937 to i64*
  %6938 = load i64, i64* %RBP.i402
  %6939 = sub i64 %6938, 16
  %6940 = load i64, i64* %PC.i400
  %6941 = add i64 %6940, 4
  store i64 %6941, i64* %PC.i400
  %6942 = inttoptr i64 %6939 to i64*
  %6943 = load i64, i64* %6942
  store i64 %6943, i64* %RCX.i401, align 8
  store %struct.Memory* %loadMem_43e7fe, %struct.Memory** %MEMORY
  %loadMem_43e802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6945 = getelementptr inbounds %struct.GPR, %struct.GPR* %6944, i32 0, i32 33
  %6946 = getelementptr inbounds %struct.Reg, %struct.Reg* %6945, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %6946 to i64*
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6948 = getelementptr inbounds %struct.GPR, %struct.GPR* %6947, i32 0, i32 7
  %6949 = getelementptr inbounds %struct.Reg, %struct.Reg* %6948, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %6949 to i64*
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6951 = getelementptr inbounds %struct.GPR, %struct.GPR* %6950, i32 0, i32 15
  %6952 = getelementptr inbounds %struct.Reg, %struct.Reg* %6951, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %6952 to i64*
  %6953 = load i64, i64* %RBP.i399
  %6954 = sub i64 %6953, 56
  %6955 = load i64, i64* %PC.i397
  %6956 = add i64 %6955, 4
  store i64 %6956, i64* %PC.i397
  %6957 = inttoptr i64 %6954 to i64*
  %6958 = load i64, i64* %6957
  store i64 %6958, i64* %RDX.i398, align 8
  store %struct.Memory* %loadMem_43e802, %struct.Memory** %MEMORY
  %loadMem_43e806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6960 = getelementptr inbounds %struct.GPR, %struct.GPR* %6959, i32 0, i32 33
  %6961 = getelementptr inbounds %struct.Reg, %struct.Reg* %6960, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %6961 to i64*
  %6962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6963 = getelementptr inbounds %struct.GPR, %struct.GPR* %6962, i32 0, i32 1
  %6964 = getelementptr inbounds %struct.Reg, %struct.Reg* %6963, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %6964 to i64*
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6966 = getelementptr inbounds %struct.GPR, %struct.GPR* %6965, i32 0, i32 15
  %6967 = getelementptr inbounds %struct.Reg, %struct.Reg* %6966, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %6967 to i64*
  %6968 = load i64, i64* %RBP.i396
  %6969 = sub i64 %6968, 72
  %6970 = load i64, i64* %PC.i394
  %6971 = add i64 %6970, 3
  store i64 %6971, i64* %PC.i394
  %6972 = inttoptr i64 %6969 to i32*
  %6973 = load i32, i32* %6972
  %6974 = zext i32 %6973 to i64
  store i64 %6974, i64* %RAX.i395, align 8
  store %struct.Memory* %loadMem_43e806, %struct.Memory** %MEMORY
  %loadMem_43e809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6976 = getelementptr inbounds %struct.GPR, %struct.GPR* %6975, i32 0, i32 33
  %6977 = getelementptr inbounds %struct.Reg, %struct.Reg* %6976, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %6977 to i64*
  %6978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6979 = getelementptr inbounds %struct.GPR, %struct.GPR* %6978, i32 0, i32 1
  %6980 = getelementptr inbounds %struct.Reg, %struct.Reg* %6979, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %6980 to i64*
  %6981 = load i64, i64* %RAX.i393
  %6982 = load i64, i64* %PC.i392
  %6983 = add i64 %6982, 3
  store i64 %6983, i64* %PC.i392
  %6984 = trunc i64 %6981 to i32
  %6985 = sub i32 %6984, 1
  %6986 = zext i32 %6985 to i64
  store i64 %6986, i64* %RAX.i393, align 8
  %6987 = icmp ult i32 %6984, 1
  %6988 = zext i1 %6987 to i8
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6988, i8* %6989, align 1
  %6990 = and i32 %6985, 255
  %6991 = call i32 @llvm.ctpop.i32(i32 %6990)
  %6992 = trunc i32 %6991 to i8
  %6993 = and i8 %6992, 1
  %6994 = xor i8 %6993, 1
  %6995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6994, i8* %6995, align 1
  %6996 = xor i64 1, %6981
  %6997 = trunc i64 %6996 to i32
  %6998 = xor i32 %6997, %6985
  %6999 = lshr i32 %6998, 4
  %7000 = trunc i32 %6999 to i8
  %7001 = and i8 %7000, 1
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7001, i8* %7002, align 1
  %7003 = icmp eq i32 %6985, 0
  %7004 = zext i1 %7003 to i8
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7004, i8* %7005, align 1
  %7006 = lshr i32 %6985, 31
  %7007 = trunc i32 %7006 to i8
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7007, i8* %7008, align 1
  %7009 = lshr i32 %6984, 31
  %7010 = xor i32 %7006, %7009
  %7011 = add i32 %7010, %7009
  %7012 = icmp eq i32 %7011, 2
  %7013 = zext i1 %7012 to i8
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7013, i8* %7014, align 1
  store %struct.Memory* %loadMem_43e809, %struct.Memory** %MEMORY
  %loadMem_43e80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7016 = getelementptr inbounds %struct.GPR, %struct.GPR* %7015, i32 0, i32 33
  %7017 = getelementptr inbounds %struct.Reg, %struct.Reg* %7016, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %7017 to i64*
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7019 = getelementptr inbounds %struct.GPR, %struct.GPR* %7018, i32 0, i32 1
  %7020 = getelementptr inbounds %struct.Reg, %struct.Reg* %7019, i32 0, i32 0
  %EAX.i390 = bitcast %union.anon* %7020 to i32*
  %7021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7022 = getelementptr inbounds %struct.GPR, %struct.GPR* %7021, i32 0, i32 9
  %7023 = getelementptr inbounds %struct.Reg, %struct.Reg* %7022, i32 0, i32 0
  %RSI.i391 = bitcast %union.anon* %7023 to i64*
  %7024 = load i32, i32* %EAX.i390
  %7025 = zext i32 %7024 to i64
  %7026 = load i64, i64* %PC.i389
  %7027 = add i64 %7026, 3
  store i64 %7027, i64* %PC.i389
  %7028 = shl i64 %7025, 32
  %7029 = ashr exact i64 %7028, 32
  store i64 %7029, i64* %RSI.i391, align 8
  store %struct.Memory* %loadMem_43e80c, %struct.Memory** %MEMORY
  %loadMem_43e80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7031 = getelementptr inbounds %struct.GPR, %struct.GPR* %7030, i32 0, i32 33
  %7032 = getelementptr inbounds %struct.Reg, %struct.Reg* %7031, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %7032 to i64*
  %7033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7034 = getelementptr inbounds %struct.GPR, %struct.GPR* %7033, i32 0, i32 7
  %7035 = getelementptr inbounds %struct.Reg, %struct.Reg* %7034, i32 0, i32 0
  %RDX.i387 = bitcast %union.anon* %7035 to i64*
  %7036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7037 = getelementptr inbounds %struct.GPR, %struct.GPR* %7036, i32 0, i32 9
  %7038 = getelementptr inbounds %struct.Reg, %struct.Reg* %7037, i32 0, i32 0
  %RSI.i388 = bitcast %union.anon* %7038 to i64*
  %7039 = load i64, i64* %RDX.i387
  %7040 = load i64, i64* %RSI.i388
  %7041 = mul i64 %7040, 4
  %7042 = add i64 %7041, %7039
  %7043 = load i64, i64* %PC.i386
  %7044 = add i64 %7043, 4
  store i64 %7044, i64* %PC.i386
  %7045 = inttoptr i64 %7042 to i32*
  %7046 = load i32, i32* %7045
  %7047 = sext i32 %7046 to i64
  store i64 %7047, i64* %RDX.i387, align 8
  store %struct.Memory* %loadMem_43e80f, %struct.Memory** %MEMORY
  %loadMem_43e813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7049 = getelementptr inbounds %struct.GPR, %struct.GPR* %7048, i32 0, i32 33
  %7050 = getelementptr inbounds %struct.Reg, %struct.Reg* %7049, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %7050 to i64*
  %7051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7052 = getelementptr inbounds %struct.GPR, %struct.GPR* %7051, i32 0, i32 11
  %7053 = getelementptr inbounds %struct.Reg, %struct.Reg* %7052, i32 0, i32 0
  %7054 = bitcast %union.anon* %7053 to %struct.anon.2*
  %DIL.i383 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7054, i32 0, i32 0
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7056 = getelementptr inbounds %struct.GPR, %struct.GPR* %7055, i32 0, i32 5
  %7057 = getelementptr inbounds %struct.Reg, %struct.Reg* %7056, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %7057 to i64*
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7059 = getelementptr inbounds %struct.GPR, %struct.GPR* %7058, i32 0, i32 7
  %7060 = getelementptr inbounds %struct.Reg, %struct.Reg* %7059, i32 0, i32 0
  %RDX.i385 = bitcast %union.anon* %7060 to i64*
  %7061 = load i64, i64* %RCX.i384
  %7062 = load i64, i64* %RDX.i385
  %7063 = add i64 %7062, %7061
  %7064 = load i64, i64* %PC.i382
  %7065 = add i64 %7064, 4
  store i64 %7065, i64* %PC.i382
  %7066 = inttoptr i64 %7063 to i8*
  %7067 = load i8, i8* %7066
  store i8 %7067, i8* %DIL.i383, align 1
  store %struct.Memory* %loadMem_43e813, %struct.Memory** %MEMORY
  %loadMem_43e817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7069 = getelementptr inbounds %struct.GPR, %struct.GPR* %7068, i32 0, i32 33
  %7070 = getelementptr inbounds %struct.Reg, %struct.Reg* %7069, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %7070 to i64*
  %7071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7072 = getelementptr inbounds %struct.GPR, %struct.GPR* %7071, i32 0, i32 5
  %7073 = getelementptr inbounds %struct.Reg, %struct.Reg* %7072, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %7073 to i64*
  %7074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7075 = getelementptr inbounds %struct.GPR, %struct.GPR* %7074, i32 0, i32 15
  %7076 = getelementptr inbounds %struct.Reg, %struct.Reg* %7075, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %7076 to i64*
  %7077 = load i64, i64* %RBP.i381
  %7078 = sub i64 %7077, 16
  %7079 = load i64, i64* %PC.i379
  %7080 = add i64 %7079, 4
  store i64 %7080, i64* %PC.i379
  %7081 = inttoptr i64 %7078 to i64*
  %7082 = load i64, i64* %7081
  store i64 %7082, i64* %RCX.i380, align 8
  store %struct.Memory* %loadMem_43e817, %struct.Memory** %MEMORY
  %loadMem_43e81b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7084 = getelementptr inbounds %struct.GPR, %struct.GPR* %7083, i32 0, i32 33
  %7085 = getelementptr inbounds %struct.Reg, %struct.Reg* %7084, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %7085 to i64*
  %7086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7087 = getelementptr inbounds %struct.GPR, %struct.GPR* %7086, i32 0, i32 7
  %7088 = getelementptr inbounds %struct.Reg, %struct.Reg* %7087, i32 0, i32 0
  %RDX.i377 = bitcast %union.anon* %7088 to i64*
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7090 = getelementptr inbounds %struct.GPR, %struct.GPR* %7089, i32 0, i32 15
  %7091 = getelementptr inbounds %struct.Reg, %struct.Reg* %7090, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %7091 to i64*
  %7092 = load i64, i64* %RBP.i378
  %7093 = sub i64 %7092, 56
  %7094 = load i64, i64* %PC.i376
  %7095 = add i64 %7094, 4
  store i64 %7095, i64* %PC.i376
  %7096 = inttoptr i64 %7093 to i64*
  %7097 = load i64, i64* %7096
  store i64 %7097, i64* %RDX.i377, align 8
  store %struct.Memory* %loadMem_43e81b, %struct.Memory** %MEMORY
  %loadMem_43e81f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7099 = getelementptr inbounds %struct.GPR, %struct.GPR* %7098, i32 0, i32 33
  %7100 = getelementptr inbounds %struct.Reg, %struct.Reg* %7099, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %7100 to i64*
  %7101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7102 = getelementptr inbounds %struct.GPR, %struct.GPR* %7101, i32 0, i32 9
  %7103 = getelementptr inbounds %struct.Reg, %struct.Reg* %7102, i32 0, i32 0
  %RSI.i374 = bitcast %union.anon* %7103 to i64*
  %7104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7105 = getelementptr inbounds %struct.GPR, %struct.GPR* %7104, i32 0, i32 15
  %7106 = getelementptr inbounds %struct.Reg, %struct.Reg* %7105, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %7106 to i64*
  %7107 = load i64, i64* %RBP.i375
  %7108 = sub i64 %7107, 84
  %7109 = load i64, i64* %PC.i373
  %7110 = add i64 %7109, 4
  store i64 %7110, i64* %PC.i373
  %7111 = inttoptr i64 %7108 to i32*
  %7112 = load i32, i32* %7111
  %7113 = sext i32 %7112 to i64
  store i64 %7113, i64* %RSI.i374, align 8
  store %struct.Memory* %loadMem_43e81f, %struct.Memory** %MEMORY
  %loadMem_43e823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7115 = getelementptr inbounds %struct.GPR, %struct.GPR* %7114, i32 0, i32 33
  %7116 = getelementptr inbounds %struct.Reg, %struct.Reg* %7115, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %7116 to i64*
  %7117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7118 = getelementptr inbounds %struct.GPR, %struct.GPR* %7117, i32 0, i32 7
  %7119 = getelementptr inbounds %struct.Reg, %struct.Reg* %7118, i32 0, i32 0
  %RDX.i371 = bitcast %union.anon* %7119 to i64*
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7121 = getelementptr inbounds %struct.GPR, %struct.GPR* %7120, i32 0, i32 9
  %7122 = getelementptr inbounds %struct.Reg, %struct.Reg* %7121, i32 0, i32 0
  %RSI.i372 = bitcast %union.anon* %7122 to i64*
  %7123 = load i64, i64* %RDX.i371
  %7124 = load i64, i64* %RSI.i372
  %7125 = mul i64 %7124, 4
  %7126 = add i64 %7125, %7123
  %7127 = load i64, i64* %PC.i370
  %7128 = add i64 %7127, 4
  store i64 %7128, i64* %PC.i370
  %7129 = inttoptr i64 %7126 to i32*
  %7130 = load i32, i32* %7129
  %7131 = sext i32 %7130 to i64
  store i64 %7131, i64* %RDX.i371, align 8
  store %struct.Memory* %loadMem_43e823, %struct.Memory** %MEMORY
  %loadMem_43e827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7133 = getelementptr inbounds %struct.GPR, %struct.GPR* %7132, i32 0, i32 33
  %7134 = getelementptr inbounds %struct.Reg, %struct.Reg* %7133, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %7134 to i64*
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 11
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %7138 = bitcast %union.anon* %7137 to %struct.anon.2*
  %DIL.i367 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7138, i32 0, i32 0
  %7139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7140 = getelementptr inbounds %struct.GPR, %struct.GPR* %7139, i32 0, i32 5
  %7141 = getelementptr inbounds %struct.Reg, %struct.Reg* %7140, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %7141 to i64*
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7143 = getelementptr inbounds %struct.GPR, %struct.GPR* %7142, i32 0, i32 7
  %7144 = getelementptr inbounds %struct.Reg, %struct.Reg* %7143, i32 0, i32 0
  %RDX.i369 = bitcast %union.anon* %7144 to i64*
  %7145 = load i64, i64* %RCX.i368
  %7146 = load i64, i64* %RDX.i369
  %7147 = add i64 %7146, %7145
  %7148 = load i8, i8* %DIL.i367
  %7149 = zext i8 %7148 to i64
  %7150 = load i64, i64* %PC.i366
  %7151 = add i64 %7150, 4
  store i64 %7151, i64* %PC.i366
  %7152 = inttoptr i64 %7147 to i8*
  store i8 %7148, i8* %7152
  store %struct.Memory* %loadMem_43e827, %struct.Memory** %MEMORY
  %loadMem_43e82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7154 = getelementptr inbounds %struct.GPR, %struct.GPR* %7153, i32 0, i32 33
  %7155 = getelementptr inbounds %struct.Reg, %struct.Reg* %7154, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %7155 to i64*
  %7156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7157 = getelementptr inbounds %struct.GPR, %struct.GPR* %7156, i32 0, i32 5
  %7158 = getelementptr inbounds %struct.Reg, %struct.Reg* %7157, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %7158 to i64*
  %7159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7160 = getelementptr inbounds %struct.GPR, %struct.GPR* %7159, i32 0, i32 15
  %7161 = getelementptr inbounds %struct.Reg, %struct.Reg* %7160, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %7161 to i64*
  %7162 = load i64, i64* %RBP.i365
  %7163 = sub i64 %7162, 56
  %7164 = load i64, i64* %PC.i363
  %7165 = add i64 %7164, 4
  store i64 %7165, i64* %PC.i363
  %7166 = inttoptr i64 %7163 to i64*
  %7167 = load i64, i64* %7166
  store i64 %7167, i64* %RCX.i364, align 8
  store %struct.Memory* %loadMem_43e82b, %struct.Memory** %MEMORY
  %loadMem_43e82f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7169 = getelementptr inbounds %struct.GPR, %struct.GPR* %7168, i32 0, i32 33
  %7170 = getelementptr inbounds %struct.Reg, %struct.Reg* %7169, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %7170 to i64*
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7172 = getelementptr inbounds %struct.GPR, %struct.GPR* %7171, i32 0, i32 1
  %7173 = getelementptr inbounds %struct.Reg, %struct.Reg* %7172, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %7173 to i64*
  %7174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7175 = getelementptr inbounds %struct.GPR, %struct.GPR* %7174, i32 0, i32 15
  %7176 = getelementptr inbounds %struct.Reg, %struct.Reg* %7175, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %7176 to i64*
  %7177 = load i64, i64* %RBP.i362
  %7178 = sub i64 %7177, 72
  %7179 = load i64, i64* %PC.i360
  %7180 = add i64 %7179, 3
  store i64 %7180, i64* %PC.i360
  %7181 = inttoptr i64 %7178 to i32*
  %7182 = load i32, i32* %7181
  %7183 = zext i32 %7182 to i64
  store i64 %7183, i64* %RAX.i361, align 8
  store %struct.Memory* %loadMem_43e82f, %struct.Memory** %MEMORY
  %loadMem_43e832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7185 = getelementptr inbounds %struct.GPR, %struct.GPR* %7184, i32 0, i32 33
  %7186 = getelementptr inbounds %struct.Reg, %struct.Reg* %7185, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %7186 to i64*
  %7187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7188 = getelementptr inbounds %struct.GPR, %struct.GPR* %7187, i32 0, i32 1
  %7189 = getelementptr inbounds %struct.Reg, %struct.Reg* %7188, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %7189 to i64*
  %7190 = load i64, i64* %RAX.i359
  %7191 = load i64, i64* %PC.i358
  %7192 = add i64 %7191, 3
  store i64 %7192, i64* %PC.i358
  %7193 = trunc i64 %7190 to i32
  %7194 = sub i32 %7193, 1
  %7195 = zext i32 %7194 to i64
  store i64 %7195, i64* %RAX.i359, align 8
  %7196 = icmp ult i32 %7193, 1
  %7197 = zext i1 %7196 to i8
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7197, i8* %7198, align 1
  %7199 = and i32 %7194, 255
  %7200 = call i32 @llvm.ctpop.i32(i32 %7199)
  %7201 = trunc i32 %7200 to i8
  %7202 = and i8 %7201, 1
  %7203 = xor i8 %7202, 1
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7203, i8* %7204, align 1
  %7205 = xor i64 1, %7190
  %7206 = trunc i64 %7205 to i32
  %7207 = xor i32 %7206, %7194
  %7208 = lshr i32 %7207, 4
  %7209 = trunc i32 %7208 to i8
  %7210 = and i8 %7209, 1
  %7211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7210, i8* %7211, align 1
  %7212 = icmp eq i32 %7194, 0
  %7213 = zext i1 %7212 to i8
  %7214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7213, i8* %7214, align 1
  %7215 = lshr i32 %7194, 31
  %7216 = trunc i32 %7215 to i8
  %7217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7216, i8* %7217, align 1
  %7218 = lshr i32 %7193, 31
  %7219 = xor i32 %7215, %7218
  %7220 = add i32 %7219, %7218
  %7221 = icmp eq i32 %7220, 2
  %7222 = zext i1 %7221 to i8
  %7223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7222, i8* %7223, align 1
  store %struct.Memory* %loadMem_43e832, %struct.Memory** %MEMORY
  %loadMem_43e835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7225 = getelementptr inbounds %struct.GPR, %struct.GPR* %7224, i32 0, i32 33
  %7226 = getelementptr inbounds %struct.Reg, %struct.Reg* %7225, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %7226 to i64*
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7228 = getelementptr inbounds %struct.GPR, %struct.GPR* %7227, i32 0, i32 1
  %7229 = getelementptr inbounds %struct.Reg, %struct.Reg* %7228, i32 0, i32 0
  %EAX.i356 = bitcast %union.anon* %7229 to i32*
  %7230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7231 = getelementptr inbounds %struct.GPR, %struct.GPR* %7230, i32 0, i32 7
  %7232 = getelementptr inbounds %struct.Reg, %struct.Reg* %7231, i32 0, i32 0
  %RDX.i357 = bitcast %union.anon* %7232 to i64*
  %7233 = load i32, i32* %EAX.i356
  %7234 = zext i32 %7233 to i64
  %7235 = load i64, i64* %PC.i355
  %7236 = add i64 %7235, 3
  store i64 %7236, i64* %PC.i355
  %7237 = shl i64 %7234, 32
  %7238 = ashr exact i64 %7237, 32
  store i64 %7238, i64* %RDX.i357, align 8
  store %struct.Memory* %loadMem_43e835, %struct.Memory** %MEMORY
  %loadMem_43e838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7240 = getelementptr inbounds %struct.GPR, %struct.GPR* %7239, i32 0, i32 33
  %7241 = getelementptr inbounds %struct.Reg, %struct.Reg* %7240, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %7241 to i64*
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7243 = getelementptr inbounds %struct.GPR, %struct.GPR* %7242, i32 0, i32 1
  %7244 = getelementptr inbounds %struct.Reg, %struct.Reg* %7243, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %7244 to i64*
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7246 = getelementptr inbounds %struct.GPR, %struct.GPR* %7245, i32 0, i32 5
  %7247 = getelementptr inbounds %struct.Reg, %struct.Reg* %7246, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %7247 to i64*
  %7248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7249 = getelementptr inbounds %struct.GPR, %struct.GPR* %7248, i32 0, i32 7
  %7250 = getelementptr inbounds %struct.Reg, %struct.Reg* %7249, i32 0, i32 0
  %RDX.i354 = bitcast %union.anon* %7250 to i64*
  %7251 = load i64, i64* %RCX.i353
  %7252 = load i64, i64* %RDX.i354
  %7253 = mul i64 %7252, 4
  %7254 = add i64 %7253, %7251
  %7255 = load i64, i64* %PC.i351
  %7256 = add i64 %7255, 3
  store i64 %7256, i64* %PC.i351
  %7257 = inttoptr i64 %7254 to i32*
  %7258 = load i32, i32* %7257
  %7259 = zext i32 %7258 to i64
  store i64 %7259, i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_43e838, %struct.Memory** %MEMORY
  %loadMem_43e83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7261 = getelementptr inbounds %struct.GPR, %struct.GPR* %7260, i32 0, i32 33
  %7262 = getelementptr inbounds %struct.Reg, %struct.Reg* %7261, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %7262 to i64*
  %7263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7264 = getelementptr inbounds %struct.GPR, %struct.GPR* %7263, i32 0, i32 5
  %7265 = getelementptr inbounds %struct.Reg, %struct.Reg* %7264, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %7265 to i64*
  %7266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7267 = getelementptr inbounds %struct.GPR, %struct.GPR* %7266, i32 0, i32 15
  %7268 = getelementptr inbounds %struct.Reg, %struct.Reg* %7267, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %7268 to i64*
  %7269 = load i64, i64* %RBP.i350
  %7270 = sub i64 %7269, 56
  %7271 = load i64, i64* %PC.i348
  %7272 = add i64 %7271, 4
  store i64 %7272, i64* %PC.i348
  %7273 = inttoptr i64 %7270 to i64*
  %7274 = load i64, i64* %7273
  store i64 %7274, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_43e83b, %struct.Memory** %MEMORY
  %loadMem_43e83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7276 = getelementptr inbounds %struct.GPR, %struct.GPR* %7275, i32 0, i32 33
  %7277 = getelementptr inbounds %struct.Reg, %struct.Reg* %7276, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %7277 to i64*
  %7278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7279 = getelementptr inbounds %struct.GPR, %struct.GPR* %7278, i32 0, i32 7
  %7280 = getelementptr inbounds %struct.Reg, %struct.Reg* %7279, i32 0, i32 0
  %RDX.i346 = bitcast %union.anon* %7280 to i64*
  %7281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7282 = getelementptr inbounds %struct.GPR, %struct.GPR* %7281, i32 0, i32 15
  %7283 = getelementptr inbounds %struct.Reg, %struct.Reg* %7282, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %7283 to i64*
  %7284 = load i64, i64* %RBP.i347
  %7285 = sub i64 %7284, 84
  %7286 = load i64, i64* %PC.i345
  %7287 = add i64 %7286, 4
  store i64 %7287, i64* %PC.i345
  %7288 = inttoptr i64 %7285 to i32*
  %7289 = load i32, i32* %7288
  %7290 = sext i32 %7289 to i64
  store i64 %7290, i64* %RDX.i346, align 8
  store %struct.Memory* %loadMem_43e83f, %struct.Memory** %MEMORY
  %loadMem_43e843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7292 = getelementptr inbounds %struct.GPR, %struct.GPR* %7291, i32 0, i32 33
  %7293 = getelementptr inbounds %struct.Reg, %struct.Reg* %7292, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %7293 to i64*
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7295 = getelementptr inbounds %struct.GPR, %struct.GPR* %7294, i32 0, i32 1
  %7296 = getelementptr inbounds %struct.Reg, %struct.Reg* %7295, i32 0, i32 0
  %EAX.i342 = bitcast %union.anon* %7296 to i32*
  %7297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7298 = getelementptr inbounds %struct.GPR, %struct.GPR* %7297, i32 0, i32 5
  %7299 = getelementptr inbounds %struct.Reg, %struct.Reg* %7298, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %7299 to i64*
  %7300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7301 = getelementptr inbounds %struct.GPR, %struct.GPR* %7300, i32 0, i32 7
  %7302 = getelementptr inbounds %struct.Reg, %struct.Reg* %7301, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %7302 to i64*
  %7303 = load i64, i64* %RCX.i343
  %7304 = load i64, i64* %RDX.i344
  %7305 = mul i64 %7304, 4
  %7306 = add i64 %7305, %7303
  %7307 = load i32, i32* %EAX.i342
  %7308 = zext i32 %7307 to i64
  %7309 = load i64, i64* %PC.i341
  %7310 = add i64 %7309, 3
  store i64 %7310, i64* %PC.i341
  %7311 = inttoptr i64 %7306 to i32*
  store i32 %7307, i32* %7311
  store %struct.Memory* %loadMem_43e843, %struct.Memory** %MEMORY
  %loadMem_43e846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7313 = getelementptr inbounds %struct.GPR, %struct.GPR* %7312, i32 0, i32 33
  %7314 = getelementptr inbounds %struct.Reg, %struct.Reg* %7313, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %7314 to i64*
  %7315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7316 = getelementptr inbounds %struct.GPR, %struct.GPR* %7315, i32 0, i32 11
  %7317 = getelementptr inbounds %struct.Reg, %struct.Reg* %7316, i32 0, i32 0
  %7318 = bitcast %union.anon* %7317 to %struct.anon.2*
  %DIL.i339 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7318, i32 0, i32 0
  %7319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7320 = getelementptr inbounds %struct.GPR, %struct.GPR* %7319, i32 0, i32 15
  %7321 = getelementptr inbounds %struct.Reg, %struct.Reg* %7320, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %7321 to i64*
  %7322 = load i64, i64* %RBP.i340
  %7323 = sub i64 %7322, 89
  %7324 = load i64, i64* %PC.i338
  %7325 = add i64 %7324, 4
  store i64 %7325, i64* %PC.i338
  %7326 = inttoptr i64 %7323 to i8*
  %7327 = load i8, i8* %7326
  store i8 %7327, i8* %DIL.i339, align 1
  store %struct.Memory* %loadMem_43e846, %struct.Memory** %MEMORY
  %loadMem_43e84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7329 = getelementptr inbounds %struct.GPR, %struct.GPR* %7328, i32 0, i32 33
  %7330 = getelementptr inbounds %struct.Reg, %struct.Reg* %7329, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %7330 to i64*
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7332 = getelementptr inbounds %struct.GPR, %struct.GPR* %7331, i32 0, i32 5
  %7333 = getelementptr inbounds %struct.Reg, %struct.Reg* %7332, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %7333 to i64*
  %7334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7335 = getelementptr inbounds %struct.GPR, %struct.GPR* %7334, i32 0, i32 15
  %7336 = getelementptr inbounds %struct.Reg, %struct.Reg* %7335, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %7336 to i64*
  %7337 = load i64, i64* %RBP.i337
  %7338 = sub i64 %7337, 8
  %7339 = load i64, i64* %PC.i335
  %7340 = add i64 %7339, 4
  store i64 %7340, i64* %PC.i335
  %7341 = inttoptr i64 %7338 to i64*
  %7342 = load i64, i64* %7341
  store i64 %7342, i64* %RCX.i336, align 8
  store %struct.Memory* %loadMem_43e84a, %struct.Memory** %MEMORY
  %loadMem_43e84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7344 = getelementptr inbounds %struct.GPR, %struct.GPR* %7343, i32 0, i32 33
  %7345 = getelementptr inbounds %struct.Reg, %struct.Reg* %7344, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %7345 to i64*
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 7
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %RDX.i333 = bitcast %union.anon* %7348 to i64*
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 15
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %7351 to i64*
  %7352 = load i64, i64* %RBP.i334
  %7353 = sub i64 %7352, 56
  %7354 = load i64, i64* %PC.i332
  %7355 = add i64 %7354, 4
  store i64 %7355, i64* %PC.i332
  %7356 = inttoptr i64 %7353 to i64*
  %7357 = load i64, i64* %7356
  store i64 %7357, i64* %RDX.i333, align 8
  store %struct.Memory* %loadMem_43e84e, %struct.Memory** %MEMORY
  %loadMem_43e852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7359 = getelementptr inbounds %struct.GPR, %struct.GPR* %7358, i32 0, i32 33
  %7360 = getelementptr inbounds %struct.Reg, %struct.Reg* %7359, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %7360 to i64*
  %7361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7362 = getelementptr inbounds %struct.GPR, %struct.GPR* %7361, i32 0, i32 1
  %7363 = getelementptr inbounds %struct.Reg, %struct.Reg* %7362, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %7363 to i64*
  %7364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7365 = getelementptr inbounds %struct.GPR, %struct.GPR* %7364, i32 0, i32 15
  %7366 = getelementptr inbounds %struct.Reg, %struct.Reg* %7365, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %7366 to i64*
  %7367 = load i64, i64* %RBP.i331
  %7368 = sub i64 %7367, 72
  %7369 = load i64, i64* %PC.i329
  %7370 = add i64 %7369, 3
  store i64 %7370, i64* %PC.i329
  %7371 = inttoptr i64 %7368 to i32*
  %7372 = load i32, i32* %7371
  %7373 = zext i32 %7372 to i64
  store i64 %7373, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_43e852, %struct.Memory** %MEMORY
  %loadMem_43e855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7375 = getelementptr inbounds %struct.GPR, %struct.GPR* %7374, i32 0, i32 33
  %7376 = getelementptr inbounds %struct.Reg, %struct.Reg* %7375, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %7376 to i64*
  %7377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7378 = getelementptr inbounds %struct.GPR, %struct.GPR* %7377, i32 0, i32 1
  %7379 = getelementptr inbounds %struct.Reg, %struct.Reg* %7378, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %7379 to i64*
  %7380 = load i64, i64* %RAX.i328
  %7381 = load i64, i64* %PC.i327
  %7382 = add i64 %7381, 3
  store i64 %7382, i64* %PC.i327
  %7383 = trunc i64 %7380 to i32
  %7384 = sub i32 %7383, 1
  %7385 = zext i32 %7384 to i64
  store i64 %7385, i64* %RAX.i328, align 8
  %7386 = icmp ult i32 %7383, 1
  %7387 = zext i1 %7386 to i8
  %7388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7387, i8* %7388, align 1
  %7389 = and i32 %7384, 255
  %7390 = call i32 @llvm.ctpop.i32(i32 %7389)
  %7391 = trunc i32 %7390 to i8
  %7392 = and i8 %7391, 1
  %7393 = xor i8 %7392, 1
  %7394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7393, i8* %7394, align 1
  %7395 = xor i64 1, %7380
  %7396 = trunc i64 %7395 to i32
  %7397 = xor i32 %7396, %7384
  %7398 = lshr i32 %7397, 4
  %7399 = trunc i32 %7398 to i8
  %7400 = and i8 %7399, 1
  %7401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7400, i8* %7401, align 1
  %7402 = icmp eq i32 %7384, 0
  %7403 = zext i1 %7402 to i8
  %7404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7403, i8* %7404, align 1
  %7405 = lshr i32 %7384, 31
  %7406 = trunc i32 %7405 to i8
  %7407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7406, i8* %7407, align 1
  %7408 = lshr i32 %7383, 31
  %7409 = xor i32 %7405, %7408
  %7410 = add i32 %7409, %7408
  %7411 = icmp eq i32 %7410, 2
  %7412 = zext i1 %7411 to i8
  %7413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7412, i8* %7413, align 1
  store %struct.Memory* %loadMem_43e855, %struct.Memory** %MEMORY
  %loadMem_43e858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7415 = getelementptr inbounds %struct.GPR, %struct.GPR* %7414, i32 0, i32 33
  %7416 = getelementptr inbounds %struct.Reg, %struct.Reg* %7415, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %7416 to i64*
  %7417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7418 = getelementptr inbounds %struct.GPR, %struct.GPR* %7417, i32 0, i32 1
  %7419 = getelementptr inbounds %struct.Reg, %struct.Reg* %7418, i32 0, i32 0
  %EAX.i325 = bitcast %union.anon* %7419 to i32*
  %7420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7421 = getelementptr inbounds %struct.GPR, %struct.GPR* %7420, i32 0, i32 9
  %7422 = getelementptr inbounds %struct.Reg, %struct.Reg* %7421, i32 0, i32 0
  %RSI.i326 = bitcast %union.anon* %7422 to i64*
  %7423 = load i32, i32* %EAX.i325
  %7424 = zext i32 %7423 to i64
  %7425 = load i64, i64* %PC.i324
  %7426 = add i64 %7425, 3
  store i64 %7426, i64* %PC.i324
  %7427 = shl i64 %7424, 32
  %7428 = ashr exact i64 %7427, 32
  store i64 %7428, i64* %RSI.i326, align 8
  store %struct.Memory* %loadMem_43e858, %struct.Memory** %MEMORY
  %loadMem_43e85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7430 = getelementptr inbounds %struct.GPR, %struct.GPR* %7429, i32 0, i32 33
  %7431 = getelementptr inbounds %struct.Reg, %struct.Reg* %7430, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %7431 to i64*
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7433 = getelementptr inbounds %struct.GPR, %struct.GPR* %7432, i32 0, i32 7
  %7434 = getelementptr inbounds %struct.Reg, %struct.Reg* %7433, i32 0, i32 0
  %RDX.i322 = bitcast %union.anon* %7434 to i64*
  %7435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7436 = getelementptr inbounds %struct.GPR, %struct.GPR* %7435, i32 0, i32 9
  %7437 = getelementptr inbounds %struct.Reg, %struct.Reg* %7436, i32 0, i32 0
  %RSI.i323 = bitcast %union.anon* %7437 to i64*
  %7438 = load i64, i64* %RDX.i322
  %7439 = load i64, i64* %RSI.i323
  %7440 = mul i64 %7439, 4
  %7441 = add i64 %7440, %7438
  %7442 = load i64, i64* %PC.i321
  %7443 = add i64 %7442, 4
  store i64 %7443, i64* %PC.i321
  %7444 = inttoptr i64 %7441 to i32*
  %7445 = load i32, i32* %7444
  %7446 = sext i32 %7445 to i64
  store i64 %7446, i64* %RDX.i322, align 8
  store %struct.Memory* %loadMem_43e85b, %struct.Memory** %MEMORY
  %loadMem_43e85f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7448 = getelementptr inbounds %struct.GPR, %struct.GPR* %7447, i32 0, i32 33
  %7449 = getelementptr inbounds %struct.Reg, %struct.Reg* %7448, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %7449 to i64*
  %7450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7451 = getelementptr inbounds %struct.GPR, %struct.GPR* %7450, i32 0, i32 11
  %7452 = getelementptr inbounds %struct.Reg, %struct.Reg* %7451, i32 0, i32 0
  %7453 = bitcast %union.anon* %7452 to %struct.anon.2*
  %DIL.i318 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7453, i32 0, i32 0
  %7454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7455 = getelementptr inbounds %struct.GPR, %struct.GPR* %7454, i32 0, i32 5
  %7456 = getelementptr inbounds %struct.Reg, %struct.Reg* %7455, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %7456 to i64*
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7458 = getelementptr inbounds %struct.GPR, %struct.GPR* %7457, i32 0, i32 7
  %7459 = getelementptr inbounds %struct.Reg, %struct.Reg* %7458, i32 0, i32 0
  %RDX.i320 = bitcast %union.anon* %7459 to i64*
  %7460 = load i64, i64* %RCX.i319
  %7461 = load i64, i64* %RDX.i320
  %7462 = add i64 %7461, %7460
  %7463 = load i8, i8* %DIL.i318
  %7464 = zext i8 %7463 to i64
  %7465 = load i64, i64* %PC.i317
  %7466 = add i64 %7465, 4
  store i64 %7466, i64* %PC.i317
  %7467 = inttoptr i64 %7462 to i8*
  store i8 %7463, i8* %7467
  store %struct.Memory* %loadMem_43e85f, %struct.Memory** %MEMORY
  %loadMem_43e863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7469 = getelementptr inbounds %struct.GPR, %struct.GPR* %7468, i32 0, i32 33
  %7470 = getelementptr inbounds %struct.Reg, %struct.Reg* %7469, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %7470 to i64*
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7472 = getelementptr inbounds %struct.GPR, %struct.GPR* %7471, i32 0, i32 11
  %7473 = getelementptr inbounds %struct.Reg, %struct.Reg* %7472, i32 0, i32 0
  %7474 = bitcast %union.anon* %7473 to %struct.anon.2*
  %DIL.i315 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7474, i32 0, i32 0
  %7475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7476 = getelementptr inbounds %struct.GPR, %struct.GPR* %7475, i32 0, i32 15
  %7477 = getelementptr inbounds %struct.Reg, %struct.Reg* %7476, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %7477 to i64*
  %7478 = load i64, i64* %RBP.i316
  %7479 = sub i64 %7478, 90
  %7480 = load i64, i64* %PC.i314
  %7481 = add i64 %7480, 4
  store i64 %7481, i64* %PC.i314
  %7482 = inttoptr i64 %7479 to i8*
  %7483 = load i8, i8* %7482
  store i8 %7483, i8* %DIL.i315, align 1
  store %struct.Memory* %loadMem_43e863, %struct.Memory** %MEMORY
  %loadMem_43e867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7485 = getelementptr inbounds %struct.GPR, %struct.GPR* %7484, i32 0, i32 33
  %7486 = getelementptr inbounds %struct.Reg, %struct.Reg* %7485, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %7486 to i64*
  %7487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7488 = getelementptr inbounds %struct.GPR, %struct.GPR* %7487, i32 0, i32 5
  %7489 = getelementptr inbounds %struct.Reg, %struct.Reg* %7488, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %7489 to i64*
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7491 = getelementptr inbounds %struct.GPR, %struct.GPR* %7490, i32 0, i32 15
  %7492 = getelementptr inbounds %struct.Reg, %struct.Reg* %7491, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %7492 to i64*
  %7493 = load i64, i64* %RBP.i313
  %7494 = sub i64 %7493, 16
  %7495 = load i64, i64* %PC.i311
  %7496 = add i64 %7495, 4
  store i64 %7496, i64* %PC.i311
  %7497 = inttoptr i64 %7494 to i64*
  %7498 = load i64, i64* %7497
  store i64 %7498, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_43e867, %struct.Memory** %MEMORY
  %loadMem_43e86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7500 = getelementptr inbounds %struct.GPR, %struct.GPR* %7499, i32 0, i32 33
  %7501 = getelementptr inbounds %struct.Reg, %struct.Reg* %7500, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %7501 to i64*
  %7502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7503 = getelementptr inbounds %struct.GPR, %struct.GPR* %7502, i32 0, i32 7
  %7504 = getelementptr inbounds %struct.Reg, %struct.Reg* %7503, i32 0, i32 0
  %RDX.i309 = bitcast %union.anon* %7504 to i64*
  %7505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7506 = getelementptr inbounds %struct.GPR, %struct.GPR* %7505, i32 0, i32 15
  %7507 = getelementptr inbounds %struct.Reg, %struct.Reg* %7506, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %7507 to i64*
  %7508 = load i64, i64* %RBP.i310
  %7509 = sub i64 %7508, 56
  %7510 = load i64, i64* %PC.i308
  %7511 = add i64 %7510, 4
  store i64 %7511, i64* %PC.i308
  %7512 = inttoptr i64 %7509 to i64*
  %7513 = load i64, i64* %7512
  store i64 %7513, i64* %RDX.i309, align 8
  store %struct.Memory* %loadMem_43e86b, %struct.Memory** %MEMORY
  %loadMem_43e86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7515 = getelementptr inbounds %struct.GPR, %struct.GPR* %7514, i32 0, i32 33
  %7516 = getelementptr inbounds %struct.Reg, %struct.Reg* %7515, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %7516 to i64*
  %7517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7518 = getelementptr inbounds %struct.GPR, %struct.GPR* %7517, i32 0, i32 1
  %7519 = getelementptr inbounds %struct.Reg, %struct.Reg* %7518, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %7519 to i64*
  %7520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7521 = getelementptr inbounds %struct.GPR, %struct.GPR* %7520, i32 0, i32 15
  %7522 = getelementptr inbounds %struct.Reg, %struct.Reg* %7521, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %7522 to i64*
  %7523 = load i64, i64* %RBP.i307
  %7524 = sub i64 %7523, 72
  %7525 = load i64, i64* %PC.i305
  %7526 = add i64 %7525, 3
  store i64 %7526, i64* %PC.i305
  %7527 = inttoptr i64 %7524 to i32*
  %7528 = load i32, i32* %7527
  %7529 = zext i32 %7528 to i64
  store i64 %7529, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_43e86f, %struct.Memory** %MEMORY
  %loadMem_43e872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7531 = getelementptr inbounds %struct.GPR, %struct.GPR* %7530, i32 0, i32 33
  %7532 = getelementptr inbounds %struct.Reg, %struct.Reg* %7531, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %7532 to i64*
  %7533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7534 = getelementptr inbounds %struct.GPR, %struct.GPR* %7533, i32 0, i32 1
  %7535 = getelementptr inbounds %struct.Reg, %struct.Reg* %7534, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %7535 to i64*
  %7536 = load i64, i64* %RAX.i304
  %7537 = load i64, i64* %PC.i303
  %7538 = add i64 %7537, 3
  store i64 %7538, i64* %PC.i303
  %7539 = trunc i64 %7536 to i32
  %7540 = sub i32 %7539, 1
  %7541 = zext i32 %7540 to i64
  store i64 %7541, i64* %RAX.i304, align 8
  %7542 = icmp ult i32 %7539, 1
  %7543 = zext i1 %7542 to i8
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7543, i8* %7544, align 1
  %7545 = and i32 %7540, 255
  %7546 = call i32 @llvm.ctpop.i32(i32 %7545)
  %7547 = trunc i32 %7546 to i8
  %7548 = and i8 %7547, 1
  %7549 = xor i8 %7548, 1
  %7550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7549, i8* %7550, align 1
  %7551 = xor i64 1, %7536
  %7552 = trunc i64 %7551 to i32
  %7553 = xor i32 %7552, %7540
  %7554 = lshr i32 %7553, 4
  %7555 = trunc i32 %7554 to i8
  %7556 = and i8 %7555, 1
  %7557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7556, i8* %7557, align 1
  %7558 = icmp eq i32 %7540, 0
  %7559 = zext i1 %7558 to i8
  %7560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7559, i8* %7560, align 1
  %7561 = lshr i32 %7540, 31
  %7562 = trunc i32 %7561 to i8
  %7563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7562, i8* %7563, align 1
  %7564 = lshr i32 %7539, 31
  %7565 = xor i32 %7561, %7564
  %7566 = add i32 %7565, %7564
  %7567 = icmp eq i32 %7566, 2
  %7568 = zext i1 %7567 to i8
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7568, i8* %7569, align 1
  store %struct.Memory* %loadMem_43e872, %struct.Memory** %MEMORY
  %loadMem_43e875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7571 = getelementptr inbounds %struct.GPR, %struct.GPR* %7570, i32 0, i32 33
  %7572 = getelementptr inbounds %struct.Reg, %struct.Reg* %7571, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %7572 to i64*
  %7573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7574 = getelementptr inbounds %struct.GPR, %struct.GPR* %7573, i32 0, i32 1
  %7575 = getelementptr inbounds %struct.Reg, %struct.Reg* %7574, i32 0, i32 0
  %EAX.i301 = bitcast %union.anon* %7575 to i32*
  %7576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7577 = getelementptr inbounds %struct.GPR, %struct.GPR* %7576, i32 0, i32 9
  %7578 = getelementptr inbounds %struct.Reg, %struct.Reg* %7577, i32 0, i32 0
  %RSI.i302 = bitcast %union.anon* %7578 to i64*
  %7579 = load i32, i32* %EAX.i301
  %7580 = zext i32 %7579 to i64
  %7581 = load i64, i64* %PC.i300
  %7582 = add i64 %7581, 3
  store i64 %7582, i64* %PC.i300
  %7583 = shl i64 %7580, 32
  %7584 = ashr exact i64 %7583, 32
  store i64 %7584, i64* %RSI.i302, align 8
  store %struct.Memory* %loadMem_43e875, %struct.Memory** %MEMORY
  %loadMem_43e878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7586 = getelementptr inbounds %struct.GPR, %struct.GPR* %7585, i32 0, i32 33
  %7587 = getelementptr inbounds %struct.Reg, %struct.Reg* %7586, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %7587 to i64*
  %7588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7589 = getelementptr inbounds %struct.GPR, %struct.GPR* %7588, i32 0, i32 7
  %7590 = getelementptr inbounds %struct.Reg, %struct.Reg* %7589, i32 0, i32 0
  %RDX.i298 = bitcast %union.anon* %7590 to i64*
  %7591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7592 = getelementptr inbounds %struct.GPR, %struct.GPR* %7591, i32 0, i32 9
  %7593 = getelementptr inbounds %struct.Reg, %struct.Reg* %7592, i32 0, i32 0
  %RSI.i299 = bitcast %union.anon* %7593 to i64*
  %7594 = load i64, i64* %RDX.i298
  %7595 = load i64, i64* %RSI.i299
  %7596 = mul i64 %7595, 4
  %7597 = add i64 %7596, %7594
  %7598 = load i64, i64* %PC.i297
  %7599 = add i64 %7598, 4
  store i64 %7599, i64* %PC.i297
  %7600 = inttoptr i64 %7597 to i32*
  %7601 = load i32, i32* %7600
  %7602 = sext i32 %7601 to i64
  store i64 %7602, i64* %RDX.i298, align 8
  store %struct.Memory* %loadMem_43e878, %struct.Memory** %MEMORY
  %loadMem_43e87c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7604 = getelementptr inbounds %struct.GPR, %struct.GPR* %7603, i32 0, i32 33
  %7605 = getelementptr inbounds %struct.Reg, %struct.Reg* %7604, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %7605 to i64*
  %7606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7607 = getelementptr inbounds %struct.GPR, %struct.GPR* %7606, i32 0, i32 11
  %7608 = getelementptr inbounds %struct.Reg, %struct.Reg* %7607, i32 0, i32 0
  %7609 = bitcast %union.anon* %7608 to %struct.anon.2*
  %DIL.i294 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7609, i32 0, i32 0
  %7610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7611 = getelementptr inbounds %struct.GPR, %struct.GPR* %7610, i32 0, i32 5
  %7612 = getelementptr inbounds %struct.Reg, %struct.Reg* %7611, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %7612 to i64*
  %7613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7614 = getelementptr inbounds %struct.GPR, %struct.GPR* %7613, i32 0, i32 7
  %7615 = getelementptr inbounds %struct.Reg, %struct.Reg* %7614, i32 0, i32 0
  %RDX.i296 = bitcast %union.anon* %7615 to i64*
  %7616 = load i64, i64* %RCX.i295
  %7617 = load i64, i64* %RDX.i296
  %7618 = add i64 %7617, %7616
  %7619 = load i8, i8* %DIL.i294
  %7620 = zext i8 %7619 to i64
  %7621 = load i64, i64* %PC.i293
  %7622 = add i64 %7621, 4
  store i64 %7622, i64* %PC.i293
  %7623 = inttoptr i64 %7618 to i8*
  store i8 %7619, i8* %7623
  store %struct.Memory* %loadMem_43e87c, %struct.Memory** %MEMORY
  %loadMem_43e880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7625 = getelementptr inbounds %struct.GPR, %struct.GPR* %7624, i32 0, i32 33
  %7626 = getelementptr inbounds %struct.Reg, %struct.Reg* %7625, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %7626 to i64*
  %7627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7628 = getelementptr inbounds %struct.GPR, %struct.GPR* %7627, i32 0, i32 1
  %7629 = getelementptr inbounds %struct.Reg, %struct.Reg* %7628, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %7629 to i64*
  %7630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7631 = getelementptr inbounds %struct.GPR, %struct.GPR* %7630, i32 0, i32 15
  %7632 = getelementptr inbounds %struct.Reg, %struct.Reg* %7631, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %7632 to i64*
  %7633 = load i64, i64* %RBP.i292
  %7634 = sub i64 %7633, 88
  %7635 = load i64, i64* %PC.i290
  %7636 = add i64 %7635, 3
  store i64 %7636, i64* %PC.i290
  %7637 = inttoptr i64 %7634 to i32*
  %7638 = load i32, i32* %7637
  %7639 = zext i32 %7638 to i64
  store i64 %7639, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_43e880, %struct.Memory** %MEMORY
  %loadMem_43e883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7641 = getelementptr inbounds %struct.GPR, %struct.GPR* %7640, i32 0, i32 33
  %7642 = getelementptr inbounds %struct.Reg, %struct.Reg* %7641, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %7642 to i64*
  %7643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7644 = getelementptr inbounds %struct.GPR, %struct.GPR* %7643, i32 0, i32 5
  %7645 = getelementptr inbounds %struct.Reg, %struct.Reg* %7644, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %7645 to i64*
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7647 = getelementptr inbounds %struct.GPR, %struct.GPR* %7646, i32 0, i32 15
  %7648 = getelementptr inbounds %struct.Reg, %struct.Reg* %7647, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %7648 to i64*
  %7649 = load i64, i64* %RBP.i289
  %7650 = sub i64 %7649, 56
  %7651 = load i64, i64* %PC.i287
  %7652 = add i64 %7651, 4
  store i64 %7652, i64* %PC.i287
  %7653 = inttoptr i64 %7650 to i64*
  %7654 = load i64, i64* %7653
  store i64 %7654, i64* %RCX.i288, align 8
  store %struct.Memory* %loadMem_43e883, %struct.Memory** %MEMORY
  %loadMem_43e887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7656 = getelementptr inbounds %struct.GPR, %struct.GPR* %7655, i32 0, i32 33
  %7657 = getelementptr inbounds %struct.Reg, %struct.Reg* %7656, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %7657 to i64*
  %7658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7659 = getelementptr inbounds %struct.GPR, %struct.GPR* %7658, i32 0, i32 17
  %7660 = getelementptr inbounds %struct.Reg, %struct.Reg* %7659, i32 0, i32 0
  %R8D.i285 = bitcast %union.anon* %7660 to i32*
  %7661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7662 = getelementptr inbounds %struct.GPR, %struct.GPR* %7661, i32 0, i32 15
  %7663 = getelementptr inbounds %struct.Reg, %struct.Reg* %7662, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %7663 to i64*
  %7664 = bitcast i32* %R8D.i285 to i64*
  %7665 = load i64, i64* %RBP.i286
  %7666 = sub i64 %7665, 72
  %7667 = load i64, i64* %PC.i284
  %7668 = add i64 %7667, 4
  store i64 %7668, i64* %PC.i284
  %7669 = inttoptr i64 %7666 to i32*
  %7670 = load i32, i32* %7669
  %7671 = zext i32 %7670 to i64
  store i64 %7671, i64* %7664, align 8
  store %struct.Memory* %loadMem_43e887, %struct.Memory** %MEMORY
  %loadMem_43e88b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7673 = getelementptr inbounds %struct.GPR, %struct.GPR* %7672, i32 0, i32 33
  %7674 = getelementptr inbounds %struct.Reg, %struct.Reg* %7673, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %7674 to i64*
  %7675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7676 = getelementptr inbounds %struct.GPR, %struct.GPR* %7675, i32 0, i32 17
  %7677 = getelementptr inbounds %struct.Reg, %struct.Reg* %7676, i32 0, i32 0
  %R8D.i283 = bitcast %union.anon* %7677 to i32*
  %7678 = bitcast i32* %R8D.i283 to i64*
  %7679 = load i32, i32* %R8D.i283
  %7680 = zext i32 %7679 to i64
  %7681 = load i64, i64* %PC.i282
  %7682 = add i64 %7681, 4
  store i64 %7682, i64* %PC.i282
  %7683 = sub i32 %7679, 1
  %7684 = zext i32 %7683 to i64
  store i64 %7684, i64* %7678, align 8
  %7685 = icmp ult i32 %7679, 1
  %7686 = zext i1 %7685 to i8
  %7687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7686, i8* %7687, align 1
  %7688 = and i32 %7683, 255
  %7689 = call i32 @llvm.ctpop.i32(i32 %7688)
  %7690 = trunc i32 %7689 to i8
  %7691 = and i8 %7690, 1
  %7692 = xor i8 %7691, 1
  %7693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7692, i8* %7693, align 1
  %7694 = xor i64 1, %7680
  %7695 = trunc i64 %7694 to i32
  %7696 = xor i32 %7695, %7683
  %7697 = lshr i32 %7696, 4
  %7698 = trunc i32 %7697 to i8
  %7699 = and i8 %7698, 1
  %7700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7699, i8* %7700, align 1
  %7701 = icmp eq i32 %7683, 0
  %7702 = zext i1 %7701 to i8
  %7703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7702, i8* %7703, align 1
  %7704 = lshr i32 %7683, 31
  %7705 = trunc i32 %7704 to i8
  %7706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7705, i8* %7706, align 1
  %7707 = lshr i32 %7679, 31
  %7708 = xor i32 %7704, %7707
  %7709 = add i32 %7708, %7707
  %7710 = icmp eq i32 %7709, 2
  %7711 = zext i1 %7710 to i8
  %7712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7711, i8* %7712, align 1
  store %struct.Memory* %loadMem_43e88b, %struct.Memory** %MEMORY
  %loadMem_43e88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7714 = getelementptr inbounds %struct.GPR, %struct.GPR* %7713, i32 0, i32 33
  %7715 = getelementptr inbounds %struct.Reg, %struct.Reg* %7714, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %7715 to i64*
  %7716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7717 = getelementptr inbounds %struct.GPR, %struct.GPR* %7716, i32 0, i32 17
  %7718 = getelementptr inbounds %struct.Reg, %struct.Reg* %7717, i32 0, i32 0
  %R8D.i280 = bitcast %union.anon* %7718 to i32*
  %7719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7720 = getelementptr inbounds %struct.GPR, %struct.GPR* %7719, i32 0, i32 7
  %7721 = getelementptr inbounds %struct.Reg, %struct.Reg* %7720, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %7721 to i64*
  %7722 = load i32, i32* %R8D.i280
  %7723 = zext i32 %7722 to i64
  %7724 = load i64, i64* %PC.i279
  %7725 = add i64 %7724, 3
  store i64 %7725, i64* %PC.i279
  %7726 = shl i64 %7723, 32
  %7727 = ashr exact i64 %7726, 32
  store i64 %7727, i64* %RDX.i281, align 8
  store %struct.Memory* %loadMem_43e88f, %struct.Memory** %MEMORY
  %loadMem_43e892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7729 = getelementptr inbounds %struct.GPR, %struct.GPR* %7728, i32 0, i32 33
  %7730 = getelementptr inbounds %struct.Reg, %struct.Reg* %7729, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %7730 to i64*
  %7731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7732 = getelementptr inbounds %struct.GPR, %struct.GPR* %7731, i32 0, i32 1
  %7733 = getelementptr inbounds %struct.Reg, %struct.Reg* %7732, i32 0, i32 0
  %EAX.i276 = bitcast %union.anon* %7733 to i32*
  %7734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7735 = getelementptr inbounds %struct.GPR, %struct.GPR* %7734, i32 0, i32 5
  %7736 = getelementptr inbounds %struct.Reg, %struct.Reg* %7735, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %7736 to i64*
  %7737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7738 = getelementptr inbounds %struct.GPR, %struct.GPR* %7737, i32 0, i32 7
  %7739 = getelementptr inbounds %struct.Reg, %struct.Reg* %7738, i32 0, i32 0
  %RDX.i278 = bitcast %union.anon* %7739 to i64*
  %7740 = load i64, i64* %RCX.i277
  %7741 = load i64, i64* %RDX.i278
  %7742 = mul i64 %7741, 4
  %7743 = add i64 %7742, %7740
  %7744 = load i32, i32* %EAX.i276
  %7745 = zext i32 %7744 to i64
  %7746 = load i64, i64* %PC.i275
  %7747 = add i64 %7746, 3
  store i64 %7747, i64* %PC.i275
  %7748 = inttoptr i64 %7743 to i32*
  store i32 %7744, i32* %7748
  store %struct.Memory* %loadMem_43e892, %struct.Memory** %MEMORY
  %loadMem_43e895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7750 = getelementptr inbounds %struct.GPR, %struct.GPR* %7749, i32 0, i32 33
  %7751 = getelementptr inbounds %struct.Reg, %struct.Reg* %7750, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %7751 to i64*
  %7752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7753 = getelementptr inbounds %struct.GPR, %struct.GPR* %7752, i32 0, i32 1
  %7754 = getelementptr inbounds %struct.Reg, %struct.Reg* %7753, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %7754 to i64*
  %7755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7756 = getelementptr inbounds %struct.GPR, %struct.GPR* %7755, i32 0, i32 15
  %7757 = getelementptr inbounds %struct.Reg, %struct.Reg* %7756, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %7757 to i64*
  %7758 = load i64, i64* %RBP.i274
  %7759 = sub i64 %7758, 72
  %7760 = load i64, i64* %PC.i272
  %7761 = add i64 %7760, 3
  store i64 %7761, i64* %PC.i272
  %7762 = inttoptr i64 %7759 to i32*
  %7763 = load i32, i32* %7762
  %7764 = zext i32 %7763 to i64
  store i64 %7764, i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_43e895, %struct.Memory** %MEMORY
  %loadMem_43e898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7766 = getelementptr inbounds %struct.GPR, %struct.GPR* %7765, i32 0, i32 33
  %7767 = getelementptr inbounds %struct.Reg, %struct.Reg* %7766, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %7767 to i64*
  %7768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7769 = getelementptr inbounds %struct.GPR, %struct.GPR* %7768, i32 0, i32 1
  %7770 = getelementptr inbounds %struct.Reg, %struct.Reg* %7769, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %7770 to i64*
  %7771 = load i64, i64* %RAX.i271
  %7772 = load i64, i64* %PC.i270
  %7773 = add i64 %7772, 3
  store i64 %7773, i64* %PC.i270
  %7774 = trunc i64 %7771 to i32
  %7775 = add i32 -1, %7774
  %7776 = zext i32 %7775 to i64
  store i64 %7776, i64* %RAX.i271, align 8
  %7777 = icmp ult i32 %7775, %7774
  %7778 = icmp ult i32 %7775, -1
  %7779 = or i1 %7777, %7778
  %7780 = zext i1 %7779 to i8
  %7781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7780, i8* %7781, align 1
  %7782 = and i32 %7775, 255
  %7783 = call i32 @llvm.ctpop.i32(i32 %7782)
  %7784 = trunc i32 %7783 to i8
  %7785 = and i8 %7784, 1
  %7786 = xor i8 %7785, 1
  %7787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7786, i8* %7787, align 1
  %7788 = xor i64 -1, %7771
  %7789 = trunc i64 %7788 to i32
  %7790 = xor i32 %7789, %7775
  %7791 = lshr i32 %7790, 4
  %7792 = trunc i32 %7791 to i8
  %7793 = and i8 %7792, 1
  %7794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7793, i8* %7794, align 1
  %7795 = icmp eq i32 %7775, 0
  %7796 = zext i1 %7795 to i8
  %7797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7796, i8* %7797, align 1
  %7798 = lshr i32 %7775, 31
  %7799 = trunc i32 %7798 to i8
  %7800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7799, i8* %7800, align 1
  %7801 = lshr i32 %7774, 31
  %7802 = xor i32 %7798, %7801
  %7803 = xor i32 %7798, 1
  %7804 = add i32 %7802, %7803
  %7805 = icmp eq i32 %7804, 2
  %7806 = zext i1 %7805 to i8
  %7807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7806, i8* %7807, align 1
  store %struct.Memory* %loadMem_43e898, %struct.Memory** %MEMORY
  %loadMem_43e89b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7809 = getelementptr inbounds %struct.GPR, %struct.GPR* %7808, i32 0, i32 33
  %7810 = getelementptr inbounds %struct.Reg, %struct.Reg* %7809, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %7810 to i64*
  %7811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7812 = getelementptr inbounds %struct.GPR, %struct.GPR* %7811, i32 0, i32 1
  %7813 = getelementptr inbounds %struct.Reg, %struct.Reg* %7812, i32 0, i32 0
  %EAX.i268 = bitcast %union.anon* %7813 to i32*
  %7814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7815 = getelementptr inbounds %struct.GPR, %struct.GPR* %7814, i32 0, i32 15
  %7816 = getelementptr inbounds %struct.Reg, %struct.Reg* %7815, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %7816 to i64*
  %7817 = load i64, i64* %RBP.i269
  %7818 = sub i64 %7817, 72
  %7819 = load i32, i32* %EAX.i268
  %7820 = zext i32 %7819 to i64
  %7821 = load i64, i64* %PC.i267
  %7822 = add i64 %7821, 3
  store i64 %7822, i64* %PC.i267
  %7823 = inttoptr i64 %7818 to i32*
  store i32 %7819, i32* %7823
  store %struct.Memory* %loadMem_43e89b, %struct.Memory** %MEMORY
  %loadMem_43e89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7825 = getelementptr inbounds %struct.GPR, %struct.GPR* %7824, i32 0, i32 33
  %7826 = getelementptr inbounds %struct.Reg, %struct.Reg* %7825, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %7826 to i64*
  %7827 = load i64, i64* %PC.i266
  %7828 = add i64 %7827, -298
  %7829 = load i64, i64* %PC.i266
  %7830 = add i64 %7829, 5
  store i64 %7830, i64* %PC.i266
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7828, i64* %7831, align 8
  store %struct.Memory* %loadMem_43e89e, %struct.Memory** %MEMORY
  br label %block_.L_43e774

block_.L_43e8a3:                                  ; preds = %block_.L_43e774
  %loadMem_43e8a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7833 = getelementptr inbounds %struct.GPR, %struct.GPR* %7832, i32 0, i32 33
  %7834 = getelementptr inbounds %struct.Reg, %struct.Reg* %7833, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %7834 to i64*
  %7835 = load i64, i64* %PC.i265
  %7836 = add i64 %7835, 5
  %7837 = load i64, i64* %PC.i265
  %7838 = add i64 %7837, 5
  store i64 %7838, i64* %PC.i265
  %7839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7836, i64* %7839, align 8
  store %struct.Memory* %loadMem_43e8a3, %struct.Memory** %MEMORY
  br label %block_.L_43e8a8

block_.L_43e8a8:                                  ; preds = %block_43e8b2, %block_.L_43e8a3
  %loadMem_43e8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7841 = getelementptr inbounds %struct.GPR, %struct.GPR* %7840, i32 0, i32 33
  %7842 = getelementptr inbounds %struct.Reg, %struct.Reg* %7841, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %7842 to i64*
  %7843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7844 = getelementptr inbounds %struct.GPR, %struct.GPR* %7843, i32 0, i32 15
  %7845 = getelementptr inbounds %struct.Reg, %struct.Reg* %7844, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %7845 to i64*
  %7846 = load i64, i64* %RBP.i264
  %7847 = sub i64 %7846, 76
  %7848 = load i64, i64* %PC.i263
  %7849 = add i64 %7848, 4
  store i64 %7849, i64* %PC.i263
  %7850 = inttoptr i64 %7847 to i32*
  %7851 = load i32, i32* %7850
  %7852 = sub i32 %7851, 1
  %7853 = icmp ult i32 %7851, 1
  %7854 = zext i1 %7853 to i8
  %7855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7854, i8* %7855, align 1
  %7856 = and i32 %7852, 255
  %7857 = call i32 @llvm.ctpop.i32(i32 %7856)
  %7858 = trunc i32 %7857 to i8
  %7859 = and i8 %7858, 1
  %7860 = xor i8 %7859, 1
  %7861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7860, i8* %7861, align 1
  %7862 = xor i32 %7851, 1
  %7863 = xor i32 %7862, %7852
  %7864 = lshr i32 %7863, 4
  %7865 = trunc i32 %7864 to i8
  %7866 = and i8 %7865, 1
  %7867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7866, i8* %7867, align 1
  %7868 = icmp eq i32 %7852, 0
  %7869 = zext i1 %7868 to i8
  %7870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7869, i8* %7870, align 1
  %7871 = lshr i32 %7852, 31
  %7872 = trunc i32 %7871 to i8
  %7873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7872, i8* %7873, align 1
  %7874 = lshr i32 %7851, 31
  %7875 = xor i32 %7871, %7874
  %7876 = add i32 %7875, %7874
  %7877 = icmp eq i32 %7876, 2
  %7878 = zext i1 %7877 to i8
  %7879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7878, i8* %7879, align 1
  store %struct.Memory* %loadMem_43e8a8, %struct.Memory** %MEMORY
  %loadMem_43e8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %7880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7881 = getelementptr inbounds %struct.GPR, %struct.GPR* %7880, i32 0, i32 33
  %7882 = getelementptr inbounds %struct.Reg, %struct.Reg* %7881, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %7882 to i64*
  %7883 = load i64, i64* %PC.i262
  %7884 = add i64 %7883, 299
  %7885 = load i64, i64* %PC.i262
  %7886 = add i64 %7885, 6
  %7887 = load i64, i64* %PC.i262
  %7888 = add i64 %7887, 6
  store i64 %7888, i64* %PC.i262
  %7889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7890 = load i8, i8* %7889, align 1
  %7891 = icmp ne i8 %7890, 0
  %7892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7893 = load i8, i8* %7892, align 1
  %7894 = icmp ne i8 %7893, 0
  %7895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7896 = load i8, i8* %7895, align 1
  %7897 = icmp ne i8 %7896, 0
  %7898 = xor i1 %7894, %7897
  %7899 = or i1 %7891, %7898
  %7900 = zext i1 %7899 to i8
  store i8 %7900, i8* %BRANCH_TAKEN, align 1
  %7901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7902 = select i1 %7899, i64 %7884, i64 %7886
  store i64 %7902, i64* %7901, align 8
  store %struct.Memory* %loadMem_43e8ac, %struct.Memory** %MEMORY
  %loadBr_43e8ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e8ac = icmp eq i8 %loadBr_43e8ac, 1
  br i1 %cmpBr_43e8ac, label %block_.L_43e9d7, label %block_43e8b2

block_43e8b2:                                     ; preds = %block_.L_43e8a8
  %loadMem1_43e8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7904 = getelementptr inbounds %struct.GPR, %struct.GPR* %7903, i32 0, i32 33
  %7905 = getelementptr inbounds %struct.Reg, %struct.Reg* %7904, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %7905 to i64*
  %7906 = load i64, i64* %PC.i261
  %7907 = add i64 %7906, 27470
  %7908 = load i64, i64* %PC.i261
  %7909 = add i64 %7908, 5
  %7910 = load i64, i64* %PC.i261
  %7911 = add i64 %7910, 5
  store i64 %7911, i64* %PC.i261
  %7912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7913 = load i64, i64* %7912, align 8
  %7914 = add i64 %7913, -8
  %7915 = inttoptr i64 %7914 to i64*
  store i64 %7909, i64* %7915
  store i64 %7914, i64* %7912, align 8
  %7916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7907, i64* %7916, align 8
  store %struct.Memory* %loadMem1_43e8b2, %struct.Memory** %MEMORY
  %loadMem2_43e8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e8b2 = load i64, i64* %3
  %call2_43e8b2 = call %struct.Memory* @sub_445400.sre_random(%struct.State* %0, i64 %loadPC_43e8b2, %struct.Memory* %loadMem2_43e8b2)
  store %struct.Memory* %call2_43e8b2, %struct.Memory** %MEMORY
  %loadMem_43e8b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7918 = getelementptr inbounds %struct.GPR, %struct.GPR* %7917, i32 0, i32 33
  %7919 = getelementptr inbounds %struct.Reg, %struct.Reg* %7918, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %7919 to i64*
  %7920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7921 = getelementptr inbounds %struct.GPR, %struct.GPR* %7920, i32 0, i32 15
  %7922 = getelementptr inbounds %struct.Reg, %struct.Reg* %7921, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %7922 to i64*
  %7923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7924 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7923, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %7924 to %"class.std::bitset"*
  %7925 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %7926 = load i64, i64* %RBP.i260
  %7927 = sub i64 %7926, 76
  %7928 = load i64, i64* %PC.i259
  %7929 = add i64 %7928, 5
  store i64 %7929, i64* %PC.i259
  %7930 = inttoptr i64 %7927 to i32*
  %7931 = load i32, i32* %7930
  %7932 = sitofp i32 %7931 to double
  %7933 = bitcast i8* %7925 to double*
  store double %7932, double* %7933, align 1
  store %struct.Memory* %loadMem_43e8b7, %struct.Memory** %MEMORY
  %loadMem_43e8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7935 = getelementptr inbounds %struct.GPR, %struct.GPR* %7934, i32 0, i32 33
  %7936 = getelementptr inbounds %struct.Reg, %struct.Reg* %7935, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %7936 to i64*
  %7937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7938 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7937, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %7938 to %"class.std::bitset"*
  %7939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7940 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7939, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %7940 to %union.vec128_t*
  %7941 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %7942 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %7943 = bitcast %union.vec128_t* %XMM1.i to i8*
  %7944 = load i64, i64* %PC.i258
  %7945 = add i64 %7944, 4
  store i64 %7945, i64* %PC.i258
  %7946 = bitcast i8* %7942 to double*
  %7947 = load double, double* %7946, align 1
  %7948 = getelementptr inbounds i8, i8* %7942, i64 8
  %7949 = bitcast i8* %7948 to i64*
  %7950 = load i64, i64* %7949, align 1
  %7951 = bitcast i8* %7943 to double*
  %7952 = load double, double* %7951, align 1
  %7953 = fmul double %7947, %7952
  %7954 = bitcast i8* %7941 to double*
  store double %7953, double* %7954, align 1
  %7955 = getelementptr inbounds i8, i8* %7941, i64 8
  %7956 = bitcast i8* %7955 to i64*
  store i64 %7950, i64* %7956, align 1
  store %struct.Memory* %loadMem_43e8bc, %struct.Memory** %MEMORY
  %loadMem_43e8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7958 = getelementptr inbounds %struct.GPR, %struct.GPR* %7957, i32 0, i32 33
  %7959 = getelementptr inbounds %struct.Reg, %struct.Reg* %7958, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %7959 to i64*
  %7960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7961 = getelementptr inbounds %struct.GPR, %struct.GPR* %7960, i32 0, i32 1
  %7962 = getelementptr inbounds %struct.Reg, %struct.Reg* %7961, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %7962 to i64*
  %7963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7964 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7963, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %7964 to %union.vec128_t*
  %7965 = bitcast %union.vec128_t* %XMM0.i to i8*
  %7966 = load i64, i64* %PC.i256
  %7967 = add i64 %7966, 4
  store i64 %7967, i64* %PC.i256
  %7968 = bitcast i8* %7965 to double*
  %7969 = load double, double* %7968, align 1
  %7970 = call double @llvm.trunc.f64(double %7969)
  %7971 = call double @llvm.fabs.f64(double %7970)
  %7972 = fcmp ogt double %7971, 0x41DFFFFFFFC00000
  %7973 = fptosi double %7970 to i32
  %7974 = zext i32 %7973 to i64
  %7975 = select i1 %7972, i64 2147483648, i64 %7974
  store i64 %7975, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_43e8c0, %struct.Memory** %MEMORY
  %loadMem_43e8c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7977 = getelementptr inbounds %struct.GPR, %struct.GPR* %7976, i32 0, i32 33
  %7978 = getelementptr inbounds %struct.Reg, %struct.Reg* %7977, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %7978 to i64*
  %7979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7980 = getelementptr inbounds %struct.GPR, %struct.GPR* %7979, i32 0, i32 1
  %7981 = getelementptr inbounds %struct.Reg, %struct.Reg* %7980, i32 0, i32 0
  %EAX.i254 = bitcast %union.anon* %7981 to i32*
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7983 = getelementptr inbounds %struct.GPR, %struct.GPR* %7982, i32 0, i32 15
  %7984 = getelementptr inbounds %struct.Reg, %struct.Reg* %7983, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %7984 to i64*
  %7985 = load i64, i64* %RBP.i255
  %7986 = sub i64 %7985, 84
  %7987 = load i32, i32* %EAX.i254
  %7988 = zext i32 %7987 to i64
  %7989 = load i64, i64* %PC.i253
  %7990 = add i64 %7989, 3
  store i64 %7990, i64* %PC.i253
  %7991 = inttoptr i64 %7986 to i32*
  store i32 %7987, i32* %7991
  store %struct.Memory* %loadMem_43e8c4, %struct.Memory** %MEMORY
  %loadMem_43e8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7993 = getelementptr inbounds %struct.GPR, %struct.GPR* %7992, i32 0, i32 33
  %7994 = getelementptr inbounds %struct.Reg, %struct.Reg* %7993, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %7994 to i64*
  %7995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7996 = getelementptr inbounds %struct.GPR, %struct.GPR* %7995, i32 0, i32 5
  %7997 = getelementptr inbounds %struct.Reg, %struct.Reg* %7996, i32 0, i32 0
  %RCX.i251 = bitcast %union.anon* %7997 to i64*
  %7998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7999 = getelementptr inbounds %struct.GPR, %struct.GPR* %7998, i32 0, i32 15
  %8000 = getelementptr inbounds %struct.Reg, %struct.Reg* %7999, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %8000 to i64*
  %8001 = load i64, i64* %RBP.i252
  %8002 = sub i64 %8001, 8
  %8003 = load i64, i64* %PC.i250
  %8004 = add i64 %8003, 4
  store i64 %8004, i64* %PC.i250
  %8005 = inttoptr i64 %8002 to i64*
  %8006 = load i64, i64* %8005
  store i64 %8006, i64* %RCX.i251, align 8
  store %struct.Memory* %loadMem_43e8c7, %struct.Memory** %MEMORY
  %loadMem_43e8cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8008 = getelementptr inbounds %struct.GPR, %struct.GPR* %8007, i32 0, i32 33
  %8009 = getelementptr inbounds %struct.Reg, %struct.Reg* %8008, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %8009 to i64*
  %8010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8011 = getelementptr inbounds %struct.GPR, %struct.GPR* %8010, i32 0, i32 7
  %8012 = getelementptr inbounds %struct.Reg, %struct.Reg* %8011, i32 0, i32 0
  %RDX.i248 = bitcast %union.anon* %8012 to i64*
  %8013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8014 = getelementptr inbounds %struct.GPR, %struct.GPR* %8013, i32 0, i32 15
  %8015 = getelementptr inbounds %struct.Reg, %struct.Reg* %8014, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %8015 to i64*
  %8016 = load i64, i64* %RBP.i249
  %8017 = sub i64 %8016, 64
  %8018 = load i64, i64* %PC.i247
  %8019 = add i64 %8018, 4
  store i64 %8019, i64* %PC.i247
  %8020 = inttoptr i64 %8017 to i64*
  %8021 = load i64, i64* %8020
  store i64 %8021, i64* %RDX.i248, align 8
  store %struct.Memory* %loadMem_43e8cb, %struct.Memory** %MEMORY
  %loadMem_43e8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8023 = getelementptr inbounds %struct.GPR, %struct.GPR* %8022, i32 0, i32 33
  %8024 = getelementptr inbounds %struct.Reg, %struct.Reg* %8023, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %8024 to i64*
  %8025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8026 = getelementptr inbounds %struct.GPR, %struct.GPR* %8025, i32 0, i32 9
  %8027 = getelementptr inbounds %struct.Reg, %struct.Reg* %8026, i32 0, i32 0
  %RSI.i245 = bitcast %union.anon* %8027 to i64*
  %8028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8029 = getelementptr inbounds %struct.GPR, %struct.GPR* %8028, i32 0, i32 15
  %8030 = getelementptr inbounds %struct.Reg, %struct.Reg* %8029, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %8030 to i64*
  %8031 = load i64, i64* %RBP.i246
  %8032 = sub i64 %8031, 84
  %8033 = load i64, i64* %PC.i244
  %8034 = add i64 %8033, 4
  store i64 %8034, i64* %PC.i244
  %8035 = inttoptr i64 %8032 to i32*
  %8036 = load i32, i32* %8035
  %8037 = sext i32 %8036 to i64
  store i64 %8037, i64* %RSI.i245, align 8
  store %struct.Memory* %loadMem_43e8cf, %struct.Memory** %MEMORY
  %loadMem_43e8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8039 = getelementptr inbounds %struct.GPR, %struct.GPR* %8038, i32 0, i32 33
  %8040 = getelementptr inbounds %struct.Reg, %struct.Reg* %8039, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %8040 to i64*
  %8041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8042 = getelementptr inbounds %struct.GPR, %struct.GPR* %8041, i32 0, i32 7
  %8043 = getelementptr inbounds %struct.Reg, %struct.Reg* %8042, i32 0, i32 0
  %RDX.i242 = bitcast %union.anon* %8043 to i64*
  %8044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8045 = getelementptr inbounds %struct.GPR, %struct.GPR* %8044, i32 0, i32 9
  %8046 = getelementptr inbounds %struct.Reg, %struct.Reg* %8045, i32 0, i32 0
  %RSI.i243 = bitcast %union.anon* %8046 to i64*
  %8047 = load i64, i64* %RDX.i242
  %8048 = load i64, i64* %RSI.i243
  %8049 = mul i64 %8048, 4
  %8050 = add i64 %8049, %8047
  %8051 = load i64, i64* %PC.i241
  %8052 = add i64 %8051, 4
  store i64 %8052, i64* %PC.i241
  %8053 = inttoptr i64 %8050 to i32*
  %8054 = load i32, i32* %8053
  %8055 = sext i32 %8054 to i64
  store i64 %8055, i64* %RDX.i242, align 8
  store %struct.Memory* %loadMem_43e8d3, %struct.Memory** %MEMORY
  %loadMem_43e8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8057 = getelementptr inbounds %struct.GPR, %struct.GPR* %8056, i32 0, i32 33
  %8058 = getelementptr inbounds %struct.Reg, %struct.Reg* %8057, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %8058 to i64*
  %8059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8060 = getelementptr inbounds %struct.GPR, %struct.GPR* %8059, i32 0, i32 11
  %8061 = getelementptr inbounds %struct.Reg, %struct.Reg* %8060, i32 0, i32 0
  %8062 = bitcast %union.anon* %8061 to %struct.anon.2*
  %DIL.i238 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8062, i32 0, i32 0
  %8063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8064 = getelementptr inbounds %struct.GPR, %struct.GPR* %8063, i32 0, i32 5
  %8065 = getelementptr inbounds %struct.Reg, %struct.Reg* %8064, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %8065 to i64*
  %8066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8067 = getelementptr inbounds %struct.GPR, %struct.GPR* %8066, i32 0, i32 7
  %8068 = getelementptr inbounds %struct.Reg, %struct.Reg* %8067, i32 0, i32 0
  %RDX.i240 = bitcast %union.anon* %8068 to i64*
  %8069 = load i64, i64* %RCX.i239
  %8070 = load i64, i64* %RDX.i240
  %8071 = add i64 %8070, %8069
  %8072 = load i64, i64* %PC.i237
  %8073 = add i64 %8072, 4
  store i64 %8073, i64* %PC.i237
  %8074 = inttoptr i64 %8071 to i8*
  %8075 = load i8, i8* %8074
  store i8 %8075, i8* %DIL.i238, align 1
  store %struct.Memory* %loadMem_43e8d7, %struct.Memory** %MEMORY
  %loadMem_43e8db = load %struct.Memory*, %struct.Memory** %MEMORY
  %8076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8077 = getelementptr inbounds %struct.GPR, %struct.GPR* %8076, i32 0, i32 33
  %8078 = getelementptr inbounds %struct.Reg, %struct.Reg* %8077, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %8078 to i64*
  %8079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8080 = getelementptr inbounds %struct.GPR, %struct.GPR* %8079, i32 0, i32 11
  %8081 = getelementptr inbounds %struct.Reg, %struct.Reg* %8080, i32 0, i32 0
  %8082 = bitcast %union.anon* %8081 to %struct.anon.2*
  %DIL.i235 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8082, i32 0, i32 0
  %8083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8084 = getelementptr inbounds %struct.GPR, %struct.GPR* %8083, i32 0, i32 15
  %8085 = getelementptr inbounds %struct.Reg, %struct.Reg* %8084, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %8085 to i64*
  %8086 = load i64, i64* %RBP.i236
  %8087 = sub i64 %8086, 89
  %8088 = load i8, i8* %DIL.i235
  %8089 = zext i8 %8088 to i64
  %8090 = load i64, i64* %PC.i234
  %8091 = add i64 %8090, 4
  store i64 %8091, i64* %PC.i234
  %8092 = inttoptr i64 %8087 to i8*
  store i8 %8088, i8* %8092
  store %struct.Memory* %loadMem_43e8db, %struct.Memory** %MEMORY
  %loadMem_43e8df = load %struct.Memory*, %struct.Memory** %MEMORY
  %8093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8094 = getelementptr inbounds %struct.GPR, %struct.GPR* %8093, i32 0, i32 33
  %8095 = getelementptr inbounds %struct.Reg, %struct.Reg* %8094, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %8095 to i64*
  %8096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8097 = getelementptr inbounds %struct.GPR, %struct.GPR* %8096, i32 0, i32 5
  %8098 = getelementptr inbounds %struct.Reg, %struct.Reg* %8097, i32 0, i32 0
  %RCX.i232 = bitcast %union.anon* %8098 to i64*
  %8099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8100 = getelementptr inbounds %struct.GPR, %struct.GPR* %8099, i32 0, i32 15
  %8101 = getelementptr inbounds %struct.Reg, %struct.Reg* %8100, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %8101 to i64*
  %8102 = load i64, i64* %RBP.i233
  %8103 = sub i64 %8102, 16
  %8104 = load i64, i64* %PC.i231
  %8105 = add i64 %8104, 4
  store i64 %8105, i64* %PC.i231
  %8106 = inttoptr i64 %8103 to i64*
  %8107 = load i64, i64* %8106
  store i64 %8107, i64* %RCX.i232, align 8
  store %struct.Memory* %loadMem_43e8df, %struct.Memory** %MEMORY
  %loadMem_43e8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8109 = getelementptr inbounds %struct.GPR, %struct.GPR* %8108, i32 0, i32 33
  %8110 = getelementptr inbounds %struct.Reg, %struct.Reg* %8109, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %8110 to i64*
  %8111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8112 = getelementptr inbounds %struct.GPR, %struct.GPR* %8111, i32 0, i32 7
  %8113 = getelementptr inbounds %struct.Reg, %struct.Reg* %8112, i32 0, i32 0
  %RDX.i229 = bitcast %union.anon* %8113 to i64*
  %8114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8115 = getelementptr inbounds %struct.GPR, %struct.GPR* %8114, i32 0, i32 15
  %8116 = getelementptr inbounds %struct.Reg, %struct.Reg* %8115, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %8116 to i64*
  %8117 = load i64, i64* %RBP.i230
  %8118 = sub i64 %8117, 64
  %8119 = load i64, i64* %PC.i228
  %8120 = add i64 %8119, 4
  store i64 %8120, i64* %PC.i228
  %8121 = inttoptr i64 %8118 to i64*
  %8122 = load i64, i64* %8121
  store i64 %8122, i64* %RDX.i229, align 8
  store %struct.Memory* %loadMem_43e8e3, %struct.Memory** %MEMORY
  %loadMem_43e8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8124 = getelementptr inbounds %struct.GPR, %struct.GPR* %8123, i32 0, i32 33
  %8125 = getelementptr inbounds %struct.Reg, %struct.Reg* %8124, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %8125 to i64*
  %8126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8127 = getelementptr inbounds %struct.GPR, %struct.GPR* %8126, i32 0, i32 9
  %8128 = getelementptr inbounds %struct.Reg, %struct.Reg* %8127, i32 0, i32 0
  %RSI.i226 = bitcast %union.anon* %8128 to i64*
  %8129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8130 = getelementptr inbounds %struct.GPR, %struct.GPR* %8129, i32 0, i32 15
  %8131 = getelementptr inbounds %struct.Reg, %struct.Reg* %8130, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %8131 to i64*
  %8132 = load i64, i64* %RBP.i227
  %8133 = sub i64 %8132, 84
  %8134 = load i64, i64* %PC.i225
  %8135 = add i64 %8134, 4
  store i64 %8135, i64* %PC.i225
  %8136 = inttoptr i64 %8133 to i32*
  %8137 = load i32, i32* %8136
  %8138 = sext i32 %8137 to i64
  store i64 %8138, i64* %RSI.i226, align 8
  store %struct.Memory* %loadMem_43e8e7, %struct.Memory** %MEMORY
  %loadMem_43e8eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8140 = getelementptr inbounds %struct.GPR, %struct.GPR* %8139, i32 0, i32 33
  %8141 = getelementptr inbounds %struct.Reg, %struct.Reg* %8140, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %8141 to i64*
  %8142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8143 = getelementptr inbounds %struct.GPR, %struct.GPR* %8142, i32 0, i32 7
  %8144 = getelementptr inbounds %struct.Reg, %struct.Reg* %8143, i32 0, i32 0
  %RDX.i223 = bitcast %union.anon* %8144 to i64*
  %8145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8146 = getelementptr inbounds %struct.GPR, %struct.GPR* %8145, i32 0, i32 9
  %8147 = getelementptr inbounds %struct.Reg, %struct.Reg* %8146, i32 0, i32 0
  %RSI.i224 = bitcast %union.anon* %8147 to i64*
  %8148 = load i64, i64* %RDX.i223
  %8149 = load i64, i64* %RSI.i224
  %8150 = mul i64 %8149, 4
  %8151 = add i64 %8150, %8148
  %8152 = load i64, i64* %PC.i222
  %8153 = add i64 %8152, 4
  store i64 %8153, i64* %PC.i222
  %8154 = inttoptr i64 %8151 to i32*
  %8155 = load i32, i32* %8154
  %8156 = sext i32 %8155 to i64
  store i64 %8156, i64* %RDX.i223, align 8
  store %struct.Memory* %loadMem_43e8eb, %struct.Memory** %MEMORY
  %loadMem_43e8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %8157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8158 = getelementptr inbounds %struct.GPR, %struct.GPR* %8157, i32 0, i32 33
  %8159 = getelementptr inbounds %struct.Reg, %struct.Reg* %8158, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %8159 to i64*
  %8160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8161 = getelementptr inbounds %struct.GPR, %struct.GPR* %8160, i32 0, i32 11
  %8162 = getelementptr inbounds %struct.Reg, %struct.Reg* %8161, i32 0, i32 0
  %8163 = bitcast %union.anon* %8162 to %struct.anon.2*
  %DIL.i219 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8163, i32 0, i32 0
  %8164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8165 = getelementptr inbounds %struct.GPR, %struct.GPR* %8164, i32 0, i32 5
  %8166 = getelementptr inbounds %struct.Reg, %struct.Reg* %8165, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %8166 to i64*
  %8167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8168 = getelementptr inbounds %struct.GPR, %struct.GPR* %8167, i32 0, i32 7
  %8169 = getelementptr inbounds %struct.Reg, %struct.Reg* %8168, i32 0, i32 0
  %RDX.i221 = bitcast %union.anon* %8169 to i64*
  %8170 = load i64, i64* %RCX.i220
  %8171 = load i64, i64* %RDX.i221
  %8172 = add i64 %8171, %8170
  %8173 = load i64, i64* %PC.i218
  %8174 = add i64 %8173, 4
  store i64 %8174, i64* %PC.i218
  %8175 = inttoptr i64 %8172 to i8*
  %8176 = load i8, i8* %8175
  store i8 %8176, i8* %DIL.i219, align 1
  store %struct.Memory* %loadMem_43e8ef, %struct.Memory** %MEMORY
  %loadMem_43e8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8178 = getelementptr inbounds %struct.GPR, %struct.GPR* %8177, i32 0, i32 33
  %8179 = getelementptr inbounds %struct.Reg, %struct.Reg* %8178, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %8179 to i64*
  %8180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8181 = getelementptr inbounds %struct.GPR, %struct.GPR* %8180, i32 0, i32 11
  %8182 = getelementptr inbounds %struct.Reg, %struct.Reg* %8181, i32 0, i32 0
  %8183 = bitcast %union.anon* %8182 to %struct.anon.2*
  %DIL.i216 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8183, i32 0, i32 0
  %8184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8185 = getelementptr inbounds %struct.GPR, %struct.GPR* %8184, i32 0, i32 15
  %8186 = getelementptr inbounds %struct.Reg, %struct.Reg* %8185, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %8186 to i64*
  %8187 = load i64, i64* %RBP.i217
  %8188 = sub i64 %8187, 90
  %8189 = load i8, i8* %DIL.i216
  %8190 = zext i8 %8189 to i64
  %8191 = load i64, i64* %PC.i215
  %8192 = add i64 %8191, 4
  store i64 %8192, i64* %PC.i215
  %8193 = inttoptr i64 %8188 to i8*
  store i8 %8189, i8* %8193
  store %struct.Memory* %loadMem_43e8f3, %struct.Memory** %MEMORY
  %loadMem_43e8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8195 = getelementptr inbounds %struct.GPR, %struct.GPR* %8194, i32 0, i32 33
  %8196 = getelementptr inbounds %struct.Reg, %struct.Reg* %8195, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %8196 to i64*
  %8197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8198 = getelementptr inbounds %struct.GPR, %struct.GPR* %8197, i32 0, i32 5
  %8199 = getelementptr inbounds %struct.Reg, %struct.Reg* %8198, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %8199 to i64*
  %8200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8201 = getelementptr inbounds %struct.GPR, %struct.GPR* %8200, i32 0, i32 15
  %8202 = getelementptr inbounds %struct.Reg, %struct.Reg* %8201, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %8202 to i64*
  %8203 = load i64, i64* %RBP.i214
  %8204 = sub i64 %8203, 64
  %8205 = load i64, i64* %PC.i212
  %8206 = add i64 %8205, 4
  store i64 %8206, i64* %PC.i212
  %8207 = inttoptr i64 %8204 to i64*
  %8208 = load i64, i64* %8207
  store i64 %8208, i64* %RCX.i213, align 8
  store %struct.Memory* %loadMem_43e8f7, %struct.Memory** %MEMORY
  %loadMem_43e8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8210 = getelementptr inbounds %struct.GPR, %struct.GPR* %8209, i32 0, i32 33
  %8211 = getelementptr inbounds %struct.Reg, %struct.Reg* %8210, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %8211 to i64*
  %8212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8213 = getelementptr inbounds %struct.GPR, %struct.GPR* %8212, i32 0, i32 7
  %8214 = getelementptr inbounds %struct.Reg, %struct.Reg* %8213, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %8214 to i64*
  %8215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8216 = getelementptr inbounds %struct.GPR, %struct.GPR* %8215, i32 0, i32 15
  %8217 = getelementptr inbounds %struct.Reg, %struct.Reg* %8216, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %8217 to i64*
  %8218 = load i64, i64* %RBP.i211
  %8219 = sub i64 %8218, 84
  %8220 = load i64, i64* %PC.i209
  %8221 = add i64 %8220, 4
  store i64 %8221, i64* %PC.i209
  %8222 = inttoptr i64 %8219 to i32*
  %8223 = load i32, i32* %8222
  %8224 = sext i32 %8223 to i64
  store i64 %8224, i64* %RDX.i210, align 8
  store %struct.Memory* %loadMem_43e8fb, %struct.Memory** %MEMORY
  %loadMem_43e8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %8225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8226 = getelementptr inbounds %struct.GPR, %struct.GPR* %8225, i32 0, i32 33
  %8227 = getelementptr inbounds %struct.Reg, %struct.Reg* %8226, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %8227 to i64*
  %8228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8229 = getelementptr inbounds %struct.GPR, %struct.GPR* %8228, i32 0, i32 1
  %8230 = getelementptr inbounds %struct.Reg, %struct.Reg* %8229, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %8230 to i64*
  %8231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8232 = getelementptr inbounds %struct.GPR, %struct.GPR* %8231, i32 0, i32 5
  %8233 = getelementptr inbounds %struct.Reg, %struct.Reg* %8232, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %8233 to i64*
  %8234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8235 = getelementptr inbounds %struct.GPR, %struct.GPR* %8234, i32 0, i32 7
  %8236 = getelementptr inbounds %struct.Reg, %struct.Reg* %8235, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %8236 to i64*
  %8237 = load i64, i64* %RCX.i207
  %8238 = load i64, i64* %RDX.i208
  %8239 = mul i64 %8238, 4
  %8240 = add i64 %8239, %8237
  %8241 = load i64, i64* %PC.i205
  %8242 = add i64 %8241, 3
  store i64 %8242, i64* %PC.i205
  %8243 = inttoptr i64 %8240 to i32*
  %8244 = load i32, i32* %8243
  %8245 = zext i32 %8244 to i64
  store i64 %8245, i64* %RAX.i206, align 8
  store %struct.Memory* %loadMem_43e8ff, %struct.Memory** %MEMORY
  %loadMem_43e902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8247 = getelementptr inbounds %struct.GPR, %struct.GPR* %8246, i32 0, i32 33
  %8248 = getelementptr inbounds %struct.Reg, %struct.Reg* %8247, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %8248 to i64*
  %8249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8250 = getelementptr inbounds %struct.GPR, %struct.GPR* %8249, i32 0, i32 1
  %8251 = getelementptr inbounds %struct.Reg, %struct.Reg* %8250, i32 0, i32 0
  %EAX.i203 = bitcast %union.anon* %8251 to i32*
  %8252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8253 = getelementptr inbounds %struct.GPR, %struct.GPR* %8252, i32 0, i32 15
  %8254 = getelementptr inbounds %struct.Reg, %struct.Reg* %8253, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %8254 to i64*
  %8255 = load i64, i64* %RBP.i204
  %8256 = sub i64 %8255, 88
  %8257 = load i32, i32* %EAX.i203
  %8258 = zext i32 %8257 to i64
  %8259 = load i64, i64* %PC.i202
  %8260 = add i64 %8259, 3
  store i64 %8260, i64* %PC.i202
  %8261 = inttoptr i64 %8256 to i32*
  store i32 %8257, i32* %8261
  store %struct.Memory* %loadMem_43e902, %struct.Memory** %MEMORY
  %loadMem_43e905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8263 = getelementptr inbounds %struct.GPR, %struct.GPR* %8262, i32 0, i32 33
  %8264 = getelementptr inbounds %struct.Reg, %struct.Reg* %8263, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %8264 to i64*
  %8265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8266 = getelementptr inbounds %struct.GPR, %struct.GPR* %8265, i32 0, i32 5
  %8267 = getelementptr inbounds %struct.Reg, %struct.Reg* %8266, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %8267 to i64*
  %8268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8269 = getelementptr inbounds %struct.GPR, %struct.GPR* %8268, i32 0, i32 15
  %8270 = getelementptr inbounds %struct.Reg, %struct.Reg* %8269, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %8270 to i64*
  %8271 = load i64, i64* %RBP.i201
  %8272 = sub i64 %8271, 8
  %8273 = load i64, i64* %PC.i199
  %8274 = add i64 %8273, 4
  store i64 %8274, i64* %PC.i199
  %8275 = inttoptr i64 %8272 to i64*
  %8276 = load i64, i64* %8275
  store i64 %8276, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_43e905, %struct.Memory** %MEMORY
  %loadMem_43e909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8278 = getelementptr inbounds %struct.GPR, %struct.GPR* %8277, i32 0, i32 33
  %8279 = getelementptr inbounds %struct.Reg, %struct.Reg* %8278, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %8279 to i64*
  %8280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8281 = getelementptr inbounds %struct.GPR, %struct.GPR* %8280, i32 0, i32 7
  %8282 = getelementptr inbounds %struct.Reg, %struct.Reg* %8281, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %8282 to i64*
  %8283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8284 = getelementptr inbounds %struct.GPR, %struct.GPR* %8283, i32 0, i32 15
  %8285 = getelementptr inbounds %struct.Reg, %struct.Reg* %8284, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %8285 to i64*
  %8286 = load i64, i64* %RBP.i198
  %8287 = sub i64 %8286, 64
  %8288 = load i64, i64* %PC.i196
  %8289 = add i64 %8288, 4
  store i64 %8289, i64* %PC.i196
  %8290 = inttoptr i64 %8287 to i64*
  %8291 = load i64, i64* %8290
  store i64 %8291, i64* %RDX.i197, align 8
  store %struct.Memory* %loadMem_43e909, %struct.Memory** %MEMORY
  %loadMem_43e90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8293 = getelementptr inbounds %struct.GPR, %struct.GPR* %8292, i32 0, i32 33
  %8294 = getelementptr inbounds %struct.Reg, %struct.Reg* %8293, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %8294 to i64*
  %8295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8296 = getelementptr inbounds %struct.GPR, %struct.GPR* %8295, i32 0, i32 1
  %8297 = getelementptr inbounds %struct.Reg, %struct.Reg* %8296, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %8297 to i64*
  %8298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8299 = getelementptr inbounds %struct.GPR, %struct.GPR* %8298, i32 0, i32 15
  %8300 = getelementptr inbounds %struct.Reg, %struct.Reg* %8299, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %8300 to i64*
  %8301 = load i64, i64* %RBP.i195
  %8302 = sub i64 %8301, 76
  %8303 = load i64, i64* %PC.i193
  %8304 = add i64 %8303, 3
  store i64 %8304, i64* %PC.i193
  %8305 = inttoptr i64 %8302 to i32*
  %8306 = load i32, i32* %8305
  %8307 = zext i32 %8306 to i64
  store i64 %8307, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_43e90d, %struct.Memory** %MEMORY
  %loadMem_43e910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8309 = getelementptr inbounds %struct.GPR, %struct.GPR* %8308, i32 0, i32 33
  %8310 = getelementptr inbounds %struct.Reg, %struct.Reg* %8309, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %8310 to i64*
  %8311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8312 = getelementptr inbounds %struct.GPR, %struct.GPR* %8311, i32 0, i32 1
  %8313 = getelementptr inbounds %struct.Reg, %struct.Reg* %8312, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %8313 to i64*
  %8314 = load i64, i64* %RAX.i192
  %8315 = load i64, i64* %PC.i191
  %8316 = add i64 %8315, 3
  store i64 %8316, i64* %PC.i191
  %8317 = trunc i64 %8314 to i32
  %8318 = sub i32 %8317, 1
  %8319 = zext i32 %8318 to i64
  store i64 %8319, i64* %RAX.i192, align 8
  %8320 = icmp ult i32 %8317, 1
  %8321 = zext i1 %8320 to i8
  %8322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8321, i8* %8322, align 1
  %8323 = and i32 %8318, 255
  %8324 = call i32 @llvm.ctpop.i32(i32 %8323)
  %8325 = trunc i32 %8324 to i8
  %8326 = and i8 %8325, 1
  %8327 = xor i8 %8326, 1
  %8328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8327, i8* %8328, align 1
  %8329 = xor i64 1, %8314
  %8330 = trunc i64 %8329 to i32
  %8331 = xor i32 %8330, %8318
  %8332 = lshr i32 %8331, 4
  %8333 = trunc i32 %8332 to i8
  %8334 = and i8 %8333, 1
  %8335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8334, i8* %8335, align 1
  %8336 = icmp eq i32 %8318, 0
  %8337 = zext i1 %8336 to i8
  %8338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8337, i8* %8338, align 1
  %8339 = lshr i32 %8318, 31
  %8340 = trunc i32 %8339 to i8
  %8341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8340, i8* %8341, align 1
  %8342 = lshr i32 %8317, 31
  %8343 = xor i32 %8339, %8342
  %8344 = add i32 %8343, %8342
  %8345 = icmp eq i32 %8344, 2
  %8346 = zext i1 %8345 to i8
  %8347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8346, i8* %8347, align 1
  store %struct.Memory* %loadMem_43e910, %struct.Memory** %MEMORY
  %loadMem_43e913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8349 = getelementptr inbounds %struct.GPR, %struct.GPR* %8348, i32 0, i32 33
  %8350 = getelementptr inbounds %struct.Reg, %struct.Reg* %8349, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %8350 to i64*
  %8351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8352 = getelementptr inbounds %struct.GPR, %struct.GPR* %8351, i32 0, i32 1
  %8353 = getelementptr inbounds %struct.Reg, %struct.Reg* %8352, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %8353 to i32*
  %8354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8355 = getelementptr inbounds %struct.GPR, %struct.GPR* %8354, i32 0, i32 9
  %8356 = getelementptr inbounds %struct.Reg, %struct.Reg* %8355, i32 0, i32 0
  %RSI.i190 = bitcast %union.anon* %8356 to i64*
  %8357 = load i32, i32* %EAX.i189
  %8358 = zext i32 %8357 to i64
  %8359 = load i64, i64* %PC.i188
  %8360 = add i64 %8359, 3
  store i64 %8360, i64* %PC.i188
  %8361 = shl i64 %8358, 32
  %8362 = ashr exact i64 %8361, 32
  store i64 %8362, i64* %RSI.i190, align 8
  store %struct.Memory* %loadMem_43e913, %struct.Memory** %MEMORY
  %loadMem_43e916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8364 = getelementptr inbounds %struct.GPR, %struct.GPR* %8363, i32 0, i32 33
  %8365 = getelementptr inbounds %struct.Reg, %struct.Reg* %8364, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %8365 to i64*
  %8366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8367 = getelementptr inbounds %struct.GPR, %struct.GPR* %8366, i32 0, i32 7
  %8368 = getelementptr inbounds %struct.Reg, %struct.Reg* %8367, i32 0, i32 0
  %RDX.i186 = bitcast %union.anon* %8368 to i64*
  %8369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8370 = getelementptr inbounds %struct.GPR, %struct.GPR* %8369, i32 0, i32 9
  %8371 = getelementptr inbounds %struct.Reg, %struct.Reg* %8370, i32 0, i32 0
  %RSI.i187 = bitcast %union.anon* %8371 to i64*
  %8372 = load i64, i64* %RDX.i186
  %8373 = load i64, i64* %RSI.i187
  %8374 = mul i64 %8373, 4
  %8375 = add i64 %8374, %8372
  %8376 = load i64, i64* %PC.i185
  %8377 = add i64 %8376, 4
  store i64 %8377, i64* %PC.i185
  %8378 = inttoptr i64 %8375 to i32*
  %8379 = load i32, i32* %8378
  %8380 = sext i32 %8379 to i64
  store i64 %8380, i64* %RDX.i186, align 8
  store %struct.Memory* %loadMem_43e916, %struct.Memory** %MEMORY
  %loadMem_43e91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8382 = getelementptr inbounds %struct.GPR, %struct.GPR* %8381, i32 0, i32 33
  %8383 = getelementptr inbounds %struct.Reg, %struct.Reg* %8382, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %8383 to i64*
  %8384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8385 = getelementptr inbounds %struct.GPR, %struct.GPR* %8384, i32 0, i32 11
  %8386 = getelementptr inbounds %struct.Reg, %struct.Reg* %8385, i32 0, i32 0
  %8387 = bitcast %union.anon* %8386 to %struct.anon.2*
  %DIL.i182 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8387, i32 0, i32 0
  %8388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8389 = getelementptr inbounds %struct.GPR, %struct.GPR* %8388, i32 0, i32 5
  %8390 = getelementptr inbounds %struct.Reg, %struct.Reg* %8389, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %8390 to i64*
  %8391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8392 = getelementptr inbounds %struct.GPR, %struct.GPR* %8391, i32 0, i32 7
  %8393 = getelementptr inbounds %struct.Reg, %struct.Reg* %8392, i32 0, i32 0
  %RDX.i184 = bitcast %union.anon* %8393 to i64*
  %8394 = load i64, i64* %RCX.i183
  %8395 = load i64, i64* %RDX.i184
  %8396 = add i64 %8395, %8394
  %8397 = load i64, i64* %PC.i181
  %8398 = add i64 %8397, 4
  store i64 %8398, i64* %PC.i181
  %8399 = inttoptr i64 %8396 to i8*
  %8400 = load i8, i8* %8399
  store i8 %8400, i8* %DIL.i182, align 1
  store %struct.Memory* %loadMem_43e91a, %struct.Memory** %MEMORY
  %loadMem_43e91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8402 = getelementptr inbounds %struct.GPR, %struct.GPR* %8401, i32 0, i32 33
  %8403 = getelementptr inbounds %struct.Reg, %struct.Reg* %8402, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %8403 to i64*
  %8404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8405 = getelementptr inbounds %struct.GPR, %struct.GPR* %8404, i32 0, i32 5
  %8406 = getelementptr inbounds %struct.Reg, %struct.Reg* %8405, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %8406 to i64*
  %8407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8408 = getelementptr inbounds %struct.GPR, %struct.GPR* %8407, i32 0, i32 15
  %8409 = getelementptr inbounds %struct.Reg, %struct.Reg* %8408, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %8409 to i64*
  %8410 = load i64, i64* %RBP.i180
  %8411 = sub i64 %8410, 8
  %8412 = load i64, i64* %PC.i178
  %8413 = add i64 %8412, 4
  store i64 %8413, i64* %PC.i178
  %8414 = inttoptr i64 %8411 to i64*
  %8415 = load i64, i64* %8414
  store i64 %8415, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_43e91e, %struct.Memory** %MEMORY
  %loadMem_43e922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8417 = getelementptr inbounds %struct.GPR, %struct.GPR* %8416, i32 0, i32 33
  %8418 = getelementptr inbounds %struct.Reg, %struct.Reg* %8417, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %8418 to i64*
  %8419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8420 = getelementptr inbounds %struct.GPR, %struct.GPR* %8419, i32 0, i32 7
  %8421 = getelementptr inbounds %struct.Reg, %struct.Reg* %8420, i32 0, i32 0
  %RDX.i176 = bitcast %union.anon* %8421 to i64*
  %8422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8423 = getelementptr inbounds %struct.GPR, %struct.GPR* %8422, i32 0, i32 15
  %8424 = getelementptr inbounds %struct.Reg, %struct.Reg* %8423, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %8424 to i64*
  %8425 = load i64, i64* %RBP.i177
  %8426 = sub i64 %8425, 64
  %8427 = load i64, i64* %PC.i175
  %8428 = add i64 %8427, 4
  store i64 %8428, i64* %PC.i175
  %8429 = inttoptr i64 %8426 to i64*
  %8430 = load i64, i64* %8429
  store i64 %8430, i64* %RDX.i176, align 8
  store %struct.Memory* %loadMem_43e922, %struct.Memory** %MEMORY
  %loadMem_43e926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8432 = getelementptr inbounds %struct.GPR, %struct.GPR* %8431, i32 0, i32 33
  %8433 = getelementptr inbounds %struct.Reg, %struct.Reg* %8432, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %8433 to i64*
  %8434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8435 = getelementptr inbounds %struct.GPR, %struct.GPR* %8434, i32 0, i32 9
  %8436 = getelementptr inbounds %struct.Reg, %struct.Reg* %8435, i32 0, i32 0
  %RSI.i173 = bitcast %union.anon* %8436 to i64*
  %8437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8438 = getelementptr inbounds %struct.GPR, %struct.GPR* %8437, i32 0, i32 15
  %8439 = getelementptr inbounds %struct.Reg, %struct.Reg* %8438, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %8439 to i64*
  %8440 = load i64, i64* %RBP.i174
  %8441 = sub i64 %8440, 84
  %8442 = load i64, i64* %PC.i172
  %8443 = add i64 %8442, 4
  store i64 %8443, i64* %PC.i172
  %8444 = inttoptr i64 %8441 to i32*
  %8445 = load i32, i32* %8444
  %8446 = sext i32 %8445 to i64
  store i64 %8446, i64* %RSI.i173, align 8
  store %struct.Memory* %loadMem_43e926, %struct.Memory** %MEMORY
  %loadMem_43e92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8448 = getelementptr inbounds %struct.GPR, %struct.GPR* %8447, i32 0, i32 33
  %8449 = getelementptr inbounds %struct.Reg, %struct.Reg* %8448, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %8449 to i64*
  %8450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8451 = getelementptr inbounds %struct.GPR, %struct.GPR* %8450, i32 0, i32 7
  %8452 = getelementptr inbounds %struct.Reg, %struct.Reg* %8451, i32 0, i32 0
  %RDX.i170 = bitcast %union.anon* %8452 to i64*
  %8453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8454 = getelementptr inbounds %struct.GPR, %struct.GPR* %8453, i32 0, i32 9
  %8455 = getelementptr inbounds %struct.Reg, %struct.Reg* %8454, i32 0, i32 0
  %RSI.i171 = bitcast %union.anon* %8455 to i64*
  %8456 = load i64, i64* %RDX.i170
  %8457 = load i64, i64* %RSI.i171
  %8458 = mul i64 %8457, 4
  %8459 = add i64 %8458, %8456
  %8460 = load i64, i64* %PC.i169
  %8461 = add i64 %8460, 4
  store i64 %8461, i64* %PC.i169
  %8462 = inttoptr i64 %8459 to i32*
  %8463 = load i32, i32* %8462
  %8464 = sext i32 %8463 to i64
  store i64 %8464, i64* %RDX.i170, align 8
  store %struct.Memory* %loadMem_43e92a, %struct.Memory** %MEMORY
  %loadMem_43e92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8466 = getelementptr inbounds %struct.GPR, %struct.GPR* %8465, i32 0, i32 33
  %8467 = getelementptr inbounds %struct.Reg, %struct.Reg* %8466, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %8467 to i64*
  %8468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8469 = getelementptr inbounds %struct.GPR, %struct.GPR* %8468, i32 0, i32 11
  %8470 = getelementptr inbounds %struct.Reg, %struct.Reg* %8469, i32 0, i32 0
  %8471 = bitcast %union.anon* %8470 to %struct.anon.2*
  %DIL.i166 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8471, i32 0, i32 0
  %8472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8473 = getelementptr inbounds %struct.GPR, %struct.GPR* %8472, i32 0, i32 5
  %8474 = getelementptr inbounds %struct.Reg, %struct.Reg* %8473, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %8474 to i64*
  %8475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8476 = getelementptr inbounds %struct.GPR, %struct.GPR* %8475, i32 0, i32 7
  %8477 = getelementptr inbounds %struct.Reg, %struct.Reg* %8476, i32 0, i32 0
  %RDX.i168 = bitcast %union.anon* %8477 to i64*
  %8478 = load i64, i64* %RCX.i167
  %8479 = load i64, i64* %RDX.i168
  %8480 = add i64 %8479, %8478
  %8481 = load i8, i8* %DIL.i166
  %8482 = zext i8 %8481 to i64
  %8483 = load i64, i64* %PC.i165
  %8484 = add i64 %8483, 4
  store i64 %8484, i64* %PC.i165
  %8485 = inttoptr i64 %8480 to i8*
  store i8 %8481, i8* %8485
  store %struct.Memory* %loadMem_43e92e, %struct.Memory** %MEMORY
  %loadMem_43e932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8487 = getelementptr inbounds %struct.GPR, %struct.GPR* %8486, i32 0, i32 33
  %8488 = getelementptr inbounds %struct.Reg, %struct.Reg* %8487, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %8488 to i64*
  %8489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8490 = getelementptr inbounds %struct.GPR, %struct.GPR* %8489, i32 0, i32 5
  %8491 = getelementptr inbounds %struct.Reg, %struct.Reg* %8490, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %8491 to i64*
  %8492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8493 = getelementptr inbounds %struct.GPR, %struct.GPR* %8492, i32 0, i32 15
  %8494 = getelementptr inbounds %struct.Reg, %struct.Reg* %8493, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %8494 to i64*
  %8495 = load i64, i64* %RBP.i164
  %8496 = sub i64 %8495, 16
  %8497 = load i64, i64* %PC.i162
  %8498 = add i64 %8497, 4
  store i64 %8498, i64* %PC.i162
  %8499 = inttoptr i64 %8496 to i64*
  %8500 = load i64, i64* %8499
  store i64 %8500, i64* %RCX.i163, align 8
  store %struct.Memory* %loadMem_43e932, %struct.Memory** %MEMORY
  %loadMem_43e936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8502 = getelementptr inbounds %struct.GPR, %struct.GPR* %8501, i32 0, i32 33
  %8503 = getelementptr inbounds %struct.Reg, %struct.Reg* %8502, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %8503 to i64*
  %8504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8505 = getelementptr inbounds %struct.GPR, %struct.GPR* %8504, i32 0, i32 7
  %8506 = getelementptr inbounds %struct.Reg, %struct.Reg* %8505, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %8506 to i64*
  %8507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8508 = getelementptr inbounds %struct.GPR, %struct.GPR* %8507, i32 0, i32 15
  %8509 = getelementptr inbounds %struct.Reg, %struct.Reg* %8508, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %8509 to i64*
  %8510 = load i64, i64* %RBP.i161
  %8511 = sub i64 %8510, 64
  %8512 = load i64, i64* %PC.i159
  %8513 = add i64 %8512, 4
  store i64 %8513, i64* %PC.i159
  %8514 = inttoptr i64 %8511 to i64*
  %8515 = load i64, i64* %8514
  store i64 %8515, i64* %RDX.i160, align 8
  store %struct.Memory* %loadMem_43e936, %struct.Memory** %MEMORY
  %loadMem_43e93a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8517 = getelementptr inbounds %struct.GPR, %struct.GPR* %8516, i32 0, i32 33
  %8518 = getelementptr inbounds %struct.Reg, %struct.Reg* %8517, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %8518 to i64*
  %8519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8520 = getelementptr inbounds %struct.GPR, %struct.GPR* %8519, i32 0, i32 1
  %8521 = getelementptr inbounds %struct.Reg, %struct.Reg* %8520, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %8521 to i64*
  %8522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8523 = getelementptr inbounds %struct.GPR, %struct.GPR* %8522, i32 0, i32 15
  %8524 = getelementptr inbounds %struct.Reg, %struct.Reg* %8523, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %8524 to i64*
  %8525 = load i64, i64* %RBP.i158
  %8526 = sub i64 %8525, 76
  %8527 = load i64, i64* %PC.i156
  %8528 = add i64 %8527, 3
  store i64 %8528, i64* %PC.i156
  %8529 = inttoptr i64 %8526 to i32*
  %8530 = load i32, i32* %8529
  %8531 = zext i32 %8530 to i64
  store i64 %8531, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_43e93a, %struct.Memory** %MEMORY
  %loadMem_43e93d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8533 = getelementptr inbounds %struct.GPR, %struct.GPR* %8532, i32 0, i32 33
  %8534 = getelementptr inbounds %struct.Reg, %struct.Reg* %8533, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %8534 to i64*
  %8535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8536 = getelementptr inbounds %struct.GPR, %struct.GPR* %8535, i32 0, i32 1
  %8537 = getelementptr inbounds %struct.Reg, %struct.Reg* %8536, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %8537 to i64*
  %8538 = load i64, i64* %RAX.i155
  %8539 = load i64, i64* %PC.i154
  %8540 = add i64 %8539, 3
  store i64 %8540, i64* %PC.i154
  %8541 = trunc i64 %8538 to i32
  %8542 = sub i32 %8541, 1
  %8543 = zext i32 %8542 to i64
  store i64 %8543, i64* %RAX.i155, align 8
  %8544 = icmp ult i32 %8541, 1
  %8545 = zext i1 %8544 to i8
  %8546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8545, i8* %8546, align 1
  %8547 = and i32 %8542, 255
  %8548 = call i32 @llvm.ctpop.i32(i32 %8547)
  %8549 = trunc i32 %8548 to i8
  %8550 = and i8 %8549, 1
  %8551 = xor i8 %8550, 1
  %8552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8551, i8* %8552, align 1
  %8553 = xor i64 1, %8538
  %8554 = trunc i64 %8553 to i32
  %8555 = xor i32 %8554, %8542
  %8556 = lshr i32 %8555, 4
  %8557 = trunc i32 %8556 to i8
  %8558 = and i8 %8557, 1
  %8559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8558, i8* %8559, align 1
  %8560 = icmp eq i32 %8542, 0
  %8561 = zext i1 %8560 to i8
  %8562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8561, i8* %8562, align 1
  %8563 = lshr i32 %8542, 31
  %8564 = trunc i32 %8563 to i8
  %8565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8564, i8* %8565, align 1
  %8566 = lshr i32 %8541, 31
  %8567 = xor i32 %8563, %8566
  %8568 = add i32 %8567, %8566
  %8569 = icmp eq i32 %8568, 2
  %8570 = zext i1 %8569 to i8
  %8571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8570, i8* %8571, align 1
  store %struct.Memory* %loadMem_43e93d, %struct.Memory** %MEMORY
  %loadMem_43e940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8573 = getelementptr inbounds %struct.GPR, %struct.GPR* %8572, i32 0, i32 33
  %8574 = getelementptr inbounds %struct.Reg, %struct.Reg* %8573, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %8574 to i64*
  %8575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8576 = getelementptr inbounds %struct.GPR, %struct.GPR* %8575, i32 0, i32 1
  %8577 = getelementptr inbounds %struct.Reg, %struct.Reg* %8576, i32 0, i32 0
  %EAX.i152 = bitcast %union.anon* %8577 to i32*
  %8578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8579 = getelementptr inbounds %struct.GPR, %struct.GPR* %8578, i32 0, i32 9
  %8580 = getelementptr inbounds %struct.Reg, %struct.Reg* %8579, i32 0, i32 0
  %RSI.i153 = bitcast %union.anon* %8580 to i64*
  %8581 = load i32, i32* %EAX.i152
  %8582 = zext i32 %8581 to i64
  %8583 = load i64, i64* %PC.i151
  %8584 = add i64 %8583, 3
  store i64 %8584, i64* %PC.i151
  %8585 = shl i64 %8582, 32
  %8586 = ashr exact i64 %8585, 32
  store i64 %8586, i64* %RSI.i153, align 8
  store %struct.Memory* %loadMem_43e940, %struct.Memory** %MEMORY
  %loadMem_43e943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8588 = getelementptr inbounds %struct.GPR, %struct.GPR* %8587, i32 0, i32 33
  %8589 = getelementptr inbounds %struct.Reg, %struct.Reg* %8588, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %8589 to i64*
  %8590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8591 = getelementptr inbounds %struct.GPR, %struct.GPR* %8590, i32 0, i32 7
  %8592 = getelementptr inbounds %struct.Reg, %struct.Reg* %8591, i32 0, i32 0
  %RDX.i149 = bitcast %union.anon* %8592 to i64*
  %8593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8594 = getelementptr inbounds %struct.GPR, %struct.GPR* %8593, i32 0, i32 9
  %8595 = getelementptr inbounds %struct.Reg, %struct.Reg* %8594, i32 0, i32 0
  %RSI.i150 = bitcast %union.anon* %8595 to i64*
  %8596 = load i64, i64* %RDX.i149
  %8597 = load i64, i64* %RSI.i150
  %8598 = mul i64 %8597, 4
  %8599 = add i64 %8598, %8596
  %8600 = load i64, i64* %PC.i148
  %8601 = add i64 %8600, 4
  store i64 %8601, i64* %PC.i148
  %8602 = inttoptr i64 %8599 to i32*
  %8603 = load i32, i32* %8602
  %8604 = sext i32 %8603 to i64
  store i64 %8604, i64* %RDX.i149, align 8
  store %struct.Memory* %loadMem_43e943, %struct.Memory** %MEMORY
  %loadMem_43e947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8606 = getelementptr inbounds %struct.GPR, %struct.GPR* %8605, i32 0, i32 33
  %8607 = getelementptr inbounds %struct.Reg, %struct.Reg* %8606, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %8607 to i64*
  %8608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8609 = getelementptr inbounds %struct.GPR, %struct.GPR* %8608, i32 0, i32 11
  %8610 = getelementptr inbounds %struct.Reg, %struct.Reg* %8609, i32 0, i32 0
  %8611 = bitcast %union.anon* %8610 to %struct.anon.2*
  %DIL.i145 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8611, i32 0, i32 0
  %8612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8613 = getelementptr inbounds %struct.GPR, %struct.GPR* %8612, i32 0, i32 5
  %8614 = getelementptr inbounds %struct.Reg, %struct.Reg* %8613, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %8614 to i64*
  %8615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8616 = getelementptr inbounds %struct.GPR, %struct.GPR* %8615, i32 0, i32 7
  %8617 = getelementptr inbounds %struct.Reg, %struct.Reg* %8616, i32 0, i32 0
  %RDX.i147 = bitcast %union.anon* %8617 to i64*
  %8618 = load i64, i64* %RCX.i146
  %8619 = load i64, i64* %RDX.i147
  %8620 = add i64 %8619, %8618
  %8621 = load i64, i64* %PC.i144
  %8622 = add i64 %8621, 4
  store i64 %8622, i64* %PC.i144
  %8623 = inttoptr i64 %8620 to i8*
  %8624 = load i8, i8* %8623
  store i8 %8624, i8* %DIL.i145, align 1
  store %struct.Memory* %loadMem_43e947, %struct.Memory** %MEMORY
  %loadMem_43e94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8626 = getelementptr inbounds %struct.GPR, %struct.GPR* %8625, i32 0, i32 33
  %8627 = getelementptr inbounds %struct.Reg, %struct.Reg* %8626, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %8627 to i64*
  %8628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8629 = getelementptr inbounds %struct.GPR, %struct.GPR* %8628, i32 0, i32 5
  %8630 = getelementptr inbounds %struct.Reg, %struct.Reg* %8629, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %8630 to i64*
  %8631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8632 = getelementptr inbounds %struct.GPR, %struct.GPR* %8631, i32 0, i32 15
  %8633 = getelementptr inbounds %struct.Reg, %struct.Reg* %8632, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %8633 to i64*
  %8634 = load i64, i64* %RBP.i143
  %8635 = sub i64 %8634, 16
  %8636 = load i64, i64* %PC.i141
  %8637 = add i64 %8636, 4
  store i64 %8637, i64* %PC.i141
  %8638 = inttoptr i64 %8635 to i64*
  %8639 = load i64, i64* %8638
  store i64 %8639, i64* %RCX.i142, align 8
  store %struct.Memory* %loadMem_43e94b, %struct.Memory** %MEMORY
  %loadMem_43e94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8641 = getelementptr inbounds %struct.GPR, %struct.GPR* %8640, i32 0, i32 33
  %8642 = getelementptr inbounds %struct.Reg, %struct.Reg* %8641, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %8642 to i64*
  %8643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8644 = getelementptr inbounds %struct.GPR, %struct.GPR* %8643, i32 0, i32 7
  %8645 = getelementptr inbounds %struct.Reg, %struct.Reg* %8644, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %8645 to i64*
  %8646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8647 = getelementptr inbounds %struct.GPR, %struct.GPR* %8646, i32 0, i32 15
  %8648 = getelementptr inbounds %struct.Reg, %struct.Reg* %8647, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %8648 to i64*
  %8649 = load i64, i64* %RBP.i140
  %8650 = sub i64 %8649, 64
  %8651 = load i64, i64* %PC.i138
  %8652 = add i64 %8651, 4
  store i64 %8652, i64* %PC.i138
  %8653 = inttoptr i64 %8650 to i64*
  %8654 = load i64, i64* %8653
  store i64 %8654, i64* %RDX.i139, align 8
  store %struct.Memory* %loadMem_43e94f, %struct.Memory** %MEMORY
  %loadMem_43e953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8656 = getelementptr inbounds %struct.GPR, %struct.GPR* %8655, i32 0, i32 33
  %8657 = getelementptr inbounds %struct.Reg, %struct.Reg* %8656, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %8657 to i64*
  %8658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8659 = getelementptr inbounds %struct.GPR, %struct.GPR* %8658, i32 0, i32 9
  %8660 = getelementptr inbounds %struct.Reg, %struct.Reg* %8659, i32 0, i32 0
  %RSI.i136 = bitcast %union.anon* %8660 to i64*
  %8661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8662 = getelementptr inbounds %struct.GPR, %struct.GPR* %8661, i32 0, i32 15
  %8663 = getelementptr inbounds %struct.Reg, %struct.Reg* %8662, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %8663 to i64*
  %8664 = load i64, i64* %RBP.i137
  %8665 = sub i64 %8664, 84
  %8666 = load i64, i64* %PC.i135
  %8667 = add i64 %8666, 4
  store i64 %8667, i64* %PC.i135
  %8668 = inttoptr i64 %8665 to i32*
  %8669 = load i32, i32* %8668
  %8670 = sext i32 %8669 to i64
  store i64 %8670, i64* %RSI.i136, align 8
  store %struct.Memory* %loadMem_43e953, %struct.Memory** %MEMORY
  %loadMem_43e957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8672 = getelementptr inbounds %struct.GPR, %struct.GPR* %8671, i32 0, i32 33
  %8673 = getelementptr inbounds %struct.Reg, %struct.Reg* %8672, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %8673 to i64*
  %8674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8675 = getelementptr inbounds %struct.GPR, %struct.GPR* %8674, i32 0, i32 7
  %8676 = getelementptr inbounds %struct.Reg, %struct.Reg* %8675, i32 0, i32 0
  %RDX.i133 = bitcast %union.anon* %8676 to i64*
  %8677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8678 = getelementptr inbounds %struct.GPR, %struct.GPR* %8677, i32 0, i32 9
  %8679 = getelementptr inbounds %struct.Reg, %struct.Reg* %8678, i32 0, i32 0
  %RSI.i134 = bitcast %union.anon* %8679 to i64*
  %8680 = load i64, i64* %RDX.i133
  %8681 = load i64, i64* %RSI.i134
  %8682 = mul i64 %8681, 4
  %8683 = add i64 %8682, %8680
  %8684 = load i64, i64* %PC.i132
  %8685 = add i64 %8684, 4
  store i64 %8685, i64* %PC.i132
  %8686 = inttoptr i64 %8683 to i32*
  %8687 = load i32, i32* %8686
  %8688 = sext i32 %8687 to i64
  store i64 %8688, i64* %RDX.i133, align 8
  store %struct.Memory* %loadMem_43e957, %struct.Memory** %MEMORY
  %loadMem_43e95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8690 = getelementptr inbounds %struct.GPR, %struct.GPR* %8689, i32 0, i32 33
  %8691 = getelementptr inbounds %struct.Reg, %struct.Reg* %8690, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %8691 to i64*
  %8692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8693 = getelementptr inbounds %struct.GPR, %struct.GPR* %8692, i32 0, i32 11
  %8694 = getelementptr inbounds %struct.Reg, %struct.Reg* %8693, i32 0, i32 0
  %8695 = bitcast %union.anon* %8694 to %struct.anon.2*
  %DIL.i129 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8695, i32 0, i32 0
  %8696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8697 = getelementptr inbounds %struct.GPR, %struct.GPR* %8696, i32 0, i32 5
  %8698 = getelementptr inbounds %struct.Reg, %struct.Reg* %8697, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %8698 to i64*
  %8699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8700 = getelementptr inbounds %struct.GPR, %struct.GPR* %8699, i32 0, i32 7
  %8701 = getelementptr inbounds %struct.Reg, %struct.Reg* %8700, i32 0, i32 0
  %RDX.i131 = bitcast %union.anon* %8701 to i64*
  %8702 = load i64, i64* %RCX.i130
  %8703 = load i64, i64* %RDX.i131
  %8704 = add i64 %8703, %8702
  %8705 = load i8, i8* %DIL.i129
  %8706 = zext i8 %8705 to i64
  %8707 = load i64, i64* %PC.i128
  %8708 = add i64 %8707, 4
  store i64 %8708, i64* %PC.i128
  %8709 = inttoptr i64 %8704 to i8*
  store i8 %8705, i8* %8709
  store %struct.Memory* %loadMem_43e95b, %struct.Memory** %MEMORY
  %loadMem_43e95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8711 = getelementptr inbounds %struct.GPR, %struct.GPR* %8710, i32 0, i32 33
  %8712 = getelementptr inbounds %struct.Reg, %struct.Reg* %8711, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %8712 to i64*
  %8713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8714 = getelementptr inbounds %struct.GPR, %struct.GPR* %8713, i32 0, i32 5
  %8715 = getelementptr inbounds %struct.Reg, %struct.Reg* %8714, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %8715 to i64*
  %8716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8717 = getelementptr inbounds %struct.GPR, %struct.GPR* %8716, i32 0, i32 15
  %8718 = getelementptr inbounds %struct.Reg, %struct.Reg* %8717, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %8718 to i64*
  %8719 = load i64, i64* %RBP.i127
  %8720 = sub i64 %8719, 64
  %8721 = load i64, i64* %PC.i125
  %8722 = add i64 %8721, 4
  store i64 %8722, i64* %PC.i125
  %8723 = inttoptr i64 %8720 to i64*
  %8724 = load i64, i64* %8723
  store i64 %8724, i64* %RCX.i126, align 8
  store %struct.Memory* %loadMem_43e95f, %struct.Memory** %MEMORY
  %loadMem_43e963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8726 = getelementptr inbounds %struct.GPR, %struct.GPR* %8725, i32 0, i32 33
  %8727 = getelementptr inbounds %struct.Reg, %struct.Reg* %8726, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %8727 to i64*
  %8728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8729 = getelementptr inbounds %struct.GPR, %struct.GPR* %8728, i32 0, i32 1
  %8730 = getelementptr inbounds %struct.Reg, %struct.Reg* %8729, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %8730 to i64*
  %8731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8732 = getelementptr inbounds %struct.GPR, %struct.GPR* %8731, i32 0, i32 15
  %8733 = getelementptr inbounds %struct.Reg, %struct.Reg* %8732, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %8733 to i64*
  %8734 = load i64, i64* %RBP.i124
  %8735 = sub i64 %8734, 76
  %8736 = load i64, i64* %PC.i122
  %8737 = add i64 %8736, 3
  store i64 %8737, i64* %PC.i122
  %8738 = inttoptr i64 %8735 to i32*
  %8739 = load i32, i32* %8738
  %8740 = zext i32 %8739 to i64
  store i64 %8740, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_43e963, %struct.Memory** %MEMORY
  %loadMem_43e966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8742 = getelementptr inbounds %struct.GPR, %struct.GPR* %8741, i32 0, i32 33
  %8743 = getelementptr inbounds %struct.Reg, %struct.Reg* %8742, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %8743 to i64*
  %8744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8745 = getelementptr inbounds %struct.GPR, %struct.GPR* %8744, i32 0, i32 1
  %8746 = getelementptr inbounds %struct.Reg, %struct.Reg* %8745, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %8746 to i64*
  %8747 = load i64, i64* %RAX.i121
  %8748 = load i64, i64* %PC.i120
  %8749 = add i64 %8748, 3
  store i64 %8749, i64* %PC.i120
  %8750 = trunc i64 %8747 to i32
  %8751 = sub i32 %8750, 1
  %8752 = zext i32 %8751 to i64
  store i64 %8752, i64* %RAX.i121, align 8
  %8753 = icmp ult i32 %8750, 1
  %8754 = zext i1 %8753 to i8
  %8755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8754, i8* %8755, align 1
  %8756 = and i32 %8751, 255
  %8757 = call i32 @llvm.ctpop.i32(i32 %8756)
  %8758 = trunc i32 %8757 to i8
  %8759 = and i8 %8758, 1
  %8760 = xor i8 %8759, 1
  %8761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8760, i8* %8761, align 1
  %8762 = xor i64 1, %8747
  %8763 = trunc i64 %8762 to i32
  %8764 = xor i32 %8763, %8751
  %8765 = lshr i32 %8764, 4
  %8766 = trunc i32 %8765 to i8
  %8767 = and i8 %8766, 1
  %8768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8767, i8* %8768, align 1
  %8769 = icmp eq i32 %8751, 0
  %8770 = zext i1 %8769 to i8
  %8771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8770, i8* %8771, align 1
  %8772 = lshr i32 %8751, 31
  %8773 = trunc i32 %8772 to i8
  %8774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8773, i8* %8774, align 1
  %8775 = lshr i32 %8750, 31
  %8776 = xor i32 %8772, %8775
  %8777 = add i32 %8776, %8775
  %8778 = icmp eq i32 %8777, 2
  %8779 = zext i1 %8778 to i8
  %8780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8779, i8* %8780, align 1
  store %struct.Memory* %loadMem_43e966, %struct.Memory** %MEMORY
  %loadMem_43e969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8782 = getelementptr inbounds %struct.GPR, %struct.GPR* %8781, i32 0, i32 33
  %8783 = getelementptr inbounds %struct.Reg, %struct.Reg* %8782, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %8783 to i64*
  %8784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8785 = getelementptr inbounds %struct.GPR, %struct.GPR* %8784, i32 0, i32 1
  %8786 = getelementptr inbounds %struct.Reg, %struct.Reg* %8785, i32 0, i32 0
  %EAX.i118 = bitcast %union.anon* %8786 to i32*
  %8787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8788 = getelementptr inbounds %struct.GPR, %struct.GPR* %8787, i32 0, i32 7
  %8789 = getelementptr inbounds %struct.Reg, %struct.Reg* %8788, i32 0, i32 0
  %RDX.i119 = bitcast %union.anon* %8789 to i64*
  %8790 = load i32, i32* %EAX.i118
  %8791 = zext i32 %8790 to i64
  %8792 = load i64, i64* %PC.i117
  %8793 = add i64 %8792, 3
  store i64 %8793, i64* %PC.i117
  %8794 = shl i64 %8791, 32
  %8795 = ashr exact i64 %8794, 32
  store i64 %8795, i64* %RDX.i119, align 8
  store %struct.Memory* %loadMem_43e969, %struct.Memory** %MEMORY
  %loadMem_43e96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8797 = getelementptr inbounds %struct.GPR, %struct.GPR* %8796, i32 0, i32 33
  %8798 = getelementptr inbounds %struct.Reg, %struct.Reg* %8797, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %8798 to i64*
  %8799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8800 = getelementptr inbounds %struct.GPR, %struct.GPR* %8799, i32 0, i32 1
  %8801 = getelementptr inbounds %struct.Reg, %struct.Reg* %8800, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %8801 to i64*
  %8802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8803 = getelementptr inbounds %struct.GPR, %struct.GPR* %8802, i32 0, i32 5
  %8804 = getelementptr inbounds %struct.Reg, %struct.Reg* %8803, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %8804 to i64*
  %8805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8806 = getelementptr inbounds %struct.GPR, %struct.GPR* %8805, i32 0, i32 7
  %8807 = getelementptr inbounds %struct.Reg, %struct.Reg* %8806, i32 0, i32 0
  %RDX.i116 = bitcast %union.anon* %8807 to i64*
  %8808 = load i64, i64* %RCX.i115
  %8809 = load i64, i64* %RDX.i116
  %8810 = mul i64 %8809, 4
  %8811 = add i64 %8810, %8808
  %8812 = load i64, i64* %PC.i113
  %8813 = add i64 %8812, 3
  store i64 %8813, i64* %PC.i113
  %8814 = inttoptr i64 %8811 to i32*
  %8815 = load i32, i32* %8814
  %8816 = zext i32 %8815 to i64
  store i64 %8816, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_43e96c, %struct.Memory** %MEMORY
  %loadMem_43e96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8818 = getelementptr inbounds %struct.GPR, %struct.GPR* %8817, i32 0, i32 33
  %8819 = getelementptr inbounds %struct.Reg, %struct.Reg* %8818, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %8819 to i64*
  %8820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8821 = getelementptr inbounds %struct.GPR, %struct.GPR* %8820, i32 0, i32 5
  %8822 = getelementptr inbounds %struct.Reg, %struct.Reg* %8821, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %8822 to i64*
  %8823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8824 = getelementptr inbounds %struct.GPR, %struct.GPR* %8823, i32 0, i32 15
  %8825 = getelementptr inbounds %struct.Reg, %struct.Reg* %8824, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %8825 to i64*
  %8826 = load i64, i64* %RBP.i112
  %8827 = sub i64 %8826, 64
  %8828 = load i64, i64* %PC.i110
  %8829 = add i64 %8828, 4
  store i64 %8829, i64* %PC.i110
  %8830 = inttoptr i64 %8827 to i64*
  %8831 = load i64, i64* %8830
  store i64 %8831, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_43e96f, %struct.Memory** %MEMORY
  %loadMem_43e973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8833 = getelementptr inbounds %struct.GPR, %struct.GPR* %8832, i32 0, i32 33
  %8834 = getelementptr inbounds %struct.Reg, %struct.Reg* %8833, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %8834 to i64*
  %8835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8836 = getelementptr inbounds %struct.GPR, %struct.GPR* %8835, i32 0, i32 7
  %8837 = getelementptr inbounds %struct.Reg, %struct.Reg* %8836, i32 0, i32 0
  %RDX.i108 = bitcast %union.anon* %8837 to i64*
  %8838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8839 = getelementptr inbounds %struct.GPR, %struct.GPR* %8838, i32 0, i32 15
  %8840 = getelementptr inbounds %struct.Reg, %struct.Reg* %8839, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %8840 to i64*
  %8841 = load i64, i64* %RBP.i109
  %8842 = sub i64 %8841, 84
  %8843 = load i64, i64* %PC.i107
  %8844 = add i64 %8843, 4
  store i64 %8844, i64* %PC.i107
  %8845 = inttoptr i64 %8842 to i32*
  %8846 = load i32, i32* %8845
  %8847 = sext i32 %8846 to i64
  store i64 %8847, i64* %RDX.i108, align 8
  store %struct.Memory* %loadMem_43e973, %struct.Memory** %MEMORY
  %loadMem_43e977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8849 = getelementptr inbounds %struct.GPR, %struct.GPR* %8848, i32 0, i32 33
  %8850 = getelementptr inbounds %struct.Reg, %struct.Reg* %8849, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %8850 to i64*
  %8851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8852 = getelementptr inbounds %struct.GPR, %struct.GPR* %8851, i32 0, i32 1
  %8853 = getelementptr inbounds %struct.Reg, %struct.Reg* %8852, i32 0, i32 0
  %EAX.i104 = bitcast %union.anon* %8853 to i32*
  %8854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8855 = getelementptr inbounds %struct.GPR, %struct.GPR* %8854, i32 0, i32 5
  %8856 = getelementptr inbounds %struct.Reg, %struct.Reg* %8855, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %8856 to i64*
  %8857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8858 = getelementptr inbounds %struct.GPR, %struct.GPR* %8857, i32 0, i32 7
  %8859 = getelementptr inbounds %struct.Reg, %struct.Reg* %8858, i32 0, i32 0
  %RDX.i106 = bitcast %union.anon* %8859 to i64*
  %8860 = load i64, i64* %RCX.i105
  %8861 = load i64, i64* %RDX.i106
  %8862 = mul i64 %8861, 4
  %8863 = add i64 %8862, %8860
  %8864 = load i32, i32* %EAX.i104
  %8865 = zext i32 %8864 to i64
  %8866 = load i64, i64* %PC.i103
  %8867 = add i64 %8866, 3
  store i64 %8867, i64* %PC.i103
  %8868 = inttoptr i64 %8863 to i32*
  store i32 %8864, i32* %8868
  store %struct.Memory* %loadMem_43e977, %struct.Memory** %MEMORY
  %loadMem_43e97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8870 = getelementptr inbounds %struct.GPR, %struct.GPR* %8869, i32 0, i32 33
  %8871 = getelementptr inbounds %struct.Reg, %struct.Reg* %8870, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %8871 to i64*
  %8872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8873 = getelementptr inbounds %struct.GPR, %struct.GPR* %8872, i32 0, i32 11
  %8874 = getelementptr inbounds %struct.Reg, %struct.Reg* %8873, i32 0, i32 0
  %8875 = bitcast %union.anon* %8874 to %struct.anon.2*
  %DIL.i101 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8875, i32 0, i32 0
  %8876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8877 = getelementptr inbounds %struct.GPR, %struct.GPR* %8876, i32 0, i32 15
  %8878 = getelementptr inbounds %struct.Reg, %struct.Reg* %8877, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %8878 to i64*
  %8879 = load i64, i64* %RBP.i102
  %8880 = sub i64 %8879, 89
  %8881 = load i64, i64* %PC.i100
  %8882 = add i64 %8881, 4
  store i64 %8882, i64* %PC.i100
  %8883 = inttoptr i64 %8880 to i8*
  %8884 = load i8, i8* %8883
  store i8 %8884, i8* %DIL.i101, align 1
  store %struct.Memory* %loadMem_43e97a, %struct.Memory** %MEMORY
  %loadMem_43e97e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8886 = getelementptr inbounds %struct.GPR, %struct.GPR* %8885, i32 0, i32 33
  %8887 = getelementptr inbounds %struct.Reg, %struct.Reg* %8886, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %8887 to i64*
  %8888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8889 = getelementptr inbounds %struct.GPR, %struct.GPR* %8888, i32 0, i32 5
  %8890 = getelementptr inbounds %struct.Reg, %struct.Reg* %8889, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %8890 to i64*
  %8891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8892 = getelementptr inbounds %struct.GPR, %struct.GPR* %8891, i32 0, i32 15
  %8893 = getelementptr inbounds %struct.Reg, %struct.Reg* %8892, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %8893 to i64*
  %8894 = load i64, i64* %RBP.i99
  %8895 = sub i64 %8894, 8
  %8896 = load i64, i64* %PC.i97
  %8897 = add i64 %8896, 4
  store i64 %8897, i64* %PC.i97
  %8898 = inttoptr i64 %8895 to i64*
  %8899 = load i64, i64* %8898
  store i64 %8899, i64* %RCX.i98, align 8
  store %struct.Memory* %loadMem_43e97e, %struct.Memory** %MEMORY
  %loadMem_43e982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8901 = getelementptr inbounds %struct.GPR, %struct.GPR* %8900, i32 0, i32 33
  %8902 = getelementptr inbounds %struct.Reg, %struct.Reg* %8901, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %8902 to i64*
  %8903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8904 = getelementptr inbounds %struct.GPR, %struct.GPR* %8903, i32 0, i32 7
  %8905 = getelementptr inbounds %struct.Reg, %struct.Reg* %8904, i32 0, i32 0
  %RDX.i95 = bitcast %union.anon* %8905 to i64*
  %8906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8907 = getelementptr inbounds %struct.GPR, %struct.GPR* %8906, i32 0, i32 15
  %8908 = getelementptr inbounds %struct.Reg, %struct.Reg* %8907, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %8908 to i64*
  %8909 = load i64, i64* %RBP.i96
  %8910 = sub i64 %8909, 64
  %8911 = load i64, i64* %PC.i94
  %8912 = add i64 %8911, 4
  store i64 %8912, i64* %PC.i94
  %8913 = inttoptr i64 %8910 to i64*
  %8914 = load i64, i64* %8913
  store i64 %8914, i64* %RDX.i95, align 8
  store %struct.Memory* %loadMem_43e982, %struct.Memory** %MEMORY
  %loadMem_43e986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8916 = getelementptr inbounds %struct.GPR, %struct.GPR* %8915, i32 0, i32 33
  %8917 = getelementptr inbounds %struct.Reg, %struct.Reg* %8916, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %8917 to i64*
  %8918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8919 = getelementptr inbounds %struct.GPR, %struct.GPR* %8918, i32 0, i32 1
  %8920 = getelementptr inbounds %struct.Reg, %struct.Reg* %8919, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %8920 to i64*
  %8921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8922 = getelementptr inbounds %struct.GPR, %struct.GPR* %8921, i32 0, i32 15
  %8923 = getelementptr inbounds %struct.Reg, %struct.Reg* %8922, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %8923 to i64*
  %8924 = load i64, i64* %RBP.i93
  %8925 = sub i64 %8924, 76
  %8926 = load i64, i64* %PC.i91
  %8927 = add i64 %8926, 3
  store i64 %8927, i64* %PC.i91
  %8928 = inttoptr i64 %8925 to i32*
  %8929 = load i32, i32* %8928
  %8930 = zext i32 %8929 to i64
  store i64 %8930, i64* %RAX.i92, align 8
  store %struct.Memory* %loadMem_43e986, %struct.Memory** %MEMORY
  %loadMem_43e989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8932 = getelementptr inbounds %struct.GPR, %struct.GPR* %8931, i32 0, i32 33
  %8933 = getelementptr inbounds %struct.Reg, %struct.Reg* %8932, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %8933 to i64*
  %8934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8935 = getelementptr inbounds %struct.GPR, %struct.GPR* %8934, i32 0, i32 1
  %8936 = getelementptr inbounds %struct.Reg, %struct.Reg* %8935, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %8936 to i64*
  %8937 = load i64, i64* %RAX.i90
  %8938 = load i64, i64* %PC.i89
  %8939 = add i64 %8938, 3
  store i64 %8939, i64* %PC.i89
  %8940 = trunc i64 %8937 to i32
  %8941 = sub i32 %8940, 1
  %8942 = zext i32 %8941 to i64
  store i64 %8942, i64* %RAX.i90, align 8
  %8943 = icmp ult i32 %8940, 1
  %8944 = zext i1 %8943 to i8
  %8945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8944, i8* %8945, align 1
  %8946 = and i32 %8941, 255
  %8947 = call i32 @llvm.ctpop.i32(i32 %8946)
  %8948 = trunc i32 %8947 to i8
  %8949 = and i8 %8948, 1
  %8950 = xor i8 %8949, 1
  %8951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8950, i8* %8951, align 1
  %8952 = xor i64 1, %8937
  %8953 = trunc i64 %8952 to i32
  %8954 = xor i32 %8953, %8941
  %8955 = lshr i32 %8954, 4
  %8956 = trunc i32 %8955 to i8
  %8957 = and i8 %8956, 1
  %8958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8957, i8* %8958, align 1
  %8959 = icmp eq i32 %8941, 0
  %8960 = zext i1 %8959 to i8
  %8961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8960, i8* %8961, align 1
  %8962 = lshr i32 %8941, 31
  %8963 = trunc i32 %8962 to i8
  %8964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8963, i8* %8964, align 1
  %8965 = lshr i32 %8940, 31
  %8966 = xor i32 %8962, %8965
  %8967 = add i32 %8966, %8965
  %8968 = icmp eq i32 %8967, 2
  %8969 = zext i1 %8968 to i8
  %8970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8969, i8* %8970, align 1
  store %struct.Memory* %loadMem_43e989, %struct.Memory** %MEMORY
  %loadMem_43e98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8972 = getelementptr inbounds %struct.GPR, %struct.GPR* %8971, i32 0, i32 33
  %8973 = getelementptr inbounds %struct.Reg, %struct.Reg* %8972, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %8973 to i64*
  %8974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8975 = getelementptr inbounds %struct.GPR, %struct.GPR* %8974, i32 0, i32 1
  %8976 = getelementptr inbounds %struct.Reg, %struct.Reg* %8975, i32 0, i32 0
  %EAX.i87 = bitcast %union.anon* %8976 to i32*
  %8977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8978 = getelementptr inbounds %struct.GPR, %struct.GPR* %8977, i32 0, i32 9
  %8979 = getelementptr inbounds %struct.Reg, %struct.Reg* %8978, i32 0, i32 0
  %RSI.i88 = bitcast %union.anon* %8979 to i64*
  %8980 = load i32, i32* %EAX.i87
  %8981 = zext i32 %8980 to i64
  %8982 = load i64, i64* %PC.i86
  %8983 = add i64 %8982, 3
  store i64 %8983, i64* %PC.i86
  %8984 = shl i64 %8981, 32
  %8985 = ashr exact i64 %8984, 32
  store i64 %8985, i64* %RSI.i88, align 8
  store %struct.Memory* %loadMem_43e98c, %struct.Memory** %MEMORY
  %loadMem_43e98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8987 = getelementptr inbounds %struct.GPR, %struct.GPR* %8986, i32 0, i32 33
  %8988 = getelementptr inbounds %struct.Reg, %struct.Reg* %8987, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %8988 to i64*
  %8989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8990 = getelementptr inbounds %struct.GPR, %struct.GPR* %8989, i32 0, i32 7
  %8991 = getelementptr inbounds %struct.Reg, %struct.Reg* %8990, i32 0, i32 0
  %RDX.i84 = bitcast %union.anon* %8991 to i64*
  %8992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8993 = getelementptr inbounds %struct.GPR, %struct.GPR* %8992, i32 0, i32 9
  %8994 = getelementptr inbounds %struct.Reg, %struct.Reg* %8993, i32 0, i32 0
  %RSI.i85 = bitcast %union.anon* %8994 to i64*
  %8995 = load i64, i64* %RDX.i84
  %8996 = load i64, i64* %RSI.i85
  %8997 = mul i64 %8996, 4
  %8998 = add i64 %8997, %8995
  %8999 = load i64, i64* %PC.i83
  %9000 = add i64 %8999, 4
  store i64 %9000, i64* %PC.i83
  %9001 = inttoptr i64 %8998 to i32*
  %9002 = load i32, i32* %9001
  %9003 = sext i32 %9002 to i64
  store i64 %9003, i64* %RDX.i84, align 8
  store %struct.Memory* %loadMem_43e98f, %struct.Memory** %MEMORY
  %loadMem_43e993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9005 = getelementptr inbounds %struct.GPR, %struct.GPR* %9004, i32 0, i32 33
  %9006 = getelementptr inbounds %struct.Reg, %struct.Reg* %9005, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %9006 to i64*
  %9007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9008 = getelementptr inbounds %struct.GPR, %struct.GPR* %9007, i32 0, i32 11
  %9009 = getelementptr inbounds %struct.Reg, %struct.Reg* %9008, i32 0, i32 0
  %9010 = bitcast %union.anon* %9009 to %struct.anon.2*
  %DIL.i80 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9010, i32 0, i32 0
  %9011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9012 = getelementptr inbounds %struct.GPR, %struct.GPR* %9011, i32 0, i32 5
  %9013 = getelementptr inbounds %struct.Reg, %struct.Reg* %9012, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %9013 to i64*
  %9014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9015 = getelementptr inbounds %struct.GPR, %struct.GPR* %9014, i32 0, i32 7
  %9016 = getelementptr inbounds %struct.Reg, %struct.Reg* %9015, i32 0, i32 0
  %RDX.i82 = bitcast %union.anon* %9016 to i64*
  %9017 = load i64, i64* %RCX.i81
  %9018 = load i64, i64* %RDX.i82
  %9019 = add i64 %9018, %9017
  %9020 = load i8, i8* %DIL.i80
  %9021 = zext i8 %9020 to i64
  %9022 = load i64, i64* %PC.i79
  %9023 = add i64 %9022, 4
  store i64 %9023, i64* %PC.i79
  %9024 = inttoptr i64 %9019 to i8*
  store i8 %9020, i8* %9024
  store %struct.Memory* %loadMem_43e993, %struct.Memory** %MEMORY
  %loadMem_43e997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9026 = getelementptr inbounds %struct.GPR, %struct.GPR* %9025, i32 0, i32 33
  %9027 = getelementptr inbounds %struct.Reg, %struct.Reg* %9026, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %9027 to i64*
  %9028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9029 = getelementptr inbounds %struct.GPR, %struct.GPR* %9028, i32 0, i32 11
  %9030 = getelementptr inbounds %struct.Reg, %struct.Reg* %9029, i32 0, i32 0
  %9031 = bitcast %union.anon* %9030 to %struct.anon.2*
  %DIL.i77 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9031, i32 0, i32 0
  %9032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9033 = getelementptr inbounds %struct.GPR, %struct.GPR* %9032, i32 0, i32 15
  %9034 = getelementptr inbounds %struct.Reg, %struct.Reg* %9033, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %9034 to i64*
  %9035 = load i64, i64* %RBP.i78
  %9036 = sub i64 %9035, 90
  %9037 = load i64, i64* %PC.i76
  %9038 = add i64 %9037, 4
  store i64 %9038, i64* %PC.i76
  %9039 = inttoptr i64 %9036 to i8*
  %9040 = load i8, i8* %9039
  store i8 %9040, i8* %DIL.i77, align 1
  store %struct.Memory* %loadMem_43e997, %struct.Memory** %MEMORY
  %loadMem_43e99b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9042 = getelementptr inbounds %struct.GPR, %struct.GPR* %9041, i32 0, i32 33
  %9043 = getelementptr inbounds %struct.Reg, %struct.Reg* %9042, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %9043 to i64*
  %9044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9045 = getelementptr inbounds %struct.GPR, %struct.GPR* %9044, i32 0, i32 5
  %9046 = getelementptr inbounds %struct.Reg, %struct.Reg* %9045, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %9046 to i64*
  %9047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9048 = getelementptr inbounds %struct.GPR, %struct.GPR* %9047, i32 0, i32 15
  %9049 = getelementptr inbounds %struct.Reg, %struct.Reg* %9048, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %9049 to i64*
  %9050 = load i64, i64* %RBP.i75
  %9051 = sub i64 %9050, 16
  %9052 = load i64, i64* %PC.i73
  %9053 = add i64 %9052, 4
  store i64 %9053, i64* %PC.i73
  %9054 = inttoptr i64 %9051 to i64*
  %9055 = load i64, i64* %9054
  store i64 %9055, i64* %RCX.i74, align 8
  store %struct.Memory* %loadMem_43e99b, %struct.Memory** %MEMORY
  %loadMem_43e99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9057 = getelementptr inbounds %struct.GPR, %struct.GPR* %9056, i32 0, i32 33
  %9058 = getelementptr inbounds %struct.Reg, %struct.Reg* %9057, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %9058 to i64*
  %9059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9060 = getelementptr inbounds %struct.GPR, %struct.GPR* %9059, i32 0, i32 7
  %9061 = getelementptr inbounds %struct.Reg, %struct.Reg* %9060, i32 0, i32 0
  %RDX.i71 = bitcast %union.anon* %9061 to i64*
  %9062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9063 = getelementptr inbounds %struct.GPR, %struct.GPR* %9062, i32 0, i32 15
  %9064 = getelementptr inbounds %struct.Reg, %struct.Reg* %9063, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %9064 to i64*
  %9065 = load i64, i64* %RBP.i72
  %9066 = sub i64 %9065, 64
  %9067 = load i64, i64* %PC.i70
  %9068 = add i64 %9067, 4
  store i64 %9068, i64* %PC.i70
  %9069 = inttoptr i64 %9066 to i64*
  %9070 = load i64, i64* %9069
  store i64 %9070, i64* %RDX.i71, align 8
  store %struct.Memory* %loadMem_43e99f, %struct.Memory** %MEMORY
  %loadMem_43e9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9072 = getelementptr inbounds %struct.GPR, %struct.GPR* %9071, i32 0, i32 33
  %9073 = getelementptr inbounds %struct.Reg, %struct.Reg* %9072, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %9073 to i64*
  %9074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9075 = getelementptr inbounds %struct.GPR, %struct.GPR* %9074, i32 0, i32 1
  %9076 = getelementptr inbounds %struct.Reg, %struct.Reg* %9075, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %9076 to i64*
  %9077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9078 = getelementptr inbounds %struct.GPR, %struct.GPR* %9077, i32 0, i32 15
  %9079 = getelementptr inbounds %struct.Reg, %struct.Reg* %9078, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %9079 to i64*
  %9080 = load i64, i64* %RBP.i69
  %9081 = sub i64 %9080, 76
  %9082 = load i64, i64* %PC.i67
  %9083 = add i64 %9082, 3
  store i64 %9083, i64* %PC.i67
  %9084 = inttoptr i64 %9081 to i32*
  %9085 = load i32, i32* %9084
  %9086 = zext i32 %9085 to i64
  store i64 %9086, i64* %RAX.i68, align 8
  store %struct.Memory* %loadMem_43e9a3, %struct.Memory** %MEMORY
  %loadMem_43e9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9088 = getelementptr inbounds %struct.GPR, %struct.GPR* %9087, i32 0, i32 33
  %9089 = getelementptr inbounds %struct.Reg, %struct.Reg* %9088, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %9089 to i64*
  %9090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9091 = getelementptr inbounds %struct.GPR, %struct.GPR* %9090, i32 0, i32 1
  %9092 = getelementptr inbounds %struct.Reg, %struct.Reg* %9091, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %9092 to i64*
  %9093 = load i64, i64* %RAX.i66
  %9094 = load i64, i64* %PC.i65
  %9095 = add i64 %9094, 3
  store i64 %9095, i64* %PC.i65
  %9096 = trunc i64 %9093 to i32
  %9097 = sub i32 %9096, 1
  %9098 = zext i32 %9097 to i64
  store i64 %9098, i64* %RAX.i66, align 8
  %9099 = icmp ult i32 %9096, 1
  %9100 = zext i1 %9099 to i8
  %9101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9100, i8* %9101, align 1
  %9102 = and i32 %9097, 255
  %9103 = call i32 @llvm.ctpop.i32(i32 %9102)
  %9104 = trunc i32 %9103 to i8
  %9105 = and i8 %9104, 1
  %9106 = xor i8 %9105, 1
  %9107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9106, i8* %9107, align 1
  %9108 = xor i64 1, %9093
  %9109 = trunc i64 %9108 to i32
  %9110 = xor i32 %9109, %9097
  %9111 = lshr i32 %9110, 4
  %9112 = trunc i32 %9111 to i8
  %9113 = and i8 %9112, 1
  %9114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9113, i8* %9114, align 1
  %9115 = icmp eq i32 %9097, 0
  %9116 = zext i1 %9115 to i8
  %9117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9116, i8* %9117, align 1
  %9118 = lshr i32 %9097, 31
  %9119 = trunc i32 %9118 to i8
  %9120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9119, i8* %9120, align 1
  %9121 = lshr i32 %9096, 31
  %9122 = xor i32 %9118, %9121
  %9123 = add i32 %9122, %9121
  %9124 = icmp eq i32 %9123, 2
  %9125 = zext i1 %9124 to i8
  %9126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9125, i8* %9126, align 1
  store %struct.Memory* %loadMem_43e9a6, %struct.Memory** %MEMORY
  %loadMem_43e9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9128 = getelementptr inbounds %struct.GPR, %struct.GPR* %9127, i32 0, i32 33
  %9129 = getelementptr inbounds %struct.Reg, %struct.Reg* %9128, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %9129 to i64*
  %9130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9131 = getelementptr inbounds %struct.GPR, %struct.GPR* %9130, i32 0, i32 1
  %9132 = getelementptr inbounds %struct.Reg, %struct.Reg* %9131, i32 0, i32 0
  %EAX.i63 = bitcast %union.anon* %9132 to i32*
  %9133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9134 = getelementptr inbounds %struct.GPR, %struct.GPR* %9133, i32 0, i32 9
  %9135 = getelementptr inbounds %struct.Reg, %struct.Reg* %9134, i32 0, i32 0
  %RSI.i64 = bitcast %union.anon* %9135 to i64*
  %9136 = load i32, i32* %EAX.i63
  %9137 = zext i32 %9136 to i64
  %9138 = load i64, i64* %PC.i62
  %9139 = add i64 %9138, 3
  store i64 %9139, i64* %PC.i62
  %9140 = shl i64 %9137, 32
  %9141 = ashr exact i64 %9140, 32
  store i64 %9141, i64* %RSI.i64, align 8
  store %struct.Memory* %loadMem_43e9a9, %struct.Memory** %MEMORY
  %loadMem_43e9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %9142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9143 = getelementptr inbounds %struct.GPR, %struct.GPR* %9142, i32 0, i32 33
  %9144 = getelementptr inbounds %struct.Reg, %struct.Reg* %9143, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %9144 to i64*
  %9145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9146 = getelementptr inbounds %struct.GPR, %struct.GPR* %9145, i32 0, i32 7
  %9147 = getelementptr inbounds %struct.Reg, %struct.Reg* %9146, i32 0, i32 0
  %RDX.i61 = bitcast %union.anon* %9147 to i64*
  %9148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9149 = getelementptr inbounds %struct.GPR, %struct.GPR* %9148, i32 0, i32 9
  %9150 = getelementptr inbounds %struct.Reg, %struct.Reg* %9149, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %9150 to i64*
  %9151 = load i64, i64* %RDX.i61
  %9152 = load i64, i64* %RSI.i
  %9153 = mul i64 %9152, 4
  %9154 = add i64 %9153, %9151
  %9155 = load i64, i64* %PC.i60
  %9156 = add i64 %9155, 4
  store i64 %9156, i64* %PC.i60
  %9157 = inttoptr i64 %9154 to i32*
  %9158 = load i32, i32* %9157
  %9159 = sext i32 %9158 to i64
  store i64 %9159, i64* %RDX.i61, align 8
  store %struct.Memory* %loadMem_43e9ac, %struct.Memory** %MEMORY
  %loadMem_43e9b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9161 = getelementptr inbounds %struct.GPR, %struct.GPR* %9160, i32 0, i32 33
  %9162 = getelementptr inbounds %struct.Reg, %struct.Reg* %9161, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %9162 to i64*
  %9163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9164 = getelementptr inbounds %struct.GPR, %struct.GPR* %9163, i32 0, i32 11
  %9165 = getelementptr inbounds %struct.Reg, %struct.Reg* %9164, i32 0, i32 0
  %9166 = bitcast %union.anon* %9165 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9166, i32 0, i32 0
  %9167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9168 = getelementptr inbounds %struct.GPR, %struct.GPR* %9167, i32 0, i32 5
  %9169 = getelementptr inbounds %struct.Reg, %struct.Reg* %9168, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %9169 to i64*
  %9170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9171 = getelementptr inbounds %struct.GPR, %struct.GPR* %9170, i32 0, i32 7
  %9172 = getelementptr inbounds %struct.Reg, %struct.Reg* %9171, i32 0, i32 0
  %RDX.i59 = bitcast %union.anon* %9172 to i64*
  %9173 = load i64, i64* %RCX.i58
  %9174 = load i64, i64* %RDX.i59
  %9175 = add i64 %9174, %9173
  %9176 = load i8, i8* %DIL.i
  %9177 = zext i8 %9176 to i64
  %9178 = load i64, i64* %PC.i57
  %9179 = add i64 %9178, 4
  store i64 %9179, i64* %PC.i57
  %9180 = inttoptr i64 %9175 to i8*
  store i8 %9176, i8* %9180
  store %struct.Memory* %loadMem_43e9b0, %struct.Memory** %MEMORY
  %loadMem_43e9b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9182 = getelementptr inbounds %struct.GPR, %struct.GPR* %9181, i32 0, i32 33
  %9183 = getelementptr inbounds %struct.Reg, %struct.Reg* %9182, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %9183 to i64*
  %9184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9185 = getelementptr inbounds %struct.GPR, %struct.GPR* %9184, i32 0, i32 1
  %9186 = getelementptr inbounds %struct.Reg, %struct.Reg* %9185, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %9186 to i64*
  %9187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9188 = getelementptr inbounds %struct.GPR, %struct.GPR* %9187, i32 0, i32 15
  %9189 = getelementptr inbounds %struct.Reg, %struct.Reg* %9188, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %9189 to i64*
  %9190 = load i64, i64* %RBP.i56
  %9191 = sub i64 %9190, 88
  %9192 = load i64, i64* %PC.i54
  %9193 = add i64 %9192, 3
  store i64 %9193, i64* %PC.i54
  %9194 = inttoptr i64 %9191 to i32*
  %9195 = load i32, i32* %9194
  %9196 = zext i32 %9195 to i64
  store i64 %9196, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_43e9b4, %struct.Memory** %MEMORY
  %loadMem_43e9b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9198 = getelementptr inbounds %struct.GPR, %struct.GPR* %9197, i32 0, i32 33
  %9199 = getelementptr inbounds %struct.Reg, %struct.Reg* %9198, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %9199 to i64*
  %9200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9201 = getelementptr inbounds %struct.GPR, %struct.GPR* %9200, i32 0, i32 5
  %9202 = getelementptr inbounds %struct.Reg, %struct.Reg* %9201, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %9202 to i64*
  %9203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9204 = getelementptr inbounds %struct.GPR, %struct.GPR* %9203, i32 0, i32 15
  %9205 = getelementptr inbounds %struct.Reg, %struct.Reg* %9204, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %9205 to i64*
  %9206 = load i64, i64* %RBP.i53
  %9207 = sub i64 %9206, 64
  %9208 = load i64, i64* %PC.i51
  %9209 = add i64 %9208, 4
  store i64 %9209, i64* %PC.i51
  %9210 = inttoptr i64 %9207 to i64*
  %9211 = load i64, i64* %9210
  store i64 %9211, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_43e9b7, %struct.Memory** %MEMORY
  %loadMem_43e9bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %9212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9213 = getelementptr inbounds %struct.GPR, %struct.GPR* %9212, i32 0, i32 33
  %9214 = getelementptr inbounds %struct.Reg, %struct.Reg* %9213, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %9214 to i64*
  %9215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9216 = getelementptr inbounds %struct.GPR, %struct.GPR* %9215, i32 0, i32 17
  %9217 = getelementptr inbounds %struct.Reg, %struct.Reg* %9216, i32 0, i32 0
  %R8D.i49 = bitcast %union.anon* %9217 to i32*
  %9218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9219 = getelementptr inbounds %struct.GPR, %struct.GPR* %9218, i32 0, i32 15
  %9220 = getelementptr inbounds %struct.Reg, %struct.Reg* %9219, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %9220 to i64*
  %9221 = bitcast i32* %R8D.i49 to i64*
  %9222 = load i64, i64* %RBP.i50
  %9223 = sub i64 %9222, 76
  %9224 = load i64, i64* %PC.i48
  %9225 = add i64 %9224, 4
  store i64 %9225, i64* %PC.i48
  %9226 = inttoptr i64 %9223 to i32*
  %9227 = load i32, i32* %9226
  %9228 = zext i32 %9227 to i64
  store i64 %9228, i64* %9221, align 8
  store %struct.Memory* %loadMem_43e9bb, %struct.Memory** %MEMORY
  %loadMem_43e9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %9229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9230 = getelementptr inbounds %struct.GPR, %struct.GPR* %9229, i32 0, i32 33
  %9231 = getelementptr inbounds %struct.Reg, %struct.Reg* %9230, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %9231 to i64*
  %9232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9233 = getelementptr inbounds %struct.GPR, %struct.GPR* %9232, i32 0, i32 17
  %9234 = getelementptr inbounds %struct.Reg, %struct.Reg* %9233, i32 0, i32 0
  %R8D.i47 = bitcast %union.anon* %9234 to i32*
  %9235 = bitcast i32* %R8D.i47 to i64*
  %9236 = load i32, i32* %R8D.i47
  %9237 = zext i32 %9236 to i64
  %9238 = load i64, i64* %PC.i46
  %9239 = add i64 %9238, 4
  store i64 %9239, i64* %PC.i46
  %9240 = sub i32 %9236, 1
  %9241 = zext i32 %9240 to i64
  store i64 %9241, i64* %9235, align 8
  %9242 = icmp ult i32 %9236, 1
  %9243 = zext i1 %9242 to i8
  %9244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9243, i8* %9244, align 1
  %9245 = and i32 %9240, 255
  %9246 = call i32 @llvm.ctpop.i32(i32 %9245)
  %9247 = trunc i32 %9246 to i8
  %9248 = and i8 %9247, 1
  %9249 = xor i8 %9248, 1
  %9250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9249, i8* %9250, align 1
  %9251 = xor i64 1, %9237
  %9252 = trunc i64 %9251 to i32
  %9253 = xor i32 %9252, %9240
  %9254 = lshr i32 %9253, 4
  %9255 = trunc i32 %9254 to i8
  %9256 = and i8 %9255, 1
  %9257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9256, i8* %9257, align 1
  %9258 = icmp eq i32 %9240, 0
  %9259 = zext i1 %9258 to i8
  %9260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9259, i8* %9260, align 1
  %9261 = lshr i32 %9240, 31
  %9262 = trunc i32 %9261 to i8
  %9263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9262, i8* %9263, align 1
  %9264 = lshr i32 %9236, 31
  %9265 = xor i32 %9261, %9264
  %9266 = add i32 %9265, %9264
  %9267 = icmp eq i32 %9266, 2
  %9268 = zext i1 %9267 to i8
  %9269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9268, i8* %9269, align 1
  store %struct.Memory* %loadMem_43e9bf, %struct.Memory** %MEMORY
  %loadMem_43e9c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9271 = getelementptr inbounds %struct.GPR, %struct.GPR* %9270, i32 0, i32 33
  %9272 = getelementptr inbounds %struct.Reg, %struct.Reg* %9271, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %9272 to i64*
  %9273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9274 = getelementptr inbounds %struct.GPR, %struct.GPR* %9273, i32 0, i32 17
  %9275 = getelementptr inbounds %struct.Reg, %struct.Reg* %9274, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %9275 to i32*
  %9276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9277 = getelementptr inbounds %struct.GPR, %struct.GPR* %9276, i32 0, i32 7
  %9278 = getelementptr inbounds %struct.Reg, %struct.Reg* %9277, i32 0, i32 0
  %RDX.i45 = bitcast %union.anon* %9278 to i64*
  %9279 = load i32, i32* %R8D.i
  %9280 = zext i32 %9279 to i64
  %9281 = load i64, i64* %PC.i44
  %9282 = add i64 %9281, 3
  store i64 %9282, i64* %PC.i44
  %9283 = shl i64 %9280, 32
  %9284 = ashr exact i64 %9283, 32
  store i64 %9284, i64* %RDX.i45, align 8
  store %struct.Memory* %loadMem_43e9c3, %struct.Memory** %MEMORY
  %loadMem_43e9c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9286 = getelementptr inbounds %struct.GPR, %struct.GPR* %9285, i32 0, i32 33
  %9287 = getelementptr inbounds %struct.Reg, %struct.Reg* %9286, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %9287 to i64*
  %9288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9289 = getelementptr inbounds %struct.GPR, %struct.GPR* %9288, i32 0, i32 1
  %9290 = getelementptr inbounds %struct.Reg, %struct.Reg* %9289, i32 0, i32 0
  %EAX.i43 = bitcast %union.anon* %9290 to i32*
  %9291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9292 = getelementptr inbounds %struct.GPR, %struct.GPR* %9291, i32 0, i32 5
  %9293 = getelementptr inbounds %struct.Reg, %struct.Reg* %9292, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %9293 to i64*
  %9294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9295 = getelementptr inbounds %struct.GPR, %struct.GPR* %9294, i32 0, i32 7
  %9296 = getelementptr inbounds %struct.Reg, %struct.Reg* %9295, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %9296 to i64*
  %9297 = load i64, i64* %RCX.i
  %9298 = load i64, i64* %RDX.i
  %9299 = mul i64 %9298, 4
  %9300 = add i64 %9299, %9297
  %9301 = load i32, i32* %EAX.i43
  %9302 = zext i32 %9301 to i64
  %9303 = load i64, i64* %PC.i42
  %9304 = add i64 %9303, 3
  store i64 %9304, i64* %PC.i42
  %9305 = inttoptr i64 %9300 to i32*
  store i32 %9301, i32* %9305
  store %struct.Memory* %loadMem_43e9c6, %struct.Memory** %MEMORY
  %loadMem_43e9c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9307 = getelementptr inbounds %struct.GPR, %struct.GPR* %9306, i32 0, i32 33
  %9308 = getelementptr inbounds %struct.Reg, %struct.Reg* %9307, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %9308 to i64*
  %9309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9310 = getelementptr inbounds %struct.GPR, %struct.GPR* %9309, i32 0, i32 1
  %9311 = getelementptr inbounds %struct.Reg, %struct.Reg* %9310, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %9311 to i64*
  %9312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9313 = getelementptr inbounds %struct.GPR, %struct.GPR* %9312, i32 0, i32 15
  %9314 = getelementptr inbounds %struct.Reg, %struct.Reg* %9313, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %9314 to i64*
  %9315 = load i64, i64* %RBP.i41
  %9316 = sub i64 %9315, 76
  %9317 = load i64, i64* %PC.i39
  %9318 = add i64 %9317, 3
  store i64 %9318, i64* %PC.i39
  %9319 = inttoptr i64 %9316 to i32*
  %9320 = load i32, i32* %9319
  %9321 = zext i32 %9320 to i64
  store i64 %9321, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_43e9c9, %struct.Memory** %MEMORY
  %loadMem_43e9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %9322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9323 = getelementptr inbounds %struct.GPR, %struct.GPR* %9322, i32 0, i32 33
  %9324 = getelementptr inbounds %struct.Reg, %struct.Reg* %9323, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %9324 to i64*
  %9325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9326 = getelementptr inbounds %struct.GPR, %struct.GPR* %9325, i32 0, i32 1
  %9327 = getelementptr inbounds %struct.Reg, %struct.Reg* %9326, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %9327 to i64*
  %9328 = load i64, i64* %RAX.i38
  %9329 = load i64, i64* %PC.i37
  %9330 = add i64 %9329, 3
  store i64 %9330, i64* %PC.i37
  %9331 = trunc i64 %9328 to i32
  %9332 = add i32 -1, %9331
  %9333 = zext i32 %9332 to i64
  store i64 %9333, i64* %RAX.i38, align 8
  %9334 = icmp ult i32 %9332, %9331
  %9335 = icmp ult i32 %9332, -1
  %9336 = or i1 %9334, %9335
  %9337 = zext i1 %9336 to i8
  %9338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9337, i8* %9338, align 1
  %9339 = and i32 %9332, 255
  %9340 = call i32 @llvm.ctpop.i32(i32 %9339)
  %9341 = trunc i32 %9340 to i8
  %9342 = and i8 %9341, 1
  %9343 = xor i8 %9342, 1
  %9344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9343, i8* %9344, align 1
  %9345 = xor i64 -1, %9328
  %9346 = trunc i64 %9345 to i32
  %9347 = xor i32 %9346, %9332
  %9348 = lshr i32 %9347, 4
  %9349 = trunc i32 %9348 to i8
  %9350 = and i8 %9349, 1
  %9351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9350, i8* %9351, align 1
  %9352 = icmp eq i32 %9332, 0
  %9353 = zext i1 %9352 to i8
  %9354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9353, i8* %9354, align 1
  %9355 = lshr i32 %9332, 31
  %9356 = trunc i32 %9355 to i8
  %9357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9356, i8* %9357, align 1
  %9358 = lshr i32 %9331, 31
  %9359 = xor i32 %9355, %9358
  %9360 = xor i32 %9355, 1
  %9361 = add i32 %9359, %9360
  %9362 = icmp eq i32 %9361, 2
  %9363 = zext i1 %9362 to i8
  %9364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9363, i8* %9364, align 1
  store %struct.Memory* %loadMem_43e9cc, %struct.Memory** %MEMORY
  %loadMem_43e9cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %9365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9366 = getelementptr inbounds %struct.GPR, %struct.GPR* %9365, i32 0, i32 33
  %9367 = getelementptr inbounds %struct.Reg, %struct.Reg* %9366, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %9367 to i64*
  %9368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9369 = getelementptr inbounds %struct.GPR, %struct.GPR* %9368, i32 0, i32 1
  %9370 = getelementptr inbounds %struct.Reg, %struct.Reg* %9369, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %9370 to i32*
  %9371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9372 = getelementptr inbounds %struct.GPR, %struct.GPR* %9371, i32 0, i32 15
  %9373 = getelementptr inbounds %struct.Reg, %struct.Reg* %9372, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %9373 to i64*
  %9374 = load i64, i64* %RBP.i36
  %9375 = sub i64 %9374, 76
  %9376 = load i32, i32* %EAX.i
  %9377 = zext i32 %9376 to i64
  %9378 = load i64, i64* %PC.i35
  %9379 = add i64 %9378, 3
  store i64 %9379, i64* %PC.i35
  %9380 = inttoptr i64 %9375 to i32*
  store i32 %9376, i32* %9380
  store %struct.Memory* %loadMem_43e9cf, %struct.Memory** %MEMORY
  %loadMem_43e9d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9382 = getelementptr inbounds %struct.GPR, %struct.GPR* %9381, i32 0, i32 33
  %9383 = getelementptr inbounds %struct.Reg, %struct.Reg* %9382, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %9383 to i64*
  %9384 = load i64, i64* %PC.i34
  %9385 = add i64 %9384, -298
  %9386 = load i64, i64* %PC.i34
  %9387 = add i64 %9386, 5
  store i64 %9387, i64* %PC.i34
  %9388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9385, i64* %9388, align 8
  store %struct.Memory* %loadMem_43e9d2, %struct.Memory** %MEMORY
  br label %block_.L_43e8a8

block_.L_43e9d7:                                  ; preds = %block_.L_43e8a8
  %loadMem_43e9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9390 = getelementptr inbounds %struct.GPR, %struct.GPR* %9389, i32 0, i32 33
  %9391 = getelementptr inbounds %struct.Reg, %struct.Reg* %9390, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %9391 to i64*
  %9392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9393 = getelementptr inbounds %struct.GPR, %struct.GPR* %9392, i32 0, i32 1
  %9394 = getelementptr inbounds %struct.Reg, %struct.Reg* %9393, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %9394 to i64*
  %9395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9396 = getelementptr inbounds %struct.GPR, %struct.GPR* %9395, i32 0, i32 15
  %9397 = getelementptr inbounds %struct.Reg, %struct.Reg* %9396, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %9397 to i64*
  %9398 = load i64, i64* %RBP.i33
  %9399 = sub i64 %9398, 48
  %9400 = load i64, i64* %PC.i31
  %9401 = add i64 %9400, 4
  store i64 %9401, i64* %PC.i31
  %9402 = inttoptr i64 %9399 to i64*
  %9403 = load i64, i64* %9402
  store i64 %9403, i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_43e9d7, %struct.Memory** %MEMORY
  %loadMem_43e9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %9404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9405 = getelementptr inbounds %struct.GPR, %struct.GPR* %9404, i32 0, i32 33
  %9406 = getelementptr inbounds %struct.Reg, %struct.Reg* %9405, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %9406 to i64*
  %9407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9408 = getelementptr inbounds %struct.GPR, %struct.GPR* %9407, i32 0, i32 1
  %9409 = getelementptr inbounds %struct.Reg, %struct.Reg* %9408, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %9409 to i64*
  %9410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9411 = getelementptr inbounds %struct.GPR, %struct.GPR* %9410, i32 0, i32 11
  %9412 = getelementptr inbounds %struct.Reg, %struct.Reg* %9411, i32 0, i32 0
  %RDI.i30 = bitcast %union.anon* %9412 to i64*
  %9413 = load i64, i64* %RAX.i29
  %9414 = load i64, i64* %PC.i28
  %9415 = add i64 %9414, 3
  store i64 %9415, i64* %PC.i28
  store i64 %9413, i64* %RDI.i30, align 8
  store %struct.Memory* %loadMem_43e9db, %struct.Memory** %MEMORY
  %loadMem1_43e9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %9416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9417 = getelementptr inbounds %struct.GPR, %struct.GPR* %9416, i32 0, i32 33
  %9418 = getelementptr inbounds %struct.Reg, %struct.Reg* %9417, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %9418 to i64*
  %9419 = load i64, i64* %PC.i27
  %9420 = add i64 %9419, -251486
  %9421 = load i64, i64* %PC.i27
  %9422 = add i64 %9421, 5
  %9423 = load i64, i64* %PC.i27
  %9424 = add i64 %9423, 5
  store i64 %9424, i64* %PC.i27
  %9425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9426 = load i64, i64* %9425, align 8
  %9427 = add i64 %9426, -8
  %9428 = inttoptr i64 %9427 to i64*
  store i64 %9422, i64* %9428
  store i64 %9427, i64* %9425, align 8
  %9429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9420, i64* %9429, align 8
  store %struct.Memory* %loadMem1_43e9de, %struct.Memory** %MEMORY
  %loadMem2_43e9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e9de = load i64, i64* %3
  %9430 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_43e9de)
  store %struct.Memory* %9430, %struct.Memory** %MEMORY
  %loadMem_43e9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9432 = getelementptr inbounds %struct.GPR, %struct.GPR* %9431, i32 0, i32 33
  %9433 = getelementptr inbounds %struct.Reg, %struct.Reg* %9432, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %9433 to i64*
  %9434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9435 = getelementptr inbounds %struct.GPR, %struct.GPR* %9434, i32 0, i32 1
  %9436 = getelementptr inbounds %struct.Reg, %struct.Reg* %9435, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %9436 to i64*
  %9437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9438 = getelementptr inbounds %struct.GPR, %struct.GPR* %9437, i32 0, i32 15
  %9439 = getelementptr inbounds %struct.Reg, %struct.Reg* %9438, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %9439 to i64*
  %9440 = load i64, i64* %RBP.i23
  %9441 = sub i64 %9440, 56
  %9442 = load i64, i64* %PC.i21
  %9443 = add i64 %9442, 4
  store i64 %9443, i64* %PC.i21
  %9444 = inttoptr i64 %9441 to i64*
  %9445 = load i64, i64* %9444
  store i64 %9445, i64* %RAX.i22, align 8
  store %struct.Memory* %loadMem_43e9e3, %struct.Memory** %MEMORY
  %loadMem_43e9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9447 = getelementptr inbounds %struct.GPR, %struct.GPR* %9446, i32 0, i32 33
  %9448 = getelementptr inbounds %struct.Reg, %struct.Reg* %9447, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %9448 to i64*
  %9449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9450 = getelementptr inbounds %struct.GPR, %struct.GPR* %9449, i32 0, i32 1
  %9451 = getelementptr inbounds %struct.Reg, %struct.Reg* %9450, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %9451 to i64*
  %9452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9453 = getelementptr inbounds %struct.GPR, %struct.GPR* %9452, i32 0, i32 11
  %9454 = getelementptr inbounds %struct.Reg, %struct.Reg* %9453, i32 0, i32 0
  %RDI.i20 = bitcast %union.anon* %9454 to i64*
  %9455 = load i64, i64* %RAX.i19
  %9456 = load i64, i64* %PC.i18
  %9457 = add i64 %9456, 3
  store i64 %9457, i64* %PC.i18
  store i64 %9455, i64* %RDI.i20, align 8
  store %struct.Memory* %loadMem_43e9e7, %struct.Memory** %MEMORY
  %loadMem1_43e9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %9458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9459 = getelementptr inbounds %struct.GPR, %struct.GPR* %9458, i32 0, i32 33
  %9460 = getelementptr inbounds %struct.Reg, %struct.Reg* %9459, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %9460 to i64*
  %9461 = load i64, i64* %PC.i17
  %9462 = add i64 %9461, -251498
  %9463 = load i64, i64* %PC.i17
  %9464 = add i64 %9463, 5
  %9465 = load i64, i64* %PC.i17
  %9466 = add i64 %9465, 5
  store i64 %9466, i64* %PC.i17
  %9467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9468 = load i64, i64* %9467, align 8
  %9469 = add i64 %9468, -8
  %9470 = inttoptr i64 %9469 to i64*
  store i64 %9464, i64* %9470
  store i64 %9469, i64* %9467, align 8
  %9471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9462, i64* %9471, align 8
  store %struct.Memory* %loadMem1_43e9ea, %struct.Memory** %MEMORY
  %loadMem2_43e9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e9ea = load i64, i64* %3
  %9472 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_43e9ea)
  store %struct.Memory* %9472, %struct.Memory** %MEMORY
  %loadMem_43e9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %9473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9474 = getelementptr inbounds %struct.GPR, %struct.GPR* %9473, i32 0, i32 33
  %9475 = getelementptr inbounds %struct.Reg, %struct.Reg* %9474, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %9475 to i64*
  %9476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9477 = getelementptr inbounds %struct.GPR, %struct.GPR* %9476, i32 0, i32 1
  %9478 = getelementptr inbounds %struct.Reg, %struct.Reg* %9477, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %9478 to i64*
  %9479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9480 = getelementptr inbounds %struct.GPR, %struct.GPR* %9479, i32 0, i32 15
  %9481 = getelementptr inbounds %struct.Reg, %struct.Reg* %9480, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %9481 to i64*
  %9482 = load i64, i64* %RBP.i14
  %9483 = sub i64 %9482, 64
  %9484 = load i64, i64* %PC.i12
  %9485 = add i64 %9484, 4
  store i64 %9485, i64* %PC.i12
  %9486 = inttoptr i64 %9483 to i64*
  %9487 = load i64, i64* %9486
  store i64 %9487, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_43e9ef, %struct.Memory** %MEMORY
  %loadMem_43e9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9489 = getelementptr inbounds %struct.GPR, %struct.GPR* %9488, i32 0, i32 33
  %9490 = getelementptr inbounds %struct.Reg, %struct.Reg* %9489, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %9490 to i64*
  %9491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9492 = getelementptr inbounds %struct.GPR, %struct.GPR* %9491, i32 0, i32 1
  %9493 = getelementptr inbounds %struct.Reg, %struct.Reg* %9492, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %9493 to i64*
  %9494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9495 = getelementptr inbounds %struct.GPR, %struct.GPR* %9494, i32 0, i32 11
  %9496 = getelementptr inbounds %struct.Reg, %struct.Reg* %9495, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %9496 to i64*
  %9497 = load i64, i64* %RAX.i11
  %9498 = load i64, i64* %PC.i10
  %9499 = add i64 %9498, 3
  store i64 %9499, i64* %PC.i10
  store i64 %9497, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_43e9f3, %struct.Memory** %MEMORY
  %loadMem1_43e9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9501 = getelementptr inbounds %struct.GPR, %struct.GPR* %9500, i32 0, i32 33
  %9502 = getelementptr inbounds %struct.Reg, %struct.Reg* %9501, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %9502 to i64*
  %9503 = load i64, i64* %PC.i9
  %9504 = add i64 %9503, -251510
  %9505 = load i64, i64* %PC.i9
  %9506 = add i64 %9505, 5
  %9507 = load i64, i64* %PC.i9
  %9508 = add i64 %9507, 5
  store i64 %9508, i64* %PC.i9
  %9509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9510 = load i64, i64* %9509, align 8
  %9511 = add i64 %9510, -8
  %9512 = inttoptr i64 %9511 to i64*
  store i64 %9506, i64* %9512
  store i64 %9511, i64* %9509, align 8
  %9513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9504, i64* %9513, align 8
  store %struct.Memory* %loadMem1_43e9f6, %struct.Memory** %MEMORY
  %loadMem2_43e9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e9f6 = load i64, i64* %3
  %9514 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_43e9f6)
  store %struct.Memory* %9514, %struct.Memory** %MEMORY
  %loadMem_43e9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %9515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9516 = getelementptr inbounds %struct.GPR, %struct.GPR* %9515, i32 0, i32 33
  %9517 = getelementptr inbounds %struct.Reg, %struct.Reg* %9516, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %9517 to i64*
  %9518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9519 = getelementptr inbounds %struct.GPR, %struct.GPR* %9518, i32 0, i32 1
  %9520 = getelementptr inbounds %struct.Reg, %struct.Reg* %9519, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %9520 to i64*
  %9521 = load i64, i64* %PC.i5
  %9522 = add i64 %9521, 5
  store i64 %9522, i64* %PC.i5
  store i64 1, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_43e9fb, %struct.Memory** %MEMORY
  %loadMem_43ea00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9524 = getelementptr inbounds %struct.GPR, %struct.GPR* %9523, i32 0, i32 33
  %9525 = getelementptr inbounds %struct.Reg, %struct.Reg* %9524, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %9525 to i64*
  %9526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9527 = getelementptr inbounds %struct.GPR, %struct.GPR* %9526, i32 0, i32 13
  %9528 = getelementptr inbounds %struct.Reg, %struct.Reg* %9527, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %9528 to i64*
  %9529 = load i64, i64* %RSP.i
  %9530 = load i64, i64* %PC.i4
  %9531 = add i64 %9530, 7
  store i64 %9531, i64* %PC.i4
  %9532 = add i64 128, %9529
  store i64 %9532, i64* %RSP.i, align 8
  %9533 = icmp ult i64 %9532, %9529
  %9534 = icmp ult i64 %9532, 128
  %9535 = or i1 %9533, %9534
  %9536 = zext i1 %9535 to i8
  %9537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9536, i8* %9537, align 1
  %9538 = trunc i64 %9532 to i32
  %9539 = and i32 %9538, 255
  %9540 = call i32 @llvm.ctpop.i32(i32 %9539)
  %9541 = trunc i32 %9540 to i8
  %9542 = and i8 %9541, 1
  %9543 = xor i8 %9542, 1
  %9544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9543, i8* %9544, align 1
  %9545 = xor i64 128, %9529
  %9546 = xor i64 %9545, %9532
  %9547 = lshr i64 %9546, 4
  %9548 = trunc i64 %9547 to i8
  %9549 = and i8 %9548, 1
  %9550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9549, i8* %9550, align 1
  %9551 = icmp eq i64 %9532, 0
  %9552 = zext i1 %9551 to i8
  %9553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9552, i8* %9553, align 1
  %9554 = lshr i64 %9532, 63
  %9555 = trunc i64 %9554 to i8
  %9556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9555, i8* %9556, align 1
  %9557 = lshr i64 %9529, 63
  %9558 = xor i64 %9554, %9557
  %9559 = add i64 %9558, %9554
  %9560 = icmp eq i64 %9559, 2
  %9561 = zext i1 %9560 to i8
  %9562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9561, i8* %9562, align 1
  store %struct.Memory* %loadMem_43ea00, %struct.Memory** %MEMORY
  %loadMem_43ea07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9564 = getelementptr inbounds %struct.GPR, %struct.GPR* %9563, i32 0, i32 33
  %9565 = getelementptr inbounds %struct.Reg, %struct.Reg* %9564, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %9565 to i64*
  %9566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9567 = getelementptr inbounds %struct.GPR, %struct.GPR* %9566, i32 0, i32 15
  %9568 = getelementptr inbounds %struct.Reg, %struct.Reg* %9567, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %9568 to i64*
  %9569 = load i64, i64* %PC.i2
  %9570 = add i64 %9569, 1
  store i64 %9570, i64* %PC.i2
  %9571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9572 = load i64, i64* %9571, align 8
  %9573 = add i64 %9572, 8
  %9574 = inttoptr i64 %9572 to i64*
  %9575 = load i64, i64* %9574
  store i64 %9575, i64* %RBP.i3, align 8
  store i64 %9573, i64* %9571, align 8
  store %struct.Memory* %loadMem_43ea07, %struct.Memory** %MEMORY
  %loadMem_43ea08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9577 = getelementptr inbounds %struct.GPR, %struct.GPR* %9576, i32 0, i32 33
  %9578 = getelementptr inbounds %struct.Reg, %struct.Reg* %9577, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %9578 to i64*
  %9579 = load i64, i64* %PC.i1
  %9580 = add i64 %9579, 1
  store i64 %9580, i64* %PC.i1
  %9581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9583 = load i64, i64* %9582, align 8
  %9584 = inttoptr i64 %9583 to i64*
  %9585 = load i64, i64* %9584
  store i64 %9585, i64* %9581, align 8
  %9586 = add i64 %9583, 8
  store i64 %9586, i64* %9582, align 8
  store %struct.Memory* %loadMem_43ea08, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_43ea08
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 128
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 128
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
  %23 = xor i64 128, %9
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
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

define %struct.Memory* @routine_je_.L_43e27a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_je_.L_43e299(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__0x459d41___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459d41_type* @G__0x459d41 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x23c___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 572, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rdi__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__esi__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0x23d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 573, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x23e___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 574, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 36
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

define %struct.Memory* @routine_jge_.L_43e635(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_43e3b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_43e420(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43e41b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43e627(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_43e50e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_43e61d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_43e577(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_43e593(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_43e618(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_43e5fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_43e613(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_43e622(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_43e33d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43e63a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
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

define %struct.Memory* @routine_jle_.L_43e76f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.sre_random(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x44__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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

define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb___rcx__rdx_1____dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  store i8 %22, i8* %DIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dil__MINUS0x59__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 89
  %15 = load i8, i8* %DIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
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

define %struct.Memory* @routine_movb__dil__MINUS0x5a__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 90
  %15 = load i8, i8* %DIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movb__dil____rcx__rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %DIL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
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

define %struct.Memory* @routine_movb_MINUS0x59__rbp____dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 89
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %DIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x5a__rbp____dil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 90
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %DIL, align 1
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

define %struct.Memory* @routine_jmpq_.L_43e774(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
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

define %struct.Memory* @routine_jle_.L_43e8a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i32 %10, 1
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = icmp ult i32 %10, 1
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i64 1, %11
  %26 = trunc i64 %25 to i32
  %27 = xor i32 %26, %14
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %14, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %14, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43e8a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
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

define %struct.Memory* @routine_jle_.L_43e9d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x4c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 128, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 128
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
  %25 = xor i64 128, %9
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
