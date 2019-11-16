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
%G_0xaaf050_type = type <{ [1 x i8] }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G__0x57ad9b_type = type <{ [8 x i8] }>
%G__0x57b202_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@G_0xaaf050 = global %G_0xaaf050_type zeroinitializer
@G_0xab0fe0 = global %G_0xab0fe0_type zeroinitializer
@G__0x57ad9b = global %G__0x57ad9b_type zeroinitializer
@G__0x57b202 = global %G__0x57b202_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

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

declare %struct.Memory* @sub_43b010.max_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43baf0.min_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @compute_crude_status(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41f000 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41f000, %struct.Memory** %MEMORY
  %loadMem_41f001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i324 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i324
  %27 = load i64, i64* %PC.i323
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i323
  store i64 %26, i64* %RBP.i325, align 8
  store %struct.Memory* %loadMem_41f001, %struct.Memory** %MEMORY
  %loadMem_41f004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i322 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i322
  %36 = load i64, i64* %PC.i321
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i321
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i322, align 8
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
  store %struct.Memory* %loadMem_41f004, %struct.Memory** %MEMORY
  %loadMem_41f008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i319
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i319
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i320, align 8
  store %struct.Memory* %loadMem_41f008, %struct.Memory** %MEMORY
  %loadMem_41f012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i318
  %85 = sub i64 %84, 8
  %86 = load i32, i32* %EDI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i317
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i317
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_41f012, %struct.Memory** %MEMORY
  %loadMem_41f015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RCX.i316 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %PC.i315
  %98 = add i64 %97, 8
  store i64 %98, i64* %PC.i315
  %99 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %99, i64* %RCX.i316, align 8
  store %struct.Memory* %loadMem_41f015, %struct.Memory** %MEMORY
  %loadMem_41f01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 33
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RDX.i313 = bitcast %union.anon* %105 to i64*
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 15
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %108 to i64*
  %109 = load i64, i64* %RBP.i314
  %110 = sub i64 %109, 8
  %111 = load i64, i64* %PC.i312
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC.i312
  %113 = inttoptr i64 %110 to i32*
  %114 = load i32, i32* %113
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %RDX.i313, align 8
  store %struct.Memory* %loadMem_41f01d, %struct.Memory** %MEMORY
  %loadMem_41f021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %RDX.i311
  %123 = load i64, i64* %PC.i310
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC.i310
  %125 = sext i64 %122 to i128
  %126 = and i128 %125, -18446744073709551616
  %127 = zext i64 %122 to i128
  %128 = or i128 %126, %127
  %129 = mul i128 76, %128
  %130 = trunc i128 %129 to i64
  store i64 %130, i64* %RDX.i311, align 8
  %131 = sext i64 %130 to i128
  %132 = icmp ne i128 %131, %129
  %133 = zext i1 %132 to i8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %133, i8* %134, align 1
  %135 = trunc i128 %129 to i32
  %136 = and i32 %135, 255
  %137 = call i32 @llvm.ctpop.i32(i32 %136)
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %140, i8* %141, align 1
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %142, align 1
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %143, align 1
  %144 = lshr i64 %130, 63
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %145, i8* %146, align 1
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %133, i8* %147, align 1
  store %struct.Memory* %loadMem_41f021, %struct.Memory** %MEMORY
  %loadMem_41f025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %RDX.i309 = bitcast %union.anon* %156 to i64*
  %157 = load i64, i64* %RAX.i308
  %158 = load i64, i64* %RDX.i309
  %159 = load i64, i64* %PC.i307
  %160 = add i64 %159, 3
  store i64 %160, i64* %PC.i307
  %161 = add i64 %158, %157
  store i64 %161, i64* %RAX.i308, align 8
  %162 = icmp ult i64 %161, %157
  %163 = icmp ult i64 %161, %158
  %164 = or i1 %162, %163
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %165, i8* %166, align 1
  %167 = trunc i64 %161 to i32
  %168 = and i32 %167, 255
  %169 = call i32 @llvm.ctpop.i32(i32 %168)
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %172, i8* %173, align 1
  %174 = xor i64 %158, %157
  %175 = xor i64 %174, %161
  %176 = lshr i64 %175, 4
  %177 = trunc i64 %176 to i8
  %178 = and i8 %177, 1
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %178, i8* %179, align 1
  %180 = icmp eq i64 %161, 0
  %181 = zext i1 %180 to i8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %181, i8* %182, align 1
  %183 = lshr i64 %161, 63
  %184 = trunc i64 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %184, i8* %185, align 1
  %186 = lshr i64 %157, 63
  %187 = lshr i64 %158, 63
  %188 = xor i64 %183, %186
  %189 = xor i64 %183, %187
  %190 = add i64 %188, %189
  %191 = icmp eq i64 %190, 2
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %192, i8* %193, align 1
  store %struct.Memory* %loadMem_41f025, %struct.Memory** %MEMORY
  %loadMem_41f028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %199 to i64*
  %200 = load i64, i64* %RAX.i306
  %201 = add i64 %200, 4
  %202 = load i64, i64* %PC.i305
  %203 = add i64 %202, 4
  store i64 %203, i64* %PC.i305
  %204 = inttoptr i64 %201 to i32*
  %205 = load i32, i32* %204
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_41f028, %struct.Memory** %MEMORY
  %loadMem_41f02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 33
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %212 to i64*
  %213 = load i64, i64* %RAX.i304
  %214 = load i64, i64* %PC.i303
  %215 = add i64 %214, 4
  store i64 %215, i64* %PC.i303
  %216 = sext i64 %213 to i128
  %217 = and i128 %216, -18446744073709551616
  %218 = zext i64 %213 to i128
  %219 = or i128 %217, %218
  %220 = mul i128 104, %219
  %221 = trunc i128 %220 to i64
  store i64 %221, i64* %RAX.i304, align 8
  %222 = sext i64 %221 to i128
  %223 = icmp ne i128 %222, %220
  %224 = zext i1 %223 to i8
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %224, i8* %225, align 1
  %226 = trunc i128 %220 to i32
  %227 = and i32 %226, 255
  %228 = call i32 @llvm.ctpop.i32(i32 %227)
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %231, i8* %232, align 1
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %233, align 1
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %234, align 1
  %235 = lshr i64 %221, 63
  %236 = trunc i64 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %236, i8* %237, align 1
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %224, i8* %238, align 1
  store %struct.Memory* %loadMem_41f02c, %struct.Memory** %MEMORY
  %loadMem_41f030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %RCX.i302
  %249 = load i64, i64* %RAX.i301
  %250 = load i64, i64* %PC.i300
  %251 = add i64 %250, 3
  store i64 %251, i64* %PC.i300
  %252 = add i64 %249, %248
  store i64 %252, i64* %RCX.i302, align 8
  %253 = icmp ult i64 %252, %248
  %254 = icmp ult i64 %252, %249
  %255 = or i1 %253, %254
  %256 = zext i1 %255 to i8
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %256, i8* %257, align 1
  %258 = trunc i64 %252 to i32
  %259 = and i32 %258, 255
  %260 = call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %263, i8* %264, align 1
  %265 = xor i64 %249, %248
  %266 = xor i64 %265, %252
  %267 = lshr i64 %266, 4
  %268 = trunc i64 %267 to i8
  %269 = and i8 %268, 1
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %269, i8* %270, align 1
  %271 = icmp eq i64 %252, 0
  %272 = zext i1 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %272, i8* %273, align 1
  %274 = lshr i64 %252, 63
  %275 = trunc i64 %274 to i8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %275, i8* %276, align 1
  %277 = lshr i64 %248, 63
  %278 = lshr i64 %249, 63
  %279 = xor i64 %274, %277
  %280 = xor i64 %274, %278
  %281 = add i64 %279, %280
  %282 = icmp eq i64 %281, 2
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %283, i8* %284, align 1
  store %struct.Memory* %loadMem_41f030, %struct.Memory** %MEMORY
  %loadMem_41f033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 33
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 5
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %RCX.i299
  %292 = load i64, i64* %PC.i298
  %293 = add i64 %292, 4
  store i64 %293, i64* %PC.i298
  %294 = add i64 76, %291
  store i64 %294, i64* %RCX.i299, align 8
  %295 = icmp ult i64 %294, %291
  %296 = icmp ult i64 %294, 76
  %297 = or i1 %295, %296
  %298 = zext i1 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %298, i8* %299, align 1
  %300 = trunc i64 %294 to i32
  %301 = and i32 %300, 255
  %302 = call i32 @llvm.ctpop.i32(i32 %301)
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = xor i8 %304, 1
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %305, i8* %306, align 1
  %307 = xor i64 76, %291
  %308 = xor i64 %307, %294
  %309 = lshr i64 %308, 4
  %310 = trunc i64 %309 to i8
  %311 = and i8 %310, 1
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %311, i8* %312, align 1
  %313 = icmp eq i64 %294, 0
  %314 = zext i1 %313 to i8
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %314, i8* %315, align 1
  %316 = lshr i64 %294, 63
  %317 = trunc i64 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %317, i8* %318, align 1
  %319 = lshr i64 %291, 63
  %320 = xor i64 %316, %319
  %321 = add i64 %320, %316
  %322 = icmp eq i64 %321, 2
  %323 = zext i1 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %323, i8* %324, align 1
  store %struct.Memory* %loadMem_41f033, %struct.Memory** %MEMORY
  %loadMem_41f037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 5
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 15
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %RBP.i297
  %335 = sub i64 %334, 16
  %336 = load i64, i64* %RCX.i296
  %337 = load i64, i64* %PC.i295
  %338 = add i64 %337, 4
  store i64 %338, i64* %PC.i295
  %339 = inttoptr i64 %335 to i64*
  store i64 %336, i64* %339
  store %struct.Memory* %loadMem_41f037, %struct.Memory** %MEMORY
  %loadMem_41f03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 11
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RDI.i293 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 15
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %RBP.i294
  %350 = sub i64 %349, 16
  %351 = load i64, i64* %PC.i292
  %352 = add i64 %351, 4
  store i64 %352, i64* %PC.i292
  %353 = inttoptr i64 %350 to i64*
  %354 = load i64, i64* %353
  store i64 %354, i64* %RDI.i293, align 8
  store %struct.Memory* %loadMem_41f03b, %struct.Memory** %MEMORY
  %loadMem1_41f03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 33
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %357 to i64*
  %358 = load i64, i64* %PC.i291
  %359 = add i64 %358, 114641
  %360 = load i64, i64* %PC.i291
  %361 = add i64 %360, 5
  %362 = load i64, i64* %PC.i291
  %363 = add i64 %362, 5
  store i64 %363, i64* %PC.i291
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = add i64 %365, -8
  %367 = inttoptr i64 %366 to i64*
  store i64 %361, i64* %367
  store i64 %366, i64* %364, align 8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %359, i64* %368, align 8
  store %struct.Memory* %loadMem1_41f03f, %struct.Memory** %MEMORY
  %loadMem2_41f03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f03f = load i64, i64* %3
  %call2_41f03f = call %struct.Memory* @sub_43b010.max_eyes(%struct.State* %0, i64 %loadPC_41f03f, %struct.Memory* %loadMem2_41f03f)
  store %struct.Memory* %call2_41f03f, %struct.Memory** %MEMORY
  %loadMem_41f044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 33
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 11
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RDI.i289 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 15
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %377 to i64*
  %378 = load i64, i64* %RBP.i290
  %379 = sub i64 %378, 16
  %380 = load i64, i64* %PC.i288
  %381 = add i64 %380, 4
  store i64 %381, i64* %PC.i288
  %382 = inttoptr i64 %379 to i64*
  %383 = load i64, i64* %382
  store i64 %383, i64* %RDI.i289, align 8
  store %struct.Memory* %loadMem_41f044, %struct.Memory** %MEMORY
  %loadMem_41f048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %EAX.i286 = bitcast %union.anon* %389 to i32*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 15
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %392 to i64*
  %393 = load i64, i64* %RBP.i287
  %394 = sub i64 %393, 28
  %395 = load i32, i32* %EAX.i286
  %396 = zext i32 %395 to i64
  %397 = load i64, i64* %PC.i285
  %398 = add i64 %397, 3
  store i64 %398, i64* %PC.i285
  %399 = inttoptr i64 %394 to i32*
  store i32 %395, i32* %399
  store %struct.Memory* %loadMem_41f048, %struct.Memory** %MEMORY
  %loadMem1_41f04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %PC.i284
  %404 = add i64 %403, 117413
  %405 = load i64, i64* %PC.i284
  %406 = add i64 %405, 5
  %407 = load i64, i64* %PC.i284
  %408 = add i64 %407, 5
  store i64 %408, i64* %PC.i284
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = add i64 %410, -8
  %412 = inttoptr i64 %411 to i64*
  store i64 %406, i64* %412
  store i64 %411, i64* %409, align 8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %404, i64* %413, align 8
  store %struct.Memory* %loadMem1_41f04b, %struct.Memory** %MEMORY
  %loadMem2_41f04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f04b = load i64, i64* %3
  %call2_41f04b = call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* %0, i64 %loadPC_41f04b, %struct.Memory* %loadMem2_41f04b)
  store %struct.Memory* %call2_41f04b, %struct.Memory** %MEMORY
  %loadMem_41f050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 33
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %416 to i64*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 5
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %419 to i64*
  %420 = load i64, i64* %PC.i282
  %421 = add i64 %420, 10
  store i64 %421, i64* %PC.i282
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RCX.i283, align 8
  store %struct.Memory* %loadMem_41f050, %struct.Memory** %MEMORY
  %loadMem_41f05a = load %struct.Memory*, %struct.Memory** %MEMORY
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 33
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 9
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %RSI.i280 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 15
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %430 to i64*
  %431 = load i64, i64* %RBP.i281
  %432 = sub i64 %431, 28
  %433 = load i64, i64* %PC.i279
  %434 = add i64 %433, 3
  store i64 %434, i64* %PC.i279
  %435 = inttoptr i64 %432 to i32*
  %436 = load i32, i32* %435
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RSI.i280, align 8
  store %struct.Memory* %loadMem_41f05a, %struct.Memory** %MEMORY
  %loadMem_41f05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %EAX.i277 = bitcast %union.anon* %443 to i32*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 9
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RSI.i278 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %RSI.i278
  %448 = load i32, i32* %EAX.i277
  %449 = zext i32 %448 to i64
  %450 = load i64, i64* %PC.i276
  %451 = add i64 %450, 2
  store i64 %451, i64* %PC.i276
  %452 = trunc i64 %447 to i32
  %453 = add i32 %448, %452
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RSI.i278, align 8
  %455 = icmp ult i32 %453, %452
  %456 = icmp ult i32 %453, %448
  %457 = or i1 %455, %456
  %458 = zext i1 %457 to i8
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %458, i8* %459, align 1
  %460 = and i32 %453, 255
  %461 = call i32 @llvm.ctpop.i32(i32 %460)
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %464, i8* %465, align 1
  %466 = xor i64 %449, %447
  %467 = trunc i64 %466 to i32
  %468 = xor i32 %467, %453
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %471, i8* %472, align 1
  %473 = icmp eq i32 %453, 0
  %474 = zext i1 %473 to i8
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %474, i8* %475, align 1
  %476 = lshr i32 %453, 31
  %477 = trunc i32 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %477, i8* %478, align 1
  %479 = lshr i32 %452, 31
  %480 = lshr i32 %448, 31
  %481 = xor i32 %476, %479
  %482 = xor i32 %476, %480
  %483 = add i32 %481, %482
  %484 = icmp eq i32 %483, 2
  %485 = zext i1 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %485, i8* %486, align 1
  store %struct.Memory* %loadMem_41f05d, %struct.Memory** %MEMORY
  %loadMem_41f05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 33
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 9
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %ESI.i274 = bitcast %union.anon* %492 to i32*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 15
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %495 to i64*
  %496 = load i64, i64* %RBP.i275
  %497 = sub i64 %496, 20
  %498 = load i32, i32* %ESI.i274
  %499 = zext i32 %498 to i64
  %500 = load i64, i64* %PC.i273
  %501 = add i64 %500, 3
  store i64 %501, i64* %PC.i273
  %502 = inttoptr i64 %497 to i32*
  store i32 %498, i32* %502
  store %struct.Memory* %loadMem_41f05f, %struct.Memory** %MEMORY
  %loadMem_41f062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 7
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RDX.i272 = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %PC.i271
  %510 = add i64 %509, 8
  store i64 %510, i64* %PC.i271
  %511 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %511, i64* %RDX.i272, align 8
  store %struct.Memory* %loadMem_41f062, %struct.Memory** %MEMORY
  %loadMem_41f06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 33
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 11
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RDI.i269 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 15
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %520 to i64*
  %521 = load i64, i64* %RBP.i270
  %522 = sub i64 %521, 8
  %523 = load i64, i64* %PC.i268
  %524 = add i64 %523, 4
  store i64 %524, i64* %PC.i268
  %525 = inttoptr i64 %522 to i32*
  %526 = load i32, i32* %525
  %527 = sext i32 %526 to i64
  store i64 %527, i64* %RDI.i269, align 8
  store %struct.Memory* %loadMem_41f06a, %struct.Memory** %MEMORY
  %loadMem_41f06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 33
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 11
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RDI.i267 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %RDI.i267
  %535 = load i64, i64* %PC.i266
  %536 = add i64 %535, 4
  store i64 %536, i64* %PC.i266
  %537 = sext i64 %534 to i128
  %538 = and i128 %537, -18446744073709551616
  %539 = zext i64 %534 to i128
  %540 = or i128 %538, %539
  %541 = mul i128 76, %540
  %542 = trunc i128 %541 to i64
  store i64 %542, i64* %RDI.i267, align 8
  %543 = sext i64 %542 to i128
  %544 = icmp ne i128 %543, %541
  %545 = zext i1 %544 to i8
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %545, i8* %546, align 1
  %547 = trunc i128 %541 to i32
  %548 = and i32 %547, 255
  %549 = call i32 @llvm.ctpop.i32(i32 %548)
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %552, i8* %553, align 1
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %554, align 1
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %555, align 1
  %556 = lshr i64 %542, 63
  %557 = trunc i64 %556 to i8
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %557, i8* %558, align 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %545, i8* %559, align 1
  store %struct.Memory* %loadMem_41f06e, %struct.Memory** %MEMORY
  %loadMem_41f072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 5
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 11
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %RDI.i265 = bitcast %union.anon* %568 to i64*
  %569 = load i64, i64* %RCX.i264
  %570 = load i64, i64* %RDI.i265
  %571 = load i64, i64* %PC.i263
  %572 = add i64 %571, 3
  store i64 %572, i64* %PC.i263
  %573 = add i64 %570, %569
  store i64 %573, i64* %RCX.i264, align 8
  %574 = icmp ult i64 %573, %569
  %575 = icmp ult i64 %573, %570
  %576 = or i1 %574, %575
  %577 = zext i1 %576 to i8
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %577, i8* %578, align 1
  %579 = trunc i64 %573 to i32
  %580 = and i32 %579, 255
  %581 = call i32 @llvm.ctpop.i32(i32 %580)
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = xor i8 %583, 1
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %584, i8* %585, align 1
  %586 = xor i64 %570, %569
  %587 = xor i64 %586, %573
  %588 = lshr i64 %587, 4
  %589 = trunc i64 %588 to i8
  %590 = and i8 %589, 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %590, i8* %591, align 1
  %592 = icmp eq i64 %573, 0
  %593 = zext i1 %592 to i8
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %593, i8* %594, align 1
  %595 = lshr i64 %573, 63
  %596 = trunc i64 %595 to i8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %596, i8* %597, align 1
  %598 = lshr i64 %569, 63
  %599 = lshr i64 %570, 63
  %600 = xor i64 %595, %598
  %601 = xor i64 %595, %599
  %602 = add i64 %600, %601
  %603 = icmp eq i64 %602, 2
  %604 = zext i1 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %604, i8* %605, align 1
  store %struct.Memory* %loadMem_41f072, %struct.Memory** %MEMORY
  %loadMem_41f075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 5
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %611 to i64*
  %612 = load i64, i64* %RCX.i262
  %613 = add i64 %612, 4
  %614 = load i64, i64* %PC.i261
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC.i261
  %616 = inttoptr i64 %613 to i32*
  %617 = load i32, i32* %616
  %618 = sext i32 %617 to i64
  store i64 %618, i64* %RCX.i262, align 8
  store %struct.Memory* %loadMem_41f075, %struct.Memory** %MEMORY
  %loadMem_41f079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 5
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %624 to i64*
  %625 = load i64, i64* %RCX.i260
  %626 = load i64, i64* %PC.i259
  %627 = add i64 %626, 4
  store i64 %627, i64* %PC.i259
  %628 = sext i64 %625 to i128
  %629 = and i128 %628, -18446744073709551616
  %630 = zext i64 %625 to i128
  %631 = or i128 %629, %630
  %632 = mul i128 104, %631
  %633 = trunc i128 %632 to i64
  store i64 %633, i64* %RCX.i260, align 8
  %634 = sext i64 %633 to i128
  %635 = icmp ne i128 %634, %632
  %636 = zext i1 %635 to i8
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %636, i8* %637, align 1
  %638 = trunc i128 %632 to i32
  %639 = and i32 %638, 255
  %640 = call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %643, i8* %644, align 1
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %645, align 1
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %646, align 1
  %647 = lshr i64 %633, 63
  %648 = trunc i64 %647 to i8
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %648, i8* %649, align 1
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %636, i8* %650, align 1
  store %struct.Memory* %loadMem_41f079, %struct.Memory** %MEMORY
  %loadMem_41f07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 33
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 5
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %656 to i64*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 7
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %659 to i64*
  %660 = load i64, i64* %RDX.i258
  %661 = load i64, i64* %RCX.i257
  %662 = load i64, i64* %PC.i256
  %663 = add i64 %662, 3
  store i64 %663, i64* %PC.i256
  %664 = add i64 %661, %660
  store i64 %664, i64* %RDX.i258, align 8
  %665 = icmp ult i64 %664, %660
  %666 = icmp ult i64 %664, %661
  %667 = or i1 %665, %666
  %668 = zext i1 %667 to i8
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %668, i8* %669, align 1
  %670 = trunc i64 %664 to i32
  %671 = and i32 %670, 255
  %672 = call i32 @llvm.ctpop.i32(i32 %671)
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %675, i8* %676, align 1
  %677 = xor i64 %661, %660
  %678 = xor i64 %677, %664
  %679 = lshr i64 %678, 4
  %680 = trunc i64 %679 to i8
  %681 = and i8 %680, 1
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %681, i8* %682, align 1
  %683 = icmp eq i64 %664, 0
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %684, i8* %685, align 1
  %686 = lshr i64 %664, 63
  %687 = trunc i64 %686 to i8
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %687, i8* %688, align 1
  %689 = lshr i64 %660, 63
  %690 = lshr i64 %661, 63
  %691 = xor i64 %686, %689
  %692 = xor i64 %686, %690
  %693 = add i64 %691, %692
  %694 = icmp eq i64 %693, 2
  %695 = zext i1 %694 to i8
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %695, i8* %696, align 1
  store %struct.Memory* %loadMem_41f07d, %struct.Memory** %MEMORY
  %loadMem_41f080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 1
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 7
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RDX.i255 = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %RDX.i255
  %707 = add i64 %706, 84
  %708 = load i64, i64* %PC.i253
  %709 = add i64 %708, 3
  store i64 %709, i64* %PC.i253
  %710 = inttoptr i64 %707 to i32*
  %711 = load i32, i32* %710
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %RAX.i254, align 8
  store %struct.Memory* %loadMem_41f080, %struct.Memory** %MEMORY
  %loadMem_41f083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 1
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %EAX.i251 = bitcast %union.anon* %718 to i32*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 15
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %721 to i64*
  %722 = load i64, i64* %RBP.i252
  %723 = sub i64 %722, 24
  %724 = load i32, i32* %EAX.i251
  %725 = zext i32 %724 to i64
  %726 = load i64, i64* %PC.i250
  %727 = add i64 %726, 3
  store i64 %727, i64* %PC.i250
  %728 = inttoptr i64 %723 to i32*
  store i32 %724, i32* %728
  store %struct.Memory* %loadMem_41f083, %struct.Memory** %MEMORY
  %loadMem_41f086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %PC.i249
  %733 = add i64 %732, 8
  store i64 %733, i64* %PC.i249
  %734 = load i32, i32* bitcast (%G_0xaaf050_type* @G_0xaaf050 to i32*)
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %735, align 1
  %736 = and i32 %734, 255
  %737 = call i32 @llvm.ctpop.i32(i32 %736)
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = xor i8 %739, 1
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %740, i8* %741, align 1
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %742, align 1
  %743 = icmp eq i32 %734, 0
  %744 = zext i1 %743 to i8
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %744, i8* %745, align 1
  %746 = lshr i32 %734, 31
  %747 = trunc i32 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %747, i8* %748, align 1
  %749 = lshr i32 %734, 31
  %750 = xor i32 %746, %749
  %751 = add i32 %750, %749
  %752 = icmp eq i32 %751, 2
  %753 = zext i1 %752 to i8
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %753, i8* %754, align 1
  store %struct.Memory* %loadMem_41f086, %struct.Memory** %MEMORY
  %loadMem_41f08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %757 to i64*
  %758 = load i64, i64* %PC.i248
  %759 = add i64 %758, 11
  %760 = load i64, i64* %PC.i248
  %761 = add i64 %760, 6
  %762 = load i64, i64* %PC.i248
  %763 = add i64 %762, 6
  store i64 %763, i64* %PC.i248
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %765 = load i8, i8* %764, align 1
  store i8 %765, i8* %BRANCH_TAKEN, align 1
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %767 = icmp ne i8 %765, 0
  %768 = select i1 %767, i64 %759, i64 %761
  store i64 %768, i64* %766, align 8
  store %struct.Memory* %loadMem_41f08e, %struct.Memory** %MEMORY
  %loadBr_41f08e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f08e = icmp eq i8 %loadBr_41f08e, 1
  br i1 %cmpBr_41f08e, label %block_.L_41f099, label %block_41f094

block_41f094:                                     ; preds = %entry
  %loadMem_41f094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %771 to i64*
  %772 = load i64, i64* %PC.i247
  %773 = add i64 %772, 45
  %774 = load i64, i64* %PC.i247
  %775 = add i64 %774, 5
  store i64 %775, i64* %PC.i247
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %773, i64* %776, align 8
  store %struct.Memory* %loadMem_41f094, %struct.Memory** %MEMORY
  br label %block_.L_41f0c1

block_.L_41f099:                                  ; preds = %entry
  %loadMem_41f099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 11
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %PC.i246
  %784 = add i64 %783, 10
  store i64 %784, i64* %PC.i246
  store i64 ptrtoint (%G__0x57ad9b_type* @G__0x57ad9b to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_41f099, %struct.Memory** %MEMORY
  %loadMem_41f0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 9
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %RSI.i245 = bitcast %union.anon* %790 to i64*
  %791 = load i64, i64* %PC.i244
  %792 = add i64 %791, 5
  store i64 %792, i64* %PC.i244
  store i64 1625, i64* %RSI.i245, align 8
  store %struct.Memory* %loadMem_41f0a3, %struct.Memory** %MEMORY
  %loadMem_41f0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 33
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %795 to i64*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 7
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %798 to i64*
  %799 = load i64, i64* %PC.i242
  %800 = add i64 %799, 10
  store i64 %800, i64* %PC.i242
  store i64 ptrtoint (%G__0x57b202_type* @G__0x57b202 to i64), i64* %RDX.i243, align 8
  store %struct.Memory* %loadMem_41f0a8, %struct.Memory** %MEMORY
  %loadMem_41f0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 33
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 1
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %806 to i64*
  %807 = load i64, i64* %PC.i240
  %808 = add i64 %807, 5
  store i64 %808, i64* %PC.i240
  store i64 4294967295, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_41f0b2, %struct.Memory** %MEMORY
  %loadMem_41f0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 33
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %811 to i64*
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 1
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %EAX.i238 = bitcast %union.anon* %814 to i32*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 5
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %817 to i64*
  %818 = load i32, i32* %EAX.i238
  %819 = zext i32 %818 to i64
  %820 = load i64, i64* %PC.i237
  %821 = add i64 %820, 2
  store i64 %821, i64* %PC.i237
  %822 = and i64 %819, 4294967295
  store i64 %822, i64* %RCX.i239, align 8
  store %struct.Memory* %loadMem_41f0b7, %struct.Memory** %MEMORY
  %loadMem_41f0b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 33
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %825 to i64*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 1
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %828 to i32*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 17
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %831 to i32*
  %832 = bitcast i32* %R8D.i to i64*
  %833 = load i32, i32* %EAX.i
  %834 = zext i32 %833 to i64
  %835 = load i64, i64* %PC.i236
  %836 = add i64 %835, 3
  store i64 %836, i64* %PC.i236
  %837 = and i64 %834, 4294967295
  store i64 %837, i64* %832, align 8
  store %struct.Memory* %loadMem_41f0b9, %struct.Memory** %MEMORY
  %loadMem1_41f0bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 33
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %840 to i64*
  %841 = load i64, i64* %PC.i235
  %842 = add i64 %841, 208852
  %843 = load i64, i64* %PC.i235
  %844 = add i64 %843, 5
  %845 = load i64, i64* %PC.i235
  %846 = add i64 %845, 5
  store i64 %846, i64* %PC.i235
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %848 = load i64, i64* %847, align 8
  %849 = add i64 %848, -8
  %850 = inttoptr i64 %849 to i64*
  store i64 %844, i64* %850
  store i64 %849, i64* %847, align 8
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %842, i64* %851, align 8
  store %struct.Memory* %loadMem1_41f0bc, %struct.Memory** %MEMORY
  %loadMem2_41f0bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f0bc = load i64, i64* %3
  %call2_41f0bc = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_41f0bc, %struct.Memory* %loadMem2_41f0bc)
  store %struct.Memory* %call2_41f0bc, %struct.Memory** %MEMORY
  br label %block_.L_41f0c1

block_.L_41f0c1:                                  ; preds = %block_.L_41f099, %block_41f094
  %loadMem_41f0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 33
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 15
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %857 to i64*
  %858 = load i64, i64* %RBP.i234
  %859 = sub i64 %858, 20
  %860 = load i64, i64* %PC.i233
  %861 = add i64 %860, 4
  store i64 %861, i64* %PC.i233
  %862 = inttoptr i64 %859 to i32*
  %863 = load i32, i32* %862
  %864 = sub i32 %863, 3
  %865 = icmp ult i32 %863, 3
  %866 = zext i1 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %866, i8* %867, align 1
  %868 = and i32 %864, 255
  %869 = call i32 @llvm.ctpop.i32(i32 %868)
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %872, i8* %873, align 1
  %874 = xor i32 %863, 3
  %875 = xor i32 %874, %864
  %876 = lshr i32 %875, 4
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %878, i8* %879, align 1
  %880 = icmp eq i32 %864, 0
  %881 = zext i1 %880 to i8
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %881, i8* %882, align 1
  %883 = lshr i32 %864, 31
  %884 = trunc i32 %883 to i8
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %884, i8* %885, align 1
  %886 = lshr i32 %863, 31
  %887 = xor i32 %883, %886
  %888 = add i32 %887, %886
  %889 = icmp eq i32 %888, 2
  %890 = zext i1 %889 to i8
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %890, i8* %891, align 1
  store %struct.Memory* %loadMem_41f0c1, %struct.Memory** %MEMORY
  %loadMem_41f0c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 33
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %894 to i64*
  %895 = load i64, i64* %PC.i232
  %896 = add i64 %895, 18
  %897 = load i64, i64* %PC.i232
  %898 = add i64 %897, 6
  %899 = load i64, i64* %PC.i232
  %900 = add i64 %899, 6
  store i64 %900, i64* %PC.i232
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %902 = load i8, i8* %901, align 1
  %903 = icmp ne i8 %902, 0
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %905 = load i8, i8* %904, align 1
  %906 = icmp ne i8 %905, 0
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %908 = load i8, i8* %907, align 1
  %909 = icmp ne i8 %908, 0
  %910 = xor i1 %906, %909
  %911 = or i1 %903, %910
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %BRANCH_TAKEN, align 1
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %914 = select i1 %911, i64 %896, i64 %898
  store i64 %914, i64* %913, align 8
  store %struct.Memory* %loadMem_41f0c5, %struct.Memory** %MEMORY
  %loadBr_41f0c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f0c5 = icmp eq i8 %loadBr_41f0c5, 1
  br i1 %cmpBr_41f0c5, label %block_.L_41f0d7, label %block_41f0cb

block_41f0cb:                                     ; preds = %block_.L_41f0c1
  %loadMem_41f0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 15
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %920 to i64*
  %921 = load i64, i64* %RBP.i231
  %922 = sub i64 %921, 4
  %923 = load i64, i64* %PC.i230
  %924 = add i64 %923, 7
  store i64 %924, i64* %PC.i230
  %925 = inttoptr i64 %922 to i32*
  store i32 1, i32* %925
  store %struct.Memory* %loadMem_41f0cb, %struct.Memory** %MEMORY
  %loadMem_41f0d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %928 to i64*
  %929 = load i64, i64* %PC.i229
  %930 = add i64 %929, 605
  %931 = load i64, i64* %PC.i229
  %932 = add i64 %931, 5
  store i64 %932, i64* %PC.i229
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %930, i64* %933, align 8
  store %struct.Memory* %loadMem_41f0d2, %struct.Memory** %MEMORY
  br label %block_.L_41f32f

block_.L_41f0d7:                                  ; preds = %block_.L_41f0c1
  %loadMem_41f0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 33
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 1
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %PC.i227
  %941 = add i64 %940, 10
  store i64 %941, i64* %PC.i227
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_41f0d7, %struct.Memory** %MEMORY
  %loadMem_41f0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 33
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 5
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %PC.i225
  %949 = add i64 %948, 10
  store i64 %949, i64* %PC.i225
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RCX.i226, align 8
  store %struct.Memory* %loadMem_41f0e1, %struct.Memory** %MEMORY
  %loadMem_41f0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 33
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 7
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RDX.i223 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 15
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %958 to i64*
  %959 = load i64, i64* %RBP.i224
  %960 = sub i64 %959, 8
  %961 = load i64, i64* %PC.i222
  %962 = add i64 %961, 4
  store i64 %962, i64* %PC.i222
  %963 = inttoptr i64 %960 to i32*
  %964 = load i32, i32* %963
  %965 = sext i32 %964 to i64
  store i64 %965, i64* %RDX.i223, align 8
  store %struct.Memory* %loadMem_41f0eb, %struct.Memory** %MEMORY
  %loadMem_41f0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 33
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 7
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RDX.i221 = bitcast %union.anon* %971 to i64*
  %972 = load i64, i64* %RDX.i221
  %973 = load i64, i64* %PC.i220
  %974 = add i64 %973, 4
  store i64 %974, i64* %PC.i220
  %975 = sext i64 %972 to i128
  %976 = and i128 %975, -18446744073709551616
  %977 = zext i64 %972 to i128
  %978 = or i128 %976, %977
  %979 = mul i128 76, %978
  %980 = trunc i128 %979 to i64
  store i64 %980, i64* %RDX.i221, align 8
  %981 = sext i64 %980 to i128
  %982 = icmp ne i128 %981, %979
  %983 = zext i1 %982 to i8
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %983, i8* %984, align 1
  %985 = trunc i128 %979 to i32
  %986 = and i32 %985, 255
  %987 = call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = xor i8 %989, 1
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %990, i8* %991, align 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %992, align 1
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %993, align 1
  %994 = lshr i64 %980, 63
  %995 = trunc i64 %994 to i8
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %995, i8* %996, align 1
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %983, i8* %997, align 1
  store %struct.Memory* %loadMem_41f0ef, %struct.Memory** %MEMORY
  %loadMem_41f0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 33
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 5
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 7
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RDX.i219 = bitcast %union.anon* %1006 to i64*
  %1007 = load i64, i64* %RCX.i218
  %1008 = load i64, i64* %RDX.i219
  %1009 = load i64, i64* %PC.i217
  %1010 = add i64 %1009, 3
  store i64 %1010, i64* %PC.i217
  %1011 = add i64 %1008, %1007
  store i64 %1011, i64* %RCX.i218, align 8
  %1012 = icmp ult i64 %1011, %1007
  %1013 = icmp ult i64 %1011, %1008
  %1014 = or i1 %1012, %1013
  %1015 = zext i1 %1014 to i8
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1015, i8* %1016, align 1
  %1017 = trunc i64 %1011 to i32
  %1018 = and i32 %1017, 255
  %1019 = call i32 @llvm.ctpop.i32(i32 %1018)
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  %1022 = xor i8 %1021, 1
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1022, i8* %1023, align 1
  %1024 = xor i64 %1008, %1007
  %1025 = xor i64 %1024, %1011
  %1026 = lshr i64 %1025, 4
  %1027 = trunc i64 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1028, i8* %1029, align 1
  %1030 = icmp eq i64 %1011, 0
  %1031 = zext i1 %1030 to i8
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1031, i8* %1032, align 1
  %1033 = lshr i64 %1011, 63
  %1034 = trunc i64 %1033 to i8
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1034, i8* %1035, align 1
  %1036 = lshr i64 %1007, 63
  %1037 = lshr i64 %1008, 63
  %1038 = xor i64 %1033, %1036
  %1039 = xor i64 %1033, %1037
  %1040 = add i64 %1038, %1039
  %1041 = icmp eq i64 %1040, 2
  %1042 = zext i1 %1041 to i8
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1042, i8* %1043, align 1
  store %struct.Memory* %loadMem_41f0f3, %struct.Memory** %MEMORY
  %loadMem_41f0f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 33
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 5
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %1049 to i64*
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 9
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1052 to i64*
  %1053 = load i64, i64* %RCX.i216
  %1054 = add i64 %1053, 12
  %1055 = load i64, i64* %PC.i215
  %1056 = add i64 %1055, 3
  store i64 %1056, i64* %PC.i215
  %1057 = inttoptr i64 %1054 to i32*
  %1058 = load i32, i32* %1057
  %1059 = zext i32 %1058 to i64
  store i64 %1059, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_41f0f6, %struct.Memory** %MEMORY
  %loadMem_41f0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 33
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 5
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 15
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %1068 to i64*
  %1069 = load i64, i64* %RBP.i214
  %1070 = sub i64 %1069, 8
  %1071 = load i64, i64* %PC.i212
  %1072 = add i64 %1071, 4
  store i64 %1072, i64* %PC.i212
  %1073 = inttoptr i64 %1070 to i32*
  %1074 = load i32, i32* %1073
  %1075 = sext i32 %1074 to i64
  store i64 %1075, i64* %RCX.i213, align 8
  store %struct.Memory* %loadMem_41f0f9, %struct.Memory** %MEMORY
  %loadMem_41f0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 5
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %1081 to i64*
  %1082 = load i64, i64* %RCX.i211
  %1083 = load i64, i64* %PC.i210
  %1084 = add i64 %1083, 7
  store i64 %1084, i64* %PC.i210
  %1085 = sext i64 %1082 to i128
  %1086 = and i128 %1085, -18446744073709551616
  %1087 = zext i64 %1082 to i128
  %1088 = or i128 %1086, %1087
  %1089 = mul i128 380, %1088
  %1090 = trunc i128 %1089 to i64
  store i64 %1090, i64* %RCX.i211, align 8
  %1091 = sext i64 %1090 to i128
  %1092 = icmp ne i128 %1091, %1089
  %1093 = zext i1 %1092 to i8
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1093, i8* %1094, align 1
  %1095 = trunc i128 %1089 to i32
  %1096 = and i32 %1095, 255
  %1097 = call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1100, i8* %1101, align 1
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1102, align 1
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1103, align 1
  %1104 = lshr i64 %1090, 63
  %1105 = trunc i64 %1104 to i8
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1105, i8* %1106, align 1
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1093, i8* %1107, align 1
  store %struct.Memory* %loadMem_41f0fd, %struct.Memory** %MEMORY
  %loadMem_41f104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 1
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RAX.i208 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 5
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %1116 to i64*
  %1117 = load i64, i64* %RAX.i208
  %1118 = load i64, i64* %RCX.i209
  %1119 = load i64, i64* %PC.i207
  %1120 = add i64 %1119, 3
  store i64 %1120, i64* %PC.i207
  %1121 = add i64 %1118, %1117
  store i64 %1121, i64* %RAX.i208, align 8
  %1122 = icmp ult i64 %1121, %1117
  %1123 = icmp ult i64 %1121, %1118
  %1124 = or i1 %1122, %1123
  %1125 = zext i1 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1125, i8* %1126, align 1
  %1127 = trunc i64 %1121 to i32
  %1128 = and i32 %1127, 255
  %1129 = call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1132, i8* %1133, align 1
  %1134 = xor i64 %1118, %1117
  %1135 = xor i64 %1134, %1121
  %1136 = lshr i64 %1135, 4
  %1137 = trunc i64 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1138, i8* %1139, align 1
  %1140 = icmp eq i64 %1121, 0
  %1141 = zext i1 %1140 to i8
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1141, i8* %1142, align 1
  %1143 = lshr i64 %1121, 63
  %1144 = trunc i64 %1143 to i8
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1144, i8* %1145, align 1
  %1146 = lshr i64 %1117, 63
  %1147 = lshr i64 %1118, 63
  %1148 = xor i64 %1143, %1146
  %1149 = xor i64 %1143, %1147
  %1150 = add i64 %1148, %1149
  %1151 = icmp eq i64 %1150, 2
  %1152 = zext i1 %1151 to i8
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1152, i8* %1153, align 1
  store %struct.Memory* %loadMem_41f104, %struct.Memory** %MEMORY
  %loadMem_41f107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 33
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 9
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1159 to i32*
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 1
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %1162 to i64*
  %1163 = load i32, i32* %ESI.i
  %1164 = zext i32 %1163 to i64
  %1165 = load i64, i64* %RAX.i206
  %1166 = add i64 %1165, 4
  %1167 = load i64, i64* %PC.i205
  %1168 = add i64 %1167, 3
  store i64 %1168, i64* %PC.i205
  %1169 = inttoptr i64 %1166 to i32*
  %1170 = load i32, i32* %1169
  %1171 = sub i32 %1163, %1170
  %1172 = icmp ult i32 %1163, %1170
  %1173 = zext i1 %1172 to i8
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1173, i8* %1174, align 1
  %1175 = and i32 %1171, 255
  %1176 = call i32 @llvm.ctpop.i32(i32 %1175)
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  %1179 = xor i8 %1178, 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1179, i8* %1180, align 1
  %1181 = xor i32 %1170, %1163
  %1182 = xor i32 %1181, %1171
  %1183 = lshr i32 %1182, 4
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1185, i8* %1186, align 1
  %1187 = icmp eq i32 %1171, 0
  %1188 = zext i1 %1187 to i8
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1188, i8* %1189, align 1
  %1190 = lshr i32 %1171, 31
  %1191 = trunc i32 %1190 to i8
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1191, i8* %1192, align 1
  %1193 = lshr i32 %1163, 31
  %1194 = lshr i32 %1170, 31
  %1195 = xor i32 %1194, %1193
  %1196 = xor i32 %1190, %1193
  %1197 = add i32 %1196, %1195
  %1198 = icmp eq i32 %1197, 2
  %1199 = zext i1 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1199, i8* %1200, align 1
  store %struct.Memory* %loadMem_41f107, %struct.Memory** %MEMORY
  %loadMem_41f10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1203 to i64*
  %1204 = load i64, i64* %PC.i204
  %1205 = add i64 %1204, 99
  %1206 = load i64, i64* %PC.i204
  %1207 = add i64 %1206, 6
  %1208 = load i64, i64* %PC.i204
  %1209 = add i64 %1208, 6
  store i64 %1209, i64* %PC.i204
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1211 = load i8, i8* %1210, align 1
  %1212 = icmp eq i8 %1211, 0
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %BRANCH_TAKEN, align 1
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1215 = select i1 %1212, i64 %1205, i64 %1207
  store i64 %1215, i64* %1214, align 8
  store %struct.Memory* %loadMem_41f10a, %struct.Memory** %MEMORY
  %loadBr_41f10a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f10a = icmp eq i8 %loadBr_41f10a, 1
  br i1 %cmpBr_41f10a, label %block_.L_41f16d, label %block_41f110

block_41f110:                                     ; preds = %block_.L_41f0d7
  %loadMem_41f110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 33
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 1
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %1221 to i64*
  %1222 = load i64, i64* %PC.i202
  %1223 = add i64 %1222, 10
  store i64 %1223, i64* %PC.i202
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_41f110, %struct.Memory** %MEMORY
  %loadMem_41f11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 5
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %1229 to i64*
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 15
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %1232 to i64*
  %1233 = load i64, i64* %RBP.i201
  %1234 = sub i64 %1233, 8
  %1235 = load i64, i64* %PC.i199
  %1236 = add i64 %1235, 4
  store i64 %1236, i64* %PC.i199
  %1237 = inttoptr i64 %1234 to i32*
  %1238 = load i32, i32* %1237
  %1239 = sext i32 %1238 to i64
  store i64 %1239, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_41f11a, %struct.Memory** %MEMORY
  %loadMem_41f11e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 33
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1242 to i64*
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 5
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %1245 to i64*
  %1246 = load i64, i64* %RCX.i198
  %1247 = load i64, i64* %PC.i197
  %1248 = add i64 %1247, 7
  store i64 %1248, i64* %PC.i197
  %1249 = sext i64 %1246 to i128
  %1250 = and i128 %1249, -18446744073709551616
  %1251 = zext i64 %1246 to i128
  %1252 = or i128 %1250, %1251
  %1253 = mul i128 380, %1252
  %1254 = trunc i128 %1253 to i64
  store i64 %1254, i64* %RCX.i198, align 8
  %1255 = sext i64 %1254 to i128
  %1256 = icmp ne i128 %1255, %1253
  %1257 = zext i1 %1256 to i8
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1257, i8* %1258, align 1
  %1259 = trunc i128 %1253 to i32
  %1260 = and i32 %1259, 255
  %1261 = call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1264, i8* %1265, align 1
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1266, align 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1267, align 1
  %1268 = lshr i64 %1254, 63
  %1269 = trunc i64 %1268 to i8
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1269, i8* %1270, align 1
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1257, i8* %1271, align 1
  store %struct.Memory* %loadMem_41f11e, %struct.Memory** %MEMORY
  %loadMem_41f125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 33
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 1
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 5
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %1280 to i64*
  %1281 = load i64, i64* %RAX.i195
  %1282 = load i64, i64* %RCX.i196
  %1283 = load i64, i64* %PC.i194
  %1284 = add i64 %1283, 3
  store i64 %1284, i64* %PC.i194
  %1285 = add i64 %1282, %1281
  store i64 %1285, i64* %RAX.i195, align 8
  %1286 = icmp ult i64 %1285, %1281
  %1287 = icmp ult i64 %1285, %1282
  %1288 = or i1 %1286, %1287
  %1289 = zext i1 %1288 to i8
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1289, i8* %1290, align 1
  %1291 = trunc i64 %1285 to i32
  %1292 = and i32 %1291, 255
  %1293 = call i32 @llvm.ctpop.i32(i32 %1292)
  %1294 = trunc i32 %1293 to i8
  %1295 = and i8 %1294, 1
  %1296 = xor i8 %1295, 1
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1296, i8* %1297, align 1
  %1298 = xor i64 %1282, %1281
  %1299 = xor i64 %1298, %1285
  %1300 = lshr i64 %1299, 4
  %1301 = trunc i64 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1302, i8* %1303, align 1
  %1304 = icmp eq i64 %1285, 0
  %1305 = zext i1 %1304 to i8
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1305, i8* %1306, align 1
  %1307 = lshr i64 %1285, 63
  %1308 = trunc i64 %1307 to i8
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1308, i8* %1309, align 1
  %1310 = lshr i64 %1281, 63
  %1311 = lshr i64 %1282, 63
  %1312 = xor i64 %1307, %1310
  %1313 = xor i64 %1307, %1311
  %1314 = add i64 %1312, %1313
  %1315 = icmp eq i64 %1314, 2
  %1316 = zext i1 %1315 to i8
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1316, i8* %1317, align 1
  store %struct.Memory* %loadMem_41f125, %struct.Memory** %MEMORY
  %loadMem_41f128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 33
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 1
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %1323 to i64*
  %1324 = load i64, i64* %RAX.i193
  %1325 = add i64 %1324, 100
  %1326 = load i64, i64* %PC.i192
  %1327 = add i64 %1326, 4
  store i64 %1327, i64* %PC.i192
  %1328 = inttoptr i64 %1325 to i32*
  %1329 = load i32, i32* %1328
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1330, align 1
  %1331 = and i32 %1329, 255
  %1332 = call i32 @llvm.ctpop.i32(i32 %1331)
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  %1335 = xor i8 %1334, 1
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1335, i8* %1336, align 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1337, align 1
  %1338 = icmp eq i32 %1329, 0
  %1339 = zext i1 %1338 to i8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1339, i8* %1340, align 1
  %1341 = lshr i32 %1329, 31
  %1342 = trunc i32 %1341 to i8
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1342, i8* %1343, align 1
  %1344 = lshr i32 %1329, 31
  %1345 = xor i32 %1341, %1344
  %1346 = add i32 %1345, %1344
  %1347 = icmp eq i32 %1346, 2
  %1348 = zext i1 %1347 to i8
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1348, i8* %1349, align 1
  store %struct.Memory* %loadMem_41f128, %struct.Memory** %MEMORY
  %loadMem_41f12c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1352 to i64*
  %1353 = load i64, i64* %PC.i191
  %1354 = add i64 %1353, 65
  %1355 = load i64, i64* %PC.i191
  %1356 = add i64 %1355, 6
  %1357 = load i64, i64* %PC.i191
  %1358 = add i64 %1357, 6
  store i64 %1358, i64* %PC.i191
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1360 = load i8, i8* %1359, align 1
  store i8 %1360, i8* %BRANCH_TAKEN, align 1
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1362 = icmp ne i8 %1360, 0
  %1363 = select i1 %1362, i64 %1354, i64 %1356
  store i64 %1363, i64* %1361, align 8
  store %struct.Memory* %loadMem_41f12c, %struct.Memory** %MEMORY
  %loadBr_41f12c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f12c = icmp eq i8 %loadBr_41f12c, 1
  br i1 %cmpBr_41f12c, label %block_.L_41f16d, label %block_41f132

block_41f132:                                     ; preds = %block_41f110
  %loadMem_41f132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 1
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %1369 to i64*
  %1370 = load i64, i64* %PC.i189
  %1371 = add i64 %1370, 10
  store i64 %1371, i64* %PC.i189
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i190, align 8
  store %struct.Memory* %loadMem_41f132, %struct.Memory** %MEMORY
  %loadMem_41f13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 33
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %1374 to i64*
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 5
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 15
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %1380 to i64*
  %1381 = load i64, i64* %RBP.i188
  %1382 = sub i64 %1381, 8
  %1383 = load i64, i64* %PC.i186
  %1384 = add i64 %1383, 4
  store i64 %1384, i64* %PC.i186
  %1385 = inttoptr i64 %1382 to i32*
  %1386 = load i32, i32* %1385
  %1387 = sext i32 %1386 to i64
  store i64 %1387, i64* %RCX.i187, align 8
  store %struct.Memory* %loadMem_41f13c, %struct.Memory** %MEMORY
  %loadMem_41f140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 33
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %1390 to i64*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 5
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %1393 to i64*
  %1394 = load i64, i64* %RCX.i185
  %1395 = load i64, i64* %PC.i184
  %1396 = add i64 %1395, 7
  store i64 %1396, i64* %PC.i184
  %1397 = sext i64 %1394 to i128
  %1398 = and i128 %1397, -18446744073709551616
  %1399 = zext i64 %1394 to i128
  %1400 = or i128 %1398, %1399
  %1401 = mul i128 380, %1400
  %1402 = trunc i128 %1401 to i64
  store i64 %1402, i64* %RCX.i185, align 8
  %1403 = sext i64 %1402 to i128
  %1404 = icmp ne i128 %1403, %1401
  %1405 = zext i1 %1404 to i8
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1405, i8* %1406, align 1
  %1407 = trunc i128 %1401 to i32
  %1408 = and i32 %1407, 255
  %1409 = call i32 @llvm.ctpop.i32(i32 %1408)
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  %1412 = xor i8 %1411, 1
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1412, i8* %1413, align 1
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1414, align 1
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1415, align 1
  %1416 = lshr i64 %1402, 63
  %1417 = trunc i64 %1416 to i8
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1417, i8* %1418, align 1
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1405, i8* %1419, align 1
  store %struct.Memory* %loadMem_41f140, %struct.Memory** %MEMORY
  %loadMem_41f147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 33
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %1422 to i64*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 1
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %1425 to i64*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 5
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %1428 to i64*
  %1429 = load i64, i64* %RAX.i182
  %1430 = load i64, i64* %RCX.i183
  %1431 = load i64, i64* %PC.i181
  %1432 = add i64 %1431, 3
  store i64 %1432, i64* %PC.i181
  %1433 = add i64 %1430, %1429
  store i64 %1433, i64* %RAX.i182, align 8
  %1434 = icmp ult i64 %1433, %1429
  %1435 = icmp ult i64 %1433, %1430
  %1436 = or i1 %1434, %1435
  %1437 = zext i1 %1436 to i8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1437, i8* %1438, align 1
  %1439 = trunc i64 %1433 to i32
  %1440 = and i32 %1439, 255
  %1441 = call i32 @llvm.ctpop.i32(i32 %1440)
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  %1444 = xor i8 %1443, 1
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1444, i8* %1445, align 1
  %1446 = xor i64 %1430, %1429
  %1447 = xor i64 %1446, %1433
  %1448 = lshr i64 %1447, 4
  %1449 = trunc i64 %1448 to i8
  %1450 = and i8 %1449, 1
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1450, i8* %1451, align 1
  %1452 = icmp eq i64 %1433, 0
  %1453 = zext i1 %1452 to i8
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1453, i8* %1454, align 1
  %1455 = lshr i64 %1433, 63
  %1456 = trunc i64 %1455 to i8
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1456, i8* %1457, align 1
  %1458 = lshr i64 %1429, 63
  %1459 = lshr i64 %1430, 63
  %1460 = xor i64 %1455, %1458
  %1461 = xor i64 %1455, %1459
  %1462 = add i64 %1460, %1461
  %1463 = icmp eq i64 %1462, 2
  %1464 = zext i1 %1463 to i8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1464, i8* %1465, align 1
  store %struct.Memory* %loadMem_41f147, %struct.Memory** %MEMORY
  %loadMem_41f14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 1
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %1471 to i64*
  %1472 = load i64, i64* %RAX.i180
  %1473 = add i64 %1472, 180
  %1474 = load i64, i64* %PC.i179
  %1475 = add i64 %1474, 7
  store i64 %1475, i64* %PC.i179
  %1476 = inttoptr i64 %1473 to i32*
  %1477 = load i32, i32* %1476
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1478, align 1
  %1479 = and i32 %1477, 255
  %1480 = call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1483, i8* %1484, align 1
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1485, align 1
  %1486 = icmp eq i32 %1477, 0
  %1487 = zext i1 %1486 to i8
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1487, i8* %1488, align 1
  %1489 = lshr i32 %1477, 31
  %1490 = trunc i32 %1489 to i8
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1490, i8* %1491, align 1
  %1492 = lshr i32 %1477, 31
  %1493 = xor i32 %1489, %1492
  %1494 = add i32 %1493, %1492
  %1495 = icmp eq i32 %1494, 2
  %1496 = zext i1 %1495 to i8
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1496, i8* %1497, align 1
  store %struct.Memory* %loadMem_41f14a, %struct.Memory** %MEMORY
  %loadMem_41f151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 33
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1500 to i64*
  %1501 = load i64, i64* %PC.i178
  %1502 = add i64 %1501, 28
  %1503 = load i64, i64* %PC.i178
  %1504 = add i64 %1503, 6
  %1505 = load i64, i64* %PC.i178
  %1506 = add i64 %1505, 6
  store i64 %1506, i64* %PC.i178
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1508 = load i8, i8* %1507, align 1
  %1509 = icmp eq i8 %1508, 0
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %BRANCH_TAKEN, align 1
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1512 = select i1 %1509, i64 %1502, i64 %1504
  store i64 %1512, i64* %1511, align 8
  store %struct.Memory* %loadMem_41f151, %struct.Memory** %MEMORY
  %loadBr_41f151 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f151 = icmp eq i8 %loadBr_41f151, 1
  br i1 %cmpBr_41f151, label %block_.L_41f16d, label %block_41f157

block_41f157:                                     ; preds = %block_41f132
  %loadMem_41f157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 15
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RBP.i177
  %1520 = sub i64 %1519, 20
  %1521 = load i64, i64* %PC.i176
  %1522 = add i64 %1521, 4
  store i64 %1522, i64* %PC.i176
  %1523 = inttoptr i64 %1520 to i32*
  %1524 = load i32, i32* %1523
  %1525 = sub i32 %1524, 3
  %1526 = icmp ult i32 %1524, 3
  %1527 = zext i1 %1526 to i8
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1527, i8* %1528, align 1
  %1529 = and i32 %1525, 255
  %1530 = call i32 @llvm.ctpop.i32(i32 %1529)
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1533, i8* %1534, align 1
  %1535 = xor i32 %1524, 3
  %1536 = xor i32 %1535, %1525
  %1537 = lshr i32 %1536, 4
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1539, i8* %1540, align 1
  %1541 = icmp eq i32 %1525, 0
  %1542 = zext i1 %1541 to i8
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1542, i8* %1543, align 1
  %1544 = lshr i32 %1525, 31
  %1545 = trunc i32 %1544 to i8
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1545, i8* %1546, align 1
  %1547 = lshr i32 %1524, 31
  %1548 = xor i32 %1544, %1547
  %1549 = add i32 %1548, %1547
  %1550 = icmp eq i32 %1549, 2
  %1551 = zext i1 %1550 to i8
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1551, i8* %1552, align 1
  store %struct.Memory* %loadMem_41f157, %struct.Memory** %MEMORY
  %loadMem_41f15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 33
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %1555 to i64*
  %1556 = load i64, i64* %PC.i175
  %1557 = add i64 %1556, 18
  %1558 = load i64, i64* %PC.i175
  %1559 = add i64 %1558, 6
  %1560 = load i64, i64* %PC.i175
  %1561 = add i64 %1560, 6
  store i64 %1561, i64* %PC.i175
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1563 = load i8, i8* %1562, align 1
  %1564 = icmp ne i8 %1563, 0
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1566 = load i8, i8* %1565, align 1
  %1567 = icmp ne i8 %1566, 0
  %1568 = xor i1 %1564, %1567
  %1569 = xor i1 %1568, true
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %BRANCH_TAKEN, align 1
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1572 = select i1 %1568, i64 %1559, i64 %1557
  store i64 %1572, i64* %1571, align 8
  store %struct.Memory* %loadMem_41f15b, %struct.Memory** %MEMORY
  %loadBr_41f15b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f15b = icmp eq i8 %loadBr_41f15b, 1
  br i1 %cmpBr_41f15b, label %block_.L_41f16d, label %block_41f161

block_41f161:                                     ; preds = %block_41f157
  %loadMem_41f161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 33
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 15
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %1578 to i64*
  %1579 = load i64, i64* %RBP.i174
  %1580 = sub i64 %1579, 4
  %1581 = load i64, i64* %PC.i173
  %1582 = add i64 %1581, 7
  store i64 %1582, i64* %PC.i173
  %1583 = inttoptr i64 %1580 to i32*
  store i32 0, i32* %1583
  store %struct.Memory* %loadMem_41f161, %struct.Memory** %MEMORY
  %loadMem_41f168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1586 to i64*
  %1587 = load i64, i64* %PC.i172
  %1588 = add i64 %1587, 455
  %1589 = load i64, i64* %PC.i172
  %1590 = add i64 %1589, 5
  store i64 %1590, i64* %PC.i172
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1588, i64* %1591, align 8
  store %struct.Memory* %loadMem_41f168, %struct.Memory** %MEMORY
  br label %block_.L_41f32f

block_.L_41f16d:                                  ; preds = %block_41f157, %block_41f132, %block_41f110, %block_.L_41f0d7
  %loadMem_41f16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 15
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %1597 to i64*
  %1598 = load i64, i64* %RBP.i171
  %1599 = sub i64 %1598, 24
  %1600 = load i64, i64* %PC.i170
  %1601 = add i64 %1600, 4
  store i64 %1601, i64* %PC.i170
  %1602 = inttoptr i64 %1599 to i32*
  %1603 = load i32, i32* %1602
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1604, align 1
  %1605 = and i32 %1603, 255
  %1606 = call i32 @llvm.ctpop.i32(i32 %1605)
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  %1609 = xor i8 %1608, 1
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1609, i8* %1610, align 1
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1611, align 1
  %1612 = icmp eq i32 %1603, 0
  %1613 = zext i1 %1612 to i8
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1613, i8* %1614, align 1
  %1615 = lshr i32 %1603, 31
  %1616 = trunc i32 %1615 to i8
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1616, i8* %1617, align 1
  %1618 = lshr i32 %1603, 31
  %1619 = xor i32 %1615, %1618
  %1620 = add i32 %1619, %1618
  %1621 = icmp eq i32 %1620, 2
  %1622 = zext i1 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1622, i8* %1623, align 1
  store %struct.Memory* %loadMem_41f16d, %struct.Memory** %MEMORY
  %loadMem_41f171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1626 to i64*
  %1627 = load i64, i64* %PC.i169
  %1628 = add i64 %1627, 164
  %1629 = load i64, i64* %PC.i169
  %1630 = add i64 %1629, 6
  %1631 = load i64, i64* %PC.i169
  %1632 = add i64 %1631, 6
  store i64 %1632, i64* %PC.i169
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1634 = load i8, i8* %1633, align 1
  store i8 %1634, i8* %BRANCH_TAKEN, align 1
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1636 = icmp ne i8 %1634, 0
  %1637 = select i1 %1636, i64 %1628, i64 %1630
  store i64 %1637, i64* %1635, align 8
  store %struct.Memory* %loadMem_41f171, %struct.Memory** %MEMORY
  %loadBr_41f171 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f171 = icmp eq i8 %loadBr_41f171, 1
  br i1 %cmpBr_41f171, label %block_.L_41f215, label %block_41f177

block_41f177:                                     ; preds = %block_.L_41f16d
  %loadMem_41f177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 15
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %1643 to i64*
  %1644 = load i64, i64* %RBP.i168
  %1645 = sub i64 %1644, 20
  %1646 = load i64, i64* %PC.i167
  %1647 = add i64 %1646, 4
  store i64 %1647, i64* %PC.i167
  %1648 = inttoptr i64 %1645 to i32*
  %1649 = load i32, i32* %1648
  %1650 = sub i32 %1649, 3
  %1651 = icmp ult i32 %1649, 3
  %1652 = zext i1 %1651 to i8
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1652, i8* %1653, align 1
  %1654 = and i32 %1650, 255
  %1655 = call i32 @llvm.ctpop.i32(i32 %1654)
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = xor i8 %1657, 1
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1658, i8* %1659, align 1
  %1660 = xor i32 %1649, 3
  %1661 = xor i32 %1660, %1650
  %1662 = lshr i32 %1661, 4
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1664, i8* %1665, align 1
  %1666 = icmp eq i32 %1650, 0
  %1667 = zext i1 %1666 to i8
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1667, i8* %1668, align 1
  %1669 = lshr i32 %1650, 31
  %1670 = trunc i32 %1669 to i8
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1670, i8* %1671, align 1
  %1672 = lshr i32 %1649, 31
  %1673 = xor i32 %1669, %1672
  %1674 = add i32 %1673, %1672
  %1675 = icmp eq i32 %1674, 2
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1676, i8* %1677, align 1
  store %struct.Memory* %loadMem_41f177, %struct.Memory** %MEMORY
  %loadMem_41f17b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1680 to i64*
  %1681 = load i64, i64* %PC.i166
  %1682 = add i64 %1681, 154
  %1683 = load i64, i64* %PC.i166
  %1684 = add i64 %1683, 6
  %1685 = load i64, i64* %PC.i166
  %1686 = add i64 %1685, 6
  store i64 %1686, i64* %PC.i166
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1688 = load i8, i8* %1687, align 1
  %1689 = icmp ne i8 %1688, 0
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1691 = load i8, i8* %1690, align 1
  %1692 = icmp ne i8 %1691, 0
  %1693 = xor i1 %1689, %1692
  %1694 = xor i1 %1693, true
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %BRANCH_TAKEN, align 1
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1697 = select i1 %1693, i64 %1684, i64 %1682
  store i64 %1697, i64* %1696, align 8
  store %struct.Memory* %loadMem_41f17b, %struct.Memory** %MEMORY
  %loadBr_41f17b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f17b = icmp eq i8 %loadBr_41f17b, 1
  br i1 %cmpBr_41f17b, label %block_.L_41f215, label %block_41f181

block_41f181:                                     ; preds = %block_41f177
  %loadMem_41f181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 1
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %1703 to i64*
  %1704 = load i64, i64* %PC.i164
  %1705 = add i64 %1704, 10
  store i64 %1705, i64* %PC.i164
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_41f181, %struct.Memory** %MEMORY
  %loadMem_41f18b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 5
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 15
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %1714 to i64*
  %1715 = load i64, i64* %RBP.i163
  %1716 = sub i64 %1715, 24
  %1717 = load i64, i64* %PC.i161
  %1718 = add i64 %1717, 4
  store i64 %1718, i64* %PC.i161
  %1719 = inttoptr i64 %1716 to i32*
  %1720 = load i32, i32* %1719
  %1721 = sext i32 %1720 to i64
  store i64 %1721, i64* %RCX.i162, align 8
  store %struct.Memory* %loadMem_41f18b, %struct.Memory** %MEMORY
  %loadMem_41f18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 5
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %1727 to i64*
  %1728 = load i64, i64* %RCX.i160
  %1729 = load i64, i64* %PC.i159
  %1730 = add i64 %1729, 7
  store i64 %1730, i64* %PC.i159
  %1731 = sext i64 %1728 to i128
  %1732 = and i128 %1731, -18446744073709551616
  %1733 = zext i64 %1728 to i128
  %1734 = or i128 %1732, %1733
  %1735 = mul i128 380, %1734
  %1736 = trunc i128 %1735 to i64
  store i64 %1736, i64* %RCX.i160, align 8
  %1737 = sext i64 %1736 to i128
  %1738 = icmp ne i128 %1737, %1735
  %1739 = zext i1 %1738 to i8
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1739, i8* %1740, align 1
  %1741 = trunc i128 %1735 to i32
  %1742 = and i32 %1741, 255
  %1743 = call i32 @llvm.ctpop.i32(i32 %1742)
  %1744 = trunc i32 %1743 to i8
  %1745 = and i8 %1744, 1
  %1746 = xor i8 %1745, 1
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1746, i8* %1747, align 1
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1748, align 1
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1749, align 1
  %1750 = lshr i64 %1736, 63
  %1751 = trunc i64 %1750 to i8
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1751, i8* %1752, align 1
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1739, i8* %1753, align 1
  store %struct.Memory* %loadMem_41f18f, %struct.Memory** %MEMORY
  %loadMem_41f196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 1
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 5
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %1762 to i64*
  %1763 = load i64, i64* %RAX.i157
  %1764 = load i64, i64* %RCX.i158
  %1765 = load i64, i64* %PC.i156
  %1766 = add i64 %1765, 3
  store i64 %1766, i64* %PC.i156
  %1767 = add i64 %1764, %1763
  store i64 %1767, i64* %RAX.i157, align 8
  %1768 = icmp ult i64 %1767, %1763
  %1769 = icmp ult i64 %1767, %1764
  %1770 = or i1 %1768, %1769
  %1771 = zext i1 %1770 to i8
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1771, i8* %1772, align 1
  %1773 = trunc i64 %1767 to i32
  %1774 = and i32 %1773, 255
  %1775 = call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1778, i8* %1779, align 1
  %1780 = xor i64 %1764, %1763
  %1781 = xor i64 %1780, %1767
  %1782 = lshr i64 %1781, 4
  %1783 = trunc i64 %1782 to i8
  %1784 = and i8 %1783, 1
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1784, i8* %1785, align 1
  %1786 = icmp eq i64 %1767, 0
  %1787 = zext i1 %1786 to i8
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1787, i8* %1788, align 1
  %1789 = lshr i64 %1767, 63
  %1790 = trunc i64 %1789 to i8
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1790, i8* %1791, align 1
  %1792 = lshr i64 %1763, 63
  %1793 = lshr i64 %1764, 63
  %1794 = xor i64 %1789, %1792
  %1795 = xor i64 %1789, %1793
  %1796 = add i64 %1794, %1795
  %1797 = icmp eq i64 %1796, 2
  %1798 = zext i1 %1797 to i8
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1798, i8* %1799, align 1
  store %struct.Memory* %loadMem_41f196, %struct.Memory** %MEMORY
  %loadMem_41f199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 33
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 1
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %RAX.i155
  %1807 = add i64 %1806, 180
  %1808 = load i64, i64* %PC.i154
  %1809 = add i64 %1808, 7
  store i64 %1809, i64* %PC.i154
  %1810 = inttoptr i64 %1807 to i32*
  %1811 = load i32, i32* %1810
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1812, align 1
  %1813 = and i32 %1811, 255
  %1814 = call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1817, i8* %1818, align 1
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1819, align 1
  %1820 = icmp eq i32 %1811, 0
  %1821 = zext i1 %1820 to i8
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1821, i8* %1822, align 1
  %1823 = lshr i32 %1811, 31
  %1824 = trunc i32 %1823 to i8
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1824, i8* %1825, align 1
  %1826 = lshr i32 %1811, 31
  %1827 = xor i32 %1823, %1826
  %1828 = add i32 %1827, %1826
  %1829 = icmp eq i32 %1828, 2
  %1830 = zext i1 %1829 to i8
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1830, i8* %1831, align 1
  store %struct.Memory* %loadMem_41f199, %struct.Memory** %MEMORY
  %loadMem_41f1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 33
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %1834 to i64*
  %1835 = load i64, i64* %PC.i153
  %1836 = add i64 %1835, 117
  %1837 = load i64, i64* %PC.i153
  %1838 = add i64 %1837, 6
  %1839 = load i64, i64* %PC.i153
  %1840 = add i64 %1839, 6
  store i64 %1840, i64* %PC.i153
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1842 = load i8, i8* %1841, align 1
  store i8 %1842, i8* %BRANCH_TAKEN, align 1
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1844 = icmp ne i8 %1842, 0
  %1845 = select i1 %1844, i64 %1836, i64 %1838
  store i64 %1845, i64* %1843, align 8
  store %struct.Memory* %loadMem_41f1a0, %struct.Memory** %MEMORY
  %loadBr_41f1a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f1a0 = icmp eq i8 %loadBr_41f1a0, 1
  br i1 %cmpBr_41f1a0, label %block_.L_41f215, label %block_41f1a6

block_41f1a6:                                     ; preds = %block_41f181
  %loadMem_41f1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 33
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1848 to i64*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 1
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %1851 to i64*
  %1852 = load i64, i64* %PC.i151
  %1853 = add i64 %1852, 10
  store i64 %1853, i64* %PC.i151
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i152, align 8
  store %struct.Memory* %loadMem_41f1a6, %struct.Memory** %MEMORY
  %loadMem_41f1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 33
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 5
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %PC.i149
  %1861 = add i64 %1860, 8
  store i64 %1861, i64* %PC.i149
  %1862 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %1862, i64* %RCX.i150, align 8
  store %struct.Memory* %loadMem_41f1b0, %struct.Memory** %MEMORY
  %loadMem_41f1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 7
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %RDX.i147 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 15
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %RBP.i148
  %1873 = sub i64 %1872, 8
  %1874 = load i64, i64* %PC.i146
  %1875 = add i64 %1874, 4
  store i64 %1875, i64* %PC.i146
  %1876 = inttoptr i64 %1873 to i32*
  %1877 = load i32, i32* %1876
  %1878 = sext i32 %1877 to i64
  store i64 %1878, i64* %RDX.i147, align 8
  store %struct.Memory* %loadMem_41f1b8, %struct.Memory** %MEMORY
  %loadMem_41f1bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 33
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1881 to i64*
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 7
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %RDX.i145 = bitcast %union.anon* %1884 to i64*
  %1885 = load i64, i64* %RDX.i145
  %1886 = load i64, i64* %PC.i144
  %1887 = add i64 %1886, 4
  store i64 %1887, i64* %PC.i144
  %1888 = sext i64 %1885 to i128
  %1889 = and i128 %1888, -18446744073709551616
  %1890 = zext i64 %1885 to i128
  %1891 = or i128 %1889, %1890
  %1892 = mul i128 76, %1891
  %1893 = trunc i128 %1892 to i64
  store i64 %1893, i64* %RDX.i145, align 8
  %1894 = sext i64 %1893 to i128
  %1895 = icmp ne i128 %1894, %1892
  %1896 = zext i1 %1895 to i8
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1896, i8* %1897, align 1
  %1898 = trunc i128 %1892 to i32
  %1899 = and i32 %1898, 255
  %1900 = call i32 @llvm.ctpop.i32(i32 %1899)
  %1901 = trunc i32 %1900 to i8
  %1902 = and i8 %1901, 1
  %1903 = xor i8 %1902, 1
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1903, i8* %1904, align 1
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1905, align 1
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1906, align 1
  %1907 = lshr i64 %1893, 63
  %1908 = trunc i64 %1907 to i8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1908, i8* %1909, align 1
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1896, i8* %1910, align 1
  store %struct.Memory* %loadMem_41f1bc, %struct.Memory** %MEMORY
  %loadMem_41f1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 33
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 1
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %1916 to i64*
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 7
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %RDX.i143 = bitcast %union.anon* %1919 to i64*
  %1920 = load i64, i64* %RAX.i142
  %1921 = load i64, i64* %RDX.i143
  %1922 = load i64, i64* %PC.i141
  %1923 = add i64 %1922, 3
  store i64 %1923, i64* %PC.i141
  %1924 = add i64 %1921, %1920
  store i64 %1924, i64* %RAX.i142, align 8
  %1925 = icmp ult i64 %1924, %1920
  %1926 = icmp ult i64 %1924, %1921
  %1927 = or i1 %1925, %1926
  %1928 = zext i1 %1927 to i8
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1928, i8* %1929, align 1
  %1930 = trunc i64 %1924 to i32
  %1931 = and i32 %1930, 255
  %1932 = call i32 @llvm.ctpop.i32(i32 %1931)
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  %1935 = xor i8 %1934, 1
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1935, i8* %1936, align 1
  %1937 = xor i64 %1921, %1920
  %1938 = xor i64 %1937, %1924
  %1939 = lshr i64 %1938, 4
  %1940 = trunc i64 %1939 to i8
  %1941 = and i8 %1940, 1
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1941, i8* %1942, align 1
  %1943 = icmp eq i64 %1924, 0
  %1944 = zext i1 %1943 to i8
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1944, i8* %1945, align 1
  %1946 = lshr i64 %1924, 63
  %1947 = trunc i64 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1947, i8* %1948, align 1
  %1949 = lshr i64 %1920, 63
  %1950 = lshr i64 %1921, 63
  %1951 = xor i64 %1946, %1949
  %1952 = xor i64 %1946, %1950
  %1953 = add i64 %1951, %1952
  %1954 = icmp eq i64 %1953, 2
  %1955 = zext i1 %1954 to i8
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1955, i8* %1956, align 1
  store %struct.Memory* %loadMem_41f1c0, %struct.Memory** %MEMORY
  %loadMem_41f1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 33
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %1959 to i64*
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 1
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %1962 to i64*
  %1963 = load i64, i64* %RAX.i140
  %1964 = add i64 %1963, 4
  %1965 = load i64, i64* %PC.i139
  %1966 = add i64 %1965, 4
  store i64 %1966, i64* %PC.i139
  %1967 = inttoptr i64 %1964 to i32*
  %1968 = load i32, i32* %1967
  %1969 = sext i32 %1968 to i64
  store i64 %1969, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_41f1c3, %struct.Memory** %MEMORY
  %loadMem_41f1c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 33
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 1
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %1975 to i64*
  %1976 = load i64, i64* %RAX.i138
  %1977 = load i64, i64* %PC.i137
  %1978 = add i64 %1977, 4
  store i64 %1978, i64* %PC.i137
  %1979 = sext i64 %1976 to i128
  %1980 = and i128 %1979, -18446744073709551616
  %1981 = zext i64 %1976 to i128
  %1982 = or i128 %1980, %1981
  %1983 = mul i128 104, %1982
  %1984 = trunc i128 %1983 to i64
  store i64 %1984, i64* %RAX.i138, align 8
  %1985 = sext i64 %1984 to i128
  %1986 = icmp ne i128 %1985, %1983
  %1987 = zext i1 %1986 to i8
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1987, i8* %1988, align 1
  %1989 = trunc i128 %1983 to i32
  %1990 = and i32 %1989, 255
  %1991 = call i32 @llvm.ctpop.i32(i32 %1990)
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = xor i8 %1993, 1
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1994, i8* %1995, align 1
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1996, align 1
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1997, align 1
  %1998 = lshr i64 %1984, 63
  %1999 = trunc i64 %1998 to i8
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1999, i8* %2000, align 1
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1987, i8* %2001, align 1
  store %struct.Memory* %loadMem_41f1c7, %struct.Memory** %MEMORY
  %loadMem_41f1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 33
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 1
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 5
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %2010 to i64*
  %2011 = load i64, i64* %RCX.i136
  %2012 = load i64, i64* %RAX.i135
  %2013 = load i64, i64* %PC.i134
  %2014 = add i64 %2013, 3
  store i64 %2014, i64* %PC.i134
  %2015 = add i64 %2012, %2011
  store i64 %2015, i64* %RCX.i136, align 8
  %2016 = icmp ult i64 %2015, %2011
  %2017 = icmp ult i64 %2015, %2012
  %2018 = or i1 %2016, %2017
  %2019 = zext i1 %2018 to i8
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2019, i8* %2020, align 1
  %2021 = trunc i64 %2015 to i32
  %2022 = and i32 %2021, 255
  %2023 = call i32 @llvm.ctpop.i32(i32 %2022)
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  %2026 = xor i8 %2025, 1
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2026, i8* %2027, align 1
  %2028 = xor i64 %2012, %2011
  %2029 = xor i64 %2028, %2015
  %2030 = lshr i64 %2029, 4
  %2031 = trunc i64 %2030 to i8
  %2032 = and i8 %2031, 1
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2032, i8* %2033, align 1
  %2034 = icmp eq i64 %2015, 0
  %2035 = zext i1 %2034 to i8
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2035, i8* %2036, align 1
  %2037 = lshr i64 %2015, 63
  %2038 = trunc i64 %2037 to i8
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2038, i8* %2039, align 1
  %2040 = lshr i64 %2011, 63
  %2041 = lshr i64 %2012, 63
  %2042 = xor i64 %2037, %2040
  %2043 = xor i64 %2037, %2041
  %2044 = add i64 %2042, %2043
  %2045 = icmp eq i64 %2044, 2
  %2046 = zext i1 %2045 to i8
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2046, i8* %2047, align 1
  store %struct.Memory* %loadMem_41f1cb, %struct.Memory** %MEMORY
  %loadMem_41f1ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 33
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 5
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %RCX.i133
  %2055 = add i64 %2054, 72
  %2056 = load i64, i64* %PC.i132
  %2057 = add i64 %2056, 4
  store i64 %2057, i64* %PC.i132
  %2058 = inttoptr i64 %2055 to i32*
  %2059 = load i32, i32* %2058
  %2060 = sub i32 %2059, 5
  %2061 = icmp ult i32 %2059, 5
  %2062 = zext i1 %2061 to i8
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2062, i8* %2063, align 1
  %2064 = and i32 %2060, 255
  %2065 = call i32 @llvm.ctpop.i32(i32 %2064)
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2068, i8* %2069, align 1
  %2070 = xor i32 %2059, 5
  %2071 = xor i32 %2070, %2060
  %2072 = lshr i32 %2071, 4
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2074, i8* %2075, align 1
  %2076 = icmp eq i32 %2060, 0
  %2077 = zext i1 %2076 to i8
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2077, i8* %2078, align 1
  %2079 = lshr i32 %2060, 31
  %2080 = trunc i32 %2079 to i8
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2080, i8* %2081, align 1
  %2082 = lshr i32 %2059, 31
  %2083 = xor i32 %2079, %2082
  %2084 = add i32 %2083, %2082
  %2085 = icmp eq i32 %2084, 2
  %2086 = zext i1 %2085 to i8
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2086, i8* %2087, align 1
  store %struct.Memory* %loadMem_41f1ce, %struct.Memory** %MEMORY
  %loadMem_41f1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %PC.i131
  %2092 = add i64 %2091, 67
  %2093 = load i64, i64* %PC.i131
  %2094 = add i64 %2093, 6
  %2095 = load i64, i64* %PC.i131
  %2096 = add i64 %2095, 6
  store i64 %2096, i64* %PC.i131
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2098 = load i8, i8* %2097, align 1
  %2099 = icmp ne i8 %2098, 0
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2101 = load i8, i8* %2100, align 1
  %2102 = icmp ne i8 %2101, 0
  %2103 = xor i1 %2099, %2102
  %2104 = xor i1 %2103, true
  %2105 = zext i1 %2104 to i8
  store i8 %2105, i8* %BRANCH_TAKEN, align 1
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2107 = select i1 %2103, i64 %2094, i64 %2092
  store i64 %2107, i64* %2106, align 8
  store %struct.Memory* %loadMem_41f1d2, %struct.Memory** %MEMORY
  %loadBr_41f1d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f1d2 = icmp eq i8 %loadBr_41f1d2, 1
  br i1 %cmpBr_41f1d2, label %block_.L_41f215, label %block_41f1d8

block_41f1d8:                                     ; preds = %block_41f1a6
  %loadMem_41f1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 33
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 15
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %2113 to i64*
  %2114 = load i64, i64* %RBP.i130
  %2115 = sub i64 %2114, 20
  %2116 = load i64, i64* %PC.i129
  %2117 = add i64 %2116, 4
  store i64 %2117, i64* %PC.i129
  %2118 = inttoptr i64 %2115 to i32*
  %2119 = load i32, i32* %2118
  %2120 = sub i32 %2119, 2
  %2121 = icmp ult i32 %2119, 2
  %2122 = zext i1 %2121 to i8
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2122, i8* %2123, align 1
  %2124 = and i32 %2120, 255
  %2125 = call i32 @llvm.ctpop.i32(i32 %2124)
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  %2128 = xor i8 %2127, 1
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2128, i8* %2129, align 1
  %2130 = xor i32 %2119, 2
  %2131 = xor i32 %2130, %2120
  %2132 = lshr i32 %2131, 4
  %2133 = trunc i32 %2132 to i8
  %2134 = and i8 %2133, 1
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2134, i8* %2135, align 1
  %2136 = icmp eq i32 %2120, 0
  %2137 = zext i1 %2136 to i8
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2137, i8* %2138, align 1
  %2139 = lshr i32 %2120, 31
  %2140 = trunc i32 %2139 to i8
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2140, i8* %2141, align 1
  %2142 = lshr i32 %2119, 31
  %2143 = xor i32 %2139, %2142
  %2144 = add i32 %2143, %2142
  %2145 = icmp eq i32 %2144, 2
  %2146 = zext i1 %2145 to i8
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2146, i8* %2147, align 1
  store %struct.Memory* %loadMem_41f1d8, %struct.Memory** %MEMORY
  %loadMem_41f1dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 33
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2150 to i64*
  %2151 = load i64, i64* %PC.i128
  %2152 = add i64 %2151, 40
  %2153 = load i64, i64* %PC.i128
  %2154 = add i64 %2153, 6
  %2155 = load i64, i64* %PC.i128
  %2156 = add i64 %2155, 6
  store i64 %2156, i64* %PC.i128
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2158 = load i8, i8* %2157, align 1
  store i8 %2158, i8* %BRANCH_TAKEN, align 1
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2160 = icmp ne i8 %2158, 0
  %2161 = select i1 %2160, i64 %2152, i64 %2154
  store i64 %2161, i64* %2159, align 8
  store %struct.Memory* %loadMem_41f1dc, %struct.Memory** %MEMORY
  %loadBr_41f1dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f1dc = icmp eq i8 %loadBr_41f1dc, 1
  br i1 %cmpBr_41f1dc, label %block_.L_41f204, label %block_41f1e2

block_41f1e2:                                     ; preds = %block_41f1d8
  %loadMem_41f1e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 1
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %2167 to i64*
  %2168 = load i64, i64* %PC.i126
  %2169 = add i64 %2168, 10
  store i64 %2169, i64* %PC.i126
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i127, align 8
  store %struct.Memory* %loadMem_41f1e2, %struct.Memory** %MEMORY
  %loadMem_41f1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 33
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2172 to i64*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 5
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 15
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %2178 to i64*
  %2179 = load i64, i64* %RBP.i125
  %2180 = sub i64 %2179, 24
  %2181 = load i64, i64* %PC.i123
  %2182 = add i64 %2181, 4
  store i64 %2182, i64* %PC.i123
  %2183 = inttoptr i64 %2180 to i32*
  %2184 = load i32, i32* %2183
  %2185 = sext i32 %2184 to i64
  store i64 %2185, i64* %RCX.i124, align 8
  store %struct.Memory* %loadMem_41f1ec, %struct.Memory** %MEMORY
  %loadMem_41f1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 5
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %2191 to i64*
  %2192 = load i64, i64* %RCX.i122
  %2193 = load i64, i64* %PC.i121
  %2194 = add i64 %2193, 7
  store i64 %2194, i64* %PC.i121
  %2195 = sext i64 %2192 to i128
  %2196 = and i128 %2195, -18446744073709551616
  %2197 = zext i64 %2192 to i128
  %2198 = or i128 %2196, %2197
  %2199 = mul i128 380, %2198
  %2200 = trunc i128 %2199 to i64
  store i64 %2200, i64* %RCX.i122, align 8
  %2201 = sext i64 %2200 to i128
  %2202 = icmp ne i128 %2201, %2199
  %2203 = zext i1 %2202 to i8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2203, i8* %2204, align 1
  %2205 = trunc i128 %2199 to i32
  %2206 = and i32 %2205, 255
  %2207 = call i32 @llvm.ctpop.i32(i32 %2206)
  %2208 = trunc i32 %2207 to i8
  %2209 = and i8 %2208, 1
  %2210 = xor i8 %2209, 1
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2210, i8* %2211, align 1
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2212, align 1
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2213, align 1
  %2214 = lshr i64 %2200, 63
  %2215 = trunc i64 %2214 to i8
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2215, i8* %2216, align 1
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2203, i8* %2217, align 1
  store %struct.Memory* %loadMem_41f1f0, %struct.Memory** %MEMORY
  %loadMem_41f1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 33
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 1
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %2223 to i64*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 5
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %2226 to i64*
  %2227 = load i64, i64* %RAX.i119
  %2228 = load i64, i64* %RCX.i120
  %2229 = load i64, i64* %PC.i118
  %2230 = add i64 %2229, 3
  store i64 %2230, i64* %PC.i118
  %2231 = add i64 %2228, %2227
  store i64 %2231, i64* %RAX.i119, align 8
  %2232 = icmp ult i64 %2231, %2227
  %2233 = icmp ult i64 %2231, %2228
  %2234 = or i1 %2232, %2233
  %2235 = zext i1 %2234 to i8
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2235, i8* %2236, align 1
  %2237 = trunc i64 %2231 to i32
  %2238 = and i32 %2237, 255
  %2239 = call i32 @llvm.ctpop.i32(i32 %2238)
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  %2242 = xor i8 %2241, 1
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2242, i8* %2243, align 1
  %2244 = xor i64 %2228, %2227
  %2245 = xor i64 %2244, %2231
  %2246 = lshr i64 %2245, 4
  %2247 = trunc i64 %2246 to i8
  %2248 = and i8 %2247, 1
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2248, i8* %2249, align 1
  %2250 = icmp eq i64 %2231, 0
  %2251 = zext i1 %2250 to i8
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2251, i8* %2252, align 1
  %2253 = lshr i64 %2231, 63
  %2254 = trunc i64 %2253 to i8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2254, i8* %2255, align 1
  %2256 = lshr i64 %2227, 63
  %2257 = lshr i64 %2228, 63
  %2258 = xor i64 %2253, %2256
  %2259 = xor i64 %2253, %2257
  %2260 = add i64 %2258, %2259
  %2261 = icmp eq i64 %2260, 2
  %2262 = zext i1 %2261 to i8
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2262, i8* %2263, align 1
  store %struct.Memory* %loadMem_41f1f7, %struct.Memory** %MEMORY
  %loadMem_41f1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 1
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %2269 to i64*
  %2270 = load i64, i64* %RAX.i117
  %2271 = add i64 %2270, 4
  %2272 = load i64, i64* %PC.i116
  %2273 = add i64 %2272, 4
  store i64 %2273, i64* %PC.i116
  %2274 = inttoptr i64 %2271 to i32*
  %2275 = load i32, i32* %2274
  %2276 = sub i32 %2275, 2
  %2277 = icmp ult i32 %2275, 2
  %2278 = zext i1 %2277 to i8
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2278, i8* %2279, align 1
  %2280 = and i32 %2276, 255
  %2281 = call i32 @llvm.ctpop.i32(i32 %2280)
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  %2284 = xor i8 %2283, 1
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2284, i8* %2285, align 1
  %2286 = xor i32 %2275, 2
  %2287 = xor i32 %2286, %2276
  %2288 = lshr i32 %2287, 4
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2290, i8* %2291, align 1
  %2292 = icmp eq i32 %2276, 0
  %2293 = zext i1 %2292 to i8
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2293, i8* %2294, align 1
  %2295 = lshr i32 %2276, 31
  %2296 = trunc i32 %2295 to i8
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2296, i8* %2297, align 1
  %2298 = lshr i32 %2275, 31
  %2299 = xor i32 %2295, %2298
  %2300 = add i32 %2299, %2298
  %2301 = icmp eq i32 %2300, 2
  %2302 = zext i1 %2301 to i8
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2302, i8* %2303, align 1
  store %struct.Memory* %loadMem_41f1fa, %struct.Memory** %MEMORY
  %loadMem_41f1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 33
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2306 to i64*
  %2307 = load i64, i64* %PC.i115
  %2308 = add i64 %2307, 18
  %2309 = load i64, i64* %PC.i115
  %2310 = add i64 %2309, 6
  %2311 = load i64, i64* %PC.i115
  %2312 = add i64 %2311, 6
  store i64 %2312, i64* %PC.i115
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2314 = load i8, i8* %2313, align 1
  %2315 = icmp ne i8 %2314, 0
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2317 = load i8, i8* %2316, align 1
  %2318 = icmp ne i8 %2317, 0
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2320 = load i8, i8* %2319, align 1
  %2321 = icmp ne i8 %2320, 0
  %2322 = xor i1 %2318, %2321
  %2323 = or i1 %2315, %2322
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %BRANCH_TAKEN, align 1
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2326 = select i1 %2323, i64 %2308, i64 %2310
  store i64 %2326, i64* %2325, align 8
  store %struct.Memory* %loadMem_41f1fe, %struct.Memory** %MEMORY
  %loadBr_41f1fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f1fe = icmp eq i8 %loadBr_41f1fe, 1
  br i1 %cmpBr_41f1fe, label %block_.L_41f210, label %block_.L_41f204

block_.L_41f204:                                  ; preds = %block_41f1e2, %block_41f1d8
  %loadMem_41f204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 15
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %RBP.i114
  %2334 = sub i64 %2333, 4
  %2335 = load i64, i64* %PC.i113
  %2336 = add i64 %2335, 7
  store i64 %2336, i64* %PC.i113
  %2337 = inttoptr i64 %2334 to i32*
  store i32 2, i32* %2337
  store %struct.Memory* %loadMem_41f204, %struct.Memory** %MEMORY
  %loadMem_41f20b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %PC.i112
  %2342 = add i64 %2341, 292
  %2343 = load i64, i64* %PC.i112
  %2344 = add i64 %2343, 5
  store i64 %2344, i64* %PC.i112
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2342, i64* %2345, align 8
  store %struct.Memory* %loadMem_41f20b, %struct.Memory** %MEMORY
  br label %block_.L_41f32f

block_.L_41f210:                                  ; preds = %block_41f1e2
  %loadMem_41f210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 33
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2348 to i64*
  %2349 = load i64, i64* %PC.i111
  %2350 = add i64 %2349, 5
  %2351 = load i64, i64* %PC.i111
  %2352 = add i64 %2351, 5
  store i64 %2352, i64* %PC.i111
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2350, i64* %2353, align 8
  store %struct.Memory* %loadMem_41f210, %struct.Memory** %MEMORY
  br label %block_.L_41f215

block_.L_41f215:                                  ; preds = %block_.L_41f210, %block_41f1a6, %block_41f181, %block_41f177, %block_.L_41f16d
  %loadMem_41f215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 33
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %2356 to i64*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 15
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %2359 to i64*
  %2360 = load i64, i64* %RBP.i110
  %2361 = sub i64 %2360, 24
  %2362 = load i64, i64* %PC.i109
  %2363 = add i64 %2362, 4
  store i64 %2363, i64* %PC.i109
  %2364 = inttoptr i64 %2361 to i32*
  %2365 = load i32, i32* %2364
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2366, align 1
  %2367 = and i32 %2365, 255
  %2368 = call i32 @llvm.ctpop.i32(i32 %2367)
  %2369 = trunc i32 %2368 to i8
  %2370 = and i8 %2369, 1
  %2371 = xor i8 %2370, 1
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2371, i8* %2372, align 1
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2373, align 1
  %2374 = icmp eq i32 %2365, 0
  %2375 = zext i1 %2374 to i8
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2375, i8* %2376, align 1
  %2377 = lshr i32 %2365, 31
  %2378 = trunc i32 %2377 to i8
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2378, i8* %2379, align 1
  %2380 = lshr i32 %2365, 31
  %2381 = xor i32 %2377, %2380
  %2382 = add i32 %2381, %2380
  %2383 = icmp eq i32 %2382, 2
  %2384 = zext i1 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2384, i8* %2385, align 1
  store %struct.Memory* %loadMem_41f215, %struct.Memory** %MEMORY
  %loadMem_41f219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 33
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2388 to i64*
  %2389 = load i64, i64* %PC.i108
  %2390 = add i64 %2389, 28
  %2391 = load i64, i64* %PC.i108
  %2392 = add i64 %2391, 6
  %2393 = load i64, i64* %PC.i108
  %2394 = add i64 %2393, 6
  store i64 %2394, i64* %PC.i108
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2396 = load i8, i8* %2395, align 1
  store i8 %2396, i8* %BRANCH_TAKEN, align 1
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2398 = icmp ne i8 %2396, 0
  %2399 = select i1 %2398, i64 %2390, i64 %2392
  store i64 %2399, i64* %2397, align 8
  store %struct.Memory* %loadMem_41f219, %struct.Memory** %MEMORY
  %loadBr_41f219 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f219 = icmp eq i8 %loadBr_41f219, 1
  br i1 %cmpBr_41f219, label %block_.L_41f235, label %block_41f21f

block_41f21f:                                     ; preds = %block_.L_41f215
  %loadMem_41f21f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 33
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 15
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %2405 to i64*
  %2406 = load i64, i64* %RBP.i107
  %2407 = sub i64 %2406, 20
  %2408 = load i64, i64* %PC.i106
  %2409 = add i64 %2408, 4
  store i64 %2409, i64* %PC.i106
  %2410 = inttoptr i64 %2407 to i32*
  %2411 = load i32, i32* %2410
  %2412 = sub i32 %2411, 3
  %2413 = icmp ult i32 %2411, 3
  %2414 = zext i1 %2413 to i8
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2414, i8* %2415, align 1
  %2416 = and i32 %2412, 255
  %2417 = call i32 @llvm.ctpop.i32(i32 %2416)
  %2418 = trunc i32 %2417 to i8
  %2419 = and i8 %2418, 1
  %2420 = xor i8 %2419, 1
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2420, i8* %2421, align 1
  %2422 = xor i32 %2411, 3
  %2423 = xor i32 %2422, %2412
  %2424 = lshr i32 %2423, 4
  %2425 = trunc i32 %2424 to i8
  %2426 = and i8 %2425, 1
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2426, i8* %2427, align 1
  %2428 = icmp eq i32 %2412, 0
  %2429 = zext i1 %2428 to i8
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2429, i8* %2430, align 1
  %2431 = lshr i32 %2412, 31
  %2432 = trunc i32 %2431 to i8
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2432, i8* %2433, align 1
  %2434 = lshr i32 %2411, 31
  %2435 = xor i32 %2431, %2434
  %2436 = add i32 %2435, %2434
  %2437 = icmp eq i32 %2436, 2
  %2438 = zext i1 %2437 to i8
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2438, i8* %2439, align 1
  store %struct.Memory* %loadMem_41f21f, %struct.Memory** %MEMORY
  %loadMem_41f223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 33
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2442 to i64*
  %2443 = load i64, i64* %PC.i105
  %2444 = add i64 %2443, 18
  %2445 = load i64, i64* %PC.i105
  %2446 = add i64 %2445, 6
  %2447 = load i64, i64* %PC.i105
  %2448 = add i64 %2447, 6
  store i64 %2448, i64* %PC.i105
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2450 = load i8, i8* %2449, align 1
  %2451 = icmp ne i8 %2450, 0
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2453 = load i8, i8* %2452, align 1
  %2454 = icmp ne i8 %2453, 0
  %2455 = xor i1 %2451, %2454
  %2456 = zext i1 %2455 to i8
  store i8 %2456, i8* %BRANCH_TAKEN, align 1
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2458 = select i1 %2455, i64 %2444, i64 %2446
  store i64 %2458, i64* %2457, align 8
  store %struct.Memory* %loadMem_41f223, %struct.Memory** %MEMORY
  %loadBr_41f223 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f223 = icmp eq i8 %loadBr_41f223, 1
  br i1 %cmpBr_41f223, label %block_.L_41f235, label %block_41f229

block_41f229:                                     ; preds = %block_41f21f
  %loadMem_41f229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 15
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %2464 to i64*
  %2465 = load i64, i64* %RBP.i104
  %2466 = sub i64 %2465, 4
  %2467 = load i64, i64* %PC.i103
  %2468 = add i64 %2467, 7
  store i64 %2468, i64* %PC.i103
  %2469 = inttoptr i64 %2466 to i32*
  store i32 1, i32* %2469
  store %struct.Memory* %loadMem_41f229, %struct.Memory** %MEMORY
  %loadMem_41f230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 33
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2472 to i64*
  %2473 = load i64, i64* %PC.i102
  %2474 = add i64 %2473, 255
  %2475 = load i64, i64* %PC.i102
  %2476 = add i64 %2475, 5
  store i64 %2476, i64* %PC.i102
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2474, i64* %2477, align 8
  store %struct.Memory* %loadMem_41f230, %struct.Memory** %MEMORY
  br label %block_.L_41f32f

block_.L_41f235:                                  ; preds = %block_41f21f, %block_.L_41f215
  %loadMem_41f235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 15
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %2483 to i64*
  %2484 = load i64, i64* %RBP.i101
  %2485 = sub i64 %2484, 24
  %2486 = load i64, i64* %PC.i100
  %2487 = add i64 %2486, 4
  store i64 %2487, i64* %PC.i100
  %2488 = inttoptr i64 %2485 to i32*
  %2489 = load i32, i32* %2488
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2490, align 1
  %2491 = and i32 %2489, 255
  %2492 = call i32 @llvm.ctpop.i32(i32 %2491)
  %2493 = trunc i32 %2492 to i8
  %2494 = and i8 %2493, 1
  %2495 = xor i8 %2494, 1
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2495, i8* %2496, align 1
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2497, align 1
  %2498 = icmp eq i32 %2489, 0
  %2499 = zext i1 %2498 to i8
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2499, i8* %2500, align 1
  %2501 = lshr i32 %2489, 31
  %2502 = trunc i32 %2501 to i8
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2502, i8* %2503, align 1
  %2504 = lshr i32 %2489, 31
  %2505 = xor i32 %2501, %2504
  %2506 = add i32 %2505, %2504
  %2507 = icmp eq i32 %2506, 2
  %2508 = zext i1 %2507 to i8
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2508, i8* %2509, align 1
  store %struct.Memory* %loadMem_41f235, %struct.Memory** %MEMORY
  %loadMem_41f239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2512 to i64*
  %2513 = load i64, i64* %PC.i99
  %2514 = add i64 %2513, 40
  %2515 = load i64, i64* %PC.i99
  %2516 = add i64 %2515, 6
  %2517 = load i64, i64* %PC.i99
  %2518 = add i64 %2517, 6
  store i64 %2518, i64* %PC.i99
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2520 = load i8, i8* %2519, align 1
  store i8 %2520, i8* %BRANCH_TAKEN, align 1
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2522 = icmp ne i8 %2520, 0
  %2523 = select i1 %2522, i64 %2514, i64 %2516
  store i64 %2523, i64* %2521, align 8
  store %struct.Memory* %loadMem_41f239, %struct.Memory** %MEMORY
  %loadBr_41f239 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f239 = icmp eq i8 %loadBr_41f239, 1
  br i1 %cmpBr_41f239, label %block_.L_41f261, label %block_41f23f

block_41f23f:                                     ; preds = %block_.L_41f235
  %loadMem_41f23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 33
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 1
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %2529 to i64*
  %2530 = load i64, i64* %PC.i97
  %2531 = add i64 %2530, 10
  store i64 %2531, i64* %PC.i97
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_41f23f, %struct.Memory** %MEMORY
  %loadMem_41f249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 33
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2534 to i64*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 5
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %2537 to i64*
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 15
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %2540 to i64*
  %2541 = load i64, i64* %RBP.i96
  %2542 = sub i64 %2541, 24
  %2543 = load i64, i64* %PC.i94
  %2544 = add i64 %2543, 4
  store i64 %2544, i64* %PC.i94
  %2545 = inttoptr i64 %2542 to i32*
  %2546 = load i32, i32* %2545
  %2547 = sext i32 %2546 to i64
  store i64 %2547, i64* %RCX.i95, align 8
  store %struct.Memory* %loadMem_41f249, %struct.Memory** %MEMORY
  %loadMem_41f24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 33
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 5
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %2553 to i64*
  %2554 = load i64, i64* %RCX.i93
  %2555 = load i64, i64* %PC.i92
  %2556 = add i64 %2555, 7
  store i64 %2556, i64* %PC.i92
  %2557 = sext i64 %2554 to i128
  %2558 = and i128 %2557, -18446744073709551616
  %2559 = zext i64 %2554 to i128
  %2560 = or i128 %2558, %2559
  %2561 = mul i128 380, %2560
  %2562 = trunc i128 %2561 to i64
  store i64 %2562, i64* %RCX.i93, align 8
  %2563 = sext i64 %2562 to i128
  %2564 = icmp ne i128 %2563, %2561
  %2565 = zext i1 %2564 to i8
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2565, i8* %2566, align 1
  %2567 = trunc i128 %2561 to i32
  %2568 = and i32 %2567, 255
  %2569 = call i32 @llvm.ctpop.i32(i32 %2568)
  %2570 = trunc i32 %2569 to i8
  %2571 = and i8 %2570, 1
  %2572 = xor i8 %2571, 1
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2572, i8* %2573, align 1
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2574, align 1
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2575, align 1
  %2576 = lshr i64 %2562, 63
  %2577 = trunc i64 %2576 to i8
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2577, i8* %2578, align 1
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2565, i8* %2579, align 1
  store %struct.Memory* %loadMem_41f24d, %struct.Memory** %MEMORY
  %loadMem_41f254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 1
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 5
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %2588 to i64*
  %2589 = load i64, i64* %RAX.i90
  %2590 = load i64, i64* %RCX.i91
  %2591 = load i64, i64* %PC.i89
  %2592 = add i64 %2591, 3
  store i64 %2592, i64* %PC.i89
  %2593 = add i64 %2590, %2589
  store i64 %2593, i64* %RAX.i90, align 8
  %2594 = icmp ult i64 %2593, %2589
  %2595 = icmp ult i64 %2593, %2590
  %2596 = or i1 %2594, %2595
  %2597 = zext i1 %2596 to i8
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2597, i8* %2598, align 1
  %2599 = trunc i64 %2593 to i32
  %2600 = and i32 %2599, 255
  %2601 = call i32 @llvm.ctpop.i32(i32 %2600)
  %2602 = trunc i32 %2601 to i8
  %2603 = and i8 %2602, 1
  %2604 = xor i8 %2603, 1
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2604, i8* %2605, align 1
  %2606 = xor i64 %2590, %2589
  %2607 = xor i64 %2606, %2593
  %2608 = lshr i64 %2607, 4
  %2609 = trunc i64 %2608 to i8
  %2610 = and i8 %2609, 1
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2610, i8* %2611, align 1
  %2612 = icmp eq i64 %2593, 0
  %2613 = zext i1 %2612 to i8
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2613, i8* %2614, align 1
  %2615 = lshr i64 %2593, 63
  %2616 = trunc i64 %2615 to i8
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2616, i8* %2617, align 1
  %2618 = lshr i64 %2589, 63
  %2619 = lshr i64 %2590, 63
  %2620 = xor i64 %2615, %2618
  %2621 = xor i64 %2615, %2619
  %2622 = add i64 %2620, %2621
  %2623 = icmp eq i64 %2622, 2
  %2624 = zext i1 %2623 to i8
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2624, i8* %2625, align 1
  store %struct.Memory* %loadMem_41f254, %struct.Memory** %MEMORY
  %loadMem_41f257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 33
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 1
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %2631 to i64*
  %2632 = load i64, i64* %RAX.i88
  %2633 = add i64 %2632, 36
  %2634 = load i64, i64* %PC.i87
  %2635 = add i64 %2634, 4
  store i64 %2635, i64* %PC.i87
  %2636 = inttoptr i64 %2633 to i32*
  %2637 = load i32, i32* %2636
  %2638 = sub i32 %2637, 2
  %2639 = icmp ult i32 %2637, 2
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
  %2648 = xor i32 %2637, 2
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
  %2660 = lshr i32 %2637, 31
  %2661 = xor i32 %2657, %2660
  %2662 = add i32 %2661, %2660
  %2663 = icmp eq i32 %2662, 2
  %2664 = zext i1 %2663 to i8
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2664, i8* %2665, align 1
  store %struct.Memory* %loadMem_41f257, %struct.Memory** %MEMORY
  %loadMem_41f25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 33
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2668 to i64*
  %2669 = load i64, i64* %PC.i86
  %2670 = add i64 %2669, 205
  %2671 = load i64, i64* %PC.i86
  %2672 = add i64 %2671, 6
  %2673 = load i64, i64* %PC.i86
  %2674 = add i64 %2673, 6
  store i64 %2674, i64* %PC.i86
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2676 = load i8, i8* %2675, align 1
  %2677 = icmp ne i8 %2676, 0
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2679 = load i8, i8* %2678, align 1
  %2680 = icmp ne i8 %2679, 0
  %2681 = xor i1 %2677, %2680
  %2682 = xor i1 %2681, true
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %BRANCH_TAKEN, align 1
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2685 = select i1 %2681, i64 %2672, i64 %2670
  store i64 %2685, i64* %2684, align 8
  store %struct.Memory* %loadMem_41f25b, %struct.Memory** %MEMORY
  %loadBr_41f25b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f25b = icmp eq i8 %loadBr_41f25b, 1
  br i1 %cmpBr_41f25b, label %block_.L_41f328, label %block_.L_41f261

block_.L_41f261:                                  ; preds = %block_41f23f, %block_.L_41f235
  %loadMem_41f261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 33
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 15
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %2691 to i64*
  %2692 = load i64, i64* %RBP.i85
  %2693 = sub i64 %2692, 20
  %2694 = load i64, i64* %PC.i84
  %2695 = add i64 %2694, 4
  store i64 %2695, i64* %PC.i84
  %2696 = inttoptr i64 %2693 to i32*
  %2697 = load i32, i32* %2696
  %2698 = sub i32 %2697, 3
  %2699 = icmp ult i32 %2697, 3
  %2700 = zext i1 %2699 to i8
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2700, i8* %2701, align 1
  %2702 = and i32 %2698, 255
  %2703 = call i32 @llvm.ctpop.i32(i32 %2702)
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  %2706 = xor i8 %2705, 1
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2706, i8* %2707, align 1
  %2708 = xor i32 %2697, 3
  %2709 = xor i32 %2708, %2698
  %2710 = lshr i32 %2709, 4
  %2711 = trunc i32 %2710 to i8
  %2712 = and i8 %2711, 1
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2712, i8* %2713, align 1
  %2714 = icmp eq i32 %2698, 0
  %2715 = zext i1 %2714 to i8
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2715, i8* %2716, align 1
  %2717 = lshr i32 %2698, 31
  %2718 = trunc i32 %2717 to i8
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2718, i8* %2719, align 1
  %2720 = lshr i32 %2697, 31
  %2721 = xor i32 %2717, %2720
  %2722 = add i32 %2721, %2720
  %2723 = icmp eq i32 %2722, 2
  %2724 = zext i1 %2723 to i8
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2724, i8* %2725, align 1
  store %struct.Memory* %loadMem_41f261, %struct.Memory** %MEMORY
  %loadMem_41f265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 33
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2728 to i64*
  %2729 = load i64, i64* %PC.i83
  %2730 = add i64 %2729, 118
  %2731 = load i64, i64* %PC.i83
  %2732 = add i64 %2731, 6
  %2733 = load i64, i64* %PC.i83
  %2734 = add i64 %2733, 6
  store i64 %2734, i64* %PC.i83
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2736 = load i8, i8* %2735, align 1
  %2737 = icmp ne i8 %2736, 0
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2739 = load i8, i8* %2738, align 1
  %2740 = icmp ne i8 %2739, 0
  %2741 = xor i1 %2737, %2740
  %2742 = xor i1 %2741, true
  %2743 = zext i1 %2742 to i8
  store i8 %2743, i8* %BRANCH_TAKEN, align 1
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2745 = select i1 %2741, i64 %2732, i64 %2730
  store i64 %2745, i64* %2744, align 8
  store %struct.Memory* %loadMem_41f265, %struct.Memory** %MEMORY
  %loadBr_41f265 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f265 = icmp eq i8 %loadBr_41f265, 1
  br i1 %cmpBr_41f265, label %block_.L_41f2db, label %block_41f26b

block_41f26b:                                     ; preds = %block_.L_41f261
  %loadMem_41f26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 33
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 1
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %2751 to i64*
  %2752 = load i64, i64* %PC.i81
  %2753 = add i64 %2752, 10
  store i64 %2753, i64* %PC.i81
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_41f26b, %struct.Memory** %MEMORY
  %loadMem_41f275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 5
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %2759 to i64*
  %2760 = load i64, i64* %PC.i79
  %2761 = add i64 %2760, 8
  store i64 %2761, i64* %PC.i79
  %2762 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %2762, i64* %RCX.i80, align 8
  store %struct.Memory* %loadMem_41f275, %struct.Memory** %MEMORY
  %loadMem_41f27d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 33
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2765 to i64*
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 7
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %RDX.i77 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 15
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %2771 to i64*
  %2772 = load i64, i64* %RBP.i78
  %2773 = sub i64 %2772, 8
  %2774 = load i64, i64* %PC.i76
  %2775 = add i64 %2774, 4
  store i64 %2775, i64* %PC.i76
  %2776 = inttoptr i64 %2773 to i32*
  %2777 = load i32, i32* %2776
  %2778 = sext i32 %2777 to i64
  store i64 %2778, i64* %RDX.i77, align 8
  store %struct.Memory* %loadMem_41f27d, %struct.Memory** %MEMORY
  %loadMem_41f281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 33
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %2781 to i64*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 7
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %RDX.i75 = bitcast %union.anon* %2784 to i64*
  %2785 = load i64, i64* %RDX.i75
  %2786 = load i64, i64* %PC.i74
  %2787 = add i64 %2786, 4
  store i64 %2787, i64* %PC.i74
  %2788 = sext i64 %2785 to i128
  %2789 = and i128 %2788, -18446744073709551616
  %2790 = zext i64 %2785 to i128
  %2791 = or i128 %2789, %2790
  %2792 = mul i128 76, %2791
  %2793 = trunc i128 %2792 to i64
  store i64 %2793, i64* %RDX.i75, align 8
  %2794 = sext i64 %2793 to i128
  %2795 = icmp ne i128 %2794, %2792
  %2796 = zext i1 %2795 to i8
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2796, i8* %2797, align 1
  %2798 = trunc i128 %2792 to i32
  %2799 = and i32 %2798, 255
  %2800 = call i32 @llvm.ctpop.i32(i32 %2799)
  %2801 = trunc i32 %2800 to i8
  %2802 = and i8 %2801, 1
  %2803 = xor i8 %2802, 1
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2803, i8* %2804, align 1
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2805, align 1
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2806, align 1
  %2807 = lshr i64 %2793, 63
  %2808 = trunc i64 %2807 to i8
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2808, i8* %2809, align 1
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2796, i8* %2810, align 1
  store %struct.Memory* %loadMem_41f281, %struct.Memory** %MEMORY
  %loadMem_41f285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 33
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 1
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 7
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %RDX.i73 = bitcast %union.anon* %2819 to i64*
  %2820 = load i64, i64* %RAX.i72
  %2821 = load i64, i64* %RDX.i73
  %2822 = load i64, i64* %PC.i71
  %2823 = add i64 %2822, 3
  store i64 %2823, i64* %PC.i71
  %2824 = add i64 %2821, %2820
  store i64 %2824, i64* %RAX.i72, align 8
  %2825 = icmp ult i64 %2824, %2820
  %2826 = icmp ult i64 %2824, %2821
  %2827 = or i1 %2825, %2826
  %2828 = zext i1 %2827 to i8
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2828, i8* %2829, align 1
  %2830 = trunc i64 %2824 to i32
  %2831 = and i32 %2830, 255
  %2832 = call i32 @llvm.ctpop.i32(i32 %2831)
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  %2835 = xor i8 %2834, 1
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2835, i8* %2836, align 1
  %2837 = xor i64 %2821, %2820
  %2838 = xor i64 %2837, %2824
  %2839 = lshr i64 %2838, 4
  %2840 = trunc i64 %2839 to i8
  %2841 = and i8 %2840, 1
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2841, i8* %2842, align 1
  %2843 = icmp eq i64 %2824, 0
  %2844 = zext i1 %2843 to i8
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2844, i8* %2845, align 1
  %2846 = lshr i64 %2824, 63
  %2847 = trunc i64 %2846 to i8
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2847, i8* %2848, align 1
  %2849 = lshr i64 %2820, 63
  %2850 = lshr i64 %2821, 63
  %2851 = xor i64 %2846, %2849
  %2852 = xor i64 %2846, %2850
  %2853 = add i64 %2851, %2852
  %2854 = icmp eq i64 %2853, 2
  %2855 = zext i1 %2854 to i8
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2855, i8* %2856, align 1
  store %struct.Memory* %loadMem_41f285, %struct.Memory** %MEMORY
  %loadMem_41f288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 33
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2859 to i64*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 1
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %2862 to i64*
  %2863 = load i64, i64* %RAX.i70
  %2864 = add i64 %2863, 4
  %2865 = load i64, i64* %PC.i69
  %2866 = add i64 %2865, 4
  store i64 %2866, i64* %PC.i69
  %2867 = inttoptr i64 %2864 to i32*
  %2868 = load i32, i32* %2867
  %2869 = sext i32 %2868 to i64
  store i64 %2869, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_41f288, %struct.Memory** %MEMORY
  %loadMem_41f28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 33
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 1
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %2875 to i64*
  %2876 = load i64, i64* %RAX.i68
  %2877 = load i64, i64* %PC.i67
  %2878 = add i64 %2877, 4
  store i64 %2878, i64* %PC.i67
  %2879 = sext i64 %2876 to i128
  %2880 = and i128 %2879, -18446744073709551616
  %2881 = zext i64 %2876 to i128
  %2882 = or i128 %2880, %2881
  %2883 = mul i128 104, %2882
  %2884 = trunc i128 %2883 to i64
  store i64 %2884, i64* %RAX.i68, align 8
  %2885 = sext i64 %2884 to i128
  %2886 = icmp ne i128 %2885, %2883
  %2887 = zext i1 %2886 to i8
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2887, i8* %2888, align 1
  %2889 = trunc i128 %2883 to i32
  %2890 = and i32 %2889, 255
  %2891 = call i32 @llvm.ctpop.i32(i32 %2890)
  %2892 = trunc i32 %2891 to i8
  %2893 = and i8 %2892, 1
  %2894 = xor i8 %2893, 1
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2894, i8* %2895, align 1
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2896, align 1
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2897, align 1
  %2898 = lshr i64 %2884, 63
  %2899 = trunc i64 %2898 to i8
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2899, i8* %2900, align 1
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2887, i8* %2901, align 1
  store %struct.Memory* %loadMem_41f28c, %struct.Memory** %MEMORY
  %loadMem_41f290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 33
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 1
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %2907 to i64*
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 5
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %2910 to i64*
  %2911 = load i64, i64* %RCX.i66
  %2912 = load i64, i64* %RAX.i65
  %2913 = load i64, i64* %PC.i64
  %2914 = add i64 %2913, 3
  store i64 %2914, i64* %PC.i64
  %2915 = add i64 %2912, %2911
  store i64 %2915, i64* %RCX.i66, align 8
  %2916 = icmp ult i64 %2915, %2911
  %2917 = icmp ult i64 %2915, %2912
  %2918 = or i1 %2916, %2917
  %2919 = zext i1 %2918 to i8
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2919, i8* %2920, align 1
  %2921 = trunc i64 %2915 to i32
  %2922 = and i32 %2921, 255
  %2923 = call i32 @llvm.ctpop.i32(i32 %2922)
  %2924 = trunc i32 %2923 to i8
  %2925 = and i8 %2924, 1
  %2926 = xor i8 %2925, 1
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2926, i8* %2927, align 1
  %2928 = xor i64 %2912, %2911
  %2929 = xor i64 %2928, %2915
  %2930 = lshr i64 %2929, 4
  %2931 = trunc i64 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2932, i8* %2933, align 1
  %2934 = icmp eq i64 %2915, 0
  %2935 = zext i1 %2934 to i8
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2935, i8* %2936, align 1
  %2937 = lshr i64 %2915, 63
  %2938 = trunc i64 %2937 to i8
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2938, i8* %2939, align 1
  %2940 = lshr i64 %2911, 63
  %2941 = lshr i64 %2912, 63
  %2942 = xor i64 %2937, %2940
  %2943 = xor i64 %2937, %2941
  %2944 = add i64 %2942, %2943
  %2945 = icmp eq i64 %2944, 2
  %2946 = zext i1 %2945 to i8
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2946, i8* %2947, align 1
  store %struct.Memory* %loadMem_41f290, %struct.Memory** %MEMORY
  %loadMem_41f293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %2950 to i64*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 5
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %2953 to i64*
  %2954 = load i64, i64* %RCX.i63
  %2955 = add i64 %2954, 72
  %2956 = load i64, i64* %PC.i62
  %2957 = add i64 %2956, 4
  store i64 %2957, i64* %PC.i62
  %2958 = inttoptr i64 %2955 to i32*
  %2959 = load i32, i32* %2958
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2960, align 1
  %2961 = and i32 %2959, 255
  %2962 = call i32 @llvm.ctpop.i32(i32 %2961)
  %2963 = trunc i32 %2962 to i8
  %2964 = and i8 %2963, 1
  %2965 = xor i8 %2964, 1
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2965, i8* %2966, align 1
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2967, align 1
  %2968 = icmp eq i32 %2959, 0
  %2969 = zext i1 %2968 to i8
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2969, i8* %2970, align 1
  %2971 = lshr i32 %2959, 31
  %2972 = trunc i32 %2971 to i8
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2972, i8* %2973, align 1
  %2974 = lshr i32 %2959, 31
  %2975 = xor i32 %2971, %2974
  %2976 = add i32 %2975, %2974
  %2977 = icmp eq i32 %2976, 2
  %2978 = zext i1 %2977 to i8
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2978, i8* %2979, align 1
  store %struct.Memory* %loadMem_41f293, %struct.Memory** %MEMORY
  %loadMem_41f297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2982 to i64*
  %2983 = load i64, i64* %PC.i61
  %2984 = add i64 %2983, 68
  %2985 = load i64, i64* %PC.i61
  %2986 = add i64 %2985, 6
  %2987 = load i64, i64* %PC.i61
  %2988 = add i64 %2987, 6
  store i64 %2988, i64* %PC.i61
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2990 = load i8, i8* %2989, align 1
  %2991 = icmp eq i8 %2990, 0
  %2992 = zext i1 %2991 to i8
  store i8 %2992, i8* %BRANCH_TAKEN, align 1
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2994 = select i1 %2991, i64 %2984, i64 %2986
  store i64 %2994, i64* %2993, align 8
  store %struct.Memory* %loadMem_41f297, %struct.Memory** %MEMORY
  %loadBr_41f297 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f297 = icmp eq i8 %loadBr_41f297, 1
  br i1 %cmpBr_41f297, label %block_.L_41f2db, label %block_41f29d

block_41f29d:                                     ; preds = %block_41f26b
  %loadMem_41f29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 33
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 1
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %3000 to i64*
  %3001 = load i64, i64* %PC.i59
  %3002 = add i64 %3001, 10
  store i64 %3002, i64* %PC.i59
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i60, align 8
  store %struct.Memory* %loadMem_41f29d, %struct.Memory** %MEMORY
  %loadMem_41f2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 5
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %3008 to i64*
  %3009 = load i64, i64* %PC.i57
  %3010 = add i64 %3009, 8
  store i64 %3010, i64* %PC.i57
  %3011 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %3011, i64* %RCX.i58, align 8
  store %struct.Memory* %loadMem_41f2a7, %struct.Memory** %MEMORY
  %loadMem_41f2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 33
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 7
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %RDX.i55 = bitcast %union.anon* %3017 to i64*
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 15
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %3020 to i64*
  %3021 = load i64, i64* %RBP.i56
  %3022 = sub i64 %3021, 8
  %3023 = load i64, i64* %PC.i54
  %3024 = add i64 %3023, 4
  store i64 %3024, i64* %PC.i54
  %3025 = inttoptr i64 %3022 to i32*
  %3026 = load i32, i32* %3025
  %3027 = sext i32 %3026 to i64
  store i64 %3027, i64* %RDX.i55, align 8
  store %struct.Memory* %loadMem_41f2af, %struct.Memory** %MEMORY
  %loadMem_41f2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 33
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 7
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %3033 to i64*
  %3034 = load i64, i64* %RDX.i53
  %3035 = load i64, i64* %PC.i52
  %3036 = add i64 %3035, 4
  store i64 %3036, i64* %PC.i52
  %3037 = sext i64 %3034 to i128
  %3038 = and i128 %3037, -18446744073709551616
  %3039 = zext i64 %3034 to i128
  %3040 = or i128 %3038, %3039
  %3041 = mul i128 76, %3040
  %3042 = trunc i128 %3041 to i64
  store i64 %3042, i64* %RDX.i53, align 8
  %3043 = sext i64 %3042 to i128
  %3044 = icmp ne i128 %3043, %3041
  %3045 = zext i1 %3044 to i8
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3045, i8* %3046, align 1
  %3047 = trunc i128 %3041 to i32
  %3048 = and i32 %3047, 255
  %3049 = call i32 @llvm.ctpop.i32(i32 %3048)
  %3050 = trunc i32 %3049 to i8
  %3051 = and i8 %3050, 1
  %3052 = xor i8 %3051, 1
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3052, i8* %3053, align 1
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3054, align 1
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3055, align 1
  %3056 = lshr i64 %3042, 63
  %3057 = trunc i64 %3056 to i8
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3057, i8* %3058, align 1
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3045, i8* %3059, align 1
  store %struct.Memory* %loadMem_41f2b3, %struct.Memory** %MEMORY
  %loadMem_41f2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 33
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 1
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %3065 to i64*
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 7
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %RDX.i51 = bitcast %union.anon* %3068 to i64*
  %3069 = load i64, i64* %RAX.i50
  %3070 = load i64, i64* %RDX.i51
  %3071 = load i64, i64* %PC.i49
  %3072 = add i64 %3071, 3
  store i64 %3072, i64* %PC.i49
  %3073 = add i64 %3070, %3069
  store i64 %3073, i64* %RAX.i50, align 8
  %3074 = icmp ult i64 %3073, %3069
  %3075 = icmp ult i64 %3073, %3070
  %3076 = or i1 %3074, %3075
  %3077 = zext i1 %3076 to i8
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3077, i8* %3078, align 1
  %3079 = trunc i64 %3073 to i32
  %3080 = and i32 %3079, 255
  %3081 = call i32 @llvm.ctpop.i32(i32 %3080)
  %3082 = trunc i32 %3081 to i8
  %3083 = and i8 %3082, 1
  %3084 = xor i8 %3083, 1
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3084, i8* %3085, align 1
  %3086 = xor i64 %3070, %3069
  %3087 = xor i64 %3086, %3073
  %3088 = lshr i64 %3087, 4
  %3089 = trunc i64 %3088 to i8
  %3090 = and i8 %3089, 1
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3090, i8* %3091, align 1
  %3092 = icmp eq i64 %3073, 0
  %3093 = zext i1 %3092 to i8
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3093, i8* %3094, align 1
  %3095 = lshr i64 %3073, 63
  %3096 = trunc i64 %3095 to i8
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3096, i8* %3097, align 1
  %3098 = lshr i64 %3069, 63
  %3099 = lshr i64 %3070, 63
  %3100 = xor i64 %3095, %3098
  %3101 = xor i64 %3095, %3099
  %3102 = add i64 %3100, %3101
  %3103 = icmp eq i64 %3102, 2
  %3104 = zext i1 %3103 to i8
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3104, i8* %3105, align 1
  store %struct.Memory* %loadMem_41f2b7, %struct.Memory** %MEMORY
  %loadMem_41f2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 33
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 1
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %3111 to i64*
  %3112 = load i64, i64* %RAX.i48
  %3113 = add i64 %3112, 4
  %3114 = load i64, i64* %PC.i47
  %3115 = add i64 %3114, 4
  store i64 %3115, i64* %PC.i47
  %3116 = inttoptr i64 %3113 to i32*
  %3117 = load i32, i32* %3116
  %3118 = sext i32 %3117 to i64
  store i64 %3118, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_41f2ba, %struct.Memory** %MEMORY
  %loadMem_41f2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 33
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3121 to i64*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 1
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %3124 to i64*
  %3125 = load i64, i64* %RAX.i46
  %3126 = load i64, i64* %PC.i45
  %3127 = add i64 %3126, 4
  store i64 %3127, i64* %PC.i45
  %3128 = sext i64 %3125 to i128
  %3129 = and i128 %3128, -18446744073709551616
  %3130 = zext i64 %3125 to i128
  %3131 = or i128 %3129, %3130
  %3132 = mul i128 104, %3131
  %3133 = trunc i128 %3132 to i64
  store i64 %3133, i64* %RAX.i46, align 8
  %3134 = sext i64 %3133 to i128
  %3135 = icmp ne i128 %3134, %3132
  %3136 = zext i1 %3135 to i8
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3136, i8* %3137, align 1
  %3138 = trunc i128 %3132 to i32
  %3139 = and i32 %3138, 255
  %3140 = call i32 @llvm.ctpop.i32(i32 %3139)
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = xor i8 %3142, 1
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3143, i8* %3144, align 1
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3145, align 1
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3146, align 1
  %3147 = lshr i64 %3133, 63
  %3148 = trunc i64 %3147 to i8
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3148, i8* %3149, align 1
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3136, i8* %3150, align 1
  store %struct.Memory* %loadMem_41f2be, %struct.Memory** %MEMORY
  %loadMem_41f2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 33
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 1
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 5
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %3159 to i64*
  %3160 = load i64, i64* %RCX.i44
  %3161 = load i64, i64* %RAX.i43
  %3162 = load i64, i64* %PC.i42
  %3163 = add i64 %3162, 3
  store i64 %3163, i64* %PC.i42
  %3164 = add i64 %3161, %3160
  store i64 %3164, i64* %RCX.i44, align 8
  %3165 = icmp ult i64 %3164, %3160
  %3166 = icmp ult i64 %3164, %3161
  %3167 = or i1 %3165, %3166
  %3168 = zext i1 %3167 to i8
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3168, i8* %3169, align 1
  %3170 = trunc i64 %3164 to i32
  %3171 = and i32 %3170, 255
  %3172 = call i32 @llvm.ctpop.i32(i32 %3171)
  %3173 = trunc i32 %3172 to i8
  %3174 = and i8 %3173, 1
  %3175 = xor i8 %3174, 1
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3175, i8* %3176, align 1
  %3177 = xor i64 %3161, %3160
  %3178 = xor i64 %3177, %3164
  %3179 = lshr i64 %3178, 4
  %3180 = trunc i64 %3179 to i8
  %3181 = and i8 %3180, 1
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3181, i8* %3182, align 1
  %3183 = icmp eq i64 %3164, 0
  %3184 = zext i1 %3183 to i8
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3184, i8* %3185, align 1
  %3186 = lshr i64 %3164, 63
  %3187 = trunc i64 %3186 to i8
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3187, i8* %3188, align 1
  %3189 = lshr i64 %3160, 63
  %3190 = lshr i64 %3161, 63
  %3191 = xor i64 %3186, %3189
  %3192 = xor i64 %3186, %3190
  %3193 = add i64 %3191, %3192
  %3194 = icmp eq i64 %3193, 2
  %3195 = zext i1 %3194 to i8
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3195, i8* %3196, align 1
  store %struct.Memory* %loadMem_41f2c2, %struct.Memory** %MEMORY
  %loadMem_41f2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 33
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %3199 to i64*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 5
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %3202 to i64*
  %3203 = load i64, i64* %RCX.i41
  %3204 = add i64 %3203, 52
  %3205 = load i64, i64* %PC.i40
  %3206 = add i64 %3205, 4
  store i64 %3206, i64* %PC.i40
  %3207 = inttoptr i64 %3204 to i32*
  %3208 = load i32, i32* %3207
  %3209 = sub i32 %3208, 5
  %3210 = icmp ult i32 %3208, 5
  %3211 = zext i1 %3210 to i8
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3211, i8* %3212, align 1
  %3213 = and i32 %3209, 255
  %3214 = call i32 @llvm.ctpop.i32(i32 %3213)
  %3215 = trunc i32 %3214 to i8
  %3216 = and i8 %3215, 1
  %3217 = xor i8 %3216, 1
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3217, i8* %3218, align 1
  %3219 = xor i32 %3208, 5
  %3220 = xor i32 %3219, %3209
  %3221 = lshr i32 %3220, 4
  %3222 = trunc i32 %3221 to i8
  %3223 = and i8 %3222, 1
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3223, i8* %3224, align 1
  %3225 = icmp eq i32 %3209, 0
  %3226 = zext i1 %3225 to i8
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3226, i8* %3227, align 1
  %3228 = lshr i32 %3209, 31
  %3229 = trunc i32 %3228 to i8
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3229, i8* %3230, align 1
  %3231 = lshr i32 %3208, 31
  %3232 = xor i32 %3228, %3231
  %3233 = add i32 %3232, %3231
  %3234 = icmp eq i32 %3233, 2
  %3235 = zext i1 %3234 to i8
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3235, i8* %3236, align 1
  store %struct.Memory* %loadMem_41f2c5, %struct.Memory** %MEMORY
  %loadMem_41f2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3239 to i64*
  %3240 = load i64, i64* %PC.i39
  %3241 = add i64 %3240, 18
  %3242 = load i64, i64* %PC.i39
  %3243 = add i64 %3242, 6
  %3244 = load i64, i64* %PC.i39
  %3245 = add i64 %3244, 6
  store i64 %3245, i64* %PC.i39
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3247 = load i8, i8* %3246, align 1
  %3248 = icmp ne i8 %3247, 0
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3250 = load i8, i8* %3249, align 1
  %3251 = icmp ne i8 %3250, 0
  %3252 = xor i1 %3248, %3251
  %3253 = xor i1 %3252, true
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %BRANCH_TAKEN, align 1
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3256 = select i1 %3252, i64 %3243, i64 %3241
  store i64 %3256, i64* %3255, align 8
  store %struct.Memory* %loadMem_41f2c9, %struct.Memory** %MEMORY
  %loadBr_41f2c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f2c9 = icmp eq i8 %loadBr_41f2c9, 1
  br i1 %cmpBr_41f2c9, label %block_.L_41f2db, label %block_41f2cf

block_41f2cf:                                     ; preds = %block_41f29d
  %loadMem_41f2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3259 to i64*
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 15
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %3262 to i64*
  %3263 = load i64, i64* %RBP.i38
  %3264 = sub i64 %3263, 4
  %3265 = load i64, i64* %PC.i37
  %3266 = add i64 %3265, 7
  store i64 %3266, i64* %PC.i37
  %3267 = inttoptr i64 %3264 to i32*
  store i32 0, i32* %3267
  store %struct.Memory* %loadMem_41f2cf, %struct.Memory** %MEMORY
  %loadMem_41f2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 33
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3270 to i64*
  %3271 = load i64, i64* %PC.i36
  %3272 = add i64 %3271, 89
  %3273 = load i64, i64* %PC.i36
  %3274 = add i64 %3273, 5
  store i64 %3274, i64* %PC.i36
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3272, i64* %3275, align 8
  store %struct.Memory* %loadMem_41f2d6, %struct.Memory** %MEMORY
  br label %block_.L_41f32f

block_.L_41f2db:                                  ; preds = %block_41f29d, %block_41f26b, %block_.L_41f261
  %loadMem_41f2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 33
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %3278 to i64*
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 15
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %3281 to i64*
  %3282 = load i64, i64* %RBP.i35
  %3283 = sub i64 %3282, 20
  %3284 = load i64, i64* %PC.i34
  %3285 = add i64 %3284, 4
  store i64 %3285, i64* %PC.i34
  %3286 = inttoptr i64 %3283 to i32*
  %3287 = load i32, i32* %3286
  %3288 = sub i32 %3287, 3
  %3289 = icmp ult i32 %3287, 3
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
  %3298 = xor i32 %3287, 3
  %3299 = xor i32 %3298, %3288
  %3300 = lshr i32 %3299, 4
  %3301 = trunc i32 %3300 to i8
  %3302 = and i8 %3301, 1
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3302, i8* %3303, align 1
  %3304 = icmp eq i32 %3288, 0
  %3305 = zext i1 %3304 to i8
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3305, i8* %3306, align 1
  %3307 = lshr i32 %3288, 31
  %3308 = trunc i32 %3307 to i8
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3308, i8* %3309, align 1
  %3310 = lshr i32 %3287, 31
  %3311 = xor i32 %3307, %3310
  %3312 = add i32 %3311, %3310
  %3313 = icmp eq i32 %3312, 2
  %3314 = zext i1 %3313 to i8
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3314, i8* %3315, align 1
  store %struct.Memory* %loadMem_41f2db, %struct.Memory** %MEMORY
  %loadMem_41f2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3318 to i64*
  %3319 = load i64, i64* %PC.i33
  %3320 = add i64 %3319, 68
  %3321 = load i64, i64* %PC.i33
  %3322 = add i64 %3321, 6
  %3323 = load i64, i64* %PC.i33
  %3324 = add i64 %3323, 6
  store i64 %3324, i64* %PC.i33
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3326 = load i8, i8* %3325, align 1
  %3327 = icmp eq i8 %3326, 0
  %3328 = zext i1 %3327 to i8
  store i8 %3328, i8* %BRANCH_TAKEN, align 1
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3330 = select i1 %3327, i64 %3320, i64 %3322
  store i64 %3330, i64* %3329, align 8
  store %struct.Memory* %loadMem_41f2df, %struct.Memory** %MEMORY
  %loadBr_41f2df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f2df = icmp eq i8 %loadBr_41f2df, 1
  br i1 %cmpBr_41f2df, label %block_.L_41f323, label %block_41f2e5

block_41f2e5:                                     ; preds = %block_.L_41f2db
  %loadMem_41f2e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 33
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 1
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %3336 to i64*
  %3337 = load i64, i64* %PC.i31
  %3338 = add i64 %3337, 10
  store i64 %3338, i64* %PC.i31
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_41f2e5, %struct.Memory** %MEMORY
  %loadMem_41f2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 33
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3341 to i64*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 5
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %3344 to i64*
  %3345 = load i64, i64* %PC.i29
  %3346 = add i64 %3345, 8
  store i64 %3346, i64* %PC.i29
  %3347 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %3347, i64* %RCX.i30, align 8
  store %struct.Memory* %loadMem_41f2ef, %struct.Memory** %MEMORY
  %loadMem_41f2f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 7
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RDX.i27 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 15
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %3356 to i64*
  %3357 = load i64, i64* %RBP.i28
  %3358 = sub i64 %3357, 8
  %3359 = load i64, i64* %PC.i26
  %3360 = add i64 %3359, 4
  store i64 %3360, i64* %PC.i26
  %3361 = inttoptr i64 %3358 to i32*
  %3362 = load i32, i32* %3361
  %3363 = sext i32 %3362 to i64
  store i64 %3363, i64* %RDX.i27, align 8
  store %struct.Memory* %loadMem_41f2f7, %struct.Memory** %MEMORY
  %loadMem_41f2fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 33
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3366 to i64*
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 7
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %RDX.i25 = bitcast %union.anon* %3369 to i64*
  %3370 = load i64, i64* %RDX.i25
  %3371 = load i64, i64* %PC.i24
  %3372 = add i64 %3371, 4
  store i64 %3372, i64* %PC.i24
  %3373 = sext i64 %3370 to i128
  %3374 = and i128 %3373, -18446744073709551616
  %3375 = zext i64 %3370 to i128
  %3376 = or i128 %3374, %3375
  %3377 = mul i128 76, %3376
  %3378 = trunc i128 %3377 to i64
  store i64 %3378, i64* %RDX.i25, align 8
  %3379 = sext i64 %3378 to i128
  %3380 = icmp ne i128 %3379, %3377
  %3381 = zext i1 %3380 to i8
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3381, i8* %3382, align 1
  %3383 = trunc i128 %3377 to i32
  %3384 = and i32 %3383, 255
  %3385 = call i32 @llvm.ctpop.i32(i32 %3384)
  %3386 = trunc i32 %3385 to i8
  %3387 = and i8 %3386, 1
  %3388 = xor i8 %3387, 1
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3388, i8* %3389, align 1
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3390, align 1
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3391, align 1
  %3392 = lshr i64 %3378, 63
  %3393 = trunc i64 %3392 to i8
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3393, i8* %3394, align 1
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3381, i8* %3395, align 1
  store %struct.Memory* %loadMem_41f2fb, %struct.Memory** %MEMORY
  %loadMem_41f2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 1
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 7
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3404 to i64*
  %3405 = load i64, i64* %RAX.i23
  %3406 = load i64, i64* %RDX.i
  %3407 = load i64, i64* %PC.i22
  %3408 = add i64 %3407, 3
  store i64 %3408, i64* %PC.i22
  %3409 = add i64 %3406, %3405
  store i64 %3409, i64* %RAX.i23, align 8
  %3410 = icmp ult i64 %3409, %3405
  %3411 = icmp ult i64 %3409, %3406
  %3412 = or i1 %3410, %3411
  %3413 = zext i1 %3412 to i8
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3413, i8* %3414, align 1
  %3415 = trunc i64 %3409 to i32
  %3416 = and i32 %3415, 255
  %3417 = call i32 @llvm.ctpop.i32(i32 %3416)
  %3418 = trunc i32 %3417 to i8
  %3419 = and i8 %3418, 1
  %3420 = xor i8 %3419, 1
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3420, i8* %3421, align 1
  %3422 = xor i64 %3406, %3405
  %3423 = xor i64 %3422, %3409
  %3424 = lshr i64 %3423, 4
  %3425 = trunc i64 %3424 to i8
  %3426 = and i8 %3425, 1
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3426, i8* %3427, align 1
  %3428 = icmp eq i64 %3409, 0
  %3429 = zext i1 %3428 to i8
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3429, i8* %3430, align 1
  %3431 = lshr i64 %3409, 63
  %3432 = trunc i64 %3431 to i8
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3432, i8* %3433, align 1
  %3434 = lshr i64 %3405, 63
  %3435 = lshr i64 %3406, 63
  %3436 = xor i64 %3431, %3434
  %3437 = xor i64 %3431, %3435
  %3438 = add i64 %3436, %3437
  %3439 = icmp eq i64 %3438, 2
  %3440 = zext i1 %3439 to i8
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3440, i8* %3441, align 1
  store %struct.Memory* %loadMem_41f2ff, %struct.Memory** %MEMORY
  %loadMem_41f302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 33
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3444 to i64*
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 1
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %3447 to i64*
  %3448 = load i64, i64* %RAX.i21
  %3449 = add i64 %3448, 4
  %3450 = load i64, i64* %PC.i20
  %3451 = add i64 %3450, 4
  store i64 %3451, i64* %PC.i20
  %3452 = inttoptr i64 %3449 to i32*
  %3453 = load i32, i32* %3452
  %3454 = sext i32 %3453 to i64
  store i64 %3454, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_41f302, %struct.Memory** %MEMORY
  %loadMem_41f306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 33
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3457 to i64*
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 1
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %3460 to i64*
  %3461 = load i64, i64* %RAX.i19
  %3462 = load i64, i64* %PC.i18
  %3463 = add i64 %3462, 4
  store i64 %3463, i64* %PC.i18
  %3464 = sext i64 %3461 to i128
  %3465 = and i128 %3464, -18446744073709551616
  %3466 = zext i64 %3461 to i128
  %3467 = or i128 %3465, %3466
  %3468 = mul i128 104, %3467
  %3469 = trunc i128 %3468 to i64
  store i64 %3469, i64* %RAX.i19, align 8
  %3470 = sext i64 %3469 to i128
  %3471 = icmp ne i128 %3470, %3468
  %3472 = zext i1 %3471 to i8
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3472, i8* %3473, align 1
  %3474 = trunc i128 %3468 to i32
  %3475 = and i32 %3474, 255
  %3476 = call i32 @llvm.ctpop.i32(i32 %3475)
  %3477 = trunc i32 %3476 to i8
  %3478 = and i8 %3477, 1
  %3479 = xor i8 %3478, 1
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3479, i8* %3480, align 1
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3481, align 1
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3482, align 1
  %3483 = lshr i64 %3469, 63
  %3484 = trunc i64 %3483 to i8
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3484, i8* %3485, align 1
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3472, i8* %3486, align 1
  store %struct.Memory* %loadMem_41f306, %struct.Memory** %MEMORY
  %loadMem_41f30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 33
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3489 to i64*
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 1
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 5
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RCX.i17 = bitcast %union.anon* %3495 to i64*
  %3496 = load i64, i64* %RCX.i17
  %3497 = load i64, i64* %RAX.i16
  %3498 = load i64, i64* %PC.i15
  %3499 = add i64 %3498, 3
  store i64 %3499, i64* %PC.i15
  %3500 = add i64 %3497, %3496
  store i64 %3500, i64* %RCX.i17, align 8
  %3501 = icmp ult i64 %3500, %3496
  %3502 = icmp ult i64 %3500, %3497
  %3503 = or i1 %3501, %3502
  %3504 = zext i1 %3503 to i8
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3504, i8* %3505, align 1
  %3506 = trunc i64 %3500 to i32
  %3507 = and i32 %3506, 255
  %3508 = call i32 @llvm.ctpop.i32(i32 %3507)
  %3509 = trunc i32 %3508 to i8
  %3510 = and i8 %3509, 1
  %3511 = xor i8 %3510, 1
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3511, i8* %3512, align 1
  %3513 = xor i64 %3497, %3496
  %3514 = xor i64 %3513, %3500
  %3515 = lshr i64 %3514, 4
  %3516 = trunc i64 %3515 to i8
  %3517 = and i8 %3516, 1
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3517, i8* %3518, align 1
  %3519 = icmp eq i64 %3500, 0
  %3520 = zext i1 %3519 to i8
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3520, i8* %3521, align 1
  %3522 = lshr i64 %3500, 63
  %3523 = trunc i64 %3522 to i8
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3523, i8* %3524, align 1
  %3525 = lshr i64 %3496, 63
  %3526 = lshr i64 %3497, 63
  %3527 = xor i64 %3522, %3525
  %3528 = xor i64 %3522, %3526
  %3529 = add i64 %3527, %3528
  %3530 = icmp eq i64 %3529, 2
  %3531 = zext i1 %3530 to i8
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3531, i8* %3532, align 1
  store %struct.Memory* %loadMem_41f30a, %struct.Memory** %MEMORY
  %loadMem_41f30d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 33
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3535 to i64*
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 5
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3538 to i64*
  %3539 = load i64, i64* %RCX.i
  %3540 = add i64 %3539, 72
  %3541 = load i64, i64* %PC.i14
  %3542 = add i64 %3541, 4
  store i64 %3542, i64* %PC.i14
  %3543 = inttoptr i64 %3540 to i32*
  %3544 = load i32, i32* %3543
  %3545 = sub i32 %3544, 5
  %3546 = icmp ult i32 %3544, 5
  %3547 = zext i1 %3546 to i8
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3547, i8* %3548, align 1
  %3549 = and i32 %3545, 255
  %3550 = call i32 @llvm.ctpop.i32(i32 %3549)
  %3551 = trunc i32 %3550 to i8
  %3552 = and i8 %3551, 1
  %3553 = xor i8 %3552, 1
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3553, i8* %3554, align 1
  %3555 = xor i32 %3544, 5
  %3556 = xor i32 %3555, %3545
  %3557 = lshr i32 %3556, 4
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3559, i8* %3560, align 1
  %3561 = icmp eq i32 %3545, 0
  %3562 = zext i1 %3561 to i8
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3562, i8* %3563, align 1
  %3564 = lshr i32 %3545, 31
  %3565 = trunc i32 %3564 to i8
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3565, i8* %3566, align 1
  %3567 = lshr i32 %3544, 31
  %3568 = xor i32 %3564, %3567
  %3569 = add i32 %3568, %3567
  %3570 = icmp eq i32 %3569, 2
  %3571 = zext i1 %3570 to i8
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3571, i8* %3572, align 1
  store %struct.Memory* %loadMem_41f30d, %struct.Memory** %MEMORY
  %loadMem_41f311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 33
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3575 to i64*
  %3576 = load i64, i64* %PC.i13
  %3577 = add i64 %3576, 18
  %3578 = load i64, i64* %PC.i13
  %3579 = add i64 %3578, 6
  %3580 = load i64, i64* %PC.i13
  %3581 = add i64 %3580, 6
  store i64 %3581, i64* %PC.i13
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3583 = load i8, i8* %3582, align 1
  %3584 = icmp ne i8 %3583, 0
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3586 = load i8, i8* %3585, align 1
  %3587 = icmp ne i8 %3586, 0
  %3588 = xor i1 %3584, %3587
  %3589 = xor i1 %3588, true
  %3590 = zext i1 %3589 to i8
  store i8 %3590, i8* %BRANCH_TAKEN, align 1
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3592 = select i1 %3588, i64 %3579, i64 %3577
  store i64 %3592, i64* %3591, align 8
  store %struct.Memory* %loadMem_41f311, %struct.Memory** %MEMORY
  %loadBr_41f311 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f311 = icmp eq i8 %loadBr_41f311, 1
  br i1 %cmpBr_41f311, label %block_.L_41f323, label %block_41f317

block_41f317:                                     ; preds = %block_41f2e5
  %loadMem_41f317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 33
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 15
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RBP.i12
  %3600 = sub i64 %3599, 4
  %3601 = load i64, i64* %PC.i11
  %3602 = add i64 %3601, 7
  store i64 %3602, i64* %PC.i11
  %3603 = inttoptr i64 %3600 to i32*
  store i32 2, i32* %3603
  store %struct.Memory* %loadMem_41f317, %struct.Memory** %MEMORY
  %loadMem_41f31e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 33
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3606 to i64*
  %3607 = load i64, i64* %PC.i10
  %3608 = add i64 %3607, 17
  %3609 = load i64, i64* %PC.i10
  %3610 = add i64 %3609, 5
  store i64 %3610, i64* %PC.i10
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3608, i64* %3611, align 8
  store %struct.Memory* %loadMem_41f31e, %struct.Memory** %MEMORY
  br label %block_.L_41f32f

block_.L_41f323:                                  ; preds = %block_41f2e5, %block_.L_41f2db
  %loadMem_41f323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 33
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3614 to i64*
  %3615 = load i64, i64* %PC.i9
  %3616 = add i64 %3615, 5
  %3617 = load i64, i64* %PC.i9
  %3618 = add i64 %3617, 5
  store i64 %3618, i64* %PC.i9
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3616, i64* %3619, align 8
  store %struct.Memory* %loadMem_41f323, %struct.Memory** %MEMORY
  br label %block_.L_41f328

block_.L_41f328:                                  ; preds = %block_.L_41f323, %block_41f23f
  %loadMem_41f328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 33
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3622 to i64*
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 15
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %3625 to i64*
  %3626 = load i64, i64* %RBP.i8
  %3627 = sub i64 %3626, 4
  %3628 = load i64, i64* %PC.i7
  %3629 = add i64 %3628, 7
  store i64 %3629, i64* %PC.i7
  %3630 = inttoptr i64 %3627 to i32*
  store i32 3, i32* %3630
  store %struct.Memory* %loadMem_41f328, %struct.Memory** %MEMORY
  br label %block_.L_41f32f

block_.L_41f32f:                                  ; preds = %block_.L_41f328, %block_41f317, %block_41f2cf, %block_41f229, %block_.L_41f204, %block_41f161, %block_41f0cb
  %loadMem_41f32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 33
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 1
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 15
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %RBP.i6
  %3641 = sub i64 %3640, 4
  %3642 = load i64, i64* %PC.i5
  %3643 = add i64 %3642, 3
  store i64 %3643, i64* %PC.i5
  %3644 = inttoptr i64 %3641 to i32*
  %3645 = load i32, i32* %3644
  %3646 = zext i32 %3645 to i64
  store i64 %3646, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_41f32f, %struct.Memory** %MEMORY
  %loadMem_41f332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 13
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3652 to i64*
  %3653 = load i64, i64* %RSP.i
  %3654 = load i64, i64* %PC.i4
  %3655 = add i64 %3654, 4
  store i64 %3655, i64* %PC.i4
  %3656 = add i64 32, %3653
  store i64 %3656, i64* %RSP.i, align 8
  %3657 = icmp ult i64 %3656, %3653
  %3658 = icmp ult i64 %3656, 32
  %3659 = or i1 %3657, %3658
  %3660 = zext i1 %3659 to i8
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3660, i8* %3661, align 1
  %3662 = trunc i64 %3656 to i32
  %3663 = and i32 %3662, 255
  %3664 = call i32 @llvm.ctpop.i32(i32 %3663)
  %3665 = trunc i32 %3664 to i8
  %3666 = and i8 %3665, 1
  %3667 = xor i8 %3666, 1
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3667, i8* %3668, align 1
  %3669 = xor i64 32, %3653
  %3670 = xor i64 %3669, %3656
  %3671 = lshr i64 %3670, 4
  %3672 = trunc i64 %3671 to i8
  %3673 = and i8 %3672, 1
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3673, i8* %3674, align 1
  %3675 = icmp eq i64 %3656, 0
  %3676 = zext i1 %3675 to i8
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3676, i8* %3677, align 1
  %3678 = lshr i64 %3656, 63
  %3679 = trunc i64 %3678 to i8
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3679, i8* %3680, align 1
  %3681 = lshr i64 %3653, 63
  %3682 = xor i64 %3678, %3681
  %3683 = add i64 %3682, %3678
  %3684 = icmp eq i64 %3683, 2
  %3685 = zext i1 %3684 to i8
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3685, i8* %3686, align 1
  store %struct.Memory* %loadMem_41f332, %struct.Memory** %MEMORY
  %loadMem_41f336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 33
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 15
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3692 to i64*
  %3693 = load i64, i64* %PC.i2
  %3694 = add i64 %3693, 1
  store i64 %3694, i64* %PC.i2
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3696 = load i64, i64* %3695, align 8
  %3697 = add i64 %3696, 8
  %3698 = inttoptr i64 %3696 to i64*
  %3699 = load i64, i64* %3698
  store i64 %3699, i64* %RBP.i3, align 8
  store i64 %3697, i64* %3695, align 8
  store %struct.Memory* %loadMem_41f336, %struct.Memory** %MEMORY
  %loadMem_41f337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3702 to i64*
  %3703 = load i64, i64* %PC.i1
  %3704 = add i64 %3703, 1
  store i64 %3704, i64* %PC.i1
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3707 = load i64, i64* %3706, align 8
  %3708 = inttoptr i64 %3707 to i64*
  %3709 = load i64, i64* %3708
  store i64 %3709, i64* %3705, align 8
  %3710 = add i64 %3707, 8
  store i64 %3710, i64* %3706, align 8
  store %struct.Memory* %loadMem_41f337, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41f337
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

define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %11, i64* %RCX, align 8
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

define %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 76, %15
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

define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 104, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_addq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 76, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 76
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
  %25 = xor i64 76, %9
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

define %struct.Memory* @routine_movq__rcx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
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

define %struct.Memory* @routine_callq_.max_eyes(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.min_eyes(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb4bd20___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0xab0fe0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x4c___rdi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 76, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__rdi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
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

define %struct.Memory* @routine_movslq_0x4__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x68___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 104, %15
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

define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_0x54__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0xaaf050(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xaaf050_type* @G_0xaaf050 to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_41f099(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41f0c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57ad9b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57ad9b_type* @G__0x57ad9b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x659___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1625, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57b202___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x57b202_type* @G__0x57b202 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.abortgo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 3
  %16 = icmp ult i32 %14, 3
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
  %25 = xor i32 %14, 3
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

define %struct.Memory* @routine_jle_.L_41f0d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41f32f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 380, %15
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

define %struct.Memory* @routine_cmpl_0x4__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_41f16d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_41f16d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 180
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

define %struct.Memory* @routine_jge_.L_41f16d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_41f215(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_41f215(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5__0x48__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_41f204(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
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

define %struct.Memory* @routine_jle_.L_41f210(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41f215(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_41f235(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_41f235(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_41f261(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__0x24__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 36
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

define %struct.Memory* @routine_jge_.L_41f328(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_41f2db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x48__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
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

define %struct.Memory* @routine_jne_.L_41f2db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x5__0x34__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 52
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

define %struct.Memory* @routine_jne_.L_41f323(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_41f323(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41f328(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x3__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 3, i32* %13
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
